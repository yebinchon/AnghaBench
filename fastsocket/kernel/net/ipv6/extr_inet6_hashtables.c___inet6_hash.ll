; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/ipv6/extr_inet6_hashtables.c___inet6_hash.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/ipv6/extr_inet6_hashtables.c___inet6_hash.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sock = type { i64, i32, %struct.TYPE_5__* }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.inet_hashinfo* }
%struct.inet_hashinfo = type { %struct.inet_listen_hashbucket* }
%struct.inet_listen_hashbucket = type { i32, %struct.hlist_nulls_head }
%struct.hlist_nulls_head = type { i32 }
%struct.TYPE_6__ = type { %struct.hlist_nulls_head }

@TCP_LISTEN = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @__inet6_hash(%struct.sock* %0) #0 {
  %2 = alloca %struct.sock*, align 8
  %3 = alloca %struct.inet_hashinfo*, align 8
  %4 = alloca %struct.inet_listen_hashbucket*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.hlist_nulls_head*, align 8
  %7 = alloca i32*, align 8
  store %struct.sock* %0, %struct.sock** %2, align 8
  %8 = load %struct.sock*, %struct.sock** %2, align 8
  %9 = getelementptr inbounds %struct.sock, %struct.sock* %8, i32 0, i32 2
  %10 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i32 0, i32 0
  %13 = load %struct.inet_hashinfo*, %struct.inet_hashinfo** %12, align 8
  store %struct.inet_hashinfo* %13, %struct.inet_hashinfo** %3, align 8
  %14 = load %struct.sock*, %struct.sock** %2, align 8
  %15 = call i32 @sk_unhashed(%struct.sock* %14)
  %16 = icmp ne i32 %15, 0
  %17 = xor i1 %16, true
  %18 = zext i1 %17 to i32
  %19 = call i32 @WARN_ON(i32 %18)
  %20 = load %struct.sock*, %struct.sock** %2, align 8
  %21 = getelementptr inbounds %struct.sock, %struct.sock* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = load i64, i64* @TCP_LISTEN, align 8
  %24 = icmp eq i64 %22, %23
  br i1 %24, label %25, label %42

25:                                               ; preds = %1
  %26 = load %struct.inet_hashinfo*, %struct.inet_hashinfo** %3, align 8
  %27 = getelementptr inbounds %struct.inet_hashinfo, %struct.inet_hashinfo* %26, i32 0, i32 0
  %28 = load %struct.inet_listen_hashbucket*, %struct.inet_listen_hashbucket** %27, align 8
  %29 = load %struct.sock*, %struct.sock** %2, align 8
  %30 = call i64 @inet_sk_listen_hashfn(%struct.sock* %29)
  %31 = getelementptr inbounds %struct.inet_listen_hashbucket, %struct.inet_listen_hashbucket* %28, i64 %30
  store %struct.inet_listen_hashbucket* %31, %struct.inet_listen_hashbucket** %4, align 8
  %32 = load %struct.inet_listen_hashbucket*, %struct.inet_listen_hashbucket** %4, align 8
  %33 = getelementptr inbounds %struct.inet_listen_hashbucket, %struct.inet_listen_hashbucket* %32, i32 0, i32 0
  %34 = call i32 @spin_lock(i32* %33)
  %35 = load %struct.sock*, %struct.sock** %2, align 8
  %36 = load %struct.inet_listen_hashbucket*, %struct.inet_listen_hashbucket** %4, align 8
  %37 = getelementptr inbounds %struct.inet_listen_hashbucket, %struct.inet_listen_hashbucket* %36, i32 0, i32 1
  %38 = call i32 @__sk_nulls_add_node_rcu(%struct.sock* %35, %struct.hlist_nulls_head* %37)
  %39 = load %struct.inet_listen_hashbucket*, %struct.inet_listen_hashbucket** %4, align 8
  %40 = getelementptr inbounds %struct.inet_listen_hashbucket, %struct.inet_listen_hashbucket* %39, i32 0, i32 0
  %41 = call i32 @spin_unlock(i32* %40)
  br label %61

42:                                               ; preds = %1
  %43 = load %struct.sock*, %struct.sock** %2, align 8
  %44 = call i32 @inet6_sk_ehashfn(%struct.sock* %43)
  store i32 %44, i32* %5, align 4
  %45 = load %struct.sock*, %struct.sock** %2, align 8
  %46 = getelementptr inbounds %struct.sock, %struct.sock* %45, i32 0, i32 1
  store i32 %44, i32* %46, align 8
  %47 = load %struct.inet_hashinfo*, %struct.inet_hashinfo** %3, align 8
  %48 = load i32, i32* %5, align 4
  %49 = call %struct.TYPE_6__* @inet_ehash_bucket(%struct.inet_hashinfo* %47, i32 %48)
  %50 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %49, i32 0, i32 0
  store %struct.hlist_nulls_head* %50, %struct.hlist_nulls_head** %6, align 8
  %51 = load %struct.inet_hashinfo*, %struct.inet_hashinfo** %3, align 8
  %52 = load i32, i32* %5, align 4
  %53 = call i32* @inet_ehash_lockp(%struct.inet_hashinfo* %51, i32 %52)
  store i32* %53, i32** %7, align 8
  %54 = load i32*, i32** %7, align 8
  %55 = call i32 @spin_lock(i32* %54)
  %56 = load %struct.sock*, %struct.sock** %2, align 8
  %57 = load %struct.hlist_nulls_head*, %struct.hlist_nulls_head** %6, align 8
  %58 = call i32 @__sk_nulls_add_node_rcu(%struct.sock* %56, %struct.hlist_nulls_head* %57)
  %59 = load i32*, i32** %7, align 8
  %60 = call i32 @spin_unlock(i32* %59)
  br label %61

61:                                               ; preds = %42, %25
  %62 = load %struct.sock*, %struct.sock** %2, align 8
  %63 = call i32 @sock_net(%struct.sock* %62)
  %64 = load %struct.sock*, %struct.sock** %2, align 8
  %65 = getelementptr inbounds %struct.sock, %struct.sock* %64, i32 0, i32 2
  %66 = load %struct.TYPE_5__*, %struct.TYPE_5__** %65, align 8
  %67 = call i32 @sock_prot_inuse_add(i32 %63, %struct.TYPE_5__* %66, i32 1)
  ret void
}

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i32 @sk_unhashed(%struct.sock*) #1

declare dso_local i64 @inet_sk_listen_hashfn(%struct.sock*) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @__sk_nulls_add_node_rcu(%struct.sock*, %struct.hlist_nulls_head*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @inet6_sk_ehashfn(%struct.sock*) #1

declare dso_local %struct.TYPE_6__* @inet_ehash_bucket(%struct.inet_hashinfo*, i32) #1

declare dso_local i32* @inet_ehash_lockp(%struct.inet_hashinfo*, i32) #1

declare dso_local i32 @sock_prot_inuse_add(i32, %struct.TYPE_5__*, i32) #1

declare dso_local i32 @sock_net(%struct.sock*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

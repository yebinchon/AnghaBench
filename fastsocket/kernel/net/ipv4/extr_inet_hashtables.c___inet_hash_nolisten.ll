; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/ipv4/extr_inet_hashtables.c___inet_hash_nolisten.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/ipv4/extr_inet_hashtables.c___inet_hash_nolisten.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sock = type { %struct.TYPE_4__*, i32 }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { %struct.inet_hashinfo* }
%struct.inet_hashinfo = type { i32 }
%struct.hlist_nulls_head = type { i32 }
%struct.inet_ehash_bucket = type { %struct.hlist_nulls_head }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @__inet_hash_nolisten(%struct.sock* %0) #0 {
  %2 = alloca %struct.sock*, align 8
  %3 = alloca %struct.inet_hashinfo*, align 8
  %4 = alloca %struct.hlist_nulls_head*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.inet_ehash_bucket*, align 8
  store %struct.sock* %0, %struct.sock** %2, align 8
  %7 = load %struct.sock*, %struct.sock** %2, align 8
  %8 = getelementptr inbounds %struct.sock, %struct.sock* %7, i32 0, i32 0
  %9 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %10, i32 0, i32 0
  %12 = load %struct.inet_hashinfo*, %struct.inet_hashinfo** %11, align 8
  store %struct.inet_hashinfo* %12, %struct.inet_hashinfo** %3, align 8
  %13 = load %struct.sock*, %struct.sock** %2, align 8
  %14 = call i32 @sk_unhashed(%struct.sock* %13)
  %15 = icmp ne i32 %14, 0
  %16 = xor i1 %15, true
  %17 = zext i1 %16 to i32
  %18 = call i32 @WARN_ON(i32 %17)
  %19 = load %struct.sock*, %struct.sock** %2, align 8
  %20 = call i32 @inet_sk_ehashfn(%struct.sock* %19)
  %21 = load %struct.sock*, %struct.sock** %2, align 8
  %22 = getelementptr inbounds %struct.sock, %struct.sock* %21, i32 0, i32 1
  store i32 %20, i32* %22, align 8
  %23 = load %struct.inet_hashinfo*, %struct.inet_hashinfo** %3, align 8
  %24 = load %struct.sock*, %struct.sock** %2, align 8
  %25 = getelementptr inbounds %struct.sock, %struct.sock* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 8
  %27 = call %struct.inet_ehash_bucket* @inet_ehash_bucket(%struct.inet_hashinfo* %23, i32 %26)
  store %struct.inet_ehash_bucket* %27, %struct.inet_ehash_bucket** %6, align 8
  %28 = load %struct.inet_ehash_bucket*, %struct.inet_ehash_bucket** %6, align 8
  %29 = getelementptr inbounds %struct.inet_ehash_bucket, %struct.inet_ehash_bucket* %28, i32 0, i32 0
  store %struct.hlist_nulls_head* %29, %struct.hlist_nulls_head** %4, align 8
  %30 = load %struct.inet_hashinfo*, %struct.inet_hashinfo** %3, align 8
  %31 = load %struct.sock*, %struct.sock** %2, align 8
  %32 = getelementptr inbounds %struct.sock, %struct.sock* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 8
  %34 = call i32* @inet_ehash_lockp(%struct.inet_hashinfo* %30, i32 %33)
  store i32* %34, i32** %5, align 8
  %35 = load i32*, i32** %5, align 8
  %36 = call i32 @spin_lock(i32* %35)
  %37 = load %struct.sock*, %struct.sock** %2, align 8
  %38 = load %struct.hlist_nulls_head*, %struct.hlist_nulls_head** %4, align 8
  %39 = call i32 @__sk_nulls_add_node_rcu(%struct.sock* %37, %struct.hlist_nulls_head* %38)
  %40 = load i32*, i32** %5, align 8
  %41 = call i32 @spin_unlock(i32* %40)
  %42 = load %struct.sock*, %struct.sock** %2, align 8
  %43 = call i32 @sock_net(%struct.sock* %42)
  %44 = load %struct.sock*, %struct.sock** %2, align 8
  %45 = getelementptr inbounds %struct.sock, %struct.sock* %44, i32 0, i32 0
  %46 = load %struct.TYPE_4__*, %struct.TYPE_4__** %45, align 8
  %47 = call i32 @sock_prot_inuse_add(i32 %43, %struct.TYPE_4__* %46, i32 1)
  ret void
}

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i32 @sk_unhashed(%struct.sock*) #1

declare dso_local i32 @inet_sk_ehashfn(%struct.sock*) #1

declare dso_local %struct.inet_ehash_bucket* @inet_ehash_bucket(%struct.inet_hashinfo*, i32) #1

declare dso_local i32* @inet_ehash_lockp(%struct.inet_hashinfo*, i32) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @__sk_nulls_add_node_rcu(%struct.sock*, %struct.hlist_nulls_head*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @sock_prot_inuse_add(i32, %struct.TYPE_4__*, i32) #1

declare dso_local i32 @sock_net(%struct.sock*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

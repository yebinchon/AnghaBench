; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/ipv4/extr_inet_hashtables.c___inet_put_port.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/ipv4/extr_inet_hashtables.c___inet_put_port.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sock = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.inet_hashinfo* }
%struct.inet_hashinfo = type { i32, i32, %struct.inet_bind_hashbucket*, i32 }
%struct.inet_bind_hashbucket = type { i32 }
%struct.inet_bind_bucket = type { i32 }
%struct.TYPE_7__ = type { i64 }
%struct.TYPE_8__ = type { %struct.inet_bind_bucket* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sock*)* @__inet_put_port to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @__inet_put_port(%struct.sock* %0) #0 {
  %2 = alloca %struct.sock*, align 8
  %3 = alloca %struct.inet_hashinfo*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.inet_bind_hashbucket*, align 8
  %6 = alloca %struct.inet_bind_bucket*, align 8
  store %struct.sock* %0, %struct.sock** %2, align 8
  %7 = load %struct.sock*, %struct.sock** %2, align 8
  %8 = getelementptr inbounds %struct.sock, %struct.sock* %7, i32 0, i32 0
  %9 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %10, i32 0, i32 0
  %12 = load %struct.inet_hashinfo*, %struct.inet_hashinfo** %11, align 8
  store %struct.inet_hashinfo* %12, %struct.inet_hashinfo** %3, align 8
  %13 = load %struct.sock*, %struct.sock** %2, align 8
  %14 = call i32 @sock_net(%struct.sock* %13)
  %15 = load %struct.sock*, %struct.sock** %2, align 8
  %16 = call %struct.TYPE_7__* @inet_sk(%struct.sock* %15)
  %17 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = load %struct.inet_hashinfo*, %struct.inet_hashinfo** %3, align 8
  %20 = getelementptr inbounds %struct.inet_hashinfo, %struct.inet_hashinfo* %19, i32 0, i32 3
  %21 = load i32, i32* %20, align 8
  %22 = call i32 @inet_bhashfn(i32 %14, i64 %18, i32 %21)
  store i32 %22, i32* %4, align 4
  %23 = load %struct.inet_hashinfo*, %struct.inet_hashinfo** %3, align 8
  %24 = getelementptr inbounds %struct.inet_hashinfo, %struct.inet_hashinfo* %23, i32 0, i32 2
  %25 = load %struct.inet_bind_hashbucket*, %struct.inet_bind_hashbucket** %24, align 8
  %26 = load i32, i32* %4, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds %struct.inet_bind_hashbucket, %struct.inet_bind_hashbucket* %25, i64 %27
  store %struct.inet_bind_hashbucket* %28, %struct.inet_bind_hashbucket** %5, align 8
  %29 = load %struct.inet_hashinfo*, %struct.inet_hashinfo** %3, align 8
  %30 = getelementptr inbounds %struct.inet_hashinfo, %struct.inet_hashinfo* %29, i32 0, i32 1
  %31 = call i32 @atomic_dec(i32* %30)
  %32 = load %struct.inet_bind_hashbucket*, %struct.inet_bind_hashbucket** %5, align 8
  %33 = getelementptr inbounds %struct.inet_bind_hashbucket, %struct.inet_bind_hashbucket* %32, i32 0, i32 0
  %34 = call i32 @spin_lock(i32* %33)
  %35 = load %struct.sock*, %struct.sock** %2, align 8
  %36 = call %struct.TYPE_8__* @inet_csk(%struct.sock* %35)
  %37 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %36, i32 0, i32 0
  %38 = load %struct.inet_bind_bucket*, %struct.inet_bind_bucket** %37, align 8
  store %struct.inet_bind_bucket* %38, %struct.inet_bind_bucket** %6, align 8
  %39 = load %struct.sock*, %struct.sock** %2, align 8
  %40 = call i32 @__sk_del_bind_node(%struct.sock* %39)
  %41 = load %struct.inet_bind_bucket*, %struct.inet_bind_bucket** %6, align 8
  %42 = getelementptr inbounds %struct.inet_bind_bucket, %struct.inet_bind_bucket* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = add nsw i32 %43, -1
  store i32 %44, i32* %42, align 4
  %45 = load %struct.sock*, %struct.sock** %2, align 8
  %46 = call %struct.TYPE_8__* @inet_csk(%struct.sock* %45)
  %47 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %46, i32 0, i32 0
  store %struct.inet_bind_bucket* null, %struct.inet_bind_bucket** %47, align 8
  %48 = load %struct.sock*, %struct.sock** %2, align 8
  %49 = call %struct.TYPE_7__* @inet_sk(%struct.sock* %48)
  %50 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %49, i32 0, i32 0
  store i64 0, i64* %50, align 8
  %51 = load %struct.inet_hashinfo*, %struct.inet_hashinfo** %3, align 8
  %52 = getelementptr inbounds %struct.inet_hashinfo, %struct.inet_hashinfo* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 8
  %54 = load %struct.inet_bind_bucket*, %struct.inet_bind_bucket** %6, align 8
  %55 = call i32 @inet_bind_bucket_destroy(i32 %53, %struct.inet_bind_bucket* %54)
  %56 = load %struct.inet_bind_hashbucket*, %struct.inet_bind_hashbucket** %5, align 8
  %57 = getelementptr inbounds %struct.inet_bind_hashbucket, %struct.inet_bind_hashbucket* %56, i32 0, i32 0
  %58 = call i32 @spin_unlock(i32* %57)
  ret void
}

declare dso_local i32 @inet_bhashfn(i32, i64, i32) #1

declare dso_local i32 @sock_net(%struct.sock*) #1

declare dso_local %struct.TYPE_7__* @inet_sk(%struct.sock*) #1

declare dso_local i32 @atomic_dec(i32*) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local %struct.TYPE_8__* @inet_csk(%struct.sock*) #1

declare dso_local i32 @__sk_del_bind_node(%struct.sock*) #1

declare dso_local i32 @inet_bind_bucket_destroy(i32, %struct.inet_bind_bucket*) #1

declare dso_local i32 @spin_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

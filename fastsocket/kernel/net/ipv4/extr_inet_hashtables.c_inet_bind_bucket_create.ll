; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/ipv4/extr_inet_hashtables.c_inet_bind_bucket_create.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/ipv4/extr_inet_hashtables.c_inet_bind_bucket_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inet_bind_bucket = type { i16, i32, i32, i64, i64, i64, i32 }
%struct.kmem_cache = type { i32 }
%struct.net = type { i32 }
%struct.inet_bind_hashbucket = type { i32 }

@GFP_ATOMIC = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.inet_bind_bucket* @inet_bind_bucket_create(%struct.kmem_cache* %0, %struct.net* %1, %struct.inet_bind_hashbucket* %2, i16 zeroext %3) #0 {
  %5 = alloca %struct.kmem_cache*, align 8
  %6 = alloca %struct.net*, align 8
  %7 = alloca %struct.inet_bind_hashbucket*, align 8
  %8 = alloca i16, align 2
  %9 = alloca %struct.inet_bind_bucket*, align 8
  store %struct.kmem_cache* %0, %struct.kmem_cache** %5, align 8
  store %struct.net* %1, %struct.net** %6, align 8
  store %struct.inet_bind_hashbucket* %2, %struct.inet_bind_hashbucket** %7, align 8
  store i16 %3, i16* %8, align 2
  %10 = load %struct.kmem_cache*, %struct.kmem_cache** %5, align 8
  %11 = load i32, i32* @GFP_ATOMIC, align 4
  %12 = call %struct.inet_bind_bucket* @kmem_cache_alloc(%struct.kmem_cache* %10, i32 %11)
  store %struct.inet_bind_bucket* %12, %struct.inet_bind_bucket** %9, align 8
  %13 = load %struct.inet_bind_bucket*, %struct.inet_bind_bucket** %9, align 8
  %14 = icmp ne %struct.inet_bind_bucket* %13, null
  br i1 %14, label %15, label %38

15:                                               ; preds = %4
  %16 = load %struct.inet_bind_bucket*, %struct.inet_bind_bucket** %9, align 8
  %17 = getelementptr inbounds %struct.inet_bind_bucket, %struct.inet_bind_bucket* %16, i32 0, i32 6
  %18 = load %struct.net*, %struct.net** %6, align 8
  %19 = call i32 @hold_net(%struct.net* %18)
  %20 = call i32 @write_pnet(i32* %17, i32 %19)
  %21 = load i16, i16* %8, align 2
  %22 = load %struct.inet_bind_bucket*, %struct.inet_bind_bucket** %9, align 8
  %23 = getelementptr inbounds %struct.inet_bind_bucket, %struct.inet_bind_bucket* %22, i32 0, i32 0
  store i16 %21, i16* %23, align 8
  %24 = load %struct.inet_bind_bucket*, %struct.inet_bind_bucket** %9, align 8
  %25 = getelementptr inbounds %struct.inet_bind_bucket, %struct.inet_bind_bucket* %24, i32 0, i32 5
  store i64 0, i64* %25, align 8
  %26 = load %struct.inet_bind_bucket*, %struct.inet_bind_bucket** %9, align 8
  %27 = getelementptr inbounds %struct.inet_bind_bucket, %struct.inet_bind_bucket* %26, i32 0, i32 4
  store i64 0, i64* %27, align 8
  %28 = load %struct.inet_bind_bucket*, %struct.inet_bind_bucket** %9, align 8
  %29 = getelementptr inbounds %struct.inet_bind_bucket, %struct.inet_bind_bucket* %28, i32 0, i32 3
  store i64 0, i64* %29, align 8
  %30 = load %struct.inet_bind_bucket*, %struct.inet_bind_bucket** %9, align 8
  %31 = getelementptr inbounds %struct.inet_bind_bucket, %struct.inet_bind_bucket* %30, i32 0, i32 2
  %32 = call i32 @INIT_HLIST_HEAD(i32* %31)
  %33 = load %struct.inet_bind_bucket*, %struct.inet_bind_bucket** %9, align 8
  %34 = getelementptr inbounds %struct.inet_bind_bucket, %struct.inet_bind_bucket* %33, i32 0, i32 1
  %35 = load %struct.inet_bind_hashbucket*, %struct.inet_bind_hashbucket** %7, align 8
  %36 = getelementptr inbounds %struct.inet_bind_hashbucket, %struct.inet_bind_hashbucket* %35, i32 0, i32 0
  %37 = call i32 @hlist_add_head(i32* %34, i32* %36)
  br label %38

38:                                               ; preds = %15, %4
  %39 = load %struct.inet_bind_bucket*, %struct.inet_bind_bucket** %9, align 8
  ret %struct.inet_bind_bucket* %39
}

declare dso_local %struct.inet_bind_bucket* @kmem_cache_alloc(%struct.kmem_cache*, i32) #1

declare dso_local i32 @write_pnet(i32*, i32) #1

declare dso_local i32 @hold_net(%struct.net*) #1

declare dso_local i32 @INIT_HLIST_HEAD(i32*) #1

declare dso_local i32 @hlist_add_head(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

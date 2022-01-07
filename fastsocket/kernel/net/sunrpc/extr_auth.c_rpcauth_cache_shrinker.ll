; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/sunrpc/extr_auth.c_rpcauth_cache_shrinker.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/sunrpc/extr_auth.c_rpcauth_cache_shrinker.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.shrinker = type { i32 }

@free = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@cred_unused = common dso_local global i32 0, align 4
@rpc_credcache_lock = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.shrinker*, i32, i32)* @rpcauth_cache_shrinker to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rpcauth_cache_shrinker(%struct.shrinker* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.shrinker*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.shrinker* %0, %struct.shrinker** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %9 = load i32, i32* @free, align 4
  %10 = call i32 @LIST_HEAD(i32 %9)
  %11 = load i32, i32* %7, align 4
  %12 = load i32, i32* @GFP_KERNEL, align 4
  %13 = and i32 %11, %12
  %14 = load i32, i32* @GFP_KERNEL, align 4
  %15 = icmp ne i32 %13, %14
  br i1 %15, label %16, label %21

16:                                               ; preds = %3
  %17 = load i32, i32* %6, align 4
  %18 = icmp eq i32 %17, 0
  %19 = zext i1 %18 to i64
  %20 = select i1 %18, i32 0, i32 -1
  store i32 %20, i32* %4, align 4
  br label %32

21:                                               ; preds = %3
  %22 = call i64 @list_empty(i32* @cred_unused)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %25

24:                                               ; preds = %21
  store i32 0, i32* %4, align 4
  br label %32

25:                                               ; preds = %21
  %26 = call i32 @spin_lock(i32* @rpc_credcache_lock)
  %27 = load i32, i32* %6, align 4
  %28 = call i32 @rpcauth_prune_expired(i32* @free, i32 %27)
  store i32 %28, i32* %8, align 4
  %29 = call i32 @spin_unlock(i32* @rpc_credcache_lock)
  %30 = call i32 @rpcauth_destroy_credlist(i32* @free)
  %31 = load i32, i32* %8, align 4
  store i32 %31, i32* %4, align 4
  br label %32

32:                                               ; preds = %25, %24, %16
  %33 = load i32, i32* %4, align 4
  ret i32 %33
}

declare dso_local i32 @LIST_HEAD(i32) #1

declare dso_local i64 @list_empty(i32*) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @rpcauth_prune_expired(i32*, i32) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @rpcauth_destroy_credlist(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

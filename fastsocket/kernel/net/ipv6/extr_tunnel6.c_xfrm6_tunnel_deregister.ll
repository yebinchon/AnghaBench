; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/ipv6/extr_tunnel6.c_xfrm6_tunnel_deregister.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/ipv6/extr_tunnel6.c_xfrm6_tunnel_deregister.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xfrm6_tunnel = type { %struct.xfrm6_tunnel* }

@ENOENT = common dso_local global i32 0, align 4
@tunnel6_mutex = common dso_local global i32 0, align 4
@AF_INET6 = common dso_local global i16 0, align 2
@tunnel6_handlers = common dso_local global %struct.xfrm6_tunnel* null, align 8
@tunnel46_handlers = common dso_local global %struct.xfrm6_tunnel* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @xfrm6_tunnel_deregister(%struct.xfrm6_tunnel* %0, i16 zeroext %1) #0 {
  %3 = alloca %struct.xfrm6_tunnel*, align 8
  %4 = alloca i16, align 2
  %5 = alloca %struct.xfrm6_tunnel**, align 8
  %6 = alloca i32, align 4
  store %struct.xfrm6_tunnel* %0, %struct.xfrm6_tunnel** %3, align 8
  store i16 %1, i16* %4, align 2
  %7 = load i32, i32* @ENOENT, align 4
  %8 = sub nsw i32 0, %7
  store i32 %8, i32* %6, align 4
  %9 = call i32 @mutex_lock(i32* @tunnel6_mutex)
  %10 = load i16, i16* %4, align 2
  %11 = zext i16 %10 to i32
  %12 = load i16, i16* @AF_INET6, align 2
  %13 = zext i16 %12 to i32
  %14 = icmp eq i32 %11, %13
  %15 = zext i1 %14 to i64
  %16 = select i1 %14, %struct.xfrm6_tunnel** @tunnel6_handlers, %struct.xfrm6_tunnel** @tunnel46_handlers
  store %struct.xfrm6_tunnel** %16, %struct.xfrm6_tunnel*** %5, align 8
  br label %17

17:                                               ; preds = %32, %2
  %18 = load %struct.xfrm6_tunnel**, %struct.xfrm6_tunnel*** %5, align 8
  %19 = load %struct.xfrm6_tunnel*, %struct.xfrm6_tunnel** %18, align 8
  %20 = icmp ne %struct.xfrm6_tunnel* %19, null
  br i1 %20, label %21, label %36

21:                                               ; preds = %17
  %22 = load %struct.xfrm6_tunnel**, %struct.xfrm6_tunnel*** %5, align 8
  %23 = load %struct.xfrm6_tunnel*, %struct.xfrm6_tunnel** %22, align 8
  %24 = load %struct.xfrm6_tunnel*, %struct.xfrm6_tunnel** %3, align 8
  %25 = icmp eq %struct.xfrm6_tunnel* %23, %24
  br i1 %25, label %26, label %31

26:                                               ; preds = %21
  %27 = load %struct.xfrm6_tunnel*, %struct.xfrm6_tunnel** %3, align 8
  %28 = getelementptr inbounds %struct.xfrm6_tunnel, %struct.xfrm6_tunnel* %27, i32 0, i32 0
  %29 = load %struct.xfrm6_tunnel*, %struct.xfrm6_tunnel** %28, align 8
  %30 = load %struct.xfrm6_tunnel**, %struct.xfrm6_tunnel*** %5, align 8
  store %struct.xfrm6_tunnel* %29, %struct.xfrm6_tunnel** %30, align 8
  store i32 0, i32* %6, align 4
  br label %36

31:                                               ; preds = %21
  br label %32

32:                                               ; preds = %31
  %33 = load %struct.xfrm6_tunnel**, %struct.xfrm6_tunnel*** %5, align 8
  %34 = load %struct.xfrm6_tunnel*, %struct.xfrm6_tunnel** %33, align 8
  %35 = getelementptr inbounds %struct.xfrm6_tunnel, %struct.xfrm6_tunnel* %34, i32 0, i32 0
  store %struct.xfrm6_tunnel** %35, %struct.xfrm6_tunnel*** %5, align 8
  br label %17

36:                                               ; preds = %26, %17
  %37 = call i32 @mutex_unlock(i32* @tunnel6_mutex)
  %38 = call i32 (...) @synchronize_net()
  %39 = load i32, i32* %6, align 4
  ret i32 %39
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @synchronize_net(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

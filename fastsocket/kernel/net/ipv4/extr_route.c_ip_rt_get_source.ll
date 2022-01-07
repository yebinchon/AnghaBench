; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/ipv4/extr_route.c_ip_rt_get_source.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/ipv4/extr_route.c_ip_rt_get_source.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rtable = type { i32, %struct.TYPE_4__, %struct.TYPE_6__, i32 }
%struct.TYPE_4__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_6__ = type { i64 }
%struct.fib_result = type { i32 }

@RT_SCOPE_UNIVERSE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ip_rt_get_source(i32* %0, %struct.rtable* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca %struct.rtable*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.fib_result, align 4
  store i32* %0, i32** %3, align 8
  store %struct.rtable* %1, %struct.rtable** %4, align 8
  %7 = load %struct.rtable*, %struct.rtable** %4, align 8
  %8 = getelementptr inbounds %struct.rtable, %struct.rtable* %7, i32 0, i32 2
  %9 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = icmp eq i64 %10, 0
  br i1 %11, label %12, label %16

12:                                               ; preds = %2
  %13 = load %struct.rtable*, %struct.rtable** %4, align 8
  %14 = getelementptr inbounds %struct.rtable, %struct.rtable* %13, i32 0, i32 3
  %15 = load i32, i32* %14, align 8
  store i32 %15, i32* %5, align 4
  br label %44

16:                                               ; preds = %2
  %17 = load %struct.rtable*, %struct.rtable** %4, align 8
  %18 = getelementptr inbounds %struct.rtable, %struct.rtable* %17, i32 0, i32 1
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = call i32 @dev_net(i32 %21)
  %23 = load %struct.rtable*, %struct.rtable** %4, align 8
  %24 = getelementptr inbounds %struct.rtable, %struct.rtable* %23, i32 0, i32 2
  %25 = call i64 @fib_lookup(i32 %22, %struct.TYPE_6__* %24, %struct.fib_result* %6)
  %26 = icmp eq i64 %25, 0
  br i1 %26, label %27, label %32

27:                                               ; preds = %16
  %28 = getelementptr inbounds %struct.fib_result, %struct.fib_result* %6, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @FIB_RES_PREFSRC(i32 %29)
  store i32 %30, i32* %5, align 4
  %31 = call i32 @fib_res_put(%struct.fib_result* %6)
  br label %43

32:                                               ; preds = %16
  %33 = load %struct.rtable*, %struct.rtable** %4, align 8
  %34 = getelementptr inbounds %struct.rtable, %struct.rtable* %33, i32 0, i32 1
  %35 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = load %struct.rtable*, %struct.rtable** %4, align 8
  %39 = getelementptr inbounds %struct.rtable, %struct.rtable* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = load i32, i32* @RT_SCOPE_UNIVERSE, align 4
  %42 = call i32 @inet_select_addr(i32 %37, i32 %40, i32 %41)
  store i32 %42, i32* %5, align 4
  br label %43

43:                                               ; preds = %32, %27
  br label %44

44:                                               ; preds = %43, %12
  %45 = load i32*, i32** %3, align 8
  %46 = call i32 @memcpy(i32* %45, i32* %5, i32 4)
  ret void
}

declare dso_local i64 @fib_lookup(i32, %struct.TYPE_6__*, %struct.fib_result*) #1

declare dso_local i32 @dev_net(i32) #1

declare dso_local i32 @FIB_RES_PREFSRC(i32) #1

declare dso_local i32 @fib_res_put(%struct.fib_result*) #1

declare dso_local i32 @inet_select_addr(i32, i32, i32) #1

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

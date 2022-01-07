; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/xfrm/extr_xfrm_state.c_xfrm_get_mode.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/xfrm/extr_xfrm_state.c_xfrm_get_mode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xfrm_mode = type { i32 }
%struct.xfrm_state_afinfo = type { %struct.xfrm_mode** }

@XFRM_MODE_MAX = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [16 x i8] c"xfrm-mode-%d-%d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.xfrm_mode* (i32, i32)* @xfrm_get_mode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.xfrm_mode* @xfrm_get_mode(i32 %0, i32 %1) #0 {
  %3 = alloca %struct.xfrm_mode*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.xfrm_state_afinfo*, align 8
  %7 = alloca %struct.xfrm_mode*, align 8
  %8 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  store i32 0, i32* %8, align 4
  %9 = load i32, i32* %4, align 4
  %10 = load i32, i32* @XFRM_MODE_MAX, align 4
  %11 = icmp uge i32 %9, %10
  %12 = zext i1 %11 to i32
  %13 = call i64 @unlikely(i32 %12)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %16

15:                                               ; preds = %2
  store %struct.xfrm_mode* null, %struct.xfrm_mode** %3, align 8
  br label %65

16:                                               ; preds = %2
  br label %17

17:                                               ; preds = %55, %16
  %18 = load i32, i32* %5, align 4
  %19 = call %struct.xfrm_state_afinfo* @xfrm_state_get_afinfo(i32 %18)
  store %struct.xfrm_state_afinfo* %19, %struct.xfrm_state_afinfo** %6, align 8
  %20 = load %struct.xfrm_state_afinfo*, %struct.xfrm_state_afinfo** %6, align 8
  %21 = icmp eq %struct.xfrm_state_afinfo* %20, null
  %22 = zext i1 %21 to i32
  %23 = call i64 @unlikely(i32 %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %26

25:                                               ; preds = %17
  store %struct.xfrm_mode* null, %struct.xfrm_mode** %3, align 8
  br label %65

26:                                               ; preds = %17
  %27 = load %struct.xfrm_state_afinfo*, %struct.xfrm_state_afinfo** %6, align 8
  %28 = getelementptr inbounds %struct.xfrm_state_afinfo, %struct.xfrm_state_afinfo* %27, i32 0, i32 0
  %29 = load %struct.xfrm_mode**, %struct.xfrm_mode*** %28, align 8
  %30 = load i32, i32* %4, align 4
  %31 = zext i32 %30 to i64
  %32 = getelementptr inbounds %struct.xfrm_mode*, %struct.xfrm_mode** %29, i64 %31
  %33 = load %struct.xfrm_mode*, %struct.xfrm_mode** %32, align 8
  store %struct.xfrm_mode* %33, %struct.xfrm_mode** %7, align 8
  %34 = load %struct.xfrm_mode*, %struct.xfrm_mode** %7, align 8
  %35 = icmp ne %struct.xfrm_mode* %34, null
  br i1 %35, label %36, label %43

36:                                               ; preds = %26
  %37 = load %struct.xfrm_mode*, %struct.xfrm_mode** %7, align 8
  %38 = getelementptr inbounds %struct.xfrm_mode, %struct.xfrm_mode* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = call i32 @try_module_get(i32 %39)
  %41 = icmp ne i32 %40, 0
  %42 = xor i1 %41, true
  br label %43

43:                                               ; preds = %36, %26
  %44 = phi i1 [ false, %26 ], [ %42, %36 ]
  %45 = zext i1 %44 to i32
  %46 = call i64 @unlikely(i32 %45)
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %49

48:                                               ; preds = %43
  store %struct.xfrm_mode* null, %struct.xfrm_mode** %7, align 8
  br label %49

49:                                               ; preds = %48, %43
  %50 = load %struct.xfrm_mode*, %struct.xfrm_mode** %7, align 8
  %51 = icmp ne %struct.xfrm_mode* %50, null
  br i1 %51, label %61, label %52

52:                                               ; preds = %49
  %53 = load i32, i32* %8, align 4
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %61, label %55

55:                                               ; preds = %52
  %56 = load %struct.xfrm_state_afinfo*, %struct.xfrm_state_afinfo** %6, align 8
  %57 = call i32 @xfrm_state_put_afinfo(%struct.xfrm_state_afinfo* %56)
  %58 = load i32, i32* %5, align 4
  %59 = load i32, i32* %4, align 4
  %60 = call i32 @request_module(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), i32 %58, i32 %59)
  store i32 1, i32* %8, align 4
  br label %17

61:                                               ; preds = %52, %49
  %62 = load %struct.xfrm_state_afinfo*, %struct.xfrm_state_afinfo** %6, align 8
  %63 = call i32 @xfrm_state_put_afinfo(%struct.xfrm_state_afinfo* %62)
  %64 = load %struct.xfrm_mode*, %struct.xfrm_mode** %7, align 8
  store %struct.xfrm_mode* %64, %struct.xfrm_mode** %3, align 8
  br label %65

65:                                               ; preds = %61, %25, %15
  %66 = load %struct.xfrm_mode*, %struct.xfrm_mode** %3, align 8
  ret %struct.xfrm_mode* %66
}

declare dso_local i64 @unlikely(i32) #1

declare dso_local %struct.xfrm_state_afinfo* @xfrm_state_get_afinfo(i32) #1

declare dso_local i32 @try_module_get(i32) #1

declare dso_local i32 @xfrm_state_put_afinfo(%struct.xfrm_state_afinfo*) #1

declare dso_local i32 @request_module(i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

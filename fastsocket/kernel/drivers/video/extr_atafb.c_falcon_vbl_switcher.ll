; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/video/extr_atafb.c_falcon_vbl_switcher.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/video/extr_atafb.c_falcon_vbl_switcher.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.falcon_hw = type { i32, i32, i32, i32, i32, i32, i64, i64, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_11__ = type { i32 }
%struct.TYPE_9__ = type { i32, i32, i32, i64, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_10__ = type { i32, i32 }
%struct.TYPE_12__ = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32, i32 }

@f_new_mode = common dso_local global %struct.falcon_hw zeroinitializer, align 8
@f_change_mode = common dso_local global i64 0, align 8
@shifter = common dso_local global %struct.TYPE_11__ zeroinitializer, align 4
@videl = common dso_local global %struct.TYPE_9__ zeroinitializer, align 8
@shifter_f030 = common dso_local global %struct.TYPE_10__ zeroinitializer, align 4
@f_pan_display = common dso_local global i64 0, align 8
@current_par = common dso_local global %struct.TYPE_12__ zeroinitializer, align 4
@IRQ_HANDLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @falcon_vbl_switcher to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @falcon_vbl_switcher(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca %struct.falcon_hw*, align 8
  store i32 %0, i32* %3, align 4
  store i8* %1, i8** %4, align 8
  store %struct.falcon_hw* @f_new_mode, %struct.falcon_hw** %5, align 8
  %6 = load i64, i64* @f_change_mode, align 8
  %7 = icmp ne i64 %6, 0
  br i1 %7, label %8, label %85

8:                                                ; preds = %2
  store i64 0, i64* @f_change_mode, align 8
  %9 = load %struct.falcon_hw*, %struct.falcon_hw** %5, align 8
  %10 = getelementptr inbounds %struct.falcon_hw, %struct.falcon_hw* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  %12 = and i32 %11, 1
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %15

14:                                               ; preds = %8
  store volatile i16 -65, i16* inttoptr (i64 4294939138 to i16*), align 2
  br label %17

15:                                               ; preds = %8
  %16 = load volatile i16, i16* inttoptr (i64 4294939138 to i16*), align 2
  br label %17

17:                                               ; preds = %15, %14
  %18 = load %struct.falcon_hw*, %struct.falcon_hw** %5, align 8
  %19 = getelementptr inbounds %struct.falcon_hw, %struct.falcon_hw* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  store i32 %20, i32* getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @shifter, i32 0, i32 0), align 4
  %21 = load %struct.falcon_hw*, %struct.falcon_hw** %5, align 8
  %22 = getelementptr inbounds %struct.falcon_hw, %struct.falcon_hw* %21, i32 0, i32 20
  %23 = load i32, i32* %22, align 4
  store i32 %23, i32* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @videl, i32 0, i32 16), align 4
  %24 = load %struct.falcon_hw*, %struct.falcon_hw** %5, align 8
  %25 = getelementptr inbounds %struct.falcon_hw, %struct.falcon_hw* %24, i32 0, i32 19
  %26 = load i32, i32* %25, align 8
  store i32 %26, i32* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @videl, i32 0, i32 15), align 8
  %27 = load %struct.falcon_hw*, %struct.falcon_hw** %5, align 8
  %28 = getelementptr inbounds %struct.falcon_hw, %struct.falcon_hw* %27, i32 0, i32 18
  %29 = load i32, i32* %28, align 4
  store i32 %29, i32* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @videl, i32 0, i32 14), align 4
  %30 = load %struct.falcon_hw*, %struct.falcon_hw** %5, align 8
  %31 = getelementptr inbounds %struct.falcon_hw, %struct.falcon_hw* %30, i32 0, i32 17
  %32 = load i32, i32* %31, align 8
  store i32 %32, i32* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @videl, i32 0, i32 13), align 8
  %33 = load %struct.falcon_hw*, %struct.falcon_hw** %5, align 8
  %34 = getelementptr inbounds %struct.falcon_hw, %struct.falcon_hw* %33, i32 0, i32 16
  %35 = load i32, i32* %34, align 4
  store i32 %35, i32* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @videl, i32 0, i32 12), align 4
  %36 = load %struct.falcon_hw*, %struct.falcon_hw** %5, align 8
  %37 = getelementptr inbounds %struct.falcon_hw, %struct.falcon_hw* %36, i32 0, i32 15
  %38 = load i32, i32* %37, align 8
  store i32 %38, i32* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @videl, i32 0, i32 11), align 8
  %39 = load %struct.falcon_hw*, %struct.falcon_hw** %5, align 8
  %40 = getelementptr inbounds %struct.falcon_hw, %struct.falcon_hw* %39, i32 0, i32 14
  %41 = load i32, i32* %40, align 4
  store i32 %41, i32* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @videl, i32 0, i32 10), align 4
  %42 = load %struct.falcon_hw*, %struct.falcon_hw** %5, align 8
  %43 = getelementptr inbounds %struct.falcon_hw, %struct.falcon_hw* %42, i32 0, i32 13
  %44 = load i32, i32* %43, align 8
  store i32 %44, i32* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @videl, i32 0, i32 9), align 8
  %45 = load %struct.falcon_hw*, %struct.falcon_hw** %5, align 8
  %46 = getelementptr inbounds %struct.falcon_hw, %struct.falcon_hw* %45, i32 0, i32 12
  %47 = load i32, i32* %46, align 4
  store i32 %47, i32* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @videl, i32 0, i32 8), align 4
  %48 = load %struct.falcon_hw*, %struct.falcon_hw** %5, align 8
  %49 = getelementptr inbounds %struct.falcon_hw, %struct.falcon_hw* %48, i32 0, i32 11
  %50 = load i32, i32* %49, align 8
  store i32 %50, i32* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @videl, i32 0, i32 7), align 8
  %51 = load %struct.falcon_hw*, %struct.falcon_hw** %5, align 8
  %52 = getelementptr inbounds %struct.falcon_hw, %struct.falcon_hw* %51, i32 0, i32 10
  %53 = load i32, i32* %52, align 4
  store i32 %53, i32* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @videl, i32 0, i32 6), align 4
  %54 = load %struct.falcon_hw*, %struct.falcon_hw** %5, align 8
  %55 = getelementptr inbounds %struct.falcon_hw, %struct.falcon_hw* %54, i32 0, i32 9
  %56 = load i32, i32* %55, align 8
  store i32 %56, i32* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @videl, i32 0, i32 5), align 8
  store i64 0, i64* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @videl, i32 0, i32 3), align 8
  %57 = load %struct.falcon_hw*, %struct.falcon_hw** %5, align 8
  %58 = getelementptr inbounds %struct.falcon_hw, %struct.falcon_hw* %57, i32 0, i32 8
  %59 = load i64, i64* %58, align 8
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %65

61:                                               ; preds = %17
  %62 = load %struct.falcon_hw*, %struct.falcon_hw** %5, align 8
  %63 = getelementptr inbounds %struct.falcon_hw, %struct.falcon_hw* %62, i32 0, i32 7
  %64 = load i64, i64* %63, align 8
  store i64 %64, i64* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @videl, i32 0, i32 4), align 8
  br label %69

65:                                               ; preds = %17
  store i64 0, i64* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @videl, i32 0, i32 4), align 8
  %66 = load %struct.falcon_hw*, %struct.falcon_hw** %5, align 8
  %67 = getelementptr inbounds %struct.falcon_hw, %struct.falcon_hw* %66, i32 0, i32 6
  %68 = load i64, i64* %67, align 8
  store i64 %68, i64* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @videl, i32 0, i32 3), align 8
  br label %69

69:                                               ; preds = %65, %61
  %70 = load %struct.falcon_hw*, %struct.falcon_hw** %5, align 8
  %71 = getelementptr inbounds %struct.falcon_hw, %struct.falcon_hw* %70, i32 0, i32 5
  %72 = load i32, i32* %71, align 4
  store i32 %72, i32* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @videl, i32 0, i32 0), align 8
  %73 = load %struct.falcon_hw*, %struct.falcon_hw** %5, align 8
  %74 = getelementptr inbounds %struct.falcon_hw, %struct.falcon_hw* %73, i32 0, i32 4
  %75 = load i32, i32* %74, align 8
  store i32 %75, i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @shifter_f030, i32 0, i32 1), align 4
  %76 = load %struct.falcon_hw*, %struct.falcon_hw** %5, align 8
  %77 = getelementptr inbounds %struct.falcon_hw, %struct.falcon_hw* %76, i32 0, i32 3
  %78 = load i32, i32* %77, align 4
  store i32 %78, i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @shifter_f030, i32 0, i32 0), align 4
  %79 = load %struct.falcon_hw*, %struct.falcon_hw** %5, align 8
  %80 = getelementptr inbounds %struct.falcon_hw, %struct.falcon_hw* %79, i32 0, i32 2
  %81 = load i32, i32* %80, align 8
  store i32 %81, i32* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @videl, i32 0, i32 2), align 8
  %82 = load %struct.falcon_hw*, %struct.falcon_hw** %5, align 8
  %83 = getelementptr inbounds %struct.falcon_hw, %struct.falcon_hw* %82, i32 0, i32 1
  %84 = load i32, i32* %83, align 4
  store i32 %84, i32* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @videl, i32 0, i32 1), align 4
  br label %85

85:                                               ; preds = %69, %2
  %86 = load i64, i64* @f_pan_display, align 8
  %87 = icmp ne i64 %86, 0
  br i1 %87, label %88, label %91

88:                                               ; preds = %85
  store i64 0, i64* @f_pan_display, align 8
  %89 = load i32, i32* getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @current_par, i32 0, i32 0, i32 0, i32 1), align 4
  store i32 %89, i32* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @videl, i32 0, i32 0), align 8
  %90 = load i32, i32* getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @current_par, i32 0, i32 0, i32 0, i32 0), align 4
  store i32 %90, i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @shifter_f030, i32 0, i32 0), align 4
  br label %91

91:                                               ; preds = %88, %85
  %92 = load i32, i32* @IRQ_HANDLED, align 4
  ret i32 %92
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

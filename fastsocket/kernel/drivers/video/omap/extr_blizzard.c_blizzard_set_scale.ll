; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/video/omap/extr_blizzard.c_blizzard_set_scale.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/video/omap/extr_blizzard.c_blizzard_set_scale.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, %struct.TYPE_5__*, %struct.TYPE_4__*, %struct.plane_info* }
%struct.TYPE_5__ = type { i32 (i32, i32, i32, i32, i32)* }
%struct.TYPE_4__ = type { i32 }
%struct.plane_info = type { i32, i32, i32, i32 }

@blizzard = common dso_local global %struct.TYPE_6__ zeroinitializer, align 8
@.str = private unnamed_addr constant [48 x i8] c"plane %d orig_w %d orig_h %d out_w %d out_h %d\0A\00", align 1
@OMAPFB_PLANE_NUM = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i32, i32, i32)* @blizzard_set_scale to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @blizzard_set_scale(i32 %0, i32 %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.plane_info*, align 8
  %13 = alloca i32, align 4
  store i32 %0, i32* %7, align 4
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  %14 = load %struct.plane_info*, %struct.plane_info** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @blizzard, i32 0, i32 3), align 8
  %15 = load i32, i32* %7, align 4
  %16 = sext i32 %15 to i64
  %17 = getelementptr inbounds %struct.plane_info, %struct.plane_info* %14, i64 %16
  store %struct.plane_info* %17, %struct.plane_info** %12, align 8
  %18 = load %struct.TYPE_4__*, %struct.TYPE_4__** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @blizzard, i32 0, i32 2), align 8
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = load i32, i32* %7, align 4
  %22 = load i32, i32* %8, align 4
  %23 = load i32, i32* %9, align 4
  %24 = load i32, i32* %10, align 4
  %25 = load i32, i32* %11, align 4
  %26 = call i32 @dev_dbg(i32 %20, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str, i64 0, i64 0), i32 %21, i32 %22, i32 %23, i32 %24, i32 %25)
  %27 = load i32, i32* %7, align 4
  %28 = load i32, i32* @OMAPFB_PLANE_NUM, align 4
  %29 = icmp ugt i32 %27, %28
  br i1 %29, label %30, label %33

30:                                               ; preds = %5
  %31 = load i32, i32* @ENODEV, align 4
  %32 = sub nsw i32 0, %31
  store i32 %32, i32* %6, align 4
  br label %79

33:                                               ; preds = %5
  %34 = load %struct.TYPE_5__*, %struct.TYPE_5__** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @blizzard, i32 0, i32 1), align 8
  %35 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %34, i32 0, i32 0
  %36 = load i32 (i32, i32, i32, i32, i32)*, i32 (i32, i32, i32, i32, i32)** %35, align 8
  %37 = load i32, i32* %7, align 4
  %38 = load i32, i32* %8, align 4
  %39 = load i32, i32* %9, align 4
  %40 = load i32, i32* %10, align 4
  %41 = load i32, i32* %11, align 4
  %42 = call i32 %36(i32 %37, i32 %38, i32 %39, i32 %40, i32 %41)
  store i32 %42, i32* %13, align 4
  %43 = load i32, i32* %13, align 4
  %44 = icmp slt i32 %43, 0
  br i1 %44, label %45, label %47

45:                                               ; preds = %33
  %46 = load i32, i32* %13, align 4
  store i32 %46, i32* %6, align 4
  br label %79

47:                                               ; preds = %33
  %48 = load i32, i32* %8, align 4
  %49 = load %struct.plane_info*, %struct.plane_info** %12, align 8
  %50 = getelementptr inbounds %struct.plane_info, %struct.plane_info* %49, i32 0, i32 0
  store i32 %48, i32* %50, align 4
  %51 = load i32, i32* %9, align 4
  %52 = load %struct.plane_info*, %struct.plane_info** %12, align 8
  %53 = getelementptr inbounds %struct.plane_info, %struct.plane_info* %52, i32 0, i32 1
  store i32 %51, i32* %53, align 4
  %54 = load i32, i32* %10, align 4
  %55 = load %struct.plane_info*, %struct.plane_info** %12, align 8
  %56 = getelementptr inbounds %struct.plane_info, %struct.plane_info* %55, i32 0, i32 2
  store i32 %54, i32* %56, align 4
  %57 = load i32, i32* %11, align 4
  %58 = load %struct.plane_info*, %struct.plane_info** %12, align 8
  %59 = getelementptr inbounds %struct.plane_info, %struct.plane_info* %58, i32 0, i32 3
  store i32 %57, i32* %59, align 4
  %60 = load i32, i32* %8, align 4
  %61 = load i32, i32* %10, align 4
  %62 = icmp eq i32 %60, %61
  br i1 %62, label %63, label %73

63:                                               ; preds = %47
  %64 = load i32, i32* %9, align 4
  %65 = load i32, i32* %11, align 4
  %66 = icmp eq i32 %64, %65
  br i1 %66, label %67, label %73

67:                                               ; preds = %63
  %68 = load i32, i32* %7, align 4
  %69 = shl i32 1, %68
  %70 = xor i32 %69, -1
  %71 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @blizzard, i32 0, i32 0), align 8
  %72 = and i32 %71, %70
  store i32 %72, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @blizzard, i32 0, i32 0), align 8
  br label %78

73:                                               ; preds = %63, %47
  %74 = load i32, i32* %7, align 4
  %75 = shl i32 1, %74
  %76 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @blizzard, i32 0, i32 0), align 8
  %77 = or i32 %76, %75
  store i32 %77, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @blizzard, i32 0, i32 0), align 8
  br label %78

78:                                               ; preds = %73, %67
  store i32 0, i32* %6, align 4
  br label %79

79:                                               ; preds = %78, %45, %30
  %80 = load i32, i32* %6, align 4
  ret i32 %80
}

declare dso_local i32 @dev_dbg(i32, i8*, i32, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/video/omap/extr_blizzard.c_blizzard_setup_plane.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/video/omap/extr_blizzard.c_blizzard_setup_plane.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, %struct.plane_info*, %struct.TYPE_3__* }
%struct.plane_info = type { i32, i64, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_3__ = type { i32 }

@OMAPFB_PLANE_NUM = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@blizzard = common dso_local global %struct.TYPE_4__ zeroinitializer, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i64, i32, i32, i32, i32, i32, i32)* @blizzard_setup_plane to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @blizzard_setup_plane(i32 %0, i32 %1, i64 %2, i32 %3, i32 %4, i32 %5, i32 %6, i32 %7, i32 %8) #0 {
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca %struct.plane_info*, align 8
  store i32 %0, i32* %11, align 4
  store i32 %1, i32* %12, align 4
  store i64 %2, i64* %13, align 8
  store i32 %3, i32* %14, align 4
  store i32 %4, i32* %15, align 4
  store i32 %5, i32* %16, align 4
  store i32 %6, i32* %17, align 4
  store i32 %7, i32* %18, align 4
  store i32 %8, i32* %19, align 4
  %21 = load i32, i32* %11, align 4
  %22 = load i32, i32* @OMAPFB_PLANE_NUM, align 4
  %23 = icmp ugt i32 %21, %22
  br i1 %23, label %24, label %27

24:                                               ; preds = %9
  %25 = load i32, i32* @EINVAL, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %10, align 4
  br label %99

27:                                               ; preds = %9
  %28 = load %struct.plane_info*, %struct.plane_info** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @blizzard, i32 0, i32 1), align 8
  %29 = load i32, i32* %11, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds %struct.plane_info, %struct.plane_info* %28, i64 %30
  store %struct.plane_info* %31, %struct.plane_info** %20, align 8
  %32 = load i32, i32* %19, align 4
  switch i32 %32, label %56 [
    i32 129, label %33
    i32 128, label %33
    i32 130, label %41
    i32 131, label %48
  ]

33:                                               ; preds = %27, %27
  %34 = load %struct.plane_info*, %struct.plane_info** %20, align 8
  %35 = getelementptr inbounds %struct.plane_info, %struct.plane_info* %34, i32 0, i32 0
  store i32 16, i32* %35, align 8
  %36 = load i32, i32* %11, align 4
  %37 = shl i32 1, %36
  %38 = xor i32 %37, -1
  %39 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @blizzard, i32 0, i32 0), align 8
  %40 = and i32 %39, %38
  store i32 %40, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @blizzard, i32 0, i32 0), align 8
  br label %59

41:                                               ; preds = %27
  %42 = load %struct.plane_info*, %struct.plane_info** %20, align 8
  %43 = getelementptr inbounds %struct.plane_info, %struct.plane_info* %42, i32 0, i32 0
  store i32 12, i32* %43, align 8
  %44 = load i32, i32* %11, align 4
  %45 = shl i32 1, %44
  %46 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @blizzard, i32 0, i32 0), align 8
  %47 = or i32 %46, %45
  store i32 %47, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @blizzard, i32 0, i32 0), align 8
  br label %59

48:                                               ; preds = %27
  %49 = load %struct.plane_info*, %struct.plane_info** %20, align 8
  %50 = getelementptr inbounds %struct.plane_info, %struct.plane_info* %49, i32 0, i32 0
  store i32 16, i32* %50, align 8
  %51 = load i32, i32* %11, align 4
  %52 = shl i32 1, %51
  %53 = xor i32 %52, -1
  %54 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @blizzard, i32 0, i32 0), align 8
  %55 = and i32 %54, %53
  store i32 %55, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @blizzard, i32 0, i32 0), align 8
  br label %59

56:                                               ; preds = %27
  %57 = load i32, i32* @EINVAL, align 4
  %58 = sub nsw i32 0, %57
  store i32 %58, i32* %10, align 4
  br label %99

59:                                               ; preds = %48, %41, %33
  %60 = load i64, i64* %13, align 8
  %61 = load %struct.plane_info*, %struct.plane_info** %20, align 8
  %62 = getelementptr inbounds %struct.plane_info, %struct.plane_info* %61, i32 0, i32 1
  store i64 %60, i64* %62, align 8
  %63 = load i32, i32* %15, align 4
  %64 = load %struct.plane_info*, %struct.plane_info** %20, align 8
  %65 = getelementptr inbounds %struct.plane_info, %struct.plane_info* %64, i32 0, i32 2
  store i32 %63, i32* %65, align 8
  %66 = load i32, i32* %16, align 4
  %67 = load %struct.plane_info*, %struct.plane_info** %20, align 8
  %68 = getelementptr inbounds %struct.plane_info, %struct.plane_info* %67, i32 0, i32 3
  store i32 %66, i32* %68, align 4
  %69 = load i32, i32* %17, align 4
  %70 = load %struct.plane_info*, %struct.plane_info** %20, align 8
  %71 = getelementptr inbounds %struct.plane_info, %struct.plane_info* %70, i32 0, i32 4
  store i32 %69, i32* %71, align 8
  %72 = load i32, i32* %18, align 4
  %73 = load %struct.plane_info*, %struct.plane_info** %20, align 8
  %74 = getelementptr inbounds %struct.plane_info, %struct.plane_info* %73, i32 0, i32 5
  store i32 %72, i32* %74, align 4
  %75 = load i32, i32* %14, align 4
  %76 = load %struct.plane_info*, %struct.plane_info** %20, align 8
  %77 = getelementptr inbounds %struct.plane_info, %struct.plane_info* %76, i32 0, i32 6
  store i32 %75, i32* %77, align 8
  %78 = load %struct.plane_info*, %struct.plane_info** %20, align 8
  %79 = getelementptr inbounds %struct.plane_info, %struct.plane_info* %78, i32 0, i32 7
  %80 = load i32, i32* %79, align 4
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %86, label %82

82:                                               ; preds = %59
  %83 = load i32, i32* %17, align 4
  %84 = load %struct.plane_info*, %struct.plane_info** %20, align 8
  %85 = getelementptr inbounds %struct.plane_info, %struct.plane_info* %84, i32 0, i32 7
  store i32 %83, i32* %85, align 4
  br label %86

86:                                               ; preds = %82, %59
  %87 = load %struct.plane_info*, %struct.plane_info** %20, align 8
  %88 = getelementptr inbounds %struct.plane_info, %struct.plane_info* %87, i32 0, i32 8
  %89 = load i32, i32* %88, align 8
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %95, label %91

91:                                               ; preds = %86
  %92 = load i32, i32* %18, align 4
  %93 = load %struct.plane_info*, %struct.plane_info** %20, align 8
  %94 = getelementptr inbounds %struct.plane_info, %struct.plane_info* %93, i32 0, i32 8
  store i32 %92, i32* %94, align 8
  br label %95

95:                                               ; preds = %91, %86
  %96 = load i32, i32* %19, align 4
  %97 = load %struct.plane_info*, %struct.plane_info** %20, align 8
  %98 = getelementptr inbounds %struct.plane_info, %struct.plane_info* %97, i32 0, i32 9
  store i32 %96, i32* %98, align 4
  store i32 0, i32* %10, align 4
  br label %99

99:                                               ; preds = %95, %56, %24
  %100 = load i32, i32* %10, align 4
  ret i32 %100
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/video/omap/extr_dispc.c_omap_dispc_setup_mem.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/video/omap/extr_dispc.c_omap_dispc_setup_mem.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32*, %struct.TYPE_3__, i32** }
%struct.TYPE_3__ = type { i32, %struct.omapfb_mem_region* }
%struct.omapfb_mem_region = type { i64, i32, i64 }

@dispc = common dso_local global %struct.TYPE_4__ zeroinitializer, align 8
@EINVAL = common dso_local global i32 0, align 4
@DISPC_MEMTYPE_NUM = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i64, i32, i64*)* @omap_dispc_setup_mem to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @omap_dispc_setup_mem(i32 %0, i64 %1, i32 %2, i64* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64*, align 8
  %10 = alloca %struct.omapfb_mem_region*, align 8
  %11 = alloca i64, align 8
  store i32 %0, i32* %6, align 4
  store i64 %1, i64* %7, align 8
  store i32 %2, i32* %8, align 4
  store i64* %3, i64** %9, align 8
  store i64 0, i64* %11, align 8
  %12 = load i32, i32* %6, align 4
  %13 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @dispc, i32 0, i32 1, i32 0), align 8
  %14 = icmp ugt i32 %12, %13
  br i1 %14, label %15, label %18

15:                                               ; preds = %4
  %16 = load i32, i32* @EINVAL, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %5, align 4
  br label %107

18:                                               ; preds = %4
  %19 = load i32, i32* %8, align 4
  %20 = load i32, i32* @DISPC_MEMTYPE_NUM, align 4
  %21 = icmp sge i32 %19, %20
  br i1 %21, label %22, label %25

22:                                               ; preds = %18
  %23 = load i32, i32* @EINVAL, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %5, align 4
  br label %107

25:                                               ; preds = %18
  %26 = load i32**, i32*** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @dispc, i32 0, i32 2), align 8
  %27 = load i32, i32* %8, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds i32*, i32** %26, i64 %28
  %30 = load i32*, i32** %29, align 8
  %31 = icmp eq i32* %30, null
  br i1 %31, label %32, label %35

32:                                               ; preds = %25
  %33 = load i32, i32* @ENOMEM, align 4
  %34 = sub nsw i32 0, %33
  store i32 %34, i32* %5, align 4
  br label %107

35:                                               ; preds = %25
  %36 = load %struct.omapfb_mem_region*, %struct.omapfb_mem_region** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @dispc, i32 0, i32 1, i32 1), align 8
  %37 = load i32, i32* %6, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds %struct.omapfb_mem_region, %struct.omapfb_mem_region* %36, i64 %38
  store %struct.omapfb_mem_region* %39, %struct.omapfb_mem_region** %10, align 8
  %40 = load i64, i64* %7, align 8
  %41 = load %struct.omapfb_mem_region*, %struct.omapfb_mem_region** %10, align 8
  %42 = getelementptr inbounds %struct.omapfb_mem_region, %struct.omapfb_mem_region* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = icmp eq i64 %40, %43
  br i1 %44, label %45, label %52

45:                                               ; preds = %35
  %46 = load i32, i32* %8, align 4
  %47 = load %struct.omapfb_mem_region*, %struct.omapfb_mem_region** %10, align 8
  %48 = getelementptr inbounds %struct.omapfb_mem_region, %struct.omapfb_mem_region* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 8
  %50 = icmp eq i32 %46, %49
  br i1 %50, label %51, label %52

51:                                               ; preds = %45
  store i32 0, i32* %5, align 4
  br label %107

52:                                               ; preds = %45, %35
  %53 = load i32*, i32** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @dispc, i32 0, i32 0), align 8
  %54 = load i32, i32* %6, align 4
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds i32, i32* %53, i64 %55
  %57 = call i64 @atomic_read(i32* %56)
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %62

59:                                               ; preds = %52
  %60 = load i32, i32* @EBUSY, align 4
  %61 = sub nsw i32 0, %60
  store i32 %61, i32* %5, align 4
  br label %107

62:                                               ; preds = %52
  %63 = load %struct.omapfb_mem_region*, %struct.omapfb_mem_region** %10, align 8
  %64 = getelementptr inbounds %struct.omapfb_mem_region, %struct.omapfb_mem_region* %63, i32 0, i32 0
  %65 = load i64, i64* %64, align 8
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %67, label %75

67:                                               ; preds = %62
  %68 = load %struct.omapfb_mem_region*, %struct.omapfb_mem_region** %10, align 8
  %69 = getelementptr inbounds %struct.omapfb_mem_region, %struct.omapfb_mem_region* %68, i32 0, i32 2
  %70 = load i64, i64* %69, align 8
  %71 = load %struct.omapfb_mem_region*, %struct.omapfb_mem_region** %10, align 8
  %72 = getelementptr inbounds %struct.omapfb_mem_region, %struct.omapfb_mem_region* %71, i32 0, i32 0
  %73 = load i64, i64* %72, align 8
  %74 = call i32 @resmap_free_region(i64 %70, i64 %73)
  br label %75

75:                                               ; preds = %67, %62
  %76 = load i64, i64* %7, align 8
  %77 = icmp ne i64 %76, 0
  br i1 %77, label %78, label %95

78:                                               ; preds = %75
  %79 = load i32, i32* %8, align 4
  %80 = load i64, i64* %7, align 8
  %81 = call i64 @resmap_alloc_region(i32 %79, i64 %80)
  store i64 %81, i64* %11, align 8
  %82 = load i64, i64* %11, align 8
  %83 = icmp ne i64 %82, 0
  br i1 %83, label %94, label %84

84:                                               ; preds = %78
  %85 = load %struct.omapfb_mem_region*, %struct.omapfb_mem_region** %10, align 8
  %86 = getelementptr inbounds %struct.omapfb_mem_region, %struct.omapfb_mem_region* %85, i32 0, i32 2
  %87 = load i64, i64* %86, align 8
  %88 = load %struct.omapfb_mem_region*, %struct.omapfb_mem_region** %10, align 8
  %89 = getelementptr inbounds %struct.omapfb_mem_region, %struct.omapfb_mem_region* %88, i32 0, i32 0
  %90 = load i64, i64* %89, align 8
  %91 = call i32 @resmap_reserve_region(i64 %87, i64 %90)
  %92 = load i32, i32* @ENOMEM, align 4
  %93 = sub nsw i32 0, %92
  store i32 %93, i32* %5, align 4
  br label %107

94:                                               ; preds = %78
  br label %95

95:                                               ; preds = %94, %75
  %96 = load i64, i64* %11, align 8
  %97 = load %struct.omapfb_mem_region*, %struct.omapfb_mem_region** %10, align 8
  %98 = getelementptr inbounds %struct.omapfb_mem_region, %struct.omapfb_mem_region* %97, i32 0, i32 2
  store i64 %96, i64* %98, align 8
  %99 = load i64, i64* %7, align 8
  %100 = load %struct.omapfb_mem_region*, %struct.omapfb_mem_region** %10, align 8
  %101 = getelementptr inbounds %struct.omapfb_mem_region, %struct.omapfb_mem_region* %100, i32 0, i32 0
  store i64 %99, i64* %101, align 8
  %102 = load i32, i32* %8, align 4
  %103 = load %struct.omapfb_mem_region*, %struct.omapfb_mem_region** %10, align 8
  %104 = getelementptr inbounds %struct.omapfb_mem_region, %struct.omapfb_mem_region* %103, i32 0, i32 1
  store i32 %102, i32* %104, align 8
  %105 = load i64, i64* %11, align 8
  %106 = load i64*, i64** %9, align 8
  store i64 %105, i64* %106, align 8
  store i32 0, i32* %5, align 4
  br label %107

107:                                              ; preds = %95, %84, %59, %51, %32, %22, %15
  %108 = load i32, i32* %5, align 4
  ret i32 %108
}

declare dso_local i64 @atomic_read(i32*) #1

declare dso_local i32 @resmap_free_region(i64, i64) #1

declare dso_local i64 @resmap_alloc_region(i32, i64) #1

declare dso_local i32 @resmap_reserve_region(i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

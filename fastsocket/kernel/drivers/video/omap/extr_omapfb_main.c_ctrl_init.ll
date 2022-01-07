; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/video/omap/extr_omapfb_main.c_ctrl_init.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/video/omap/extr_omapfb_main.c_ctrl_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.omapfb_device = type { %struct.TYPE_8__, %struct.TYPE_9__*, %struct.TYPE_6__*, %struct.lcd_panel* }
%struct.TYPE_8__ = type { i32, %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i8*, i32, i32 }
%struct.TYPE_9__ = type { %struct.omapfb_platform_data* }
%struct.omapfb_platform_data = type { %struct.TYPE_8__ }
%struct.TYPE_6__ = type { i32 (%struct.omapfb_device*, i32, %struct.TYPE_8__*)* }
%struct.lcd_panel = type { i32 }

@def_vram_cnt = common dso_local global i32 0, align 4
@def_vram = common dso_local global i32* null, align 8
@def_vxres = common dso_local global i32 0, align 4
@def_vyres = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [39 x i8] c"controller initialization failed (%d)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.omapfb_device*)* @ctrl_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ctrl_init(%struct.omapfb_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.omapfb_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.omapfb_platform_data*, align 8
  %7 = alloca %struct.lcd_panel*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.omapfb_device* %0, %struct.omapfb_device** %3, align 8
  %10 = load i32, i32* @def_vram_cnt, align 4
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %40

12:                                               ; preds = %1
  store i32 0, i32* %5, align 4
  br label %13

13:                                               ; preds = %32, %12
  %14 = load i32, i32* %5, align 4
  %15 = load i32, i32* @def_vram_cnt, align 4
  %16 = icmp slt i32 %14, %15
  br i1 %16, label %17, label %35

17:                                               ; preds = %13
  %18 = load i32*, i32** @def_vram, align 8
  %19 = load i32, i32* %5, align 4
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds i32, i32* %18, i64 %20
  %22 = load i32, i32* %21, align 4
  %23 = call i8* @PAGE_ALIGN(i32 %22)
  %24 = load %struct.omapfb_device*, %struct.omapfb_device** %3, align 8
  %25 = getelementptr inbounds %struct.omapfb_device, %struct.omapfb_device* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %25, i32 0, i32 1
  %27 = load %struct.TYPE_7__*, %struct.TYPE_7__** %26, align 8
  %28 = load i32, i32* %5, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %27, i64 %29
  %31 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %30, i32 0, i32 0
  store i8* %23, i8** %31, align 8
  br label %32

32:                                               ; preds = %17
  %33 = load i32, i32* %5, align 4
  %34 = add nsw i32 %33, 1
  store i32 %34, i32* %5, align 4
  br label %13

35:                                               ; preds = %13
  %36 = load i32, i32* %5, align 4
  %37 = load %struct.omapfb_device*, %struct.omapfb_device** %3, align 8
  %38 = getelementptr inbounds %struct.omapfb_device, %struct.omapfb_device* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %38, i32 0, i32 0
  store i32 %36, i32* %39, align 8
  br label %52

40:                                               ; preds = %1
  %41 = load %struct.omapfb_device*, %struct.omapfb_device** %3, align 8
  %42 = getelementptr inbounds %struct.omapfb_device, %struct.omapfb_device* %41, i32 0, i32 1
  %43 = load %struct.TYPE_9__*, %struct.TYPE_9__** %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %43, i32 0, i32 0
  %45 = load %struct.omapfb_platform_data*, %struct.omapfb_platform_data** %44, align 8
  store %struct.omapfb_platform_data* %45, %struct.omapfb_platform_data** %6, align 8
  %46 = load %struct.omapfb_device*, %struct.omapfb_device** %3, align 8
  %47 = getelementptr inbounds %struct.omapfb_device, %struct.omapfb_device* %46, i32 0, i32 0
  %48 = load %struct.omapfb_platform_data*, %struct.omapfb_platform_data** %6, align 8
  %49 = getelementptr inbounds %struct.omapfb_platform_data, %struct.omapfb_platform_data* %48, i32 0, i32 0
  %50 = bitcast %struct.TYPE_8__* %47 to i8*
  %51 = bitcast %struct.TYPE_8__* %49 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %50, i8* align 8 %51, i64 16, i1 false)
  br label %52

52:                                               ; preds = %40, %35
  %53 = load %struct.omapfb_device*, %struct.omapfb_device** %3, align 8
  %54 = getelementptr inbounds %struct.omapfb_device, %struct.omapfb_device* %53, i32 0, i32 0
  %55 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 8
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %86, label %58

58:                                               ; preds = %52
  %59 = load %struct.omapfb_device*, %struct.omapfb_device** %3, align 8
  %60 = getelementptr inbounds %struct.omapfb_device, %struct.omapfb_device* %59, i32 0, i32 3
  %61 = load %struct.lcd_panel*, %struct.lcd_panel** %60, align 8
  store %struct.lcd_panel* %61, %struct.lcd_panel** %7, align 8
  %62 = load %struct.lcd_panel*, %struct.lcd_panel** %7, align 8
  %63 = getelementptr inbounds %struct.lcd_panel, %struct.lcd_panel* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  store i32 %64, i32* %9, align 4
  %65 = load i32, i32* %9, align 4
  %66 = icmp eq i32 %65, 12
  br i1 %66, label %67, label %68

67:                                               ; preds = %58
  store i32 16, i32* %9, align 4
  br label %68

68:                                               ; preds = %67, %58
  %69 = load i32, i32* @def_vxres, align 4
  %70 = load i32, i32* @def_vyres, align 4
  %71 = mul nsw i32 %69, %70
  %72 = load i32, i32* %9, align 4
  %73 = mul nsw i32 %71, %72
  %74 = sdiv i32 %73, 8
  store i32 %74, i32* %8, align 4
  %75 = load %struct.omapfb_device*, %struct.omapfb_device** %3, align 8
  %76 = getelementptr inbounds %struct.omapfb_device, %struct.omapfb_device* %75, i32 0, i32 0
  %77 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %76, i32 0, i32 0
  store i32 1, i32* %77, align 8
  %78 = load i32, i32* %8, align 4
  %79 = call i8* @PAGE_ALIGN(i32 %78)
  %80 = load %struct.omapfb_device*, %struct.omapfb_device** %3, align 8
  %81 = getelementptr inbounds %struct.omapfb_device, %struct.omapfb_device* %80, i32 0, i32 0
  %82 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %81, i32 0, i32 1
  %83 = load %struct.TYPE_7__*, %struct.TYPE_7__** %82, align 8
  %84 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %83, i64 0
  %85 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %84, i32 0, i32 0
  store i8* %79, i8** %85, align 8
  br label %86

86:                                               ; preds = %68, %52
  %87 = load %struct.omapfb_device*, %struct.omapfb_device** %3, align 8
  %88 = getelementptr inbounds %struct.omapfb_device, %struct.omapfb_device* %87, i32 0, i32 2
  %89 = load %struct.TYPE_6__*, %struct.TYPE_6__** %88, align 8
  %90 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %89, i32 0, i32 0
  %91 = load i32 (%struct.omapfb_device*, i32, %struct.TYPE_8__*)*, i32 (%struct.omapfb_device*, i32, %struct.TYPE_8__*)** %90, align 8
  %92 = load %struct.omapfb_device*, %struct.omapfb_device** %3, align 8
  %93 = load %struct.omapfb_device*, %struct.omapfb_device** %3, align 8
  %94 = getelementptr inbounds %struct.omapfb_device, %struct.omapfb_device* %93, i32 0, i32 0
  %95 = call i32 %91(%struct.omapfb_device* %92, i32 0, %struct.TYPE_8__* %94)
  store i32 %95, i32* %4, align 4
  %96 = load i32, i32* %4, align 4
  %97 = icmp slt i32 %96, 0
  br i1 %97, label %98, label %105

98:                                               ; preds = %86
  %99 = load %struct.omapfb_device*, %struct.omapfb_device** %3, align 8
  %100 = getelementptr inbounds %struct.omapfb_device, %struct.omapfb_device* %99, i32 0, i32 1
  %101 = load %struct.TYPE_9__*, %struct.TYPE_9__** %100, align 8
  %102 = load i32, i32* %4, align 4
  %103 = call i32 @dev_err(%struct.TYPE_9__* %101, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), i32 %102)
  %104 = load i32, i32* %4, align 4
  store i32 %104, i32* %2, align 4
  br label %106

105:                                              ; preds = %86
  store i32 0, i32* %2, align 4
  br label %106

106:                                              ; preds = %105, %98
  %107 = load i32, i32* %2, align 4
  ret i32 %107
}

declare dso_local i8* @PAGE_ALIGN(i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @dev_err(%struct.TYPE_9__*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

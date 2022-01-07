; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/video/omap/extr_lcd_mipid.c_mipid_detect.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/video/omap/extr_lcd_mipid.c_mipid_detect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mipid_device = type { i32, %struct.TYPE_6__, %struct.TYPE_5__*, i32 }
%struct.TYPE_6__ = type { i8*, i32 }
%struct.TYPE_5__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { %struct.mipid_platform_data* }
%struct.mipid_platform_data = type { i32 }

@.str = private unnamed_addr constant [23 x i8] c"missing platform data\0A\00", align 1
@ENOENT = common dso_local global i32 0, align 4
@MIPID_CMD_READ_DISP_ID = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [31 x i8] c"MIPI display ID: %02x%02x%02x\0A\00", align 1
@.str.2 = private unnamed_addr constant [8 x i8] c"lph8923\00", align 1
@.str.3 = private unnamed_addr constant [8 x i8] c"ls041y3\00", align 1
@ls041y3_esd_check = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [8 x i8] c"unknown\00", align 1
@.str.5 = private unnamed_addr constant [20 x i8] c"invalid display ID\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [49 x i8] c"omapfb: %s rev %02x LCD detected, %d data lines\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mipid_device*)* @mipid_detect to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mipid_detect(%struct.mipid_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.mipid_device*, align 8
  %4 = alloca %struct.mipid_platform_data*, align 8
  %5 = alloca [3 x i32], align 4
  store %struct.mipid_device* %0, %struct.mipid_device** %3, align 8
  %6 = load %struct.mipid_device*, %struct.mipid_device** %3, align 8
  %7 = getelementptr inbounds %struct.mipid_device, %struct.mipid_device* %6, i32 0, i32 2
  %8 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %9 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %8, i32 0, i32 0
  %10 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %9, i32 0, i32 0
  %11 = load %struct.mipid_platform_data*, %struct.mipid_platform_data** %10, align 8
  store %struct.mipid_platform_data* %11, %struct.mipid_platform_data** %4, align 8
  %12 = load %struct.mipid_platform_data*, %struct.mipid_platform_data** %4, align 8
  %13 = icmp eq %struct.mipid_platform_data* %12, null
  br i1 %13, label %14, label %22

14:                                               ; preds = %1
  %15 = load %struct.mipid_device*, %struct.mipid_device** %3, align 8
  %16 = getelementptr inbounds %struct.mipid_device, %struct.mipid_device* %15, i32 0, i32 2
  %17 = load %struct.TYPE_5__*, %struct.TYPE_5__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %17, i32 0, i32 0
  %19 = call i32 @dev_err(%struct.TYPE_7__* %18, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  %20 = load i32, i32* @ENOENT, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %2, align 4
  br label %85

22:                                               ; preds = %1
  %23 = load %struct.mipid_device*, %struct.mipid_device** %3, align 8
  %24 = load i32, i32* @MIPID_CMD_READ_DISP_ID, align 4
  %25 = getelementptr inbounds [3 x i32], [3 x i32]* %5, i64 0, i64 0
  %26 = call i32 @mipid_read(%struct.mipid_device* %23, i32 %24, i32* %25, i32 3)
  %27 = load %struct.mipid_device*, %struct.mipid_device** %3, align 8
  %28 = getelementptr inbounds %struct.mipid_device, %struct.mipid_device* %27, i32 0, i32 2
  %29 = load %struct.TYPE_5__*, %struct.TYPE_5__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %29, i32 0, i32 0
  %31 = getelementptr inbounds [3 x i32], [3 x i32]* %5, i64 0, i64 0
  %32 = load i32, i32* %31, align 4
  %33 = getelementptr inbounds [3 x i32], [3 x i32]* %5, i64 0, i64 1
  %34 = load i32, i32* %33, align 4
  %35 = getelementptr inbounds [3 x i32], [3 x i32]* %5, i64 0, i64 2
  %36 = load i32, i32* %35, align 4
  %37 = call i32 @dev_dbg(%struct.TYPE_7__* %30, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0), i32 %32, i32 %34, i32 %36)
  %38 = getelementptr inbounds [3 x i32], [3 x i32]* %5, i64 0, i64 0
  %39 = load i32, i32* %38, align 4
  switch i32 %39, label %51 [
    i32 69, label %40
    i32 131, label %44
  ]

40:                                               ; preds = %22
  %41 = load %struct.mipid_device*, %struct.mipid_device** %3, align 8
  %42 = getelementptr inbounds %struct.mipid_device, %struct.mipid_device* %41, i32 0, i32 1
  %43 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %42, i32 0, i32 0
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0), i8** %43, align 8
  br label %62

44:                                               ; preds = %22
  %45 = load %struct.mipid_device*, %struct.mipid_device** %3, align 8
  %46 = getelementptr inbounds %struct.mipid_device, %struct.mipid_device* %45, i32 0, i32 1
  %47 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %46, i32 0, i32 0
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0), i8** %47, align 8
  %48 = load i32, i32* @ls041y3_esd_check, align 4
  %49 = load %struct.mipid_device*, %struct.mipid_device** %3, align 8
  %50 = getelementptr inbounds %struct.mipid_device, %struct.mipid_device* %49, i32 0, i32 3
  store i32 %48, i32* %50, align 8
  br label %62

51:                                               ; preds = %22
  %52 = load %struct.mipid_device*, %struct.mipid_device** %3, align 8
  %53 = getelementptr inbounds %struct.mipid_device, %struct.mipid_device* %52, i32 0, i32 1
  %54 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %53, i32 0, i32 0
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i64 0, i64 0), i8** %54, align 8
  %55 = load %struct.mipid_device*, %struct.mipid_device** %3, align 8
  %56 = getelementptr inbounds %struct.mipid_device, %struct.mipid_device* %55, i32 0, i32 2
  %57 = load %struct.TYPE_5__*, %struct.TYPE_5__** %56, align 8
  %58 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %57, i32 0, i32 0
  %59 = call i32 @dev_err(%struct.TYPE_7__* %58, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.5, i64 0, i64 0))
  %60 = load i32, i32* @ENODEV, align 4
  %61 = sub nsw i32 0, %60
  store i32 %61, i32* %2, align 4
  br label %85

62:                                               ; preds = %44, %40
  %63 = getelementptr inbounds [3 x i32], [3 x i32]* %5, i64 0, i64 1
  %64 = load i32, i32* %63, align 4
  %65 = load %struct.mipid_device*, %struct.mipid_device** %3, align 8
  %66 = getelementptr inbounds %struct.mipid_device, %struct.mipid_device* %65, i32 0, i32 0
  store i32 %64, i32* %66, align 8
  %67 = load %struct.mipid_platform_data*, %struct.mipid_platform_data** %4, align 8
  %68 = getelementptr inbounds %struct.mipid_platform_data, %struct.mipid_platform_data* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 4
  %70 = load %struct.mipid_device*, %struct.mipid_device** %3, align 8
  %71 = getelementptr inbounds %struct.mipid_device, %struct.mipid_device* %70, i32 0, i32 1
  %72 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %71, i32 0, i32 1
  store i32 %69, i32* %72, align 8
  %73 = load %struct.mipid_device*, %struct.mipid_device** %3, align 8
  %74 = getelementptr inbounds %struct.mipid_device, %struct.mipid_device* %73, i32 0, i32 1
  %75 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %74, i32 0, i32 0
  %76 = load i8*, i8** %75, align 8
  %77 = load %struct.mipid_device*, %struct.mipid_device** %3, align 8
  %78 = getelementptr inbounds %struct.mipid_device, %struct.mipid_device* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 8
  %80 = load %struct.mipid_device*, %struct.mipid_device** %3, align 8
  %81 = getelementptr inbounds %struct.mipid_device, %struct.mipid_device* %80, i32 0, i32 1
  %82 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %81, i32 0, i32 1
  %83 = load i32, i32* %82, align 8
  %84 = call i32 @pr_info(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.6, i64 0, i64 0), i8* %76, i32 %79, i32 %83)
  store i32 0, i32* %2, align 4
  br label %85

85:                                               ; preds = %62, %51, %14
  %86 = load i32, i32* %2, align 4
  ret i32 %86
}

declare dso_local i32 @dev_err(%struct.TYPE_7__*, i8*) #1

declare dso_local i32 @mipid_read(%struct.mipid_device*, i32, i32*, i32) #1

declare dso_local i32 @dev_dbg(%struct.TYPE_7__*, i8*, i32, i32, i32) #1

declare dso_local i32 @pr_info(i8*, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

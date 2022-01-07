; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/video/omap/extr_lcd_mipid.c_mipid_run_test.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/video/omap/extr_lcd_mipid.c_mipid_run_test.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lcd_panel = type { i32 }
%struct.mipid_device = type { %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32 }

@mipid_run_test.test_values = internal constant [4 x i32] [i32 0, i32 65535, i32 43690, i32 21845], align 16
@MIPID_TEST_RGB_LINES = common dso_local global i32 0, align 4
@MIPID_TEST_INVALID = common dso_local global i32 0, align 4
@jiffies = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [56 x i8] c"MIPI LCD RGB I/F test failed: expecting %04x, got %04x\0A\00", align 1
@MIPID_TEST_FAILED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.lcd_panel*, i32)* @mipid_run_test to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mipid_run_test(%struct.lcd_panel* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.lcd_panel*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.mipid_device*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  store %struct.lcd_panel* %0, %struct.lcd_panel** %4, align 8
  store i32 %1, i32* %5, align 4
  %11 = load %struct.lcd_panel*, %struct.lcd_panel** %4, align 8
  %12 = call %struct.mipid_device* @to_mipid_device(%struct.lcd_panel* %11)
  store %struct.mipid_device* %12, %struct.mipid_device** %6, align 8
  %13 = load i32, i32* %5, align 4
  %14 = load i32, i32* @MIPID_TEST_RGB_LINES, align 4
  %15 = icmp ne i32 %13, %14
  br i1 %15, label %16, label %18

16:                                               ; preds = %2
  %17 = load i32, i32* @MIPID_TEST_INVALID, align 4
  store i32 %17, i32* %3, align 4
  br label %70

18:                                               ; preds = %2
  store i32 0, i32* %7, align 4
  br label %19

19:                                               ; preds = %66, %18
  %20 = load i32, i32* %7, align 4
  %21 = call i32 @ARRAY_SIZE(i32* getelementptr inbounds ([4 x i32], [4 x i32]* @mipid_run_test.test_values, i64 0, i64 0))
  %22 = icmp slt i32 %20, %21
  br i1 %22, label %23, label %69

23:                                               ; preds = %19
  %24 = load %struct.mipid_device*, %struct.mipid_device** %6, align 8
  %25 = getelementptr inbounds %struct.mipid_device, %struct.mipid_device* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 8
  %27 = load i32, i32* %7, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds [4 x i32], [4 x i32]* @mipid_run_test.test_values, i64 0, i64 %28
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @omapfb_write_first_pixel(i32 %26, i32 %30)
  %32 = load i64, i64* @jiffies, align 8
  %33 = call i64 @msecs_to_jiffies(i32 100)
  %34 = add i64 %32, %33
  store i64 %34, i64* %9, align 8
  store i32 25, i32* %8, align 4
  br label %35

35:                                               ; preds = %23, %64
  %36 = load i32, i32* %8, align 4
  %37 = call i32 @msleep(i32 %36)
  %38 = load %struct.mipid_device*, %struct.mipid_device** %6, align 8
  %39 = call i32 @read_first_pixel(%struct.mipid_device* %38)
  store i32 %39, i32* %10, align 4
  %40 = load i32, i32* %10, align 4
  %41 = load i32, i32* %7, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds [4 x i32], [4 x i32]* @mipid_run_test.test_values, i64 0, i64 %42
  %44 = load i32, i32* %43, align 4
  %45 = icmp eq i32 %40, %44
  br i1 %45, label %46, label %47

46:                                               ; preds = %35
  br label %65

47:                                               ; preds = %35
  %48 = load i64, i64* @jiffies, align 8
  %49 = load i64, i64* %9, align 8
  %50 = call i64 @time_after(i64 %48, i64 %49)
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %64

52:                                               ; preds = %47
  %53 = load %struct.mipid_device*, %struct.mipid_device** %6, align 8
  %54 = getelementptr inbounds %struct.mipid_device, %struct.mipid_device* %53, i32 0, i32 0
  %55 = load %struct.TYPE_2__*, %struct.TYPE_2__** %54, align 8
  %56 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %55, i32 0, i32 0
  %57 = load i32, i32* %7, align 4
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds [4 x i32], [4 x i32]* @mipid_run_test.test_values, i64 0, i64 %58
  %60 = load i32, i32* %59, align 4
  %61 = load i32, i32* %10, align 4
  %62 = call i32 @dev_err(i32* %56, i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str, i64 0, i64 0), i32 %60, i32 %61)
  %63 = load i32, i32* @MIPID_TEST_FAILED, align 4
  store i32 %63, i32* %3, align 4
  br label %70

64:                                               ; preds = %47
  store i32 10, i32* %8, align 4
  br label %35

65:                                               ; preds = %46
  br label %66

66:                                               ; preds = %65
  %67 = load i32, i32* %7, align 4
  %68 = add nsw i32 %67, 1
  store i32 %68, i32* %7, align 4
  br label %19

69:                                               ; preds = %19
  store i32 0, i32* %3, align 4
  br label %70

70:                                               ; preds = %69, %52, %16
  %71 = load i32, i32* %3, align 4
  ret i32 %71
}

declare dso_local %struct.mipid_device* @to_mipid_device(%struct.lcd_panel*) #1

declare dso_local i32 @ARRAY_SIZE(i32*) #1

declare dso_local i32 @omapfb_write_first_pixel(i32, i32) #1

declare dso_local i64 @msecs_to_jiffies(i32) #1

declare dso_local i32 @msleep(i32) #1

declare dso_local i32 @read_first_pixel(%struct.mipid_device*) #1

declare dso_local i64 @time_after(i64, i64) #1

declare dso_local i32 @dev_err(i32*, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

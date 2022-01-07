; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/dream/camera/extr_mt9p012_fox.c_mt9p012_test.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/dream/camera/extr_mt9p012_fox.c_mt9p012_test.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i32, i32 }

@mt9p012_client = common dso_local global %struct.TYPE_4__* null, align 8
@REG_GROUPED_PARAMETER_HOLD = common dso_local global i32 0, align 4
@GROUPED_PARAMETER_HOLD = common dso_local global i32 0, align 4
@TEST_OFF = common dso_local global i32 0, align 4
@mt9p012_regs = common dso_local global %struct.TYPE_3__ zeroinitializer, align 4
@REG_TEST_PATTERN_MODE = common dso_local global i32 0, align 4
@GROUPED_PARAMETER_UPDATE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i32)* @mt9p012_test to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @mt9p012_test(i32 %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca i32, align 4
  %4 = alloca i64, align 8
  store i32 %0, i32* %3, align 4
  store i64 0, i64* %4, align 8
  %5 = load %struct.TYPE_4__*, %struct.TYPE_4__** @mt9p012_client, align 8
  %6 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 4
  %8 = load i32, i32* @REG_GROUPED_PARAMETER_HOLD, align 4
  %9 = load i32, i32* @GROUPED_PARAMETER_HOLD, align 4
  %10 = call i64 @mt9p012_i2c_write_w(i32 %7, i32 %8, i32 %9)
  store i64 %10, i64* %4, align 8
  %11 = load i64, i64* %4, align 8
  %12 = icmp slt i64 %11, 0
  br i1 %12, label %13, label %15

13:                                               ; preds = %1
  %14 = load i64, i64* %4, align 8
  store i64 %14, i64* %2, align 8
  br label %53

15:                                               ; preds = %1
  %16 = load i32, i32* %3, align 4
  %17 = load i32, i32* @TEST_OFF, align 4
  %18 = icmp eq i32 %16, %17
  br i1 %18, label %19, label %20

19:                                               ; preds = %15
  store i64 0, i64* %2, align 8
  br label %53

20:                                               ; preds = %15
  %21 = load i32, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @mt9p012_regs, i32 0, i32 1), align 4
  %22 = load i32, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @mt9p012_regs, i32 0, i32 0), align 4
  %23 = call i64 @mt9p012_i2c_write_w_table(i32 %21, i32 %22)
  store i64 %23, i64* %4, align 8
  %24 = load i64, i64* %4, align 8
  %25 = icmp slt i64 %24, 0
  br i1 %25, label %26, label %28

26:                                               ; preds = %20
  %27 = load i64, i64* %4, align 8
  store i64 %27, i64* %2, align 8
  br label %53

28:                                               ; preds = %20
  %29 = load %struct.TYPE_4__*, %struct.TYPE_4__** @mt9p012_client, align 8
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = load i32, i32* @REG_TEST_PATTERN_MODE, align 4
  %33 = load i32, i32* %3, align 4
  %34 = call i64 @mt9p012_i2c_write_w(i32 %31, i32 %32, i32 %33)
  store i64 %34, i64* %4, align 8
  %35 = load i64, i64* %4, align 8
  %36 = icmp slt i64 %35, 0
  br i1 %36, label %37, label %39

37:                                               ; preds = %28
  %38 = load i64, i64* %4, align 8
  store i64 %38, i64* %2, align 8
  br label %53

39:                                               ; preds = %28
  br label %40

40:                                               ; preds = %39
  %41 = load %struct.TYPE_4__*, %struct.TYPE_4__** @mt9p012_client, align 8
  %42 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = load i32, i32* @REG_GROUPED_PARAMETER_HOLD, align 4
  %45 = load i32, i32* @GROUPED_PARAMETER_UPDATE, align 4
  %46 = call i64 @mt9p012_i2c_write_w(i32 %43, i32 %44, i32 %45)
  store i64 %46, i64* %4, align 8
  %47 = load i64, i64* %4, align 8
  %48 = icmp slt i64 %47, 0
  br i1 %48, label %49, label %51

49:                                               ; preds = %40
  %50 = load i64, i64* %4, align 8
  store i64 %50, i64* %2, align 8
  br label %53

51:                                               ; preds = %40
  %52 = load i64, i64* %4, align 8
  store i64 %52, i64* %2, align 8
  br label %53

53:                                               ; preds = %51, %49, %37, %26, %19, %13
  %54 = load i64, i64* %2, align 8
  ret i64 %54
}

declare dso_local i64 @mt9p012_i2c_write_w(i32, i32, i32) #1

declare dso_local i64 @mt9p012_i2c_write_w_table(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

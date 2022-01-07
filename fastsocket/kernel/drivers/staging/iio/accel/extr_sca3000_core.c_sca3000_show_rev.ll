; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/iio/accel/extr_sca3000_core.c_sca3000_show_rev.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/iio/accel/extr_sca3000_core.c_sca3000_show_rev.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.device_attribute = type { i32 }
%struct.iio_dev = type { %struct.sca3000_state* }
%struct.sca3000_state = type { i32 }

@SCA3000_REG_ADDR_REVID = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [20 x i8] c"major=%d, minor=%d\0A\00", align 1
@SCA3000_REVID_MAJOR_MASK = common dso_local global i32 0, align 4
@SCA3000_REVID_MINOR_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.device_attribute*, i8*)* @sca3000_show_rev to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sca3000_show_rev(%struct.device* %0, %struct.device_attribute* %1, i8* %2) #0 {
  %4 = alloca %struct.device*, align 8
  %5 = alloca %struct.device_attribute*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.iio_dev*, align 8
  %10 = alloca %struct.sca3000_state*, align 8
  %11 = alloca i32*, align 8
  store %struct.device* %0, %struct.device** %4, align 8
  store %struct.device_attribute* %1, %struct.device_attribute** %5, align 8
  store i8* %2, i8** %6, align 8
  store i32 0, i32* %7, align 4
  %12 = load %struct.device*, %struct.device** %4, align 8
  %13 = call %struct.iio_dev* @dev_get_drvdata(%struct.device* %12)
  store %struct.iio_dev* %13, %struct.iio_dev** %9, align 8
  %14 = load %struct.iio_dev*, %struct.iio_dev** %9, align 8
  %15 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %14, i32 0, i32 0
  %16 = load %struct.sca3000_state*, %struct.sca3000_state** %15, align 8
  store %struct.sca3000_state* %16, %struct.sca3000_state** %10, align 8
  %17 = load %struct.sca3000_state*, %struct.sca3000_state** %10, align 8
  %18 = getelementptr inbounds %struct.sca3000_state, %struct.sca3000_state* %17, i32 0, i32 0
  %19 = call i32 @mutex_lock(i32* %18)
  %20 = load %struct.sca3000_state*, %struct.sca3000_state** %10, align 8
  %21 = load i32, i32* @SCA3000_REG_ADDR_REVID, align 4
  %22 = call i32 @sca3000_read_data(%struct.sca3000_state* %20, i32 %21, i32** %11, i32 1)
  store i32 %22, i32* %8, align 4
  %23 = load i32, i32* %8, align 4
  %24 = icmp slt i32 %23, 0
  br i1 %24, label %25, label %26

25:                                               ; preds = %3
  br label %48

26:                                               ; preds = %3
  %27 = load i8*, i8** %6, align 8
  %28 = load i32, i32* %7, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds i8, i8* %27, i64 %29
  %31 = load i32*, i32** %11, align 8
  %32 = getelementptr inbounds i32, i32* %31, i64 1
  %33 = load i32, i32* %32, align 4
  %34 = load i32, i32* @SCA3000_REVID_MAJOR_MASK, align 4
  %35 = and i32 %33, %34
  %36 = load i32*, i32** %11, align 8
  %37 = getelementptr inbounds i32, i32* %36, i64 1
  %38 = load i32, i32* %37, align 4
  %39 = load i32, i32* @SCA3000_REVID_MINOR_MASK, align 4
  %40 = and i32 %38, %39
  %41 = call i64 @sprintf(i8* %30, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 %35, i32 %40)
  %42 = load i32, i32* %7, align 4
  %43 = sext i32 %42 to i64
  %44 = add nsw i64 %43, %41
  %45 = trunc i64 %44 to i32
  store i32 %45, i32* %7, align 4
  %46 = load i32*, i32** %11, align 8
  %47 = call i32 @kfree(i32* %46)
  br label %48

48:                                               ; preds = %26, %25
  %49 = load %struct.sca3000_state*, %struct.sca3000_state** %10, align 8
  %50 = getelementptr inbounds %struct.sca3000_state, %struct.sca3000_state* %49, i32 0, i32 0
  %51 = call i32 @mutex_unlock(i32* %50)
  %52 = load i32, i32* %8, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %56

54:                                               ; preds = %48
  %55 = load i32, i32* %8, align 4
  br label %58

56:                                               ; preds = %48
  %57 = load i32, i32* %7, align 4
  br label %58

58:                                               ; preds = %56, %54
  %59 = phi i32 [ %55, %54 ], [ %57, %56 ]
  ret i32 %59
}

declare dso_local %struct.iio_dev* @dev_get_drvdata(%struct.device*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @sca3000_read_data(%struct.sca3000_state*, i32, i32**, i32) #1

declare dso_local i64 @sprintf(i8*, i8*, i32, i32) #1

declare dso_local i32 @kfree(i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

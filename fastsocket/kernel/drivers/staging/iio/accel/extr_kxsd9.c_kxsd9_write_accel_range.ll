; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/iio/accel/extr_kxsd9.c_kxsd9_write_accel_range.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/iio/accel/extr_kxsd9.c_kxsd9_write_accel_range.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.device_attribute = type { i32 }
%struct.spi_message = type { i32 }
%struct.iio_dev = type { %struct.kxsd9_state* }
%struct.kxsd9_state = type { i32*, i32*, i32, i32 }
%struct.spi_transfer = type { i32, i32, i32, i32*, i32* }

@KXSD9_FS_8 = common dso_local global i32 0, align 4
@KXSD9_FS_6 = common dso_local global i32 0, align 4
@KXSD9_FS_4 = common dso_local global i32 0, align 4
@KXSD9_FS_2 = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@KXSD9_REG_CTRL_C = common dso_local global i32 0, align 4
@KXSD9_FS_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.device_attribute*, i8*, i64)* @kxsd9_write_accel_range to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @kxsd9_write_accel_range(%struct.device* %0, %struct.device_attribute* %1, i8* %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.device*, align 8
  %7 = alloca %struct.device_attribute*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca %struct.spi_message, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.iio_dev*, align 8
  %14 = alloca %struct.kxsd9_state*, align 8
  %15 = alloca i32, align 4
  %16 = alloca [2 x %struct.spi_transfer], align 16
  store %struct.device* %0, %struct.device** %6, align 8
  store %struct.device_attribute* %1, %struct.device_attribute** %7, align 8
  store i8* %2, i8** %8, align 8
  store i64 %3, i64* %9, align 8
  %17 = load %struct.device*, %struct.device** %6, align 8
  %18 = call %struct.iio_dev* @dev_get_drvdata(%struct.device* %17)
  store %struct.iio_dev* %18, %struct.iio_dev** %13, align 8
  %19 = load %struct.iio_dev*, %struct.iio_dev** %13, align 8
  %20 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %19, i32 0, i32 0
  %21 = load %struct.kxsd9_state*, %struct.kxsd9_state** %20, align 8
  store %struct.kxsd9_state* %21, %struct.kxsd9_state** %14, align 8
  %22 = getelementptr inbounds [2 x %struct.spi_transfer], [2 x %struct.spi_transfer]* %16, i64 0, i64 0
  %23 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %22, i32 0, i32 0
  store i32 8, i32* %23, align 16
  %24 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %22, i32 0, i32 1
  store i32 2, i32* %24, align 4
  %25 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %22, i32 0, i32 2
  store i32 1, i32* %25, align 8
  %26 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %22, i32 0, i32 3
  %27 = load %struct.kxsd9_state*, %struct.kxsd9_state** %14, align 8
  %28 = getelementptr inbounds %struct.kxsd9_state, %struct.kxsd9_state* %27, i32 0, i32 0
  %29 = load i32*, i32** %28, align 8
  store i32* %29, i32** %26, align 16
  %30 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %22, i32 0, i32 4
  %31 = load %struct.kxsd9_state*, %struct.kxsd9_state** %14, align 8
  %32 = getelementptr inbounds %struct.kxsd9_state, %struct.kxsd9_state* %31, i32 0, i32 1
  %33 = load i32*, i32** %32, align 8
  store i32* %33, i32** %30, align 8
  %34 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %22, i64 1
  %35 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %34, i32 0, i32 0
  store i32 8, i32* %35, align 16
  %36 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %34, i32 0, i32 1
  store i32 2, i32* %36, align 4
  %37 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %34, i32 0, i32 2
  store i32 1, i32* %37, align 8
  %38 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %34, i32 0, i32 3
  %39 = load %struct.kxsd9_state*, %struct.kxsd9_state** %14, align 8
  %40 = getelementptr inbounds %struct.kxsd9_state, %struct.kxsd9_state* %39, i32 0, i32 0
  %41 = load i32*, i32** %40, align 8
  store i32* %41, i32** %38, align 16
  %42 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %34, i32 0, i32 4
  store i32* null, i32** %42, align 8
  %43 = load i8*, i8** %8, align 8
  %44 = call i32 @strict_strtol(i8* %43, i32 10, i64* %10)
  store i32 %44, i32* %12, align 4
  %45 = load i32, i32* %12, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %49

47:                                               ; preds = %4
  %48 = load i32, i32* %12, align 4
  store i32 %48, i32* %5, align 4
  br label %128

49:                                               ; preds = %4
  %50 = load i64, i64* %10, align 8
  switch i64 %50, label %59 [
    i64 8, label %51
    i64 6, label %53
    i64 4, label %55
    i64 2, label %57
  ]

51:                                               ; preds = %49
  %52 = load i32, i32* @KXSD9_FS_8, align 4
  store i32 %52, i32* %15, align 4
  br label %62

53:                                               ; preds = %49
  %54 = load i32, i32* @KXSD9_FS_6, align 4
  store i32 %54, i32* %15, align 4
  br label %62

55:                                               ; preds = %49
  %56 = load i32, i32* @KXSD9_FS_4, align 4
  store i32 %56, i32* %15, align 4
  br label %62

57:                                               ; preds = %49
  %58 = load i32, i32* @KXSD9_FS_2, align 4
  store i32 %58, i32* %15, align 4
  br label %62

59:                                               ; preds = %49
  %60 = load i32, i32* @EINVAL, align 4
  %61 = sub nsw i32 0, %60
  store i32 %61, i32* %5, align 4
  br label %128

62:                                               ; preds = %57, %55, %53, %51
  %63 = load %struct.kxsd9_state*, %struct.kxsd9_state** %14, align 8
  %64 = getelementptr inbounds %struct.kxsd9_state, %struct.kxsd9_state* %63, i32 0, i32 2
  %65 = call i32 @mutex_lock(i32* %64)
  %66 = load i32, i32* @KXSD9_REG_CTRL_C, align 4
  %67 = call i32 @KXSD9_READ(i32 %66)
  %68 = load %struct.kxsd9_state*, %struct.kxsd9_state** %14, align 8
  %69 = getelementptr inbounds %struct.kxsd9_state, %struct.kxsd9_state* %68, i32 0, i32 0
  %70 = load i32*, i32** %69, align 8
  %71 = getelementptr inbounds i32, i32* %70, i64 0
  store i32 %67, i32* %71, align 4
  %72 = load %struct.kxsd9_state*, %struct.kxsd9_state** %14, align 8
  %73 = getelementptr inbounds %struct.kxsd9_state, %struct.kxsd9_state* %72, i32 0, i32 0
  %74 = load i32*, i32** %73, align 8
  %75 = getelementptr inbounds i32, i32* %74, i64 1
  store i32 0, i32* %75, align 4
  %76 = call i32 @spi_message_init(%struct.spi_message* %11)
  %77 = getelementptr inbounds [2 x %struct.spi_transfer], [2 x %struct.spi_transfer]* %16, i64 0, i64 0
  %78 = call i32 @spi_message_add_tail(%struct.spi_transfer* %77, %struct.spi_message* %11)
  %79 = load %struct.kxsd9_state*, %struct.kxsd9_state** %14, align 8
  %80 = getelementptr inbounds %struct.kxsd9_state, %struct.kxsd9_state* %79, i32 0, i32 3
  %81 = load i32, i32* %80, align 4
  %82 = call i32 @spi_sync(i32 %81, %struct.spi_message* %11)
  store i32 %82, i32* %12, align 4
  %83 = load i32, i32* %12, align 4
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %85, label %86

85:                                               ; preds = %62
  br label %114

86:                                               ; preds = %62
  %87 = load i32, i32* @KXSD9_REG_CTRL_C, align 4
  %88 = call i32 @KXSD9_WRITE(i32 %87)
  %89 = load %struct.kxsd9_state*, %struct.kxsd9_state** %14, align 8
  %90 = getelementptr inbounds %struct.kxsd9_state, %struct.kxsd9_state* %89, i32 0, i32 0
  %91 = load i32*, i32** %90, align 8
  %92 = getelementptr inbounds i32, i32* %91, i64 0
  store i32 %88, i32* %92, align 4
  %93 = load %struct.kxsd9_state*, %struct.kxsd9_state** %14, align 8
  %94 = getelementptr inbounds %struct.kxsd9_state, %struct.kxsd9_state* %93, i32 0, i32 1
  %95 = load i32*, i32** %94, align 8
  %96 = getelementptr inbounds i32, i32* %95, i64 1
  %97 = load i32, i32* %96, align 4
  %98 = load i32, i32* @KXSD9_FS_MASK, align 4
  %99 = xor i32 %98, -1
  %100 = and i32 %97, %99
  %101 = load i32, i32* %15, align 4
  %102 = or i32 %100, %101
  %103 = load %struct.kxsd9_state*, %struct.kxsd9_state** %14, align 8
  %104 = getelementptr inbounds %struct.kxsd9_state, %struct.kxsd9_state* %103, i32 0, i32 0
  %105 = load i32*, i32** %104, align 8
  %106 = getelementptr inbounds i32, i32* %105, i64 1
  store i32 %102, i32* %106, align 4
  %107 = call i32 @spi_message_init(%struct.spi_message* %11)
  %108 = getelementptr inbounds [2 x %struct.spi_transfer], [2 x %struct.spi_transfer]* %16, i64 0, i64 1
  %109 = call i32 @spi_message_add_tail(%struct.spi_transfer* %108, %struct.spi_message* %11)
  %110 = load %struct.kxsd9_state*, %struct.kxsd9_state** %14, align 8
  %111 = getelementptr inbounds %struct.kxsd9_state, %struct.kxsd9_state* %110, i32 0, i32 3
  %112 = load i32, i32* %111, align 4
  %113 = call i32 @spi_sync(i32 %112, %struct.spi_message* %11)
  store i32 %113, i32* %12, align 4
  br label %114

114:                                              ; preds = %86, %85
  %115 = load %struct.kxsd9_state*, %struct.kxsd9_state** %14, align 8
  %116 = getelementptr inbounds %struct.kxsd9_state, %struct.kxsd9_state* %115, i32 0, i32 2
  %117 = call i32 @mutex_unlock(i32* %116)
  %118 = load i32, i32* %12, align 4
  %119 = icmp ne i32 %118, 0
  br i1 %119, label %120, label %123

120:                                              ; preds = %114
  %121 = load i32, i32* %12, align 4
  %122 = sext i32 %121 to i64
  br label %125

123:                                              ; preds = %114
  %124 = load i64, i64* %9, align 8
  br label %125

125:                                              ; preds = %123, %120
  %126 = phi i64 [ %122, %120 ], [ %124, %123 ]
  %127 = trunc i64 %126 to i32
  store i32 %127, i32* %5, align 4
  br label %128

128:                                              ; preds = %125, %59, %47
  %129 = load i32, i32* %5, align 4
  ret i32 %129
}

declare dso_local %struct.iio_dev* @dev_get_drvdata(%struct.device*) #1

declare dso_local i32 @strict_strtol(i8*, i32, i64*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @KXSD9_READ(i32) #1

declare dso_local i32 @spi_message_init(%struct.spi_message*) #1

declare dso_local i32 @spi_message_add_tail(%struct.spi_transfer*, %struct.spi_message*) #1

declare dso_local i32 @spi_sync(i32, %struct.spi_message*) #1

declare dso_local i32 @KXSD9_WRITE(i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

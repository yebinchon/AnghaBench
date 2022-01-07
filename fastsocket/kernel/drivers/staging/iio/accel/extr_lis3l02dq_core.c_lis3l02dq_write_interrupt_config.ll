; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/iio/accel/extr_lis3l02dq_core.c_lis3l02dq_write_interrupt_config.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/iio/accel/extr_lis3l02dq_core.c_lis3l02dq_write_interrupt_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.device_attribute = type { i32 }
%struct.iio_event_attr = type { i32, %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i64 }
%struct.iio_dev = type { i32, %struct.TYPE_4__** }
%struct.TYPE_4__ = type { i32 }

@LIS3L02DQ_REG_WAKE_UP_CFG_ADDR = common dso_local global i32 0, align 4
@LIS3L02DQ_REG_CTRL_2_ADDR = common dso_local global i32 0, align 4
@LIS3L02DQ_REG_CTRL_2_ENABLE_INTERRUPT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.device_attribute*, i8*, i64)* @lis3l02dq_write_interrupt_config to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lis3l02dq_write_interrupt_config(%struct.device* %0, %struct.device_attribute* %1, i8* %2, i64 %3) #0 {
  %5 = alloca %struct.device*, align 8
  %6 = alloca %struct.device_attribute*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.iio_event_attr*, align 8
  %10 = alloca %struct.iio_dev*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %5, align 8
  store %struct.device_attribute* %1, %struct.device_attribute** %6, align 8
  store i8* %2, i8** %7, align 8
  store i64 %3, i64* %8, align 8
  %17 = load %struct.device_attribute*, %struct.device_attribute** %6, align 8
  %18 = call %struct.iio_event_attr* @to_iio_event_attr(%struct.device_attribute* %17)
  store %struct.iio_event_attr* %18, %struct.iio_event_attr** %9, align 8
  %19 = load %struct.device*, %struct.device** %5, align 8
  %20 = call %struct.iio_dev* @dev_get_drvdata(%struct.device* %19)
  store %struct.iio_dev* %20, %struct.iio_dev** %10, align 8
  store i32 0, i32* %13, align 4
  %21 = load i8*, i8** %7, align 8
  %22 = getelementptr inbounds i8, i8* %21, i64 0
  %23 = load i8, i8* %22, align 1
  %24 = sext i8 %23 to i32
  %25 = icmp eq i32 %24, 48
  %26 = xor i1 %25, true
  %27 = zext i1 %26 to i32
  store i32 %27, i32* %16, align 4
  %28 = load %struct.iio_dev*, %struct.iio_dev** %10, align 8
  %29 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %28, i32 0, i32 0
  %30 = call i32 @mutex_lock(i32* %29)
  %31 = load %struct.device*, %struct.device** %5, align 8
  %32 = load i32, i32* @LIS3L02DQ_REG_WAKE_UP_CFG_ADDR, align 4
  %33 = call i32 @lis3l02dq_spi_read_reg_8(%struct.device* %31, i32 %32, i32* %14)
  store i32 %33, i32* %11, align 4
  %34 = load i32, i32* %11, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %37

36:                                               ; preds = %4
  br label %135

37:                                               ; preds = %4
  %38 = load %struct.device*, %struct.device** %5, align 8
  %39 = load i32, i32* @LIS3L02DQ_REG_CTRL_2_ADDR, align 4
  %40 = call i32 @lis3l02dq_spi_read_reg_8(%struct.device* %38, i32 %39, i32* %15)
  store i32 %40, i32* %11, align 4
  %41 = load i32, i32* %11, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %44

43:                                               ; preds = %37
  br label %135

44:                                               ; preds = %37
  %45 = load i32, i32* %14, align 4
  %46 = load %struct.iio_event_attr*, %struct.iio_event_attr** %9, align 8
  %47 = getelementptr inbounds %struct.iio_event_attr, %struct.iio_event_attr* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = and i32 %45, %48
  %50 = icmp ne i32 %49, 0
  %51 = xor i1 %50, true
  %52 = xor i1 %51, true
  %53 = zext i1 %52 to i32
  store i32 %53, i32* %12, align 4
  %54 = load i32, i32* %16, align 4
  %55 = icmp eq i32 %54, 0
  br i1 %55, label %56, label %76

56:                                               ; preds = %44
  %57 = load i32, i32* %12, align 4
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %76

59:                                               ; preds = %56
  %60 = load %struct.iio_event_attr*, %struct.iio_event_attr** %9, align 8
  %61 = getelementptr inbounds %struct.iio_event_attr, %struct.iio_event_attr* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 8
  %63 = xor i32 %62, -1
  %64 = load i32, i32* %14, align 4
  %65 = and i32 %64, %63
  store i32 %65, i32* %14, align 4
  store i32 1, i32* %13, align 4
  %66 = load %struct.iio_event_attr*, %struct.iio_event_attr** %9, align 8
  %67 = getelementptr inbounds %struct.iio_event_attr, %struct.iio_event_attr* %66, i32 0, i32 1
  %68 = load %struct.TYPE_5__*, %struct.TYPE_5__** %67, align 8
  %69 = load %struct.iio_dev*, %struct.iio_dev** %10, align 8
  %70 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %69, i32 0, i32 1
  %71 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %70, align 8
  %72 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %71, i64 0
  %73 = load %struct.TYPE_4__*, %struct.TYPE_4__** %72, align 8
  %74 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %73, i32 0, i32 0
  %75 = call i32 @iio_remove_event_from_list(%struct.TYPE_5__* %68, i32* %74)
  br label %99

76:                                               ; preds = %56, %44
  %77 = load i32, i32* %16, align 4
  %78 = icmp eq i32 %77, 1
  br i1 %78, label %79, label %98

79:                                               ; preds = %76
  %80 = load i32, i32* %12, align 4
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %98, label %82

82:                                               ; preds = %79
  store i32 1, i32* %13, align 4
  %83 = load %struct.iio_event_attr*, %struct.iio_event_attr** %9, align 8
  %84 = getelementptr inbounds %struct.iio_event_attr, %struct.iio_event_attr* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 8
  %86 = load i32, i32* %14, align 4
  %87 = or i32 %86, %85
  store i32 %87, i32* %14, align 4
  %88 = load %struct.iio_event_attr*, %struct.iio_event_attr** %9, align 8
  %89 = getelementptr inbounds %struct.iio_event_attr, %struct.iio_event_attr* %88, i32 0, i32 1
  %90 = load %struct.TYPE_5__*, %struct.TYPE_5__** %89, align 8
  %91 = load %struct.iio_dev*, %struct.iio_dev** %10, align 8
  %92 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %91, i32 0, i32 1
  %93 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %92, align 8
  %94 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %93, i64 0
  %95 = load %struct.TYPE_4__*, %struct.TYPE_4__** %94, align 8
  %96 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %95, i32 0, i32 0
  %97 = call i32 @iio_add_event_to_list(%struct.TYPE_5__* %90, i32* %96)
  br label %98

98:                                               ; preds = %82, %79, %76
  br label %99

99:                                               ; preds = %98, %59
  %100 = load i32, i32* %13, align 4
  %101 = icmp ne i32 %100, 0
  br i1 %101, label %102, label %134

102:                                              ; preds = %99
  %103 = load %struct.device*, %struct.device** %5, align 8
  %104 = load i32, i32* @LIS3L02DQ_REG_WAKE_UP_CFG_ADDR, align 4
  %105 = call i32 @lis3l02dq_spi_write_reg_8(%struct.device* %103, i32 %104, i32* %14)
  store i32 %105, i32* %11, align 4
  %106 = load i32, i32* %11, align 4
  %107 = icmp ne i32 %106, 0
  br i1 %107, label %108, label %109

108:                                              ; preds = %102
  br label %135

109:                                              ; preds = %102
  %110 = load %struct.iio_event_attr*, %struct.iio_event_attr** %9, align 8
  %111 = getelementptr inbounds %struct.iio_event_attr, %struct.iio_event_attr* %110, i32 0, i32 1
  %112 = load %struct.TYPE_5__*, %struct.TYPE_5__** %111, align 8
  %113 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %112, i32 0, i32 0
  %114 = load i64, i64* %113, align 8
  %115 = icmp ne i64 %114, 0
  br i1 %115, label %116, label %120

116:                                              ; preds = %109
  %117 = load i32, i32* %15, align 4
  %118 = load i32, i32* @LIS3L02DQ_REG_CTRL_2_ENABLE_INTERRUPT, align 4
  %119 = or i32 %117, %118
  br label %125

120:                                              ; preds = %109
  %121 = load i32, i32* %15, align 4
  %122 = load i32, i32* @LIS3L02DQ_REG_CTRL_2_ENABLE_INTERRUPT, align 4
  %123 = xor i32 %122, -1
  %124 = and i32 %121, %123
  br label %125

125:                                              ; preds = %120, %116
  %126 = phi i32 [ %119, %116 ], [ %124, %120 ]
  store i32 %126, i32* %15, align 4
  %127 = load %struct.device*, %struct.device** %5, align 8
  %128 = load i32, i32* @LIS3L02DQ_REG_CTRL_2_ADDR, align 4
  %129 = call i32 @lis3l02dq_spi_write_reg_8(%struct.device* %127, i32 %128, i32* %15)
  store i32 %129, i32* %11, align 4
  %130 = load i32, i32* %11, align 4
  %131 = icmp ne i32 %130, 0
  br i1 %131, label %132, label %133

132:                                              ; preds = %125
  br label %135

133:                                              ; preds = %125
  br label %134

134:                                              ; preds = %133, %99
  br label %135

135:                                              ; preds = %134, %132, %108, %43, %36
  %136 = load %struct.iio_dev*, %struct.iio_dev** %10, align 8
  %137 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %136, i32 0, i32 0
  %138 = call i32 @mutex_unlock(i32* %137)
  %139 = load i32, i32* %11, align 4
  %140 = icmp ne i32 %139, 0
  br i1 %140, label %141, label %144

141:                                              ; preds = %135
  %142 = load i32, i32* %11, align 4
  %143 = sext i32 %142 to i64
  br label %146

144:                                              ; preds = %135
  %145 = load i64, i64* %8, align 8
  br label %146

146:                                              ; preds = %144, %141
  %147 = phi i64 [ %143, %141 ], [ %145, %144 ]
  %148 = trunc i64 %147 to i32
  ret i32 %148
}

declare dso_local %struct.iio_event_attr* @to_iio_event_attr(%struct.device_attribute*) #1

declare dso_local %struct.iio_dev* @dev_get_drvdata(%struct.device*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @lis3l02dq_spi_read_reg_8(%struct.device*, i32, i32*) #1

declare dso_local i32 @iio_remove_event_from_list(%struct.TYPE_5__*, i32*) #1

declare dso_local i32 @iio_add_event_to_list(%struct.TYPE_5__*, i32*) #1

declare dso_local i32 @lis3l02dq_spi_write_reg_8(%struct.device*, i32, i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/iio/accel/extr_sca3000_core.c_sca3000_set_mo_det.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/iio/accel/extr_sca3000_core.c_sca3000_set_mo_det.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.device_attribute = type { i32 }
%struct.iio_dev = type { %struct.sca3000_state* }
%struct.sca3000_state = type { i32, i64 }
%struct.iio_event_attr = type { i32 }

@SCA3000_REG_CTRL_SEL_MD_CTRL = common dso_local global i32 0, align 4
@SCA3000_REG_ADDR_MODE = common dso_local global i32 0, align 4
@SCA3000_MEAS_MODE_MOT_DET = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.device_attribute*, i8*, i64)* @sca3000_set_mo_det to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sca3000_set_mo_det(%struct.device* %0, %struct.device_attribute* %1, i8* %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.device*, align 8
  %7 = alloca %struct.device_attribute*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.iio_dev*, align 8
  %11 = alloca %struct.sca3000_state*, align 8
  %12 = alloca %struct.iio_event_attr*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32*, align 8
  %16 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %6, align 8
  store %struct.device_attribute* %1, %struct.device_attribute** %7, align 8
  store i8* %2, i8** %8, align 8
  store i64 %3, i64* %9, align 8
  %17 = load %struct.device*, %struct.device** %6, align 8
  %18 = call %struct.iio_dev* @dev_get_drvdata(%struct.device* %17)
  store %struct.iio_dev* %18, %struct.iio_dev** %10, align 8
  %19 = load %struct.iio_dev*, %struct.iio_dev** %10, align 8
  %20 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %19, i32 0, i32 0
  %21 = load %struct.sca3000_state*, %struct.sca3000_state** %20, align 8
  store %struct.sca3000_state* %21, %struct.sca3000_state** %11, align 8
  %22 = load %struct.device_attribute*, %struct.device_attribute** %7, align 8
  %23 = call %struct.iio_event_attr* @to_iio_event_attr(%struct.device_attribute* %22)
  store %struct.iio_event_attr* %23, %struct.iio_event_attr** %12, align 8
  store i32 3, i32* %16, align 4
  %24 = load i8*, i8** %8, align 8
  %25 = call i32 @strict_strtol(i8* %24, i32 10, i64* %13)
  store i32 %25, i32* %14, align 4
  %26 = load i32, i32* %14, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %30

28:                                               ; preds = %4
  %29 = load i32, i32* %14, align 4
  store i32 %29, i32* %5, align 4
  br label %181

30:                                               ; preds = %4
  %31 = load %struct.sca3000_state*, %struct.sca3000_state** %11, align 8
  %32 = getelementptr inbounds %struct.sca3000_state, %struct.sca3000_state* %31, i32 0, i32 0
  %33 = call i32 @mutex_lock(i32* %32)
  %34 = load %struct.sca3000_state*, %struct.sca3000_state** %11, align 8
  %35 = load i32, i32* @SCA3000_REG_CTRL_SEL_MD_CTRL, align 4
  %36 = call i32 @sca3000_read_ctrl_reg(%struct.sca3000_state* %34, i32 %35, i32** %15)
  store i32 %36, i32* %14, align 4
  %37 = load i32, i32* %14, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %40

39:                                               ; preds = %30
  br label %167

40:                                               ; preds = %30
  %41 = load i64, i64* %13, align 8
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %71

43:                                               ; preds = %40
  %44 = load i32*, i32** %15, align 8
  %45 = getelementptr inbounds i32, i32* %44, i64 1
  %46 = load i32, i32* %45, align 4
  %47 = load %struct.iio_event_attr*, %struct.iio_event_attr** %12, align 8
  %48 = getelementptr inbounds %struct.iio_event_attr, %struct.iio_event_attr* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = and i32 %46, %49
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %71, label %52

52:                                               ; preds = %43
  %53 = load %struct.sca3000_state*, %struct.sca3000_state** %11, align 8
  %54 = load i32, i32* @SCA3000_REG_CTRL_SEL_MD_CTRL, align 4
  %55 = load i32*, i32** %15, align 8
  %56 = getelementptr inbounds i32, i32* %55, i64 1
  %57 = load i32, i32* %56, align 4
  %58 = load %struct.iio_event_attr*, %struct.iio_event_attr** %12, align 8
  %59 = getelementptr inbounds %struct.iio_event_attr, %struct.iio_event_attr* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = or i32 %57, %60
  %62 = call i32 @sca3000_write_ctrl_reg(%struct.sca3000_state* %53, i32 %54, i32 %61)
  store i32 %62, i32* %14, align 4
  %63 = load i32, i32* %14, align 4
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %66

65:                                               ; preds = %52
  br label %164

66:                                               ; preds = %52
  %67 = load %struct.sca3000_state*, %struct.sca3000_state** %11, align 8
  %68 = getelementptr inbounds %struct.sca3000_state, %struct.sca3000_state* %67, i32 0, i32 1
  %69 = load i64, i64* %68, align 8
  %70 = add nsw i64 %69, 1
  store i64 %70, i64* %68, align 8
  br label %105

71:                                               ; preds = %43, %40
  %72 = load i64, i64* %13, align 8
  %73 = icmp ne i64 %72, 0
  br i1 %73, label %103, label %74

74:                                               ; preds = %71
  %75 = load i32*, i32** %15, align 8
  %76 = getelementptr inbounds i32, i32* %75, i64 1
  %77 = load i32, i32* %76, align 4
  %78 = load %struct.iio_event_attr*, %struct.iio_event_attr** %12, align 8
  %79 = getelementptr inbounds %struct.iio_event_attr, %struct.iio_event_attr* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 4
  %81 = and i32 %77, %80
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %83, label %103

83:                                               ; preds = %74
  %84 = load %struct.sca3000_state*, %struct.sca3000_state** %11, align 8
  %85 = load i32, i32* @SCA3000_REG_CTRL_SEL_MD_CTRL, align 4
  %86 = load i32*, i32** %15, align 8
  %87 = getelementptr inbounds i32, i32* %86, i64 1
  %88 = load i32, i32* %87, align 4
  %89 = load %struct.iio_event_attr*, %struct.iio_event_attr** %12, align 8
  %90 = getelementptr inbounds %struct.iio_event_attr, %struct.iio_event_attr* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 4
  %92 = xor i32 %91, -1
  %93 = and i32 %88, %92
  %94 = call i32 @sca3000_write_ctrl_reg(%struct.sca3000_state* %84, i32 %85, i32 %93)
  store i32 %94, i32* %14, align 4
  %95 = load i32, i32* %14, align 4
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %97, label %98

97:                                               ; preds = %83
  br label %164

98:                                               ; preds = %83
  %99 = load %struct.sca3000_state*, %struct.sca3000_state** %11, align 8
  %100 = getelementptr inbounds %struct.sca3000_state, %struct.sca3000_state* %99, i32 0, i32 1
  %101 = load i64, i64* %100, align 8
  %102 = add nsw i64 %101, -1
  store i64 %102, i64* %100, align 8
  br label %104

103:                                              ; preds = %74, %71
  br label %164

104:                                              ; preds = %98
  br label %105

105:                                              ; preds = %104, %66
  %106 = load i32*, i32** %15, align 8
  %107 = call i32 @kfree(i32* %106)
  %108 = load %struct.sca3000_state*, %struct.sca3000_state** %11, align 8
  %109 = load i32, i32* @SCA3000_REG_ADDR_MODE, align 4
  %110 = call i32 @sca3000_read_data(%struct.sca3000_state* %108, i32 %109, i32** %15, i32 1)
  store i32 %110, i32* %14, align 4
  %111 = load i32, i32* %14, align 4
  %112 = icmp ne i32 %111, 0
  br i1 %112, label %113, label %114

113:                                              ; preds = %105
  br label %167

114:                                              ; preds = %105
  %115 = load %struct.sca3000_state*, %struct.sca3000_state** %11, align 8
  %116 = getelementptr inbounds %struct.sca3000_state, %struct.sca3000_state* %115, i32 0, i32 1
  %117 = load i64, i64* %116, align 8
  %118 = icmp ne i64 %117, 0
  br i1 %118, label %119, label %139

119:                                              ; preds = %114
  %120 = load i32*, i32** %15, align 8
  %121 = getelementptr inbounds i32, i32* %120, i64 1
  %122 = load i32, i32* %121, align 4
  %123 = load i32, i32* %16, align 4
  %124 = and i32 %122, %123
  %125 = load i32, i32* @SCA3000_MEAS_MODE_MOT_DET, align 4
  %126 = icmp ne i32 %124, %125
  br i1 %126, label %127, label %139

127:                                              ; preds = %119
  %128 = load %struct.sca3000_state*, %struct.sca3000_state** %11, align 8
  %129 = load i32, i32* @SCA3000_REG_ADDR_MODE, align 4
  %130 = load i32*, i32** %15, align 8
  %131 = getelementptr inbounds i32, i32* %130, i64 1
  %132 = load i32, i32* %131, align 4
  %133 = load i32, i32* %16, align 4
  %134 = xor i32 %133, -1
  %135 = and i32 %132, %134
  %136 = load i32, i32* @SCA3000_MEAS_MODE_MOT_DET, align 4
  %137 = or i32 %135, %136
  %138 = call i32 @sca3000_write_reg(%struct.sca3000_state* %128, i32 %129, i32 %137)
  store i32 %138, i32* %14, align 4
  br label %163

139:                                              ; preds = %119, %114
  %140 = load %struct.sca3000_state*, %struct.sca3000_state** %11, align 8
  %141 = getelementptr inbounds %struct.sca3000_state, %struct.sca3000_state* %140, i32 0, i32 1
  %142 = load i64, i64* %141, align 8
  %143 = icmp ne i64 %142, 0
  br i1 %143, label %162, label %144

144:                                              ; preds = %139
  %145 = load i32*, i32** %15, align 8
  %146 = getelementptr inbounds i32, i32* %145, i64 1
  %147 = load i32, i32* %146, align 4
  %148 = load i32, i32* %16, align 4
  %149 = and i32 %147, %148
  %150 = load i32, i32* @SCA3000_MEAS_MODE_MOT_DET, align 4
  %151 = icmp eq i32 %149, %150
  br i1 %151, label %152, label %162

152:                                              ; preds = %144
  %153 = load %struct.sca3000_state*, %struct.sca3000_state** %11, align 8
  %154 = load i32, i32* @SCA3000_REG_ADDR_MODE, align 4
  %155 = load i32*, i32** %15, align 8
  %156 = getelementptr inbounds i32, i32* %155, i64 1
  %157 = load i32, i32* %156, align 4
  %158 = load i32, i32* %16, align 4
  %159 = xor i32 %158, -1
  %160 = and i32 %157, %159
  %161 = call i32 @sca3000_write_reg(%struct.sca3000_state* %153, i32 %154, i32 %160)
  store i32 %161, i32* %14, align 4
  br label %162

162:                                              ; preds = %152, %144, %139
  br label %163

163:                                              ; preds = %162, %127
  br label %164

164:                                              ; preds = %163, %103, %97, %65
  %165 = load i32*, i32** %15, align 8
  %166 = call i32 @kfree(i32* %165)
  br label %167

167:                                              ; preds = %164, %113, %39
  %168 = load %struct.sca3000_state*, %struct.sca3000_state** %11, align 8
  %169 = getelementptr inbounds %struct.sca3000_state, %struct.sca3000_state* %168, i32 0, i32 0
  %170 = call i32 @mutex_unlock(i32* %169)
  %171 = load i32, i32* %14, align 4
  %172 = icmp ne i32 %171, 0
  br i1 %172, label %173, label %176

173:                                              ; preds = %167
  %174 = load i32, i32* %14, align 4
  %175 = sext i32 %174 to i64
  br label %178

176:                                              ; preds = %167
  %177 = load i64, i64* %9, align 8
  br label %178

178:                                              ; preds = %176, %173
  %179 = phi i64 [ %175, %173 ], [ %177, %176 ]
  %180 = trunc i64 %179 to i32
  store i32 %180, i32* %5, align 4
  br label %181

181:                                              ; preds = %178, %28
  %182 = load i32, i32* %5, align 4
  ret i32 %182
}

declare dso_local %struct.iio_dev* @dev_get_drvdata(%struct.device*) #1

declare dso_local %struct.iio_event_attr* @to_iio_event_attr(%struct.device_attribute*) #1

declare dso_local i32 @strict_strtol(i8*, i32, i64*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @sca3000_read_ctrl_reg(%struct.sca3000_state*, i32, i32**) #1

declare dso_local i32 @sca3000_write_ctrl_reg(%struct.sca3000_state*, i32, i32) #1

declare dso_local i32 @kfree(i32*) #1

declare dso_local i32 @sca3000_read_data(%struct.sca3000_state*, i32, i32**, i32) #1

declare dso_local i32 @sca3000_write_reg(%struct.sca3000_state*, i32, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

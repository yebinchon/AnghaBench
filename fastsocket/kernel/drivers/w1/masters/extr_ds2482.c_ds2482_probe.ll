; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/w1/masters/extr_ds2482.c_ds2482_probe.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/w1/masters/extr_ds2482.c_ds2482_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_client = type { i32, i32 }
%struct.i2c_device_id = type { i32 }
%struct.ds2482_data = type { i32, %struct.TYPE_4__*, i32, %struct.i2c_client* }
%struct.TYPE_4__ = type { i32, %struct.TYPE_5__, %struct.ds2482_data* }
%struct.TYPE_5__ = type { i32, i32, i32, i32, i32, %struct.TYPE_4__* }

@ENODEV = common dso_local global i32 0, align 4
@I2C_FUNC_SMBUS_WRITE_BYTE_DATA = common dso_local global i32 0, align 4
@I2C_FUNC_SMBUS_BYTE = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@DS2482_CMD_RESET = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [22 x i8] c"DS2482 reset failed.\0A\00", align 1
@DS2482_REG_STS_LL = common dso_local global i32 0, align 4
@DS2482_REG_STS_RST = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [43 x i8] c"DS2482 reset status 0x%02X - not a DS2482\0A\00", align 1
@DS2482_CMD_WRITE_CONFIG = common dso_local global i32 0, align 4
@ds2482_w1_read_byte = common dso_local global i32 0, align 4
@ds2482_w1_write_byte = common dso_local global i32 0, align 4
@ds2482_w1_touch_bit = common dso_local global i32 0, align 4
@ds2482_w1_triplet = common dso_local global i32 0, align 4
@ds2482_w1_reset_bus = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i2c_client*, %struct.i2c_device_id*)* @ds2482_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ds2482_probe(%struct.i2c_client* %0, %struct.i2c_device_id* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.i2c_client*, align 8
  %5 = alloca %struct.i2c_device_id*, align 8
  %6 = alloca %struct.ds2482_data*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.i2c_client* %0, %struct.i2c_client** %4, align 8
  store %struct.i2c_device_id* %1, %struct.i2c_device_id** %5, align 8
  %10 = load i32, i32* @ENODEV, align 4
  %11 = sub nsw i32 0, %10
  store i32 %11, i32* %7, align 4
  %12 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %13 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %12, i32 0, i32 1
  %14 = load i32, i32* %13, align 4
  %15 = load i32, i32* @I2C_FUNC_SMBUS_WRITE_BYTE_DATA, align 4
  %16 = load i32, i32* @I2C_FUNC_SMBUS_BYTE, align 4
  %17 = or i32 %15, %16
  %18 = call i32 @i2c_check_functionality(i32 %14, i32 %17)
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %23, label %20

20:                                               ; preds = %2
  %21 = load i32, i32* @ENODEV, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %3, align 4
  br label %216

23:                                               ; preds = %2
  %24 = load i32, i32* @GFP_KERNEL, align 4
  %25 = call %struct.ds2482_data* @kzalloc(i32 32, i32 %24)
  store %struct.ds2482_data* %25, %struct.ds2482_data** %6, align 8
  %26 = icmp ne %struct.ds2482_data* %25, null
  br i1 %26, label %30, label %27

27:                                               ; preds = %23
  %28 = load i32, i32* @ENOMEM, align 4
  %29 = sub nsw i32 0, %28
  store i32 %29, i32* %7, align 4
  br label %214

30:                                               ; preds = %23
  %31 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %32 = load %struct.ds2482_data*, %struct.ds2482_data** %6, align 8
  %33 = getelementptr inbounds %struct.ds2482_data, %struct.ds2482_data* %32, i32 0, i32 3
  store %struct.i2c_client* %31, %struct.i2c_client** %33, align 8
  %34 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %35 = load %struct.ds2482_data*, %struct.ds2482_data** %6, align 8
  %36 = call i32 @i2c_set_clientdata(%struct.i2c_client* %34, %struct.ds2482_data* %35)
  %37 = load %struct.ds2482_data*, %struct.ds2482_data** %6, align 8
  %38 = load i32, i32* @DS2482_CMD_RESET, align 4
  %39 = call i64 @ds2482_send_cmd(%struct.ds2482_data* %37, i32 %38)
  %40 = icmp slt i64 %39, 0
  br i1 %40, label %41, label %45

41:                                               ; preds = %30
  %42 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %43 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %42, i32 0, i32 0
  %44 = call i32 (i32*, i8*, ...) @dev_warn(i32* %43, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0))
  br label %211

45:                                               ; preds = %30
  %46 = call i32 @ndelay(i32 525)
  %47 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %48 = call i32 @i2c_smbus_read_byte(%struct.i2c_client* %47)
  store i32 %48, i32* %8, align 4
  %49 = load i32, i32* %8, align 4
  %50 = load i32, i32* @DS2482_REG_STS_LL, align 4
  %51 = load i32, i32* @DS2482_REG_STS_RST, align 4
  %52 = or i32 %50, %51
  %53 = icmp ne i32 %49, %52
  br i1 %53, label %54, label %59

54:                                               ; preds = %45
  %55 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %56 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %55, i32 0, i32 0
  %57 = load i32, i32* %8, align 4
  %58 = call i32 (i32*, i8*, ...) @dev_warn(i32* %56, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.1, i64 0, i64 0), i32 %57)
  br label %211

59:                                               ; preds = %45
  %60 = load %struct.ds2482_data*, %struct.ds2482_data** %6, align 8
  %61 = getelementptr inbounds %struct.ds2482_data, %struct.ds2482_data* %60, i32 0, i32 0
  store i32 1, i32* %61, align 8
  %62 = load %struct.ds2482_data*, %struct.ds2482_data** %6, align 8
  %63 = call i64 @ds2482_set_channel(%struct.ds2482_data* %62, i32 7)
  %64 = icmp eq i64 %63, 0
  br i1 %64, label %65, label %68

65:                                               ; preds = %59
  %66 = load %struct.ds2482_data*, %struct.ds2482_data** %6, align 8
  %67 = getelementptr inbounds %struct.ds2482_data, %struct.ds2482_data* %66, i32 0, i32 0
  store i32 8, i32* %67, align 8
  br label %68

68:                                               ; preds = %65, %59
  %69 = load %struct.ds2482_data*, %struct.ds2482_data** %6, align 8
  %70 = load i32, i32* @DS2482_CMD_WRITE_CONFIG, align 4
  %71 = call i32 @ds2482_send_cmd_data(%struct.ds2482_data* %69, i32 %70, i32 240)
  %72 = load %struct.ds2482_data*, %struct.ds2482_data** %6, align 8
  %73 = getelementptr inbounds %struct.ds2482_data, %struct.ds2482_data* %72, i32 0, i32 2
  %74 = call i32 @mutex_init(i32* %73)
  store i32 0, i32* %9, align 4
  br label %75

75:                                               ; preds = %176, %68
  %76 = load i32, i32* %9, align 4
  %77 = load %struct.ds2482_data*, %struct.ds2482_data** %6, align 8
  %78 = getelementptr inbounds %struct.ds2482_data, %struct.ds2482_data* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 8
  %80 = icmp slt i32 %76, %79
  br i1 %80, label %81, label %179

81:                                               ; preds = %75
  %82 = load %struct.ds2482_data*, %struct.ds2482_data** %6, align 8
  %83 = load %struct.ds2482_data*, %struct.ds2482_data** %6, align 8
  %84 = getelementptr inbounds %struct.ds2482_data, %struct.ds2482_data* %83, i32 0, i32 1
  %85 = load %struct.TYPE_4__*, %struct.TYPE_4__** %84, align 8
  %86 = load i32, i32* %9, align 4
  %87 = sext i32 %86 to i64
  %88 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %85, i64 %87
  %89 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %88, i32 0, i32 2
  store %struct.ds2482_data* %82, %struct.ds2482_data** %89, align 8
  %90 = load i32, i32* %9, align 4
  %91 = load %struct.ds2482_data*, %struct.ds2482_data** %6, align 8
  %92 = getelementptr inbounds %struct.ds2482_data, %struct.ds2482_data* %91, i32 0, i32 1
  %93 = load %struct.TYPE_4__*, %struct.TYPE_4__** %92, align 8
  %94 = load i32, i32* %9, align 4
  %95 = sext i32 %94 to i64
  %96 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %93, i64 %95
  %97 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %96, i32 0, i32 0
  store i32 %90, i32* %97, align 8
  %98 = load %struct.ds2482_data*, %struct.ds2482_data** %6, align 8
  %99 = getelementptr inbounds %struct.ds2482_data, %struct.ds2482_data* %98, i32 0, i32 1
  %100 = load %struct.TYPE_4__*, %struct.TYPE_4__** %99, align 8
  %101 = load i32, i32* %9, align 4
  %102 = sext i32 %101 to i64
  %103 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %100, i64 %102
  %104 = load %struct.ds2482_data*, %struct.ds2482_data** %6, align 8
  %105 = getelementptr inbounds %struct.ds2482_data, %struct.ds2482_data* %104, i32 0, i32 1
  %106 = load %struct.TYPE_4__*, %struct.TYPE_4__** %105, align 8
  %107 = load i32, i32* %9, align 4
  %108 = sext i32 %107 to i64
  %109 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %106, i64 %108
  %110 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %109, i32 0, i32 1
  %111 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %110, i32 0, i32 5
  store %struct.TYPE_4__* %103, %struct.TYPE_4__** %111, align 8
  %112 = load i32, i32* @ds2482_w1_read_byte, align 4
  %113 = load %struct.ds2482_data*, %struct.ds2482_data** %6, align 8
  %114 = getelementptr inbounds %struct.ds2482_data, %struct.ds2482_data* %113, i32 0, i32 1
  %115 = load %struct.TYPE_4__*, %struct.TYPE_4__** %114, align 8
  %116 = load i32, i32* %9, align 4
  %117 = sext i32 %116 to i64
  %118 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %115, i64 %117
  %119 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %118, i32 0, i32 1
  %120 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %119, i32 0, i32 4
  store i32 %112, i32* %120, align 8
  %121 = load i32, i32* @ds2482_w1_write_byte, align 4
  %122 = load %struct.ds2482_data*, %struct.ds2482_data** %6, align 8
  %123 = getelementptr inbounds %struct.ds2482_data, %struct.ds2482_data* %122, i32 0, i32 1
  %124 = load %struct.TYPE_4__*, %struct.TYPE_4__** %123, align 8
  %125 = load i32, i32* %9, align 4
  %126 = sext i32 %125 to i64
  %127 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %124, i64 %126
  %128 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %127, i32 0, i32 1
  %129 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %128, i32 0, i32 3
  store i32 %121, i32* %129, align 4
  %130 = load i32, i32* @ds2482_w1_touch_bit, align 4
  %131 = load %struct.ds2482_data*, %struct.ds2482_data** %6, align 8
  %132 = getelementptr inbounds %struct.ds2482_data, %struct.ds2482_data* %131, i32 0, i32 1
  %133 = load %struct.TYPE_4__*, %struct.TYPE_4__** %132, align 8
  %134 = load i32, i32* %9, align 4
  %135 = sext i32 %134 to i64
  %136 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %133, i64 %135
  %137 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %136, i32 0, i32 1
  %138 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %137, i32 0, i32 2
  store i32 %130, i32* %138, align 8
  %139 = load i32, i32* @ds2482_w1_triplet, align 4
  %140 = load %struct.ds2482_data*, %struct.ds2482_data** %6, align 8
  %141 = getelementptr inbounds %struct.ds2482_data, %struct.ds2482_data* %140, i32 0, i32 1
  %142 = load %struct.TYPE_4__*, %struct.TYPE_4__** %141, align 8
  %143 = load i32, i32* %9, align 4
  %144 = sext i32 %143 to i64
  %145 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %142, i64 %144
  %146 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %145, i32 0, i32 1
  %147 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %146, i32 0, i32 1
  store i32 %139, i32* %147, align 4
  %148 = load i32, i32* @ds2482_w1_reset_bus, align 4
  %149 = load %struct.ds2482_data*, %struct.ds2482_data** %6, align 8
  %150 = getelementptr inbounds %struct.ds2482_data, %struct.ds2482_data* %149, i32 0, i32 1
  %151 = load %struct.TYPE_4__*, %struct.TYPE_4__** %150, align 8
  %152 = load i32, i32* %9, align 4
  %153 = sext i32 %152 to i64
  %154 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %151, i64 %153
  %155 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %154, i32 0, i32 1
  %156 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %155, i32 0, i32 0
  store i32 %148, i32* %156, align 8
  %157 = load %struct.ds2482_data*, %struct.ds2482_data** %6, align 8
  %158 = getelementptr inbounds %struct.ds2482_data, %struct.ds2482_data* %157, i32 0, i32 1
  %159 = load %struct.TYPE_4__*, %struct.TYPE_4__** %158, align 8
  %160 = load i32, i32* %9, align 4
  %161 = sext i32 %160 to i64
  %162 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %159, i64 %161
  %163 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %162, i32 0, i32 1
  %164 = call i32 @w1_add_master_device(%struct.TYPE_5__* %163)
  store i32 %164, i32* %7, align 4
  %165 = load i32, i32* %7, align 4
  %166 = icmp ne i32 %165, 0
  br i1 %166, label %167, label %175

167:                                              ; preds = %81
  %168 = load %struct.ds2482_data*, %struct.ds2482_data** %6, align 8
  %169 = getelementptr inbounds %struct.ds2482_data, %struct.ds2482_data* %168, i32 0, i32 1
  %170 = load %struct.TYPE_4__*, %struct.TYPE_4__** %169, align 8
  %171 = load i32, i32* %9, align 4
  %172 = sext i32 %171 to i64
  %173 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %170, i64 %172
  %174 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %173, i32 0, i32 2
  store %struct.ds2482_data* null, %struct.ds2482_data** %174, align 8
  br label %180

175:                                              ; preds = %81
  br label %176

176:                                              ; preds = %175
  %177 = load i32, i32* %9, align 4
  %178 = add nsw i32 %177, 1
  store i32 %178, i32* %9, align 4
  br label %75

179:                                              ; preds = %75
  store i32 0, i32* %3, align 4
  br label %216

180:                                              ; preds = %167
  store i32 0, i32* %9, align 4
  br label %181

181:                                              ; preds = %207, %180
  %182 = load i32, i32* %9, align 4
  %183 = load %struct.ds2482_data*, %struct.ds2482_data** %6, align 8
  %184 = getelementptr inbounds %struct.ds2482_data, %struct.ds2482_data* %183, i32 0, i32 0
  %185 = load i32, i32* %184, align 8
  %186 = icmp slt i32 %182, %185
  br i1 %186, label %187, label %210

187:                                              ; preds = %181
  %188 = load %struct.ds2482_data*, %struct.ds2482_data** %6, align 8
  %189 = getelementptr inbounds %struct.ds2482_data, %struct.ds2482_data* %188, i32 0, i32 1
  %190 = load %struct.TYPE_4__*, %struct.TYPE_4__** %189, align 8
  %191 = load i32, i32* %9, align 4
  %192 = sext i32 %191 to i64
  %193 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %190, i64 %192
  %194 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %193, i32 0, i32 2
  %195 = load %struct.ds2482_data*, %struct.ds2482_data** %194, align 8
  %196 = icmp ne %struct.ds2482_data* %195, null
  br i1 %196, label %197, label %206

197:                                              ; preds = %187
  %198 = load %struct.ds2482_data*, %struct.ds2482_data** %6, align 8
  %199 = getelementptr inbounds %struct.ds2482_data, %struct.ds2482_data* %198, i32 0, i32 1
  %200 = load %struct.TYPE_4__*, %struct.TYPE_4__** %199, align 8
  %201 = load i32, i32* %9, align 4
  %202 = sext i32 %201 to i64
  %203 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %200, i64 %202
  %204 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %203, i32 0, i32 1
  %205 = call i32 @w1_remove_master_device(%struct.TYPE_5__* %204)
  br label %206

206:                                              ; preds = %197, %187
  br label %207

207:                                              ; preds = %206
  %208 = load i32, i32* %9, align 4
  %209 = add nsw i32 %208, 1
  store i32 %209, i32* %9, align 4
  br label %181

210:                                              ; preds = %181
  br label %211

211:                                              ; preds = %210, %54, %41
  %212 = load %struct.ds2482_data*, %struct.ds2482_data** %6, align 8
  %213 = call i32 @kfree(%struct.ds2482_data* %212)
  br label %214

214:                                              ; preds = %211, %27
  %215 = load i32, i32* %7, align 4
  store i32 %215, i32* %3, align 4
  br label %216

216:                                              ; preds = %214, %179, %20
  %217 = load i32, i32* %3, align 4
  ret i32 %217
}

declare dso_local i32 @i2c_check_functionality(i32, i32) #1

declare dso_local %struct.ds2482_data* @kzalloc(i32, i32) #1

declare dso_local i32 @i2c_set_clientdata(%struct.i2c_client*, %struct.ds2482_data*) #1

declare dso_local i64 @ds2482_send_cmd(%struct.ds2482_data*, i32) #1

declare dso_local i32 @dev_warn(i32*, i8*, ...) #1

declare dso_local i32 @ndelay(i32) #1

declare dso_local i32 @i2c_smbus_read_byte(%struct.i2c_client*) #1

declare dso_local i64 @ds2482_set_channel(%struct.ds2482_data*, i32) #1

declare dso_local i32 @ds2482_send_cmd_data(%struct.ds2482_data*, i32, i32) #1

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local i32 @w1_add_master_device(%struct.TYPE_5__*) #1

declare dso_local i32 @w1_remove_master_device(%struct.TYPE_5__*) #1

declare dso_local i32 @kfree(%struct.ds2482_data*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/iio/light/extr_tsl2561.c_tsl2561_powerdown.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/iio/light/extr_tsl2561.c_tsl2561_powerdown.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_client = type { i32 }
%struct.tsl2561_command = type { i32, i32, i32, i32, i32 }

@TSL2561_CONTROL_REGISTER = common dso_local global i32 0, align 4
@TSL2561_CONT_REG_PWR_OFF = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i2c_client*)* @tsl2561_powerdown to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tsl2561_powerdown(%struct.i2c_client* %0) #0 {
  %2 = alloca %struct.i2c_client*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.tsl2561_command, align 4
  store %struct.i2c_client* %0, %struct.i2c_client** %2, align 8
  %5 = getelementptr inbounds %struct.tsl2561_command, %struct.tsl2561_command* %4, i32 0, i32 0
  store i32 1, i32* %5, align 4
  %6 = getelementptr inbounds %struct.tsl2561_command, %struct.tsl2561_command* %4, i32 0, i32 1
  %7 = load i32, i32* @TSL2561_CONTROL_REGISTER, align 4
  store i32 %7, i32* %6, align 4
  %8 = getelementptr inbounds %struct.tsl2561_command, %struct.tsl2561_command* %4, i32 0, i32 2
  store i32 0, i32* %8, align 4
  %9 = getelementptr inbounds %struct.tsl2561_command, %struct.tsl2561_command* %4, i32 0, i32 3
  store i32 0, i32* %9, align 4
  %10 = getelementptr inbounds %struct.tsl2561_command, %struct.tsl2561_command* %4, i32 0, i32 4
  store i32 0, i32* %10, align 4
  %11 = load %struct.i2c_client*, %struct.i2c_client** %2, align 8
  %12 = bitcast %struct.tsl2561_command* %4 to i8*
  %13 = load i8, i8* %12, align 4
  %14 = load i32, i32* @TSL2561_CONT_REG_PWR_OFF, align 4
  %15 = call i32 @i2c_smbus_write_byte_data(%struct.i2c_client* %11, i8 signext %13, i32 %14)
  store i32 %15, i32* %3, align 4
  %16 = load i32, i32* %3, align 4
  %17 = icmp slt i32 %16, 0
  br i1 %17, label %18, label %20

18:                                               ; preds = %1
  %19 = load i32, i32* %3, align 4
  br label %21

20:                                               ; preds = %1
  br label %21

21:                                               ; preds = %20, %18
  %22 = phi i32 [ %19, %18 ], [ 0, %20 ]
  ret i32 %22
}

declare dso_local i32 @i2c_smbus_write_byte_data(%struct.i2c_client*, i8 signext, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

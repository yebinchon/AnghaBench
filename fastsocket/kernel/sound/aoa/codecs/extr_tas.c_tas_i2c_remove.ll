; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/aoa/codecs/extr_tas.c_tas_i2c_remove.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/aoa/codecs/extr_tas.c_tas_i2c_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_client = type { i32 }
%struct.tas = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@TAS_ACR_ANALOG_PDOWN = common dso_local global i32 0, align 4
@TAS_REG_ACR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i2c_client*)* @tas_i2c_remove to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tas_i2c_remove(%struct.i2c_client* %0) #0 {
  %2 = alloca %struct.i2c_client*, align 8
  %3 = alloca %struct.tas*, align 8
  %4 = alloca i32, align 4
  store %struct.i2c_client* %0, %struct.i2c_client** %2, align 8
  %5 = load %struct.i2c_client*, %struct.i2c_client** %2, align 8
  %6 = call %struct.tas* @i2c_get_clientdata(%struct.i2c_client* %5)
  store %struct.tas* %6, %struct.tas** %3, align 8
  %7 = load i32, i32* @TAS_ACR_ANALOG_PDOWN, align 4
  store i32 %7, i32* %4, align 4
  %8 = load %struct.tas*, %struct.tas** %3, align 8
  %9 = getelementptr inbounds %struct.tas, %struct.tas* %8, i32 0, i32 1
  %10 = call i32 @aoa_codec_unregister(%struct.TYPE_2__* %9)
  %11 = load %struct.tas*, %struct.tas** %3, align 8
  %12 = getelementptr inbounds %struct.tas, %struct.tas* %11, i32 0, i32 1
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = call i32 @of_node_put(i32 %14)
  %16 = load %struct.tas*, %struct.tas** %3, align 8
  %17 = load i32, i32* @TAS_REG_ACR, align 4
  %18 = call i32 @tas_write_reg(%struct.tas* %16, i32 %17, i32 1, i32* %4)
  %19 = load %struct.tas*, %struct.tas** %3, align 8
  %20 = getelementptr inbounds %struct.tas, %struct.tas* %19, i32 0, i32 0
  %21 = call i32 @mutex_destroy(i32* %20)
  %22 = load %struct.tas*, %struct.tas** %3, align 8
  %23 = call i32 @kfree(%struct.tas* %22)
  ret i32 0
}

declare dso_local %struct.tas* @i2c_get_clientdata(%struct.i2c_client*) #1

declare dso_local i32 @aoa_codec_unregister(%struct.TYPE_2__*) #1

declare dso_local i32 @of_node_put(i32) #1

declare dso_local i32 @tas_write_reg(%struct.tas*, i32, i32, i32*) #1

declare dso_local i32 @mutex_destroy(i32*) #1

declare dso_local i32 @kfree(%struct.tas*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/line6/extr_variax.c_variax_create_files2.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/line6/extr_variax.c_variax_create_files2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }

@dev_attr_model = common dso_local global i32 0, align 4
@dev_attr_volume = common dso_local global i32 0, align 4
@dev_attr_tone = common dso_local global i32 0, align 4
@dev_attr_name = common dso_local global i32 0, align 4
@dev_attr_bank = common dso_local global i32 0, align 4
@dev_attr_dump = common dso_local global i32 0, align 4
@dev_attr_active = common dso_local global i32 0, align 4
@dev_attr_raw = common dso_local global i32 0, align 4
@dev_attr_raw2 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*)* @variax_create_files2 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @variax_create_files2(%struct.device* %0) #0 {
  %2 = alloca %struct.device*, align 8
  %3 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %2, align 8
  %4 = load %struct.device*, %struct.device** %2, align 8
  %5 = call i32 @device_create_file(%struct.device* %4, i32* @dev_attr_model)
  %6 = call i32 @CHECK_RETURN(i32 %5)
  %7 = load %struct.device*, %struct.device** %2, align 8
  %8 = call i32 @device_create_file(%struct.device* %7, i32* @dev_attr_volume)
  %9 = call i32 @CHECK_RETURN(i32 %8)
  %10 = load %struct.device*, %struct.device** %2, align 8
  %11 = call i32 @device_create_file(%struct.device* %10, i32* @dev_attr_tone)
  %12 = call i32 @CHECK_RETURN(i32 %11)
  %13 = load %struct.device*, %struct.device** %2, align 8
  %14 = call i32 @device_create_file(%struct.device* %13, i32* @dev_attr_name)
  %15 = call i32 @CHECK_RETURN(i32 %14)
  %16 = load %struct.device*, %struct.device** %2, align 8
  %17 = call i32 @device_create_file(%struct.device* %16, i32* @dev_attr_bank)
  %18 = call i32 @CHECK_RETURN(i32 %17)
  %19 = load %struct.device*, %struct.device** %2, align 8
  %20 = call i32 @device_create_file(%struct.device* %19, i32* @dev_attr_dump)
  %21 = call i32 @CHECK_RETURN(i32 %20)
  %22 = load %struct.device*, %struct.device** %2, align 8
  %23 = call i32 @device_create_file(%struct.device* %22, i32* @dev_attr_active)
  %24 = call i32 @CHECK_RETURN(i32 %23)
  ret i32 0
}

declare dso_local i32 @CHECK_RETURN(i32) #1

declare dso_local i32 @device_create_file(%struct.device*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/kernel/extr_pm_qos_params.c_register_pm_qos_misc.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/kernel/extr_pm_qos_params.c_register_pm_qos_misc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pm_qos_object = type { %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32*, i32, i32 }

@MISC_DYNAMIC_MINOR = common dso_local global i32 0, align 4
@pm_qos_power_fops = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pm_qos_object*)* @register_pm_qos_misc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @register_pm_qos_misc(%struct.pm_qos_object* %0) #0 {
  %2 = alloca %struct.pm_qos_object*, align 8
  store %struct.pm_qos_object* %0, %struct.pm_qos_object** %2, align 8
  %3 = load i32, i32* @MISC_DYNAMIC_MINOR, align 4
  %4 = load %struct.pm_qos_object*, %struct.pm_qos_object** %2, align 8
  %5 = getelementptr inbounds %struct.pm_qos_object, %struct.pm_qos_object* %4, i32 0, i32 0
  %6 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %5, i32 0, i32 2
  store i32 %3, i32* %6, align 4
  %7 = load %struct.pm_qos_object*, %struct.pm_qos_object** %2, align 8
  %8 = getelementptr inbounds %struct.pm_qos_object, %struct.pm_qos_object* %7, i32 0, i32 1
  %9 = load i32, i32* %8, align 8
  %10 = load %struct.pm_qos_object*, %struct.pm_qos_object** %2, align 8
  %11 = getelementptr inbounds %struct.pm_qos_object, %struct.pm_qos_object* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 1
  store i32 %9, i32* %12, align 8
  %13 = load %struct.pm_qos_object*, %struct.pm_qos_object** %2, align 8
  %14 = getelementptr inbounds %struct.pm_qos_object, %struct.pm_qos_object* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  store i32* @pm_qos_power_fops, i32** %15, align 8
  %16 = load %struct.pm_qos_object*, %struct.pm_qos_object** %2, align 8
  %17 = getelementptr inbounds %struct.pm_qos_object, %struct.pm_qos_object* %16, i32 0, i32 0
  %18 = call i32 @misc_register(%struct.TYPE_2__* %17)
  ret i32 %18
}

declare dso_local i32 @misc_register(%struct.TYPE_2__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

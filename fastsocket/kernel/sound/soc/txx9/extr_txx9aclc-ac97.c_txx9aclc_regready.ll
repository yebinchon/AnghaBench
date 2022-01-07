; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/soc/txx9/extr_txx9aclc-ac97.c_txx9aclc_regready.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/soc/txx9/extr_txx9aclc-ac97.c_txx9aclc_regready.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.txx9aclc_soc_device = type { i32 }
%struct.txx9aclc_plat_drvdata = type { i64 }

@ACINTSTS = common dso_local global i64 0, align 8
@ACINT_REGACCRDY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.txx9aclc_soc_device*)* @txx9aclc_regready to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @txx9aclc_regready(%struct.txx9aclc_soc_device* %0) #0 {
  %2 = alloca %struct.txx9aclc_soc_device*, align 8
  %3 = alloca %struct.txx9aclc_plat_drvdata*, align 8
  store %struct.txx9aclc_soc_device* %0, %struct.txx9aclc_soc_device** %2, align 8
  %4 = load %struct.txx9aclc_soc_device*, %struct.txx9aclc_soc_device** %2, align 8
  %5 = call %struct.txx9aclc_plat_drvdata* @txx9aclc_get_plat_drvdata(%struct.txx9aclc_soc_device* %4)
  store %struct.txx9aclc_plat_drvdata* %5, %struct.txx9aclc_plat_drvdata** %3, align 8
  %6 = load %struct.txx9aclc_plat_drvdata*, %struct.txx9aclc_plat_drvdata** %3, align 8
  %7 = getelementptr inbounds %struct.txx9aclc_plat_drvdata, %struct.txx9aclc_plat_drvdata* %6, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  %9 = load i64, i64* @ACINTSTS, align 8
  %10 = add nsw i64 %8, %9
  %11 = call i32 @__raw_readl(i64 %10)
  %12 = load i32, i32* @ACINT_REGACCRDY, align 4
  %13 = and i32 %11, %12
  ret i32 %13
}

declare dso_local %struct.txx9aclc_plat_drvdata* @txx9aclc_get_plat_drvdata(%struct.txx9aclc_soc_device*) #1

declare dso_local i32 @__raw_readl(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/ppc/extr_tumbler.c_snapper_set_mix_vol.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/ppc/extr_tumbler.c_snapper_set_mix_vol.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pmac_tumbler = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@ENODEV = common dso_local global i32 0, align 4
@TAS_REG_LMIX = common dso_local global i32 0, align 4
@TAS_REG_RMIX = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pmac_tumbler*, i32)* @snapper_set_mix_vol to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @snapper_set_mix_vol(%struct.pmac_tumbler* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.pmac_tumbler*, align 8
  %5 = alloca i32, align 4
  store %struct.pmac_tumbler* %0, %struct.pmac_tumbler** %4, align 8
  store i32 %1, i32* %5, align 4
  %6 = load %struct.pmac_tumbler*, %struct.pmac_tumbler** %4, align 8
  %7 = getelementptr inbounds %struct.pmac_tumbler, %struct.pmac_tumbler* %6, i32 0, i32 0
  %8 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %14, label %11

11:                                               ; preds = %2
  %12 = load i32, i32* @ENODEV, align 4
  %13 = sub nsw i32 0, %12
  store i32 %13, i32* %3, align 4
  br label %30

14:                                               ; preds = %2
  %15 = load %struct.pmac_tumbler*, %struct.pmac_tumbler** %4, align 8
  %16 = load i32, i32* %5, align 4
  %17 = load i32, i32* @TAS_REG_LMIX, align 4
  %18 = call i64 @snapper_set_mix_vol1(%struct.pmac_tumbler* %15, i32 %16, i32 0, i32 %17)
  %19 = icmp slt i64 %18, 0
  br i1 %19, label %26, label %20

20:                                               ; preds = %14
  %21 = load %struct.pmac_tumbler*, %struct.pmac_tumbler** %4, align 8
  %22 = load i32, i32* %5, align 4
  %23 = load i32, i32* @TAS_REG_RMIX, align 4
  %24 = call i64 @snapper_set_mix_vol1(%struct.pmac_tumbler* %21, i32 %22, i32 1, i32 %23)
  %25 = icmp slt i64 %24, 0
  br i1 %25, label %26, label %29

26:                                               ; preds = %20, %14
  %27 = load i32, i32* @EINVAL, align 4
  %28 = sub nsw i32 0, %27
  store i32 %28, i32* %3, align 4
  br label %30

29:                                               ; preds = %20
  store i32 0, i32* %3, align 4
  br label %30

30:                                               ; preds = %29, %26, %11
  %31 = load i32, i32* %3, align 4
  ret i32 %31
}

declare dso_local i64 @snapper_set_mix_vol1(%struct.pmac_tumbler*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

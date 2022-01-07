; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/video/extr_arkfb.c_ics5342_set_mode.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/video/extr_arkfb.c_ics5342_set_mode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dac_info = type { i32 }
%struct.TYPE_2__ = type { i32 }

@DAC_MAX = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@ics5342_mode_table = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dac_info*, i32)* @ics5342_set_mode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ics5342_set_mode(%struct.dac_info* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.dac_info*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.dac_info* %0, %struct.dac_info** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load i32, i32* %5, align 4
  %8 = load i32, i32* @DAC_MAX, align 4
  %9 = icmp sge i32 %7, %8
  br i1 %9, label %10, label %13

10:                                               ; preds = %2
  %11 = load i32, i32* @EINVAL, align 4
  %12 = sub nsw i32 0, %11
  store i32 %12, i32* %3, align 4
  br label %33

13:                                               ; preds = %2
  %14 = load i32*, i32** @ics5342_mode_table, align 8
  %15 = load i32, i32* %5, align 4
  %16 = sext i32 %15 to i64
  %17 = getelementptr inbounds i32, i32* %14, i64 %16
  %18 = load i32, i32* %17, align 4
  store i32 %18, i32* %6, align 4
  %19 = load i32, i32* %6, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %24, label %21

21:                                               ; preds = %13
  %22 = load i32, i32* @EINVAL, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %3, align 4
  br label %33

24:                                               ; preds = %13
  %25 = load %struct.dac_info*, %struct.dac_info** %4, align 8
  %26 = load i32, i32* %6, align 4
  %27 = and i32 %26, 240
  %28 = call i32 @dac_write_reg(%struct.dac_info* %25, i32 6, i32 %27)
  %29 = load i32, i32* %5, align 4
  %30 = load %struct.dac_info*, %struct.dac_info** %4, align 8
  %31 = call %struct.TYPE_2__* @DAC_PAR(%struct.dac_info* %30)
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 0
  store i32 %29, i32* %32, align 4
  store i32 0, i32* %3, align 4
  br label %33

33:                                               ; preds = %24, %21, %10
  %34 = load i32, i32* %3, align 4
  ret i32 %34
}

declare dso_local i32 @dac_write_reg(%struct.dac_info*, i32, i32) #1

declare dso_local %struct.TYPE_2__* @DAC_PAR(%struct.dac_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

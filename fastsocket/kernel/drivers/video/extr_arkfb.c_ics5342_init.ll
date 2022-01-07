; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/video/extr_arkfb.c_ics5342_init.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/video/extr_arkfb.c_ics5342_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dac_info = type { i8*, i32, i32, i32* }
%struct.TYPE_2__ = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ics5342_ops = common dso_local global i32 0, align 4
@DAC_PSEUDO8_8 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.dac_info* (i32, i32, i8*)* @ics5342_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.dac_info* @ics5342_init(i32 %0, i32 %1, i8* %2) #0 {
  %4 = alloca %struct.dac_info*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca %struct.dac_info*, align 8
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store i8* %2, i8** %7, align 8
  %9 = load i32, i32* @GFP_KERNEL, align 4
  %10 = call %struct.dac_info* @kzalloc(i32 4, i32 %9)
  store %struct.dac_info* %10, %struct.dac_info** %8, align 8
  %11 = load %struct.dac_info*, %struct.dac_info** %8, align 8
  %12 = icmp ne %struct.dac_info* %11, null
  br i1 %12, label %14, label %13

13:                                               ; preds = %3
  store %struct.dac_info* null, %struct.dac_info** %4, align 8
  br label %31

14:                                               ; preds = %3
  %15 = load %struct.dac_info*, %struct.dac_info** %8, align 8
  %16 = getelementptr inbounds %struct.dac_info, %struct.dac_info* %15, i32 0, i32 3
  store i32* @ics5342_ops, i32** %16, align 8
  %17 = load i32, i32* %5, align 4
  %18 = load %struct.dac_info*, %struct.dac_info** %8, align 8
  %19 = getelementptr inbounds %struct.dac_info, %struct.dac_info* %18, i32 0, i32 2
  store i32 %17, i32* %19, align 4
  %20 = load i32, i32* %6, align 4
  %21 = load %struct.dac_info*, %struct.dac_info** %8, align 8
  %22 = getelementptr inbounds %struct.dac_info, %struct.dac_info* %21, i32 0, i32 1
  store i32 %20, i32* %22, align 8
  %23 = load i8*, i8** %7, align 8
  %24 = load %struct.dac_info*, %struct.dac_info** %8, align 8
  %25 = getelementptr inbounds %struct.dac_info, %struct.dac_info* %24, i32 0, i32 0
  store i8* %23, i8** %25, align 8
  %26 = load i32, i32* @DAC_PSEUDO8_8, align 4
  %27 = load %struct.dac_info*, %struct.dac_info** %8, align 8
  %28 = call %struct.TYPE_2__* @DAC_PAR(%struct.dac_info* %27)
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 0
  store i32 %26, i32* %29, align 4
  %30 = load %struct.dac_info*, %struct.dac_info** %8, align 8
  store %struct.dac_info* %30, %struct.dac_info** %4, align 8
  br label %31

31:                                               ; preds = %14, %13
  %32 = load %struct.dac_info*, %struct.dac_info** %4, align 8
  ret %struct.dac_info* %32
}

declare dso_local %struct.dac_info* @kzalloc(i32, i32) #1

declare dso_local %struct.TYPE_2__* @DAC_PAR(%struct.dac_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

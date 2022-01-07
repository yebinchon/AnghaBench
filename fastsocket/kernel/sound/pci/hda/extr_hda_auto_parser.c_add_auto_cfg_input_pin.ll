; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/pci/hda/extr_hda_auto_parser.c_add_auto_cfg_input_pin.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/pci/hda/extr_hda_auto_parser.c_add_auto_cfg_input_pin.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.auto_pin_cfg = type { i64, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i32 }

@AUTO_CFG_MAX_INS = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.auto_pin_cfg*, i32, i32)* @add_auto_cfg_input_pin to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @add_auto_cfg_input_pin(%struct.auto_pin_cfg* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.auto_pin_cfg*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.auto_pin_cfg* %0, %struct.auto_pin_cfg** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %7 = load %struct.auto_pin_cfg*, %struct.auto_pin_cfg** %4, align 8
  %8 = getelementptr inbounds %struct.auto_pin_cfg, %struct.auto_pin_cfg* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = load i64, i64* @AUTO_CFG_MAX_INS, align 8
  %11 = icmp ult i64 %9, %10
  br i1 %11, label %12, label %35

12:                                               ; preds = %3
  %13 = load i32, i32* %5, align 4
  %14 = load %struct.auto_pin_cfg*, %struct.auto_pin_cfg** %4, align 8
  %15 = getelementptr inbounds %struct.auto_pin_cfg, %struct.auto_pin_cfg* %14, i32 0, i32 1
  %16 = load %struct.TYPE_2__*, %struct.TYPE_2__** %15, align 8
  %17 = load %struct.auto_pin_cfg*, %struct.auto_pin_cfg** %4, align 8
  %18 = getelementptr inbounds %struct.auto_pin_cfg, %struct.auto_pin_cfg* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i64 %19
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 1
  store i32 %13, i32* %21, align 4
  %22 = load i32, i32* %6, align 4
  %23 = load %struct.auto_pin_cfg*, %struct.auto_pin_cfg** %4, align 8
  %24 = getelementptr inbounds %struct.auto_pin_cfg, %struct.auto_pin_cfg* %23, i32 0, i32 1
  %25 = load %struct.TYPE_2__*, %struct.TYPE_2__** %24, align 8
  %26 = load %struct.auto_pin_cfg*, %struct.auto_pin_cfg** %4, align 8
  %27 = getelementptr inbounds %struct.auto_pin_cfg, %struct.auto_pin_cfg* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i64 %28
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 0
  store i32 %22, i32* %30, align 4
  %31 = load %struct.auto_pin_cfg*, %struct.auto_pin_cfg** %4, align 8
  %32 = getelementptr inbounds %struct.auto_pin_cfg, %struct.auto_pin_cfg* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = add i64 %33, 1
  store i64 %34, i64* %32, align 8
  br label %35

35:                                               ; preds = %12, %3
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

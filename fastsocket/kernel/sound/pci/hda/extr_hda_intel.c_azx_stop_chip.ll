; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/pci/hda/extr_hda_intel.c_azx_stop_chip.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/pci/hda/extr_hda_intel.c_azx_stop_chip.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.azx = type { i64 }

@DPLBASE = common dso_local global i32 0, align 4
@DPUBASE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.azx*)* @azx_stop_chip to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @azx_stop_chip(%struct.azx* %0) #0 {
  %2 = alloca %struct.azx*, align 8
  store %struct.azx* %0, %struct.azx** %2, align 8
  %3 = load %struct.azx*, %struct.azx** %2, align 8
  %4 = getelementptr inbounds %struct.azx, %struct.azx* %3, i32 0, i32 0
  %5 = load i64, i64* %4, align 8
  %6 = icmp ne i64 %5, 0
  br i1 %6, label %8, label %7

7:                                                ; preds = %1
  br label %23

8:                                                ; preds = %1
  %9 = load %struct.azx*, %struct.azx** %2, align 8
  %10 = call i32 @azx_int_disable(%struct.azx* %9)
  %11 = load %struct.azx*, %struct.azx** %2, align 8
  %12 = call i32 @azx_int_clear(%struct.azx* %11)
  %13 = load %struct.azx*, %struct.azx** %2, align 8
  %14 = call i32 @azx_free_cmd_io(%struct.azx* %13)
  %15 = load %struct.azx*, %struct.azx** %2, align 8
  %16 = load i32, i32* @DPLBASE, align 4
  %17 = call i32 @azx_writel(%struct.azx* %15, i32 %16, i32 0)
  %18 = load %struct.azx*, %struct.azx** %2, align 8
  %19 = load i32, i32* @DPUBASE, align 4
  %20 = call i32 @azx_writel(%struct.azx* %18, i32 %19, i32 0)
  %21 = load %struct.azx*, %struct.azx** %2, align 8
  %22 = getelementptr inbounds %struct.azx, %struct.azx* %21, i32 0, i32 0
  store i64 0, i64* %22, align 8
  br label %23

23:                                               ; preds = %8, %7
  ret void
}

declare dso_local i32 @azx_int_disable(%struct.azx*) #1

declare dso_local i32 @azx_int_clear(%struct.azx*) #1

declare dso_local i32 @azx_free_cmd_io(%struct.azx*) #1

declare dso_local i32 @azx_writel(%struct.azx*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

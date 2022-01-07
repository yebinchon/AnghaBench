; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/pci/hda/extr_hda_intel.c_azx_init_chip.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/pci/hda/extr_hda_intel.c_azx_init_chip.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.azx = type { i32, %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i64 }

@DPLBASE = common dso_local global i32 0, align 4
@DPUBASE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.azx*, i32)* @azx_init_chip to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @azx_init_chip(%struct.azx* %0, i32 %1) #0 {
  %3 = alloca %struct.azx*, align 8
  %4 = alloca i32, align 4
  store %struct.azx* %0, %struct.azx** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load %struct.azx*, %struct.azx** %3, align 8
  %6 = getelementptr inbounds %struct.azx, %struct.azx* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 8
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %9, label %10

9:                                                ; preds = %2
  br label %44

10:                                               ; preds = %2
  %11 = load %struct.azx*, %struct.azx** %3, align 8
  %12 = load i32, i32* %4, align 4
  %13 = call i32 @azx_reset(%struct.azx* %11, i32 %12)
  %14 = load %struct.azx*, %struct.azx** %3, align 8
  %15 = call i32 @azx_int_clear(%struct.azx* %14)
  %16 = load %struct.azx*, %struct.azx** %3, align 8
  %17 = call i32 @azx_int_enable(%struct.azx* %16)
  %18 = load %struct.azx*, %struct.azx** %3, align 8
  %19 = getelementptr inbounds %struct.azx, %struct.azx* %18, i32 0, i32 2
  %20 = load i32, i32* %19, align 8
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %25, label %22

22:                                               ; preds = %10
  %23 = load %struct.azx*, %struct.azx** %3, align 8
  %24 = call i32 @azx_init_cmd_io(%struct.azx* %23)
  br label %25

25:                                               ; preds = %22, %10
  %26 = load %struct.azx*, %struct.azx** %3, align 8
  %27 = load i32, i32* @DPLBASE, align 4
  %28 = load %struct.azx*, %struct.azx** %3, align 8
  %29 = getelementptr inbounds %struct.azx, %struct.azx* %28, i32 0, i32 1
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = trunc i64 %31 to i32
  %33 = call i32 @azx_writel(%struct.azx* %26, i32 %27, i32 %32)
  %34 = load %struct.azx*, %struct.azx** %3, align 8
  %35 = load i32, i32* @DPUBASE, align 4
  %36 = load %struct.azx*, %struct.azx** %3, align 8
  %37 = getelementptr inbounds %struct.azx, %struct.azx* %36, i32 0, i32 1
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = call i32 @upper_32_bits(i64 %39)
  %41 = call i32 @azx_writel(%struct.azx* %34, i32 %35, i32 %40)
  %42 = load %struct.azx*, %struct.azx** %3, align 8
  %43 = getelementptr inbounds %struct.azx, %struct.azx* %42, i32 0, i32 0
  store i32 1, i32* %43, align 8
  br label %44

44:                                               ; preds = %25, %9
  ret void
}

declare dso_local i32 @azx_reset(%struct.azx*, i32) #1

declare dso_local i32 @azx_int_clear(%struct.azx*) #1

declare dso_local i32 @azx_int_enable(%struct.azx*) #1

declare dso_local i32 @azx_init_cmd_io(%struct.azx*) #1

declare dso_local i32 @azx_writel(%struct.azx*, i32, i32) #1

declare dso_local i32 @upper_32_bits(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

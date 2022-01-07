; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/mips/extr_hal2.c_hal2_init_codec.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/mips/extr_hal2.c_hal2_init_codec.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hal2_codec = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32* }
%struct.hpc3_regs = type { i32* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.hal2_codec*, %struct.hpc3_regs*, i32)* @hal2_init_codec to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hal2_init_codec(%struct.hal2_codec* %0, %struct.hpc3_regs* %1, i32 %2) #0 {
  %4 = alloca %struct.hal2_codec*, align 8
  %5 = alloca %struct.hpc3_regs*, align 8
  %6 = alloca i32, align 4
  store %struct.hal2_codec* %0, %struct.hal2_codec** %4, align 8
  store %struct.hpc3_regs* %1, %struct.hpc3_regs** %5, align 8
  store i32 %2, i32* %6, align 4
  %7 = load i32, i32* %6, align 4
  %8 = load %struct.hal2_codec*, %struct.hal2_codec** %4, align 8
  %9 = getelementptr inbounds %struct.hal2_codec, %struct.hal2_codec* %8, i32 0, i32 0
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 0
  store i32 %7, i32* %10, align 8
  %11 = load %struct.hpc3_regs*, %struct.hpc3_regs** %5, align 8
  %12 = getelementptr inbounds %struct.hpc3_regs, %struct.hpc3_regs* %11, i32 0, i32 0
  %13 = load i32*, i32** %12, align 8
  %14 = load i32, i32* %6, align 4
  %15 = sext i32 %14 to i64
  %16 = getelementptr inbounds i32, i32* %13, i64 %15
  %17 = load %struct.hal2_codec*, %struct.hal2_codec** %4, align 8
  %18 = getelementptr inbounds %struct.hal2_codec, %struct.hal2_codec* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 1
  store i32* %16, i32** %19, align 8
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

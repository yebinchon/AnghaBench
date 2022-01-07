; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/pci/ctxfi/extr_ctmixer.c_mixer_set_input_port.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/pci/ctxfi/extr_ctmixer.c_mixer_set_input_port.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.amixer = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 (%struct.amixer*)*, {}* }
%struct.rsc = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.amixer*, %struct.rsc*)* @mixer_set_input_port to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mixer_set_input_port(%struct.amixer* %0, %struct.rsc* %1) #0 {
  %3 = alloca %struct.amixer*, align 8
  %4 = alloca %struct.rsc*, align 8
  store %struct.amixer* %0, %struct.amixer** %3, align 8
  store %struct.rsc* %1, %struct.rsc** %4, align 8
  %5 = load %struct.amixer*, %struct.amixer** %3, align 8
  %6 = getelementptr inbounds %struct.amixer, %struct.amixer* %5, i32 0, i32 0
  %7 = load %struct.TYPE_2__*, %struct.TYPE_2__** %6, align 8
  %8 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %7, i32 0, i32 1
  %9 = bitcast {}** %8 to i32 (%struct.amixer*, %struct.rsc*)**
  %10 = load i32 (%struct.amixer*, %struct.rsc*)*, i32 (%struct.amixer*, %struct.rsc*)** %9, align 8
  %11 = load %struct.amixer*, %struct.amixer** %3, align 8
  %12 = load %struct.rsc*, %struct.rsc** %4, align 8
  %13 = call i32 %10(%struct.amixer* %11, %struct.rsc* %12)
  %14 = load %struct.amixer*, %struct.amixer** %3, align 8
  %15 = getelementptr inbounds %struct.amixer, %struct.amixer* %14, i32 0, i32 0
  %16 = load %struct.TYPE_2__*, %struct.TYPE_2__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  %18 = load i32 (%struct.amixer*)*, i32 (%struct.amixer*)** %17, align 8
  %19 = load %struct.amixer*, %struct.amixer** %3, align 8
  %20 = call i32 %18(%struct.amixer* %19)
  ret i32 0
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

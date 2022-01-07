; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/pci/lx6464es/extr_lx_core.h_lx_stream_stop.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/pci/lx6464es/extr_lx_core.h_lx_stream_stop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lx6464es = type { i32 }

@.str = private unnamed_addr constant [18 x i8] c"->lx_stream_stop\0A\00", align 1
@SSTATE_STOP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.lx6464es*, i32, i32)* @lx_stream_stop to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lx_stream_stop(%struct.lx6464es* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.lx6464es*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.lx6464es* %0, %struct.lx6464es** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %7 = call i32 @snd_printdd(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0))
  %8 = load %struct.lx6464es*, %struct.lx6464es** %4, align 8
  %9 = load i32, i32* %5, align 4
  %10 = load i32, i32* %6, align 4
  %11 = load i32, i32* @SSTATE_STOP, align 4
  %12 = call i32 @lx_stream_set_state(%struct.lx6464es* %8, i32 %9, i32 %10, i32 %11)
  ret i32 %12
}

declare dso_local i32 @snd_printdd(i8*) #1

declare dso_local i32 @lx_stream_set_state(%struct.lx6464es*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

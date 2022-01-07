; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/pci/lx6464es/extr_lx6464es.c_lx_trigger_tasklet.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/pci/lx6464es/extr_lx6464es.c_lx_trigger_tasklet.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lx6464es = type { i32, i32, i32 }

@.str = private unnamed_addr constant [22 x i8] c"->lx_trigger_tasklet\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i64)* @lx_trigger_tasklet to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @lx_trigger_tasklet(i64 %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.lx6464es*, align 8
  %4 = alloca i64, align 8
  store i64 %0, i64* %2, align 8
  %5 = load i64, i64* %2, align 8
  %6 = inttoptr i64 %5 to %struct.lx6464es*
  store %struct.lx6464es* %6, %struct.lx6464es** %3, align 8
  %7 = call i32 @snd_printdd(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0))
  %8 = load %struct.lx6464es*, %struct.lx6464es** %3, align 8
  %9 = getelementptr inbounds %struct.lx6464es, %struct.lx6464es* %8, i32 0, i32 0
  %10 = load i64, i64* %4, align 8
  %11 = call i32 @spin_lock_irqsave(i32* %9, i64 %10)
  %12 = load %struct.lx6464es*, %struct.lx6464es** %3, align 8
  %13 = load %struct.lx6464es*, %struct.lx6464es** %3, align 8
  %14 = getelementptr inbounds %struct.lx6464es, %struct.lx6464es* %13, i32 0, i32 2
  %15 = call i32 @lx_trigger_tasklet_dispatch_stream(%struct.lx6464es* %12, i32* %14)
  %16 = load %struct.lx6464es*, %struct.lx6464es** %3, align 8
  %17 = load %struct.lx6464es*, %struct.lx6464es** %3, align 8
  %18 = getelementptr inbounds %struct.lx6464es, %struct.lx6464es* %17, i32 0, i32 1
  %19 = call i32 @lx_trigger_tasklet_dispatch_stream(%struct.lx6464es* %16, i32* %18)
  %20 = load %struct.lx6464es*, %struct.lx6464es** %3, align 8
  %21 = getelementptr inbounds %struct.lx6464es, %struct.lx6464es* %20, i32 0, i32 0
  %22 = load i64, i64* %4, align 8
  %23 = call i32 @spin_unlock_irqrestore(i32* %21, i64 %22)
  ret void
}

declare dso_local i32 @snd_printdd(i8*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @lx_trigger_tasklet_dispatch_stream(%struct.lx6464es*, i32*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

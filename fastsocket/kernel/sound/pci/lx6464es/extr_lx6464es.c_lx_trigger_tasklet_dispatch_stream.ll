; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/pci/lx6464es/extr_lx6464es.c_lx_trigger_tasklet_dispatch_stream.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/pci/lx6464es/extr_lx6464es.c_lx_trigger_tasklet_dispatch_stream.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lx6464es = type { i32 }
%struct.lx_stream = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.lx6464es*, %struct.lx_stream*)* @lx_trigger_tasklet_dispatch_stream to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @lx_trigger_tasklet_dispatch_stream(%struct.lx6464es* %0, %struct.lx_stream* %1) #0 {
  %3 = alloca %struct.lx6464es*, align 8
  %4 = alloca %struct.lx_stream*, align 8
  store %struct.lx6464es* %0, %struct.lx6464es** %3, align 8
  store %struct.lx_stream* %1, %struct.lx_stream** %4, align 8
  %5 = load %struct.lx_stream*, %struct.lx_stream** %4, align 8
  %6 = getelementptr inbounds %struct.lx_stream, %struct.lx_stream* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 4
  switch i32 %7, label %16 [
    i32 129, label %8
    i32 128, label %12
  ]

8:                                                ; preds = %2
  %9 = load %struct.lx6464es*, %struct.lx6464es** %3, align 8
  %10 = load %struct.lx_stream*, %struct.lx_stream** %4, align 8
  %11 = call i32 @lx_trigger_start(%struct.lx6464es* %9, %struct.lx_stream* %10)
  br label %17

12:                                               ; preds = %2
  %13 = load %struct.lx6464es*, %struct.lx6464es** %3, align 8
  %14 = load %struct.lx_stream*, %struct.lx_stream** %4, align 8
  %15 = call i32 @lx_trigger_stop(%struct.lx6464es* %13, %struct.lx_stream* %14)
  br label %17

16:                                               ; preds = %2
  br label %17

17:                                               ; preds = %16, %12, %8
  ret void
}

declare dso_local i32 @lx_trigger_start(%struct.lx6464es*, %struct.lx_stream*) #1

declare dso_local i32 @lx_trigger_stop(%struct.lx6464es*, %struct.lx_stream*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/line6/extr_midibuf.c_midibuf_reset.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/line6/extr_midibuf.c_midibuf_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.MidiBuffer = type { i32, i64, i64, i64 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @midibuf_reset(%struct.MidiBuffer* %0) #0 {
  %2 = alloca %struct.MidiBuffer*, align 8
  store %struct.MidiBuffer* %0, %struct.MidiBuffer** %2, align 8
  %3 = load %struct.MidiBuffer*, %struct.MidiBuffer** %2, align 8
  %4 = getelementptr inbounds %struct.MidiBuffer, %struct.MidiBuffer* %3, i32 0, i32 1
  store i64 0, i64* %4, align 8
  %5 = load %struct.MidiBuffer*, %struct.MidiBuffer** %2, align 8
  %6 = getelementptr inbounds %struct.MidiBuffer, %struct.MidiBuffer* %5, i32 0, i32 2
  store i64 0, i64* %6, align 8
  %7 = load %struct.MidiBuffer*, %struct.MidiBuffer** %2, align 8
  %8 = getelementptr inbounds %struct.MidiBuffer, %struct.MidiBuffer* %7, i32 0, i32 3
  store i64 0, i64* %8, align 8
  %9 = load %struct.MidiBuffer*, %struct.MidiBuffer** %2, align 8
  %10 = getelementptr inbounds %struct.MidiBuffer, %struct.MidiBuffer* %9, i32 0, i32 0
  store i32 -1, i32* %10, align 8
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

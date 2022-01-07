; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/line6/extr_midibuf.c_midibuf_ignore.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/line6/extr_midibuf.c_midibuf_ignore.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.MidiBuffer = type { i32, i32, i64 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @midibuf_ignore(%struct.MidiBuffer* %0, i32 %1) #0 {
  %3 = alloca %struct.MidiBuffer*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.MidiBuffer* %0, %struct.MidiBuffer** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.MidiBuffer*, %struct.MidiBuffer** %3, align 8
  %7 = call i32 @midibuf_bytes_used(%struct.MidiBuffer* %6)
  store i32 %7, i32* %5, align 4
  %8 = load i32, i32* %4, align 4
  %9 = load i32, i32* %5, align 4
  %10 = icmp sgt i32 %8, %9
  br i1 %10, label %11, label %13

11:                                               ; preds = %2
  %12 = load i32, i32* %5, align 4
  store i32 %12, i32* %4, align 4
  br label %13

13:                                               ; preds = %11, %2
  %14 = load %struct.MidiBuffer*, %struct.MidiBuffer** %3, align 8
  %15 = getelementptr inbounds %struct.MidiBuffer, %struct.MidiBuffer* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = load i32, i32* %4, align 4
  %18 = add nsw i32 %16, %17
  %19 = load %struct.MidiBuffer*, %struct.MidiBuffer** %3, align 8
  %20 = getelementptr inbounds %struct.MidiBuffer, %struct.MidiBuffer* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = srem i32 %18, %21
  %23 = load %struct.MidiBuffer*, %struct.MidiBuffer** %3, align 8
  %24 = getelementptr inbounds %struct.MidiBuffer, %struct.MidiBuffer* %23, i32 0, i32 0
  store i32 %22, i32* %24, align 8
  %25 = load %struct.MidiBuffer*, %struct.MidiBuffer** %3, align 8
  %26 = getelementptr inbounds %struct.MidiBuffer, %struct.MidiBuffer* %25, i32 0, i32 2
  store i64 0, i64* %26, align 8
  %27 = load i32, i32* %4, align 4
  ret i32 %27
}

declare dso_local i32 @midibuf_bytes_used(%struct.MidiBuffer*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

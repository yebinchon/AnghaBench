; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/kernel/extr_kfifo-new.c___kfifo_dma_out_finish_r.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/kernel/extr_kfifo-new.c___kfifo_dma_out_finish_r.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.__kfifo = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @__kfifo_dma_out_finish_r(%struct.__kfifo* %0, i64 %1) #0 {
  %3 = alloca %struct.__kfifo*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  store %struct.__kfifo* %0, %struct.__kfifo** %3, align 8
  store i64 %1, i64* %4, align 8
  %6 = load %struct.__kfifo*, %struct.__kfifo** %3, align 8
  %7 = load i64, i64* %4, align 8
  %8 = call i32 @__kfifo_peek_n(%struct.__kfifo* %6, i64 %7)
  store i32 %8, i32* %5, align 4
  %9 = load i32, i32* %5, align 4
  %10 = zext i32 %9 to i64
  %11 = load i64, i64* %4, align 8
  %12 = add i64 %10, %11
  %13 = load %struct.__kfifo*, %struct.__kfifo** %3, align 8
  %14 = getelementptr inbounds %struct.__kfifo, %struct.__kfifo* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = zext i32 %15 to i64
  %17 = add i64 %16, %12
  %18 = trunc i64 %17 to i32
  store i32 %18, i32* %14, align 4
  ret void
}

declare dso_local i32 @__kfifo_peek_n(%struct.__kfifo*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

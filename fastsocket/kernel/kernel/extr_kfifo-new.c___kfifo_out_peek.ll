; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/kernel/extr_kfifo-new.c___kfifo_out_peek.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/kernel/extr_kfifo-new.c___kfifo_out_peek.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.__kfifo = type { i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @__kfifo_out_peek(%struct.__kfifo* %0, i8* %1, i32 %2) #0 {
  %4 = alloca %struct.__kfifo*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.__kfifo* %0, %struct.__kfifo** %4, align 8
  store i8* %1, i8** %5, align 8
  store i32 %2, i32* %6, align 4
  %8 = load %struct.__kfifo*, %struct.__kfifo** %4, align 8
  %9 = getelementptr inbounds %struct.__kfifo, %struct.__kfifo* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = load %struct.__kfifo*, %struct.__kfifo** %4, align 8
  %12 = getelementptr inbounds %struct.__kfifo, %struct.__kfifo* %11, i32 0, i32 1
  %13 = load i32, i32* %12, align 4
  %14 = sub i32 %10, %13
  store i32 %14, i32* %7, align 4
  %15 = load i32, i32* %6, align 4
  %16 = load i32, i32* %7, align 4
  %17 = icmp ugt i32 %15, %16
  br i1 %17, label %18, label %20

18:                                               ; preds = %3
  %19 = load i32, i32* %7, align 4
  store i32 %19, i32* %6, align 4
  br label %20

20:                                               ; preds = %18, %3
  %21 = load %struct.__kfifo*, %struct.__kfifo** %4, align 8
  %22 = load i8*, i8** %5, align 8
  %23 = load i32, i32* %6, align 4
  %24 = load %struct.__kfifo*, %struct.__kfifo** %4, align 8
  %25 = getelementptr inbounds %struct.__kfifo, %struct.__kfifo* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = call i32 @kfifo_copy_out(%struct.__kfifo* %21, i8* %22, i32 %23, i32 %26)
  %28 = load i32, i32* %6, align 4
  ret i32 %28
}

declare dso_local i32 @kfifo_copy_out(%struct.__kfifo*, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_findvar.c_symbol_read_needs_frame.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_findvar.c_symbol_read_needs_frame.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.symbol = type { i32 }
%struct.TYPE_2__ = type { i32 (%struct.symbol*)* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @symbol_read_needs_frame(%struct.symbol* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.symbol*, align 8
  store %struct.symbol* %0, %struct.symbol** %3, align 8
  %4 = load %struct.symbol*, %struct.symbol** %3, align 8
  %5 = call i32 @SYMBOL_CLASS(%struct.symbol* %4)
  switch i32 %5, label %15 [
    i32 145, label %6
    i32 144, label %6
    i32 134, label %13
    i32 149, label %13
    i32 135, label %13
    i32 133, label %13
    i32 132, label %13
    i32 138, label %13
    i32 137, label %13
    i32 148, label %13
    i32 147, label %13
    i32 141, label %13
    i32 129, label %14
    i32 143, label %14
    i32 131, label %14
    i32 140, label %14
    i32 130, label %14
    i32 139, label %14
    i32 146, label %14
    i32 142, label %14
    i32 128, label %14
    i32 136, label %14
  ]

6:                                                ; preds = %1, %1
  %7 = load %struct.symbol*, %struct.symbol** %3, align 8
  %8 = call %struct.TYPE_2__* @SYMBOL_OPS(%struct.symbol* %7)
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 0
  %10 = load i32 (%struct.symbol*)*, i32 (%struct.symbol*)** %9, align 8
  %11 = load %struct.symbol*, %struct.symbol** %3, align 8
  %12 = call i32 %10(%struct.symbol* %11)
  store i32 %12, i32* %2, align 4
  br label %16

13:                                               ; preds = %1, %1, %1, %1, %1, %1, %1, %1, %1, %1
  store i32 1, i32* %2, align 4
  br label %16

14:                                               ; preds = %1, %1, %1, %1, %1, %1, %1, %1, %1, %1
  store i32 0, i32* %2, align 4
  br label %16

15:                                               ; preds = %1
  store i32 1, i32* %2, align 4
  br label %16

16:                                               ; preds = %15, %14, %13, %6
  %17 = load i32, i32* %2, align 4
  ret i32 %17
}

declare dso_local i32 @SYMBOL_CLASS(%struct.symbol*) #1

declare dso_local %struct.TYPE_2__* @SYMBOL_OPS(%struct.symbol*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

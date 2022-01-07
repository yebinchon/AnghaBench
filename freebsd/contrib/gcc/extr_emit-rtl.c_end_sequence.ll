; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_emit-rtl.c_end_sequence.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_emit-rtl.c_end_sequence.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sequence_stack = type { %struct.sequence_stack*, i32, i32 }

@seq_stack = common dso_local global %struct.sequence_stack* null, align 8
@first_insn = common dso_local global i32 0, align 4
@last_insn = common dso_local global i32 0, align 4
@free_sequence_stack = common dso_local global %struct.sequence_stack* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @end_sequence() #0 {
  %1 = alloca %struct.sequence_stack*, align 8
  %2 = load %struct.sequence_stack*, %struct.sequence_stack** @seq_stack, align 8
  store %struct.sequence_stack* %2, %struct.sequence_stack** %1, align 8
  %3 = load %struct.sequence_stack*, %struct.sequence_stack** %1, align 8
  %4 = getelementptr inbounds %struct.sequence_stack, %struct.sequence_stack* %3, i32 0, i32 2
  %5 = load i32, i32* %4, align 4
  store i32 %5, i32* @first_insn, align 4
  %6 = load %struct.sequence_stack*, %struct.sequence_stack** %1, align 8
  %7 = getelementptr inbounds %struct.sequence_stack, %struct.sequence_stack* %6, i32 0, i32 1
  %8 = load i32, i32* %7, align 8
  store i32 %8, i32* @last_insn, align 4
  %9 = load %struct.sequence_stack*, %struct.sequence_stack** %1, align 8
  %10 = getelementptr inbounds %struct.sequence_stack, %struct.sequence_stack* %9, i32 0, i32 0
  %11 = load %struct.sequence_stack*, %struct.sequence_stack** %10, align 8
  store %struct.sequence_stack* %11, %struct.sequence_stack** @seq_stack, align 8
  %12 = load %struct.sequence_stack*, %struct.sequence_stack** %1, align 8
  %13 = call i32 @memset(%struct.sequence_stack* %12, i32 0, i32 16)
  %14 = load %struct.sequence_stack*, %struct.sequence_stack** @free_sequence_stack, align 8
  %15 = load %struct.sequence_stack*, %struct.sequence_stack** %1, align 8
  %16 = getelementptr inbounds %struct.sequence_stack, %struct.sequence_stack* %15, i32 0, i32 0
  store %struct.sequence_stack* %14, %struct.sequence_stack** %16, align 8
  %17 = load %struct.sequence_stack*, %struct.sequence_stack** %1, align 8
  store %struct.sequence_stack* %17, %struct.sequence_stack** @free_sequence_stack, align 8
  ret void
}

declare dso_local i32 @memset(%struct.sequence_stack*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

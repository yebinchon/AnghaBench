; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_cfgrtl.c_entry_of_function.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_cfgrtl.c_entry_of_function.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }

@n_basic_blocks = common dso_local global i64 0, align 8
@NUM_FIXED_BLOCKS = common dso_local global i64 0, align 8
@ENTRY_BLOCK_PTR = common dso_local global %struct.TYPE_2__* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @entry_of_function() #0 {
  %1 = load i64, i64* @n_basic_blocks, align 8
  %2 = load i64, i64* @NUM_FIXED_BLOCKS, align 8
  %3 = icmp sgt i64 %1, %2
  br i1 %3, label %4, label %9

4:                                                ; preds = %0
  %5 = load %struct.TYPE_2__*, %struct.TYPE_2__** @ENTRY_BLOCK_PTR, align 8
  %6 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 4
  %8 = call i32 @BB_HEAD(i32 %7)
  br label %11

9:                                                ; preds = %0
  %10 = call i32 (...) @get_insns()
  br label %11

11:                                               ; preds = %9, %4
  %12 = phi i32 [ %8, %4 ], [ %10, %9 ]
  ret i32 %12
}

declare dso_local i32 @BB_HEAD(i32) #1

declare dso_local i32 @get_insns(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

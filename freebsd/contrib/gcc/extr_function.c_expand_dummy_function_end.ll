; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_function.c_expand_dummy_function_end.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_function.c_expand_dummy_function_end.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@cfun = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @expand_dummy_function_end() #0 {
  br label %1

1:                                                ; preds = %4, %0
  %2 = call i64 (...) @in_sequence_p()
  %3 = icmp ne i64 %2, 0
  br i1 %3, label %4, label %6

4:                                                ; preds = %1
  %5 = call i32 (...) @end_sequence()
  br label %1

6:                                                ; preds = %1
  %7 = load i64, i64* @cfun, align 8
  %8 = call i32 @free_after_parsing(i64 %7)
  %9 = load i64, i64* @cfun, align 8
  %10 = call i32 @free_after_compilation(i64 %9)
  store i64 0, i64* @cfun, align 8
  ret void
}

declare dso_local i64 @in_sequence_p(...) #1

declare dso_local i32 @end_sequence(...) #1

declare dso_local i32 @free_after_parsing(i64) #1

declare dso_local i32 @free_after_compilation(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

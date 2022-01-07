; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_builtins.c_expand_builtin_apply_args.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_builtins.c_expand_builtin_apply_args.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@apply_args_value = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 ()* @expand_builtin_apply_args to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @expand_builtin_apply_args() #0 {
  %1 = alloca i64, align 8
  %2 = alloca i64, align 8
  %3 = alloca i64, align 8
  %4 = load i64, i64* @apply_args_value, align 8
  %5 = icmp ne i64 %4, 0
  br i1 %5, label %6, label %8

6:                                                ; preds = %0
  %7 = load i64, i64* @apply_args_value, align 8
  store i64 %7, i64* %1, align 8
  br label %21

8:                                                ; preds = %0
  %9 = call i32 (...) @start_sequence()
  %10 = call i64 (...) @expand_builtin_apply_args_1()
  store i64 %10, i64* %2, align 8
  %11 = call i64 (...) @get_insns()
  store i64 %11, i64* %3, align 8
  %12 = call i32 (...) @end_sequence()
  %13 = load i64, i64* %2, align 8
  store i64 %13, i64* @apply_args_value, align 8
  %14 = call i32 (...) @push_topmost_sequence()
  %15 = load i64, i64* %3, align 8
  %16 = call i32 (...) @entry_of_function()
  %17 = call i32 @NEXT_INSN(i32 %16)
  %18 = call i32 @emit_insn_before(i64 %15, i32 %17)
  %19 = call i32 (...) @pop_topmost_sequence()
  %20 = load i64, i64* %2, align 8
  store i64 %20, i64* %1, align 8
  br label %21

21:                                               ; preds = %8, %6
  %22 = load i64, i64* %1, align 8
  ret i64 %22
}

declare dso_local i32 @start_sequence(...) #1

declare dso_local i64 @expand_builtin_apply_args_1(...) #1

declare dso_local i64 @get_insns(...) #1

declare dso_local i32 @end_sequence(...) #1

declare dso_local i32 @push_topmost_sequence(...) #1

declare dso_local i32 @emit_insn_before(i64, i32) #1

declare dso_local i32 @NEXT_INSN(i32) #1

declare dso_local i32 @entry_of_function(...) #1

declare dso_local i32 @pop_topmost_sequence(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

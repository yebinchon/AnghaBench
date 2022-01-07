; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_c-decl.c_pop_file_scope.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_c-decl.c_pop_file_scope.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@current_scope = common dso_local global i64 0, align 8
@file_scope = common dso_local global i64 0, align 8
@pch_file = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @pop_file_scope() #0 {
  br label %1

1:                                                ; preds = %5, %0
  %2 = load i64, i64* @current_scope, align 8
  %3 = load i64, i64* @file_scope, align 8
  %4 = icmp ne i64 %2, %3
  br i1 %4, label %5, label %7

5:                                                ; preds = %1
  %6 = call i32 (...) @pop_scope()
  br label %1

7:                                                ; preds = %1
  %8 = call i32 (...) @finish_fname_decls()
  %9 = load i64, i64* @pch_file, align 8
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %13

11:                                               ; preds = %7
  %12 = call i32 (...) @c_common_write_pch()
  br label %17

13:                                               ; preds = %7
  %14 = call i32 (...) @pop_scope()
  store i64 0, i64* @file_scope, align 8
  %15 = call i32 (...) @maybe_apply_pending_pragma_weaks()
  %16 = call i32 (...) @cgraph_finalize_compilation_unit()
  br label %17

17:                                               ; preds = %13, %11
  ret void
}

declare dso_local i32 @pop_scope(...) #1

declare dso_local i32 @finish_fname_decls(...) #1

declare dso_local i32 @c_common_write_pch(...) #1

declare dso_local i32 @maybe_apply_pending_pragma_weaks(...) #1

declare dso_local i32 @cgraph_finalize_compilation_unit(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

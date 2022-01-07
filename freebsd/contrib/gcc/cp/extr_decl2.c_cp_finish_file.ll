; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/cp/extr_decl2.c_cp_finish_file.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/cp/extr_decl2.c_cp_finish_file.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@input_location = common dso_local global i32 0, align 4
@at_eof = common dso_local global i32 0, align 4
@current_class_type = common dso_local global i64 0, align 8
@decl_namespace_list = common dso_local global i64 0, align 8
@input_line = common dso_local global i32 0, align 4
@TV_VARCONST = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @cp_finish_file() #0 {
  %1 = alloca i32, align 4
  %2 = load i32, i32* @input_location, align 4
  store i32 %2, i32* %1, align 4
  store i32 1, i32* @at_eof, align 4
  %3 = call i32 (...) @global_bindings_p()
  %4 = icmp ne i32 %3, 0
  br i1 %4, label %5, label %11

5:                                                ; preds = %0
  %6 = load i64, i64* @current_class_type, align 8
  %7 = icmp ne i64 %6, 0
  br i1 %7, label %11, label %8

8:                                                ; preds = %5
  %9 = load i64, i64* @decl_namespace_list, align 8
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %12

11:                                               ; preds = %8, %5, %0
  br label %20

12:                                               ; preds = %8
  %13 = load i32, i32* @input_line, align 4
  %14 = sub nsw i32 %13, 1
  store i32 %14, i32* @input_line, align 4
  %15 = load i32, i32* @TV_VARCONST, align 4
  %16 = call i32 @timevar_push(i32 %15)
  %17 = call i32 (...) @emit_support_tinfos()
  %18 = call i32 @emit_instantiate_pending_templates(i32* %1)
  %19 = call i32 @emit_deferred(i32* %1)
  br label %20

20:                                               ; preds = %12, %11
  ret void
}

declare dso_local i32 @global_bindings_p(...) #1

declare dso_local i32 @timevar_push(i32) #1

declare dso_local i32 @emit_support_tinfos(...) #1

declare dso_local i32 @emit_instantiate_pending_templates(i32*) #1

declare dso_local i32 @emit_deferred(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

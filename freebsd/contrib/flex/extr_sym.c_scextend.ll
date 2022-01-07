; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/flex/extr_sym.c_scextend.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/flex/extr_sym.c_scextend.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@MAX_SCS_INCREMENT = common dso_local global i64 0, align 8
@current_max_scs = common dso_local global i32 0, align 4
@num_reallocs = common dso_local global i32 0, align 4
@scset = common dso_local global i32 0, align 4
@scbol = common dso_local global i32 0, align 4
@scxclu = common dso_local global i32 0, align 4
@sceof = common dso_local global i32 0, align 4
@scname = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @scextend() #0 {
  %1 = load i64, i64* @MAX_SCS_INCREMENT, align 8
  %2 = load i32, i32* @current_max_scs, align 4
  %3 = sext i32 %2 to i64
  %4 = add nsw i64 %3, %1
  %5 = trunc i64 %4 to i32
  store i32 %5, i32* @current_max_scs, align 4
  %6 = load i32, i32* @num_reallocs, align 4
  %7 = add nsw i32 %6, 1
  store i32 %7, i32* @num_reallocs, align 4
  %8 = load i32, i32* @scset, align 4
  %9 = load i32, i32* @current_max_scs, align 4
  %10 = call i32 @reallocate_integer_array(i32 %8, i32 %9)
  store i32 %10, i32* @scset, align 4
  %11 = load i32, i32* @scbol, align 4
  %12 = load i32, i32* @current_max_scs, align 4
  %13 = call i32 @reallocate_integer_array(i32 %11, i32 %12)
  store i32 %13, i32* @scbol, align 4
  %14 = load i32, i32* @scxclu, align 4
  %15 = load i32, i32* @current_max_scs, align 4
  %16 = call i32 @reallocate_integer_array(i32 %14, i32 %15)
  store i32 %16, i32* @scxclu, align 4
  %17 = load i32, i32* @sceof, align 4
  %18 = load i32, i32* @current_max_scs, align 4
  %19 = call i32 @reallocate_integer_array(i32 %17, i32 %18)
  store i32 %19, i32* @sceof, align 4
  %20 = load i32, i32* @scname, align 4
  %21 = load i32, i32* @current_max_scs, align 4
  %22 = call i32 @reallocate_char_ptr_array(i32 %20, i32 %21)
  store i32 %22, i32* @scname, align 4
  ret void
}

declare dso_local i32 @reallocate_integer_array(i32, i32) #1

declare dso_local i32 @reallocate_char_ptr_array(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

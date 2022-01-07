; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/flex/extr_tblcmp.c_expand_nxt_chk.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/flex/extr_tblcmp.c_expand_nxt_chk.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@current_max_xpairs = common dso_local global i32 0, align 4
@MAX_XPAIRS_INCREMENT = common dso_local global i32 0, align 4
@num_reallocs = common dso_local global i32 0, align 4
@nxt = common dso_local global i64 0, align 8
@chk = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @expand_nxt_chk() #0 {
  %1 = alloca i32, align 4
  %2 = load i32, i32* @current_max_xpairs, align 4
  store i32 %2, i32* %1, align 4
  %3 = load i32, i32* @MAX_XPAIRS_INCREMENT, align 4
  %4 = load i32, i32* @current_max_xpairs, align 4
  %5 = add nsw i32 %4, %3
  store i32 %5, i32* @current_max_xpairs, align 4
  %6 = load i32, i32* @num_reallocs, align 4
  %7 = add nsw i32 %6, 1
  store i32 %7, i32* @num_reallocs, align 4
  %8 = load i64, i64* @nxt, align 8
  %9 = load i32, i32* @current_max_xpairs, align 4
  %10 = call i64 @reallocate_integer_array(i64 %8, i32 %9)
  store i64 %10, i64* @nxt, align 8
  %11 = load i64, i64* @chk, align 8
  %12 = load i32, i32* @current_max_xpairs, align 4
  %13 = call i64 @reallocate_integer_array(i64 %11, i32 %12)
  store i64 %13, i64* @chk, align 8
  %14 = load i64, i64* @chk, align 8
  %15 = load i32, i32* %1, align 4
  %16 = sext i32 %15 to i64
  %17 = add nsw i64 %14, %16
  %18 = inttoptr i64 %17 to i8*
  %19 = load i32, i32* @MAX_XPAIRS_INCREMENT, align 4
  %20 = sext i32 %19 to i64
  %21 = mul i64 %20, 4
  %22 = call i32 @zero_out(i8* %18, i64 %21)
  ret void
}

declare dso_local i64 @reallocate_integer_array(i64, i32) #1

declare dso_local i32 @zero_out(i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

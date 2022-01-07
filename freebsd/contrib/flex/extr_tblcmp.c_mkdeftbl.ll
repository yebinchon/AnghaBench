; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/flex/extr_tblcmp.c_mkdeftbl.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/flex/extr_tblcmp.c_mkdeftbl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@lastdfa = common dso_local global i64 0, align 8
@jamstate = common dso_local global i64 0, align 8
@tblend = common dso_local global i64 0, align 8
@numecs = common dso_local global i64 0, align 8
@current_max_xpairs = common dso_local global i64 0, align 8
@end_of_buffer_state = common dso_local global i64 0, align 8
@nxt = common dso_local global i64* null, align 8
@chk = common dso_local global i64* null, align 8
@jambase = common dso_local global i64 0, align 8
@base = common dso_local global i64* null, align 8
@def = common dso_local global i64* null, align 8
@numtemps = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mkdeftbl() #0 {
  %1 = alloca i32, align 4
  %2 = load i64, i64* @lastdfa, align 8
  %3 = add i64 %2, 1
  store i64 %3, i64* @jamstate, align 8
  %4 = load i64, i64* @tblend, align 8
  %5 = add nsw i64 %4, 1
  store i64 %5, i64* @tblend, align 8
  br label %6

6:                                                ; preds = %12, %0
  %7 = load i64, i64* @tblend, align 8
  %8 = load i64, i64* @numecs, align 8
  %9 = add nsw i64 %7, %8
  %10 = load i64, i64* @current_max_xpairs, align 8
  %11 = icmp sge i64 %9, %10
  br i1 %11, label %12, label %14

12:                                               ; preds = %6
  %13 = call i32 (...) @expand_nxt_chk()
  br label %6

14:                                               ; preds = %6
  %15 = load i64, i64* @end_of_buffer_state, align 8
  %16 = load i64*, i64** @nxt, align 8
  %17 = load i64, i64* @tblend, align 8
  %18 = getelementptr inbounds i64, i64* %16, i64 %17
  store i64 %15, i64* %18, align 8
  %19 = load i64, i64* @jamstate, align 8
  %20 = load i64*, i64** @chk, align 8
  %21 = load i64, i64* @tblend, align 8
  %22 = getelementptr inbounds i64, i64* %20, i64 %21
  store i64 %19, i64* %22, align 8
  store i32 1, i32* %1, align 4
  br label %23

23:                                               ; preds = %42, %14
  %24 = load i32, i32* %1, align 4
  %25 = sext i32 %24 to i64
  %26 = load i64, i64* @numecs, align 8
  %27 = icmp sle i64 %25, %26
  br i1 %27, label %28, label %45

28:                                               ; preds = %23
  %29 = load i64*, i64** @nxt, align 8
  %30 = load i64, i64* @tblend, align 8
  %31 = load i32, i32* %1, align 4
  %32 = sext i32 %31 to i64
  %33 = add nsw i64 %30, %32
  %34 = getelementptr inbounds i64, i64* %29, i64 %33
  store i64 0, i64* %34, align 8
  %35 = load i64, i64* @jamstate, align 8
  %36 = load i64*, i64** @chk, align 8
  %37 = load i64, i64* @tblend, align 8
  %38 = load i32, i32* %1, align 4
  %39 = sext i32 %38 to i64
  %40 = add nsw i64 %37, %39
  %41 = getelementptr inbounds i64, i64* %36, i64 %40
  store i64 %35, i64* %41, align 8
  br label %42

42:                                               ; preds = %28
  %43 = load i32, i32* %1, align 4
  %44 = add nsw i32 %43, 1
  store i32 %44, i32* %1, align 4
  br label %23

45:                                               ; preds = %23
  %46 = load i64, i64* @tblend, align 8
  store i64 %46, i64* @jambase, align 8
  %47 = load i64, i64* @jambase, align 8
  %48 = load i64*, i64** @base, align 8
  %49 = load i64, i64* @jamstate, align 8
  %50 = getelementptr inbounds i64, i64* %48, i64 %49
  store i64 %47, i64* %50, align 8
  %51 = load i64*, i64** @def, align 8
  %52 = load i64, i64* @jamstate, align 8
  %53 = getelementptr inbounds i64, i64* %51, i64 %52
  store i64 0, i64* %53, align 8
  %54 = load i64, i64* @numecs, align 8
  %55 = load i64, i64* @tblend, align 8
  %56 = add nsw i64 %55, %54
  store i64 %56, i64* @tblend, align 8
  %57 = load i32, i32* @numtemps, align 4
  %58 = add nsw i32 %57, 1
  store i32 %58, i32* @numtemps, align 4
  ret void
}

declare dso_local i32 @expand_nxt_chk(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

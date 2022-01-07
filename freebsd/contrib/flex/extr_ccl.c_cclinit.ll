; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/flex/extr_ccl.c_cclinit.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/flex/extr_ccl.c_cclinit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@lastccl = common dso_local global i64 0, align 8
@current_maxccls = common dso_local global i64 0, align 8
@MAX_CCLS_INCREMENT = common dso_local global i64 0, align 8
@num_reallocs = common dso_local global i32 0, align 4
@cclmap = common dso_local global i64* null, align 8
@ccllen = common dso_local global i64* null, align 8
@cclng = common dso_local global i64* null, align 8
@ccl_has_nl = common dso_local global i32* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @cclinit() #0 {
  %1 = load i64, i64* @lastccl, align 8
  %2 = add nsw i64 %1, 1
  store i64 %2, i64* @lastccl, align 8
  %3 = load i64, i64* @current_maxccls, align 8
  %4 = icmp sge i64 %2, %3
  br i1 %4, label %5, label %23

5:                                                ; preds = %0
  %6 = load i64, i64* @MAX_CCLS_INCREMENT, align 8
  %7 = load i64, i64* @current_maxccls, align 8
  %8 = add nsw i64 %7, %6
  store i64 %8, i64* @current_maxccls, align 8
  %9 = load i32, i32* @num_reallocs, align 4
  %10 = add nsw i32 %9, 1
  store i32 %10, i32* @num_reallocs, align 4
  %11 = load i64*, i64** @cclmap, align 8
  %12 = load i64, i64* @current_maxccls, align 8
  %13 = call i64* @reallocate_integer_array(i64* %11, i64 %12)
  store i64* %13, i64** @cclmap, align 8
  %14 = load i64*, i64** @ccllen, align 8
  %15 = load i64, i64* @current_maxccls, align 8
  %16 = call i64* @reallocate_integer_array(i64* %14, i64 %15)
  store i64* %16, i64** @ccllen, align 8
  %17 = load i64*, i64** @cclng, align 8
  %18 = load i64, i64* @current_maxccls, align 8
  %19 = call i64* @reallocate_integer_array(i64* %17, i64 %18)
  store i64* %19, i64** @cclng, align 8
  %20 = load i32*, i32** @ccl_has_nl, align 8
  %21 = load i64, i64* @current_maxccls, align 8
  %22 = call i32* @reallocate_bool_array(i32* %20, i64 %21)
  store i32* %22, i32** @ccl_has_nl, align 8
  br label %23

23:                                               ; preds = %5, %0
  %24 = load i64, i64* @lastccl, align 8
  %25 = icmp eq i64 %24, 1
  br i1 %25, label %26, label %30

26:                                               ; preds = %23
  %27 = load i64*, i64** @cclmap, align 8
  %28 = load i64, i64* @lastccl, align 8
  %29 = getelementptr inbounds i64, i64* %27, i64 %28
  store i64 0, i64* %29, align 8
  br label %45

30:                                               ; preds = %23
  %31 = load i64*, i64** @cclmap, align 8
  %32 = load i64, i64* @lastccl, align 8
  %33 = sub nsw i64 %32, 1
  %34 = getelementptr inbounds i64, i64* %31, i64 %33
  %35 = load i64, i64* %34, align 8
  %36 = load i64*, i64** @ccllen, align 8
  %37 = load i64, i64* @lastccl, align 8
  %38 = sub nsw i64 %37, 1
  %39 = getelementptr inbounds i64, i64* %36, i64 %38
  %40 = load i64, i64* %39, align 8
  %41 = add nsw i64 %35, %40
  %42 = load i64*, i64** @cclmap, align 8
  %43 = load i64, i64* @lastccl, align 8
  %44 = getelementptr inbounds i64, i64* %42, i64 %43
  store i64 %41, i64* %44, align 8
  br label %45

45:                                               ; preds = %30, %26
  %46 = load i64*, i64** @ccllen, align 8
  %47 = load i64, i64* @lastccl, align 8
  %48 = getelementptr inbounds i64, i64* %46, i64 %47
  store i64 0, i64* %48, align 8
  %49 = load i64*, i64** @cclng, align 8
  %50 = load i64, i64* @lastccl, align 8
  %51 = getelementptr inbounds i64, i64* %49, i64 %50
  store i64 0, i64* %51, align 8
  %52 = load i32*, i32** @ccl_has_nl, align 8
  %53 = load i64, i64* @lastccl, align 8
  %54 = getelementptr inbounds i32, i32* %52, i64 %53
  store i32 0, i32* %54, align 4
  %55 = load i64, i64* @lastccl, align 8
  %56 = trunc i64 %55 to i32
  ret i32 %56
}

declare dso_local i64* @reallocate_integer_array(i64*, i64) #1

declare dso_local i32* @reallocate_bool_array(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

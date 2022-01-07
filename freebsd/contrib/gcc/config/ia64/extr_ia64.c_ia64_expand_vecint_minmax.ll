; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/config/ia64/extr_ia64.c_ia64_expand_vecint_minmax.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/config/ia64/extr_ia64.c_ia64_expand_vecint_minmax.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@V8QImode = common dso_local global i32 0, align 4
@V4HImode = common dso_local global i32 0, align 4
@VOIDmode = common dso_local global i32 0, align 4
@LTU = common dso_local global i32 0, align 4
@GTU = common dso_local global i32 0, align 4
@LT = common dso_local global i32 0, align 4
@GT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ia64_expand_vecint_minmax(i32 %0, i32 %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca [6 x i32], align 16
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store i32* %2, i32** %7, align 8
  %11 = load i32, i32* %6, align 4
  %12 = load i32, i32* @V8QImode, align 4
  %13 = icmp eq i32 %11, %12
  br i1 %13, label %14, label %21

14:                                               ; preds = %3
  %15 = load i32, i32* %5, align 4
  %16 = icmp eq i32 %15, 128
  br i1 %16, label %20, label %17

17:                                               ; preds = %14
  %18 = load i32, i32* %5, align 4
  %19 = icmp eq i32 %18, 129
  br i1 %19, label %20, label %21

20:                                               ; preds = %17, %14
  store i32 0, i32* %4, align 4
  br label %103

21:                                               ; preds = %17, %3
  %22 = load i32, i32* %6, align 4
  %23 = load i32, i32* @V4HImode, align 4
  %24 = icmp eq i32 %22, %23
  br i1 %24, label %25, label %32

25:                                               ; preds = %21
  %26 = load i32, i32* %5, align 4
  %27 = icmp eq i32 %26, 130
  br i1 %27, label %31, label %28

28:                                               ; preds = %25
  %29 = load i32, i32* %5, align 4
  %30 = icmp eq i32 %29, 131
  br i1 %30, label %31, label %32

31:                                               ; preds = %28, %25
  store i32 0, i32* %4, align 4
  br label %103

32:                                               ; preds = %28, %21
  %33 = load i32, i32* %6, align 4
  %34 = load i32, i32* @V4HImode, align 4
  %35 = icmp eq i32 %33, %34
  br i1 %35, label %36, label %64

36:                                               ; preds = %32
  %37 = load i32, i32* %5, align 4
  %38 = icmp eq i32 %37, 129
  br i1 %38, label %39, label %64

39:                                               ; preds = %36
  %40 = load i32, i32* %6, align 4
  %41 = call i32 @gen_reg_rtx(i32 %40)
  store i32 %41, i32* %10, align 4
  %42 = load i32, i32* %6, align 4
  %43 = load i32*, i32** %7, align 8
  %44 = getelementptr inbounds i32, i32* %43, i64 1
  %45 = load i32, i32* %44, align 4
  %46 = load i32*, i32** %7, align 8
  %47 = getelementptr inbounds i32, i32* %46, i64 2
  %48 = load i32, i32* %47, align 4
  %49 = call i32 @gen_rtx_US_MINUS(i32 %42, i32 %45, i32 %48)
  store i32 %49, i32* %9, align 4
  %50 = load i32, i32* @VOIDmode, align 4
  %51 = load i32, i32* %10, align 4
  %52 = load i32, i32* %9, align 4
  %53 = call i32 @gen_rtx_SET(i32 %50, i32 %51, i32 %52)
  %54 = call i32 @emit_insn(i32 %53)
  %55 = load i32*, i32** %7, align 8
  %56 = getelementptr inbounds i32, i32* %55, i64 0
  %57 = load i32, i32* %56, align 4
  %58 = load i32, i32* %10, align 4
  %59 = load i32*, i32** %7, align 8
  %60 = getelementptr inbounds i32, i32* %59, i64 2
  %61 = load i32, i32* %60, align 4
  %62 = call i32 @gen_addv4hi3(i32 %57, i32 %58, i32 %61)
  %63 = call i32 @emit_insn(i32 %62)
  store i32 1, i32* %4, align 4
  br label %103

64:                                               ; preds = %36, %32
  %65 = load i32*, i32** %7, align 8
  %66 = getelementptr inbounds i32, i32* %65, i64 0
  %67 = load i32, i32* %66, align 4
  %68 = getelementptr inbounds [6 x i32], [6 x i32]* %8, i64 0, i64 0
  store i32 %67, i32* %68, align 16
  %69 = load i32*, i32** %7, align 8
  %70 = getelementptr inbounds i32, i32* %69, i64 1
  %71 = load i32, i32* %70, align 4
  %72 = getelementptr inbounds [6 x i32], [6 x i32]* %8, i64 0, i64 1
  store i32 %71, i32* %72, align 4
  %73 = getelementptr inbounds [6 x i32], [6 x i32]* %8, i64 0, i64 4
  store i32 %71, i32* %73, align 16
  %74 = load i32*, i32** %7, align 8
  %75 = getelementptr inbounds i32, i32* %74, i64 2
  %76 = load i32, i32* %75, align 4
  %77 = getelementptr inbounds [6 x i32], [6 x i32]* %8, i64 0, i64 2
  store i32 %76, i32* %77, align 8
  %78 = getelementptr inbounds [6 x i32], [6 x i32]* %8, i64 0, i64 5
  store i32 %76, i32* %78, align 4
  %79 = load i32, i32* %5, align 4
  switch i32 %79, label %88 [
    i32 128, label %80
    i32 129, label %82
    i32 130, label %84
    i32 131, label %86
  ]

80:                                               ; preds = %64
  %81 = load i32, i32* @LTU, align 4
  store i32 %81, i32* %5, align 4
  br label %90

82:                                               ; preds = %64
  %83 = load i32, i32* @GTU, align 4
  store i32 %83, i32* %5, align 4
  br label %90

84:                                               ; preds = %64
  %85 = load i32, i32* @LT, align 4
  store i32 %85, i32* %5, align 4
  br label %90

86:                                               ; preds = %64
  %87 = load i32, i32* @GT, align 4
  store i32 %87, i32* %5, align 4
  br label %90

88:                                               ; preds = %64
  %89 = call i32 (...) @gcc_unreachable()
  br label %90

90:                                               ; preds = %88, %86, %84, %82, %80
  %91 = load i32, i32* %5, align 4
  %92 = load i32, i32* @VOIDmode, align 4
  %93 = load i32*, i32** %7, align 8
  %94 = getelementptr inbounds i32, i32* %93, i64 1
  %95 = load i32, i32* %94, align 4
  %96 = load i32*, i32** %7, align 8
  %97 = getelementptr inbounds i32, i32* %96, i64 2
  %98 = load i32, i32* %97, align 4
  %99 = call i32 @gen_rtx_fmt_ee(i32 %91, i32 %92, i32 %95, i32 %98)
  %100 = getelementptr inbounds [6 x i32], [6 x i32]* %8, i64 0, i64 3
  store i32 %99, i32* %100, align 4
  %101 = getelementptr inbounds [6 x i32], [6 x i32]* %8, i64 0, i64 0
  %102 = call i32 @ia64_expand_vecint_cmov(i32* %101)
  store i32 1, i32* %4, align 4
  br label %103

103:                                              ; preds = %90, %39, %31, %20
  %104 = load i32, i32* %4, align 4
  ret i32 %104
}

declare dso_local i32 @gen_reg_rtx(i32) #1

declare dso_local i32 @gen_rtx_US_MINUS(i32, i32, i32) #1

declare dso_local i32 @emit_insn(i32) #1

declare dso_local i32 @gen_rtx_SET(i32, i32, i32) #1

declare dso_local i32 @gen_addv4hi3(i32, i32, i32) #1

declare dso_local i32 @gcc_unreachable(...) #1

declare dso_local i32 @gen_rtx_fmt_ee(i32, i32, i32, i32) #1

declare dso_local i32 @ia64_expand_vecint_cmov(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

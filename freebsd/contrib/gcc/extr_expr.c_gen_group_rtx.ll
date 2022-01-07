; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_expr.c_gen_group_rtx.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_expr.c_gen_group_rtx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@PARALLEL = common dso_local global i64 0, align 8
@VOIDmode = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @gen_group_rtx(i64 %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i64*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  store i64 %0, i64* %2, align 8
  %8 = load i64, i64* %2, align 8
  %9 = call i64 @GET_CODE(i64 %8)
  %10 = load i64, i64* @PARALLEL, align 8
  %11 = icmp eq i64 %9, %10
  %12 = zext i1 %11 to i32
  %13 = call i32 @gcc_assert(i32 %12)
  %14 = load i64, i64* %2, align 8
  %15 = call i32 @XVECLEN(i64 %14, i32 0)
  store i32 %15, i32* %4, align 4
  %16 = load i32, i32* %4, align 4
  %17 = sext i32 %16 to i64
  %18 = mul i64 8, %17
  %19 = trunc i64 %18 to i32
  %20 = call i64* @alloca(i32 %19)
  store i64* %20, i64** %5, align 8
  %21 = load i64, i64* %2, align 8
  %22 = call i32 @XVECEXP(i64 %21, i32 0, i32 0)
  %23 = call i64 @XEXP(i32 %22, i32 0)
  %24 = icmp ne i64 %23, 0
  %25 = zext i1 %24 to i64
  %26 = select i1 %24, i32 0, i32 1
  store i32 %26, i32* %3, align 4
  %27 = load i32, i32* %3, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %32

29:                                               ; preds = %1
  %30 = load i64*, i64** %5, align 8
  %31 = getelementptr inbounds i64, i64* %30, i64 0
  store i64 0, i64* %31, align 8
  br label %32

32:                                               ; preds = %29, %1
  br label %33

33:                                               ; preds = %56, %32
  %34 = load i32, i32* %3, align 4
  %35 = load i32, i32* %4, align 4
  %36 = icmp slt i32 %34, %35
  br i1 %36, label %37, label %59

37:                                               ; preds = %33
  %38 = load i64, i64* %2, align 8
  %39 = load i32, i32* %3, align 4
  %40 = call i32 @XVECEXP(i64 %38, i32 0, i32 %39)
  %41 = call i64 @XEXP(i32 %40, i32 0)
  %42 = call i32 @GET_MODE(i64 %41)
  store i32 %42, i32* %6, align 4
  %43 = load i64, i64* %2, align 8
  %44 = load i32, i32* %3, align 4
  %45 = call i32 @XVECEXP(i64 %43, i32 0, i32 %44)
  %46 = call i64 @XEXP(i32 %45, i32 1)
  store i64 %46, i64* %7, align 8
  %47 = load i32, i32* @VOIDmode, align 4
  %48 = load i32, i32* %6, align 4
  %49 = call i32 @gen_reg_rtx(i32 %48)
  %50 = load i64, i64* %7, align 8
  %51 = call i64 @gen_rtx_EXPR_LIST(i32 %47, i32 %49, i64 %50)
  %52 = load i64*, i64** %5, align 8
  %53 = load i32, i32* %3, align 4
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds i64, i64* %52, i64 %54
  store i64 %51, i64* %55, align 8
  br label %56

56:                                               ; preds = %37
  %57 = load i32, i32* %3, align 4
  %58 = add nsw i32 %57, 1
  store i32 %58, i32* %3, align 4
  br label %33

59:                                               ; preds = %33
  %60 = load i64, i64* %2, align 8
  %61 = call i32 @GET_MODE(i64 %60)
  %62 = load i32, i32* %4, align 4
  %63 = load i64*, i64** %5, align 8
  %64 = call i32 @gen_rtvec_v(i32 %62, i64* %63)
  %65 = call i64 @gen_rtx_PARALLEL(i32 %61, i32 %64)
  ret i64 %65
}

declare dso_local i32 @gcc_assert(i32) #1

declare dso_local i64 @GET_CODE(i64) #1

declare dso_local i32 @XVECLEN(i64, i32) #1

declare dso_local i64* @alloca(i32) #1

declare dso_local i64 @XEXP(i32, i32) #1

declare dso_local i32 @XVECEXP(i64, i32, i32) #1

declare dso_local i32 @GET_MODE(i64) #1

declare dso_local i64 @gen_rtx_EXPR_LIST(i32, i32, i64) #1

declare dso_local i32 @gen_reg_rtx(i32) #1

declare dso_local i64 @gen_rtx_PARALLEL(i32, i32) #1

declare dso_local i32 @gen_rtvec_v(i32, i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

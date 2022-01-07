; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_explow.c_break_out_memory_refs.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_explow.c_break_out_memory_refs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@VOIDmode = common dso_local global i64 0, align 8
@PLUS = common dso_local global i64 0, align 8
@MINUS = common dso_local global i64 0, align 8
@MULT = common dso_local global i64 0, align 8
@Pmode = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i64)* @break_out_memory_refs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @break_out_memory_refs(i64 %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  store i64 %0, i64* %2, align 8
  %5 = load i64, i64* %2, align 8
  %6 = call i64 @MEM_P(i64 %5)
  %7 = icmp ne i64 %6, 0
  br i1 %7, label %21, label %8

8:                                                ; preds = %1
  %9 = load i64, i64* %2, align 8
  %10 = call i64 @CONSTANT_P(i64 %9)
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %26

12:                                               ; preds = %8
  %13 = load i64, i64* %2, align 8
  %14 = call i64 @CONSTANT_ADDRESS_P(i64 %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %26

16:                                               ; preds = %12
  %17 = load i64, i64* %2, align 8
  %18 = call i64 @GET_MODE(i64 %17)
  %19 = load i64, i64* @VOIDmode, align 8
  %20 = icmp ne i64 %18, %19
  br i1 %20, label %21, label %26

21:                                               ; preds = %16, %1
  %22 = load i64, i64* %2, align 8
  %23 = call i64 @GET_MODE(i64 %22)
  %24 = load i64, i64* %2, align 8
  %25 = call i64 @force_reg(i64 %23, i64 %24)
  store i64 %25, i64* %2, align 8
  br label %66

26:                                               ; preds = %16, %12, %8
  %27 = load i64, i64* %2, align 8
  %28 = call i64 @GET_CODE(i64 %27)
  %29 = load i64, i64* @PLUS, align 8
  %30 = icmp eq i64 %28, %29
  br i1 %30, label %41, label %31

31:                                               ; preds = %26
  %32 = load i64, i64* %2, align 8
  %33 = call i64 @GET_CODE(i64 %32)
  %34 = load i64, i64* @MINUS, align 8
  %35 = icmp eq i64 %33, %34
  br i1 %35, label %41, label %36

36:                                               ; preds = %31
  %37 = load i64, i64* %2, align 8
  %38 = call i64 @GET_CODE(i64 %37)
  %39 = load i64, i64* @MULT, align 8
  %40 = icmp eq i64 %38, %39
  br i1 %40, label %41, label %65

41:                                               ; preds = %36, %31, %26
  %42 = load i64, i64* %2, align 8
  %43 = call i64 @XEXP(i64 %42, i32 0)
  %44 = call i64 @break_out_memory_refs(i64 %43)
  store i64 %44, i64* %3, align 8
  %45 = load i64, i64* %2, align 8
  %46 = call i64 @XEXP(i64 %45, i32 1)
  %47 = call i64 @break_out_memory_refs(i64 %46)
  store i64 %47, i64* %4, align 8
  %48 = load i64, i64* %3, align 8
  %49 = load i64, i64* %2, align 8
  %50 = call i64 @XEXP(i64 %49, i32 0)
  %51 = icmp ne i64 %48, %50
  br i1 %51, label %57, label %52

52:                                               ; preds = %41
  %53 = load i64, i64* %4, align 8
  %54 = load i64, i64* %2, align 8
  %55 = call i64 @XEXP(i64 %54, i32 1)
  %56 = icmp ne i64 %53, %55
  br i1 %56, label %57, label %64

57:                                               ; preds = %52, %41
  %58 = load i64, i64* %2, align 8
  %59 = call i64 @GET_CODE(i64 %58)
  %60 = load i32, i32* @Pmode, align 4
  %61 = load i64, i64* %3, align 8
  %62 = load i64, i64* %4, align 8
  %63 = call i64 @gen_rtx_fmt_ee(i64 %59, i32 %60, i64 %61, i64 %62)
  store i64 %63, i64* %2, align 8
  br label %64

64:                                               ; preds = %57, %52
  br label %65

65:                                               ; preds = %64, %36
  br label %66

66:                                               ; preds = %65, %21
  %67 = load i64, i64* %2, align 8
  ret i64 %67
}

declare dso_local i64 @MEM_P(i64) #1

declare dso_local i64 @CONSTANT_P(i64) #1

declare dso_local i64 @CONSTANT_ADDRESS_P(i64) #1

declare dso_local i64 @GET_MODE(i64) #1

declare dso_local i64 @force_reg(i64, i64) #1

declare dso_local i64 @GET_CODE(i64) #1

declare dso_local i64 @XEXP(i64, i32) #1

declare dso_local i64 @gen_rtx_fmt_ee(i64, i32, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

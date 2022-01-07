; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_rtlanal.c_pure_call_p.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_rtlanal.c_pure_call_p.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@USE = common dso_local global i64 0, align 8
@BLKmode = common dso_local global i64 0, align 8
@SCRATCH = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @pure_call_p(i64 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  store i64 %0, i64* %3, align 8
  %7 = load i64, i64* %3, align 8
  %8 = call i32 @CALL_P(i64 %7)
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %10, label %14

10:                                               ; preds = %1
  %11 = load i64, i64* %3, align 8
  %12 = call i32 @CONST_OR_PURE_CALL_P(i64 %11)
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %15, label %14

14:                                               ; preds = %10, %1
  store i32 0, i32* %2, align 4
  br label %49

15:                                               ; preds = %10
  %16 = load i64, i64* %3, align 8
  %17 = call i64 @CALL_INSN_FUNCTION_USAGE(i64 %16)
  store i64 %17, i64* %4, align 8
  br label %18

18:                                               ; preds = %45, %15
  %19 = load i64, i64* %4, align 8
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %48

21:                                               ; preds = %18
  %22 = load i64, i64* %4, align 8
  %23 = call i64 @XEXP(i64 %22, i32 0)
  store i64 %23, i64* %5, align 8
  %24 = call i64 @GET_CODE(i64 %23)
  %25 = load i64, i64* @USE, align 8
  %26 = icmp eq i64 %24, %25
  br i1 %26, label %27, label %44

27:                                               ; preds = %21
  %28 = load i64, i64* %5, align 8
  %29 = call i64 @XEXP(i64 %28, i32 0)
  store i64 %29, i64* %6, align 8
  %30 = call i64 @MEM_P(i64 %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %44

32:                                               ; preds = %27
  %33 = load i64, i64* %6, align 8
  %34 = call i64 @GET_MODE(i64 %33)
  %35 = load i64, i64* @BLKmode, align 8
  %36 = icmp eq i64 %34, %35
  br i1 %36, label %37, label %44

37:                                               ; preds = %32
  %38 = load i64, i64* %6, align 8
  %39 = call i64 @XEXP(i64 %38, i32 0)
  %40 = call i64 @GET_CODE(i64 %39)
  %41 = load i64, i64* @SCRATCH, align 8
  %42 = icmp eq i64 %40, %41
  br i1 %42, label %43, label %44

43:                                               ; preds = %37
  store i32 1, i32* %2, align 4
  br label %49

44:                                               ; preds = %37, %32, %27, %21
  br label %45

45:                                               ; preds = %44
  %46 = load i64, i64* %4, align 8
  %47 = call i64 @XEXP(i64 %46, i32 1)
  store i64 %47, i64* %4, align 8
  br label %18

48:                                               ; preds = %18
  store i32 0, i32* %2, align 4
  br label %49

49:                                               ; preds = %48, %43, %14
  %50 = load i32, i32* %2, align 4
  ret i32 %50
}

declare dso_local i32 @CALL_P(i64) #1

declare dso_local i32 @CONST_OR_PURE_CALL_P(i64) #1

declare dso_local i64 @CALL_INSN_FUNCTION_USAGE(i64) #1

declare dso_local i64 @GET_CODE(i64) #1

declare dso_local i64 @XEXP(i64, i32) #1

declare dso_local i64 @MEM_P(i64) #1

declare dso_local i64 @GET_MODE(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

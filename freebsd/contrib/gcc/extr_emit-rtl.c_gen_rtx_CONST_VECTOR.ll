; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_emit-rtl.c_gen_rtx_CONST_VECTOR.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_emit-rtl.c_gen_rtx_CONST_VECTOR.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @gen_rtx_CONST_VECTOR(i32 %0, i32 %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  %10 = load i32, i32* %4, align 4
  %11 = call i32 @GET_MODE_INNER(i32 %10)
  store i32 %11, i32* %6, align 4
  %12 = load i32, i32* %4, align 4
  %13 = call i32 @GET_MODE_NUNITS(i32 %12)
  store i32 %13, i32* %7, align 4
  %14 = load i32, i32* %5, align 4
  %15 = load i32, i32* %7, align 4
  %16 = sub nsw i32 %15, 1
  %17 = call i64 @RTVEC_ELT(i32 %14, i32 %16)
  store i64 %17, i64* %8, align 8
  %18 = load i32, i32* %7, align 4
  %19 = sub nsw i32 %18, 2
  store i32 %19, i32* %9, align 4
  br label %20

20:                                               ; preds = %31, %2
  %21 = load i32, i32* %9, align 4
  %22 = icmp sge i32 %21, 0
  br i1 %22, label %23, label %34

23:                                               ; preds = %20
  %24 = load i32, i32* %5, align 4
  %25 = load i32, i32* %9, align 4
  %26 = call i64 @RTVEC_ELT(i32 %24, i32 %25)
  %27 = load i64, i64* %8, align 8
  %28 = icmp ne i64 %26, %27
  br i1 %28, label %29, label %30

29:                                               ; preds = %23
  br label %34

30:                                               ; preds = %23
  br label %31

31:                                               ; preds = %30
  %32 = load i32, i32* %9, align 4
  %33 = add nsw i32 %32, -1
  store i32 %33, i32* %9, align 4
  br label %20

34:                                               ; preds = %29, %20
  %35 = load i32, i32* %9, align 4
  %36 = icmp eq i32 %35, -1
  br i1 %36, label %37, label %55

37:                                               ; preds = %34
  %38 = load i64, i64* %8, align 8
  %39 = load i32, i32* %6, align 4
  %40 = call i64 @CONST0_RTX(i32 %39)
  %41 = icmp eq i64 %38, %40
  br i1 %41, label %42, label %45

42:                                               ; preds = %37
  %43 = load i32, i32* %4, align 4
  %44 = call i64 @CONST0_RTX(i32 %43)
  store i64 %44, i64* %3, align 8
  br label %59

45:                                               ; preds = %37
  %46 = load i64, i64* %8, align 8
  %47 = load i32, i32* %6, align 4
  %48 = call i64 @CONST1_RTX(i32 %47)
  %49 = icmp eq i64 %46, %48
  br i1 %49, label %50, label %53

50:                                               ; preds = %45
  %51 = load i32, i32* %4, align 4
  %52 = call i64 @CONST1_RTX(i32 %51)
  store i64 %52, i64* %3, align 8
  br label %59

53:                                               ; preds = %45
  br label %54

54:                                               ; preds = %53
  br label %55

55:                                               ; preds = %54, %34
  %56 = load i32, i32* %4, align 4
  %57 = load i32, i32* %5, align 4
  %58 = call i64 @gen_rtx_raw_CONST_VECTOR(i32 %56, i32 %57)
  store i64 %58, i64* %3, align 8
  br label %59

59:                                               ; preds = %55, %50, %42
  %60 = load i64, i64* %3, align 8
  ret i64 %60
}

declare dso_local i32 @GET_MODE_INNER(i32) #1

declare dso_local i32 @GET_MODE_NUNITS(i32) #1

declare dso_local i64 @RTVEC_ELT(i32, i32) #1

declare dso_local i64 @CONST0_RTX(i32) #1

declare dso_local i64 @CONST1_RTX(i32) #1

declare dso_local i64 @gen_rtx_raw_CONST_VECTOR(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

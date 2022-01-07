; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_genflags.c_max_operand_1.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_genflags.c_max_operand_1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@MATCH_OPERAND = common dso_local global i64 0, align 8
@MATCH_OPERATOR = common dso_local global i64 0, align 8
@MATCH_PARALLEL = common dso_local global i64 0, align 8
@max_opno = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i64)* @max_operand_1 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @max_operand_1(i64 %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca i64, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  store i64 %0, i64* %2, align 8
  %8 = load i64, i64* %2, align 8
  %9 = icmp eq i64 %8, 0
  br i1 %9, label %10, label %11

10:                                               ; preds = %1
  br label %88

11:                                               ; preds = %1
  %12 = load i64, i64* %2, align 8
  %13 = call i64 @GET_CODE(i64 %12)
  store i64 %13, i64* %3, align 8
  %14 = load i64, i64* %3, align 8
  %15 = load i64, i64* @MATCH_OPERAND, align 8
  %16 = icmp eq i64 %14, %15
  br i1 %16, label %25, label %17

17:                                               ; preds = %11
  %18 = load i64, i64* %3, align 8
  %19 = load i64, i64* @MATCH_OPERATOR, align 8
  %20 = icmp eq i64 %18, %19
  br i1 %20, label %25, label %21

21:                                               ; preds = %17
  %22 = load i64, i64* %3, align 8
  %23 = load i64, i64* @MATCH_PARALLEL, align 8
  %24 = icmp eq i64 %22, %23
  br i1 %24, label %25, label %30

25:                                               ; preds = %21, %17, %11
  %26 = load i32, i32* @max_opno, align 4
  %27 = load i64, i64* %2, align 8
  %28 = call i32 @XINT(i64 %27, i32 0)
  %29 = call i32 @MAX(i32 %26, i32 %28)
  store i32 %29, i32* @max_opno, align 4
  br label %30

30:                                               ; preds = %25, %21
  %31 = load i64, i64* %3, align 8
  %32 = call i8* @GET_RTX_FORMAT(i64 %31)
  store i8* %32, i8** %6, align 8
  %33 = load i64, i64* %3, align 8
  %34 = call i32 @GET_RTX_LENGTH(i64 %33)
  store i32 %34, i32* %5, align 4
  store i32 0, i32* %4, align 4
  br label %35

35:                                               ; preds = %85, %30
  %36 = load i32, i32* %4, align 4
  %37 = load i32, i32* %5, align 4
  %38 = icmp slt i32 %36, %37
  br i1 %38, label %39, label %88

39:                                               ; preds = %35
  %40 = load i8*, i8** %6, align 8
  %41 = load i32, i32* %4, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds i8, i8* %40, i64 %42
  %44 = load i8, i8* %43, align 1
  %45 = sext i8 %44 to i32
  %46 = icmp eq i32 %45, 101
  br i1 %46, label %55, label %47

47:                                               ; preds = %39
  %48 = load i8*, i8** %6, align 8
  %49 = load i32, i32* %4, align 4
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds i8, i8* %48, i64 %50
  %52 = load i8, i8* %51, align 1
  %53 = sext i8 %52 to i32
  %54 = icmp eq i32 %53, 117
  br i1 %54, label %55, label %59

55:                                               ; preds = %47, %39
  %56 = load i64, i64* %2, align 8
  %57 = load i32, i32* %4, align 4
  %58 = call i64 @XEXP(i64 %56, i32 %57)
  call void @max_operand_1(i64 %58)
  br label %84

59:                                               ; preds = %47
  %60 = load i8*, i8** %6, align 8
  %61 = load i32, i32* %4, align 4
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds i8, i8* %60, i64 %62
  %64 = load i8, i8* %63, align 1
  %65 = sext i8 %64 to i32
  %66 = icmp eq i32 %65, 69
  br i1 %66, label %67, label %83

67:                                               ; preds = %59
  store i32 0, i32* %7, align 4
  br label %68

68:                                               ; preds = %79, %67
  %69 = load i32, i32* %7, align 4
  %70 = load i64, i64* %2, align 8
  %71 = load i32, i32* %4, align 4
  %72 = call i32 @XVECLEN(i64 %70, i32 %71)
  %73 = icmp slt i32 %69, %72
  br i1 %73, label %74, label %82

74:                                               ; preds = %68
  %75 = load i64, i64* %2, align 8
  %76 = load i32, i32* %4, align 4
  %77 = load i32, i32* %7, align 4
  %78 = call i64 @XVECEXP(i64 %75, i32 %76, i32 %77)
  call void @max_operand_1(i64 %78)
  br label %79

79:                                               ; preds = %74
  %80 = load i32, i32* %7, align 4
  %81 = add nsw i32 %80, 1
  store i32 %81, i32* %7, align 4
  br label %68

82:                                               ; preds = %68
  br label %83

83:                                               ; preds = %82, %59
  br label %84

84:                                               ; preds = %83, %55
  br label %85

85:                                               ; preds = %84
  %86 = load i32, i32* %4, align 4
  %87 = add nsw i32 %86, 1
  store i32 %87, i32* %4, align 4
  br label %35

88:                                               ; preds = %10, %35
  ret void
}

declare dso_local i64 @GET_CODE(i64) #1

declare dso_local i32 @MAX(i32, i32) #1

declare dso_local i32 @XINT(i64, i32) #1

declare dso_local i8* @GET_RTX_FORMAT(i64) #1

declare dso_local i32 @GET_RTX_LENGTH(i64) #1

declare dso_local i64 @XEXP(i64, i32) #1

declare dso_local i32 @XVECLEN(i64, i32) #1

declare dso_local i64 @XVECEXP(i64, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

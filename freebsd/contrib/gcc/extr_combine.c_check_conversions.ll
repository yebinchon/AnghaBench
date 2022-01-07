; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_combine.c_check_conversions.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_combine.c_check_conversions.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@SUBREG = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i32)* @check_conversions to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @check_conversions(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  %8 = load i32, i32* %4, align 4
  %9 = call i64 @GET_CODE(i32 %8)
  %10 = load i64, i64* @SUBREG, align 8
  %11 = icmp eq i64 %9, %10
  br i1 %11, label %16, label %12

12:                                               ; preds = %2
  %13 = load i32, i32* %4, align 4
  %14 = call i64 @REG_P(i32 %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %37

16:                                               ; preds = %12, %2
  %17 = load i32, i32* %4, align 4
  %18 = call i64 @GET_CODE(i32 %17)
  %19 = load i64, i64* @SUBREG, align 8
  %20 = icmp eq i64 %18, %19
  br i1 %20, label %21, label %34

21:                                               ; preds = %16
  %22 = load i32, i32* %4, align 4
  %23 = call i64 @SUBREG_PROMOTED_VAR_P(i32 %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %34

25:                                               ; preds = %21
  %26 = load i32, i32* %4, align 4
  %27 = call i32 @SUBREG_REG(i32 %26)
  %28 = call i64 @REG_P(i32 %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %34

30:                                               ; preds = %25
  %31 = load i32, i32* %3, align 4
  %32 = load i32, i32* %4, align 4
  %33 = call i32 @record_promoted_value(i32 %31, i32 %32)
  br label %34

34:                                               ; preds = %30, %25, %21, %16
  %35 = load i32, i32* %4, align 4
  %36 = call i32 @record_truncated_value(i32 %35)
  br label %87

37:                                               ; preds = %12
  %38 = load i32, i32* %4, align 4
  %39 = call i64 @GET_CODE(i32 %38)
  %40 = call i8* @GET_RTX_FORMAT(i64 %39)
  store i8* %40, i8** %5, align 8
  store i32 0, i32* %6, align 4
  br label %41

41:                                               ; preds = %83, %37
  %42 = load i32, i32* %6, align 4
  %43 = load i32, i32* %4, align 4
  %44 = call i64 @GET_CODE(i32 %43)
  %45 = call i32 @GET_RTX_LENGTH(i64 %44)
  %46 = icmp slt i32 %42, %45
  br i1 %46, label %47, label %86

47:                                               ; preds = %41
  %48 = load i8*, i8** %5, align 8
  %49 = load i32, i32* %6, align 4
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds i8, i8* %48, i64 %50
  %52 = load i8, i8* %51, align 1
  %53 = sext i8 %52 to i32
  switch i32 %53, label %82 [
    i32 101, label %54
    i32 86, label %59
    i32 69, label %59
  ]

54:                                               ; preds = %47
  %55 = load i32, i32* %3, align 4
  %56 = load i32, i32* %4, align 4
  %57 = load i32, i32* %6, align 4
  %58 = call i32 @XEXP(i32 %56, i32 %57)
  call void @check_conversions(i32 %55, i32 %58)
  br label %82

59:                                               ; preds = %47, %47
  %60 = load i32, i32* %4, align 4
  %61 = load i32, i32* %6, align 4
  %62 = call i32 @XVEC(i32 %60, i32 %61)
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %81

64:                                               ; preds = %59
  store i32 0, i32* %7, align 4
  br label %65

65:                                               ; preds = %77, %64
  %66 = load i32, i32* %7, align 4
  %67 = load i32, i32* %4, align 4
  %68 = load i32, i32* %6, align 4
  %69 = call i32 @XVECLEN(i32 %67, i32 %68)
  %70 = icmp slt i32 %66, %69
  br i1 %70, label %71, label %80

71:                                               ; preds = %65
  %72 = load i32, i32* %3, align 4
  %73 = load i32, i32* %4, align 4
  %74 = load i32, i32* %6, align 4
  %75 = load i32, i32* %7, align 4
  %76 = call i32 @XVECEXP(i32 %73, i32 %74, i32 %75)
  call void @check_conversions(i32 %72, i32 %76)
  br label %77

77:                                               ; preds = %71
  %78 = load i32, i32* %7, align 4
  %79 = add nsw i32 %78, 1
  store i32 %79, i32* %7, align 4
  br label %65

80:                                               ; preds = %65
  br label %81

81:                                               ; preds = %80, %59
  br label %82

82:                                               ; preds = %47, %81, %54
  br label %83

83:                                               ; preds = %82
  %84 = load i32, i32* %6, align 4
  %85 = add nsw i32 %84, 1
  store i32 %85, i32* %6, align 4
  br label %41

86:                                               ; preds = %41
  br label %87

87:                                               ; preds = %86, %34
  ret void
}

declare dso_local i64 @GET_CODE(i32) #1

declare dso_local i64 @REG_P(i32) #1

declare dso_local i64 @SUBREG_PROMOTED_VAR_P(i32) #1

declare dso_local i32 @SUBREG_REG(i32) #1

declare dso_local i32 @record_promoted_value(i32, i32) #1

declare dso_local i32 @record_truncated_value(i32) #1

declare dso_local i8* @GET_RTX_FORMAT(i64) #1

declare dso_local i32 @GET_RTX_LENGTH(i64) #1

declare dso_local i32 @XEXP(i32, i32) #1

declare dso_local i32 @XVEC(i32, i32) #1

declare dso_local i32 @XVECLEN(i32, i32) #1

declare dso_local i32 @XVECEXP(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

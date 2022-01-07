; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_genrecog.c_find_operand.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_genrecog.c_find_operand.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@MATCH_SCRATCH = common dso_local global i64 0, align 8
@MATCH_OPERAND = common dso_local global i64 0, align 8
@MATCH_OPERATOR = common dso_local global i64 0, align 8
@MATCH_PARALLEL = common dso_local global i64 0, align 8
@NULL_RTX = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i64, i32, i64)* @find_operand to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @find_operand(i64 %0, i32 %1, i64 %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  store i64 %0, i64* %5, align 8
  store i32 %1, i32* %6, align 4
  store i64 %2, i64* %7, align 8
  %14 = load i64, i64* %5, align 8
  %15 = load i64, i64* %7, align 8
  %16 = icmp eq i64 %14, %15
  br i1 %16, label %17, label %19

17:                                               ; preds = %3
  %18 = load i64, i64* %7, align 8
  store i64 %18, i64* %4, align 8
  br label %111

19:                                               ; preds = %3
  %20 = load i64, i64* %5, align 8
  %21 = call i64 @GET_CODE(i64 %20)
  store i64 %21, i64* %9, align 8
  %22 = load i64, i64* %9, align 8
  %23 = load i64, i64* @MATCH_SCRATCH, align 8
  %24 = icmp eq i64 %22, %23
  br i1 %24, label %37, label %25

25:                                               ; preds = %19
  %26 = load i64, i64* %9, align 8
  %27 = load i64, i64* @MATCH_OPERAND, align 8
  %28 = icmp eq i64 %26, %27
  br i1 %28, label %37, label %29

29:                                               ; preds = %25
  %30 = load i64, i64* %9, align 8
  %31 = load i64, i64* @MATCH_OPERATOR, align 8
  %32 = icmp eq i64 %30, %31
  br i1 %32, label %37, label %33

33:                                               ; preds = %29
  %34 = load i64, i64* %9, align 8
  %35 = load i64, i64* @MATCH_PARALLEL, align 8
  %36 = icmp eq i64 %34, %35
  br i1 %36, label %37, label %44

37:                                               ; preds = %33, %29, %25, %19
  %38 = load i64, i64* %5, align 8
  %39 = call i32 @XINT(i64 %38, i32 0)
  %40 = load i32, i32* %6, align 4
  %41 = icmp eq i32 %39, %40
  br i1 %41, label %42, label %44

42:                                               ; preds = %37
  %43 = load i64, i64* %5, align 8
  store i64 %43, i64* %4, align 8
  br label %111

44:                                               ; preds = %37, %33
  %45 = load i64, i64* %9, align 8
  %46 = call i8* @GET_RTX_FORMAT(i64 %45)
  store i8* %46, i8** %8, align 8
  %47 = load i64, i64* %9, align 8
  %48 = call i32 @GET_RTX_LENGTH(i64 %47)
  store i32 %48, i32* %12, align 4
  store i32 0, i32* %10, align 4
  br label %49

49:                                               ; preds = %107, %44
  %50 = load i32, i32* %10, align 4
  %51 = load i32, i32* %12, align 4
  %52 = icmp slt i32 %50, %51
  br i1 %52, label %53, label %110

53:                                               ; preds = %49
  %54 = load i8*, i8** %8, align 8
  %55 = load i32, i32* %10, align 4
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds i8, i8* %54, i64 %56
  %58 = load i8, i8* %57, align 1
  %59 = sext i8 %58 to i32
  switch i32 %59, label %104 [
    i32 101, label %60
    i32 117, label %60
    i32 86, label %72
    i32 69, label %79
    i32 105, label %103
    i32 119, label %103
    i32 48, label %103
    i32 115, label %103
  ]

60:                                               ; preds = %53, %53
  %61 = load i64, i64* %5, align 8
  %62 = load i32, i32* %10, align 4
  %63 = call i64 @XEXP(i64 %61, i32 %62)
  %64 = load i32, i32* %6, align 4
  %65 = load i64, i64* %7, align 8
  %66 = call i64 @find_operand(i64 %63, i32 %64, i64 %65)
  store i64 %66, i64* %13, align 8
  %67 = load i64, i64* @NULL_RTX, align 8
  %68 = icmp ne i64 %66, %67
  br i1 %68, label %69, label %71

69:                                               ; preds = %60
  %70 = load i64, i64* %13, align 8
  store i64 %70, i64* %4, align 8
  br label %111

71:                                               ; preds = %60
  br label %106

72:                                               ; preds = %53
  %73 = load i64, i64* %5, align 8
  %74 = load i32, i32* %10, align 4
  %75 = call i32 @XVEC(i64 %73, i32 %74)
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %78, label %77

77:                                               ; preds = %72
  br label %106

78:                                               ; preds = %72
  br label %79

79:                                               ; preds = %53, %78
  store i32 0, i32* %11, align 4
  br label %80

80:                                               ; preds = %99, %79
  %81 = load i32, i32* %11, align 4
  %82 = load i64, i64* %5, align 8
  %83 = load i32, i32* %10, align 4
  %84 = call i32 @XVECLEN(i64 %82, i32 %83)
  %85 = icmp slt i32 %81, %84
  br i1 %85, label %86, label %102

86:                                               ; preds = %80
  %87 = load i64, i64* %5, align 8
  %88 = load i32, i32* %10, align 4
  %89 = load i32, i32* %11, align 4
  %90 = call i64 @XVECEXP(i64 %87, i32 %88, i32 %89)
  %91 = load i32, i32* %6, align 4
  %92 = load i64, i64* %7, align 8
  %93 = call i64 @find_operand(i64 %90, i32 %91, i64 %92)
  store i64 %93, i64* %13, align 8
  %94 = load i64, i64* @NULL_RTX, align 8
  %95 = icmp ne i64 %93, %94
  br i1 %95, label %96, label %98

96:                                               ; preds = %86
  %97 = load i64, i64* %13, align 8
  store i64 %97, i64* %4, align 8
  br label %111

98:                                               ; preds = %86
  br label %99

99:                                               ; preds = %98
  %100 = load i32, i32* %11, align 4
  %101 = add nsw i32 %100, 1
  store i32 %101, i32* %11, align 4
  br label %80

102:                                              ; preds = %80
  br label %106

103:                                              ; preds = %53, %53, %53, %53
  br label %106

104:                                              ; preds = %53
  %105 = call i32 (...) @gcc_unreachable()
  br label %106

106:                                              ; preds = %104, %103, %102, %77, %71
  br label %107

107:                                              ; preds = %106
  %108 = load i32, i32* %10, align 4
  %109 = add nsw i32 %108, 1
  store i32 %109, i32* %10, align 4
  br label %49

110:                                              ; preds = %49
  store i64 0, i64* %4, align 8
  br label %111

111:                                              ; preds = %110, %96, %69, %42, %17
  %112 = load i64, i64* %4, align 8
  ret i64 %112
}

declare dso_local i64 @GET_CODE(i64) #1

declare dso_local i32 @XINT(i64, i32) #1

declare dso_local i8* @GET_RTX_FORMAT(i64) #1

declare dso_local i32 @GET_RTX_LENGTH(i64) #1

declare dso_local i64 @XEXP(i64, i32) #1

declare dso_local i32 @XVEC(i64, i32) #1

declare dso_local i32 @XVECLEN(i64, i32) #1

declare dso_local i64 @XVECEXP(i64, i32, i32) #1

declare dso_local i32 @gcc_unreachable(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

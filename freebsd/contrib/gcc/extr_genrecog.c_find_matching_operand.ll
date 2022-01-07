; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_genrecog.c_find_matching_operand.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_genrecog.c_find_matching_operand.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@MATCH_OPERAND = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i32*, i32)* @find_matching_operand to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @find_matching_operand(i32* %0, i32 %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  store i32* %0, i32** %4, align 8
  store i32 %1, i32* %5, align 4
  %12 = load i32*, i32** %4, align 8
  %13 = call i64 @GET_CODE(i32* %12)
  store i64 %13, i64* %7, align 8
  %14 = load i64, i64* %7, align 8
  %15 = load i64, i64* @MATCH_OPERAND, align 8
  %16 = icmp eq i64 %14, %15
  br i1 %16, label %17, label %41

17:                                               ; preds = %2
  %18 = load i32*, i32** %4, align 8
  %19 = call i32* @XSTR(i32* %18, i32 2)
  %20 = getelementptr inbounds i32, i32* %19, i64 0
  %21 = load i32, i32* %20, align 4
  %22 = load i32, i32* %5, align 4
  %23 = add nsw i32 48, %22
  %24 = icmp eq i32 %21, %23
  br i1 %24, label %39, label %25

25:                                               ; preds = %17
  %26 = load i32*, i32** %4, align 8
  %27 = call i32* @XSTR(i32* %26, i32 2)
  %28 = getelementptr inbounds i32, i32* %27, i64 0
  %29 = load i32, i32* %28, align 4
  %30 = icmp eq i32 %29, 37
  br i1 %30, label %31, label %41

31:                                               ; preds = %25
  %32 = load i32*, i32** %4, align 8
  %33 = call i32* @XSTR(i32* %32, i32 2)
  %34 = getelementptr inbounds i32, i32* %33, i64 1
  %35 = load i32, i32* %34, align 4
  %36 = load i32, i32* %5, align 4
  %37 = add nsw i32 48, %36
  %38 = icmp eq i32 %35, %37
  br i1 %38, label %39, label %41

39:                                               ; preds = %31, %17
  %40 = load i32*, i32** %4, align 8
  store i32* %40, i32** %3, align 8
  br label %104

41:                                               ; preds = %31, %25, %2
  %42 = load i64, i64* %7, align 8
  %43 = call i8* @GET_RTX_FORMAT(i64 %42)
  store i8* %43, i8** %6, align 8
  %44 = load i64, i64* %7, align 8
  %45 = call i32 @GET_RTX_LENGTH(i64 %44)
  store i32 %45, i32* %10, align 4
  store i32 0, i32* %8, align 4
  br label %46

46:                                               ; preds = %100, %41
  %47 = load i32, i32* %8, align 4
  %48 = load i32, i32* %10, align 4
  %49 = icmp slt i32 %47, %48
  br i1 %49, label %50, label %103

50:                                               ; preds = %46
  %51 = load i8*, i8** %6, align 8
  %52 = load i32, i32* %8, align 4
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds i8, i8* %51, i64 %53
  %55 = load i8, i8* %54, align 1
  %56 = sext i8 %55 to i32
  switch i32 %56, label %97 [
    i32 101, label %57
    i32 117, label %57
    i32 86, label %67
    i32 69, label %74
    i32 105, label %96
    i32 119, label %96
    i32 48, label %96
    i32 115, label %96
  ]

57:                                               ; preds = %50, %50
  %58 = load i32*, i32** %4, align 8
  %59 = load i32, i32* %8, align 4
  %60 = call i32* @XEXP(i32* %58, i32 %59)
  %61 = load i32, i32* %5, align 4
  %62 = call i32* @find_matching_operand(i32* %60, i32 %61)
  store i32* %62, i32** %11, align 8
  %63 = icmp ne i32* %62, null
  br i1 %63, label %64, label %66

64:                                               ; preds = %57
  %65 = load i32*, i32** %11, align 8
  store i32* %65, i32** %3, align 8
  br label %104

66:                                               ; preds = %57
  br label %99

67:                                               ; preds = %50
  %68 = load i32*, i32** %4, align 8
  %69 = load i32, i32* %8, align 4
  %70 = call i32 @XVEC(i32* %68, i32 %69)
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %73, label %72

72:                                               ; preds = %67
  br label %99

73:                                               ; preds = %67
  br label %74

74:                                               ; preds = %50, %73
  store i32 0, i32* %9, align 4
  br label %75

75:                                               ; preds = %92, %74
  %76 = load i32, i32* %9, align 4
  %77 = load i32*, i32** %4, align 8
  %78 = load i32, i32* %8, align 4
  %79 = call i32 @XVECLEN(i32* %77, i32 %78)
  %80 = icmp slt i32 %76, %79
  br i1 %80, label %81, label %95

81:                                               ; preds = %75
  %82 = load i32*, i32** %4, align 8
  %83 = load i32, i32* %8, align 4
  %84 = load i32, i32* %9, align 4
  %85 = call i32* @XVECEXP(i32* %82, i32 %83, i32 %84)
  %86 = load i32, i32* %5, align 4
  %87 = call i32* @find_matching_operand(i32* %85, i32 %86)
  store i32* %87, i32** %11, align 8
  %88 = icmp ne i32* %87, null
  br i1 %88, label %89, label %91

89:                                               ; preds = %81
  %90 = load i32*, i32** %11, align 8
  store i32* %90, i32** %3, align 8
  br label %104

91:                                               ; preds = %81
  br label %92

92:                                               ; preds = %91
  %93 = load i32, i32* %9, align 4
  %94 = add nsw i32 %93, 1
  store i32 %94, i32* %9, align 4
  br label %75

95:                                               ; preds = %75
  br label %99

96:                                               ; preds = %50, %50, %50, %50
  br label %99

97:                                               ; preds = %50
  %98 = call i32 (...) @gcc_unreachable()
  br label %99

99:                                               ; preds = %97, %96, %95, %72, %66
  br label %100

100:                                              ; preds = %99
  %101 = load i32, i32* %8, align 4
  %102 = add nsw i32 %101, 1
  store i32 %102, i32* %8, align 4
  br label %46

103:                                              ; preds = %46
  store i32* null, i32** %3, align 8
  br label %104

104:                                              ; preds = %103, %89, %64, %39
  %105 = load i32*, i32** %3, align 8
  ret i32* %105
}

declare dso_local i64 @GET_CODE(i32*) #1

declare dso_local i32* @XSTR(i32*, i32) #1

declare dso_local i8* @GET_RTX_FORMAT(i64) #1

declare dso_local i32 @GET_RTX_LENGTH(i64) #1

declare dso_local i32* @XEXP(i32*, i32) #1

declare dso_local i32 @XVEC(i32*, i32) #1

declare dso_local i32 @XVECLEN(i32*, i32) #1

declare dso_local i32* @XVECEXP(i32*, i32, i32) #1

declare dso_local i32 @gcc_unreachable(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

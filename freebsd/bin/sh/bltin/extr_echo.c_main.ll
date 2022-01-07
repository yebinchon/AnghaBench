; ModuleID = '/home/carl/AnghaBench/freebsd/bin/sh/bltin/extr_echo.c_main.c'
source_filename = "/home/carl/AnghaBench/freebsd/bin/sh/bltin/extr_echo.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [3 x i8] c"-n\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"-e\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i8**, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8, align 1
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  store i32 0, i32* %10, align 4
  store i32 0, i32* %11, align 4
  %12 = load i8**, i8*** %5, align 8
  store i8** %12, i8*** %6, align 8
  %13 = load i32, i32* %4, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %18

15:                                               ; preds = %2
  %16 = load i8**, i8*** %6, align 8
  %17 = getelementptr inbounds i8*, i8** %16, i32 1
  store i8** %17, i8*** %6, align 8
  br label %18

18:                                               ; preds = %15, %2
  %19 = load i8**, i8*** %6, align 8
  %20 = load i8*, i8** %19, align 8
  store i8* %20, i8** %7, align 8
  %21 = icmp ne i8* %20, null
  br i1 %21, label %22, label %42

22:                                               ; preds = %18
  %23 = load i8*, i8** %7, align 8
  %24 = call i64 @equal(i8* %23, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0))
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %31

26:                                               ; preds = %22
  %27 = load i32, i32* %10, align 4
  %28 = add nsw i32 %27, 1
  store i32 %28, i32* %10, align 4
  %29 = load i8**, i8*** %6, align 8
  %30 = getelementptr inbounds i8*, i8** %29, i32 1
  store i8** %30, i8*** %6, align 8
  br label %41

31:                                               ; preds = %22
  %32 = load i8*, i8** %7, align 8
  %33 = call i64 @equal(i8* %32, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0))
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %40

35:                                               ; preds = %31
  %36 = load i32, i32* %11, align 4
  %37 = add nsw i32 %36, 1
  store i32 %37, i32* %11, align 4
  %38 = load i8**, i8*** %6, align 8
  %39 = getelementptr inbounds i8*, i8** %38, i32 1
  store i8** %39, i8*** %6, align 8
  br label %40

40:                                               ; preds = %35, %31
  br label %41

41:                                               ; preds = %40, %26
  br label %42

42:                                               ; preds = %41, %18
  br label %43

43:                                               ; preds = %115, %42
  %44 = load i8**, i8*** %6, align 8
  %45 = getelementptr inbounds i8*, i8** %44, i32 1
  store i8** %45, i8*** %6, align 8
  %46 = load i8*, i8** %44, align 8
  store i8* %46, i8** %7, align 8
  %47 = icmp ne i8* %46, null
  br i1 %47, label %48, label %116

48:                                               ; preds = %43
  br label %49

49:                                               ; preds = %106, %48
  %50 = load i8*, i8** %7, align 8
  %51 = getelementptr inbounds i8, i8* %50, i32 1
  store i8* %51, i8** %7, align 8
  %52 = load i8, i8* %50, align 1
  store i8 %52, i8* %8, align 1
  %53 = sext i8 %52 to i32
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %109

55:                                               ; preds = %49
  %56 = load i8, i8* %8, align 1
  %57 = sext i8 %56 to i32
  %58 = icmp eq i32 %57, 92
  br i1 %58, label %59, label %106

59:                                               ; preds = %55
  %60 = load i32, i32* %11, align 4
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %106

62:                                               ; preds = %59
  %63 = load i8*, i8** %7, align 8
  %64 = getelementptr inbounds i8, i8* %63, i32 1
  store i8* %64, i8** %7, align 8
  %65 = load i8, i8* %63, align 1
  %66 = sext i8 %65 to i32
  switch i32 %66, label %102 [
    i32 97, label %67
    i32 98, label %68
    i32 99, label %69
    i32 101, label %70
    i32 102, label %71
    i32 110, label %72
    i32 114, label %73
    i32 116, label %74
    i32 118, label %75
    i32 92, label %76
    i32 48, label %77
  ]

67:                                               ; preds = %62
  store i8 7, i8* %8, align 1
  br label %105

68:                                               ; preds = %62
  store i8 8, i8* %8, align 1
  br label %105

69:                                               ; preds = %62
  store i32 0, i32* %3, align 4
  br label %122

70:                                               ; preds = %62
  store i8 27, i8* %8, align 1
  br label %105

71:                                               ; preds = %62
  store i8 12, i8* %8, align 1
  br label %105

72:                                               ; preds = %62
  store i8 10, i8* %8, align 1
  br label %105

73:                                               ; preds = %62
  store i8 13, i8* %8, align 1
  br label %105

74:                                               ; preds = %62
  store i8 9, i8* %8, align 1
  br label %105

75:                                               ; preds = %62
  store i8 11, i8* %8, align 1
  br label %105

76:                                               ; preds = %62
  br label %105

77:                                               ; preds = %62
  store i8 0, i8* %8, align 1
  store i32 3, i32* %9, align 4
  br label %78

78:                                               ; preds = %90, %77
  %79 = load i32, i32* %9, align 4
  %80 = add nsw i32 %79, -1
  store i32 %80, i32* %9, align 4
  %81 = icmp sge i32 %80, 0
  br i1 %81, label %82, label %88

82:                                               ; preds = %78
  %83 = load i8*, i8** %7, align 8
  %84 = load i8, i8* %83, align 1
  %85 = sext i8 %84 to i32
  %86 = sub nsw i32 %85, 48
  %87 = icmp ult i32 %86, 8
  br label %88

88:                                               ; preds = %82, %78
  %89 = phi i1 [ false, %78 ], [ %87, %82 ]
  br i1 %89, label %90, label %101

90:                                               ; preds = %88
  %91 = load i8, i8* %8, align 1
  %92 = sext i8 %91 to i32
  %93 = shl i32 %92, 3
  %94 = load i8*, i8** %7, align 8
  %95 = getelementptr inbounds i8, i8* %94, i32 1
  store i8* %95, i8** %7, align 8
  %96 = load i8, i8* %94, align 1
  %97 = sext i8 %96 to i32
  %98 = sub nsw i32 %97, 48
  %99 = add nsw i32 %93, %98
  %100 = trunc i32 %99 to i8
  store i8 %100, i8* %8, align 1
  br label %78

101:                                              ; preds = %88
  br label %105

102:                                              ; preds = %62
  %103 = load i8*, i8** %7, align 8
  %104 = getelementptr inbounds i8, i8* %103, i32 -1
  store i8* %104, i8** %7, align 8
  br label %105

105:                                              ; preds = %102, %101, %76, %75, %74, %73, %72, %71, %70, %68, %67
  br label %106

106:                                              ; preds = %105, %59, %55
  %107 = load i8, i8* %8, align 1
  %108 = call i32 @putchar(i8 signext %107)
  br label %49

109:                                              ; preds = %49
  %110 = load i8**, i8*** %6, align 8
  %111 = load i8*, i8** %110, align 8
  %112 = icmp ne i8* %111, null
  br i1 %112, label %113, label %115

113:                                              ; preds = %109
  %114 = call i32 @putchar(i8 signext 32)
  br label %115

115:                                              ; preds = %113, %109
  br label %43

116:                                              ; preds = %43
  %117 = load i32, i32* %10, align 4
  %118 = icmp ne i32 %117, 0
  br i1 %118, label %121, label %119

119:                                              ; preds = %116
  %120 = call i32 @putchar(i8 signext 10)
  br label %121

121:                                              ; preds = %119, %116
  store i32 0, i32* %3, align 4
  br label %122

122:                                              ; preds = %121, %69
  %123 = load i32, i32* %3, align 4
  ret i32 %123
}

declare dso_local i64 @equal(i8*, i8*) #1

declare dso_local i32 @putchar(i8 signext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

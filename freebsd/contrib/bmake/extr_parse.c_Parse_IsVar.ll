; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/bmake/extr_parse.c_Parse_IsVar.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/bmake/extr_parse.c_Parse_IsVar.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@FALSE = common dso_local global i64 0, align 8
@TRUE = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @Parse_IsVar(i8* %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i8, align 1
  %6 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  %7 = load i64, i64* @FALSE, align 8
  store i64 %7, i64* %4, align 8
  store i32 0, i32* %6, align 4
  br label %8

8:                                                ; preds = %21, %1
  %9 = load i8*, i8** %3, align 8
  %10 = load i8, i8* %9, align 1
  %11 = sext i8 %10 to i32
  %12 = icmp eq i32 %11, 32
  br i1 %12, label %18, label %13

13:                                               ; preds = %8
  %14 = load i8*, i8** %3, align 8
  %15 = load i8, i8* %14, align 1
  %16 = sext i8 %15 to i32
  %17 = icmp eq i32 %16, 9
  br label %18

18:                                               ; preds = %13, %8
  %19 = phi i1 [ true, %8 ], [ %17, %13 ]
  br i1 %19, label %20, label %24

20:                                               ; preds = %18
  br label %21

21:                                               ; preds = %20
  %22 = load i8*, i8** %3, align 8
  %23 = getelementptr inbounds i8, i8* %22, i32 1
  store i8* %23, i8** %3, align 8
  br label %8

24:                                               ; preds = %18
  br label %25

25:                                               ; preds = %107, %56, %50, %39, %24
  %26 = load i8*, i8** %3, align 8
  %27 = getelementptr inbounds i8, i8* %26, i32 1
  store i8* %27, i8** %3, align 8
  %28 = load i8, i8* %26, align 1
  store i8 %28, i8* %5, align 1
  %29 = sext i8 %28 to i32
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %108

31:                                               ; preds = %25
  %32 = load i8, i8* %5, align 1
  %33 = sext i8 %32 to i32
  %34 = icmp eq i32 %33, 40
  br i1 %34, label %39, label %35

35:                                               ; preds = %31
  %36 = load i8, i8* %5, align 1
  %37 = sext i8 %36 to i32
  %38 = icmp eq i32 %37, 123
  br i1 %38, label %39, label %42

39:                                               ; preds = %35, %31
  %40 = load i32, i32* %6, align 4
  %41 = add nsw i32 %40, 1
  store i32 %41, i32* %6, align 4
  br label %25

42:                                               ; preds = %35
  %43 = load i8, i8* %5, align 1
  %44 = sext i8 %43 to i32
  %45 = icmp eq i32 %44, 41
  br i1 %45, label %50, label %46

46:                                               ; preds = %42
  %47 = load i8, i8* %5, align 1
  %48 = sext i8 %47 to i32
  %49 = icmp eq i32 %48, 125
  br i1 %49, label %50, label %53

50:                                               ; preds = %46, %42
  %51 = load i32, i32* %6, align 4
  %52 = add nsw i32 %51, -1
  store i32 %52, i32* %6, align 4
  br label %25

53:                                               ; preds = %46
  %54 = load i32, i32* %6, align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %57

56:                                               ; preds = %53
  br label %25

57:                                               ; preds = %53
  br label %58

58:                                               ; preds = %68, %57
  %59 = load i8, i8* %5, align 1
  %60 = sext i8 %59 to i32
  %61 = icmp eq i32 %60, 32
  br i1 %61, label %66, label %62

62:                                               ; preds = %58
  %63 = load i8, i8* %5, align 1
  %64 = sext i8 %63 to i32
  %65 = icmp eq i32 %64, 9
  br label %66

66:                                               ; preds = %62, %58
  %67 = phi i1 [ true, %58 ], [ %65, %62 ]
  br i1 %67, label %68, label %73

68:                                               ; preds = %66
  %69 = load i8*, i8** %3, align 8
  %70 = getelementptr inbounds i8, i8* %69, i32 1
  store i8* %70, i8** %3, align 8
  %71 = load i8, i8* %69, align 1
  store i8 %71, i8* %5, align 1
  %72 = load i64, i64* @TRUE, align 8
  store i64 %72, i64* %4, align 8
  br label %58

73:                                               ; preds = %66
  %74 = load i8, i8* %5, align 1
  %75 = sext i8 %74 to i32
  %76 = icmp eq i32 %75, 61
  br i1 %76, label %77, label %79

77:                                               ; preds = %73
  %78 = load i64, i64* @TRUE, align 8
  store i64 %78, i64* %2, align 8
  br label %110

79:                                               ; preds = %73
  %80 = load i8*, i8** %3, align 8
  %81 = load i8, i8* %80, align 1
  %82 = sext i8 %81 to i32
  %83 = icmp eq i32 %82, 61
  br i1 %83, label %84, label %102

84:                                               ; preds = %79
  %85 = load i8, i8* %5, align 1
  %86 = sext i8 %85 to i32
  %87 = icmp eq i32 %86, 43
  br i1 %87, label %100, label %88

88:                                               ; preds = %84
  %89 = load i8, i8* %5, align 1
  %90 = sext i8 %89 to i32
  %91 = icmp eq i32 %90, 58
  br i1 %91, label %100, label %92

92:                                               ; preds = %88
  %93 = load i8, i8* %5, align 1
  %94 = sext i8 %93 to i32
  %95 = icmp eq i32 %94, 63
  br i1 %95, label %100, label %96

96:                                               ; preds = %92
  %97 = load i8, i8* %5, align 1
  %98 = sext i8 %97 to i32
  %99 = icmp eq i32 %98, 33
  br i1 %99, label %100, label %102

100:                                              ; preds = %96, %92, %88, %84
  %101 = load i64, i64* @TRUE, align 8
  store i64 %101, i64* %2, align 8
  br label %110

102:                                              ; preds = %96, %79
  %103 = load i64, i64* %4, align 8
  %104 = icmp ne i64 %103, 0
  br i1 %104, label %105, label %107

105:                                              ; preds = %102
  %106 = load i64, i64* @FALSE, align 8
  store i64 %106, i64* %2, align 8
  br label %110

107:                                              ; preds = %102
  br label %25

108:                                              ; preds = %25
  %109 = load i64, i64* @FALSE, align 8
  store i64 %109, i64* %2, align 8
  br label %110

110:                                              ; preds = %108, %105, %100, %77
  %111 = load i64, i64* %2, align 8
  ret i64 %111
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

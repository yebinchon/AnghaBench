; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_tree-browser.c_TB_parent_eq.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_tree-browser.c_TB_parent_eq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i8*)* @TB_parent_eq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @TB_parent_eq(i8* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  store i8* %0, i8** %4, align 8
  store i8* %1, i8** %5, align 8
  %8 = load i8*, i8** %5, align 8
  %9 = ptrtoint i8* %8 to i64
  store i64 %9, i64* %6, align 8
  %10 = load i8*, i8** %4, align 8
  %11 = ptrtoint i8* %10 to i64
  store i64 %11, i64* %7, align 8
  %12 = load i8*, i8** %4, align 8
  %13 = icmp eq i8* %12, null
  br i1 %13, label %17, label %14

14:                                               ; preds = %2
  %15 = load i8*, i8** %5, align 8
  %16 = icmp eq i8* %15, null
  br i1 %16, label %17, label %18

17:                                               ; preds = %14, %2
  store i32 0, i32* %3, align 4
  br label %124

18:                                               ; preds = %14
  %19 = load i64, i64* %7, align 8
  %20 = call i64 @EXPRESSION_CLASS_P(i64 %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %123

22:                                               ; preds = %18
  %23 = load i64, i64* %7, align 8
  %24 = call i32 @TREE_CODE(i64 %23)
  %25 = call i32 @TREE_CODE_LENGTH(i32 %24)
  switch i32 %25, label %121 [
    i32 4, label %26
    i32 3, label %63
    i32 2, label %91
    i32 1, label %110
    i32 0, label %120
  ]

26:                                               ; preds = %22
  br label %27

27:                                               ; preds = %26
  %28 = load i64, i64* %6, align 8
  %29 = load i64, i64* %7, align 8
  %30 = call i32 (i64, i32, ...) bitcast (i32 (...)* @TREE_OPERAND to i32 (i64, i32, ...)*)(i64 %29, i32 0)
  %31 = sext i32 %30 to i64
  %32 = icmp eq i64 %28, %31
  br i1 %32, label %33, label %34

33:                                               ; preds = %27
  store i32 1, i32* %3, align 4
  br label %124

34:                                               ; preds = %27
  br label %35

35:                                               ; preds = %34
  br label %36

36:                                               ; preds = %35
  %37 = load i64, i64* %6, align 8
  %38 = load i64, i64* %7, align 8
  %39 = call i32 (i64, i32, ...) bitcast (i32 (...)* @TREE_OPERAND to i32 (i64, i32, ...)*)(i64 %38, i32 1)
  %40 = sext i32 %39 to i64
  %41 = icmp eq i64 %37, %40
  br i1 %41, label %42, label %43

42:                                               ; preds = %36
  store i32 1, i32* %3, align 4
  br label %124

43:                                               ; preds = %36
  br label %44

44:                                               ; preds = %43
  br label %45

45:                                               ; preds = %44
  %46 = load i64, i64* %6, align 8
  %47 = load i64, i64* %7, align 8
  %48 = call i32 (i64, i32, ...) bitcast (i32 (...)* @TREE_OPERAND to i32 (i64, i32, ...)*)(i64 %47, i32 2)
  %49 = sext i32 %48 to i64
  %50 = icmp eq i64 %46, %49
  br i1 %50, label %51, label %52

51:                                               ; preds = %45
  store i32 1, i32* %3, align 4
  br label %124

52:                                               ; preds = %45
  br label %53

53:                                               ; preds = %52
  br label %54

54:                                               ; preds = %53
  %55 = load i64, i64* %6, align 8
  %56 = load i64, i64* %7, align 8
  %57 = call i32 (i64, i32, ...) bitcast (i32 (...)* @TREE_OPERAND to i32 (i64, i32, ...)*)(i64 %56, i32 3)
  %58 = sext i32 %57 to i64
  %59 = icmp eq i64 %55, %58
  br i1 %59, label %60, label %61

60:                                               ; preds = %54
  store i32 1, i32* %3, align 4
  br label %124

61:                                               ; preds = %54
  br label %62

62:                                               ; preds = %61
  br label %122

63:                                               ; preds = %22
  br label %64

64:                                               ; preds = %63
  %65 = load i64, i64* %6, align 8
  %66 = load i64, i64* %7, align 8
  %67 = call i32 (i64, i32, ...) bitcast (i32 (...)* @TREE_OPERAND to i32 (i64, i32, ...)*)(i64 %66, i32 0)
  %68 = sext i32 %67 to i64
  %69 = icmp eq i64 %65, %68
  br i1 %69, label %70, label %71

70:                                               ; preds = %64
  store i32 1, i32* %3, align 4
  br label %124

71:                                               ; preds = %64
  br label %72

72:                                               ; preds = %71
  br label %73

73:                                               ; preds = %72
  %74 = load i64, i64* %6, align 8
  %75 = load i64, i64* %7, align 8
  %76 = call i32 (i64, i32, ...) bitcast (i32 (...)* @TREE_OPERAND to i32 (i64, i32, ...)*)(i64 %75, i32 1)
  %77 = sext i32 %76 to i64
  %78 = icmp eq i64 %74, %77
  br i1 %78, label %79, label %80

79:                                               ; preds = %73
  store i32 1, i32* %3, align 4
  br label %124

80:                                               ; preds = %73
  br label %81

81:                                               ; preds = %80
  br label %82

82:                                               ; preds = %81
  %83 = load i64, i64* %6, align 8
  %84 = load i64, i64* %7, align 8
  %85 = call i32 (i64, i32, ...) bitcast (i32 (...)* @TREE_OPERAND to i32 (i64, i32, ...)*)(i64 %84, i32 2)
  %86 = sext i32 %85 to i64
  %87 = icmp eq i64 %83, %86
  br i1 %87, label %88, label %89

88:                                               ; preds = %82
  store i32 1, i32* %3, align 4
  br label %124

89:                                               ; preds = %82
  br label %90

90:                                               ; preds = %89
  br label %122

91:                                               ; preds = %22
  br label %92

92:                                               ; preds = %91
  %93 = load i64, i64* %6, align 8
  %94 = load i64, i64* %7, align 8
  %95 = call i32 (i64, i32, ...) bitcast (i32 (...)* @TREE_OPERAND to i32 (i64, i32, ...)*)(i64 %94, i32 0)
  %96 = sext i32 %95 to i64
  %97 = icmp eq i64 %93, %96
  br i1 %97, label %98, label %99

98:                                               ; preds = %92
  store i32 1, i32* %3, align 4
  br label %124

99:                                               ; preds = %92
  br label %100

100:                                              ; preds = %99
  br label %101

101:                                              ; preds = %100
  %102 = load i64, i64* %6, align 8
  %103 = load i64, i64* %7, align 8
  %104 = call i32 (i64, i32, ...) bitcast (i32 (...)* @TREE_OPERAND to i32 (i64, i32, ...)*)(i64 %103, i32 1)
  %105 = sext i32 %104 to i64
  %106 = icmp eq i64 %102, %105
  br i1 %106, label %107, label %108

107:                                              ; preds = %101
  store i32 1, i32* %3, align 4
  br label %124

108:                                              ; preds = %101
  br label %109

109:                                              ; preds = %108
  br label %122

110:                                              ; preds = %22
  br label %111

111:                                              ; preds = %110
  %112 = load i64, i64* %6, align 8
  %113 = load i64, i64* %7, align 8
  %114 = call i32 (i64, i32, ...) bitcast (i32 (...)* @TREE_OPERAND to i32 (i64, i32, ...)*)(i64 %113, i32 0)
  %115 = sext i32 %114 to i64
  %116 = icmp eq i64 %112, %115
  br i1 %116, label %117, label %118

117:                                              ; preds = %111
  store i32 1, i32* %3, align 4
  br label %124

118:                                              ; preds = %111
  br label %119

119:                                              ; preds = %118
  br label %122

120:                                              ; preds = %22
  br label %121

121:                                              ; preds = %22, %120
  br label %122

122:                                              ; preds = %121, %119, %109, %90, %62
  br label %123

123:                                              ; preds = %122, %18
  store i32 0, i32* %3, align 4
  br label %124

124:                                              ; preds = %123, %117, %107, %98, %88, %79, %70, %60, %51, %42, %33, %17
  %125 = load i32, i32* %3, align 4
  ret i32 %125
}

declare dso_local i64 @EXPRESSION_CLASS_P(i64) #1

declare dso_local i32 @TREE_CODE_LENGTH(i32) #1

declare dso_local i32 @TREE_CODE(i64) #1

declare dso_local i32 @TREE_OPERAND(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

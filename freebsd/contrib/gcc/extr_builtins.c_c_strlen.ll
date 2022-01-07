; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_builtins.c_c_strlen.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_builtins.c_c_strlen.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@COND_EXPR = common dso_local global i64 0, align 8
@COMPOUND_EXPR = common dso_local global i64 0, align 8
@INTEGER_CST = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [41 x i8] c"offset outside bounds of constant string\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @c_strlen(i64 %0, i32 %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  store i64 %0, i64* %4, align 8
  store i32 %1, i32* %5, align 4
  %13 = load i64, i64* %4, align 8
  %14 = call i32 @STRIP_NOPS(i64 %13)
  %15 = load i64, i64* %4, align 8
  %16 = call i64 @TREE_CODE(i64 %15)
  %17 = load i64, i64* @COND_EXPR, align 8
  %18 = icmp eq i64 %16, %17
  br i1 %18, label %19, label %43

19:                                               ; preds = %2
  %20 = load i32, i32* %5, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %27, label %22

22:                                               ; preds = %19
  %23 = load i64, i64* %4, align 8
  %24 = call i64 @TREE_OPERAND(i64 %23, i32 0)
  %25 = call i32 @TREE_SIDE_EFFECTS(i64 %24)
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %43, label %27

27:                                               ; preds = %22, %19
  %28 = load i64, i64* %4, align 8
  %29 = call i64 @TREE_OPERAND(i64 %28, i32 1)
  %30 = load i32, i32* %5, align 4
  %31 = call i64 @c_strlen(i64 %29, i32 %30)
  store i64 %31, i64* %10, align 8
  %32 = load i64, i64* %4, align 8
  %33 = call i64 @TREE_OPERAND(i64 %32, i32 2)
  %34 = load i32, i32* %5, align 4
  %35 = call i64 @c_strlen(i64 %33, i32 %34)
  store i64 %35, i64* %11, align 8
  %36 = load i64, i64* %10, align 8
  %37 = load i64, i64* %11, align 8
  %38 = call i64 @tree_int_cst_equal(i64 %36, i64 %37)
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %42

40:                                               ; preds = %27
  %41 = load i64, i64* %10, align 8
  store i64 %41, i64* %3, align 8
  br label %132

42:                                               ; preds = %27
  br label %43

43:                                               ; preds = %42, %22, %2
  %44 = load i64, i64* %4, align 8
  %45 = call i64 @TREE_CODE(i64 %44)
  %46 = load i64, i64* @COMPOUND_EXPR, align 8
  %47 = icmp eq i64 %45, %46
  br i1 %47, label %48, label %61

48:                                               ; preds = %43
  %49 = load i32, i32* %5, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %56, label %51

51:                                               ; preds = %48
  %52 = load i64, i64* %4, align 8
  %53 = call i64 @TREE_OPERAND(i64 %52, i32 0)
  %54 = call i32 @TREE_SIDE_EFFECTS(i64 %53)
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %61, label %56

56:                                               ; preds = %51, %48
  %57 = load i64, i64* %4, align 8
  %58 = call i64 @TREE_OPERAND(i64 %57, i32 1)
  %59 = load i32, i32* %5, align 4
  %60 = call i64 @c_strlen(i64 %58, i32 %59)
  store i64 %60, i64* %3, align 8
  br label %132

61:                                               ; preds = %51, %43
  %62 = load i64, i64* %4, align 8
  %63 = call i64 @string_constant(i64 %62, i64* %6)
  store i64 %63, i64* %4, align 8
  %64 = load i64, i64* %4, align 8
  %65 = icmp eq i64 %64, 0
  br i1 %65, label %66, label %67

66:                                               ; preds = %61
  store i64 0, i64* %3, align 8
  br label %132

67:                                               ; preds = %61
  %68 = load i64, i64* %4, align 8
  %69 = call i32 @TREE_STRING_LENGTH(i64 %68)
  %70 = sub nsw i32 %69, 1
  store i32 %70, i32* %8, align 4
  %71 = load i64, i64* %4, align 8
  %72 = call i8* @TREE_STRING_POINTER(i64 %71)
  store i8* %72, i8** %9, align 8
  %73 = load i64, i64* %6, align 8
  %74 = icmp ne i64 %73, 0
  br i1 %74, label %75, label %103

75:                                               ; preds = %67
  %76 = load i64, i64* %6, align 8
  %77 = call i64 @TREE_CODE(i64 %76)
  %78 = load i64, i64* @INTEGER_CST, align 8
  %79 = icmp ne i64 %77, %78
  br i1 %79, label %80, label %103

80:                                               ; preds = %75
  store i32 0, i32* %12, align 4
  br label %81

81:                                               ; preds = %95, %80
  %82 = load i32, i32* %12, align 4
  %83 = load i32, i32* %8, align 4
  %84 = icmp slt i32 %82, %83
  br i1 %84, label %85, label %98

85:                                               ; preds = %81
  %86 = load i8*, i8** %9, align 8
  %87 = load i32, i32* %12, align 4
  %88 = sext i32 %87 to i64
  %89 = getelementptr inbounds i8, i8* %86, i64 %88
  %90 = load i8, i8* %89, align 1
  %91 = sext i8 %90 to i32
  %92 = icmp eq i32 %91, 0
  br i1 %92, label %93, label %94

93:                                               ; preds = %85
  store i64 0, i64* %3, align 8
  br label %132

94:                                               ; preds = %85
  br label %95

95:                                               ; preds = %94
  %96 = load i32, i32* %12, align 4
  %97 = add nsw i32 %96, 1
  store i32 %97, i32* %12, align 4
  br label %81

98:                                               ; preds = %81
  %99 = load i32, i32* %8, align 4
  %100 = call i32 @size_int(i32 %99)
  %101 = load i64, i64* %6, align 8
  %102 = call i64 @size_diffop(i32 %100, i64 %101)
  store i64 %102, i64* %3, align 8
  br label %132

103:                                              ; preds = %75, %67
  %104 = load i64, i64* %6, align 8
  %105 = icmp eq i64 %104, 0
  br i1 %105, label %106, label %107

106:                                              ; preds = %103
  store i32 0, i32* %7, align 4
  br label %116

107:                                              ; preds = %103
  %108 = load i64, i64* %6, align 8
  %109 = call i32 @host_integerp(i64 %108, i32 0)
  %110 = icmp ne i32 %109, 0
  br i1 %110, label %112, label %111

111:                                              ; preds = %107
  store i32 -1, i32* %7, align 4
  br label %115

112:                                              ; preds = %107
  %113 = load i64, i64* %6, align 8
  %114 = call i32 @tree_low_cst(i64 %113, i32 0)
  store i32 %114, i32* %7, align 4
  br label %115

115:                                              ; preds = %112, %111
  br label %116

116:                                              ; preds = %115, %106
  %117 = load i32, i32* %7, align 4
  %118 = icmp slt i32 %117, 0
  br i1 %118, label %123, label %119

119:                                              ; preds = %116
  %120 = load i32, i32* %7, align 4
  %121 = load i32, i32* %8, align 4
  %122 = icmp sgt i32 %120, %121
  br i1 %122, label %123, label %125

123:                                              ; preds = %119, %116
  %124 = call i32 @warning(i32 0, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0))
  store i64 0, i64* %3, align 8
  br label %132

125:                                              ; preds = %119
  %126 = load i8*, i8** %9, align 8
  %127 = load i32, i32* %7, align 4
  %128 = sext i32 %127 to i64
  %129 = getelementptr inbounds i8, i8* %126, i64 %128
  %130 = call i32 @strlen(i8* %129)
  %131 = call i64 @ssize_int(i32 %130)
  store i64 %131, i64* %3, align 8
  br label %132

132:                                              ; preds = %125, %123, %98, %93, %66, %56, %40
  %133 = load i64, i64* %3, align 8
  ret i64 %133
}

declare dso_local i32 @STRIP_NOPS(i64) #1

declare dso_local i64 @TREE_CODE(i64) #1

declare dso_local i32 @TREE_SIDE_EFFECTS(i64) #1

declare dso_local i64 @TREE_OPERAND(i64, i32) #1

declare dso_local i64 @tree_int_cst_equal(i64, i64) #1

declare dso_local i64 @string_constant(i64, i64*) #1

declare dso_local i32 @TREE_STRING_LENGTH(i64) #1

declare dso_local i8* @TREE_STRING_POINTER(i64) #1

declare dso_local i64 @size_diffop(i32, i64) #1

declare dso_local i32 @size_int(i32) #1

declare dso_local i32 @host_integerp(i64, i32) #1

declare dso_local i32 @tree_low_cst(i64, i32) #1

declare dso_local i32 @warning(i32, i8*) #1

declare dso_local i64 @ssize_int(i32) #1

declare dso_local i32 @strlen(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

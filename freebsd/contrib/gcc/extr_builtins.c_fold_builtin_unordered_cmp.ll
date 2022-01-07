; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_builtins.c_fold_builtin_unordered_cmp.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_builtins.c_fold_builtin_unordered_cmp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@NULL_TREE = common dso_local global i64 0, align 8
@REAL_TYPE = common dso_local global i32 0, align 4
@VOID_TYPE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [34 x i8] c"too few arguments to function %qs\00", align 1
@error_mark_node = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [35 x i8] c"too many arguments to function %qs\00", align 1
@INTEGER_TYPE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [44 x i8] c"non-floating-point argument to function %qs\00", align 1
@UNORDERED_EXPR = common dso_local global i32 0, align 4
@integer_zero_node = common dso_local global i32 0, align 4
@TRUTH_NOT_EXPR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i64, i64, i32, i32)* @fold_builtin_unordered_cmp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @fold_builtin_unordered_cmp(i64 %0, i64 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i64, align 8
  store i64 %0, i64* %6, align 8
  store i64 %1, i64* %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %19 = load i64, i64* %6, align 8
  %20 = call i64 @TREE_TYPE(i64 %19)
  %21 = call i64 @TREE_TYPE(i64 %20)
  store i64 %21, i64* %10, align 8
  %22 = load i64, i64* @NULL_TREE, align 8
  store i64 %22, i64* %18, align 8
  %23 = load i64, i64* %7, align 8
  %24 = load i32, i32* @REAL_TYPE, align 4
  %25 = load i32, i32* @REAL_TYPE, align 4
  %26 = load i32, i32* @VOID_TYPE, align 4
  %27 = call i32 @validate_arglist(i64 %23, i32 %24, i32 %25, i32 %26)
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %55, label %29

29:                                               ; preds = %4
  %30 = load i64, i64* %7, align 8
  %31 = icmp eq i64 %30, 0
  br i1 %31, label %36, label %32

32:                                               ; preds = %29
  %33 = load i64, i64* %7, align 8
  %34 = call i64 @TREE_CHAIN(i64 %33)
  %35 = icmp eq i64 %34, 0
  br i1 %35, label %36, label %42

36:                                               ; preds = %32, %29
  %37 = load i64, i64* %6, align 8
  %38 = call i32 @DECL_NAME(i64 %37)
  %39 = call i32 @IDENTIFIER_POINTER(i32 %38)
  %40 = call i32 @error(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0), i32 %39)
  %41 = load i64, i64* @error_mark_node, align 8
  store i64 %41, i64* %5, align 8
  br label %164

42:                                               ; preds = %32
  %43 = load i64, i64* %7, align 8
  %44 = call i64 @TREE_CHAIN(i64 %43)
  %45 = call i64 @TREE_CHAIN(i64 %44)
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %53

47:                                               ; preds = %42
  %48 = load i64, i64* %6, align 8
  %49 = call i32 @DECL_NAME(i64 %48)
  %50 = call i32 @IDENTIFIER_POINTER(i32 %49)
  %51 = call i32 @error(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0), i32 %50)
  %52 = load i64, i64* @error_mark_node, align 8
  store i64 %52, i64* %5, align 8
  br label %164

53:                                               ; preds = %42
  br label %54

54:                                               ; preds = %53
  br label %55

55:                                               ; preds = %54, %4
  %56 = load i64, i64* %7, align 8
  %57 = call i64 @TREE_VALUE(i64 %56)
  store i64 %57, i64* %12, align 8
  %58 = load i64, i64* %7, align 8
  %59 = call i64 @TREE_CHAIN(i64 %58)
  %60 = call i64 @TREE_VALUE(i64 %59)
  store i64 %60, i64* %13, align 8
  %61 = load i64, i64* %12, align 8
  %62 = call i64 @TREE_TYPE(i64 %61)
  store i64 %62, i64* %14, align 8
  %63 = load i64, i64* %13, align 8
  %64 = call i64 @TREE_TYPE(i64 %63)
  store i64 %64, i64* %15, align 8
  %65 = load i64, i64* %14, align 8
  %66 = call i32 @TREE_CODE(i64 %65)
  store i32 %66, i32* %16, align 4
  %67 = load i64, i64* %15, align 8
  %68 = call i32 @TREE_CODE(i64 %67)
  store i32 %68, i32* %17, align 4
  %69 = load i32, i32* %16, align 4
  %70 = load i32, i32* @REAL_TYPE, align 4
  %71 = icmp eq i32 %69, %70
  br i1 %71, label %72, label %88

72:                                               ; preds = %55
  %73 = load i32, i32* %17, align 4
  %74 = load i32, i32* @REAL_TYPE, align 4
  %75 = icmp eq i32 %73, %74
  br i1 %75, label %76, label %88

76:                                               ; preds = %72
  %77 = load i64, i64* %14, align 8
  %78 = call i64 @TYPE_PRECISION(i64 %77)
  %79 = load i64, i64* %15, align 8
  %80 = call i64 @TYPE_PRECISION(i64 %79)
  %81 = icmp sge i64 %78, %80
  br i1 %81, label %82, label %84

82:                                               ; preds = %76
  %83 = load i64, i64* %14, align 8
  br label %86

84:                                               ; preds = %76
  %85 = load i64, i64* %15, align 8
  br label %86

86:                                               ; preds = %84, %82
  %87 = phi i64 [ %83, %82 ], [ %85, %84 ]
  store i64 %87, i64* %18, align 8
  br label %116

88:                                               ; preds = %72, %55
  %89 = load i32, i32* %16, align 4
  %90 = load i32, i32* @REAL_TYPE, align 4
  %91 = icmp eq i32 %89, %90
  br i1 %91, label %92, label %98

92:                                               ; preds = %88
  %93 = load i32, i32* %17, align 4
  %94 = load i32, i32* @INTEGER_TYPE, align 4
  %95 = icmp eq i32 %93, %94
  br i1 %95, label %96, label %98

96:                                               ; preds = %92
  %97 = load i64, i64* %14, align 8
  store i64 %97, i64* %18, align 8
  br label %115

98:                                               ; preds = %92, %88
  %99 = load i32, i32* %16, align 4
  %100 = load i32, i32* @INTEGER_TYPE, align 4
  %101 = icmp eq i32 %99, %100
  br i1 %101, label %102, label %108

102:                                              ; preds = %98
  %103 = load i32, i32* %17, align 4
  %104 = load i32, i32* @REAL_TYPE, align 4
  %105 = icmp eq i32 %103, %104
  br i1 %105, label %106, label %108

106:                                              ; preds = %102
  %107 = load i64, i64* %15, align 8
  store i64 %107, i64* %18, align 8
  br label %114

108:                                              ; preds = %102, %98
  %109 = load i64, i64* %6, align 8
  %110 = call i32 @DECL_NAME(i64 %109)
  %111 = call i32 @IDENTIFIER_POINTER(i32 %110)
  %112 = call i32 @error(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.2, i64 0, i64 0), i32 %111)
  %113 = load i64, i64* @error_mark_node, align 8
  store i64 %113, i64* %5, align 8
  br label %164

114:                                              ; preds = %106
  br label %115

115:                                              ; preds = %114, %96
  br label %116

116:                                              ; preds = %115, %86
  %117 = load i64, i64* %18, align 8
  %118 = load i64, i64* %12, align 8
  %119 = call i64 @fold_convert(i64 %117, i64 %118)
  store i64 %119, i64* %12, align 8
  %120 = load i64, i64* %18, align 8
  %121 = load i64, i64* %13, align 8
  %122 = call i64 @fold_convert(i64 %120, i64 %121)
  store i64 %122, i64* %13, align 8
  %123 = load i32, i32* %8, align 4
  %124 = load i32, i32* @UNORDERED_EXPR, align 4
  %125 = icmp eq i32 %123, %124
  br i1 %125, label %126, label %144

126:                                              ; preds = %116
  %127 = load i64, i64* %12, align 8
  %128 = call i64 @TREE_TYPE(i64 %127)
  %129 = call i32 @TYPE_MODE(i64 %128)
  %130 = call i64 @HONOR_NANS(i32 %129)
  %131 = icmp ne i64 %130, 0
  br i1 %131, label %138, label %132

132:                                              ; preds = %126
  %133 = load i64, i64* %10, align 8
  %134 = load i32, i32* @integer_zero_node, align 4
  %135 = load i64, i64* %12, align 8
  %136 = load i64, i64* %13, align 8
  %137 = call i64 @omit_two_operands(i64 %133, i32 %134, i64 %135, i64 %136)
  store i64 %137, i64* %5, align 8
  br label %164

138:                                              ; preds = %126
  %139 = load i32, i32* @UNORDERED_EXPR, align 4
  %140 = load i64, i64* %10, align 8
  %141 = load i64, i64* %12, align 8
  %142 = load i64, i64* %13, align 8
  %143 = call i64 @fold_build2(i32 %139, i64 %140, i64 %141, i64 %142)
  store i64 %143, i64* %5, align 8
  br label %164

144:                                              ; preds = %116
  %145 = load i64, i64* %12, align 8
  %146 = call i64 @TREE_TYPE(i64 %145)
  %147 = call i32 @TYPE_MODE(i64 %146)
  %148 = call i64 @HONOR_NANS(i32 %147)
  %149 = icmp ne i64 %148, 0
  br i1 %149, label %150, label %152

150:                                              ; preds = %144
  %151 = load i32, i32* %8, align 4
  br label %154

152:                                              ; preds = %144
  %153 = load i32, i32* %9, align 4
  br label %154

154:                                              ; preds = %152, %150
  %155 = phi i32 [ %151, %150 ], [ %153, %152 ]
  store i32 %155, i32* %11, align 4
  %156 = load i32, i32* @TRUTH_NOT_EXPR, align 4
  %157 = load i64, i64* %10, align 8
  %158 = load i32, i32* %11, align 4
  %159 = load i64, i64* %10, align 8
  %160 = load i64, i64* %12, align 8
  %161 = load i64, i64* %13, align 8
  %162 = call i64 @fold_build2(i32 %158, i64 %159, i64 %160, i64 %161)
  %163 = call i64 @fold_build1(i32 %156, i64 %157, i64 %162)
  store i64 %163, i64* %5, align 8
  br label %164

164:                                              ; preds = %154, %138, %132, %108, %47, %36
  %165 = load i64, i64* %5, align 8
  ret i64 %165
}

declare dso_local i64 @TREE_TYPE(i64) #1

declare dso_local i32 @validate_arglist(i64, i32, i32, i32) #1

declare dso_local i64 @TREE_CHAIN(i64) #1

declare dso_local i32 @error(i8*, i32) #1

declare dso_local i32 @IDENTIFIER_POINTER(i32) #1

declare dso_local i32 @DECL_NAME(i64) #1

declare dso_local i64 @TREE_VALUE(i64) #1

declare dso_local i32 @TREE_CODE(i64) #1

declare dso_local i64 @TYPE_PRECISION(i64) #1

declare dso_local i64 @fold_convert(i64, i64) #1

declare dso_local i64 @HONOR_NANS(i32) #1

declare dso_local i32 @TYPE_MODE(i64) #1

declare dso_local i64 @omit_two_operands(i64, i32, i64, i64) #1

declare dso_local i64 @fold_build2(i32, i64, i64, i64) #1

declare dso_local i64 @fold_build1(i32, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

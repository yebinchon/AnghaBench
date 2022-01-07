; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_c-common.c_pointer_int_sum.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_c-common.c_pointer_int_sum.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@VOID_TYPE = common dso_local global i64 0, align 8
@pedantic = common dso_local global i64 0, align 8
@warn_pointer_arith = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [46 x i8] c"pointer of type %<void *%> used in arithmetic\00", align 1
@integer_one_node = common dso_local global i32 0, align 4
@FUNCTION_TYPE = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [41 x i8] c"pointer to a function used in arithmetic\00", align 1
@METHOD_TYPE = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [46 x i8] c"pointer to member function used in arithmetic\00", align 1
@PLUS_EXPR = common dso_local global i64 0, align 8
@MINUS_EXPR = common dso_local global i64 0, align 8
@INTEGER_TYPE = common dso_local global i64 0, align 8
@sizetype = common dso_local global i32 0, align 4
@MULT_EXPR = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @pointer_int_sum(i32 %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %12 = load i32, i32* %5, align 4
  %13 = call i32 @TREE_TYPE(i32 %12)
  store i32 %13, i32* %9, align 4
  %14 = load i32, i32* %9, align 4
  %15 = call i32 @TREE_TYPE(i32 %14)
  %16 = call i64 @TREE_CODE(i32 %15)
  %17 = load i64, i64* @VOID_TYPE, align 8
  %18 = icmp eq i64 %16, %17
  br i1 %18, label %19, label %29

19:                                               ; preds = %3
  %20 = load i64, i64* @pedantic, align 8
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %25, label %22

22:                                               ; preds = %19
  %23 = load i64, i64* @warn_pointer_arith, align 8
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %27

25:                                               ; preds = %22, %19
  %26 = call i32 @pedwarn(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str, i64 0, i64 0))
  br label %27

27:                                               ; preds = %25, %22
  %28 = load i32, i32* @integer_one_node, align 4
  store i32 %28, i32* %7, align 4
  br label %67

29:                                               ; preds = %3
  %30 = load i32, i32* %9, align 4
  %31 = call i32 @TREE_TYPE(i32 %30)
  %32 = call i64 @TREE_CODE(i32 %31)
  %33 = load i64, i64* @FUNCTION_TYPE, align 8
  %34 = icmp eq i64 %32, %33
  br i1 %34, label %35, label %45

35:                                               ; preds = %29
  %36 = load i64, i64* @pedantic, align 8
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %41, label %38

38:                                               ; preds = %35
  %39 = load i64, i64* @warn_pointer_arith, align 8
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %43

41:                                               ; preds = %38, %35
  %42 = call i32 @pedwarn(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.1, i64 0, i64 0))
  br label %43

43:                                               ; preds = %41, %38
  %44 = load i32, i32* @integer_one_node, align 4
  store i32 %44, i32* %7, align 4
  br label %66

45:                                               ; preds = %29
  %46 = load i32, i32* %9, align 4
  %47 = call i32 @TREE_TYPE(i32 %46)
  %48 = call i64 @TREE_CODE(i32 %47)
  %49 = load i64, i64* @METHOD_TYPE, align 8
  %50 = icmp eq i64 %48, %49
  br i1 %50, label %51, label %61

51:                                               ; preds = %45
  %52 = load i64, i64* @pedantic, align 8
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %57, label %54

54:                                               ; preds = %51
  %55 = load i64, i64* @warn_pointer_arith, align 8
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %59

57:                                               ; preds = %54, %51
  %58 = call i32 @pedwarn(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.2, i64 0, i64 0))
  br label %59

59:                                               ; preds = %57, %54
  %60 = load i32, i32* @integer_one_node, align 4
  store i32 %60, i32* %7, align 4
  br label %65

61:                                               ; preds = %45
  %62 = load i32, i32* %9, align 4
  %63 = call i32 @TREE_TYPE(i32 %62)
  %64 = call i32 @size_in_bytes(i32 %63)
  store i32 %64, i32* %7, align 4
  br label %65

65:                                               ; preds = %61, %59
  br label %66

66:                                               ; preds = %65, %43
  br label %67

67:                                               ; preds = %66, %27
  %68 = call i32 (...) @fold_defer_overflow_warnings()
  %69 = load i32, i32* %6, align 4
  %70 = call i64 @TREE_CODE(i32 %69)
  %71 = load i64, i64* @PLUS_EXPR, align 8
  %72 = icmp eq i64 %70, %71
  br i1 %72, label %78, label %73

73:                                               ; preds = %67
  %74 = load i32, i32* %6, align 4
  %75 = call i64 @TREE_CODE(i32 %74)
  %76 = load i64, i64* @MINUS_EXPR, align 8
  %77 = icmp eq i64 %75, %76
  br i1 %77, label %78, label %143

78:                                               ; preds = %73, %67
  %79 = load i32, i32* %6, align 4
  %80 = call i64 @TREE_CONSTANT(i32 %79)
  %81 = icmp ne i64 %80, 0
  br i1 %81, label %143, label %82

82:                                               ; preds = %78
  %83 = load i32, i32* %6, align 4
  %84 = call i32 @TREE_OPERAND(i32 %83, i32 1)
  %85 = call i64 @TREE_CONSTANT(i32 %84)
  %86 = icmp ne i64 %85, 0
  br i1 %86, label %87, label %143

87:                                               ; preds = %82
  %88 = load i32, i32* %7, align 4
  %89 = call i64 @TREE_CONSTANT(i32 %88)
  %90 = icmp ne i64 %89, 0
  br i1 %90, label %91, label %143

91:                                               ; preds = %87
  %92 = load i32, i32* %6, align 4
  %93 = call i32 @TREE_OPERAND(i32 %92, i32 0)
  %94 = call i32 @TREE_TYPE(i32 %93)
  %95 = call i64 @TREE_CODE(i32 %94)
  %96 = load i64, i64* @INTEGER_TYPE, align 8
  %97 = icmp eq i64 %95, %96
  br i1 %97, label %98, label %143

98:                                               ; preds = %91
  %99 = load i32, i32* %6, align 4
  %100 = call i32 @TREE_TYPE(i32 %99)
  %101 = call i64 @TYPE_UNSIGNED(i32 %100)
  %102 = icmp ne i64 %101, 0
  br i1 %102, label %103, label %111

103:                                              ; preds = %98
  %104 = load i32, i32* %6, align 4
  %105 = call i32 @TREE_TYPE(i32 %104)
  %106 = call i64 @TYPE_PRECISION(i32 %105)
  %107 = load i32, i32* %5, align 4
  %108 = call i32 @TREE_TYPE(i32 %107)
  %109 = call i64 @TYPE_PRECISION(i32 %108)
  %110 = icmp eq i64 %106, %109
  br i1 %110, label %111, label %143

111:                                              ; preds = %103, %98
  %112 = load i32, i32* %4, align 4
  store i32 %112, i32* %10, align 4
  %113 = load i32, i32* %6, align 4
  %114 = call i32 @TREE_TYPE(i32 %113)
  store i32 %114, i32* %11, align 4
  %115 = load i32, i32* %6, align 4
  %116 = call i64 @TREE_CODE(i32 %115)
  %117 = load i64, i64* @MINUS_EXPR, align 8
  %118 = icmp eq i64 %116, %117
  br i1 %118, label %119, label %131

119:                                              ; preds = %111
  %120 = load i32, i32* %10, align 4
  %121 = zext i32 %120 to i64
  %122 = load i64, i64* @PLUS_EXPR, align 8
  %123 = icmp eq i64 %121, %122
  br i1 %123, label %124, label %126

124:                                              ; preds = %119
  %125 = load i64, i64* @MINUS_EXPR, align 8
  br label %128

126:                                              ; preds = %119
  %127 = load i64, i64* @PLUS_EXPR, align 8
  br label %128

128:                                              ; preds = %126, %124
  %129 = phi i64 [ %125, %124 ], [ %127, %126 ]
  %130 = trunc i64 %129 to i32
  store i32 %130, i32* %10, align 4
  br label %131

131:                                              ; preds = %128, %111
  %132 = load i32, i32* %10, align 4
  %133 = load i32, i32* %5, align 4
  %134 = load i32, i32* %11, align 4
  %135 = load i32, i32* %6, align 4
  %136 = call i32 @TREE_OPERAND(i32 %135, i32 1)
  %137 = call i32 @convert(i32 %134, i32 %136)
  %138 = call i32 @build_binary_op(i32 %132, i32 %133, i32 %137, i32 1)
  store i32 %138, i32* %5, align 4
  %139 = load i32, i32* %11, align 4
  %140 = load i32, i32* %6, align 4
  %141 = call i32 @TREE_OPERAND(i32 %140, i32 0)
  %142 = call i32 @convert(i32 %139, i32 %141)
  store i32 %142, i32* %6, align 4
  br label %143

143:                                              ; preds = %131, %103, %91, %87, %82, %78, %73
  %144 = load i32, i32* %6, align 4
  %145 = call i32 @TREE_TYPE(i32 %144)
  %146 = call i64 @TYPE_PRECISION(i32 %145)
  %147 = load i32, i32* @sizetype, align 4
  %148 = call i64 @TYPE_PRECISION(i32 %147)
  %149 = icmp ne i64 %146, %148
  br i1 %149, label %157, label %150

150:                                              ; preds = %143
  %151 = load i32, i32* %6, align 4
  %152 = call i32 @TREE_TYPE(i32 %151)
  %153 = call i64 @TYPE_UNSIGNED(i32 %152)
  %154 = load i32, i32* @sizetype, align 4
  %155 = call i64 @TYPE_UNSIGNED(i32 %154)
  %156 = icmp ne i64 %153, %155
  br i1 %156, label %157, label %165

157:                                              ; preds = %150, %143
  %158 = load i32, i32* @sizetype, align 4
  %159 = call i64 @TYPE_PRECISION(i32 %158)
  %160 = load i32, i32* @sizetype, align 4
  %161 = call i64 @TYPE_UNSIGNED(i32 %160)
  %162 = call i32 @c_common_type_for_size(i64 %159, i64 %161)
  %163 = load i32, i32* %6, align 4
  %164 = call i32 @convert(i32 %162, i32 %163)
  store i32 %164, i32* %6, align 4
  br label %165

165:                                              ; preds = %157, %150
  %166 = load i32, i32* %9, align 4
  %167 = load i32, i32* @MULT_EXPR, align 4
  %168 = load i32, i32* %6, align 4
  %169 = load i32, i32* %6, align 4
  %170 = call i32 @TREE_TYPE(i32 %169)
  %171 = load i32, i32* %7, align 4
  %172 = call i32 @convert(i32 %170, i32 %171)
  %173 = call i32 @build_binary_op(i32 %167, i32 %168, i32 %172, i32 1)
  %174 = call i32 @convert(i32 %166, i32 %173)
  store i32 %174, i32* %6, align 4
  %175 = load i32, i32* %4, align 4
  %176 = load i32, i32* %9, align 4
  %177 = load i32, i32* %5, align 4
  %178 = load i32, i32* %6, align 4
  %179 = call i32 @fold_build2(i32 %175, i32 %176, i32 %177, i32 %178)
  store i32 %179, i32* %8, align 4
  %180 = call i32 (...) @fold_undefer_and_ignore_overflow_warnings()
  %181 = load i32, i32* %8, align 4
  ret i32 %181
}

declare dso_local i32 @TREE_TYPE(i32) #1

declare dso_local i64 @TREE_CODE(i32) #1

declare dso_local i32 @pedwarn(i8*) #1

declare dso_local i32 @size_in_bytes(i32) #1

declare dso_local i32 @fold_defer_overflow_warnings(...) #1

declare dso_local i64 @TREE_CONSTANT(i32) #1

declare dso_local i32 @TREE_OPERAND(i32, i32) #1

declare dso_local i64 @TYPE_UNSIGNED(i32) #1

declare dso_local i64 @TYPE_PRECISION(i32) #1

declare dso_local i32 @build_binary_op(i32, i32, i32, i32) #1

declare dso_local i32 @convert(i32, i32) #1

declare dso_local i32 @c_common_type_for_size(i64, i64) #1

declare dso_local i32 @fold_build2(i32, i32, i32, i32) #1

declare dso_local i32 @fold_undefer_and_ignore_overflow_warnings(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

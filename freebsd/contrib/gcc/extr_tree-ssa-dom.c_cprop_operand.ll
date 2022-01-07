; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_tree-ssa-dom.c_cprop_operand.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_tree-ssa-dom.c_cprop_operand.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32 (i64, i64)* }
%struct.TYPE_3__ = type { i32, i32 }

@VALUE_HANDLE = common dso_local global i64 0, align 8
@SSA_NAME = common dso_local global i64 0, align 8
@ASM_EXPR = common dso_local global i64 0, align 8
@lang_hooks = common dso_local global %struct.TYPE_4__ zeroinitializer, align 8
@dump_file = common dso_local global i64 0, align 8
@dump_flags = common dso_local global i32 0, align 4
@TDF_DETAILS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [13 x i8] c"  Replaced '\00", align 1
@.str.1 = private unnamed_addr constant [12 x i8] c"' with %s '\00", align 1
@.str.2 = private unnamed_addr constant [9 x i8] c"constant\00", align 1
@.str.3 = private unnamed_addr constant [9 x i8] c"variable\00", align 1
@.str.4 = private unnamed_addr constant [3 x i8] c"'\0A\00", align 1
@ADDR_EXPR = common dso_local global i64 0, align 8
@opt_stats = common dso_local global %struct.TYPE_3__ zeroinitializer, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i64, i32)* @cprop_operand to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cprop_operand(i64 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  store i64 %0, i64* %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 0, i32* %6, align 4
  %11 = load i32, i32* %5, align 4
  %12 = call i64 @USE_FROM_PTR(i32 %11)
  store i64 %12, i64* %8, align 8
  %13 = load i64, i64* %8, align 8
  %14 = call i64 @SSA_NAME_VALUE(i64 %13)
  store i64 %14, i64* %7, align 8
  %15 = load i64, i64* %7, align 8
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %173

17:                                               ; preds = %2
  %18 = load i64, i64* %7, align 8
  %19 = load i64, i64* %8, align 8
  %20 = icmp ne i64 %18, %19
  br i1 %20, label %21, label %173

21:                                               ; preds = %17
  %22 = load i64, i64* %7, align 8
  %23 = call i64 @TREE_CODE(i64 %22)
  %24 = load i64, i64* @VALUE_HANDLE, align 8
  %25 = icmp ne i64 %23, %24
  br i1 %25, label %26, label %173

26:                                               ; preds = %21
  %27 = load i64, i64* %8, align 8
  %28 = call i64 @is_gimple_reg(i64 %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %46, label %30

30:                                               ; preds = %26
  %31 = load i64, i64* %7, align 8
  %32 = call i64 @TREE_CODE(i64 %31)
  %33 = load i64, i64* @SSA_NAME, align 8
  %34 = icmp ne i64 %32, %33
  br i1 %34, label %45, label %35

35:                                               ; preds = %30
  %36 = load i64, i64* %7, align 8
  %37 = call i64 @is_gimple_reg(i64 %36)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %45, label %39

39:                                               ; preds = %35
  %40 = load i64, i64* %7, align 8
  %41 = call i64 @get_virtual_var(i64 %40)
  %42 = load i64, i64* %8, align 8
  %43 = call i64 @get_virtual_var(i64 %42)
  %44 = icmp ne i64 %41, %43
  br i1 %44, label %45, label %46

45:                                               ; preds = %39, %35, %30
  store i32 0, i32* %3, align 4
  br label %175

46:                                               ; preds = %39, %26
  %47 = load i64, i64* %4, align 8
  %48 = call i64 @TREE_CODE(i64 %47)
  %49 = load i64, i64* @ASM_EXPR, align 8
  %50 = icmp eq i64 %48, %49
  br i1 %50, label %51, label %56

51:                                               ; preds = %46
  %52 = load i64, i64* %8, align 8
  %53 = call i32 @may_propagate_copy_into_asm(i64 %52)
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %56, label %55

55:                                               ; preds = %51
  store i32 0, i32* %3, align 4
  br label %175

56:                                               ; preds = %51, %46
  %57 = load i64, i64* %8, align 8
  %58 = call i64 @TREE_TYPE(i64 %57)
  store i64 %58, i64* %9, align 8
  %59 = load i64, i64* %7, align 8
  %60 = call i64 @TREE_TYPE(i64 %59)
  store i64 %60, i64* %10, align 8
  br label %61

61:                                               ; preds = %71, %56
  %62 = load i64, i64* %9, align 8
  %63 = call i64 @POINTER_TYPE_P(i64 %62)
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %65, label %69

65:                                               ; preds = %61
  %66 = load i64, i64* %10, align 8
  %67 = call i64 @POINTER_TYPE_P(i64 %66)
  %68 = icmp ne i64 %67, 0
  br label %69

69:                                               ; preds = %65, %61
  %70 = phi i1 [ false, %61 ], [ %68, %65 ]
  br i1 %70, label %71, label %76

71:                                               ; preds = %69
  %72 = load i64, i64* %9, align 8
  %73 = call i64 @TREE_TYPE(i64 %72)
  store i64 %73, i64* %9, align 8
  %74 = load i64, i64* %10, align 8
  %75 = call i64 @TREE_TYPE(i64 %74)
  store i64 %75, i64* %10, align 8
  br label %61

76:                                               ; preds = %69
  %77 = load i64, i64* %7, align 8
  %78 = call i64 @TREE_CODE(i64 %77)
  %79 = load i64, i64* @SSA_NAME, align 8
  %80 = icmp ne i64 %78, %79
  br i1 %80, label %81, label %98

81:                                               ; preds = %76
  %82 = load i32 (i64, i64)*, i32 (i64, i64)** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @lang_hooks, i32 0, i32 0), align 8
  %83 = load i64, i64* %9, align 8
  %84 = load i64, i64* %10, align 8
  %85 = call i32 %82(i64 %83, i64 %84)
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %97, label %87

87:                                               ; preds = %81
  %88 = load i64, i64* %8, align 8
  %89 = call i64 @TREE_TYPE(i64 %88)
  %90 = load i64, i64* %7, align 8
  %91 = call i64 @fold_convert(i64 %89, i64 %90)
  store i64 %91, i64* %7, align 8
  %92 = load i64, i64* %7, align 8
  %93 = call i64 @is_gimple_min_invariant(i64 %92)
  %94 = icmp ne i64 %93, 0
  br i1 %94, label %96, label %95

95:                                               ; preds = %87
  store i32 0, i32* %3, align 4
  br label %175

96:                                               ; preds = %87
  br label %97

97:                                               ; preds = %96, %81
  br label %105

98:                                               ; preds = %76
  %99 = load i64, i64* %8, align 8
  %100 = load i64, i64* %7, align 8
  %101 = call i32 @may_propagate_copy(i64 %99, i64 %100)
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %104, label %103

103:                                              ; preds = %98
  store i32 0, i32* %3, align 4
  br label %175

104:                                              ; preds = %98
  br label %105

105:                                              ; preds = %104, %97
  %106 = load i64, i64* %7, align 8
  %107 = call i64 @loop_depth_of_name(i64 %106)
  %108 = load i64, i64* %8, align 8
  %109 = call i64 @loop_depth_of_name(i64 %108)
  %110 = icmp sgt i64 %107, %109
  br i1 %110, label %111, label %112

111:                                              ; preds = %105
  store i32 0, i32* %3, align 4
  br label %175

112:                                              ; preds = %105
  %113 = load i64, i64* @dump_file, align 8
  %114 = icmp ne i64 %113, 0
  br i1 %114, label %115, label %141

115:                                              ; preds = %112
  %116 = load i32, i32* @dump_flags, align 4
  %117 = load i32, i32* @TDF_DETAILS, align 4
  %118 = and i32 %116, %117
  %119 = icmp ne i32 %118, 0
  br i1 %119, label %120, label %141

120:                                              ; preds = %115
  %121 = load i64, i64* @dump_file, align 8
  %122 = call i32 (i64, i8*, ...) @fprintf(i64 %121, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0))
  %123 = load i64, i64* @dump_file, align 8
  %124 = load i64, i64* %8, align 8
  %125 = load i32, i32* @dump_flags, align 4
  %126 = call i32 @print_generic_expr(i64 %123, i64 %124, i32 %125)
  %127 = load i64, i64* @dump_file, align 8
  %128 = load i64, i64* %7, align 8
  %129 = call i64 @TREE_CODE(i64 %128)
  %130 = load i64, i64* @SSA_NAME, align 8
  %131 = icmp ne i64 %129, %130
  %132 = zext i1 %131 to i64
  %133 = select i1 %131, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0)
  %134 = call i32 (i64, i8*, ...) @fprintf(i64 %127, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0), i8* %133)
  %135 = load i64, i64* @dump_file, align 8
  %136 = load i64, i64* %7, align 8
  %137 = load i32, i32* @dump_flags, align 4
  %138 = call i32 @print_generic_expr(i64 %135, i64 %136, i32 %137)
  %139 = load i64, i64* @dump_file, align 8
  %140 = call i32 (i64, i8*, ...) @fprintf(i64 %139, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0))
  br label %141

141:                                              ; preds = %120, %115, %112
  %142 = load i64, i64* %7, align 8
  %143 = call i64 @TREE_CODE(i64 %142)
  %144 = load i64, i64* @ADDR_EXPR, align 8
  %145 = icmp eq i64 %143, %144
  br i1 %145, label %155, label %146

146:                                              ; preds = %141
  %147 = load i64, i64* %8, align 8
  %148 = call i64 @TREE_TYPE(i64 %147)
  %149 = call i64 @POINTER_TYPE_P(i64 %148)
  %150 = icmp ne i64 %149, 0
  br i1 %150, label %151, label %156

151:                                              ; preds = %146
  %152 = load i64, i64* %7, align 8
  %153 = call i64 @is_gimple_min_invariant(i64 %152)
  %154 = icmp ne i64 %153, 0
  br i1 %154, label %155, label %156

155:                                              ; preds = %151, %141
  store i32 1, i32* %6, align 4
  br label %156

156:                                              ; preds = %155, %151, %146
  %157 = load i64, i64* %7, align 8
  %158 = call i64 @TREE_CODE(i64 %157)
  %159 = load i64, i64* @SSA_NAME, align 8
  %160 = icmp ne i64 %158, %159
  br i1 %160, label %161, label %164

161:                                              ; preds = %156
  %162 = load i32, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @opt_stats, i32 0, i32 1), align 4
  %163 = add nsw i32 %162, 1
  store i32 %163, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @opt_stats, i32 0, i32 1), align 4
  br label %167

164:                                              ; preds = %156
  %165 = load i32, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @opt_stats, i32 0, i32 0), align 4
  %166 = add nsw i32 %165, 1
  store i32 %166, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @opt_stats, i32 0, i32 0), align 4
  br label %167

167:                                              ; preds = %164, %161
  %168 = load i32, i32* %5, align 4
  %169 = load i64, i64* %7, align 8
  %170 = call i32 @propagate_value(i32 %168, i64 %169)
  %171 = load i64, i64* %4, align 8
  %172 = call i32 @mark_stmt_modified(i64 %171)
  br label %173

173:                                              ; preds = %167, %21, %17, %2
  %174 = load i32, i32* %6, align 4
  store i32 %174, i32* %3, align 4
  br label %175

175:                                              ; preds = %173, %111, %103, %95, %55, %45
  %176 = load i32, i32* %3, align 4
  ret i32 %176
}

declare dso_local i64 @USE_FROM_PTR(i32) #1

declare dso_local i64 @SSA_NAME_VALUE(i64) #1

declare dso_local i64 @TREE_CODE(i64) #1

declare dso_local i64 @is_gimple_reg(i64) #1

declare dso_local i64 @get_virtual_var(i64) #1

declare dso_local i32 @may_propagate_copy_into_asm(i64) #1

declare dso_local i64 @TREE_TYPE(i64) #1

declare dso_local i64 @POINTER_TYPE_P(i64) #1

declare dso_local i64 @fold_convert(i64, i64) #1

declare dso_local i64 @is_gimple_min_invariant(i64) #1

declare dso_local i32 @may_propagate_copy(i64, i64) #1

declare dso_local i64 @loop_depth_of_name(i64) #1

declare dso_local i32 @fprintf(i64, i8*, ...) #1

declare dso_local i32 @print_generic_expr(i64, i64, i32) #1

declare dso_local i32 @propagate_value(i32, i64) #1

declare dso_local i32 @mark_stmt_modified(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

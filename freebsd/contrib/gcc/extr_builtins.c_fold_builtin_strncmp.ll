; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_builtins.c_fold_builtin_strncmp.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_builtins.c_fold_builtin_strncmp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@POINTER_TYPE = common dso_local global i32 0, align 4
@INTEGER_TYPE = common dso_local global i32 0, align 4
@VOID_TYPE = common dso_local global i32 0, align 4
@integer_type_node = common dso_local global i32 0, align 4
@integer_zero_node = common dso_local global i32 0, align 4
@integer_one_node = common dso_local global i32 0, align 4
@integer_minus_one_node = common dso_local global i32 0, align 4
@INTEGER_CST = common dso_local global i64 0, align 8
@unsigned_char_type_node = common dso_local global i32 0, align 4
@ptr_mode = common dso_local global i32 0, align 4
@INDIRECT_REF = common dso_local global i32 0, align 4
@NEGATE_EXPR = common dso_local global i32 0, align 4
@MINUS_EXPR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @fold_builtin_strncmp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fold_builtin_strncmp(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %19 = load i32, i32* %3, align 4
  %20 = load i32, i32* @POINTER_TYPE, align 4
  %21 = load i32, i32* @POINTER_TYPE, align 4
  %22 = load i32, i32* @INTEGER_TYPE, align 4
  %23 = load i32, i32* @VOID_TYPE, align 4
  %24 = call i32 @validate_arglist(i32 %19, i32 %20, i32 %21, i32 %22, i32 %23)
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %27, label %26

26:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %189

27:                                               ; preds = %1
  %28 = load i32, i32* %3, align 4
  %29 = call i32 @TREE_VALUE(i32 %28)
  store i32 %29, i32* %4, align 4
  %30 = load i32, i32* %3, align 4
  %31 = call i32 @TREE_CHAIN(i32 %30)
  %32 = call i32 @TREE_VALUE(i32 %31)
  store i32 %32, i32* %5, align 4
  %33 = load i32, i32* %3, align 4
  %34 = call i32 @TREE_CHAIN(i32 %33)
  %35 = call i32 @TREE_CHAIN(i32 %34)
  %36 = call i32 @TREE_VALUE(i32 %35)
  store i32 %36, i32* %6, align 4
  %37 = load i32, i32* %6, align 4
  %38 = call i64 @integer_zerop(i32 %37)
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %46

40:                                               ; preds = %27
  %41 = load i32, i32* @integer_type_node, align 4
  %42 = load i32, i32* @integer_zero_node, align 4
  %43 = load i32, i32* %4, align 4
  %44 = load i32, i32* %5, align 4
  %45 = call i32 @omit_two_operands(i32 %41, i32 %42, i32 %43, i32 %44)
  store i32 %45, i32* %2, align 4
  br label %189

46:                                               ; preds = %27
  %47 = load i32, i32* %4, align 4
  %48 = load i32, i32* %5, align 4
  %49 = call i64 @operand_equal_p(i32 %47, i32 %48, i32 0)
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %56

51:                                               ; preds = %46
  %52 = load i32, i32* @integer_type_node, align 4
  %53 = load i32, i32* @integer_zero_node, align 4
  %54 = load i32, i32* %6, align 4
  %55 = call i32 @omit_one_operand(i32 %52, i32 %53, i32 %54)
  store i32 %55, i32* %2, align 4
  br label %189

56:                                               ; preds = %46
  %57 = load i32, i32* %4, align 4
  %58 = call i8* @c_getstr(i32 %57)
  store i8* %58, i8** %7, align 8
  %59 = load i32, i32* %5, align 4
  %60 = call i8* @c_getstr(i32 %59)
  store i8* %60, i8** %8, align 8
  %61 = load i32, i32* %6, align 4
  %62 = call i64 @host_integerp(i32 %61, i32 1)
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %64, label %87

64:                                               ; preds = %56
  %65 = load i8*, i8** %7, align 8
  %66 = icmp ne i8* %65, null
  br i1 %66, label %67, label %87

67:                                               ; preds = %64
  %68 = load i8*, i8** %8, align 8
  %69 = icmp ne i8* %68, null
  br i1 %69, label %70, label %87

70:                                               ; preds = %67
  %71 = load i8*, i8** %7, align 8
  %72 = load i8*, i8** %8, align 8
  %73 = load i32, i32* %6, align 4
  %74 = call i32 @tree_low_cst(i32 %73, i32 1)
  %75 = call i32 @strncmp(i8* %71, i8* %72, i32 %74)
  store i32 %75, i32* %9, align 4
  %76 = load i32, i32* %9, align 4
  %77 = icmp sgt i32 %76, 0
  br i1 %77, label %78, label %80

78:                                               ; preds = %70
  %79 = load i32, i32* @integer_one_node, align 4
  store i32 %79, i32* %2, align 4
  br label %189

80:                                               ; preds = %70
  %81 = load i32, i32* %9, align 4
  %82 = icmp slt i32 %81, 0
  br i1 %82, label %83, label %85

83:                                               ; preds = %80
  %84 = load i32, i32* @integer_minus_one_node, align 4
  store i32 %84, i32* %2, align 4
  br label %189

85:                                               ; preds = %80
  %86 = load i32, i32* @integer_zero_node, align 4
  store i32 %86, i32* %2, align 4
  br label %189

87:                                               ; preds = %67, %64, %56
  %88 = load i8*, i8** %8, align 8
  %89 = icmp ne i8* %88, null
  br i1 %89, label %90, label %118

90:                                               ; preds = %87
  %91 = load i8*, i8** %8, align 8
  %92 = load i8, i8* %91, align 1
  %93 = sext i8 %92 to i32
  %94 = icmp eq i32 %93, 0
  br i1 %94, label %95, label %118

95:                                               ; preds = %90
  %96 = load i32, i32* %6, align 4
  %97 = call i64 @TREE_CODE(i32 %96)
  %98 = load i64, i64* @INTEGER_CST, align 8
  %99 = icmp eq i64 %97, %98
  br i1 %99, label %100, label %118

100:                                              ; preds = %95
  %101 = load i32, i32* %6, align 4
  %102 = call i32 @tree_int_cst_sgn(i32 %101)
  %103 = icmp eq i32 %102, 1
  br i1 %103, label %104, label %118

104:                                              ; preds = %100
  %105 = load i32, i32* @unsigned_char_type_node, align 4
  %106 = call i32 @build_type_variant(i32 %105, i32 1, i32 0)
  store i32 %106, i32* %10, align 4
  %107 = load i32, i32* %10, align 4
  %108 = load i32, i32* @ptr_mode, align 4
  %109 = call i32 @build_pointer_type_for_mode(i32 %107, i32 %108, i32 1)
  store i32 %109, i32* %11, align 4
  %110 = load i32, i32* @integer_type_node, align 4
  %111 = load i32, i32* @INDIRECT_REF, align 4
  %112 = load i32, i32* %10, align 4
  %113 = load i32, i32* %11, align 4
  %114 = load i32, i32* %4, align 4
  %115 = call i32 @fold_convert(i32 %113, i32 %114)
  %116 = call i32 @build1(i32 %111, i32 %112, i32 %115)
  %117 = call i32 @fold_convert(i32 %110, i32 %116)
  store i32 %117, i32* %2, align 4
  br label %189

118:                                              ; preds = %100, %95, %90, %87
  %119 = load i8*, i8** %7, align 8
  %120 = icmp ne i8* %119, null
  br i1 %120, label %121, label %153

121:                                              ; preds = %118
  %122 = load i8*, i8** %7, align 8
  %123 = load i8, i8* %122, align 1
  %124 = sext i8 %123 to i32
  %125 = icmp eq i32 %124, 0
  br i1 %125, label %126, label %153

126:                                              ; preds = %121
  %127 = load i32, i32* %6, align 4
  %128 = call i64 @TREE_CODE(i32 %127)
  %129 = load i64, i64* @INTEGER_CST, align 8
  %130 = icmp eq i64 %128, %129
  br i1 %130, label %131, label %153

131:                                              ; preds = %126
  %132 = load i32, i32* %6, align 4
  %133 = call i32 @tree_int_cst_sgn(i32 %132)
  %134 = icmp eq i32 %133, 1
  br i1 %134, label %135, label %153

135:                                              ; preds = %131
  %136 = load i32, i32* @unsigned_char_type_node, align 4
  %137 = call i32 @build_type_variant(i32 %136, i32 1, i32 0)
  store i32 %137, i32* %12, align 4
  %138 = load i32, i32* %12, align 4
  %139 = load i32, i32* @ptr_mode, align 4
  %140 = call i32 @build_pointer_type_for_mode(i32 %138, i32 %139, i32 1)
  store i32 %140, i32* %13, align 4
  %141 = load i32, i32* @integer_type_node, align 4
  %142 = load i32, i32* @INDIRECT_REF, align 4
  %143 = load i32, i32* %12, align 4
  %144 = load i32, i32* %13, align 4
  %145 = load i32, i32* %5, align 4
  %146 = call i32 @fold_convert(i32 %144, i32 %145)
  %147 = call i32 @build1(i32 %142, i32 %143, i32 %146)
  %148 = call i32 @fold_convert(i32 %141, i32 %147)
  store i32 %148, i32* %14, align 4
  %149 = load i32, i32* @NEGATE_EXPR, align 4
  %150 = load i32, i32* @integer_type_node, align 4
  %151 = load i32, i32* %14, align 4
  %152 = call i32 @fold_build1(i32 %149, i32 %150, i32 %151)
  store i32 %152, i32* %2, align 4
  br label %189

153:                                              ; preds = %131, %126, %121, %118
  %154 = load i32, i32* %6, align 4
  %155 = call i64 @host_integerp(i32 %154, i32 1)
  %156 = icmp ne i64 %155, 0
  br i1 %156, label %157, label %188

157:                                              ; preds = %153
  %158 = load i32, i32* %6, align 4
  %159 = call i32 @tree_low_cst(i32 %158, i32 1)
  %160 = icmp eq i32 %159, 1
  br i1 %160, label %161, label %188

161:                                              ; preds = %157
  %162 = load i32, i32* @unsigned_char_type_node, align 4
  %163 = call i32 @build_type_variant(i32 %162, i32 1, i32 0)
  store i32 %163, i32* %15, align 4
  %164 = load i32, i32* %15, align 4
  %165 = load i32, i32* @ptr_mode, align 4
  %166 = call i32 @build_pointer_type_for_mode(i32 %164, i32 %165, i32 1)
  store i32 %166, i32* %16, align 4
  %167 = load i32, i32* @integer_type_node, align 4
  %168 = load i32, i32* @INDIRECT_REF, align 4
  %169 = load i32, i32* %15, align 4
  %170 = load i32, i32* %16, align 4
  %171 = load i32, i32* %4, align 4
  %172 = call i32 @fold_convert(i32 %170, i32 %171)
  %173 = call i32 @build1(i32 %168, i32 %169, i32 %172)
  %174 = call i32 @fold_convert(i32 %167, i32 %173)
  store i32 %174, i32* %17, align 4
  %175 = load i32, i32* @integer_type_node, align 4
  %176 = load i32, i32* @INDIRECT_REF, align 4
  %177 = load i32, i32* %15, align 4
  %178 = load i32, i32* %16, align 4
  %179 = load i32, i32* %5, align 4
  %180 = call i32 @fold_convert(i32 %178, i32 %179)
  %181 = call i32 @build1(i32 %176, i32 %177, i32 %180)
  %182 = call i32 @fold_convert(i32 %175, i32 %181)
  store i32 %182, i32* %18, align 4
  %183 = load i32, i32* @MINUS_EXPR, align 4
  %184 = load i32, i32* @integer_type_node, align 4
  %185 = load i32, i32* %17, align 4
  %186 = load i32, i32* %18, align 4
  %187 = call i32 @fold_build2(i32 %183, i32 %184, i32 %185, i32 %186)
  store i32 %187, i32* %2, align 4
  br label %189

188:                                              ; preds = %157, %153
  store i32 0, i32* %2, align 4
  br label %189

189:                                              ; preds = %188, %161, %135, %104, %85, %83, %78, %51, %40, %26
  %190 = load i32, i32* %2, align 4
  ret i32 %190
}

declare dso_local i32 @validate_arglist(i32, i32, i32, i32, i32) #1

declare dso_local i32 @TREE_VALUE(i32) #1

declare dso_local i32 @TREE_CHAIN(i32) #1

declare dso_local i64 @integer_zerop(i32) #1

declare dso_local i32 @omit_two_operands(i32, i32, i32, i32) #1

declare dso_local i64 @operand_equal_p(i32, i32, i32) #1

declare dso_local i32 @omit_one_operand(i32, i32, i32) #1

declare dso_local i8* @c_getstr(i32) #1

declare dso_local i64 @host_integerp(i32, i32) #1

declare dso_local i32 @strncmp(i8*, i8*, i32) #1

declare dso_local i32 @tree_low_cst(i32, i32) #1

declare dso_local i64 @TREE_CODE(i32) #1

declare dso_local i32 @tree_int_cst_sgn(i32) #1

declare dso_local i32 @build_type_variant(i32, i32, i32) #1

declare dso_local i32 @build_pointer_type_for_mode(i32, i32, i32) #1

declare dso_local i32 @fold_convert(i32, i32) #1

declare dso_local i32 @build1(i32, i32, i32) #1

declare dso_local i32 @fold_build1(i32, i32, i32) #1

declare dso_local i32 @fold_build2(i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

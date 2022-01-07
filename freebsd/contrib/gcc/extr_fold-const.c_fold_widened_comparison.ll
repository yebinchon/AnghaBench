; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_fold-const.c_fold_widened_comparison.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_fold-const.c_fold_widened_comparison.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@NULL_TREE = common dso_local global i64 0, align 8
@INTEGER_CST = common dso_local global i64 0, align 8
@INTEGER_TYPE = common dso_local global i64 0, align 8
@BOOLEAN_TYPE = common dso_local global i64 0, align 8
@integer_zero_node = common dso_local global i32 0, align 4
@integer_one_node = common dso_local global i32 0, align 4
@FUNCTION_TYPE = common dso_local global i64 0, align 8
@HAVE_canonicalize_funcptr_for_compare = common dso_local global i64 0, align 8
@POINTER_TYPE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i32, i64, i64, i64)* @fold_widened_comparison to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @fold_widened_comparison(i32 %0, i64 %1, i64 %2, i64 %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store i32 %0, i32* %6, align 4
  store i64 %1, i64* %7, align 8
  store i64 %2, i64* %8, align 8
  store i64 %3, i64* %9, align 8
  %18 = load i64, i64* %8, align 8
  %19 = load i64, i64* @NULL_TREE, align 8
  %20 = call i64 @get_unwidened(i64 %18, i64 %19)
  store i64 %20, i64* %10, align 8
  %21 = load i64, i64* %10, align 8
  %22 = load i64, i64* %8, align 8
  %23 = icmp eq i64 %21, %22
  br i1 %23, label %24, label %26

24:                                               ; preds = %4
  %25 = load i64, i64* @NULL_TREE, align 8
  store i64 %25, i64* %5, align 8
  br label %193

26:                                               ; preds = %4
  %27 = load i64, i64* %10, align 8
  %28 = call i64 @TREE_TYPE(i64 %27)
  store i64 %28, i64* %12, align 8
  %29 = load i64, i64* %8, align 8
  %30 = call i64 @TREE_TYPE(i64 %29)
  %31 = call i64 @TYPE_PRECISION(i64 %30)
  %32 = load i64, i64* %12, align 8
  %33 = call i64 @TYPE_PRECISION(i64 %32)
  %34 = icmp sle i64 %31, %33
  br i1 %34, label %35, label %37

35:                                               ; preds = %26
  %36 = load i64, i64* @NULL_TREE, align 8
  store i64 %36, i64* %5, align 8
  br label %193

37:                                               ; preds = %26
  %38 = load i64, i64* %9, align 8
  %39 = load i64, i64* @NULL_TREE, align 8
  %40 = call i64 @get_unwidened(i64 %38, i64 %39)
  store i64 %40, i64* %11, align 8
  %41 = load i32, i32* %6, align 4
  %42 = icmp eq i32 %41, 133
  br i1 %42, label %53, label %43

43:                                               ; preds = %37
  %44 = load i32, i32* %6, align 4
  %45 = icmp eq i32 %44, 128
  br i1 %45, label %53, label %46

46:                                               ; preds = %43
  %47 = load i64, i64* %8, align 8
  %48 = call i64 @TREE_TYPE(i64 %47)
  %49 = call i64 @TYPE_UNSIGNED(i64 %48)
  %50 = load i64, i64* %12, align 8
  %51 = call i64 @TYPE_UNSIGNED(i64 %50)
  %52 = icmp eq i64 %49, %51
  br i1 %52, label %53, label %93

53:                                               ; preds = %46, %43, %37
  %54 = load i64, i64* %11, align 8
  %55 = call i64 @TREE_TYPE(i64 %54)
  %56 = load i64, i64* %12, align 8
  %57 = icmp eq i64 %55, %56
  br i1 %57, label %85, label %58

58:                                               ; preds = %53
  %59 = load i64, i64* %12, align 8
  %60 = call i64 @TYPE_PRECISION(i64 %59)
  %61 = load i64, i64* %11, align 8
  %62 = call i64 @TREE_TYPE(i64 %61)
  %63 = call i64 @TYPE_PRECISION(i64 %62)
  %64 = icmp sge i64 %60, %63
  br i1 %64, label %85, label %65

65:                                               ; preds = %58
  %66 = load i64, i64* %11, align 8
  %67 = call i64 @TREE_CODE(i64 %66)
  %68 = load i64, i64* @INTEGER_CST, align 8
  %69 = icmp eq i64 %67, %68
  br i1 %69, label %70, label %93

70:                                               ; preds = %65
  %71 = load i64, i64* %12, align 8
  %72 = call i64 @TREE_CODE(i64 %71)
  %73 = load i64, i64* @INTEGER_TYPE, align 8
  %74 = icmp eq i64 %72, %73
  br i1 %74, label %80, label %75

75:                                               ; preds = %70
  %76 = load i64, i64* %12, align 8
  %77 = call i64 @TREE_CODE(i64 %76)
  %78 = load i64, i64* @BOOLEAN_TYPE, align 8
  %79 = icmp eq i64 %77, %78
  br i1 %79, label %80, label %93

80:                                               ; preds = %75, %70
  %81 = load i64, i64* %11, align 8
  %82 = load i64, i64* %12, align 8
  %83 = call i64 @int_fits_type_p(i64 %81, i64 %82)
  %84 = icmp ne i64 %83, 0
  br i1 %84, label %85, label %93

85:                                               ; preds = %80, %58, %53
  %86 = load i32, i32* %6, align 4
  %87 = load i64, i64* %7, align 8
  %88 = load i64, i64* %10, align 8
  %89 = load i64, i64* %12, align 8
  %90 = load i64, i64* %11, align 8
  %91 = call i32 @fold_convert(i64 %89, i64 %90)
  %92 = call i64 @fold_build2(i32 %86, i64 %87, i64 %88, i32 %91)
  store i64 %92, i64* %5, align 8
  br label %193

93:                                               ; preds = %80, %75, %65, %46
  %94 = load i64, i64* %11, align 8
  %95 = call i64 @TREE_CODE(i64 %94)
  %96 = load i64, i64* @INTEGER_CST, align 8
  %97 = icmp ne i64 %95, %96
  br i1 %97, label %108, label %98

98:                                               ; preds = %93
  %99 = load i64, i64* %12, align 8
  %100 = call i64 @TREE_CODE(i64 %99)
  %101 = load i64, i64* @INTEGER_TYPE, align 8
  %102 = icmp ne i64 %100, %101
  br i1 %102, label %108, label %103

103:                                              ; preds = %98
  %104 = load i64, i64* %11, align 8
  %105 = load i64, i64* %12, align 8
  %106 = call i64 @int_fits_type_p(i64 %104, i64 %105)
  %107 = icmp ne i64 %106, 0
  br i1 %107, label %110, label %108

108:                                              ; preds = %103, %98, %93
  %109 = load i64, i64* @NULL_TREE, align 8
  store i64 %109, i64* %5, align 8
  br label %193

110:                                              ; preds = %103
  %111 = load i64, i64* %11, align 8
  %112 = call i64 @TREE_TYPE(i64 %111)
  store i64 %112, i64* %13, align 8
  %113 = load i64, i64* %13, align 8
  %114 = load i64, i64* %12, align 8
  %115 = call i64 @lower_bound_in_type(i64 %113, i64 %114)
  store i64 %115, i64* %14, align 8
  %116 = load i64, i64* %13, align 8
  %117 = load i64, i64* %12, align 8
  %118 = call i64 @upper_bound_in_type(i64 %116, i64 %117)
  store i64 %118, i64* %15, align 8
  %119 = load i64, i64* %7, align 8
  %120 = load i64, i64* %15, align 8
  %121 = load i64, i64* %11, align 8
  %122 = call i32 @fold_relational_const(i32 129, i64 %119, i64 %120, i64 %121)
  %123 = call i32 @integer_nonzerop(i32 %122)
  store i32 %123, i32* %16, align 4
  %124 = load i64, i64* %7, align 8
  %125 = load i64, i64* %11, align 8
  %126 = load i64, i64* %14, align 8
  %127 = call i32 @fold_relational_const(i32 129, i64 %124, i64 %125, i64 %126)
  %128 = call i32 @integer_nonzerop(i32 %127)
  store i32 %128, i32* %17, align 4
  %129 = load i32, i32* %6, align 4
  switch i32 %129, label %190 [
    i32 133, label %130
    i32 128, label %142
    i32 129, label %154
    i32 130, label %154
    i32 131, label %172
    i32 132, label %172
  ]

130:                                              ; preds = %110
  %131 = load i32, i32* %16, align 4
  %132 = icmp ne i32 %131, 0
  br i1 %132, label %136, label %133

133:                                              ; preds = %130
  %134 = load i32, i32* %17, align 4
  %135 = icmp ne i32 %134, 0
  br i1 %135, label %136, label %141

136:                                              ; preds = %133, %130
  %137 = load i64, i64* %7, align 8
  %138 = load i32, i32* @integer_zero_node, align 4
  %139 = load i64, i64* %8, align 8
  %140 = call i64 @omit_one_operand(i64 %137, i32 %138, i64 %139)
  store i64 %140, i64* %5, align 8
  br label %193

141:                                              ; preds = %133
  br label %191

142:                                              ; preds = %110
  %143 = load i32, i32* %16, align 4
  %144 = icmp ne i32 %143, 0
  br i1 %144, label %148, label %145

145:                                              ; preds = %142
  %146 = load i32, i32* %17, align 4
  %147 = icmp ne i32 %146, 0
  br i1 %147, label %148, label %153

148:                                              ; preds = %145, %142
  %149 = load i64, i64* %7, align 8
  %150 = load i32, i32* @integer_one_node, align 4
  %151 = load i64, i64* %8, align 8
  %152 = call i64 @omit_one_operand(i64 %149, i32 %150, i64 %151)
  store i64 %152, i64* %5, align 8
  br label %193

153:                                              ; preds = %145
  br label %191

154:                                              ; preds = %110, %110
  %155 = load i32, i32* %16, align 4
  %156 = icmp ne i32 %155, 0
  br i1 %156, label %157, label %162

157:                                              ; preds = %154
  %158 = load i64, i64* %7, align 8
  %159 = load i32, i32* @integer_one_node, align 4
  %160 = load i64, i64* %8, align 8
  %161 = call i64 @omit_one_operand(i64 %158, i32 %159, i64 %160)
  store i64 %161, i64* %5, align 8
  br label %193

162:                                              ; preds = %154
  %163 = load i32, i32* %17, align 4
  %164 = icmp ne i32 %163, 0
  br i1 %164, label %165, label %170

165:                                              ; preds = %162
  %166 = load i64, i64* %7, align 8
  %167 = load i32, i32* @integer_zero_node, align 4
  %168 = load i64, i64* %8, align 8
  %169 = call i64 @omit_one_operand(i64 %166, i32 %167, i64 %168)
  store i64 %169, i64* %5, align 8
  br label %193

170:                                              ; preds = %162
  br label %171

171:                                              ; preds = %170
  br label %172

172:                                              ; preds = %110, %110, %171
  %173 = load i32, i32* %16, align 4
  %174 = icmp ne i32 %173, 0
  br i1 %174, label %175, label %180

175:                                              ; preds = %172
  %176 = load i64, i64* %7, align 8
  %177 = load i32, i32* @integer_zero_node, align 4
  %178 = load i64, i64* %8, align 8
  %179 = call i64 @omit_one_operand(i64 %176, i32 %177, i64 %178)
  store i64 %179, i64* %5, align 8
  br label %193

180:                                              ; preds = %172
  %181 = load i32, i32* %17, align 4
  %182 = icmp ne i32 %181, 0
  br i1 %182, label %183, label %188

183:                                              ; preds = %180
  %184 = load i64, i64* %7, align 8
  %185 = load i32, i32* @integer_one_node, align 4
  %186 = load i64, i64* %8, align 8
  %187 = call i64 @omit_one_operand(i64 %184, i32 %185, i64 %186)
  store i64 %187, i64* %5, align 8
  br label %193

188:                                              ; preds = %180
  br label %189

189:                                              ; preds = %188
  br label %190

190:                                              ; preds = %110, %189
  br label %191

191:                                              ; preds = %190, %153, %141
  %192 = load i64, i64* @NULL_TREE, align 8
  store i64 %192, i64* %5, align 8
  br label %193

193:                                              ; preds = %191, %183, %175, %165, %157, %148, %136, %108, %85, %35, %24
  %194 = load i64, i64* %5, align 8
  ret i64 %194
}

declare dso_local i64 @get_unwidened(i64, i64) #1

declare dso_local i64 @TREE_TYPE(i64) #1

declare dso_local i64 @TYPE_PRECISION(i64) #1

declare dso_local i64 @TYPE_UNSIGNED(i64) #1

declare dso_local i64 @TREE_CODE(i64) #1

declare dso_local i64 @int_fits_type_p(i64, i64) #1

declare dso_local i64 @fold_build2(i32, i64, i64, i32) #1

declare dso_local i32 @fold_convert(i64, i64) #1

declare dso_local i64 @lower_bound_in_type(i64, i64) #1

declare dso_local i64 @upper_bound_in_type(i64, i64) #1

declare dso_local i32 @integer_nonzerop(i32) #1

declare dso_local i32 @fold_relational_const(i32, i64, i64, i64) #1

declare dso_local i64 @omit_one_operand(i64, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

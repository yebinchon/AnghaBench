; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_fold-const.c_fold_indirect_ref_1.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_fold-const.c_fold_indirect_ref_1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@NULL_TREE = common dso_local global i64 0, align 8
@ADDR_EXPR = common dso_local global i64 0, align 8
@CONST_DECL = common dso_local global i64 0, align 8
@ARRAY_TYPE = common dso_local global i64 0, align 8
@size_zero_node = common dso_local global i64 0, align 8
@ARRAY_REF = common dso_local global i32 0, align 4
@COMPLEX_TYPE = common dso_local global i64 0, align 8
@REALPART_EXPR = common dso_local global i32 0, align 4
@PLUS_EXPR = common dso_local global i64 0, align 8
@INTEGER_CST = common dso_local global i64 0, align 8
@IMAGPART_EXPR = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @fold_indirect_ref_1(i64 %0, i64 %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  %18 = alloca i64, align 8
  store i64 %0, i64* %4, align 8
  store i64 %1, i64* %5, align 8
  %19 = load i64, i64* %5, align 8
  store i64 %19, i64* %6, align 8
  %20 = load i64, i64* %6, align 8
  %21 = call i32 @STRIP_NOPS(i64 %20)
  %22 = load i64, i64* %6, align 8
  %23 = call i64 @TREE_TYPE(i64 %22)
  store i64 %23, i64* %7, align 8
  %24 = load i64, i64* %7, align 8
  %25 = call i32 @POINTER_TYPE_P(i64 %24)
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %29, label %27

27:                                               ; preds = %2
  %28 = load i64, i64* @NULL_TREE, align 8
  store i64 %28, i64* %3, align 8
  br label %197

29:                                               ; preds = %2
  %30 = load i64, i64* %6, align 8
  %31 = call i64 @TREE_CODE(i64 %30)
  %32 = load i64, i64* @ADDR_EXPR, align 8
  %33 = icmp eq i64 %31, %32
  br i1 %33, label %34, label %108

34:                                               ; preds = %29
  %35 = load i64, i64* %6, align 8
  %36 = call i64 @TREE_OPERAND(i64 %35, i32 0)
  store i64 %36, i64* %8, align 8
  %37 = load i64, i64* %8, align 8
  %38 = call i64 @TREE_TYPE(i64 %37)
  store i64 %38, i64* %9, align 8
  %39 = load i64, i64* %8, align 8
  %40 = call i64 @TREE_CODE(i64 %39)
  %41 = load i64, i64* @CONST_DECL, align 8
  %42 = icmp eq i64 %40, %41
  br i1 %42, label %43, label %46

43:                                               ; preds = %34
  %44 = load i64, i64* %8, align 8
  %45 = call i64 @DECL_INITIAL(i64 %44)
  store i64 %45, i64* %3, align 8
  br label %197

46:                                               ; preds = %34
  %47 = load i64, i64* %4, align 8
  %48 = load i64, i64* %9, align 8
  %49 = icmp eq i64 %47, %48
  br i1 %49, label %50, label %59

50:                                               ; preds = %46
  %51 = load i64, i64* %8, align 8
  %52 = call i64 @fold_read_from_constant_string(i64 %51)
  store i64 %52, i64* %10, align 8
  %53 = load i64, i64* %10, align 8
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %57

55:                                               ; preds = %50
  %56 = load i64, i64* %10, align 8
  store i64 %56, i64* %3, align 8
  br label %197

57:                                               ; preds = %50
  %58 = load i64, i64* %8, align 8
  store i64 %58, i64* %3, align 8
  br label %197

59:                                               ; preds = %46
  %60 = load i64, i64* %9, align 8
  %61 = call i64 @TREE_CODE(i64 %60)
  %62 = load i64, i64* @ARRAY_TYPE, align 8
  %63 = icmp eq i64 %61, %62
  br i1 %63, label %64, label %90

64:                                               ; preds = %59
  %65 = load i64, i64* %4, align 8
  %66 = load i64, i64* %9, align 8
  %67 = call i64 @TREE_TYPE(i64 %66)
  %68 = icmp eq i64 %65, %67
  br i1 %68, label %69, label %90

69:                                               ; preds = %64
  %70 = load i64, i64* %9, align 8
  %71 = call i64 @TYPE_DOMAIN(i64 %70)
  store i64 %71, i64* %11, align 8
  %72 = load i64, i64* @size_zero_node, align 8
  store i64 %72, i64* %12, align 8
  %73 = load i64, i64* %11, align 8
  %74 = icmp ne i64 %73, 0
  br i1 %74, label %75, label %82

75:                                               ; preds = %69
  %76 = load i64, i64* %11, align 8
  %77 = call i64 @TYPE_MIN_VALUE(i64 %76)
  %78 = icmp ne i64 %77, 0
  br i1 %78, label %79, label %82

79:                                               ; preds = %75
  %80 = load i64, i64* %11, align 8
  %81 = call i64 @TYPE_MIN_VALUE(i64 %80)
  store i64 %81, i64* %12, align 8
  br label %82

82:                                               ; preds = %79, %75, %69
  %83 = load i32, i32* @ARRAY_REF, align 4
  %84 = load i64, i64* %4, align 8
  %85 = load i64, i64* %8, align 8
  %86 = load i64, i64* %12, align 8
  %87 = load i64, i64* @NULL_TREE, align 8
  %88 = load i64, i64* @NULL_TREE, align 8
  %89 = call i64 @build4(i32 %83, i64 %84, i64 %85, i64 %86, i64 %87, i64 %88)
  store i64 %89, i64* %3, align 8
  br label %197

90:                                               ; preds = %64, %59
  %91 = load i64, i64* %9, align 8
  %92 = call i64 @TREE_CODE(i64 %91)
  %93 = load i64, i64* @COMPLEX_TYPE, align 8
  %94 = icmp eq i64 %92, %93
  br i1 %94, label %95, label %105

95:                                               ; preds = %90
  %96 = load i64, i64* %4, align 8
  %97 = load i64, i64* %9, align 8
  %98 = call i64 @TREE_TYPE(i64 %97)
  %99 = icmp eq i64 %96, %98
  br i1 %99, label %100, label %105

100:                                              ; preds = %95
  %101 = load i32, i32* @REALPART_EXPR, align 4
  %102 = load i64, i64* %4, align 8
  %103 = load i64, i64* %8, align 8
  %104 = call i64 @fold_build1(i32 %101, i64 %102, i64 %103)
  store i64 %104, i64* %3, align 8
  br label %197

105:                                              ; preds = %95, %90
  br label %106

106:                                              ; preds = %105
  br label %107

107:                                              ; preds = %106
  br label %108

108:                                              ; preds = %107, %29
  %109 = load i64, i64* %6, align 8
  %110 = call i64 @TREE_CODE(i64 %109)
  %111 = load i64, i64* @PLUS_EXPR, align 8
  %112 = icmp eq i64 %110, %111
  br i1 %112, label %113, label %159

113:                                              ; preds = %108
  %114 = load i64, i64* %6, align 8
  %115 = call i64 @TREE_OPERAND(i64 %114, i32 1)
  %116 = call i64 @TREE_CODE(i64 %115)
  %117 = load i64, i64* @INTEGER_CST, align 8
  %118 = icmp eq i64 %116, %117
  br i1 %118, label %119, label %159

119:                                              ; preds = %113
  %120 = load i64, i64* %6, align 8
  %121 = call i64 @TREE_OPERAND(i64 %120, i32 0)
  store i64 %121, i64* %13, align 8
  %122 = load i64, i64* %6, align 8
  %123 = call i64 @TREE_OPERAND(i64 %122, i32 1)
  store i64 %123, i64* %14, align 8
  %124 = load i64, i64* %13, align 8
  %125 = call i32 @STRIP_NOPS(i64 %124)
  %126 = load i64, i64* %13, align 8
  %127 = call i64 @TREE_TYPE(i64 %126)
  store i64 %127, i64* %15, align 8
  %128 = load i64, i64* %13, align 8
  %129 = call i64 @TREE_CODE(i64 %128)
  %130 = load i64, i64* @ADDR_EXPR, align 8
  %131 = icmp eq i64 %129, %130
  br i1 %131, label %132, label %158

132:                                              ; preds = %119
  %133 = load i64, i64* %15, align 8
  %134 = call i64 @TREE_TYPE(i64 %133)
  %135 = call i64 @TREE_CODE(i64 %134)
  %136 = load i64, i64* @COMPLEX_TYPE, align 8
  %137 = icmp eq i64 %135, %136
  br i1 %137, label %138, label %158

138:                                              ; preds = %132
  %139 = load i64, i64* %4, align 8
  %140 = load i64, i64* %15, align 8
  %141 = call i64 @TREE_TYPE(i64 %140)
  %142 = call i64 @TREE_TYPE(i64 %141)
  %143 = icmp eq i64 %139, %142
  br i1 %143, label %144, label %158

144:                                              ; preds = %138
  %145 = load i64, i64* %4, align 8
  %146 = call i64 @TYPE_SIZE_UNIT(i64 %145)
  store i64 %146, i64* %16, align 8
  %147 = load i64, i64* %16, align 8
  %148 = load i64, i64* %14, align 8
  %149 = call i64 @tree_int_cst_equal(i64 %147, i64 %148)
  %150 = icmp ne i64 %149, 0
  br i1 %150, label %151, label %157

151:                                              ; preds = %144
  %152 = load i32, i32* @IMAGPART_EXPR, align 4
  %153 = load i64, i64* %4, align 8
  %154 = load i64, i64* %13, align 8
  %155 = call i64 @TREE_OPERAND(i64 %154, i32 0)
  %156 = call i64 @fold_build1(i32 %152, i64 %153, i64 %155)
  store i64 %156, i64* %3, align 8
  br label %197

157:                                              ; preds = %144
  br label %158

158:                                              ; preds = %157, %138, %132, %119
  br label %159

159:                                              ; preds = %158, %113, %108
  %160 = load i64, i64* %7, align 8
  %161 = call i64 @TREE_TYPE(i64 %160)
  %162 = call i64 @TREE_CODE(i64 %161)
  %163 = load i64, i64* @ARRAY_TYPE, align 8
  %164 = icmp eq i64 %162, %163
  br i1 %164, label %165, label %195

165:                                              ; preds = %159
  %166 = load i64, i64* %4, align 8
  %167 = load i64, i64* %7, align 8
  %168 = call i64 @TREE_TYPE(i64 %167)
  %169 = call i64 @TREE_TYPE(i64 %168)
  %170 = icmp eq i64 %166, %169
  br i1 %170, label %171, label %195

171:                                              ; preds = %165
  %172 = load i64, i64* @size_zero_node, align 8
  store i64 %172, i64* %18, align 8
  %173 = load i64, i64* %6, align 8
  %174 = call i64 @build_fold_indirect_ref(i64 %173)
  store i64 %174, i64* %6, align 8
  %175 = load i64, i64* %6, align 8
  %176 = call i64 @TREE_TYPE(i64 %175)
  %177 = call i64 @TYPE_DOMAIN(i64 %176)
  store i64 %177, i64* %17, align 8
  %178 = load i64, i64* %17, align 8
  %179 = icmp ne i64 %178, 0
  br i1 %179, label %180, label %187

180:                                              ; preds = %171
  %181 = load i64, i64* %17, align 8
  %182 = call i64 @TYPE_MIN_VALUE(i64 %181)
  %183 = icmp ne i64 %182, 0
  br i1 %183, label %184, label %187

184:                                              ; preds = %180
  %185 = load i64, i64* %17, align 8
  %186 = call i64 @TYPE_MIN_VALUE(i64 %185)
  store i64 %186, i64* %18, align 8
  br label %187

187:                                              ; preds = %184, %180, %171
  %188 = load i32, i32* @ARRAY_REF, align 4
  %189 = load i64, i64* %4, align 8
  %190 = load i64, i64* %6, align 8
  %191 = load i64, i64* %18, align 8
  %192 = load i64, i64* @NULL_TREE, align 8
  %193 = load i64, i64* @NULL_TREE, align 8
  %194 = call i64 @build4(i32 %188, i64 %189, i64 %190, i64 %191, i64 %192, i64 %193)
  store i64 %194, i64* %3, align 8
  br label %197

195:                                              ; preds = %165, %159
  %196 = load i64, i64* @NULL_TREE, align 8
  store i64 %196, i64* %3, align 8
  br label %197

197:                                              ; preds = %195, %187, %151, %100, %82, %57, %55, %43, %27
  %198 = load i64, i64* %3, align 8
  ret i64 %198
}

declare dso_local i32 @STRIP_NOPS(i64) #1

declare dso_local i64 @TREE_TYPE(i64) #1

declare dso_local i32 @POINTER_TYPE_P(i64) #1

declare dso_local i64 @TREE_CODE(i64) #1

declare dso_local i64 @TREE_OPERAND(i64, i32) #1

declare dso_local i64 @DECL_INITIAL(i64) #1

declare dso_local i64 @fold_read_from_constant_string(i64) #1

declare dso_local i64 @TYPE_DOMAIN(i64) #1

declare dso_local i64 @TYPE_MIN_VALUE(i64) #1

declare dso_local i64 @build4(i32, i64, i64, i64, i64, i64) #1

declare dso_local i64 @fold_build1(i32, i64, i64) #1

declare dso_local i64 @TYPE_SIZE_UNIT(i64) #1

declare dso_local i64 @tree_int_cst_equal(i64, i64) #1

declare dso_local i64 @build_fold_indirect_ref(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

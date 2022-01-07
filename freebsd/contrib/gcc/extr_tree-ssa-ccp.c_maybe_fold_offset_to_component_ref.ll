; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_tree-ssa-ccp.c_maybe_fold_offset_to_component_ref.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_tree-ssa-ccp.c_maybe_fold_offset_to_component_ref.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64 (i64, i64)* }

@RECORD_TYPE = common dso_local global i64 0, align 8
@UNION_TYPE = common dso_local global i64 0, align 8
@QUAL_UNION_TYPE = common dso_local global i64 0, align 8
@NULL_TREE = common dso_local global i64 0, align 8
@lang_hooks = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@FIELD_DECL = common dso_local global i64 0, align 8
@INTEGER_CST = common dso_local global i64 0, align 8
@INDIRECT_REF = common dso_local global i32 0, align 4
@COMPONENT_REF = common dso_local global i32 0, align 4
@ARRAY_TYPE = common dso_local global i64 0, align 8
@MINUS_EXPR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i64, i64, i64, i64, i32)* @maybe_fold_offset_to_component_ref to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @maybe_fold_offset_to_component_ref(i64 %0, i64 %1, i64 %2, i64 %3, i32 %4) #0 {
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i32, align 4
  store i64 %0, i64* %7, align 8
  store i64 %1, i64* %8, align 8
  store i64 %2, i64* %9, align 8
  store i64 %3, i64* %10, align 8
  store i32 %4, i32* %11, align 4
  %18 = load i64, i64* %7, align 8
  %19 = call i64 @TREE_CODE(i64 %18)
  %20 = load i64, i64* @RECORD_TYPE, align 8
  %21 = icmp ne i64 %19, %20
  br i1 %21, label %22, label %34

22:                                               ; preds = %5
  %23 = load i64, i64* %7, align 8
  %24 = call i64 @TREE_CODE(i64 %23)
  %25 = load i64, i64* @UNION_TYPE, align 8
  %26 = icmp ne i64 %24, %25
  br i1 %26, label %27, label %34

27:                                               ; preds = %22
  %28 = load i64, i64* %7, align 8
  %29 = call i64 @TREE_CODE(i64 %28)
  %30 = load i64, i64* @QUAL_UNION_TYPE, align 8
  %31 = icmp ne i64 %29, %30
  br i1 %31, label %32, label %34

32:                                               ; preds = %27
  %33 = load i64, i64* @NULL_TREE, align 8
  store i64 %33, i64* %6, align 8
  br label %190

34:                                               ; preds = %27, %22, %5
  %35 = load i64 (i64, i64)*, i64 (i64, i64)** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @lang_hooks, i32 0, i32 0), align 8
  %36 = load i64, i64* %7, align 8
  %37 = load i64, i64* %10, align 8
  %38 = call i64 %35(i64 %36, i64 %37)
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %42

40:                                               ; preds = %34
  %41 = load i64, i64* @NULL_TREE, align 8
  store i64 %41, i64* %6, align 8
  br label %190

42:                                               ; preds = %34
  %43 = load i64, i64* @NULL_TREE, align 8
  store i64 %43, i64* %15, align 8
  %44 = load i64, i64* %7, align 8
  %45 = call i64 @TYPE_FIELDS(i64 %44)
  store i64 %45, i64* %12, align 8
  br label %46

46:                                               ; preds = %144, %42
  %47 = load i64, i64* %12, align 8
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %147

49:                                               ; preds = %46
  %50 = load i64, i64* %12, align 8
  %51 = call i64 @TREE_CODE(i64 %50)
  %52 = load i64, i64* @FIELD_DECL, align 8
  %53 = icmp ne i64 %51, %52
  br i1 %53, label %54, label %55

54:                                               ; preds = %49
  br label %144

55:                                               ; preds = %49
  %56 = load i64, i64* %12, align 8
  %57 = call i64 @DECL_BIT_FIELD(i64 %56)
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %60

59:                                               ; preds = %55
  br label %144

60:                                               ; preds = %55
  %61 = load i64, i64* %12, align 8
  %62 = call i64 @byte_position(i64 %61)
  store i64 %62, i64* %16, align 8
  %63 = load i64, i64* %16, align 8
  %64 = call i64 @TREE_CODE(i64 %63)
  %65 = load i64, i64* @INTEGER_CST, align 8
  %66 = icmp ne i64 %64, %65
  br i1 %66, label %67, label %68

67:                                               ; preds = %60
  br label %144

68:                                               ; preds = %60
  %69 = load i64, i64* %12, align 8
  %70 = call i32 @DECL_FIELD_CONTEXT(i64 %69)
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %73, label %72

72:                                               ; preds = %68
  br label %144

73:                                               ; preds = %68
  %74 = load i64, i64* @NULL_TREE, align 8
  store i64 %74, i64* %15, align 8
  %75 = load i64, i64* %16, align 8
  %76 = load i64, i64* %9, align 8
  %77 = call i32 @tree_int_cst_compare(i64 %75, i64 %76)
  store i32 %77, i32* %17, align 4
  %78 = load i32, i32* %17, align 4
  %79 = icmp sgt i32 %78, 0
  br i1 %79, label %80, label %81

80:                                               ; preds = %73
  br label %144

81:                                               ; preds = %73
  %82 = load i64, i64* %12, align 8
  %83 = call i64 @TREE_TYPE(i64 %82)
  store i64 %83, i64* %14, align 8
  %84 = load i32, i32* %17, align 4
  %85 = icmp eq i32 %84, 0
  br i1 %85, label %86, label %108

86:                                               ; preds = %81
  %87 = load i64 (i64, i64)*, i64 (i64, i64)** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @lang_hooks, i32 0, i32 0), align 8
  %88 = load i64, i64* %10, align 8
  %89 = load i64, i64* %14, align 8
  %90 = call i64 %87(i64 %88, i64 %89)
  %91 = icmp ne i64 %90, 0
  br i1 %91, label %92, label %108

92:                                               ; preds = %86
  %93 = load i32, i32* %11, align 4
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %95, label %100

95:                                               ; preds = %92
  %96 = load i32, i32* @INDIRECT_REF, align 4
  %97 = load i64, i64* %7, align 8
  %98 = load i64, i64* %8, align 8
  %99 = call i64 @build1(i32 %96, i64 %97, i64 %98)
  store i64 %99, i64* %8, align 8
  br label %100

100:                                              ; preds = %95, %92
  %101 = load i32, i32* @COMPONENT_REF, align 4
  %102 = load i64, i64* %14, align 8
  %103 = load i64, i64* %8, align 8
  %104 = load i64, i64* %12, align 8
  %105 = load i64, i64* @NULL_TREE, align 8
  %106 = call i64 @build3(i32 %101, i64 %102, i64 %103, i64 %104, i64 %105)
  store i64 %106, i64* %13, align 8
  %107 = load i64, i64* %13, align 8
  store i64 %107, i64* %6, align 8
  br label %190

108:                                              ; preds = %86, %81
  %109 = load i64, i64* %14, align 8
  %110 = call i32 @AGGREGATE_TYPE_P(i64 %109)
  %111 = icmp ne i32 %110, 0
  br i1 %111, label %113, label %112

112:                                              ; preds = %108
  br label %144

113:                                              ; preds = %108
  %114 = load i64, i64* %14, align 8
  %115 = call i64 @TREE_CODE(i64 %114)
  %116 = load i64, i64* @ARRAY_TYPE, align 8
  %117 = icmp eq i64 %115, %116
  br i1 %117, label %118, label %120

118:                                              ; preds = %113
  %119 = load i64, i64* %12, align 8
  store i64 %119, i64* %15, align 8
  br label %120

120:                                              ; preds = %118, %113
  %121 = load i64, i64* %12, align 8
  %122 = call i64 @DECL_SIZE_UNIT(i64 %121)
  %123 = icmp ne i64 %122, 0
  br i1 %123, label %124, label %130

124:                                              ; preds = %120
  %125 = load i64, i64* %12, align 8
  %126 = call i64 @DECL_SIZE_UNIT(i64 %125)
  %127 = call i64 @TREE_CODE(i64 %126)
  %128 = load i64, i64* @INTEGER_CST, align 8
  %129 = icmp ne i64 %127, %128
  br i1 %129, label %130, label %131

130:                                              ; preds = %124, %120
  br label %144

131:                                              ; preds = %124
  %132 = load i32, i32* @MINUS_EXPR, align 4
  %133 = load i64, i64* %9, align 8
  %134 = load i64, i64* %16, align 8
  %135 = call i64 @int_const_binop(i32 %132, i64 %133, i64 %134, i32 1)
  store i64 %135, i64* %13, align 8
  %136 = load i64, i64* %13, align 8
  %137 = load i64, i64* %12, align 8
  %138 = call i64 @DECL_SIZE_UNIT(i64 %137)
  %139 = call i32 @tree_int_cst_lt(i64 %136, i64 %138)
  %140 = icmp ne i32 %139, 0
  br i1 %140, label %142, label %141

141:                                              ; preds = %131
  br label %144

142:                                              ; preds = %131
  %143 = load i64, i64* %13, align 8
  store i64 %143, i64* %9, align 8
  br label %161

144:                                              ; preds = %141, %130, %112, %80, %72, %67, %59, %54
  %145 = load i64, i64* %12, align 8
  %146 = call i64 @TREE_CHAIN(i64 %145)
  store i64 %146, i64* %12, align 8
  br label %46

147:                                              ; preds = %46
  %148 = load i64, i64* %15, align 8
  %149 = icmp ne i64 %148, 0
  br i1 %149, label %152, label %150

150:                                              ; preds = %147
  %151 = load i64, i64* @NULL_TREE, align 8
  store i64 %151, i64* %6, align 8
  br label %190

152:                                              ; preds = %147
  %153 = load i64, i64* %15, align 8
  store i64 %153, i64* %12, align 8
  %154 = load i64, i64* %12, align 8
  %155 = call i64 @TREE_TYPE(i64 %154)
  store i64 %155, i64* %14, align 8
  %156 = load i32, i32* @MINUS_EXPR, align 4
  %157 = load i64, i64* %9, align 8
  %158 = load i64, i64* %12, align 8
  %159 = call i64 @byte_position(i64 %158)
  %160 = call i64 @int_const_binop(i32 %156, i64 %157, i64 %159, i32 1)
  store i64 %160, i64* %9, align 8
  br label %161

161:                                              ; preds = %152, %142
  %162 = load i32, i32* %11, align 4
  %163 = icmp ne i32 %162, 0
  br i1 %163, label %164, label %169

164:                                              ; preds = %161
  %165 = load i32, i32* @INDIRECT_REF, align 4
  %166 = load i64, i64* %7, align 8
  %167 = load i64, i64* %8, align 8
  %168 = call i64 @build1(i32 %165, i64 %166, i64 %167)
  store i64 %168, i64* %8, align 8
  br label %169

169:                                              ; preds = %164, %161
  %170 = load i32, i32* @COMPONENT_REF, align 4
  %171 = load i64, i64* %14, align 8
  %172 = load i64, i64* %8, align 8
  %173 = load i64, i64* %12, align 8
  %174 = load i64, i64* @NULL_TREE, align 8
  %175 = call i64 @build3(i32 %170, i64 %171, i64 %172, i64 %173, i64 %174)
  store i64 %175, i64* %8, align 8
  %176 = load i64, i64* %8, align 8
  %177 = load i64, i64* %9, align 8
  %178 = load i64, i64* %10, align 8
  %179 = call i64 @maybe_fold_offset_to_array_ref(i64 %176, i64 %177, i64 %178)
  store i64 %179, i64* %13, align 8
  %180 = load i64, i64* %13, align 8
  %181 = icmp ne i64 %180, 0
  br i1 %181, label %182, label %184

182:                                              ; preds = %169
  %183 = load i64, i64* %13, align 8
  store i64 %183, i64* %6, align 8
  br label %190

184:                                              ; preds = %169
  %185 = load i64, i64* %14, align 8
  %186 = load i64, i64* %8, align 8
  %187 = load i64, i64* %9, align 8
  %188 = load i64, i64* %10, align 8
  %189 = call i64 @maybe_fold_offset_to_component_ref(i64 %185, i64 %186, i64 %187, i64 %188, i32 0)
  store i64 %189, i64* %6, align 8
  br label %190

190:                                              ; preds = %184, %182, %150, %100, %40, %32
  %191 = load i64, i64* %6, align 8
  ret i64 %191
}

declare dso_local i64 @TREE_CODE(i64) #1

declare dso_local i64 @TYPE_FIELDS(i64) #1

declare dso_local i64 @DECL_BIT_FIELD(i64) #1

declare dso_local i64 @byte_position(i64) #1

declare dso_local i32 @DECL_FIELD_CONTEXT(i64) #1

declare dso_local i32 @tree_int_cst_compare(i64, i64) #1

declare dso_local i64 @TREE_TYPE(i64) #1

declare dso_local i64 @build1(i32, i64, i64) #1

declare dso_local i64 @build3(i32, i64, i64, i64, i64) #1

declare dso_local i32 @AGGREGATE_TYPE_P(i64) #1

declare dso_local i64 @DECL_SIZE_UNIT(i64) #1

declare dso_local i64 @int_const_binop(i32, i64, i64, i32) #1

declare dso_local i32 @tree_int_cst_lt(i64, i64) #1

declare dso_local i64 @TREE_CHAIN(i64) #1

declare dso_local i64 @maybe_fold_offset_to_array_ref(i64, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

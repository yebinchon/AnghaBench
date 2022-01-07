; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/config/mips/extr_mips.c_mips_va_start.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/config/mips/extr_mips.c_mips_va_start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, i32, i32 }
%struct.TYPE_7__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32 }

@EABI_FLOAT_VARARGS_P = common dso_local global i64 0, align 8
@current_function_args_info = common dso_local global %struct.TYPE_6__ zeroinitializer, align 4
@MAX_ARGS_IN_REGISTERS = common dso_local global i32 0, align 4
@UNITS_PER_WORD = common dso_local global i32 0, align 4
@UNITS_PER_FPREG = common dso_local global i32 0, align 4
@va_list_type_node = common dso_local global i32 0, align 4
@COMPONENT_REF = common dso_local global i32 0, align 4
@NULL_TREE = common dso_local global i32 0, align 4
@virtual_incoming_args_rtx = common dso_local global i32 0, align 4
@PLUS_EXPR = common dso_local global i32 0, align 4
@MODIFY_EXPR = common dso_local global i32 0, align 4
@const0_rtx = common dso_local global i32 0, align 4
@VOIDmode = common dso_local global i32 0, align 4
@EXPAND_NORMAL = common dso_local global i32 0, align 4
@UNITS_PER_FPVALUE = common dso_local global i32 0, align 4
@cfun = common dso_local global %struct.TYPE_7__* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mips_va_start(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_6__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
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
  %19 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  %20 = load i64, i64* @EABI_FLOAT_VARARGS_P, align 8
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %193

22:                                               ; preds = %2
  store %struct.TYPE_6__* @current_function_args_info, %struct.TYPE_6__** %5, align 8
  %23 = load i32, i32* @MAX_ARGS_IN_REGISTERS, align 4
  %24 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %25 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = sub nsw i32 %23, %26
  %28 = load i32, i32* @UNITS_PER_WORD, align 4
  %29 = mul nsw i32 %27, %28
  store i32 %29, i32* %17, align 4
  %30 = load i32, i32* @MAX_ARGS_IN_REGISTERS, align 4
  %31 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %32 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  %34 = sub nsw i32 %30, %33
  %35 = load i32, i32* @UNITS_PER_FPREG, align 4
  %36 = mul nsw i32 %34, %35
  store i32 %36, i32* %18, align 4
  %37 = load i32, i32* @va_list_type_node, align 4
  %38 = call i32 @TYPE_FIELDS(i32 %37)
  store i32 %38, i32* %6, align 4
  %39 = load i32, i32* %6, align 4
  %40 = call i32 @TREE_CHAIN(i32 %39)
  store i32 %40, i32* %7, align 4
  %41 = load i32, i32* %7, align 4
  %42 = call i32 @TREE_CHAIN(i32 %41)
  store i32 %42, i32* %8, align 4
  %43 = load i32, i32* %8, align 4
  %44 = call i32 @TREE_CHAIN(i32 %43)
  store i32 %44, i32* %9, align 4
  %45 = load i32, i32* %9, align 4
  %46 = call i32 @TREE_CHAIN(i32 %45)
  store i32 %46, i32* %10, align 4
  %47 = load i32, i32* @COMPONENT_REF, align 4
  %48 = load i32, i32* %6, align 4
  %49 = call i32 @TREE_TYPE(i32 %48)
  %50 = load i32, i32* %3, align 4
  %51 = load i32, i32* %6, align 4
  %52 = load i32, i32* @NULL_TREE, align 4
  %53 = call i32 @build3(i32 %47, i32 %49, i32 %50, i32 %51, i32 %52)
  store i32 %53, i32* %11, align 4
  %54 = load i32, i32* @COMPONENT_REF, align 4
  %55 = load i32, i32* %7, align 4
  %56 = call i32 @TREE_TYPE(i32 %55)
  %57 = load i32, i32* %3, align 4
  %58 = load i32, i32* %7, align 4
  %59 = load i32, i32* @NULL_TREE, align 4
  %60 = call i32 @build3(i32 %54, i32 %56, i32 %57, i32 %58, i32 %59)
  store i32 %60, i32* %12, align 4
  %61 = load i32, i32* @COMPONENT_REF, align 4
  %62 = load i32, i32* %8, align 4
  %63 = call i32 @TREE_TYPE(i32 %62)
  %64 = load i32, i32* %3, align 4
  %65 = load i32, i32* %8, align 4
  %66 = load i32, i32* @NULL_TREE, align 4
  %67 = call i32 @build3(i32 %61, i32 %63, i32 %64, i32 %65, i32 %66)
  store i32 %67, i32* %13, align 4
  %68 = load i32, i32* @COMPONENT_REF, align 4
  %69 = load i32, i32* %9, align 4
  %70 = call i32 @TREE_TYPE(i32 %69)
  %71 = load i32, i32* %3, align 4
  %72 = load i32, i32* %9, align 4
  %73 = load i32, i32* @NULL_TREE, align 4
  %74 = call i32 @build3(i32 %68, i32 %70, i32 %71, i32 %72, i32 %73)
  store i32 %74, i32* %14, align 4
  %75 = load i32, i32* @COMPONENT_REF, align 4
  %76 = load i32, i32* %10, align 4
  %77 = call i32 @TREE_TYPE(i32 %76)
  %78 = load i32, i32* %3, align 4
  %79 = load i32, i32* %10, align 4
  %80 = load i32, i32* @NULL_TREE, align 4
  %81 = call i32 @build3(i32 %75, i32 %77, i32 %78, i32 %79, i32 %80)
  store i32 %81, i32* %15, align 4
  %82 = load i32, i32* %11, align 4
  %83 = call i32 @TREE_TYPE(i32 %82)
  %84 = load i32, i32* @virtual_incoming_args_rtx, align 4
  %85 = call i32 @make_tree(i32 %83, i32 %84)
  store i32 %85, i32* %16, align 4
  %86 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %87 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %86, i32 0, i32 2
  %88 = load i32, i32* %87, align 4
  %89 = icmp sgt i32 %88, 0
  br i1 %89, label %90, label %103

90:                                               ; preds = %22
  %91 = load i32, i32* @PLUS_EXPR, align 4
  %92 = load i32, i32* %11, align 4
  %93 = call i32 @TREE_TYPE(i32 %92)
  %94 = load i32, i32* %16, align 4
  %95 = load i32, i32* @NULL_TREE, align 4
  %96 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %97 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %96, i32 0, i32 2
  %98 = load i32, i32* %97, align 4
  %99 = load i32, i32* @UNITS_PER_WORD, align 4
  %100 = mul nsw i32 %98, %99
  %101 = call i32 @build_int_cst(i32 %95, i32 %100)
  %102 = call i32 @build2(i32 %91, i32 %93, i32 %94, i32 %101)
  store i32 %102, i32* %16, align 4
  br label %103

103:                                              ; preds = %90, %22
  %104 = load i32, i32* @MODIFY_EXPR, align 4
  %105 = load i32, i32* %11, align 4
  %106 = call i32 @TREE_TYPE(i32 %105)
  %107 = load i32, i32* %11, align 4
  %108 = load i32, i32* %16, align 4
  %109 = call i32 @build2(i32 %104, i32 %106, i32 %107, i32 %108)
  store i32 %109, i32* %16, align 4
  %110 = load i32, i32* %16, align 4
  %111 = load i32, i32* @const0_rtx, align 4
  %112 = load i32, i32* @VOIDmode, align 4
  %113 = load i32, i32* @EXPAND_NORMAL, align 4
  %114 = call i32 @expand_expr(i32 %110, i32 %111, i32 %112, i32 %113)
  %115 = load i32, i32* %12, align 4
  %116 = call i32 @TREE_TYPE(i32 %115)
  %117 = load i32, i32* @virtual_incoming_args_rtx, align 4
  %118 = call i32 @make_tree(i32 %116, i32 %117)
  store i32 %118, i32* %16, align 4
  %119 = load i32, i32* @MODIFY_EXPR, align 4
  %120 = load i32, i32* %12, align 4
  %121 = call i32 @TREE_TYPE(i32 %120)
  %122 = load i32, i32* %12, align 4
  %123 = load i32, i32* %16, align 4
  %124 = call i32 @build2(i32 %119, i32 %121, i32 %122, i32 %123)
  store i32 %124, i32* %16, align 4
  %125 = load i32, i32* %16, align 4
  %126 = load i32, i32* @const0_rtx, align 4
  %127 = load i32, i32* @VOIDmode, align 4
  %128 = load i32, i32* @EXPAND_NORMAL, align 4
  %129 = call i32 @expand_expr(i32 %125, i32 %126, i32 %127, i32 %128)
  %130 = load i32, i32* %13, align 4
  %131 = call i32 @TREE_TYPE(i32 %130)
  %132 = load i32, i32* @virtual_incoming_args_rtx, align 4
  %133 = call i32 @make_tree(i32 %131, i32 %132)
  store i32 %133, i32* %16, align 4
  %134 = load i32, i32* %17, align 4
  %135 = load i32, i32* @UNITS_PER_FPVALUE, align 4
  %136 = add nsw i32 %134, %135
  %137 = sub nsw i32 %136, 1
  store i32 %137, i32* %19, align 4
  %138 = load i32, i32* @UNITS_PER_FPVALUE, align 4
  %139 = sub nsw i32 %138, 1
  %140 = xor i32 %139, -1
  %141 = load i32, i32* %19, align 4
  %142 = and i32 %141, %140
  store i32 %142, i32* %19, align 4
  %143 = load i32, i32* %19, align 4
  %144 = icmp ne i32 %143, 0
  br i1 %144, label %145, label %155

145:                                              ; preds = %103
  %146 = load i32, i32* @PLUS_EXPR, align 4
  %147 = load i32, i32* %13, align 4
  %148 = call i32 @TREE_TYPE(i32 %147)
  %149 = load i32, i32* %16, align 4
  %150 = load i32, i32* @NULL_TREE, align 4
  %151 = load i32, i32* %19, align 4
  %152 = sub nsw i32 0, %151
  %153 = call i32 @build_int_cst(i32 %150, i32 %152)
  %154 = call i32 @build2(i32 %146, i32 %148, i32 %149, i32 %153)
  store i32 %154, i32* %16, align 4
  br label %155

155:                                              ; preds = %145, %103
  %156 = load i32, i32* @MODIFY_EXPR, align 4
  %157 = load i32, i32* %13, align 4
  %158 = call i32 @TREE_TYPE(i32 %157)
  %159 = load i32, i32* %13, align 4
  %160 = load i32, i32* %16, align 4
  %161 = call i32 @build2(i32 %156, i32 %158, i32 %159, i32 %160)
  store i32 %161, i32* %16, align 4
  %162 = load i32, i32* %16, align 4
  %163 = load i32, i32* @const0_rtx, align 4
  %164 = load i32, i32* @VOIDmode, align 4
  %165 = load i32, i32* @EXPAND_NORMAL, align 4
  %166 = call i32 @expand_expr(i32 %162, i32 %163, i32 %164, i32 %165)
  %167 = load i32, i32* @MODIFY_EXPR, align 4
  %168 = load i32, i32* %14, align 4
  %169 = call i32 @TREE_TYPE(i32 %168)
  %170 = load i32, i32* %14, align 4
  %171 = load i32, i32* @NULL_TREE, align 4
  %172 = load i32, i32* %17, align 4
  %173 = call i32 @build_int_cst(i32 %171, i32 %172)
  %174 = call i32 @build2(i32 %167, i32 %169, i32 %170, i32 %173)
  store i32 %174, i32* %16, align 4
  %175 = load i32, i32* %16, align 4
  %176 = load i32, i32* @const0_rtx, align 4
  %177 = load i32, i32* @VOIDmode, align 4
  %178 = load i32, i32* @EXPAND_NORMAL, align 4
  %179 = call i32 @expand_expr(i32 %175, i32 %176, i32 %177, i32 %178)
  %180 = load i32, i32* @MODIFY_EXPR, align 4
  %181 = load i32, i32* %15, align 4
  %182 = call i32 @TREE_TYPE(i32 %181)
  %183 = load i32, i32* %15, align 4
  %184 = load i32, i32* @NULL_TREE, align 4
  %185 = load i32, i32* %18, align 4
  %186 = call i32 @build_int_cst(i32 %184, i32 %185)
  %187 = call i32 @build2(i32 %180, i32 %182, i32 %183, i32 %186)
  store i32 %187, i32* %16, align 4
  %188 = load i32, i32* %16, align 4
  %189 = load i32, i32* @const0_rtx, align 4
  %190 = load i32, i32* @VOIDmode, align 4
  %191 = load i32, i32* @EXPAND_NORMAL, align 4
  %192 = call i32 @expand_expr(i32 %188, i32 %189, i32 %190, i32 %191)
  br label %205

193:                                              ; preds = %2
  %194 = load i32, i32* %4, align 4
  %195 = load %struct.TYPE_7__*, %struct.TYPE_7__** @cfun, align 8
  %196 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %195, i32 0, i32 0
  %197 = load %struct.TYPE_5__*, %struct.TYPE_5__** %196, align 8
  %198 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %197, i32 0, i32 0
  %199 = load i32, i32* %198, align 4
  %200 = sub nsw i32 0, %199
  %201 = call i32 @plus_constant(i32 %194, i32 %200)
  store i32 %201, i32* %4, align 4
  %202 = load i32, i32* %3, align 4
  %203 = load i32, i32* %4, align 4
  %204 = call i32 @std_expand_builtin_va_start(i32 %202, i32 %203)
  br label %205

205:                                              ; preds = %193, %155
  ret void
}

declare dso_local i32 @TYPE_FIELDS(i32) #1

declare dso_local i32 @TREE_CHAIN(i32) #1

declare dso_local i32 @build3(i32, i32, i32, i32, i32) #1

declare dso_local i32 @TREE_TYPE(i32) #1

declare dso_local i32 @make_tree(i32, i32) #1

declare dso_local i32 @build2(i32, i32, i32, i32) #1

declare dso_local i32 @build_int_cst(i32, i32) #1

declare dso_local i32 @expand_expr(i32, i32, i32, i32) #1

declare dso_local i32 @plus_constant(i32, i32) #1

declare dso_local i32 @std_expand_builtin_va_start(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

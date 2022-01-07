; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_tree-inline.c_copy_bb.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_tree-inline.c_copy_bb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { i32, i64, i64, i32, %struct.cgraph_node*, %struct.cgraph_node* }
%struct.cgraph_node = type { %struct.cgraph_node* }
%struct.TYPE_13__ = type { i32, i32, %struct.TYPE_11__* }
%struct.TYPE_11__ = type { i64 }
%struct.cgraph_edge = type { i32 }

@REG_BR_PROB_BASE = common dso_local global i32 0, align 4
@copy_body_r = common dso_local global i32 0, align 4
@MODIFY_EXPR = common dso_local global i64 0, align 8
@NOP_EXPR = common dso_local global i64 0, align 8
@BSI_NEW_STMT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.TYPE_13__* (%struct.TYPE_12__*, %struct.TYPE_13__*, i32, i32)* @copy_bb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.TYPE_13__* @copy_bb(%struct.TYPE_12__* %0, %struct.TYPE_13__* %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.TYPE_12__*, align 8
  %6 = alloca %struct.TYPE_13__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.TYPE_13__*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca %struct.cgraph_node*, align 8
  %17 = alloca %struct.cgraph_edge*, align 8
  %18 = alloca i32, align 4
  store %struct.TYPE_12__* %0, %struct.TYPE_12__** %5, align 8
  store %struct.TYPE_13__* %1, %struct.TYPE_13__** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %19 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %20 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %19, i32 0, i32 2
  %21 = load %struct.TYPE_11__*, %struct.TYPE_11__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = inttoptr i64 %23 to %struct.TYPE_13__*
  %25 = call %struct.TYPE_13__* @create_basic_block(i32* null, i8* null, %struct.TYPE_13__* %24)
  store %struct.TYPE_13__* %25, %struct.TYPE_13__** %11, align 8
  %26 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %27 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = load i32, i32* %8, align 4
  %30 = mul nsw i32 %28, %29
  %31 = load i32, i32* @REG_BR_PROB_BASE, align 4
  %32 = sdiv i32 %30, %31
  %33 = load %struct.TYPE_13__*, %struct.TYPE_13__** %11, align 8
  %34 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %33, i32 0, i32 0
  store i32 %32, i32* %34, align 8
  %35 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %36 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = load i32, i32* %7, align 4
  %39 = mul nsw i32 %37, %38
  %40 = load i32, i32* @REG_BR_PROB_BASE, align 4
  %41 = sdiv i32 %39, %40
  %42 = load %struct.TYPE_13__*, %struct.TYPE_13__** %11, align 8
  %43 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %42, i32 0, i32 1
  store i32 %41, i32* %43, align 4
  %44 = load %struct.TYPE_13__*, %struct.TYPE_13__** %11, align 8
  %45 = call i32 @bsi_start(%struct.TYPE_13__* %44)
  store i32 %45, i32* %10, align 4
  %46 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %47 = call i32 @bsi_start(%struct.TYPE_13__* %46)
  store i32 %47, i32* %9, align 4
  br label %48

48:                                               ; preds = %208, %4
  %49 = load i32, i32* %9, align 4
  %50 = call i32 @bsi_end_p(i32 %49)
  %51 = icmp ne i32 %50, 0
  %52 = xor i1 %51, true
  br i1 %52, label %53, label %210

53:                                               ; preds = %48
  %54 = load i32, i32* %9, align 4
  %55 = call i64 @bsi_stmt(i32 %54)
  store i64 %55, i64* %12, align 8
  %56 = load i64, i64* %12, align 8
  store i64 %56, i64* %13, align 8
  %57 = load i32, i32* @copy_body_r, align 4
  %58 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %59 = call i32 @walk_tree(i64* %12, i32 %57, %struct.TYPE_12__* %58, i32* null)
  %60 = load i64, i64* %12, align 8
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %207

62:                                               ; preds = %53
  %63 = load i64, i64* %12, align 8
  %64 = call i64 @TREE_CODE(i64 %63)
  %65 = load i64, i64* @MODIFY_EXPR, align 8
  %66 = icmp eq i64 %64, %65
  br i1 %66, label %67, label %81

67:                                               ; preds = %62
  %68 = load i64, i64* %12, align 8
  %69 = call i64 @TREE_OPERAND(i64 %68, i32 1)
  %70 = call i64 @TREE_CODE(i64 %69)
  %71 = load i64, i64* @NOP_EXPR, align 8
  %72 = icmp eq i64 %70, %71
  br i1 %72, label %73, label %81

73:                                               ; preds = %67
  %74 = load i64, i64* %12, align 8
  %75 = call i64 @TREE_OPERAND(i64 %74, i32 1)
  %76 = call i64 @TREE_OPERAND(i64 %75, i32 0)
  %77 = call i32 @is_gimple_val(i64 %76)
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %81, label %79

79:                                               ; preds = %73
  %80 = call i32 @gimplify_stmt(i64* %12)
  br label %81

81:                                               ; preds = %79, %73, %67, %62
  %82 = load i64, i64* %12, align 8
  %83 = load i32, i32* @BSI_NEW_STMT, align 4
  %84 = call i32 @bsi_insert_after(i32* %10, i64 %82, i32 %83)
  %85 = load i64, i64* %12, align 8
  %86 = call i64 @get_call_expr_in(i64 %85)
  store i64 %86, i64* %14, align 8
  %87 = load i64, i64* %14, align 8
  %88 = icmp ne i64 %87, 0
  br i1 %88, label %89, label %154

89:                                               ; preds = %81
  %90 = load i64, i64* %14, align 8
  %91 = call i64 @get_callee_fndecl(i64 %90)
  store i64 %91, i64* %15, align 8
  %92 = icmp ne i64 %91, 0
  br i1 %92, label %93, label %154

93:                                               ; preds = %89
  %94 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %95 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 8
  switch i32 %96, label %151 [
    i32 130, label %97
    i32 128, label %114
    i32 129, label %138
  ]

97:                                               ; preds = %93
  %98 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %99 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %98, i32 0, i32 5
  %100 = load %struct.cgraph_node*, %struct.cgraph_node** %99, align 8
  %101 = load i64, i64* %13, align 8
  %102 = call %struct.cgraph_edge* @cgraph_edge(%struct.cgraph_node* %100, i64 %101)
  store %struct.cgraph_edge* %102, %struct.cgraph_edge** %17, align 8
  %103 = load %struct.cgraph_edge*, %struct.cgraph_edge** %17, align 8
  %104 = icmp ne %struct.cgraph_edge* %103, null
  br i1 %104, label %105, label %113

105:                                              ; preds = %97
  %106 = load %struct.cgraph_edge*, %struct.cgraph_edge** %17, align 8
  %107 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %108 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %107, i32 0, i32 4
  %109 = load %struct.cgraph_node*, %struct.cgraph_node** %108, align 8
  %110 = load i64, i64* %12, align 8
  %111 = load i32, i32* @REG_BR_PROB_BASE, align 4
  %112 = call i32 @cgraph_clone_edge(%struct.cgraph_edge* %106, %struct.cgraph_node* %109, i64 %110, i32 %111, i32 1, i32 1)
  br label %113

113:                                              ; preds = %105, %97
  br label %153

114:                                              ; preds = %93
  %115 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %116 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %115, i32 0, i32 4
  %117 = load %struct.cgraph_node*, %struct.cgraph_node** %116, align 8
  %118 = getelementptr inbounds %struct.cgraph_node, %struct.cgraph_node* %117, i32 0, i32 0
  %119 = load %struct.cgraph_node*, %struct.cgraph_node** %118, align 8
  store %struct.cgraph_node* %119, %struct.cgraph_node** %16, align 8
  br label %120

120:                                              ; preds = %133, %114
  %121 = load %struct.cgraph_node*, %struct.cgraph_node** %16, align 8
  %122 = icmp ne %struct.cgraph_node* %121, null
  br i1 %122, label %123, label %137

123:                                              ; preds = %120
  %124 = load %struct.cgraph_node*, %struct.cgraph_node** %16, align 8
  %125 = load i64, i64* %13, align 8
  %126 = call %struct.cgraph_edge* @cgraph_edge(%struct.cgraph_node* %124, i64 %125)
  store %struct.cgraph_edge* %126, %struct.cgraph_edge** %17, align 8
  %127 = load %struct.cgraph_edge*, %struct.cgraph_edge** %17, align 8
  %128 = ptrtoint %struct.cgraph_edge* %127 to i32
  %129 = call i32 @gcc_assert(i32 %128)
  %130 = load %struct.cgraph_edge*, %struct.cgraph_edge** %17, align 8
  %131 = load i64, i64* %12, align 8
  %132 = call i32 @cgraph_set_call_stmt(%struct.cgraph_edge* %130, i64 %131)
  br label %133

133:                                              ; preds = %123
  %134 = load %struct.cgraph_node*, %struct.cgraph_node** %16, align 8
  %135 = getelementptr inbounds %struct.cgraph_node, %struct.cgraph_node* %134, i32 0, i32 0
  %136 = load %struct.cgraph_node*, %struct.cgraph_node** %135, align 8
  store %struct.cgraph_node* %136, %struct.cgraph_node** %16, align 8
  br label %120

137:                                              ; preds = %120
  br label %138

138:                                              ; preds = %93, %137
  %139 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %140 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %139, i32 0, i32 4
  %141 = load %struct.cgraph_node*, %struct.cgraph_node** %140, align 8
  %142 = load i64, i64* %13, align 8
  %143 = call %struct.cgraph_edge* @cgraph_edge(%struct.cgraph_node* %141, i64 %142)
  store %struct.cgraph_edge* %143, %struct.cgraph_edge** %17, align 8
  %144 = load %struct.cgraph_edge*, %struct.cgraph_edge** %17, align 8
  %145 = icmp ne %struct.cgraph_edge* %144, null
  br i1 %145, label %146, label %150

146:                                              ; preds = %138
  %147 = load %struct.cgraph_edge*, %struct.cgraph_edge** %17, align 8
  %148 = load i64, i64* %12, align 8
  %149 = call i32 @cgraph_set_call_stmt(%struct.cgraph_edge* %147, i64 %148)
  br label %150

150:                                              ; preds = %146, %138
  br label %153

151:                                              ; preds = %93
  %152 = call i32 (...) @gcc_unreachable()
  br label %153

153:                                              ; preds = %151, %150, %113
  br label %154

154:                                              ; preds = %153, %89, %81
  %155 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %156 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %155, i32 0, i32 3
  %157 = load i32, i32* %156, align 8
  %158 = load i64, i64* %13, align 8
  %159 = call i32 @lookup_stmt_eh_region_fn(i32 %157, i64 %158)
  %160 = icmp ne i32 %159, 0
  %161 = zext i1 %160 to i32
  %162 = call i32 @gcc_assert(i32 %161)
  %163 = load i64, i64* %12, align 8
  %164 = call i64 @tree_could_throw_p(i64 %163)
  %165 = icmp ne i64 %164, 0
  br i1 %165, label %166, label %206

166:                                              ; preds = %154
  %167 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %168 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %167, i32 0, i32 3
  %169 = load i32, i32* %168, align 8
  %170 = load i64, i64* %13, align 8
  %171 = call i32 @lookup_stmt_eh_region_fn(i32 %169, i64 %170)
  store i32 %171, i32* %18, align 4
  %172 = load i32, i32* %18, align 4
  %173 = icmp sgt i32 %172, 0
  br i1 %173, label %174, label %183

174:                                              ; preds = %166
  %175 = load i64, i64* %12, align 8
  %176 = load i32, i32* %18, align 4
  %177 = sext i32 %176 to i64
  %178 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %179 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %178, i32 0, i32 1
  %180 = load i64, i64* %179, align 8
  %181 = add nsw i64 %177, %180
  %182 = call i32 @add_stmt_to_eh_region(i64 %175, i64 %181)
  br label %183

183:                                              ; preds = %174, %166
  %184 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %185 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %184, i32 0, i32 3
  %186 = load i32, i32* %185, align 8
  %187 = load i64, i64* %13, align 8
  %188 = call i32 @lookup_stmt_eh_region_fn(i32 %186, i64 %187)
  %189 = icmp sle i32 %188, 0
  br i1 %189, label %190, label %205

190:                                              ; preds = %183
  %191 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %192 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %191, i32 0, i32 2
  %193 = load i64, i64* %192, align 8
  %194 = icmp sgt i64 %193, 0
  br i1 %194, label %195, label %205

195:                                              ; preds = %190
  %196 = load i64, i64* %12, align 8
  %197 = call i64 @tree_could_throw_p(i64 %196)
  %198 = icmp ne i64 %197, 0
  br i1 %198, label %199, label %205

199:                                              ; preds = %195
  %200 = load i64, i64* %12, align 8
  %201 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %202 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %201, i32 0, i32 2
  %203 = load i64, i64* %202, align 8
  %204 = call i32 @add_stmt_to_eh_region(i64 %200, i64 %203)
  br label %205

205:                                              ; preds = %199, %195, %190, %183
  br label %206

206:                                              ; preds = %205, %154
  br label %207

207:                                              ; preds = %206, %53
  br label %208

208:                                              ; preds = %207
  %209 = call i32 @bsi_next(i32* %9)
  br label %48

210:                                              ; preds = %48
  %211 = load %struct.TYPE_13__*, %struct.TYPE_13__** %11, align 8
  ret %struct.TYPE_13__* %211
}

declare dso_local %struct.TYPE_13__* @create_basic_block(i32*, i8*, %struct.TYPE_13__*) #1

declare dso_local i32 @bsi_start(%struct.TYPE_13__*) #1

declare dso_local i32 @bsi_end_p(i32) #1

declare dso_local i64 @bsi_stmt(i32) #1

declare dso_local i32 @walk_tree(i64*, i32, %struct.TYPE_12__*, i32*) #1

declare dso_local i64 @TREE_CODE(i64) #1

declare dso_local i64 @TREE_OPERAND(i64, i32) #1

declare dso_local i32 @is_gimple_val(i64) #1

declare dso_local i32 @gimplify_stmt(i64*) #1

declare dso_local i32 @bsi_insert_after(i32*, i64, i32) #1

declare dso_local i64 @get_call_expr_in(i64) #1

declare dso_local i64 @get_callee_fndecl(i64) #1

declare dso_local %struct.cgraph_edge* @cgraph_edge(%struct.cgraph_node*, i64) #1

declare dso_local i32 @cgraph_clone_edge(%struct.cgraph_edge*, %struct.cgraph_node*, i64, i32, i32, i32) #1

declare dso_local i32 @gcc_assert(i32) #1

declare dso_local i32 @cgraph_set_call_stmt(%struct.cgraph_edge*, i64) #1

declare dso_local i32 @gcc_unreachable(...) #1

declare dso_local i32 @lookup_stmt_eh_region_fn(i32, i64) #1

declare dso_local i64 @tree_could_throw_p(i64) #1

declare dso_local i32 @add_stmt_to_eh_region(i64, i64) #1

declare dso_local i32 @bsi_next(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

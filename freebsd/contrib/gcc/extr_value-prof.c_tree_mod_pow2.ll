; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_value-prof.c_tree_mod_pow2.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_value-prof.c_tree_mod_pow2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i8* }
%struct.TYPE_10__ = type { i32, i8*, i32, %struct.TYPE_11__* }

@.str = private unnamed_addr constant [5 x i8] c"PROF\00", align 1
@MODIFY_EXPR = common dso_local global i32 0, align 4
@PLUS_EXPR = common dso_local global i32 0, align 4
@BIT_AND_EXPR = common dso_local global i32 0, align 4
@COND_EXPR = common dso_local global i32 0, align 4
@void_type_node = common dso_local global i32 0, align 4
@NE_EXPR = common dso_local global i32 0, align 4
@boolean_type_node = common dso_local global i32 0, align 4
@GOTO_EXPR = common dso_local global i32 0, align 4
@BSI_SAME_STMT = common dso_local global i32 0, align 4
@LABEL_EXPR = common dso_local global i32 0, align 4
@EDGE_FALLTHRU = common dso_local global i32 0, align 4
@EDGE_FALSE_VALUE = common dso_local global i32 0, align 4
@EDGE_TRUE_VALUE = common dso_local global i32 0, align 4
@REG_BR_PROB_BASE = common dso_local global i8* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i32, i32, i32, i8*, i8*)* @tree_mod_pow2 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tree_mod_pow2(i32 %0, i32 %1, i32 %2, i32 %3, i32 %4, i8* %5, i8* %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i8*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  %27 = alloca i32, align 4
  %28 = alloca i32, align 4
  %29 = alloca i32, align 4
  %30 = alloca %struct.TYPE_11__*, align 8
  %31 = alloca %struct.TYPE_11__*, align 8
  %32 = alloca %struct.TYPE_11__*, align 8
  %33 = alloca %struct.TYPE_11__*, align 8
  %34 = alloca i32, align 4
  %35 = alloca %struct.TYPE_10__*, align 8
  %36 = alloca %struct.TYPE_10__*, align 8
  %37 = alloca %struct.TYPE_10__*, align 8
  %38 = alloca %struct.TYPE_10__*, align 8
  %39 = alloca %struct.TYPE_10__*, align 8
  %40 = alloca i32, align 4
  %41 = alloca i32, align 4
  store i32 %0, i32* %8, align 4
  store i32 %1, i32* %9, align 4
  store i32 %2, i32* %10, align 4
  store i32 %3, i32* %11, align 4
  store i32 %4, i32* %12, align 4
  store i8* %5, i8** %13, align 8
  store i8* %6, i8** %14, align 8
  %42 = call i32 (...) @create_artificial_label()
  store i32 %42, i32* %21, align 4
  %43 = call i32 (...) @create_artificial_label()
  store i32 %43, i32* %22, align 4
  %44 = call i32 (...) @create_artificial_label()
  store i32 %44, i32* %23, align 4
  %45 = load i32, i32* %9, align 4
  %46 = call i32 @TREE_TYPE(i32 %45)
  store i32 %46, i32* %34, align 4
  %47 = load i32, i32* %34, align 4
  %48 = call i32 @create_tmp_var(i32 %47, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  store i32 %48, i32* %41, align 4
  %49 = load i32, i32* %8, align 4
  %50 = call %struct.TYPE_11__* @bb_for_stmt(i32 %49)
  store %struct.TYPE_11__* %50, %struct.TYPE_11__** %30, align 8
  %51 = load i32, i32* %8, align 4
  %52 = call i32 @bsi_for_stmt(i32 %51)
  store i32 %52, i32* %40, align 4
  %53 = load i32, i32* %34, align 4
  %54 = call i32 @create_tmp_var(i32 %53, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  store i32 %54, i32* %19, align 4
  %55 = load i32, i32* %34, align 4
  %56 = call i32 @create_tmp_var(i32 %55, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  store i32 %56, i32* %20, align 4
  %57 = load i32, i32* @MODIFY_EXPR, align 4
  %58 = load i32, i32* %34, align 4
  %59 = load i32, i32* %19, align 4
  %60 = load i32, i32* @PLUS_EXPR, align 4
  %61 = load i32, i32* %34, align 4
  %62 = load i32, i32* %11, align 4
  %63 = load i32, i32* %34, align 4
  %64 = call i32 @build_int_cst(i32 %63, i32 -1)
  %65 = call i32 @build2(i32 %60, i32 %61, i32 %62, i32 %64)
  %66 = call i32 @build2(i32 %57, i32 %58, i32 %59, i32 %65)
  store i32 %66, i32* %16, align 4
  %67 = load i32, i32* @MODIFY_EXPR, align 4
  %68 = load i32, i32* %34, align 4
  %69 = load i32, i32* %20, align 4
  %70 = load i32, i32* @BIT_AND_EXPR, align 4
  %71 = load i32, i32* %34, align 4
  %72 = load i32, i32* %19, align 4
  %73 = load i32, i32* %11, align 4
  %74 = call i32 @build2(i32 %70, i32 %71, i32 %72, i32 %73)
  %75 = call i32 @build2(i32 %67, i32 %68, i32 %69, i32 %74)
  store i32 %75, i32* %17, align 4
  %76 = load i32, i32* @COND_EXPR, align 4
  %77 = load i32, i32* @void_type_node, align 4
  %78 = load i32, i32* @NE_EXPR, align 4
  %79 = load i32, i32* @boolean_type_node, align 4
  %80 = load i32, i32* %20, align 4
  %81 = load i32, i32* %34, align 4
  %82 = call i32 @build_int_cst(i32 %81, i32 0)
  %83 = call i32 @build2(i32 %78, i32 %79, i32 %80, i32 %82)
  %84 = load i32, i32* @GOTO_EXPR, align 4
  %85 = load i32, i32* @void_type_node, align 4
  %86 = load i32, i32* %22, align 4
  %87 = call i32 @build1(i32 %84, i32 %85, i32 %86)
  %88 = load i32, i32* @GOTO_EXPR, align 4
  %89 = load i32, i32* @void_type_node, align 4
  %90 = load i32, i32* %21, align 4
  %91 = call i32 @build1(i32 %88, i32 %89, i32 %90)
  %92 = call i32 @build3(i32 %76, i32 %77, i32 %83, i32 %87, i32 %91)
  store i32 %92, i32* %18, align 4
  %93 = load i32, i32* %16, align 4
  %94 = load i32, i32* @BSI_SAME_STMT, align 4
  %95 = call i32 @bsi_insert_before(i32* %40, i32 %93, i32 %94)
  %96 = load i32, i32* %17, align 4
  %97 = load i32, i32* @BSI_SAME_STMT, align 4
  %98 = call i32 @bsi_insert_before(i32* %40, i32 %96, i32 %97)
  %99 = load i32, i32* %18, align 4
  %100 = load i32, i32* @BSI_SAME_STMT, align 4
  %101 = call i32 @bsi_insert_before(i32* %40, i32 %99, i32 %100)
  %102 = load i32, i32* %18, align 4
  store i32 %102, i32* %27, align 4
  %103 = load i32, i32* @LABEL_EXPR, align 4
  %104 = load i32, i32* @void_type_node, align 4
  %105 = load i32, i32* %21, align 4
  %106 = call i32 @build1(i32 %103, i32 %104, i32 %105)
  store i32 %106, i32* %24, align 4
  %107 = load i32, i32* @MODIFY_EXPR, align 4
  %108 = load i32, i32* %34, align 4
  %109 = load i32, i32* %41, align 4
  %110 = load i32, i32* @BIT_AND_EXPR, align 4
  %111 = load i32, i32* %34, align 4
  %112 = load i32, i32* %10, align 4
  %113 = load i32, i32* %19, align 4
  %114 = call i32 @build2(i32 %110, i32 %111, i32 %112, i32 %113)
  %115 = call i32 @build2(i32 %107, i32 %108, i32 %109, i32 %114)
  store i32 %115, i32* %15, align 4
  %116 = load i32, i32* %24, align 4
  %117 = load i32, i32* @BSI_SAME_STMT, align 4
  %118 = call i32 @bsi_insert_before(i32* %40, i32 %116, i32 %117)
  %119 = load i32, i32* %15, align 4
  %120 = load i32, i32* @BSI_SAME_STMT, align 4
  %121 = call i32 @bsi_insert_before(i32* %40, i32 %119, i32 %120)
  %122 = load i32, i32* %15, align 4
  store i32 %122, i32* %28, align 4
  %123 = load i32, i32* @LABEL_EXPR, align 4
  %124 = load i32, i32* @void_type_node, align 4
  %125 = load i32, i32* %22, align 4
  %126 = call i32 @build1(i32 %123, i32 %124, i32 %125)
  store i32 %126, i32* %25, align 4
  %127 = load i32, i32* @MODIFY_EXPR, align 4
  %128 = load i32, i32* %34, align 4
  %129 = load i32, i32* %41, align 4
  %130 = load i32, i32* %9, align 4
  %131 = call i32 @TREE_CODE(i32 %130)
  %132 = load i32, i32* %34, align 4
  %133 = load i32, i32* %10, align 4
  %134 = load i32, i32* %11, align 4
  %135 = call i32 @build2(i32 %131, i32 %132, i32 %133, i32 %134)
  %136 = call i32 @build2(i32 %127, i32 %128, i32 %129, i32 %135)
  store i32 %136, i32* %15, align 4
  %137 = load i32, i32* %25, align 4
  %138 = load i32, i32* @BSI_SAME_STMT, align 4
  %139 = call i32 @bsi_insert_before(i32* %40, i32 %137, i32 %138)
  %140 = load i32, i32* %15, align 4
  %141 = load i32, i32* @BSI_SAME_STMT, align 4
  %142 = call i32 @bsi_insert_before(i32* %40, i32 %140, i32 %141)
  %143 = load i32, i32* %15, align 4
  store i32 %143, i32* %29, align 4
  %144 = load i32, i32* @LABEL_EXPR, align 4
  %145 = load i32, i32* @void_type_node, align 4
  %146 = load i32, i32* %23, align 4
  %147 = call i32 @build1(i32 %144, i32 %145, i32 %146)
  store i32 %147, i32* %26, align 4
  %148 = load i32, i32* %26, align 4
  %149 = load i32, i32* @BSI_SAME_STMT, align 4
  %150 = call i32 @bsi_insert_before(i32* %40, i32 %148, i32 %149)
  %151 = load %struct.TYPE_11__*, %struct.TYPE_11__** %30, align 8
  %152 = load i32, i32* %27, align 4
  %153 = call %struct.TYPE_10__* @split_block(%struct.TYPE_11__* %151, i32 %152)
  store %struct.TYPE_10__* %153, %struct.TYPE_10__** %35, align 8
  %154 = load %struct.TYPE_10__*, %struct.TYPE_10__** %35, align 8
  %155 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %154, i32 0, i32 3
  %156 = load %struct.TYPE_11__*, %struct.TYPE_11__** %155, align 8
  store %struct.TYPE_11__* %156, %struct.TYPE_11__** %31, align 8
  %157 = load i8*, i8** %13, align 8
  %158 = load %struct.TYPE_11__*, %struct.TYPE_11__** %31, align 8
  %159 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %158, i32 0, i32 0
  store i8* %157, i8** %159, align 8
  %160 = load %struct.TYPE_11__*, %struct.TYPE_11__** %31, align 8
  %161 = load i32, i32* %28, align 4
  %162 = call %struct.TYPE_10__* @split_block(%struct.TYPE_11__* %160, i32 %161)
  store %struct.TYPE_10__* %162, %struct.TYPE_10__** %37, align 8
  %163 = load %struct.TYPE_10__*, %struct.TYPE_10__** %37, align 8
  %164 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %163, i32 0, i32 3
  %165 = load %struct.TYPE_11__*, %struct.TYPE_11__** %164, align 8
  store %struct.TYPE_11__* %165, %struct.TYPE_11__** %32, align 8
  %166 = load i8*, i8** %14, align 8
  %167 = load i8*, i8** %13, align 8
  %168 = ptrtoint i8* %166 to i64
  %169 = ptrtoint i8* %167 to i64
  %170 = sub i64 %168, %169
  %171 = inttoptr i64 %170 to i8*
  %172 = load %struct.TYPE_11__*, %struct.TYPE_11__** %32, align 8
  %173 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %172, i32 0, i32 0
  store i8* %171, i8** %173, align 8
  %174 = load %struct.TYPE_11__*, %struct.TYPE_11__** %32, align 8
  %175 = load i32, i32* %29, align 4
  %176 = call %struct.TYPE_10__* @split_block(%struct.TYPE_11__* %174, i32 %175)
  store %struct.TYPE_10__* %176, %struct.TYPE_10__** %39, align 8
  %177 = load %struct.TYPE_10__*, %struct.TYPE_10__** %39, align 8
  %178 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %177, i32 0, i32 3
  %179 = load %struct.TYPE_11__*, %struct.TYPE_11__** %178, align 8
  store %struct.TYPE_11__* %179, %struct.TYPE_11__** %33, align 8
  %180 = load i8*, i8** %14, align 8
  %181 = load %struct.TYPE_11__*, %struct.TYPE_11__** %33, align 8
  %182 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %181, i32 0, i32 0
  store i8* %180, i8** %182, align 8
  %183 = load i32, i32* @EDGE_FALLTHRU, align 4
  %184 = xor i32 %183, -1
  %185 = load %struct.TYPE_10__*, %struct.TYPE_10__** %35, align 8
  %186 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %185, i32 0, i32 2
  %187 = load i32, i32* %186, align 8
  %188 = and i32 %187, %184
  store i32 %188, i32* %186, align 8
  %189 = load i32, i32* @EDGE_FALSE_VALUE, align 4
  %190 = load %struct.TYPE_10__*, %struct.TYPE_10__** %35, align 8
  %191 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %190, i32 0, i32 2
  %192 = load i32, i32* %191, align 8
  %193 = or i32 %192, %189
  store i32 %193, i32* %191, align 8
  %194 = load i32, i32* %12, align 4
  %195 = load %struct.TYPE_10__*, %struct.TYPE_10__** %35, align 8
  %196 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %195, i32 0, i32 0
  store i32 %194, i32* %196, align 8
  %197 = load i8*, i8** %13, align 8
  %198 = load %struct.TYPE_10__*, %struct.TYPE_10__** %35, align 8
  %199 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %198, i32 0, i32 1
  store i8* %197, i8** %199, align 8
  %200 = load %struct.TYPE_11__*, %struct.TYPE_11__** %30, align 8
  %201 = load %struct.TYPE_11__*, %struct.TYPE_11__** %32, align 8
  %202 = load i32, i32* @EDGE_TRUE_VALUE, align 4
  %203 = call %struct.TYPE_10__* @make_edge(%struct.TYPE_11__* %200, %struct.TYPE_11__* %201, i32 %202)
  store %struct.TYPE_10__* %203, %struct.TYPE_10__** %36, align 8
  %204 = load i8*, i8** @REG_BR_PROB_BASE, align 8
  %205 = load i32, i32* %12, align 4
  %206 = sext i32 %205 to i64
  %207 = sub i64 0, %206
  %208 = getelementptr i8, i8* %204, i64 %207
  %209 = ptrtoint i8* %208 to i32
  %210 = load %struct.TYPE_10__*, %struct.TYPE_10__** %36, align 8
  %211 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %210, i32 0, i32 0
  store i32 %209, i32* %211, align 8
  %212 = load i8*, i8** %14, align 8
  %213 = load i8*, i8** %13, align 8
  %214 = ptrtoint i8* %212 to i64
  %215 = ptrtoint i8* %213 to i64
  %216 = sub i64 %214, %215
  %217 = inttoptr i64 %216 to i8*
  %218 = load %struct.TYPE_10__*, %struct.TYPE_10__** %36, align 8
  %219 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %218, i32 0, i32 1
  store i8* %217, i8** %219, align 8
  %220 = load %struct.TYPE_10__*, %struct.TYPE_10__** %37, align 8
  %221 = call i32 @remove_edge(%struct.TYPE_10__* %220)
  %222 = load %struct.TYPE_11__*, %struct.TYPE_11__** %31, align 8
  %223 = load %struct.TYPE_11__*, %struct.TYPE_11__** %33, align 8
  %224 = load i32, i32* @EDGE_FALLTHRU, align 4
  %225 = call %struct.TYPE_10__* @make_edge(%struct.TYPE_11__* %222, %struct.TYPE_11__* %223, i32 %224)
  store %struct.TYPE_10__* %225, %struct.TYPE_10__** %38, align 8
  %226 = load i8*, i8** @REG_BR_PROB_BASE, align 8
  %227 = ptrtoint i8* %226 to i32
  %228 = load %struct.TYPE_10__*, %struct.TYPE_10__** %38, align 8
  %229 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %228, i32 0, i32 0
  store i32 %227, i32* %229, align 8
  %230 = load i8*, i8** %13, align 8
  %231 = load %struct.TYPE_10__*, %struct.TYPE_10__** %38, align 8
  %232 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %231, i32 0, i32 1
  store i8* %230, i8** %232, align 8
  %233 = load i8*, i8** @REG_BR_PROB_BASE, align 8
  %234 = ptrtoint i8* %233 to i32
  %235 = load %struct.TYPE_10__*, %struct.TYPE_10__** %39, align 8
  %236 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %235, i32 0, i32 0
  store i32 %234, i32* %236, align 8
  %237 = load i8*, i8** %14, align 8
  %238 = load i8*, i8** %13, align 8
  %239 = ptrtoint i8* %237 to i64
  %240 = ptrtoint i8* %238 to i64
  %241 = sub i64 %239, %240
  %242 = inttoptr i64 %241 to i8*
  %243 = load %struct.TYPE_10__*, %struct.TYPE_10__** %39, align 8
  %244 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %243, i32 0, i32 1
  store i8* %242, i8** %244, align 8
  %245 = load i32, i32* %41, align 4
  ret i32 %245
}

declare dso_local i32 @create_artificial_label(...) #1

declare dso_local i32 @TREE_TYPE(i32) #1

declare dso_local i32 @create_tmp_var(i32, i8*) #1

declare dso_local %struct.TYPE_11__* @bb_for_stmt(i32) #1

declare dso_local i32 @bsi_for_stmt(i32) #1

declare dso_local i32 @build2(i32, i32, i32, i32) #1

declare dso_local i32 @build_int_cst(i32, i32) #1

declare dso_local i32 @build3(i32, i32, i32, i32, i32) #1

declare dso_local i32 @build1(i32, i32, i32) #1

declare dso_local i32 @bsi_insert_before(i32*, i32, i32) #1

declare dso_local i32 @TREE_CODE(i32) #1

declare dso_local %struct.TYPE_10__* @split_block(%struct.TYPE_11__*, i32) #1

declare dso_local %struct.TYPE_10__* @make_edge(%struct.TYPE_11__*, %struct.TYPE_11__*, i32) #1

declare dso_local i32 @remove_edge(%struct.TYPE_10__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

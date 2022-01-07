; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_value-prof.c_tree_divmod_fixed_value.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_value-prof.c_tree_divmod_fixed_value.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i8* }
%struct.TYPE_10__ = type { i32, i8*, i32, %struct.TYPE_11__* }

@.str = private unnamed_addr constant [5 x i8] c"PROF\00", align 1
@MODIFY_EXPR = common dso_local global i32 0, align 4
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
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i32, i32, i32, i32, i8*, i8*)* @tree_divmod_fixed_value to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tree_divmod_fixed_value(i32 %0, i32 %1, i32 %2, i32 %3, i32 %4, i32 %5, i8* %6, i8* %7) #0 {
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i8*, align 8
  %16 = alloca i8*, align 8
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
  %30 = alloca i32, align 4
  %31 = alloca i32, align 4
  %32 = alloca %struct.TYPE_11__*, align 8
  %33 = alloca %struct.TYPE_11__*, align 8
  %34 = alloca %struct.TYPE_11__*, align 8
  %35 = alloca %struct.TYPE_11__*, align 8
  %36 = alloca i32, align 4
  %37 = alloca %struct.TYPE_10__*, align 8
  %38 = alloca %struct.TYPE_10__*, align 8
  %39 = alloca %struct.TYPE_10__*, align 8
  %40 = alloca %struct.TYPE_10__*, align 8
  %41 = alloca %struct.TYPE_10__*, align 8
  %42 = alloca i32, align 4
  store i32 %0, i32* %9, align 4
  store i32 %1, i32* %10, align 4
  store i32 %2, i32* %11, align 4
  store i32 %3, i32* %12, align 4
  store i32 %4, i32* %13, align 4
  store i32 %5, i32* %14, align 4
  store i8* %6, i8** %15, align 8
  store i8* %7, i8** %16, align 8
  %43 = call i32 (...) @create_artificial_label()
  store i32 %43, i32* %23, align 4
  %44 = call i32 (...) @create_artificial_label()
  store i32 %44, i32* %24, align 4
  %45 = call i32 (...) @create_artificial_label()
  store i32 %45, i32* %25, align 4
  %46 = load i32, i32* %10, align 4
  %47 = call i32 @TREE_TYPE(i32 %46)
  store i32 %47, i32* %36, align 4
  %48 = load i32, i32* %9, align 4
  %49 = call %struct.TYPE_11__* @bb_for_stmt(i32 %48)
  store %struct.TYPE_11__* %49, %struct.TYPE_11__** %32, align 8
  %50 = load i32, i32* %9, align 4
  %51 = call i32 @bsi_for_stmt(i32 %50)
  store i32 %51, i32* %42, align 4
  %52 = load i32, i32* %36, align 4
  %53 = call i32 @create_tmp_var(i32 %52, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  store i32 %53, i32* %22, align 4
  %54 = load i32, i32* %36, align 4
  %55 = call i32 @create_tmp_var(i32 %54, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  store i32 %55, i32* %20, align 4
  %56 = load i32, i32* @MODIFY_EXPR, align 4
  %57 = load i32, i32* %36, align 4
  %58 = load i32, i32* %22, align 4
  %59 = load i32, i32* %36, align 4
  %60 = load i32, i32* %13, align 4
  %61 = call i32 @fold_convert(i32 %59, i32 %60)
  %62 = call i32 @build2(i32 %56, i32 %57, i32 %58, i32 %61)
  store i32 %62, i32* %17, align 4
  %63 = load i32, i32* @MODIFY_EXPR, align 4
  %64 = load i32, i32* %36, align 4
  %65 = load i32, i32* %20, align 4
  %66 = load i32, i32* %12, align 4
  %67 = call i32 @build2(i32 %63, i32 %64, i32 %65, i32 %66)
  store i32 %67, i32* %18, align 4
  %68 = load i32, i32* @COND_EXPR, align 4
  %69 = load i32, i32* @void_type_node, align 4
  %70 = load i32, i32* @NE_EXPR, align 4
  %71 = load i32, i32* @boolean_type_node, align 4
  %72 = load i32, i32* %20, align 4
  %73 = load i32, i32* %22, align 4
  %74 = call i32 @build2(i32 %70, i32 %71, i32 %72, i32 %73)
  %75 = load i32, i32* @GOTO_EXPR, align 4
  %76 = load i32, i32* @void_type_node, align 4
  %77 = load i32, i32* %24, align 4
  %78 = call i32 @build1(i32 %75, i32 %76, i32 %77)
  %79 = load i32, i32* @GOTO_EXPR, align 4
  %80 = load i32, i32* @void_type_node, align 4
  %81 = load i32, i32* %23, align 4
  %82 = call i32 @build1(i32 %79, i32 %80, i32 %81)
  %83 = call i32 @build3(i32 %68, i32 %69, i32 %74, i32 %78, i32 %82)
  store i32 %83, i32* %19, align 4
  %84 = load i32, i32* %17, align 4
  %85 = load i32, i32* @BSI_SAME_STMT, align 4
  %86 = call i32 @bsi_insert_before(i32* %42, i32 %84, i32 %85)
  %87 = load i32, i32* %18, align 4
  %88 = load i32, i32* @BSI_SAME_STMT, align 4
  %89 = call i32 @bsi_insert_before(i32* %42, i32 %87, i32 %88)
  %90 = load i32, i32* %19, align 4
  %91 = load i32, i32* @BSI_SAME_STMT, align 4
  %92 = call i32 @bsi_insert_before(i32* %42, i32 %90, i32 %91)
  %93 = load i32, i32* %19, align 4
  store i32 %93, i32* %29, align 4
  %94 = load i32, i32* %36, align 4
  %95 = call i32 @create_tmp_var(i32 %94, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  store i32 %95, i32* %21, align 4
  %96 = load i32, i32* @LABEL_EXPR, align 4
  %97 = load i32, i32* @void_type_node, align 4
  %98 = load i32, i32* %23, align 4
  %99 = call i32 @build1(i32 %96, i32 %97, i32 %98)
  store i32 %99, i32* %26, align 4
  %100 = load i32, i32* @MODIFY_EXPR, align 4
  %101 = load i32, i32* %36, align 4
  %102 = load i32, i32* %21, align 4
  %103 = load i32, i32* %10, align 4
  %104 = call i32 @TREE_CODE(i32 %103)
  %105 = load i32, i32* %36, align 4
  %106 = load i32, i32* %11, align 4
  %107 = load i32, i32* %22, align 4
  %108 = call i32 @build2(i32 %104, i32 %105, i32 %106, i32 %107)
  %109 = call i32 @build2(i32 %100, i32 %101, i32 %102, i32 %108)
  store i32 %109, i32* %17, align 4
  %110 = load i32, i32* %26, align 4
  %111 = load i32, i32* @BSI_SAME_STMT, align 4
  %112 = call i32 @bsi_insert_before(i32* %42, i32 %110, i32 %111)
  %113 = load i32, i32* %17, align 4
  %114 = load i32, i32* @BSI_SAME_STMT, align 4
  %115 = call i32 @bsi_insert_before(i32* %42, i32 %113, i32 %114)
  %116 = load i32, i32* %17, align 4
  store i32 %116, i32* %30, align 4
  %117 = load i32, i32* @LABEL_EXPR, align 4
  %118 = load i32, i32* @void_type_node, align 4
  %119 = load i32, i32* %24, align 4
  %120 = call i32 @build1(i32 %117, i32 %118, i32 %119)
  store i32 %120, i32* %27, align 4
  %121 = load i32, i32* @MODIFY_EXPR, align 4
  %122 = load i32, i32* %36, align 4
  %123 = load i32, i32* %21, align 4
  %124 = load i32, i32* %10, align 4
  %125 = call i32 @TREE_CODE(i32 %124)
  %126 = load i32, i32* %36, align 4
  %127 = load i32, i32* %11, align 4
  %128 = load i32, i32* %12, align 4
  %129 = call i32 @build2(i32 %125, i32 %126, i32 %127, i32 %128)
  %130 = call i32 @build2(i32 %121, i32 %122, i32 %123, i32 %129)
  store i32 %130, i32* %17, align 4
  %131 = load i32, i32* %27, align 4
  %132 = load i32, i32* @BSI_SAME_STMT, align 4
  %133 = call i32 @bsi_insert_before(i32* %42, i32 %131, i32 %132)
  %134 = load i32, i32* %17, align 4
  %135 = load i32, i32* @BSI_SAME_STMT, align 4
  %136 = call i32 @bsi_insert_before(i32* %42, i32 %134, i32 %135)
  %137 = load i32, i32* %17, align 4
  store i32 %137, i32* %31, align 4
  %138 = load i32, i32* @LABEL_EXPR, align 4
  %139 = load i32, i32* @void_type_node, align 4
  %140 = load i32, i32* %25, align 4
  %141 = call i32 @build1(i32 %138, i32 %139, i32 %140)
  store i32 %141, i32* %28, align 4
  %142 = load i32, i32* %28, align 4
  %143 = load i32, i32* @BSI_SAME_STMT, align 4
  %144 = call i32 @bsi_insert_before(i32* %42, i32 %142, i32 %143)
  %145 = load %struct.TYPE_11__*, %struct.TYPE_11__** %32, align 8
  %146 = load i32, i32* %29, align 4
  %147 = call %struct.TYPE_10__* @split_block(%struct.TYPE_11__* %145, i32 %146)
  store %struct.TYPE_10__* %147, %struct.TYPE_10__** %37, align 8
  %148 = load %struct.TYPE_10__*, %struct.TYPE_10__** %37, align 8
  %149 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %148, i32 0, i32 3
  %150 = load %struct.TYPE_11__*, %struct.TYPE_11__** %149, align 8
  store %struct.TYPE_11__* %150, %struct.TYPE_11__** %33, align 8
  %151 = load i8*, i8** %15, align 8
  %152 = load %struct.TYPE_11__*, %struct.TYPE_11__** %33, align 8
  %153 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %152, i32 0, i32 0
  store i8* %151, i8** %153, align 8
  %154 = load %struct.TYPE_11__*, %struct.TYPE_11__** %33, align 8
  %155 = load i32, i32* %30, align 4
  %156 = call %struct.TYPE_10__* @split_block(%struct.TYPE_11__* %154, i32 %155)
  store %struct.TYPE_10__* %156, %struct.TYPE_10__** %39, align 8
  %157 = load %struct.TYPE_10__*, %struct.TYPE_10__** %39, align 8
  %158 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %157, i32 0, i32 3
  %159 = load %struct.TYPE_11__*, %struct.TYPE_11__** %158, align 8
  store %struct.TYPE_11__* %159, %struct.TYPE_11__** %34, align 8
  %160 = load i8*, i8** %16, align 8
  %161 = load i8*, i8** %15, align 8
  %162 = ptrtoint i8* %160 to i64
  %163 = ptrtoint i8* %161 to i64
  %164 = sub i64 %162, %163
  %165 = inttoptr i64 %164 to i8*
  %166 = load %struct.TYPE_11__*, %struct.TYPE_11__** %34, align 8
  %167 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %166, i32 0, i32 0
  store i8* %165, i8** %167, align 8
  %168 = load %struct.TYPE_11__*, %struct.TYPE_11__** %34, align 8
  %169 = load i32, i32* %31, align 4
  %170 = call %struct.TYPE_10__* @split_block(%struct.TYPE_11__* %168, i32 %169)
  store %struct.TYPE_10__* %170, %struct.TYPE_10__** %41, align 8
  %171 = load %struct.TYPE_10__*, %struct.TYPE_10__** %41, align 8
  %172 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %171, i32 0, i32 3
  %173 = load %struct.TYPE_11__*, %struct.TYPE_11__** %172, align 8
  store %struct.TYPE_11__* %173, %struct.TYPE_11__** %35, align 8
  %174 = load i8*, i8** %16, align 8
  %175 = load %struct.TYPE_11__*, %struct.TYPE_11__** %35, align 8
  %176 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %175, i32 0, i32 0
  store i8* %174, i8** %176, align 8
  %177 = load i32, i32* @EDGE_FALLTHRU, align 4
  %178 = xor i32 %177, -1
  %179 = load %struct.TYPE_10__*, %struct.TYPE_10__** %37, align 8
  %180 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %179, i32 0, i32 2
  %181 = load i32, i32* %180, align 8
  %182 = and i32 %181, %178
  store i32 %182, i32* %180, align 8
  %183 = load i32, i32* @EDGE_FALSE_VALUE, align 4
  %184 = load %struct.TYPE_10__*, %struct.TYPE_10__** %37, align 8
  %185 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %184, i32 0, i32 2
  %186 = load i32, i32* %185, align 8
  %187 = or i32 %186, %183
  store i32 %187, i32* %185, align 8
  %188 = load i32, i32* %14, align 4
  %189 = load %struct.TYPE_10__*, %struct.TYPE_10__** %37, align 8
  %190 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %189, i32 0, i32 0
  store i32 %188, i32* %190, align 8
  %191 = load i8*, i8** %15, align 8
  %192 = load %struct.TYPE_10__*, %struct.TYPE_10__** %37, align 8
  %193 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %192, i32 0, i32 1
  store i8* %191, i8** %193, align 8
  %194 = load %struct.TYPE_11__*, %struct.TYPE_11__** %32, align 8
  %195 = load %struct.TYPE_11__*, %struct.TYPE_11__** %34, align 8
  %196 = load i32, i32* @EDGE_TRUE_VALUE, align 4
  %197 = call %struct.TYPE_10__* @make_edge(%struct.TYPE_11__* %194, %struct.TYPE_11__* %195, i32 %196)
  store %struct.TYPE_10__* %197, %struct.TYPE_10__** %38, align 8
  %198 = load i8*, i8** @REG_BR_PROB_BASE, align 8
  %199 = load i32, i32* %14, align 4
  %200 = sext i32 %199 to i64
  %201 = sub i64 0, %200
  %202 = getelementptr i8, i8* %198, i64 %201
  %203 = ptrtoint i8* %202 to i32
  %204 = load %struct.TYPE_10__*, %struct.TYPE_10__** %38, align 8
  %205 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %204, i32 0, i32 0
  store i32 %203, i32* %205, align 8
  %206 = load i8*, i8** %16, align 8
  %207 = load i8*, i8** %15, align 8
  %208 = ptrtoint i8* %206 to i64
  %209 = ptrtoint i8* %207 to i64
  %210 = sub i64 %208, %209
  %211 = inttoptr i64 %210 to i8*
  %212 = load %struct.TYPE_10__*, %struct.TYPE_10__** %38, align 8
  %213 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %212, i32 0, i32 1
  store i8* %211, i8** %213, align 8
  %214 = load %struct.TYPE_10__*, %struct.TYPE_10__** %39, align 8
  %215 = call i32 @remove_edge(%struct.TYPE_10__* %214)
  %216 = load %struct.TYPE_11__*, %struct.TYPE_11__** %33, align 8
  %217 = load %struct.TYPE_11__*, %struct.TYPE_11__** %35, align 8
  %218 = load i32, i32* @EDGE_FALLTHRU, align 4
  %219 = call %struct.TYPE_10__* @make_edge(%struct.TYPE_11__* %216, %struct.TYPE_11__* %217, i32 %218)
  store %struct.TYPE_10__* %219, %struct.TYPE_10__** %40, align 8
  %220 = load i8*, i8** @REG_BR_PROB_BASE, align 8
  %221 = ptrtoint i8* %220 to i32
  %222 = load %struct.TYPE_10__*, %struct.TYPE_10__** %40, align 8
  %223 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %222, i32 0, i32 0
  store i32 %221, i32* %223, align 8
  %224 = load i8*, i8** %15, align 8
  %225 = load %struct.TYPE_10__*, %struct.TYPE_10__** %40, align 8
  %226 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %225, i32 0, i32 1
  store i8* %224, i8** %226, align 8
  %227 = load i8*, i8** @REG_BR_PROB_BASE, align 8
  %228 = ptrtoint i8* %227 to i32
  %229 = load %struct.TYPE_10__*, %struct.TYPE_10__** %41, align 8
  %230 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %229, i32 0, i32 0
  store i32 %228, i32* %230, align 8
  %231 = load i8*, i8** %16, align 8
  %232 = load i8*, i8** %15, align 8
  %233 = ptrtoint i8* %231 to i64
  %234 = ptrtoint i8* %232 to i64
  %235 = sub i64 %233, %234
  %236 = inttoptr i64 %235 to i8*
  %237 = load %struct.TYPE_10__*, %struct.TYPE_10__** %41, align 8
  %238 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %237, i32 0, i32 1
  store i8* %236, i8** %238, align 8
  %239 = load i32, i32* %21, align 4
  ret i32 %239
}

declare dso_local i32 @create_artificial_label(...) #1

declare dso_local i32 @TREE_TYPE(i32) #1

declare dso_local %struct.TYPE_11__* @bb_for_stmt(i32) #1

declare dso_local i32 @bsi_for_stmt(i32) #1

declare dso_local i32 @create_tmp_var(i32, i8*) #1

declare dso_local i32 @build2(i32, i32, i32, i32) #1

declare dso_local i32 @fold_convert(i32, i32) #1

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

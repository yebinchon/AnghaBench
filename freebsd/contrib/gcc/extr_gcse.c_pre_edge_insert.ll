; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_gcse.c_pre_edge_insert.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_gcse.c_pre_edge_insert.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { i32, i32* }
%struct.TYPE_13__ = type { i64 }
%struct.edge_list = type { i32 }
%struct.expr = type { i64, i32, %struct.occr* }
%struct.occr = type { i32, %struct.occr* }
%struct.TYPE_11__ = type { i32 }
%struct.TYPE_10__ = type { i32 }
%struct.TYPE_14__ = type { i32 }

@pre_insert_map = common dso_local global %struct.TYPE_12__** null, align 8
@expr_hash_table = common dso_local global %struct.TYPE_13__ zeroinitializer, align 8
@NULL_RTX = common dso_local global i64 0, align 8
@EDGE_ABNORMAL = common dso_local global i32 0, align 4
@dump_file = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [26 x i8] c"PRE/HOIST: edge (%d,%d), \00", align 1
@.str.1 = private unnamed_addr constant [20 x i8] c"copy expression %d\0A\00", align 1
@gcse_create_count = common dso_local global i32 0, align 4
@SBITMAP_ELT_BITS = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.edge_list*, %struct.expr**)* @pre_edge_insert to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pre_edge_insert(%struct.edge_list* %0, %struct.expr** %1) #0 {
  %3 = alloca %struct.edge_list*, align 8
  %4 = alloca %struct.expr**, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.TYPE_11__*, align 8
  %14 = alloca i32, align 4
  %15 = alloca %struct.expr*, align 8
  %16 = alloca %struct.occr*, align 8
  %17 = alloca i32, align 4
  %18 = alloca %struct.TYPE_10__*, align 8
  store %struct.edge_list* %0, %struct.edge_list** %3, align 8
  store %struct.expr** %1, %struct.expr*** %4, align 8
  store i32 0, i32* %10, align 4
  %19 = load %struct.TYPE_12__**, %struct.TYPE_12__*** @pre_insert_map, align 8
  %20 = getelementptr inbounds %struct.TYPE_12__*, %struct.TYPE_12__** %19, i64 0
  %21 = load %struct.TYPE_12__*, %struct.TYPE_12__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  store i32 %23, i32* %9, align 4
  %24 = load %struct.edge_list*, %struct.edge_list** %3, align 8
  %25 = call i32 @NUM_EDGES(%struct.edge_list* %24)
  store i32 %25, i32* %8, align 4
  %26 = load i32, i32* %8, align 4
  %27 = load i64, i64* getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @expr_hash_table, i32 0, i32 0), align 8
  %28 = call i32* @sbitmap_vector_alloc(i32 %26, i64 %27)
  store i32* %28, i32** %11, align 8
  %29 = load i32*, i32** %11, align 8
  %30 = load i32, i32* %8, align 4
  %31 = call i32 @sbitmap_vector_zero(i32* %29, i32 %30)
  store i32 0, i32* %5, align 4
  br label %32

32:                                               ; preds = %189, %2
  %33 = load i32, i32* %5, align 4
  %34 = load i32, i32* %8, align 4
  %35 = icmp slt i32 %33, %34
  br i1 %35, label %36, label %192

36:                                               ; preds = %32
  %37 = load %struct.edge_list*, %struct.edge_list** %3, align 8
  %38 = load i32, i32* %5, align 4
  %39 = call %struct.TYPE_11__* @INDEX_EDGE_PRED_BB(%struct.edge_list* %37, i32 %38)
  store %struct.TYPE_11__* %39, %struct.TYPE_11__** %13, align 8
  store i32 0, i32* %12, align 4
  store i32 0, i32* %6, align 4
  br label %40

40:                                               ; preds = %180, %36
  %41 = load i32, i32* %6, align 4
  %42 = load i32, i32* %9, align 4
  %43 = icmp slt i32 %41, %42
  br i1 %43, label %44, label %188

44:                                               ; preds = %40
  %45 = load %struct.TYPE_12__**, %struct.TYPE_12__*** @pre_insert_map, align 8
  %46 = load i32, i32* %5, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds %struct.TYPE_12__*, %struct.TYPE_12__** %45, i64 %47
  %49 = load %struct.TYPE_12__*, %struct.TYPE_12__** %48, align 8
  %50 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %49, i32 0, i32 1
  %51 = load i32*, i32** %50, align 8
  %52 = load i32, i32* %6, align 4
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds i32, i32* %51, i64 %53
  %55 = load i32, i32* %54, align 4
  store i32 %55, i32* %14, align 4
  %56 = load i32, i32* %12, align 4
  store i32 %56, i32* %7, align 4
  br label %57

57:                                               ; preds = %174, %44
  %58 = load i32, i32* %14, align 4
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %65

60:                                               ; preds = %57
  %61 = load i32, i32* %7, align 4
  %62 = load i64, i64* getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @expr_hash_table, i32 0, i32 0), align 8
  %63 = trunc i64 %62 to i32
  %64 = icmp slt i32 %61, %63
  br label %65

65:                                               ; preds = %60, %57
  %66 = phi i1 [ false, %57 ], [ %64, %60 ]
  br i1 %66, label %67, label %179

67:                                               ; preds = %65
  %68 = load i32, i32* %14, align 4
  %69 = and i32 %68, 1
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %173

71:                                               ; preds = %67
  %72 = load %struct.expr**, %struct.expr*** %4, align 8
  %73 = load i32, i32* %7, align 4
  %74 = sext i32 %73 to i64
  %75 = getelementptr inbounds %struct.expr*, %struct.expr** %72, i64 %74
  %76 = load %struct.expr*, %struct.expr** %75, align 8
  %77 = getelementptr inbounds %struct.expr, %struct.expr* %76, i32 0, i32 0
  %78 = load i64, i64* %77, align 8
  %79 = load i64, i64* @NULL_RTX, align 8
  %80 = icmp ne i64 %78, %79
  br i1 %80, label %81, label %173

81:                                               ; preds = %71
  %82 = load %struct.expr**, %struct.expr*** %4, align 8
  %83 = load i32, i32* %7, align 4
  %84 = sext i32 %83 to i64
  %85 = getelementptr inbounds %struct.expr*, %struct.expr** %82, i64 %84
  %86 = load %struct.expr*, %struct.expr** %85, align 8
  store %struct.expr* %86, %struct.expr** %15, align 8
  %87 = load %struct.expr*, %struct.expr** %15, align 8
  %88 = getelementptr inbounds %struct.expr, %struct.expr* %87, i32 0, i32 2
  %89 = load %struct.occr*, %struct.occr** %88, align 8
  store %struct.occr* %89, %struct.occr** %16, align 8
  br label %90

90:                                               ; preds = %168, %81
  %91 = load %struct.occr*, %struct.occr** %16, align 8
  %92 = icmp ne %struct.occr* %91, null
  br i1 %92, label %93, label %172

93:                                               ; preds = %90
  %94 = load %struct.occr*, %struct.occr** %16, align 8
  %95 = getelementptr inbounds %struct.occr, %struct.occr* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 8
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %99, label %98

98:                                               ; preds = %93
  br label %168

99:                                               ; preds = %93
  %100 = load i32*, i32** %11, align 8
  %101 = load i32, i32* %5, align 4
  %102 = sext i32 %101 to i64
  %103 = getelementptr inbounds i32, i32* %100, i64 %102
  %104 = load i32, i32* %103, align 4
  %105 = load i32, i32* %7, align 4
  %106 = call i32 @TEST_BIT(i32 %104, i32 %105)
  %107 = icmp ne i32 %106, 0
  br i1 %107, label %167, label %108

108:                                              ; preds = %99
  %109 = load %struct.edge_list*, %struct.edge_list** %3, align 8
  %110 = load i32, i32* %5, align 4
  %111 = call %struct.TYPE_10__* @INDEX_EDGE(%struct.edge_list* %109, i32 %110)
  store %struct.TYPE_10__* %111, %struct.TYPE_10__** %18, align 8
  %112 = load %struct.TYPE_10__*, %struct.TYPE_10__** %18, align 8
  %113 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %112, i32 0, i32 0
  %114 = load i32, i32* %113, align 4
  %115 = load i32, i32* @EDGE_ABNORMAL, align 4
  %116 = and i32 %114, %115
  %117 = icmp ne i32 %116, 0
  br i1 %117, label %118, label %126

118:                                              ; preds = %108
  %119 = load %struct.expr**, %struct.expr*** %4, align 8
  %120 = load i32, i32* %7, align 4
  %121 = sext i32 %120 to i64
  %122 = getelementptr inbounds %struct.expr*, %struct.expr** %119, i64 %121
  %123 = load %struct.expr*, %struct.expr** %122, align 8
  %124 = load %struct.TYPE_11__*, %struct.TYPE_11__** %13, align 8
  %125 = call i32 @insert_insn_end_bb(%struct.expr* %123, %struct.TYPE_11__* %124, i32 0)
  br label %136

126:                                              ; preds = %108
  %127 = load %struct.expr**, %struct.expr*** %4, align 8
  %128 = load i32, i32* %7, align 4
  %129 = sext i32 %128 to i64
  %130 = getelementptr inbounds %struct.expr*, %struct.expr** %127, i64 %129
  %131 = load %struct.expr*, %struct.expr** %130, align 8
  %132 = call i32 @process_insert_insn(%struct.expr* %131)
  store i32 %132, i32* %17, align 4
  %133 = load i32, i32* %17, align 4
  %134 = load %struct.TYPE_10__*, %struct.TYPE_10__** %18, align 8
  %135 = call i32 @insert_insn_on_edge(i32 %133, %struct.TYPE_10__* %134)
  br label %136

136:                                              ; preds = %126, %118
  %137 = load i64, i64* @dump_file, align 8
  %138 = icmp ne i64 %137, 0
  br i1 %138, label %139, label %155

139:                                              ; preds = %136
  %140 = load i64, i64* @dump_file, align 8
  %141 = load %struct.TYPE_11__*, %struct.TYPE_11__** %13, align 8
  %142 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %141, i32 0, i32 0
  %143 = load i32, i32* %142, align 4
  %144 = load %struct.edge_list*, %struct.edge_list** %3, align 8
  %145 = load i32, i32* %5, align 4
  %146 = call %struct.TYPE_14__* @INDEX_EDGE_SUCC_BB(%struct.edge_list* %144, i32 %145)
  %147 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %146, i32 0, i32 0
  %148 = load i32, i32* %147, align 4
  %149 = call i32 (i64, i8*, i32, ...) @fprintf(i64 %140, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i32 %143, i32 %148)
  %150 = load i64, i64* @dump_file, align 8
  %151 = load %struct.expr*, %struct.expr** %15, align 8
  %152 = getelementptr inbounds %struct.expr, %struct.expr* %151, i32 0, i32 1
  %153 = load i32, i32* %152, align 8
  %154 = call i32 (i64, i8*, i32, ...) @fprintf(i64 %150, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0), i32 %153)
  br label %155

155:                                              ; preds = %139, %136
  %156 = load %struct.expr*, %struct.expr** %15, align 8
  %157 = call i32 @update_ld_motion_stores(%struct.expr* %156)
  %158 = load i32*, i32** %11, align 8
  %159 = load i32, i32* %5, align 4
  %160 = sext i32 %159 to i64
  %161 = getelementptr inbounds i32, i32* %158, i64 %160
  %162 = load i32, i32* %161, align 4
  %163 = load i32, i32* %7, align 4
  %164 = call i32 @SET_BIT(i32 %162, i32 %163)
  store i32 1, i32* %10, align 4
  %165 = load i32, i32* @gcse_create_count, align 4
  %166 = add nsw i32 %165, 1
  store i32 %166, i32* @gcse_create_count, align 4
  br label %167

167:                                              ; preds = %155, %99
  br label %168

168:                                              ; preds = %167, %98
  %169 = load %struct.occr*, %struct.occr** %16, align 8
  %170 = getelementptr inbounds %struct.occr, %struct.occr* %169, i32 0, i32 1
  %171 = load %struct.occr*, %struct.occr** %170, align 8
  store %struct.occr* %171, %struct.occr** %16, align 8
  br label %90

172:                                              ; preds = %90
  br label %173

173:                                              ; preds = %172, %71, %67
  br label %174

174:                                              ; preds = %173
  %175 = load i32, i32* %7, align 4
  %176 = add nsw i32 %175, 1
  store i32 %176, i32* %7, align 4
  %177 = load i32, i32* %14, align 4
  %178 = ashr i32 %177, 1
  store i32 %178, i32* %14, align 4
  br label %57

179:                                              ; preds = %65
  br label %180

180:                                              ; preds = %179
  %181 = load i32, i32* %6, align 4
  %182 = add nsw i32 %181, 1
  store i32 %182, i32* %6, align 4
  %183 = load i64, i64* @SBITMAP_ELT_BITS, align 8
  %184 = load i32, i32* %12, align 4
  %185 = sext i32 %184 to i64
  %186 = add nsw i64 %185, %183
  %187 = trunc i64 %186 to i32
  store i32 %187, i32* %12, align 4
  br label %40

188:                                              ; preds = %40
  br label %189

189:                                              ; preds = %188
  %190 = load i32, i32* %5, align 4
  %191 = add nsw i32 %190, 1
  store i32 %191, i32* %5, align 4
  br label %32

192:                                              ; preds = %32
  %193 = load i32*, i32** %11, align 8
  %194 = call i32 @sbitmap_vector_free(i32* %193)
  %195 = load i32, i32* %10, align 4
  ret i32 %195
}

declare dso_local i32 @NUM_EDGES(%struct.edge_list*) #1

declare dso_local i32* @sbitmap_vector_alloc(i32, i64) #1

declare dso_local i32 @sbitmap_vector_zero(i32*, i32) #1

declare dso_local %struct.TYPE_11__* @INDEX_EDGE_PRED_BB(%struct.edge_list*, i32) #1

declare dso_local i32 @TEST_BIT(i32, i32) #1

declare dso_local %struct.TYPE_10__* @INDEX_EDGE(%struct.edge_list*, i32) #1

declare dso_local i32 @insert_insn_end_bb(%struct.expr*, %struct.TYPE_11__*, i32) #1

declare dso_local i32 @process_insert_insn(%struct.expr*) #1

declare dso_local i32 @insert_insn_on_edge(i32, %struct.TYPE_10__*) #1

declare dso_local i32 @fprintf(i64, i8*, i32, ...) #1

declare dso_local %struct.TYPE_14__* @INDEX_EDGE_SUCC_BB(%struct.edge_list*, i32) #1

declare dso_local i32 @update_ld_motion_stores(%struct.expr*) #1

declare dso_local i32 @SET_BIT(i32, i32) #1

declare dso_local i32 @sbitmap_vector_free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

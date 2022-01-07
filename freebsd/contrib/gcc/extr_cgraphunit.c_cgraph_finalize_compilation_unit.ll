; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_cgraphunit.c_cgraph_finalize_compilation_unit.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_cgraphunit.c_cgraph_finalize_compilation_unit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cgraph_node = type { i64, %struct.TYPE_3__, %struct.cgraph_node*, i64, %struct.cgraph_node*, i32, i64, %struct.cgraph_edge* }
%struct.TYPE_3__ = type { i64 }
%struct.cgraph_edge = type { %struct.TYPE_4__*, %struct.cgraph_edge* }
%struct.TYPE_4__ = type { i32 }
%struct.cgraph_varpool_node = type { i32 }

@cgraph_finalize_compilation_unit.first_analyzed = internal global %struct.cgraph_node* null, align 8
@cgraph_finalize_compilation_unit.first_analyzed_var = internal global %struct.cgraph_varpool_node* null, align 8
@errorcount = common dso_local global i64 0, align 8
@sorrycount = common dso_local global i64 0, align 8
@flag_unit_at_a_time = common dso_local global i32 0, align 4
@quiet_flag = common dso_local global i32 0, align 4
@stderr = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [28 x i8] c"\0AAnalyzing compilation unit\00", align 1
@TV_CGRAPH = common dso_local global i32 0, align 4
@cgraph_nodes = common dso_local global %struct.cgraph_node* null, align 8
@cgraph_varpool_nodes = common dso_local global %struct.cgraph_varpool_node* null, align 8
@cgraph_dump_file = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [22 x i8] c"Initial entry points:\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c" %s\00", align 1
@.str.3 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@cgraph_nodes_queue = common dso_local global %struct.cgraph_node* null, align 8
@.str.4 = private unnamed_addr constant [19 x i8] c"Unit entry points:\00", align 1
@.str.5 = private unnamed_addr constant [11 x i8] c"\0A\0AInitial \00", align 1
@.str.6 = private unnamed_addr constant [23 x i8] c"\0AReclaiming functions:\00", align 1
@.str.7 = private unnamed_addr constant [13 x i8] c"\0A\0AReclaimed \00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @cgraph_finalize_compilation_unit() #0 {
  %1 = alloca %struct.cgraph_node*, align 8
  %2 = alloca %struct.cgraph_node*, align 8
  %3 = alloca %struct.cgraph_node*, align 8
  %4 = alloca %struct.cgraph_edge*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = load %struct.cgraph_node*, %struct.cgraph_node** @cgraph_finalize_compilation_unit.first_analyzed, align 8
  store %struct.cgraph_node* %7, %struct.cgraph_node** %3, align 8
  %8 = load i64, i64* @errorcount, align 8
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %13, label %10

10:                                               ; preds = %0
  %11 = load i64, i64* @sorrycount, align 8
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %14

13:                                               ; preds = %10, %0
  br label %272

14:                                               ; preds = %10
  %15 = call i32 (...) @finish_aliases_1()
  %16 = load i32, i32* @flag_unit_at_a_time, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %22, label %18

18:                                               ; preds = %14
  %19 = call i32 (...) @cgraph_output_pending_asms()
  %20 = call i32 (...) @cgraph_assemble_pending_functions()
  %21 = call i32 (...) @cgraph_varpool_output_debug_info()
  br label %272

22:                                               ; preds = %14
  %23 = load i32, i32* @quiet_flag, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %30, label %25

25:                                               ; preds = %22
  %26 = load i64, i64* @stderr, align 8
  %27 = call i32 (i64, i8*, ...) @fprintf(i64 %26, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0))
  %28 = load i64, i64* @stderr, align 8
  %29 = call i32 @fflush(i64 %28)
  br label %30

30:                                               ; preds = %25, %22
  %31 = load i32, i32* @TV_CGRAPH, align 4
  %32 = call i32 @timevar_push(i32 %31)
  %33 = load %struct.cgraph_node*, %struct.cgraph_node** %3, align 8
  %34 = load %struct.cgraph_varpool_node*, %struct.cgraph_varpool_node** @cgraph_finalize_compilation_unit.first_analyzed_var, align 8
  %35 = call i32 @process_function_and_variable_attributes(%struct.cgraph_node* %33, %struct.cgraph_varpool_node* %34)
  %36 = load %struct.cgraph_node*, %struct.cgraph_node** @cgraph_nodes, align 8
  store %struct.cgraph_node* %36, %struct.cgraph_node** %3, align 8
  %37 = load %struct.cgraph_varpool_node*, %struct.cgraph_varpool_node** @cgraph_varpool_nodes, align 8
  store %struct.cgraph_varpool_node* %37, %struct.cgraph_varpool_node** @cgraph_finalize_compilation_unit.first_analyzed_var, align 8
  %38 = call i32 (...) @cgraph_varpool_analyze_pending_decls()
  %39 = load i64, i64* @cgraph_dump_file, align 8
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %73

41:                                               ; preds = %30
  %42 = load i64, i64* @cgraph_dump_file, align 8
  %43 = call i32 (i64, i8*, ...) @fprintf(i64 %42, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0))
  %44 = load %struct.cgraph_node*, %struct.cgraph_node** @cgraph_nodes, align 8
  store %struct.cgraph_node* %44, %struct.cgraph_node** %1, align 8
  br label %45

45:                                               ; preds = %66, %41
  %46 = load %struct.cgraph_node*, %struct.cgraph_node** %1, align 8
  %47 = load %struct.cgraph_node*, %struct.cgraph_node** @cgraph_finalize_compilation_unit.first_analyzed, align 8
  %48 = icmp ne %struct.cgraph_node* %46, %47
  br i1 %48, label %49, label %70

49:                                               ; preds = %45
  %50 = load %struct.cgraph_node*, %struct.cgraph_node** %1, align 8
  %51 = getelementptr inbounds %struct.cgraph_node, %struct.cgraph_node* %50, i32 0, i32 6
  %52 = load i64, i64* %51, align 8
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %65

54:                                               ; preds = %49
  %55 = load %struct.cgraph_node*, %struct.cgraph_node** %1, align 8
  %56 = getelementptr inbounds %struct.cgraph_node, %struct.cgraph_node* %55, i32 0, i32 5
  %57 = load i32, i32* %56, align 8
  %58 = call i32 @DECL_SAVED_TREE(i32 %57)
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %65

60:                                               ; preds = %54
  %61 = load i64, i64* @cgraph_dump_file, align 8
  %62 = load %struct.cgraph_node*, %struct.cgraph_node** %1, align 8
  %63 = call i8* @cgraph_node_name(%struct.cgraph_node* %62)
  %64 = call i32 (i64, i8*, ...) @fprintf(i64 %61, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), i8* %63)
  br label %65

65:                                               ; preds = %60, %54, %49
  br label %66

66:                                               ; preds = %65
  %67 = load %struct.cgraph_node*, %struct.cgraph_node** %1, align 8
  %68 = getelementptr inbounds %struct.cgraph_node, %struct.cgraph_node* %67, i32 0, i32 4
  %69 = load %struct.cgraph_node*, %struct.cgraph_node** %68, align 8
  store %struct.cgraph_node* %69, %struct.cgraph_node** %1, align 8
  br label %45

70:                                               ; preds = %45
  %71 = load i64, i64* @cgraph_dump_file, align 8
  %72 = call i32 (i64, i8*, ...) @fprintf(i64 %71, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0))
  br label %73

73:                                               ; preds = %70, %30
  br label %74

74:                                               ; preds = %135, %90, %73
  %75 = load %struct.cgraph_node*, %struct.cgraph_node** @cgraph_nodes_queue, align 8
  %76 = icmp ne %struct.cgraph_node* %75, null
  br i1 %76, label %77, label %142

77:                                               ; preds = %74
  %78 = load %struct.cgraph_node*, %struct.cgraph_node** @cgraph_nodes_queue, align 8
  %79 = getelementptr inbounds %struct.cgraph_node, %struct.cgraph_node* %78, i32 0, i32 5
  %80 = load i32, i32* %79, align 8
  store i32 %80, i32* %5, align 4
  %81 = load %struct.cgraph_node*, %struct.cgraph_node** @cgraph_nodes_queue, align 8
  store %struct.cgraph_node* %81, %struct.cgraph_node** %1, align 8
  %82 = load %struct.cgraph_node*, %struct.cgraph_node** @cgraph_nodes_queue, align 8
  %83 = getelementptr inbounds %struct.cgraph_node, %struct.cgraph_node* %82, i32 0, i32 2
  %84 = load %struct.cgraph_node*, %struct.cgraph_node** %83, align 8
  store %struct.cgraph_node* %84, %struct.cgraph_node** @cgraph_nodes_queue, align 8
  %85 = load %struct.cgraph_node*, %struct.cgraph_node** %1, align 8
  %86 = getelementptr inbounds %struct.cgraph_node, %struct.cgraph_node* %85, i32 0, i32 2
  store %struct.cgraph_node* null, %struct.cgraph_node** %86, align 8
  %87 = load i32, i32* %5, align 4
  %88 = call i32 @DECL_SAVED_TREE(i32 %87)
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %93, label %90

90:                                               ; preds = %77
  %91 = load %struct.cgraph_node*, %struct.cgraph_node** %1, align 8
  %92 = call i32 @cgraph_reset_node(%struct.cgraph_node* %91)
  br label %74

93:                                               ; preds = %77
  %94 = load %struct.cgraph_node*, %struct.cgraph_node** %1, align 8
  %95 = getelementptr inbounds %struct.cgraph_node, %struct.cgraph_node* %94, i32 0, i32 0
  %96 = load i64, i64* %95, align 8
  %97 = icmp ne i64 %96, 0
  br i1 %97, label %103, label %98

98:                                               ; preds = %93
  %99 = load %struct.cgraph_node*, %struct.cgraph_node** %1, align 8
  %100 = getelementptr inbounds %struct.cgraph_node, %struct.cgraph_node* %99, i32 0, i32 3
  %101 = load i64, i64* %100, align 8
  %102 = icmp ne i64 %101, 0
  br label %103

103:                                              ; preds = %98, %93
  %104 = phi i1 [ false, %93 ], [ %102, %98 ]
  %105 = zext i1 %104 to i32
  %106 = call i32 @gcc_assert(i32 %105)
  %107 = load i32, i32* %5, align 4
  %108 = call i32 @DECL_SAVED_TREE(i32 %107)
  %109 = call i32 @gcc_assert(i32 %108)
  %110 = load %struct.cgraph_node*, %struct.cgraph_node** %1, align 8
  %111 = call i32 @cgraph_analyze_function(%struct.cgraph_node* %110)
  %112 = load %struct.cgraph_node*, %struct.cgraph_node** %1, align 8
  %113 = getelementptr inbounds %struct.cgraph_node, %struct.cgraph_node* %112, i32 0, i32 7
  %114 = load %struct.cgraph_edge*, %struct.cgraph_edge** %113, align 8
  store %struct.cgraph_edge* %114, %struct.cgraph_edge** %4, align 8
  br label %115

115:                                              ; preds = %131, %103
  %116 = load %struct.cgraph_edge*, %struct.cgraph_edge** %4, align 8
  %117 = icmp ne %struct.cgraph_edge* %116, null
  br i1 %117, label %118, label %135

118:                                              ; preds = %115
  %119 = load %struct.cgraph_edge*, %struct.cgraph_edge** %4, align 8
  %120 = getelementptr inbounds %struct.cgraph_edge, %struct.cgraph_edge* %119, i32 0, i32 0
  %121 = load %struct.TYPE_4__*, %struct.TYPE_4__** %120, align 8
  %122 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %121, i32 0, i32 0
  %123 = load i32, i32* %122, align 4
  %124 = icmp ne i32 %123, 0
  br i1 %124, label %130, label %125

125:                                              ; preds = %118
  %126 = load %struct.cgraph_edge*, %struct.cgraph_edge** %4, align 8
  %127 = getelementptr inbounds %struct.cgraph_edge, %struct.cgraph_edge* %126, i32 0, i32 0
  %128 = load %struct.TYPE_4__*, %struct.TYPE_4__** %127, align 8
  %129 = call i32 @cgraph_mark_reachable_node(%struct.TYPE_4__* %128)
  br label %130

130:                                              ; preds = %125, %118
  br label %131

131:                                              ; preds = %130
  %132 = load %struct.cgraph_edge*, %struct.cgraph_edge** %4, align 8
  %133 = getelementptr inbounds %struct.cgraph_edge, %struct.cgraph_edge* %132, i32 0, i32 1
  %134 = load %struct.cgraph_edge*, %struct.cgraph_edge** %133, align 8
  store %struct.cgraph_edge* %134, %struct.cgraph_edge** %4, align 8
  br label %115

135:                                              ; preds = %115
  %136 = load %struct.cgraph_node*, %struct.cgraph_node** %3, align 8
  %137 = load %struct.cgraph_varpool_node*, %struct.cgraph_varpool_node** @cgraph_finalize_compilation_unit.first_analyzed_var, align 8
  %138 = call i32 @process_function_and_variable_attributes(%struct.cgraph_node* %136, %struct.cgraph_varpool_node* %137)
  %139 = load %struct.cgraph_node*, %struct.cgraph_node** @cgraph_nodes, align 8
  store %struct.cgraph_node* %139, %struct.cgraph_node** %3, align 8
  %140 = load %struct.cgraph_varpool_node*, %struct.cgraph_varpool_node** @cgraph_varpool_nodes, align 8
  store %struct.cgraph_varpool_node* %140, %struct.cgraph_varpool_node** @cgraph_finalize_compilation_unit.first_analyzed_var, align 8
  %141 = call i32 (...) @cgraph_varpool_analyze_pending_decls()
  br label %74

142:                                              ; preds = %74
  %143 = load i64, i64* @cgraph_dump_file, align 8
  %144 = icmp ne i64 %143, 0
  br i1 %144, label %145, label %179

145:                                              ; preds = %142
  %146 = load i64, i64* @cgraph_dump_file, align 8
  %147 = call i32 (i64, i8*, ...) @fprintf(i64 %146, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.4, i64 0, i64 0))
  %148 = load %struct.cgraph_node*, %struct.cgraph_node** @cgraph_nodes, align 8
  store %struct.cgraph_node* %148, %struct.cgraph_node** %1, align 8
  br label %149

149:                                              ; preds = %170, %145
  %150 = load %struct.cgraph_node*, %struct.cgraph_node** %1, align 8
  %151 = load %struct.cgraph_node*, %struct.cgraph_node** @cgraph_finalize_compilation_unit.first_analyzed, align 8
  %152 = icmp ne %struct.cgraph_node* %150, %151
  br i1 %152, label %153, label %174

153:                                              ; preds = %149
  %154 = load %struct.cgraph_node*, %struct.cgraph_node** %1, align 8
  %155 = getelementptr inbounds %struct.cgraph_node, %struct.cgraph_node* %154, i32 0, i32 6
  %156 = load i64, i64* %155, align 8
  %157 = icmp ne i64 %156, 0
  br i1 %157, label %158, label %169

158:                                              ; preds = %153
  %159 = load %struct.cgraph_node*, %struct.cgraph_node** %1, align 8
  %160 = getelementptr inbounds %struct.cgraph_node, %struct.cgraph_node* %159, i32 0, i32 5
  %161 = load i32, i32* %160, align 8
  %162 = call i32 @DECL_SAVED_TREE(i32 %161)
  %163 = icmp ne i32 %162, 0
  br i1 %163, label %164, label %169

164:                                              ; preds = %158
  %165 = load i64, i64* @cgraph_dump_file, align 8
  %166 = load %struct.cgraph_node*, %struct.cgraph_node** %1, align 8
  %167 = call i8* @cgraph_node_name(%struct.cgraph_node* %166)
  %168 = call i32 (i64, i8*, ...) @fprintf(i64 %165, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), i8* %167)
  br label %169

169:                                              ; preds = %164, %158, %153
  br label %170

170:                                              ; preds = %169
  %171 = load %struct.cgraph_node*, %struct.cgraph_node** %1, align 8
  %172 = getelementptr inbounds %struct.cgraph_node, %struct.cgraph_node* %171, i32 0, i32 4
  %173 = load %struct.cgraph_node*, %struct.cgraph_node** %172, align 8
  store %struct.cgraph_node* %173, %struct.cgraph_node** %1, align 8
  br label %149

174:                                              ; preds = %149
  %175 = load i64, i64* @cgraph_dump_file, align 8
  %176 = call i32 (i64, i8*, ...) @fprintf(i64 %175, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.5, i64 0, i64 0))
  %177 = load i64, i64* @cgraph_dump_file, align 8
  %178 = call i32 @dump_cgraph(i64 %177)
  br label %179

179:                                              ; preds = %174, %142
  %180 = load i64, i64* @cgraph_dump_file, align 8
  %181 = icmp ne i64 %180, 0
  br i1 %181, label %182, label %185

182:                                              ; preds = %179
  %183 = load i64, i64* @cgraph_dump_file, align 8
  %184 = call i32 (i64, i8*, ...) @fprintf(i64 %183, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.6, i64 0, i64 0))
  br label %185

185:                                              ; preds = %182, %179
  %186 = load %struct.cgraph_node*, %struct.cgraph_node** @cgraph_nodes, align 8
  store %struct.cgraph_node* %186, %struct.cgraph_node** %1, align 8
  br label %187

187:                                              ; preds = %257, %185
  %188 = load %struct.cgraph_node*, %struct.cgraph_node** %1, align 8
  %189 = load %struct.cgraph_node*, %struct.cgraph_node** @cgraph_finalize_compilation_unit.first_analyzed, align 8
  %190 = icmp ne %struct.cgraph_node* %188, %189
  br i1 %190, label %191, label %259

191:                                              ; preds = %187
  %192 = load %struct.cgraph_node*, %struct.cgraph_node** %1, align 8
  %193 = getelementptr inbounds %struct.cgraph_node, %struct.cgraph_node* %192, i32 0, i32 5
  %194 = load i32, i32* %193, align 8
  store i32 %194, i32* %6, align 4
  %195 = load %struct.cgraph_node*, %struct.cgraph_node** %1, align 8
  %196 = getelementptr inbounds %struct.cgraph_node, %struct.cgraph_node* %195, i32 0, i32 4
  %197 = load %struct.cgraph_node*, %struct.cgraph_node** %196, align 8
  store %struct.cgraph_node* %197, %struct.cgraph_node** %2, align 8
  %198 = load %struct.cgraph_node*, %struct.cgraph_node** %1, align 8
  %199 = getelementptr inbounds %struct.cgraph_node, %struct.cgraph_node* %198, i32 0, i32 1
  %200 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %199, i32 0, i32 0
  %201 = load i64, i64* %200, align 8
  %202 = icmp ne i64 %201, 0
  br i1 %202, label %203, label %210

203:                                              ; preds = %191
  %204 = load i32, i32* %6, align 4
  %205 = call i32 @DECL_SAVED_TREE(i32 %204)
  %206 = icmp ne i32 %205, 0
  br i1 %206, label %210, label %207

207:                                              ; preds = %203
  %208 = load %struct.cgraph_node*, %struct.cgraph_node** %1, align 8
  %209 = call i32 @cgraph_reset_node(%struct.cgraph_node* %208)
  br label %210

210:                                              ; preds = %207, %203, %191
  %211 = load %struct.cgraph_node*, %struct.cgraph_node** %1, align 8
  %212 = getelementptr inbounds %struct.cgraph_node, %struct.cgraph_node* %211, i32 0, i32 3
  %213 = load i64, i64* %212, align 8
  %214 = icmp ne i64 %213, 0
  br i1 %214, label %230, label %215

215:                                              ; preds = %210
  %216 = load i32, i32* %6, align 4
  %217 = call i32 @DECL_SAVED_TREE(i32 %216)
  %218 = icmp ne i32 %217, 0
  br i1 %218, label %219, label %230

219:                                              ; preds = %215
  %220 = load i64, i64* @cgraph_dump_file, align 8
  %221 = icmp ne i64 %220, 0
  br i1 %221, label %222, label %227

222:                                              ; preds = %219
  %223 = load i64, i64* @cgraph_dump_file, align 8
  %224 = load %struct.cgraph_node*, %struct.cgraph_node** %1, align 8
  %225 = call i8* @cgraph_node_name(%struct.cgraph_node* %224)
  %226 = call i32 (i64, i8*, ...) @fprintf(i64 %223, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), i8* %225)
  br label %227

227:                                              ; preds = %222, %219
  %228 = load %struct.cgraph_node*, %struct.cgraph_node** %1, align 8
  %229 = call i32 @cgraph_remove_node(%struct.cgraph_node* %228)
  br label %257

230:                                              ; preds = %215, %210
  %231 = load %struct.cgraph_node*, %struct.cgraph_node** %1, align 8
  %232 = getelementptr inbounds %struct.cgraph_node, %struct.cgraph_node* %231, i32 0, i32 2
  store %struct.cgraph_node* null, %struct.cgraph_node** %232, align 8
  br label %233

233:                                              ; preds = %230
  %234 = load %struct.cgraph_node*, %struct.cgraph_node** %1, align 8
  %235 = getelementptr inbounds %struct.cgraph_node, %struct.cgraph_node* %234, i32 0, i32 1
  %236 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %235, i32 0, i32 0
  %237 = load i64, i64* %236, align 8
  %238 = icmp ne i64 %237, 0
  br i1 %238, label %239, label %243

239:                                              ; preds = %233
  %240 = load i32, i32* %6, align 4
  %241 = call i32 @DECL_SAVED_TREE(i32 %240)
  %242 = icmp ne i32 %241, 0
  br label %243

243:                                              ; preds = %239, %233
  %244 = phi i1 [ true, %233 ], [ %242, %239 ]
  %245 = zext i1 %244 to i32
  %246 = call i32 @gcc_assert(i32 %245)
  %247 = load %struct.cgraph_node*, %struct.cgraph_node** %1, align 8
  %248 = getelementptr inbounds %struct.cgraph_node, %struct.cgraph_node* %247, i32 0, i32 0
  %249 = load i64, i64* %248, align 8
  %250 = load %struct.cgraph_node*, %struct.cgraph_node** %1, align 8
  %251 = getelementptr inbounds %struct.cgraph_node, %struct.cgraph_node* %250, i32 0, i32 1
  %252 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %251, i32 0, i32 0
  %253 = load i64, i64* %252, align 8
  %254 = icmp eq i64 %249, %253
  %255 = zext i1 %254 to i32
  %256 = call i32 @gcc_assert(i32 %255)
  br label %257

257:                                              ; preds = %243, %227
  %258 = load %struct.cgraph_node*, %struct.cgraph_node** %2, align 8
  store %struct.cgraph_node* %258, %struct.cgraph_node** %1, align 8
  br label %187

259:                                              ; preds = %187
  %260 = load i64, i64* @cgraph_dump_file, align 8
  %261 = icmp ne i64 %260, 0
  br i1 %261, label %262, label %267

262:                                              ; preds = %259
  %263 = load i64, i64* @cgraph_dump_file, align 8
  %264 = call i32 (i64, i8*, ...) @fprintf(i64 %263, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.7, i64 0, i64 0))
  %265 = load i64, i64* @cgraph_dump_file, align 8
  %266 = call i32 @dump_cgraph(i64 %265)
  br label %267

267:                                              ; preds = %262, %259
  %268 = load %struct.cgraph_node*, %struct.cgraph_node** @cgraph_nodes, align 8
  store %struct.cgraph_node* %268, %struct.cgraph_node** @cgraph_finalize_compilation_unit.first_analyzed, align 8
  %269 = call i32 (...) @ggc_collect()
  %270 = load i32, i32* @TV_CGRAPH, align 4
  %271 = call i32 @timevar_pop(i32 %270)
  br label %272

272:                                              ; preds = %267, %18, %13
  ret void
}

declare dso_local i32 @finish_aliases_1(...) #1

declare dso_local i32 @cgraph_output_pending_asms(...) #1

declare dso_local i32 @cgraph_assemble_pending_functions(...) #1

declare dso_local i32 @cgraph_varpool_output_debug_info(...) #1

declare dso_local i32 @fprintf(i64, i8*, ...) #1

declare dso_local i32 @fflush(i64) #1

declare dso_local i32 @timevar_push(i32) #1

declare dso_local i32 @process_function_and_variable_attributes(%struct.cgraph_node*, %struct.cgraph_varpool_node*) #1

declare dso_local i32 @cgraph_varpool_analyze_pending_decls(...) #1

declare dso_local i32 @DECL_SAVED_TREE(i32) #1

declare dso_local i8* @cgraph_node_name(%struct.cgraph_node*) #1

declare dso_local i32 @cgraph_reset_node(%struct.cgraph_node*) #1

declare dso_local i32 @gcc_assert(i32) #1

declare dso_local i32 @cgraph_analyze_function(%struct.cgraph_node*) #1

declare dso_local i32 @cgraph_mark_reachable_node(%struct.TYPE_4__*) #1

declare dso_local i32 @dump_cgraph(i64) #1

declare dso_local i32 @cgraph_remove_node(%struct.cgraph_node*) #1

declare dso_local i32 @ggc_collect(...) #1

declare dso_local i32 @timevar_pop(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

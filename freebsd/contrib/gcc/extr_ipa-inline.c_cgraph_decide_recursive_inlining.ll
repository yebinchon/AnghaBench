; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_ipa-inline.c_cgraph_decide_recursive_inlining.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_ipa-inline.c_cgraph_decide_recursive_inlining.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cgraph_node = type { i64, i32, i32, %struct.TYPE_4__, %struct.cgraph_node*, %struct.TYPE_3__*, %struct.cgraph_edge* }
%struct.TYPE_4__ = type { i32, %struct.cgraph_node* }
%struct.TYPE_3__ = type { %struct.cgraph_node* }
%struct.cgraph_edge = type { i32, %struct.cgraph_node*, %struct.cgraph_node*, i32, %struct.cgraph_edge* }

@PARAM_MAX_INLINE_INSNS_RECURSIVE_AUTO = common dso_local global i32 0, align 4
@PARAM_MAX_INLINE_RECURSIVE_DEPTH_AUTO = common dso_local global i32 0, align 4
@PARAM_MIN_INLINE_RECURSIVE_PROBABILITY = common dso_local global i32 0, align 4
@PARAM_MAX_INLINE_INSNS_RECURSIVE = common dso_local global i32 0, align 4
@PARAM_MAX_INLINE_RECURSIVE_DEPTH = common dso_local global i32 0, align 4
@dump_file = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [39 x i8] c"  Performing recursive inlining on %s\0A\00", align 1
@.str.1 = private unnamed_addr constant [25 x i8] c"   maxmal depth reached\0A\00", align 1
@max_count = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [27 x i8] c"   Not inlining cold call\0A\00", align 1
@.str.3 = private unnamed_addr constant [37 x i8] c"   Probability of edge is too small\0A\00", align 1
@.str.4 = private unnamed_addr constant [29 x i8] c"   Inlining call of depth %i\00", align 1
@.str.5 = private unnamed_addr constant [36 x i8] c" called approx. %.2f times per call\00", align 1
@.str.6 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.7 = private unnamed_addr constant [42 x i8] c"    Recursive inlining growth limit met.\0A\00", align 1
@.str.8 = private unnamed_addr constant [54 x i8] c"\0A   Inlined %i times, body grown from %i to %i insns\0A\00", align 1
@cgraph_nodes = common dso_local global %struct.cgraph_node* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cgraph_node*)* @cgraph_decide_recursive_inlining to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cgraph_decide_recursive_inlining(%struct.cgraph_node* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.cgraph_node*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.cgraph_edge*, align 8
  %9 = alloca %struct.cgraph_node*, align 8
  %10 = alloca %struct.cgraph_node*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.cgraph_edge*, align 8
  %14 = alloca %struct.cgraph_node*, align 8
  store %struct.cgraph_node* %0, %struct.cgraph_node** %3, align 8
  %15 = load i32, i32* @PARAM_MAX_INLINE_INSNS_RECURSIVE_AUTO, align 4
  %16 = call i32 @PARAM_VALUE(i32 %15)
  store i32 %16, i32* %4, align 4
  %17 = load i32, i32* @PARAM_MAX_INLINE_RECURSIVE_DEPTH_AUTO, align 4
  %18 = call i32 @PARAM_VALUE(i32 %17)
  store i32 %18, i32* %5, align 4
  %19 = load i32, i32* @PARAM_MIN_INLINE_RECURSIVE_PROBABILITY, align 4
  %20 = call i32 @PARAM_VALUE(i32 %19)
  store i32 %20, i32* %6, align 4
  store i32 0, i32* %11, align 4
  store i32 0, i32* %12, align 4
  %21 = load %struct.cgraph_node*, %struct.cgraph_node** %3, align 8
  %22 = getelementptr inbounds %struct.cgraph_node, %struct.cgraph_node* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = call i64 @DECL_DECLARED_INLINE_P(i64 %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %31

26:                                               ; preds = %1
  %27 = load i32, i32* @PARAM_MAX_INLINE_INSNS_RECURSIVE, align 4
  %28 = call i32 @PARAM_VALUE(i32 %27)
  store i32 %28, i32* %4, align 4
  %29 = load i32, i32* @PARAM_MAX_INLINE_RECURSIVE_DEPTH, align 4
  %30 = call i32 @PARAM_VALUE(i32 %29)
  store i32 %30, i32* %5, align 4
  br label %31

31:                                               ; preds = %26, %1
  %32 = load i32, i32* %5, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %40

34:                                               ; preds = %31
  %35 = load %struct.cgraph_node*, %struct.cgraph_node** %3, align 8
  %36 = load %struct.cgraph_node*, %struct.cgraph_node** %3, align 8
  %37 = call i32 @cgraph_estimate_size_after_inlining(i32 1, %struct.cgraph_node* %35, %struct.cgraph_node* %36)
  %38 = load i32, i32* %4, align 4
  %39 = icmp sge i32 %37, %38
  br i1 %39, label %40, label %41

40:                                               ; preds = %34, %31
  store i32 0, i32* %2, align 4
  br label %272

41:                                               ; preds = %34
  %42 = call i32 (...) @fibheap_new()
  store i32 %42, i32* %7, align 4
  %43 = load %struct.cgraph_node*, %struct.cgraph_node** %3, align 8
  %44 = load %struct.cgraph_node*, %struct.cgraph_node** %3, align 8
  %45 = load i32, i32* %7, align 4
  %46 = call i32 @lookup_recursive_calls(%struct.cgraph_node* %43, %struct.cgraph_node* %44, i32 %45)
  %47 = load i32, i32* %7, align 4
  %48 = call i64 @fibheap_empty(i32 %47)
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %53

50:                                               ; preds = %41
  %51 = load i32, i32* %7, align 4
  %52 = call i32 @fibheap_delete(i32 %51)
  store i32 0, i32* %2, align 4
  br label %272

53:                                               ; preds = %41
  %54 = load i64, i64* @dump_file, align 8
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %61

56:                                               ; preds = %53
  %57 = load i64, i64* @dump_file, align 8
  %58 = load %struct.cgraph_node*, %struct.cgraph_node** %3, align 8
  %59 = call i8* @cgraph_node_name(%struct.cgraph_node* %58)
  %60 = call i32 (i64, i8*, ...) @fprintf(i64 %57, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), i8* %59)
  br label %61

61:                                               ; preds = %56, %53
  %62 = load %struct.cgraph_node*, %struct.cgraph_node** %3, align 8
  %63 = load %struct.cgraph_node*, %struct.cgraph_node** %3, align 8
  %64 = getelementptr inbounds %struct.cgraph_node, %struct.cgraph_node* %63, i32 0, i32 1
  %65 = load i32, i32* %64, align 8
  %66 = call %struct.cgraph_node* @cgraph_clone_node(%struct.cgraph_node* %62, i32 %65, i32 1, i32 0)
  store %struct.cgraph_node* %66, %struct.cgraph_node** %9, align 8
  %67 = load %struct.cgraph_node*, %struct.cgraph_node** %9, align 8
  %68 = getelementptr inbounds %struct.cgraph_node, %struct.cgraph_node* %67, i32 0, i32 2
  store i32 1, i32* %68, align 4
  %69 = load %struct.cgraph_node*, %struct.cgraph_node** %9, align 8
  %70 = getelementptr inbounds %struct.cgraph_node, %struct.cgraph_node* %69, i32 0, i32 6
  %71 = load %struct.cgraph_edge*, %struct.cgraph_edge** %70, align 8
  store %struct.cgraph_edge* %71, %struct.cgraph_edge** %8, align 8
  br label %72

72:                                               ; preds = %84, %61
  %73 = load %struct.cgraph_edge*, %struct.cgraph_edge** %8, align 8
  %74 = icmp ne %struct.cgraph_edge* %73, null
  br i1 %74, label %75, label %88

75:                                               ; preds = %72
  %76 = load %struct.cgraph_edge*, %struct.cgraph_edge** %8, align 8
  %77 = getelementptr inbounds %struct.cgraph_edge, %struct.cgraph_edge* %76, i32 0, i32 3
  %78 = load i32, i32* %77, align 8
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %83, label %80

80:                                               ; preds = %75
  %81 = load %struct.cgraph_edge*, %struct.cgraph_edge** %8, align 8
  %82 = call i32 @cgraph_clone_inlined_nodes(%struct.cgraph_edge* %81, i32 1, i32 0)
  br label %83

83:                                               ; preds = %80, %75
  br label %84

84:                                               ; preds = %83
  %85 = load %struct.cgraph_edge*, %struct.cgraph_edge** %8, align 8
  %86 = getelementptr inbounds %struct.cgraph_edge, %struct.cgraph_edge* %85, i32 0, i32 4
  %87 = load %struct.cgraph_edge*, %struct.cgraph_edge** %86, align 8
  store %struct.cgraph_edge* %87, %struct.cgraph_edge** %8, align 8
  br label %72

88:                                               ; preds = %72
  br label %89

89:                                               ; preds = %203, %175, %157, %143, %88
  %90 = load i32, i32* %7, align 4
  %91 = call i64 @fibheap_empty(i32 %90)
  %92 = icmp ne i64 %91, 0
  br i1 %92, label %99, label %93

93:                                               ; preds = %89
  %94 = load %struct.cgraph_node*, %struct.cgraph_node** %3, align 8
  %95 = load %struct.cgraph_node*, %struct.cgraph_node** %9, align 8
  %96 = call i32 @cgraph_estimate_size_after_inlining(i32 1, %struct.cgraph_node* %94, %struct.cgraph_node* %95)
  %97 = load i32, i32* %4, align 4
  %98 = icmp sle i32 %96, %97
  br label %99

99:                                               ; preds = %93, %89
  %100 = phi i1 [ false, %89 ], [ %98, %93 ]
  br i1 %100, label %101, label %217

101:                                              ; preds = %99
  %102 = load i32, i32* %7, align 4
  %103 = call %struct.cgraph_edge* @fibheap_extract_min(i32 %102)
  store %struct.cgraph_edge* %103, %struct.cgraph_edge** %13, align 8
  store i32 1, i32* %11, align 4
  %104 = load %struct.cgraph_edge*, %struct.cgraph_edge** %13, align 8
  %105 = getelementptr inbounds %struct.cgraph_edge, %struct.cgraph_edge* %104, i32 0, i32 2
  %106 = load %struct.cgraph_node*, %struct.cgraph_node** %105, align 8
  store %struct.cgraph_node* %106, %struct.cgraph_node** %14, align 8
  br label %107

107:                                              ; preds = %127, %101
  %108 = load %struct.cgraph_node*, %struct.cgraph_node** %14, align 8
  %109 = getelementptr inbounds %struct.cgraph_node, %struct.cgraph_node* %108, i32 0, i32 3
  %110 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %109, i32 0, i32 1
  %111 = load %struct.cgraph_node*, %struct.cgraph_node** %110, align 8
  %112 = icmp ne %struct.cgraph_node* %111, null
  br i1 %112, label %113, label %133

113:                                              ; preds = %107
  %114 = load %struct.cgraph_node*, %struct.cgraph_node** %3, align 8
  %115 = getelementptr inbounds %struct.cgraph_node, %struct.cgraph_node* %114, i32 0, i32 0
  %116 = load i64, i64* %115, align 8
  %117 = load %struct.cgraph_edge*, %struct.cgraph_edge** %13, align 8
  %118 = getelementptr inbounds %struct.cgraph_edge, %struct.cgraph_edge* %117, i32 0, i32 1
  %119 = load %struct.cgraph_node*, %struct.cgraph_node** %118, align 8
  %120 = getelementptr inbounds %struct.cgraph_node, %struct.cgraph_node* %119, i32 0, i32 0
  %121 = load i64, i64* %120, align 8
  %122 = icmp eq i64 %116, %121
  br i1 %122, label %123, label %126

123:                                              ; preds = %113
  %124 = load i32, i32* %11, align 4
  %125 = add nsw i32 %124, 1
  store i32 %125, i32* %11, align 4
  br label %126

126:                                              ; preds = %123, %113
  br label %127

127:                                              ; preds = %126
  %128 = load %struct.cgraph_node*, %struct.cgraph_node** %14, align 8
  %129 = getelementptr inbounds %struct.cgraph_node, %struct.cgraph_node* %128, i32 0, i32 5
  %130 = load %struct.TYPE_3__*, %struct.TYPE_3__** %129, align 8
  %131 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %130, i32 0, i32 0
  %132 = load %struct.cgraph_node*, %struct.cgraph_node** %131, align 8
  store %struct.cgraph_node* %132, %struct.cgraph_node** %14, align 8
  br label %107

133:                                              ; preds = %107
  %134 = load i32, i32* %11, align 4
  %135 = load i32, i32* %5, align 4
  %136 = icmp sgt i32 %134, %135
  br i1 %136, label %137, label %144

137:                                              ; preds = %133
  %138 = load i64, i64* @dump_file, align 8
  %139 = icmp ne i64 %138, 0
  br i1 %139, label %140, label %143

140:                                              ; preds = %137
  %141 = load i64, i64* @dump_file, align 8
  %142 = call i32 (i64, i8*, ...) @fprintf(i64 %141, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0))
  br label %143

143:                                              ; preds = %140, %137
  br label %89

144:                                              ; preds = %133
  %145 = load i64, i64* @max_count, align 8
  %146 = icmp ne i64 %145, 0
  br i1 %146, label %147, label %177

147:                                              ; preds = %144
  %148 = load %struct.cgraph_edge*, %struct.cgraph_edge** %13, align 8
  %149 = call i32 @cgraph_maybe_hot_edge_p(%struct.cgraph_edge* %148)
  %150 = icmp ne i32 %149, 0
  br i1 %150, label %158, label %151

151:                                              ; preds = %147
  %152 = load i64, i64* @dump_file, align 8
  %153 = icmp ne i64 %152, 0
  br i1 %153, label %154, label %157

154:                                              ; preds = %151
  %155 = load i64, i64* @dump_file, align 8
  %156 = call i32 (i64, i8*, ...) @fprintf(i64 %155, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.2, i64 0, i64 0))
  br label %157

157:                                              ; preds = %154, %151
  br label %89

158:                                              ; preds = %147
  %159 = load %struct.cgraph_edge*, %struct.cgraph_edge** %13, align 8
  %160 = getelementptr inbounds %struct.cgraph_edge, %struct.cgraph_edge* %159, i32 0, i32 0
  %161 = load i32, i32* %160, align 8
  %162 = mul nsw i32 %161, 100
  %163 = load %struct.cgraph_node*, %struct.cgraph_node** %3, align 8
  %164 = getelementptr inbounds %struct.cgraph_node, %struct.cgraph_node* %163, i32 0, i32 1
  %165 = load i32, i32* %164, align 8
  %166 = sdiv i32 %162, %165
  %167 = load i32, i32* %6, align 4
  %168 = icmp slt i32 %166, %167
  br i1 %168, label %169, label %176

169:                                              ; preds = %158
  %170 = load i64, i64* @dump_file, align 8
  %171 = icmp ne i64 %170, 0
  br i1 %171, label %172, label %175

172:                                              ; preds = %169
  %173 = load i64, i64* @dump_file, align 8
  %174 = call i32 (i64, i8*, ...) @fprintf(i64 %173, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.3, i64 0, i64 0))
  br label %175

175:                                              ; preds = %172, %169
  br label %89

176:                                              ; preds = %158
  br label %177

177:                                              ; preds = %176, %144
  %178 = load i64, i64* @dump_file, align 8
  %179 = icmp ne i64 %178, 0
  br i1 %179, label %180, label %203

180:                                              ; preds = %177
  %181 = load i64, i64* @dump_file, align 8
  %182 = load i32, i32* %11, align 4
  %183 = call i32 (i64, i8*, ...) @fprintf(i64 %181, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.4, i64 0, i64 0), i32 %182)
  %184 = load %struct.cgraph_node*, %struct.cgraph_node** %3, align 8
  %185 = getelementptr inbounds %struct.cgraph_node, %struct.cgraph_node* %184, i32 0, i32 1
  %186 = load i32, i32* %185, align 8
  %187 = icmp ne i32 %186, 0
  br i1 %187, label %188, label %200

188:                                              ; preds = %180
  %189 = load i64, i64* @dump_file, align 8
  %190 = load %struct.cgraph_edge*, %struct.cgraph_edge** %13, align 8
  %191 = getelementptr inbounds %struct.cgraph_edge, %struct.cgraph_edge* %190, i32 0, i32 0
  %192 = load i32, i32* %191, align 8
  %193 = sitofp i32 %192 to double
  %194 = load %struct.cgraph_node*, %struct.cgraph_node** %3, align 8
  %195 = getelementptr inbounds %struct.cgraph_node, %struct.cgraph_node* %194, i32 0, i32 1
  %196 = load i32, i32* %195, align 8
  %197 = sitofp i32 %196 to double
  %198 = fdiv double %193, %197
  %199 = call i32 (i64, i8*, ...) @fprintf(i64 %189, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.5, i64 0, i64 0), double %198)
  br label %200

200:                                              ; preds = %188, %180
  %201 = load i64, i64* @dump_file, align 8
  %202 = call i32 (i64, i8*, ...) @fprintf(i64 %201, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.6, i64 0, i64 0))
  br label %203

203:                                              ; preds = %200, %177
  %204 = load %struct.cgraph_edge*, %struct.cgraph_edge** %13, align 8
  %205 = load %struct.cgraph_node*, %struct.cgraph_node** %9, align 8
  %206 = call i32 @cgraph_redirect_edge_callee(%struct.cgraph_edge* %204, %struct.cgraph_node* %205)
  %207 = load %struct.cgraph_edge*, %struct.cgraph_edge** %13, align 8
  %208 = call i32 @cgraph_mark_inline_edge(%struct.cgraph_edge* %207, i32 0)
  %209 = load %struct.cgraph_node*, %struct.cgraph_node** %3, align 8
  %210 = load %struct.cgraph_edge*, %struct.cgraph_edge** %13, align 8
  %211 = getelementptr inbounds %struct.cgraph_edge, %struct.cgraph_edge* %210, i32 0, i32 1
  %212 = load %struct.cgraph_node*, %struct.cgraph_node** %211, align 8
  %213 = load i32, i32* %7, align 4
  %214 = call i32 @lookup_recursive_calls(%struct.cgraph_node* %209, %struct.cgraph_node* %212, i32 %213)
  %215 = load i32, i32* %12, align 4
  %216 = add nsw i32 %215, 1
  store i32 %216, i32* %12, align 4
  br label %89

217:                                              ; preds = %99
  %218 = load i32, i32* %7, align 4
  %219 = call i64 @fibheap_empty(i32 %218)
  %220 = icmp ne i64 %219, 0
  br i1 %220, label %227, label %221

221:                                              ; preds = %217
  %222 = load i64, i64* @dump_file, align 8
  %223 = icmp ne i64 %222, 0
  br i1 %223, label %224, label %227

224:                                              ; preds = %221
  %225 = load i64, i64* @dump_file, align 8
  %226 = call i32 (i64, i8*, ...) @fprintf(i64 %225, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.7, i64 0, i64 0))
  br label %227

227:                                              ; preds = %224, %221, %217
  %228 = load i32, i32* %7, align 4
  %229 = call i32 @fibheap_delete(i32 %228)
  %230 = load i64, i64* @dump_file, align 8
  %231 = icmp ne i64 %230, 0
  br i1 %231, label %232, label %244

232:                                              ; preds = %227
  %233 = load i64, i64* @dump_file, align 8
  %234 = load i32, i32* %12, align 4
  %235 = load %struct.cgraph_node*, %struct.cgraph_node** %9, align 8
  %236 = getelementptr inbounds %struct.cgraph_node, %struct.cgraph_node* %235, i32 0, i32 3
  %237 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %236, i32 0, i32 0
  %238 = load i32, i32* %237, align 8
  %239 = load %struct.cgraph_node*, %struct.cgraph_node** %3, align 8
  %240 = getelementptr inbounds %struct.cgraph_node, %struct.cgraph_node* %239, i32 0, i32 3
  %241 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %240, i32 0, i32 0
  %242 = load i32, i32* %241, align 8
  %243 = call i32 (i64, i8*, ...) @fprintf(i64 %233, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.8, i64 0, i64 0), i32 %234, i32 %238, i32 %242)
  br label %244

244:                                              ; preds = %232, %227
  %245 = load %struct.cgraph_node*, %struct.cgraph_node** @cgraph_nodes, align 8
  store %struct.cgraph_node* %245, %struct.cgraph_node** %3, align 8
  br label %246

246:                                              ; preds = %264, %244
  %247 = load %struct.cgraph_node*, %struct.cgraph_node** %3, align 8
  %248 = load %struct.cgraph_node*, %struct.cgraph_node** %9, align 8
  %249 = icmp ne %struct.cgraph_node* %247, %248
  br i1 %249, label %250, label %266

250:                                              ; preds = %246
  %251 = load %struct.cgraph_node*, %struct.cgraph_node** %3, align 8
  %252 = getelementptr inbounds %struct.cgraph_node, %struct.cgraph_node* %251, i32 0, i32 4
  %253 = load %struct.cgraph_node*, %struct.cgraph_node** %252, align 8
  store %struct.cgraph_node* %253, %struct.cgraph_node** %10, align 8
  %254 = load %struct.cgraph_node*, %struct.cgraph_node** %3, align 8
  %255 = getelementptr inbounds %struct.cgraph_node, %struct.cgraph_node* %254, i32 0, i32 3
  %256 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %255, i32 0, i32 1
  %257 = load %struct.cgraph_node*, %struct.cgraph_node** %256, align 8
  %258 = load %struct.cgraph_node*, %struct.cgraph_node** %9, align 8
  %259 = icmp eq %struct.cgraph_node* %257, %258
  br i1 %259, label %260, label %263

260:                                              ; preds = %250
  %261 = load %struct.cgraph_node*, %struct.cgraph_node** %3, align 8
  %262 = call i32 @cgraph_remove_node(%struct.cgraph_node* %261)
  br label %263

263:                                              ; preds = %260, %250
  br label %264

264:                                              ; preds = %263
  %265 = load %struct.cgraph_node*, %struct.cgraph_node** %10, align 8
  store %struct.cgraph_node* %265, %struct.cgraph_node** %3, align 8
  br label %246

266:                                              ; preds = %246
  %267 = load %struct.cgraph_node*, %struct.cgraph_node** %9, align 8
  %268 = call i32 @cgraph_remove_node(%struct.cgraph_node* %267)
  %269 = load i32, i32* %12, align 4
  %270 = icmp sgt i32 %269, 0
  %271 = zext i1 %270 to i32
  store i32 %271, i32* %2, align 4
  br label %272

272:                                              ; preds = %266, %50, %40
  %273 = load i32, i32* %2, align 4
  ret i32 %273
}

declare dso_local i32 @PARAM_VALUE(i32) #1

declare dso_local i64 @DECL_DECLARED_INLINE_P(i64) #1

declare dso_local i32 @cgraph_estimate_size_after_inlining(i32, %struct.cgraph_node*, %struct.cgraph_node*) #1

declare dso_local i32 @fibheap_new(...) #1

declare dso_local i32 @lookup_recursive_calls(%struct.cgraph_node*, %struct.cgraph_node*, i32) #1

declare dso_local i64 @fibheap_empty(i32) #1

declare dso_local i32 @fibheap_delete(i32) #1

declare dso_local i32 @fprintf(i64, i8*, ...) #1

declare dso_local i8* @cgraph_node_name(%struct.cgraph_node*) #1

declare dso_local %struct.cgraph_node* @cgraph_clone_node(%struct.cgraph_node*, i32, i32, i32) #1

declare dso_local i32 @cgraph_clone_inlined_nodes(%struct.cgraph_edge*, i32, i32) #1

declare dso_local %struct.cgraph_edge* @fibheap_extract_min(i32) #1

declare dso_local i32 @cgraph_maybe_hot_edge_p(%struct.cgraph_edge*) #1

declare dso_local i32 @cgraph_redirect_edge_callee(%struct.cgraph_edge*, %struct.cgraph_node*) #1

declare dso_local i32 @cgraph_mark_inline_edge(%struct.cgraph_edge*, i32) #1

declare dso_local i32 @cgraph_remove_node(%struct.cgraph_node*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

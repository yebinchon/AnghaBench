; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_omp-low.c_extract_omp_for_data.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_omp-low.c_extract_omp_for_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.omp_for_data = type { i8*, i32, i8*, i8*, i32, i32, i64, i32*, i8*, i8*, i32* }

@MODIFY_EXPR = common dso_local global i32 0, align 4
@INTEGER_TYPE = common dso_local global i32 0, align 4
@NEGATE_EXPR = common dso_local global i32 0, align 4
@OMP_CLAUSE_SCHEDULE_STATIC = common dso_local global i64 0, align 8
@NULL_TREE = common dso_local global i32* null, align 8
@OMP_CLAUSE_SCHEDULE_RUNTIME = common dso_local global i64 0, align 8
@integer_zero_node = common dso_local global i32* null, align 8
@integer_one_node = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, %struct.omp_for_data*)* @extract_omp_for_data to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @extract_omp_for_data(i8* %0, %struct.omp_for_data* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca %struct.omp_for_data*, align 8
  %5 = alloca i8*, align 8
  store i8* %0, i8** %3, align 8
  store %struct.omp_for_data* %1, %struct.omp_for_data** %4, align 8
  %6 = load i8*, i8** %3, align 8
  %7 = load %struct.omp_for_data*, %struct.omp_for_data** %4, align 8
  %8 = getelementptr inbounds %struct.omp_for_data, %struct.omp_for_data* %7, i32 0, i32 8
  store i8* %6, i8** %8, align 8
  %9 = load %struct.omp_for_data*, %struct.omp_for_data** %4, align 8
  %10 = getelementptr inbounds %struct.omp_for_data, %struct.omp_for_data* %9, i32 0, i32 10
  store i32* null, i32** %10, align 8
  %11 = load i8*, i8** %3, align 8
  %12 = call i8* @OMP_FOR_INIT(i8* %11)
  store i8* %12, i8** %5, align 8
  %13 = load i8*, i8** %5, align 8
  %14 = call i32 @TREE_CODE(i8* %13)
  %15 = load i32, i32* @MODIFY_EXPR, align 4
  %16 = icmp eq i32 %14, %15
  %17 = zext i1 %16 to i32
  %18 = call i32 @gcc_assert(i32 %17)
  %19 = load i8*, i8** %5, align 8
  %20 = call i8* @TREE_OPERAND(i8* %19, i32 0)
  %21 = load %struct.omp_for_data*, %struct.omp_for_data** %4, align 8
  %22 = getelementptr inbounds %struct.omp_for_data, %struct.omp_for_data* %21, i32 0, i32 0
  store i8* %20, i8** %22, align 8
  %23 = load %struct.omp_for_data*, %struct.omp_for_data** %4, align 8
  %24 = getelementptr inbounds %struct.omp_for_data, %struct.omp_for_data* %23, i32 0, i32 0
  %25 = load i8*, i8** %24, align 8
  %26 = call i32 @DECL_P(i8* %25)
  %27 = call i32 @gcc_assert(i32 %26)
  %28 = load %struct.omp_for_data*, %struct.omp_for_data** %4, align 8
  %29 = getelementptr inbounds %struct.omp_for_data, %struct.omp_for_data* %28, i32 0, i32 0
  %30 = load i8*, i8** %29, align 8
  %31 = call i8* @TREE_TYPE(i8* %30)
  %32 = call i32 @TREE_CODE(i8* %31)
  %33 = load i32, i32* @INTEGER_TYPE, align 4
  %34 = icmp eq i32 %32, %33
  %35 = zext i1 %34 to i32
  %36 = call i32 @gcc_assert(i32 %35)
  %37 = load i8*, i8** %5, align 8
  %38 = call i8* @TREE_OPERAND(i8* %37, i32 1)
  %39 = load %struct.omp_for_data*, %struct.omp_for_data** %4, align 8
  %40 = getelementptr inbounds %struct.omp_for_data, %struct.omp_for_data* %39, i32 0, i32 9
  store i8* %38, i8** %40, align 8
  %41 = load i8*, i8** %3, align 8
  %42 = call i8* @OMP_FOR_COND(i8* %41)
  store i8* %42, i8** %5, align 8
  %43 = load i8*, i8** %5, align 8
  %44 = call i32 @TREE_CODE(i8* %43)
  %45 = load %struct.omp_for_data*, %struct.omp_for_data** %4, align 8
  %46 = getelementptr inbounds %struct.omp_for_data, %struct.omp_for_data* %45, i32 0, i32 1
  store i32 %44, i32* %46, align 8
  %47 = load i8*, i8** %5, align 8
  %48 = call i8* @TREE_OPERAND(i8* %47, i32 0)
  %49 = load %struct.omp_for_data*, %struct.omp_for_data** %4, align 8
  %50 = getelementptr inbounds %struct.omp_for_data, %struct.omp_for_data* %49, i32 0, i32 0
  %51 = load i8*, i8** %50, align 8
  %52 = icmp eq i8* %48, %51
  %53 = zext i1 %52 to i32
  %54 = call i32 @gcc_assert(i32 %53)
  %55 = load i8*, i8** %5, align 8
  %56 = call i8* @TREE_OPERAND(i8* %55, i32 1)
  %57 = load %struct.omp_for_data*, %struct.omp_for_data** %4, align 8
  %58 = getelementptr inbounds %struct.omp_for_data, %struct.omp_for_data* %57, i32 0, i32 2
  store i8* %56, i8** %58, align 8
  %59 = load %struct.omp_for_data*, %struct.omp_for_data** %4, align 8
  %60 = getelementptr inbounds %struct.omp_for_data, %struct.omp_for_data* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 8
  switch i32 %61, label %99 [
    i32 133, label %62
    i32 135, label %62
    i32 134, label %63
    i32 136, label %81
  ]

62:                                               ; preds = %2, %2
  br label %101

63:                                               ; preds = %2
  %64 = load %struct.omp_for_data*, %struct.omp_for_data** %4, align 8
  %65 = getelementptr inbounds %struct.omp_for_data, %struct.omp_for_data* %64, i32 0, i32 2
  %66 = load i8*, i8** %65, align 8
  %67 = call i8* @TREE_TYPE(i8* %66)
  %68 = load %struct.omp_for_data*, %struct.omp_for_data** %4, align 8
  %69 = getelementptr inbounds %struct.omp_for_data, %struct.omp_for_data* %68, i32 0, i32 2
  %70 = load i8*, i8** %69, align 8
  %71 = load %struct.omp_for_data*, %struct.omp_for_data** %4, align 8
  %72 = getelementptr inbounds %struct.omp_for_data, %struct.omp_for_data* %71, i32 0, i32 2
  %73 = load i8*, i8** %72, align 8
  %74 = call i8* @TREE_TYPE(i8* %73)
  %75 = call i32 @build_int_cst(i8* %74, i32 1)
  %76 = call i8* @fold_build2(i32 128, i8* %67, i8* %70, i32 %75)
  %77 = load %struct.omp_for_data*, %struct.omp_for_data** %4, align 8
  %78 = getelementptr inbounds %struct.omp_for_data, %struct.omp_for_data* %77, i32 0, i32 2
  store i8* %76, i8** %78, align 8
  %79 = load %struct.omp_for_data*, %struct.omp_for_data** %4, align 8
  %80 = getelementptr inbounds %struct.omp_for_data, %struct.omp_for_data* %79, i32 0, i32 1
  store i32 133, i32* %80, align 8
  br label %101

81:                                               ; preds = %2
  %82 = load %struct.omp_for_data*, %struct.omp_for_data** %4, align 8
  %83 = getelementptr inbounds %struct.omp_for_data, %struct.omp_for_data* %82, i32 0, i32 2
  %84 = load i8*, i8** %83, align 8
  %85 = call i8* @TREE_TYPE(i8* %84)
  %86 = load %struct.omp_for_data*, %struct.omp_for_data** %4, align 8
  %87 = getelementptr inbounds %struct.omp_for_data, %struct.omp_for_data* %86, i32 0, i32 2
  %88 = load i8*, i8** %87, align 8
  %89 = load %struct.omp_for_data*, %struct.omp_for_data** %4, align 8
  %90 = getelementptr inbounds %struct.omp_for_data, %struct.omp_for_data* %89, i32 0, i32 2
  %91 = load i8*, i8** %90, align 8
  %92 = call i8* @TREE_TYPE(i8* %91)
  %93 = call i32 @build_int_cst(i8* %92, i32 1)
  %94 = call i8* @fold_build2(i32 132, i8* %85, i8* %88, i32 %93)
  %95 = load %struct.omp_for_data*, %struct.omp_for_data** %4, align 8
  %96 = getelementptr inbounds %struct.omp_for_data, %struct.omp_for_data* %95, i32 0, i32 2
  store i8* %94, i8** %96, align 8
  %97 = load %struct.omp_for_data*, %struct.omp_for_data** %4, align 8
  %98 = getelementptr inbounds %struct.omp_for_data, %struct.omp_for_data* %97, i32 0, i32 1
  store i32 135, i32* %98, align 8
  br label %101

99:                                               ; preds = %2
  %100 = call i32 (...) @gcc_unreachable()
  br label %101

101:                                              ; preds = %99, %81, %63, %62
  %102 = load %struct.omp_for_data*, %struct.omp_for_data** %4, align 8
  %103 = getelementptr inbounds %struct.omp_for_data, %struct.omp_for_data* %102, i32 0, i32 8
  %104 = load i8*, i8** %103, align 8
  %105 = call i8* @OMP_FOR_INCR(i8* %104)
  store i8* %105, i8** %5, align 8
  %106 = load i8*, i8** %5, align 8
  %107 = call i32 @TREE_CODE(i8* %106)
  %108 = load i32, i32* @MODIFY_EXPR, align 4
  %109 = icmp eq i32 %107, %108
  %110 = zext i1 %109 to i32
  %111 = call i32 @gcc_assert(i32 %110)
  %112 = load i8*, i8** %5, align 8
  %113 = call i8* @TREE_OPERAND(i8* %112, i32 0)
  %114 = load %struct.omp_for_data*, %struct.omp_for_data** %4, align 8
  %115 = getelementptr inbounds %struct.omp_for_data, %struct.omp_for_data* %114, i32 0, i32 0
  %116 = load i8*, i8** %115, align 8
  %117 = icmp eq i8* %113, %116
  %118 = zext i1 %117 to i32
  %119 = call i32 @gcc_assert(i32 %118)
  %120 = load i8*, i8** %5, align 8
  %121 = call i8* @TREE_OPERAND(i8* %120, i32 1)
  store i8* %121, i8** %5, align 8
  %122 = load i8*, i8** %5, align 8
  %123 = call i8* @TREE_OPERAND(i8* %122, i32 0)
  %124 = load %struct.omp_for_data*, %struct.omp_for_data** %4, align 8
  %125 = getelementptr inbounds %struct.omp_for_data, %struct.omp_for_data* %124, i32 0, i32 0
  %126 = load i8*, i8** %125, align 8
  %127 = icmp eq i8* %123, %126
  %128 = zext i1 %127 to i32
  %129 = call i32 @gcc_assert(i32 %128)
  %130 = load i8*, i8** %5, align 8
  %131 = call i32 @TREE_CODE(i8* %130)
  switch i32 %131, label %153 [
    i32 128, label %132
    i32 132, label %137
  ]

132:                                              ; preds = %101
  %133 = load i8*, i8** %5, align 8
  %134 = call i8* @TREE_OPERAND(i8* %133, i32 1)
  %135 = load %struct.omp_for_data*, %struct.omp_for_data** %4, align 8
  %136 = getelementptr inbounds %struct.omp_for_data, %struct.omp_for_data* %135, i32 0, i32 3
  store i8* %134, i8** %136, align 8
  br label %155

137:                                              ; preds = %101
  %138 = load i8*, i8** %5, align 8
  %139 = call i8* @TREE_OPERAND(i8* %138, i32 1)
  %140 = load %struct.omp_for_data*, %struct.omp_for_data** %4, align 8
  %141 = getelementptr inbounds %struct.omp_for_data, %struct.omp_for_data* %140, i32 0, i32 3
  store i8* %139, i8** %141, align 8
  %142 = load i32, i32* @NEGATE_EXPR, align 4
  %143 = load %struct.omp_for_data*, %struct.omp_for_data** %4, align 8
  %144 = getelementptr inbounds %struct.omp_for_data, %struct.omp_for_data* %143, i32 0, i32 3
  %145 = load i8*, i8** %144, align 8
  %146 = call i8* @TREE_TYPE(i8* %145)
  %147 = load %struct.omp_for_data*, %struct.omp_for_data** %4, align 8
  %148 = getelementptr inbounds %struct.omp_for_data, %struct.omp_for_data* %147, i32 0, i32 3
  %149 = load i8*, i8** %148, align 8
  %150 = call i8* @fold_build1(i32 %142, i8* %146, i8* %149)
  %151 = load %struct.omp_for_data*, %struct.omp_for_data** %4, align 8
  %152 = getelementptr inbounds %struct.omp_for_data, %struct.omp_for_data* %151, i32 0, i32 3
  store i8* %150, i8** %152, align 8
  br label %155

153:                                              ; preds = %101
  %154 = call i32 (...) @gcc_unreachable()
  br label %155

155:                                              ; preds = %153, %137, %132
  %156 = load %struct.omp_for_data*, %struct.omp_for_data** %4, align 8
  %157 = getelementptr inbounds %struct.omp_for_data, %struct.omp_for_data* %156, i32 0, i32 5
  store i32 0, i32* %157, align 4
  %158 = load %struct.omp_for_data*, %struct.omp_for_data** %4, align 8
  %159 = getelementptr inbounds %struct.omp_for_data, %struct.omp_for_data* %158, i32 0, i32 4
  store i32 0, i32* %159, align 8
  %160 = load i64, i64* @OMP_CLAUSE_SCHEDULE_STATIC, align 8
  %161 = load %struct.omp_for_data*, %struct.omp_for_data** %4, align 8
  %162 = getelementptr inbounds %struct.omp_for_data, %struct.omp_for_data* %161, i32 0, i32 6
  store i64 %160, i64* %162, align 8
  %163 = load i32*, i32** @NULL_TREE, align 8
  %164 = load %struct.omp_for_data*, %struct.omp_for_data** %4, align 8
  %165 = getelementptr inbounds %struct.omp_for_data, %struct.omp_for_data* %164, i32 0, i32 7
  store i32* %163, i32** %165, align 8
  %166 = load i8*, i8** %3, align 8
  %167 = call i8* @OMP_FOR_CLAUSES(i8* %166)
  store i8* %167, i8** %5, align 8
  br label %168

168:                                              ; preds = %191, %155
  %169 = load i8*, i8** %5, align 8
  %170 = icmp ne i8* %169, null
  br i1 %170, label %171, label %194

171:                                              ; preds = %168
  %172 = load i8*, i8** %5, align 8
  %173 = call i32 @OMP_CLAUSE_CODE(i8* %172)
  switch i32 %173, label %189 [
    i32 131, label %174
    i32 130, label %177
    i32 129, label %180
  ]

174:                                              ; preds = %171
  %175 = load %struct.omp_for_data*, %struct.omp_for_data** %4, align 8
  %176 = getelementptr inbounds %struct.omp_for_data, %struct.omp_for_data* %175, i32 0, i32 4
  store i32 1, i32* %176, align 8
  br label %190

177:                                              ; preds = %171
  %178 = load %struct.omp_for_data*, %struct.omp_for_data** %4, align 8
  %179 = getelementptr inbounds %struct.omp_for_data, %struct.omp_for_data* %178, i32 0, i32 5
  store i32 1, i32* %179, align 4
  br label %190

180:                                              ; preds = %171
  %181 = load i8*, i8** %5, align 8
  %182 = call i64 @OMP_CLAUSE_SCHEDULE_KIND(i8* %181)
  %183 = load %struct.omp_for_data*, %struct.omp_for_data** %4, align 8
  %184 = getelementptr inbounds %struct.omp_for_data, %struct.omp_for_data* %183, i32 0, i32 6
  store i64 %182, i64* %184, align 8
  %185 = load i8*, i8** %5, align 8
  %186 = call i32* @OMP_CLAUSE_SCHEDULE_CHUNK_EXPR(i8* %185)
  %187 = load %struct.omp_for_data*, %struct.omp_for_data** %4, align 8
  %188 = getelementptr inbounds %struct.omp_for_data, %struct.omp_for_data* %187, i32 0, i32 7
  store i32* %186, i32** %188, align 8
  br label %190

189:                                              ; preds = %171
  br label %190

190:                                              ; preds = %189, %180, %177, %174
  br label %191

191:                                              ; preds = %190
  %192 = load i8*, i8** %5, align 8
  %193 = call i8* @OMP_CLAUSE_CHAIN(i8* %192)
  store i8* %193, i8** %5, align 8
  br label %168

194:                                              ; preds = %168
  %195 = load %struct.omp_for_data*, %struct.omp_for_data** %4, align 8
  %196 = getelementptr inbounds %struct.omp_for_data, %struct.omp_for_data* %195, i32 0, i32 6
  %197 = load i64, i64* %196, align 8
  %198 = load i64, i64* @OMP_CLAUSE_SCHEDULE_RUNTIME, align 8
  %199 = icmp eq i64 %197, %198
  br i1 %199, label %200, label %207

200:                                              ; preds = %194
  %201 = load %struct.omp_for_data*, %struct.omp_for_data** %4, align 8
  %202 = getelementptr inbounds %struct.omp_for_data, %struct.omp_for_data* %201, i32 0, i32 7
  %203 = load i32*, i32** %202, align 8
  %204 = icmp eq i32* %203, null
  %205 = zext i1 %204 to i32
  %206 = call i32 @gcc_assert(i32 %205)
  br label %239

207:                                              ; preds = %194
  %208 = load %struct.omp_for_data*, %struct.omp_for_data** %4, align 8
  %209 = getelementptr inbounds %struct.omp_for_data, %struct.omp_for_data* %208, i32 0, i32 7
  %210 = load i32*, i32** %209, align 8
  %211 = icmp eq i32* %210, null
  br i1 %211, label %212, label %238

212:                                              ; preds = %207
  %213 = load %struct.omp_for_data*, %struct.omp_for_data** %4, align 8
  %214 = getelementptr inbounds %struct.omp_for_data, %struct.omp_for_data* %213, i32 0, i32 6
  %215 = load i64, i64* %214, align 8
  %216 = load i64, i64* @OMP_CLAUSE_SCHEDULE_STATIC, align 8
  %217 = icmp ne i64 %215, %216
  br i1 %217, label %223, label %218

218:                                              ; preds = %212
  %219 = load %struct.omp_for_data*, %struct.omp_for_data** %4, align 8
  %220 = getelementptr inbounds %struct.omp_for_data, %struct.omp_for_data* %219, i32 0, i32 5
  %221 = load i32, i32* %220, align 4
  %222 = icmp ne i32 %221, 0
  br i1 %222, label %223, label %237

223:                                              ; preds = %218, %212
  %224 = load %struct.omp_for_data*, %struct.omp_for_data** %4, align 8
  %225 = getelementptr inbounds %struct.omp_for_data, %struct.omp_for_data* %224, i32 0, i32 6
  %226 = load i64, i64* %225, align 8
  %227 = load i64, i64* @OMP_CLAUSE_SCHEDULE_STATIC, align 8
  %228 = icmp eq i64 %226, %227
  br i1 %228, label %229, label %231

229:                                              ; preds = %223
  %230 = load i32*, i32** @integer_zero_node, align 8
  br label %233

231:                                              ; preds = %223
  %232 = load i32*, i32** @integer_one_node, align 8
  br label %233

233:                                              ; preds = %231, %229
  %234 = phi i32* [ %230, %229 ], [ %232, %231 ]
  %235 = load %struct.omp_for_data*, %struct.omp_for_data** %4, align 8
  %236 = getelementptr inbounds %struct.omp_for_data, %struct.omp_for_data* %235, i32 0, i32 7
  store i32* %234, i32** %236, align 8
  br label %237

237:                                              ; preds = %233, %218
  br label %238

238:                                              ; preds = %237, %207
  br label %239

239:                                              ; preds = %238, %200
  ret void
}

declare dso_local i8* @OMP_FOR_INIT(i8*) #1

declare dso_local i32 @gcc_assert(i32) #1

declare dso_local i32 @TREE_CODE(i8*) #1

declare dso_local i8* @TREE_OPERAND(i8*, i32) #1

declare dso_local i32 @DECL_P(i8*) #1

declare dso_local i8* @TREE_TYPE(i8*) #1

declare dso_local i8* @OMP_FOR_COND(i8*) #1

declare dso_local i8* @fold_build2(i32, i8*, i8*, i32) #1

declare dso_local i32 @build_int_cst(i8*, i32) #1

declare dso_local i32 @gcc_unreachable(...) #1

declare dso_local i8* @OMP_FOR_INCR(i8*) #1

declare dso_local i8* @fold_build1(i32, i8*, i8*) #1

declare dso_local i8* @OMP_FOR_CLAUSES(i8*) #1

declare dso_local i32 @OMP_CLAUSE_CODE(i8*) #1

declare dso_local i64 @OMP_CLAUSE_SCHEDULE_KIND(i8*) #1

declare dso_local i32* @OMP_CLAUSE_SCHEDULE_CHUNK_EXPR(i8*) #1

declare dso_local i8* @OMP_CLAUSE_CHAIN(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

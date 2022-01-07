; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_gcov.c_add_line_counts.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_gcov.c_add_line_counts.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_24__ = type { i32, %struct.TYPE_25__*, %struct.TYPE_24__* }
%struct.TYPE_25__ = type { i32, %struct.TYPE_23__, i64 }
%struct.TYPE_23__ = type { %struct.TYPE_18__*, %struct.TYPE_17__* }
%struct.TYPE_18__ = type { i32, %struct.TYPE_18__*, %struct.TYPE_18__* }
%struct.TYPE_17__ = type { %struct.TYPE_18__*, %struct.TYPE_17__*, %struct.TYPE_21__, i64 }
%struct.TYPE_21__ = type { %struct.TYPE_20__, %struct.TYPE_19__ }
%struct.TYPE_20__ = type { i32, i32* }
%struct.TYPE_19__ = type { i32*, i32 }
%struct.TYPE_27__ = type { i32, i32 }
%struct.TYPE_26__ = type { i32, i64, i32, %struct.TYPE_22__*, i32, %struct.TYPE_17__* }
%struct.TYPE_22__ = type { %struct.TYPE_25__* }

@sources = common dso_local global %struct.TYPE_24__* null, align 8
@flag_all_blocks = common dso_local global i64 0, align 8
@flag_branches = common dso_local global i64 0, align 8
@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [22 x i8] c"%s:no lines for '%s'\0A\00", align 1
@bbg_file_name = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_27__*, %struct.TYPE_26__*)* @add_line_counts to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @add_line_counts(%struct.TYPE_27__* %0, %struct.TYPE_26__* %1) #0 {
  %3 = alloca %struct.TYPE_27__*, align 8
  %4 = alloca %struct.TYPE_26__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_25__*, align 8
  %7 = alloca %struct.TYPE_17__*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca %struct.TYPE_24__*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.TYPE_25__*, align 8
  %13 = alloca %struct.TYPE_18__*, align 8
  store %struct.TYPE_27__* %0, %struct.TYPE_27__** %3, align 8
  store %struct.TYPE_26__* %1, %struct.TYPE_26__** %4, align 8
  store %struct.TYPE_25__* null, %struct.TYPE_25__** %6, align 8
  store i32 0, i32* %5, align 4
  br label %14

14:                                               ; preds = %231, %2
  %15 = load i32, i32* %5, align 4
  %16 = load %struct.TYPE_26__*, %struct.TYPE_26__** %4, align 8
  %17 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = icmp ne i32 %15, %18
  br i1 %19, label %20, label %234

20:                                               ; preds = %14
  %21 = load %struct.TYPE_26__*, %struct.TYPE_26__** %4, align 8
  %22 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %21, i32 0, i32 5
  %23 = load %struct.TYPE_17__*, %struct.TYPE_17__** %22, align 8
  %24 = load i32, i32* %5, align 4
  %25 = zext i32 %24 to i64
  %26 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %23, i64 %25
  store %struct.TYPE_17__* %26, %struct.TYPE_17__** %7, align 8
  store %struct.TYPE_24__* null, %struct.TYPE_24__** %9, align 8
  %27 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %28 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %27, i32 0, i32 3
  %29 = load i64, i64* %28, align 8
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %46

31:                                               ; preds = %20
  %32 = load i32, i32* %5, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %46

34:                                               ; preds = %31
  %35 = load i32, i32* %5, align 4
  %36 = add i32 %35, 1
  %37 = load %struct.TYPE_26__*, %struct.TYPE_26__** %4, align 8
  %38 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = icmp ne i32 %36, %39
  br i1 %40, label %41, label %46

41:                                               ; preds = %34
  %42 = load %struct.TYPE_26__*, %struct.TYPE_26__** %4, align 8
  %43 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %42, i32 0, i32 4
  %44 = load i32, i32* %43, align 8
  %45 = add nsw i32 %44, 1
  store i32 %45, i32* %43, align 8
  br label %46

46:                                               ; preds = %41, %34, %31, %20
  store i32 0, i32* %10, align 4
  %47 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %48 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %47, i32 0, i32 2
  %49 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %48, i32 0, i32 1
  %50 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %49, i32 0, i32 0
  %51 = load i32*, i32** %50, align 8
  store i32* %51, i32** %8, align 8
  br label %52

52:                                               ; preds = %130, %46
  %53 = load i32, i32* %10, align 4
  %54 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %55 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %54, i32 0, i32 2
  %56 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %55, i32 0, i32 1
  %57 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 8
  %59 = icmp ne i32 %53, %58
  br i1 %59, label %60, label %135

60:                                               ; preds = %52
  %61 = load i32*, i32** %8, align 8
  %62 = load i32, i32* %61, align 4
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %83, label %64

64:                                               ; preds = %60
  %65 = load i32*, i32** %8, align 8
  %66 = getelementptr inbounds i32, i32* %65, i32 1
  store i32* %66, i32** %8, align 8
  %67 = load i32, i32* %66, align 4
  store i32 %67, i32* %11, align 4
  %68 = load %struct.TYPE_24__*, %struct.TYPE_24__** @sources, align 8
  store %struct.TYPE_24__* %68, %struct.TYPE_24__** %9, align 8
  br label %69

69:                                               ; preds = %76, %64
  %70 = load %struct.TYPE_24__*, %struct.TYPE_24__** %9, align 8
  %71 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 8
  %73 = load i32, i32* %11, align 4
  %74 = icmp ne i32 %72, %73
  br i1 %74, label %75, label %80

75:                                               ; preds = %69
  br label %76

76:                                               ; preds = %75
  %77 = load %struct.TYPE_24__*, %struct.TYPE_24__** %9, align 8
  %78 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %77, i32 0, i32 2
  %79 = load %struct.TYPE_24__*, %struct.TYPE_24__** %78, align 8
  store %struct.TYPE_24__* %79, %struct.TYPE_24__** %9, align 8
  br label %69

80:                                               ; preds = %69
  %81 = load i32, i32* %10, align 4
  %82 = add i32 %81, 1
  store i32 %82, i32* %10, align 4
  br label %129

83:                                               ; preds = %60
  %84 = load %struct.TYPE_24__*, %struct.TYPE_24__** %9, align 8
  %85 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %84, i32 0, i32 1
  %86 = load %struct.TYPE_25__*, %struct.TYPE_25__** %85, align 8
  %87 = load i32*, i32** %8, align 8
  %88 = load i32, i32* %87, align 4
  %89 = zext i32 %88 to i64
  %90 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %86, i64 %89
  store %struct.TYPE_25__* %90, %struct.TYPE_25__** %6, align 8
  %91 = load %struct.TYPE_27__*, %struct.TYPE_27__** %3, align 8
  %92 = icmp ne %struct.TYPE_27__* %91, null
  br i1 %92, label %93, label %119

93:                                               ; preds = %83
  %94 = load %struct.TYPE_25__*, %struct.TYPE_25__** %6, align 8
  %95 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 8
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %103, label %98

98:                                               ; preds = %93
  %99 = load %struct.TYPE_27__*, %struct.TYPE_27__** %3, align 8
  %100 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %99, i32 0, i32 1
  %101 = load i32, i32* %100, align 4
  %102 = add nsw i32 %101, 1
  store i32 %102, i32* %100, align 4
  br label %103

103:                                              ; preds = %98, %93
  %104 = load %struct.TYPE_25__*, %struct.TYPE_25__** %6, align 8
  %105 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %104, i32 0, i32 2
  %106 = load i64, i64* %105, align 8
  %107 = icmp ne i64 %106, 0
  br i1 %107, label %118, label %108

108:                                              ; preds = %103
  %109 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %110 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %109, i32 0, i32 3
  %111 = load i64, i64* %110, align 8
  %112 = icmp ne i64 %111, 0
  br i1 %112, label %113, label %118

113:                                              ; preds = %108
  %114 = load %struct.TYPE_27__*, %struct.TYPE_27__** %3, align 8
  %115 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %114, i32 0, i32 0
  %116 = load i32, i32* %115, align 4
  %117 = add nsw i32 %116, 1
  store i32 %117, i32* %115, align 4
  br label %118

118:                                              ; preds = %113, %108, %103
  br label %119

119:                                              ; preds = %118, %83
  %120 = load %struct.TYPE_25__*, %struct.TYPE_25__** %6, align 8
  %121 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %120, i32 0, i32 0
  store i32 1, i32* %121, align 8
  %122 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %123 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %122, i32 0, i32 3
  %124 = load i64, i64* %123, align 8
  %125 = load %struct.TYPE_25__*, %struct.TYPE_25__** %6, align 8
  %126 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %125, i32 0, i32 2
  %127 = load i64, i64* %126, align 8
  %128 = add nsw i64 %127, %124
  store i64 %128, i64* %126, align 8
  br label %129

129:                                              ; preds = %119, %80
  br label %130

130:                                              ; preds = %129
  %131 = load i32, i32* %10, align 4
  %132 = add i32 %131, 1
  store i32 %132, i32* %10, align 4
  %133 = load i32*, i32** %8, align 8
  %134 = getelementptr inbounds i32, i32* %133, i32 1
  store i32* %134, i32** %8, align 8
  br label %52

135:                                              ; preds = %52
  %136 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %137 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %136, i32 0, i32 2
  %138 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %137, i32 0, i32 1
  %139 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %138, i32 0, i32 0
  %140 = load i32*, i32** %139, align 8
  %141 = call i32 @free(i32* %140)
  %142 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %143 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %142, i32 0, i32 2
  %144 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %143, i32 0, i32 0
  %145 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %144, i32 0, i32 1
  store i32* null, i32** %145, align 8
  %146 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %147 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %146, i32 0, i32 2
  %148 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %147, i32 0, i32 0
  %149 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %148, i32 0, i32 0
  store i32 -1, i32* %149, align 8
  %150 = load i32, i32* %5, align 4
  %151 = icmp ne i32 %150, 0
  br i1 %151, label %152, label %159

152:                                              ; preds = %135
  %153 = load i32, i32* %5, align 4
  %154 = add i32 %153, 1
  %155 = load %struct.TYPE_26__*, %struct.TYPE_26__** %4, align 8
  %156 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %155, i32 0, i32 0
  %157 = load i32, i32* %156, align 8
  %158 = icmp eq i32 %154, %157
  br i1 %158, label %159, label %160

159:                                              ; preds = %152, %135
  br label %230

160:                                              ; preds = %152
  %161 = load i64, i64* @flag_all_blocks, align 8
  %162 = icmp ne i64 %161, 0
  br i1 %162, label %163, label %190

163:                                              ; preds = %160
  %164 = load %struct.TYPE_25__*, %struct.TYPE_25__** %6, align 8
  %165 = icmp ne %struct.TYPE_25__* %164, null
  br i1 %165, label %166, label %168

166:                                              ; preds = %163
  %167 = load %struct.TYPE_25__*, %struct.TYPE_25__** %6, align 8
  br label %178

168:                                              ; preds = %163
  %169 = load %struct.TYPE_26__*, %struct.TYPE_26__** %4, align 8
  %170 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %169, i32 0, i32 3
  %171 = load %struct.TYPE_22__*, %struct.TYPE_22__** %170, align 8
  %172 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %171, i32 0, i32 0
  %173 = load %struct.TYPE_25__*, %struct.TYPE_25__** %172, align 8
  %174 = load %struct.TYPE_26__*, %struct.TYPE_26__** %4, align 8
  %175 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %174, i32 0, i32 1
  %176 = load i64, i64* %175, align 8
  %177 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %173, i64 %176
  br label %178

178:                                              ; preds = %168, %166
  %179 = phi %struct.TYPE_25__* [ %167, %166 ], [ %177, %168 ]
  store %struct.TYPE_25__* %179, %struct.TYPE_25__** %12, align 8
  %180 = load %struct.TYPE_25__*, %struct.TYPE_25__** %12, align 8
  %181 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %180, i32 0, i32 1
  %182 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %181, i32 0, i32 1
  %183 = load %struct.TYPE_17__*, %struct.TYPE_17__** %182, align 8
  %184 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %185 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %184, i32 0, i32 1
  store %struct.TYPE_17__* %183, %struct.TYPE_17__** %185, align 8
  %186 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %187 = load %struct.TYPE_25__*, %struct.TYPE_25__** %12, align 8
  %188 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %187, i32 0, i32 1
  %189 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %188, i32 0, i32 1
  store %struct.TYPE_17__* %186, %struct.TYPE_17__** %189, align 8
  br label %229

190:                                              ; preds = %160
  %191 = load i64, i64* @flag_branches, align 8
  %192 = icmp ne i64 %191, 0
  br i1 %192, label %193, label %228

193:                                              ; preds = %190
  %194 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %195 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %194, i32 0, i32 0
  %196 = load %struct.TYPE_18__*, %struct.TYPE_18__** %195, align 8
  store %struct.TYPE_18__* %196, %struct.TYPE_18__** %13, align 8
  br label %197

197:                                              ; preds = %223, %193
  %198 = load %struct.TYPE_18__*, %struct.TYPE_18__** %13, align 8
  %199 = icmp ne %struct.TYPE_18__* %198, null
  br i1 %199, label %200, label %227

200:                                              ; preds = %197
  %201 = load %struct.TYPE_25__*, %struct.TYPE_25__** %6, align 8
  %202 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %201, i32 0, i32 1
  %203 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %202, i32 0, i32 0
  %204 = load %struct.TYPE_18__*, %struct.TYPE_18__** %203, align 8
  %205 = load %struct.TYPE_18__*, %struct.TYPE_18__** %13, align 8
  %206 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %205, i32 0, i32 1
  store %struct.TYPE_18__* %204, %struct.TYPE_18__** %206, align 8
  %207 = load %struct.TYPE_18__*, %struct.TYPE_18__** %13, align 8
  %208 = load %struct.TYPE_25__*, %struct.TYPE_25__** %6, align 8
  %209 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %208, i32 0, i32 1
  %210 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %209, i32 0, i32 0
  store %struct.TYPE_18__* %207, %struct.TYPE_18__** %210, align 8
  %211 = load %struct.TYPE_27__*, %struct.TYPE_27__** %3, align 8
  %212 = icmp ne %struct.TYPE_27__* %211, null
  br i1 %212, label %213, label %222

213:                                              ; preds = %200
  %214 = load %struct.TYPE_18__*, %struct.TYPE_18__** %13, align 8
  %215 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %214, i32 0, i32 0
  %216 = load i32, i32* %215, align 8
  %217 = icmp ne i32 %216, 0
  br i1 %217, label %222, label %218

218:                                              ; preds = %213
  %219 = load %struct.TYPE_27__*, %struct.TYPE_27__** %3, align 8
  %220 = load %struct.TYPE_18__*, %struct.TYPE_18__** %13, align 8
  %221 = call i32 @add_branch_counts(%struct.TYPE_27__* %219, %struct.TYPE_18__* %220)
  br label %222

222:                                              ; preds = %218, %213, %200
  br label %223

223:                                              ; preds = %222
  %224 = load %struct.TYPE_18__*, %struct.TYPE_18__** %13, align 8
  %225 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %224, i32 0, i32 2
  %226 = load %struct.TYPE_18__*, %struct.TYPE_18__** %225, align 8
  store %struct.TYPE_18__* %226, %struct.TYPE_18__** %13, align 8
  br label %197

227:                                              ; preds = %197
  br label %228

228:                                              ; preds = %227, %190
  br label %229

229:                                              ; preds = %228, %178
  br label %230

230:                                              ; preds = %229, %159
  br label %231

231:                                              ; preds = %230
  %232 = load i32, i32* %5, align 4
  %233 = add i32 %232, 1
  store i32 %233, i32* %5, align 4
  br label %14

234:                                              ; preds = %14
  %235 = load %struct.TYPE_25__*, %struct.TYPE_25__** %6, align 8
  %236 = icmp ne %struct.TYPE_25__* %235, null
  br i1 %236, label %244, label %237

237:                                              ; preds = %234
  %238 = load i32, i32* @stderr, align 4
  %239 = load i32, i32* @bbg_file_name, align 4
  %240 = load %struct.TYPE_26__*, %struct.TYPE_26__** %4, align 8
  %241 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %240, i32 0, i32 2
  %242 = load i32, i32* %241, align 8
  %243 = call i32 @fnotice(i32 %238, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i32 %239, i32 %242)
  br label %244

244:                                              ; preds = %237, %234
  ret void
}

declare dso_local i32 @free(i32*) #1

declare dso_local i32 @add_branch_counts(%struct.TYPE_27__*, %struct.TYPE_18__*) #1

declare dso_local i32 @fnotice(i32, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

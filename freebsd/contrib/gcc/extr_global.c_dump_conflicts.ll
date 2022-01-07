; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_global.c_dump_conflicts.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_global.c_dump_conflicts.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64, i32, i32, i32 }

@max_allocno = common dso_local global i32 0, align 4
@reg_renumber = common dso_local global i64* null, align 8
@allocno = common dso_local global %struct.TYPE_2__* null, align 8
@allocno_order = common dso_local global i64* null, align 8
@.str = private unnamed_addr constant [24 x i8] c";; %d regs to allocate:\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c" %d\00", align 1
@max_regno = common dso_local global i32 0, align 4
@reg_allocno = common dso_local global i64* null, align 8
@.str.2 = private unnamed_addr constant [4 x i8] c"+%d\00", align 1
@.str.3 = private unnamed_addr constant [6 x i8] c" (%d)\00", align 1
@.str.4 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.5 = private unnamed_addr constant [17 x i8] c";; %d conflicts:\00", align 1
@FIRST_PSEUDO_REGISTER = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [19 x i8] c";; %d preferences:\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*)* @dump_conflicts to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dump_conflicts(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i32* %0, i32** %2, align 8
  store i32 0, i32* %5, align 4
  store i32 0, i32* %3, align 4
  br label %8

8:                                                ; preds = %30, %1
  %9 = load i32, i32* %3, align 4
  %10 = load i32, i32* @max_allocno, align 4
  %11 = icmp slt i32 %9, %10
  br i1 %11, label %12, label %33

12:                                               ; preds = %8
  %13 = load i64*, i64** @reg_renumber, align 8
  %14 = load %struct.TYPE_2__*, %struct.TYPE_2__** @allocno, align 8
  %15 = load i64*, i64** @allocno_order, align 8
  %16 = load i32, i32* %3, align 4
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds i64, i64* %15, i64 %17
  %19 = load i64, i64* %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i64 %19
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = getelementptr inbounds i64, i64* %13, i64 %22
  %24 = load i64, i64* %23, align 8
  %25 = icmp sge i64 %24, 0
  br i1 %25, label %26, label %27

26:                                               ; preds = %12
  br label %30

27:                                               ; preds = %12
  %28 = load i32, i32* %5, align 4
  %29 = add nsw i32 %28, 1
  store i32 %29, i32* %5, align 4
  br label %30

30:                                               ; preds = %27, %26
  %31 = load i32, i32* %3, align 4
  %32 = add nsw i32 %31, 1
  store i32 %32, i32* %3, align 4
  br label %8

33:                                               ; preds = %8
  %34 = load i32*, i32** %2, align 8
  %35 = load i32, i32* %5, align 4
  %36 = call i32 (i32*, i8*, ...) @fprintf(i32* %34, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32 %35)
  store i32 0, i32* %3, align 4
  br label %37

37:                                               ; preds = %129, %33
  %38 = load i32, i32* %3, align 4
  %39 = load i32, i32* @max_allocno, align 4
  %40 = icmp slt i32 %38, %39
  br i1 %40, label %41, label %132

41:                                               ; preds = %37
  %42 = load i64*, i64** @reg_renumber, align 8
  %43 = load %struct.TYPE_2__*, %struct.TYPE_2__** @allocno, align 8
  %44 = load i64*, i64** @allocno_order, align 8
  %45 = load i32, i32* %3, align 4
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds i64, i64* %44, i64 %46
  %48 = load i64, i64* %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %43, i64 %48
  %50 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = getelementptr inbounds i64, i64* %42, i64 %51
  %53 = load i64, i64* %52, align 8
  %54 = icmp sge i64 %53, 0
  br i1 %54, label %55, label %56

55:                                               ; preds = %41
  br label %129

56:                                               ; preds = %41
  %57 = load i32*, i32** %2, align 8
  %58 = load %struct.TYPE_2__*, %struct.TYPE_2__** @allocno, align 8
  %59 = load i64*, i64** @allocno_order, align 8
  %60 = load i32, i32* %3, align 4
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds i64, i64* %59, i64 %61
  %63 = load i64, i64* %62, align 8
  %64 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %58, i64 %63
  %65 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %64, i32 0, i32 0
  %66 = load i64, i64* %65, align 8
  %67 = call i32 (i32*, i8*, ...) @fprintf(i32* %57, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i64 %66)
  store i32 0, i32* %6, align 4
  br label %68

68:                                               ; preds = %102, %56
  %69 = load i32, i32* %6, align 4
  %70 = load i32, i32* @max_regno, align 4
  %71 = icmp slt i32 %69, %70
  br i1 %71, label %72, label %105

72:                                               ; preds = %68
  %73 = load i64*, i64** @reg_allocno, align 8
  %74 = load i32, i32* %6, align 4
  %75 = sext i32 %74 to i64
  %76 = getelementptr inbounds i64, i64* %73, i64 %75
  %77 = load i64, i64* %76, align 8
  %78 = load i64*, i64** @allocno_order, align 8
  %79 = load i32, i32* %3, align 4
  %80 = sext i32 %79 to i64
  %81 = getelementptr inbounds i64, i64* %78, i64 %80
  %82 = load i64, i64* %81, align 8
  %83 = icmp eq i64 %77, %82
  br i1 %83, label %84, label %101

84:                                               ; preds = %72
  %85 = load i32, i32* %6, align 4
  %86 = sext i32 %85 to i64
  %87 = load %struct.TYPE_2__*, %struct.TYPE_2__** @allocno, align 8
  %88 = load i64*, i64** @allocno_order, align 8
  %89 = load i32, i32* %3, align 4
  %90 = sext i32 %89 to i64
  %91 = getelementptr inbounds i64, i64* %88, i64 %90
  %92 = load i64, i64* %91, align 8
  %93 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %87, i64 %92
  %94 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %93, i32 0, i32 0
  %95 = load i64, i64* %94, align 8
  %96 = icmp ne i64 %86, %95
  br i1 %96, label %97, label %101

97:                                               ; preds = %84
  %98 = load i32*, i32** %2, align 8
  %99 = load i32, i32* %6, align 4
  %100 = call i32 (i32*, i8*, ...) @fprintf(i32* %98, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), i32 %99)
  br label %101

101:                                              ; preds = %97, %84, %72
  br label %102

102:                                              ; preds = %101
  %103 = load i32, i32* %6, align 4
  %104 = add nsw i32 %103, 1
  store i32 %104, i32* %6, align 4
  br label %68

105:                                              ; preds = %68
  %106 = load %struct.TYPE_2__*, %struct.TYPE_2__** @allocno, align 8
  %107 = load i64*, i64** @allocno_order, align 8
  %108 = load i32, i32* %3, align 4
  %109 = sext i32 %108 to i64
  %110 = getelementptr inbounds i64, i64* %107, i64 %109
  %111 = load i64, i64* %110, align 8
  %112 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %106, i64 %111
  %113 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %112, i32 0, i32 1
  %114 = load i32, i32* %113, align 8
  %115 = icmp ne i32 %114, 1
  br i1 %115, label %116, label %128

116:                                              ; preds = %105
  %117 = load i32*, i32** %2, align 8
  %118 = load %struct.TYPE_2__*, %struct.TYPE_2__** @allocno, align 8
  %119 = load i64*, i64** @allocno_order, align 8
  %120 = load i32, i32* %3, align 4
  %121 = sext i32 %120 to i64
  %122 = getelementptr inbounds i64, i64* %119, i64 %121
  %123 = load i64, i64* %122, align 8
  %124 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %118, i64 %123
  %125 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %124, i32 0, i32 1
  %126 = load i32, i32* %125, align 8
  %127 = call i32 (i32*, i8*, ...) @fprintf(i32* %117, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0), i32 %126)
  br label %128

128:                                              ; preds = %116, %105
  br label %129

129:                                              ; preds = %128, %55
  %130 = load i32, i32* %3, align 4
  %131 = add nsw i32 %130, 1
  store i32 %131, i32* %3, align 4
  br label %37

132:                                              ; preds = %37
  %133 = load i32*, i32** %2, align 8
  %134 = call i32 (i32*, i8*, ...) @fprintf(i32* %133, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0))
  store i32 0, i32* %3, align 4
  br label %135

135:                                              ; preds = %253, %132
  %136 = load i32, i32* %3, align 4
  %137 = load i32, i32* @max_allocno, align 4
  %138 = icmp slt i32 %136, %137
  br i1 %138, label %139, label %256

139:                                              ; preds = %135
  %140 = load i32*, i32** %2, align 8
  %141 = load %struct.TYPE_2__*, %struct.TYPE_2__** @allocno, align 8
  %142 = load i32, i32* %3, align 4
  %143 = sext i32 %142 to i64
  %144 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %141, i64 %143
  %145 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %144, i32 0, i32 0
  %146 = load i64, i64* %145, align 8
  %147 = call i32 (i32*, i8*, ...) @fprintf(i32* %140, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.5, i64 0, i64 0), i64 %146)
  store i32 0, i32* %7, align 4
  br label %148

148:                                              ; preds = %167, %139
  %149 = load i32, i32* %7, align 4
  %150 = load i32, i32* @max_allocno, align 4
  %151 = icmp slt i32 %149, %150
  br i1 %151, label %152, label %170

152:                                              ; preds = %148
  %153 = load i32, i32* %7, align 4
  %154 = load i32, i32* %3, align 4
  %155 = call i64 @CONFLICTP(i32 %153, i32 %154)
  %156 = icmp ne i64 %155, 0
  br i1 %156, label %157, label %166

157:                                              ; preds = %152
  %158 = load i32*, i32** %2, align 8
  %159 = load %struct.TYPE_2__*, %struct.TYPE_2__** @allocno, align 8
  %160 = load i32, i32* %7, align 4
  %161 = sext i32 %160 to i64
  %162 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %159, i64 %161
  %163 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %162, i32 0, i32 0
  %164 = load i64, i64* %163, align 8
  %165 = call i32 (i32*, i8*, ...) @fprintf(i32* %158, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i64 %164)
  br label %166

166:                                              ; preds = %157, %152
  br label %167

167:                                              ; preds = %166
  %168 = load i32, i32* %7, align 4
  %169 = add nsw i32 %168, 1
  store i32 %169, i32* %7, align 4
  br label %148

170:                                              ; preds = %148
  store i32 0, i32* %7, align 4
  br label %171

171:                                              ; preds = %190, %170
  %172 = load i32, i32* %7, align 4
  %173 = load i32, i32* @FIRST_PSEUDO_REGISTER, align 4
  %174 = icmp slt i32 %172, %173
  br i1 %174, label %175, label %193

175:                                              ; preds = %171
  %176 = load %struct.TYPE_2__*, %struct.TYPE_2__** @allocno, align 8
  %177 = load i32, i32* %3, align 4
  %178 = sext i32 %177 to i64
  %179 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %176, i64 %178
  %180 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %179, i32 0, i32 3
  %181 = load i32, i32* %180, align 8
  %182 = load i32, i32* %7, align 4
  %183 = call i64 @TEST_HARD_REG_BIT(i32 %181, i32 %182)
  %184 = icmp ne i64 %183, 0
  br i1 %184, label %185, label %189

185:                                              ; preds = %175
  %186 = load i32*, i32** %2, align 8
  %187 = load i32, i32* %7, align 4
  %188 = call i32 (i32*, i8*, ...) @fprintf(i32* %186, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i32 %187)
  br label %189

189:                                              ; preds = %185, %175
  br label %190

190:                                              ; preds = %189
  %191 = load i32, i32* %7, align 4
  %192 = add nsw i32 %191, 1
  store i32 %192, i32* %7, align 4
  br label %171

193:                                              ; preds = %171
  %194 = load i32*, i32** %2, align 8
  %195 = call i32 (i32*, i8*, ...) @fprintf(i32* %194, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0))
  store i32 0, i32* %4, align 4
  store i32 0, i32* %7, align 4
  br label %196

196:                                              ; preds = %212, %193
  %197 = load i32, i32* %7, align 4
  %198 = load i32, i32* @FIRST_PSEUDO_REGISTER, align 4
  %199 = icmp slt i32 %197, %198
  br i1 %199, label %200, label %215

200:                                              ; preds = %196
  %201 = load %struct.TYPE_2__*, %struct.TYPE_2__** @allocno, align 8
  %202 = load i32, i32* %3, align 4
  %203 = sext i32 %202 to i64
  %204 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %201, i64 %203
  %205 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %204, i32 0, i32 2
  %206 = load i32, i32* %205, align 4
  %207 = load i32, i32* %7, align 4
  %208 = call i64 @TEST_HARD_REG_BIT(i32 %206, i32 %207)
  %209 = icmp ne i64 %208, 0
  br i1 %209, label %210, label %211

210:                                              ; preds = %200
  store i32 1, i32* %4, align 4
  br label %211

211:                                              ; preds = %210, %200
  br label %212

212:                                              ; preds = %211
  %213 = load i32, i32* %7, align 4
  %214 = add nsw i32 %213, 1
  store i32 %214, i32* %7, align 4
  br label %196

215:                                              ; preds = %196
  %216 = load i32, i32* %4, align 4
  %217 = icmp ne i32 %216, 0
  br i1 %217, label %219, label %218

218:                                              ; preds = %215
  br label %253

219:                                              ; preds = %215
  %220 = load i32*, i32** %2, align 8
  %221 = load %struct.TYPE_2__*, %struct.TYPE_2__** @allocno, align 8
  %222 = load i32, i32* %3, align 4
  %223 = sext i32 %222 to i64
  %224 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %221, i64 %223
  %225 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %224, i32 0, i32 0
  %226 = load i64, i64* %225, align 8
  %227 = call i32 (i32*, i8*, ...) @fprintf(i32* %220, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.6, i64 0, i64 0), i64 %226)
  store i32 0, i32* %7, align 4
  br label %228

228:                                              ; preds = %247, %219
  %229 = load i32, i32* %7, align 4
  %230 = load i32, i32* @FIRST_PSEUDO_REGISTER, align 4
  %231 = icmp slt i32 %229, %230
  br i1 %231, label %232, label %250

232:                                              ; preds = %228
  %233 = load %struct.TYPE_2__*, %struct.TYPE_2__** @allocno, align 8
  %234 = load i32, i32* %3, align 4
  %235 = sext i32 %234 to i64
  %236 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %233, i64 %235
  %237 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %236, i32 0, i32 2
  %238 = load i32, i32* %237, align 4
  %239 = load i32, i32* %7, align 4
  %240 = call i64 @TEST_HARD_REG_BIT(i32 %238, i32 %239)
  %241 = icmp ne i64 %240, 0
  br i1 %241, label %242, label %246

242:                                              ; preds = %232
  %243 = load i32*, i32** %2, align 8
  %244 = load i32, i32* %7, align 4
  %245 = call i32 (i32*, i8*, ...) @fprintf(i32* %243, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i32 %244)
  br label %246

246:                                              ; preds = %242, %232
  br label %247

247:                                              ; preds = %246
  %248 = load i32, i32* %7, align 4
  %249 = add nsw i32 %248, 1
  store i32 %249, i32* %7, align 4
  br label %228

250:                                              ; preds = %228
  %251 = load i32*, i32** %2, align 8
  %252 = call i32 (i32*, i8*, ...) @fprintf(i32* %251, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0))
  br label %253

253:                                              ; preds = %250, %218
  %254 = load i32, i32* %3, align 4
  %255 = add nsw i32 %254, 1
  store i32 %255, i32* %3, align 4
  br label %135

256:                                              ; preds = %135
  %257 = load i32*, i32** %2, align 8
  %258 = call i32 (i32*, i8*, ...) @fprintf(i32* %257, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0))
  ret void
}

declare dso_local i32 @fprintf(i32*, i8*, ...) #1

declare dso_local i64 @CONFLICTP(i32, i32) #1

declare dso_local i64 @TEST_HARD_REG_BIT(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

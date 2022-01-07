; ModuleID = '/home/carl/AnghaBench/freebsd/cddl/contrib/opensolaris/cmd/zinject/extr_translate.c_calculate_range.c'
source_filename = "/home/carl/AnghaBench/freebsd/cddl/contrib/opensolaris/cmd/zinject/extr_translate.c_calculate_range.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32, i64, i32, i32 }
%struct.TYPE_8__ = type { i32, i32, i32 }

@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [71 x i8] c"invalid range '%s': must be a numeric range of the form 'start[,end]'\0A\00", align 1
@.str.1 = private unnamed_addr constant [48 x i8] c"range cannot be specified when type is 'dnode'\0A\00", align 1
@DMU_OST_ANY = common dso_local global i32 0, align 4
@B_TRUE = common dso_local global i32 0, align 4
@FTAG = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [30 x i8] c"cannot open dataset '%s': %s\0A\00", align 1
@.str.3 = private unnamed_addr constant [38 x i8] c"failed to hold dnode for object %llu\0A\00", align 1
@.str.4 = private unnamed_addr constant [16 x i8] c"data shift: %d\0A\00", align 1
@.str.5 = private unnamed_addr constant [16 x i8] c" ind shift: %d\0A\00", align 1
@.str.6 = private unnamed_addr constant [35 x i8] c"level 0 blkid range: [%llu, %llu]\0A\00", align 1
@.str.7 = private unnamed_addr constant [43 x i8] c"level %d exceeds max level of object (%d)\0A\00", align 1
@SPA_BLKPTRSHIFT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i32, i32, i8*, %struct.TYPE_7__*)* @calculate_range to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @calculate_range(i8* %0, i32 %1, i32 %2, i8* %3, %struct.TYPE_7__* %4) #0 {
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca %struct.TYPE_7__*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca %struct.TYPE_8__*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i8*, align 8
  %16 = alloca i32, align 4
  store i8* %0, i8** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i8* %3, i8** %9, align 8
  store %struct.TYPE_7__* %4, %struct.TYPE_7__** %10, align 8
  store i32* null, i32** %11, align 8
  store %struct.TYPE_8__* null, %struct.TYPE_8__** %12, align 8
  store i32 -1, i32* %14, align 4
  %17 = load i8*, i8** %9, align 8
  %18 = icmp eq i8* %17, null
  br i1 %18, label %19, label %24

19:                                               ; preds = %5
  %20 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %21 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %20, i32 0, i32 0
  store i32 0, i32* %21, align 8
  %22 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %23 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %22, i32 0, i32 1
  store i64 -1, i64* %23, align 8
  br label %65

24:                                               ; preds = %5
  %25 = load i8*, i8** %9, align 8
  %26 = call i8* @strtoull(i8* %25, i8** %15, i32 10)
  %27 = ptrtoint i8* %26 to i32
  %28 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %29 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %28, i32 0, i32 0
  store i32 %27, i32* %29, align 8
  %30 = load i8*, i8** %15, align 8
  %31 = load i8, i8* %30, align 1
  %32 = sext i8 %31 to i32
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %34, label %42

34:                                               ; preds = %24
  %35 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %36 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = add nsw i32 %37, 1
  %39 = sext i32 %38 to i64
  %40 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %41 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %40, i32 0, i32 1
  store i64 %39, i64* %41, align 8
  br label %55

42:                                               ; preds = %24
  %43 = load i8*, i8** %15, align 8
  %44 = load i8, i8* %43, align 1
  %45 = sext i8 %44 to i32
  %46 = icmp eq i32 %45, 44
  br i1 %46, label %47, label %54

47:                                               ; preds = %42
  %48 = load i8*, i8** %15, align 8
  %49 = getelementptr inbounds i8, i8* %48, i64 1
  %50 = call i8* @strtoull(i8* %49, i8** %15, i32 10)
  %51 = ptrtoint i8* %50 to i64
  %52 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %53 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %52, i32 0, i32 1
  store i64 %51, i64* %53, align 8
  br label %54

54:                                               ; preds = %47, %42
  br label %55

55:                                               ; preds = %54, %34
  %56 = load i8*, i8** %15, align 8
  %57 = load i8, i8* %56, align 1
  %58 = sext i8 %57 to i32
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %64

60:                                               ; preds = %55
  %61 = load i32, i32* @stderr, align 4
  %62 = load i8*, i8** %9, align 8
  %63 = call i32 (i32, i8*, ...) @fprintf(i32 %61, i8* getelementptr inbounds ([71 x i8], [71 x i8]* @.str, i64 0, i64 0), i8* %62)
  br label %227

64:                                               ; preds = %55
  br label %65

65:                                               ; preds = %64, %19
  %66 = load i32, i32* %7, align 4
  switch i32 %66, label %92 [
    i32 129, label %67
    i32 128, label %68
  ]

67:                                               ; preds = %65
  br label %92

68:                                               ; preds = %65
  %69 = load i8*, i8** %9, align 8
  %70 = icmp ne i8* %69, null
  br i1 %70, label %71, label %74

71:                                               ; preds = %68
  %72 = load i32, i32* @stderr, align 4
  %73 = call i32 (i32, i8*, ...) @fprintf(i32 %72, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.1, i64 0, i64 0))
  br label %227

74:                                               ; preds = %68
  %75 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %76 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %75, i32 0, i32 2
  %77 = load i32, i32* %76, align 8
  %78 = sext i32 %77 to i64
  %79 = mul i64 %78, 4
  %80 = trunc i64 %79 to i32
  %81 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %82 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %81, i32 0, i32 0
  store i32 %80, i32* %82, align 8
  %83 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %84 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 8
  %86 = sext i32 %85 to i64
  %87 = add i64 %86, 4
  %88 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %89 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %88, i32 0, i32 1
  store i64 %87, i64* %89, align 8
  %90 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %91 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %90, i32 0, i32 2
  store i32 0, i32* %91, align 8
  br label %92

92:                                               ; preds = %65, %74, %67
  %93 = load i8*, i8** %6, align 8
  %94 = load i32, i32* @DMU_OST_ANY, align 4
  %95 = load i32, i32* @B_TRUE, align 4
  %96 = load i32, i32* @FTAG, align 4
  %97 = call i32 @dmu_objset_own(i8* %93, i32 %94, i32 %95, i32 %96, i32** %11)
  store i32 %97, i32* %13, align 4
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %99, label %105

99:                                               ; preds = %92
  %100 = load i32, i32* @stderr, align 4
  %101 = load i8*, i8** %6, align 8
  %102 = load i32, i32* %13, align 4
  %103 = call i8* @strerror(i32 %102)
  %104 = call i32 (i32, i8*, ...) @fprintf(i32 %100, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.2, i64 0, i64 0), i8* %101, i8* %103)
  br label %227

105:                                              ; preds = %92
  %106 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %107 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %106, i32 0, i32 2
  %108 = load i32, i32* %107, align 8
  %109 = icmp eq i32 %108, 0
  br i1 %109, label %110, label %113

110:                                              ; preds = %105
  %111 = load i32*, i32** %11, align 8
  %112 = call %struct.TYPE_8__* @DMU_META_DNODE(i32* %111)
  store %struct.TYPE_8__* %112, %struct.TYPE_8__** %12, align 8
  br label %129

113:                                              ; preds = %105
  %114 = load i32*, i32** %11, align 8
  %115 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %116 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %115, i32 0, i32 2
  %117 = load i32, i32* %116, align 8
  %118 = load i32, i32* @FTAG, align 4
  %119 = call i32 @dnode_hold(i32* %114, i32 %117, i32 %118, %struct.TYPE_8__** %12)
  store i32 %119, i32* %13, align 4
  %120 = load i32, i32* %13, align 4
  %121 = icmp ne i32 %120, 0
  br i1 %121, label %122, label %128

122:                                              ; preds = %113
  %123 = load i32, i32* @stderr, align 4
  %124 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %125 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %124, i32 0, i32 2
  %126 = load i32, i32* %125, align 8
  %127 = call i32 (i32, i8*, ...) @fprintf(i32 %123, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.3, i64 0, i64 0), i32 %126)
  br label %227

128:                                              ; preds = %113
  br label %129

129:                                              ; preds = %128, %110
  %130 = load %struct.TYPE_8__*, %struct.TYPE_8__** %12, align 8
  %131 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %130, i32 0, i32 0
  %132 = load i32, i32* %131, align 4
  %133 = call i32 (i8*, i32, ...) @ziprintf(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.4, i64 0, i64 0), i32 %132)
  %134 = load %struct.TYPE_8__*, %struct.TYPE_8__** %12, align 8
  %135 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %134, i32 0, i32 1
  %136 = load i32, i32* %135, align 4
  %137 = call i32 (i8*, i32, ...) @ziprintf(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.5, i64 0, i64 0), i32 %136)
  %138 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %139 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %138, i32 0, i32 0
  %140 = load i32, i32* %139, align 8
  %141 = icmp ne i32 %140, 0
  br i1 %141, label %147, label %142

142:                                              ; preds = %129
  %143 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %144 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %143, i32 0, i32 1
  %145 = load i64, i64* %144, align 8
  %146 = icmp ne i64 %145, -1
  br i1 %146, label %147, label %163

147:                                              ; preds = %142, %129
  %148 = load %struct.TYPE_8__*, %struct.TYPE_8__** %12, align 8
  %149 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %148, i32 0, i32 0
  %150 = load i32, i32* %149, align 4
  %151 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %152 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %151, i32 0, i32 0
  %153 = load i32, i32* %152, align 8
  %154 = ashr i32 %153, %150
  store i32 %154, i32* %152, align 8
  %155 = load %struct.TYPE_8__*, %struct.TYPE_8__** %12, align 8
  %156 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %155, i32 0, i32 0
  %157 = load i32, i32* %156, align 4
  %158 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %159 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %158, i32 0, i32 1
  %160 = load i64, i64* %159, align 8
  %161 = zext i32 %157 to i64
  %162 = lshr i64 %160, %161
  store i64 %162, i64* %159, align 8
  br label %163

163:                                              ; preds = %147, %142
  %164 = load i32, i32* %8, align 4
  %165 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %166 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %165, i32 0, i32 3
  store i32 %164, i32* %166, align 4
  %167 = load i32, i32* %8, align 4
  %168 = icmp sgt i32 %167, 0
  br i1 %168, label %169, label %226

169:                                              ; preds = %163
  %170 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %171 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %170, i32 0, i32 0
  %172 = load i32, i32* %171, align 8
  %173 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %174 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %173, i32 0, i32 1
  %175 = load i64, i64* %174, align 8
  %176 = call i32 (i8*, i32, ...) @ziprintf(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.6, i64 0, i64 0), i32 %172, i64 %175)
  %177 = load i32, i32* %8, align 4
  %178 = load %struct.TYPE_8__*, %struct.TYPE_8__** %12, align 8
  %179 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %178, i32 0, i32 2
  %180 = load i32, i32* %179, align 4
  %181 = icmp sge i32 %177, %180
  br i1 %181, label %182, label %190

182:                                              ; preds = %169
  %183 = load i32, i32* @stderr, align 4
  %184 = load i32, i32* %8, align 4
  %185 = load %struct.TYPE_8__*, %struct.TYPE_8__** %12, align 8
  %186 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %185, i32 0, i32 2
  %187 = load i32, i32* %186, align 4
  %188 = sub nsw i32 %187, 1
  %189 = call i32 (i32, i8*, ...) @fprintf(i32 %183, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.7, i64 0, i64 0), i32 %184, i32 %188)
  br label %227

190:                                              ; preds = %169
  %191 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %192 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %191, i32 0, i32 0
  %193 = load i32, i32* %192, align 8
  %194 = icmp ne i32 %193, 0
  br i1 %194, label %200, label %195

195:                                              ; preds = %190
  %196 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %197 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %196, i32 0, i32 1
  %198 = load i64, i64* %197, align 8
  %199 = icmp ne i64 %198, 0
  br i1 %199, label %200, label %225

200:                                              ; preds = %195, %190
  %201 = load %struct.TYPE_8__*, %struct.TYPE_8__** %12, align 8
  %202 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %201, i32 0, i32 1
  %203 = load i32, i32* %202, align 4
  %204 = load i32, i32* @SPA_BLKPTRSHIFT, align 4
  %205 = sub nsw i32 %203, %204
  store i32 %205, i32* %16, align 4
  br label %206

206:                                              ; preds = %221, %200
  %207 = load i32, i32* %8, align 4
  %208 = icmp sgt i32 %207, 0
  br i1 %208, label %209, label %224

209:                                              ; preds = %206
  %210 = load i32, i32* %16, align 4
  %211 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %212 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %211, i32 0, i32 0
  %213 = load i32, i32* %212, align 8
  %214 = ashr i32 %213, %210
  store i32 %214, i32* %212, align 8
  %215 = load i32, i32* %16, align 4
  %216 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %217 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %216, i32 0, i32 1
  %218 = load i64, i64* %217, align 8
  %219 = zext i32 %215 to i64
  %220 = lshr i64 %218, %219
  store i64 %220, i64* %217, align 8
  br label %221

221:                                              ; preds = %209
  %222 = load i32, i32* %8, align 4
  %223 = add nsw i32 %222, -1
  store i32 %223, i32* %8, align 4
  br label %206

224:                                              ; preds = %206
  br label %225

225:                                              ; preds = %224, %195
  br label %226

226:                                              ; preds = %225, %163
  store i32 0, i32* %14, align 4
  br label %227

227:                                              ; preds = %226, %182, %122, %99, %71, %60
  %228 = load %struct.TYPE_8__*, %struct.TYPE_8__** %12, align 8
  %229 = icmp ne %struct.TYPE_8__* %228, null
  br i1 %229, label %230, label %240

230:                                              ; preds = %227
  %231 = load %struct.TYPE_8__*, %struct.TYPE_8__** %12, align 8
  %232 = load i32*, i32** %11, align 8
  %233 = call %struct.TYPE_8__* @DMU_META_DNODE(i32* %232)
  %234 = icmp ne %struct.TYPE_8__* %231, %233
  br i1 %234, label %235, label %239

235:                                              ; preds = %230
  %236 = load %struct.TYPE_8__*, %struct.TYPE_8__** %12, align 8
  %237 = load i32, i32* @FTAG, align 4
  %238 = call i32 @dnode_rele(%struct.TYPE_8__* %236, i32 %237)
  br label %239

239:                                              ; preds = %235, %230
  br label %240

240:                                              ; preds = %239, %227
  %241 = load i32*, i32** %11, align 8
  %242 = icmp ne i32* %241, null
  br i1 %242, label %243, label %247

243:                                              ; preds = %240
  %244 = load i32*, i32** %11, align 8
  %245 = load i32, i32* @FTAG, align 4
  %246 = call i32 @dmu_objset_disown(i32* %244, i32 %245)
  br label %247

247:                                              ; preds = %243, %240
  %248 = load i32, i32* %14, align 4
  ret i32 %248
}

declare dso_local i8* @strtoull(i8*, i8**, i32) #1

declare dso_local i32 @fprintf(i32, i8*, ...) #1

declare dso_local i32 @dmu_objset_own(i8*, i32, i32, i32, i32**) #1

declare dso_local i8* @strerror(i32) #1

declare dso_local %struct.TYPE_8__* @DMU_META_DNODE(i32*) #1

declare dso_local i32 @dnode_hold(i32*, i32, i32, %struct.TYPE_8__**) #1

declare dso_local i32 @ziprintf(i8*, i32, ...) #1

declare dso_local i32 @dnode_rele(%struct.TYPE_8__*, i32) #1

declare dso_local i32 @dmu_objset_disown(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

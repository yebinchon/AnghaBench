; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/elftoolchain/readelf/extr_readelf.c_dump_gnu_hash.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/elftoolchain/readelf/extr_readelf.c_dump_gnu_hash.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.readelf = type { i64, i64, %struct.section* }
%struct.section = type { i64, i32 }
%struct.TYPE_3__ = type { i32, i32* }

@.str = private unnamed_addr constant [23 x i8] c"elf_getdata failed: %s\00", align 1
@.str.1 = private unnamed_addr constant [28 x i8] c".gnu.hash section too small\00", align 1
@.str.2 = private unnamed_addr constant [50 x i8] c"Malformed .gnu.hash section (symndx out of range)\00", align 1
@ELFCLASS32 = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [28 x i8] c"Malformed .gnu.hash section\00", align 1
@EXIT_FAILURE = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [14 x i8] c"calloc failed\00", align 1
@.str.5 = private unnamed_addr constant [57 x i8] c"Histogram for bucket list length (total of %u buckets):\0A\00", align 1
@.str.6 = private unnamed_addr constant [38 x i8] c" Length\09Number\09\09%% of total\09Coverage\0A\00", align 1
@.str.7 = private unnamed_addr constant [29 x i8] c"%7u\09%-10u\09(%5.1f%%)\09%5.1f%%\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.readelf*, %struct.section*)* @dump_gnu_hash to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dump_gnu_hash(%struct.readelf* %0, %struct.section* %1) #0 {
  %3 = alloca %struct.readelf*, align 8
  %4 = alloca %struct.section*, align 8
  %5 = alloca %struct.section*, align 8
  %6 = alloca %struct.TYPE_3__*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  store %struct.readelf* %0, %struct.readelf** %3, align 8
  store %struct.section* %1, %struct.section** %4, align 8
  %22 = call i32 (...) @elf_errno()
  %23 = load %struct.section*, %struct.section** %4, align 8
  %24 = getelementptr inbounds %struct.section, %struct.section* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 8
  %26 = call %struct.TYPE_3__* @elf_getdata(i32 %25, i32* null)
  store %struct.TYPE_3__* %26, %struct.TYPE_3__** %6, align 8
  %27 = icmp eq %struct.TYPE_3__* %26, null
  br i1 %27, label %28, label %37

28:                                               ; preds = %2
  %29 = call i32 (...) @elf_errno()
  store i32 %29, i32* %18, align 4
  %30 = load i32, i32* %18, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %36

32:                                               ; preds = %28
  %33 = load i32, i32* %18, align 4
  %34 = call i32 @elf_errmsg(i32 %33)
  %35 = call i32 (i8*, ...) @warnx(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 %34)
  br label %36

36:                                               ; preds = %32, %28
  br label %273

37:                                               ; preds = %2
  %38 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %39 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = sext i32 %40 to i64
  %42 = icmp ult i64 %41, 16
  br i1 %42, label %43, label %45

43:                                               ; preds = %37
  %44 = call i32 (i8*, ...) @warnx(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0))
  br label %273

45:                                               ; preds = %37
  %46 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %47 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %46, i32 0, i32 1
  %48 = load i32*, i32** %47, align 8
  store i32* %48, i32** %7, align 8
  %49 = load i32*, i32** %7, align 8
  %50 = getelementptr inbounds i32, i32* %49, i64 0
  %51 = load i32, i32* %50, align 4
  store i32 %51, i32* %10, align 4
  %52 = load i32*, i32** %7, align 8
  %53 = getelementptr inbounds i32, i32* %52, i64 1
  %54 = load i32, i32* %53, align 4
  store i32 %54, i32* %12, align 4
  %55 = load i32*, i32** %7, align 8
  %56 = getelementptr inbounds i32, i32* %55, i64 2
  %57 = load i32, i32* %56, align 4
  store i32 %57, i32* %13, align 4
  %58 = load i32*, i32** %7, align 8
  %59 = getelementptr inbounds i32, i32* %58, i64 4
  store i32* %59, i32** %7, align 8
  %60 = load %struct.section*, %struct.section** %4, align 8
  %61 = getelementptr inbounds %struct.section, %struct.section* %60, i32 0, i32 0
  %62 = load i64, i64* %61, align 8
  %63 = load %struct.readelf*, %struct.readelf** %3, align 8
  %64 = getelementptr inbounds %struct.readelf, %struct.readelf* %63, i32 0, i32 0
  %65 = load i64, i64* %64, align 8
  %66 = icmp uge i64 %62, %65
  br i1 %66, label %67, label %68

67:                                               ; preds = %45
  br label %273

68:                                               ; preds = %45
  %69 = load %struct.readelf*, %struct.readelf** %3, align 8
  %70 = getelementptr inbounds %struct.readelf, %struct.readelf* %69, i32 0, i32 2
  %71 = load %struct.section*, %struct.section** %70, align 8
  %72 = load %struct.section*, %struct.section** %4, align 8
  %73 = getelementptr inbounds %struct.section, %struct.section* %72, i32 0, i32 0
  %74 = load i64, i64* %73, align 8
  %75 = getelementptr inbounds %struct.section, %struct.section* %71, i64 %74
  store %struct.section* %75, %struct.section** %5, align 8
  %76 = load %struct.section*, %struct.section** %5, align 8
  %77 = call i32 @get_ent_count(%struct.section* %76, i32* %19)
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %80, label %79

79:                                               ; preds = %68
  br label %273

80:                                               ; preds = %68
  %81 = load i32, i32* %12, align 4
  %82 = load i32, i32* %19, align 4
  %83 = icmp sge i32 %81, %82
  br i1 %83, label %84, label %86

84:                                               ; preds = %80
  %85 = call i32 (i8*, ...) @warnx(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.2, i64 0, i64 0))
  br label %273

86:                                               ; preds = %80
  %87 = load i32, i32* %19, align 4
  %88 = load i32, i32* %12, align 4
  %89 = sub nsw i32 %87, %88
  store i32 %89, i32* %11, align 4
  %90 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %91 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 8
  %93 = sext i32 %92 to i64
  %94 = load i32, i32* %13, align 4
  %95 = sext i32 %94 to i64
  %96 = load %struct.readelf*, %struct.readelf** %3, align 8
  %97 = getelementptr inbounds %struct.readelf, %struct.readelf* %96, i32 0, i32 1
  %98 = load i64, i64* %97, align 8
  %99 = load i64, i64* @ELFCLASS32, align 8
  %100 = icmp eq i64 %98, %99
  %101 = zext i1 %100 to i64
  %102 = select i1 %100, i64 4, i64 4
  %103 = mul i64 %95, %102
  %104 = add i64 16, %103
  %105 = load i32, i32* %10, align 4
  %106 = load i32, i32* %11, align 4
  %107 = add nsw i32 %105, %106
  %108 = sext i32 %107 to i64
  %109 = mul i64 %108, 4
  %110 = add i64 %104, %109
  %111 = icmp ne i64 %93, %110
  br i1 %111, label %112, label %114

112:                                              ; preds = %86
  %113 = call i32 (i8*, ...) @warnx(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.3, i64 0, i64 0))
  br label %273

114:                                              ; preds = %86
  %115 = load i32*, i32** %7, align 8
  %116 = load %struct.readelf*, %struct.readelf** %3, align 8
  %117 = getelementptr inbounds %struct.readelf, %struct.readelf* %116, i32 0, i32 1
  %118 = load i64, i64* %117, align 8
  %119 = load i64, i64* @ELFCLASS32, align 8
  %120 = icmp eq i64 %118, %119
  br i1 %120, label %121, label %123

121:                                              ; preds = %114
  %122 = load i32, i32* %13, align 4
  br label %126

123:                                              ; preds = %114
  %124 = load i32, i32* %13, align 4
  %125 = mul nsw i32 %124, 2
  br label %126

126:                                              ; preds = %123, %121
  %127 = phi i32 [ %122, %121 ], [ %125, %123 ]
  %128 = sext i32 %127 to i64
  %129 = getelementptr inbounds i32, i32* %115, i64 %128
  store i32* %129, i32** %8, align 8
  %130 = load i32*, i32** %8, align 8
  %131 = load i32, i32* %10, align 4
  %132 = sext i32 %131 to i64
  %133 = getelementptr inbounds i32, i32* %130, i64 %132
  store i32* %133, i32** %9, align 8
  store i32 0, i32* %16, align 4
  %134 = load i32, i32* %10, align 4
  %135 = call i32* @calloc(i32 %134, i32 4)
  store i32* %135, i32** %14, align 8
  %136 = icmp eq i32* %135, null
  br i1 %136, label %137, label %140

137:                                              ; preds = %126
  %138 = load i32, i32* @EXIT_FAILURE, align 4
  %139 = call i32 @errx(i32 %138, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.4, i64 0, i64 0))
  br label %140

140:                                              ; preds = %137, %126
  store i32 0, i32* %20, align 4
  br label %141

141:                                              ; preds = %193, %140
  %142 = load i32, i32* %20, align 4
  %143 = load i32, i32* %10, align 4
  %144 = icmp slt i32 %142, %143
  br i1 %144, label %145, label %196

145:                                              ; preds = %141
  %146 = load i32*, i32** %8, align 8
  %147 = load i32, i32* %20, align 4
  %148 = sext i32 %147 to i64
  %149 = getelementptr inbounds i32, i32* %146, i64 %148
  %150 = load i32, i32* %149, align 4
  store i32 %150, i32* %21, align 4
  br label %151

151:                                              ; preds = %189, %145
  %152 = load i32, i32* %21, align 4
  %153 = icmp sgt i32 %152, 0
  br i1 %153, label %154, label %160

154:                                              ; preds = %151
  %155 = load i32, i32* %21, align 4
  %156 = load i32, i32* %12, align 4
  %157 = sub nsw i32 %155, %156
  %158 = load i32, i32* %11, align 4
  %159 = icmp slt i32 %157, %158
  br label %160

160:                                              ; preds = %154, %151
  %161 = phi i1 [ false, %151 ], [ %159, %154 ]
  br i1 %161, label %162, label %192

162:                                              ; preds = %160
  %163 = load i32*, i32** %14, align 8
  %164 = load i32, i32* %20, align 4
  %165 = sext i32 %164 to i64
  %166 = getelementptr inbounds i32, i32* %163, i64 %165
  %167 = load i32, i32* %166, align 4
  %168 = add nsw i32 %167, 1
  store i32 %168, i32* %166, align 4
  %169 = load i32, i32* %16, align 4
  %170 = icmp sgt i32 %168, %169
  br i1 %170, label %171, label %177

171:                                              ; preds = %162
  %172 = load i32*, i32** %14, align 8
  %173 = load i32, i32* %20, align 4
  %174 = sext i32 %173 to i64
  %175 = getelementptr inbounds i32, i32* %172, i64 %174
  %176 = load i32, i32* %175, align 4
  store i32 %176, i32* %16, align 4
  br label %177

177:                                              ; preds = %171, %162
  %178 = load i32*, i32** %9, align 8
  %179 = load i32, i32* %21, align 4
  %180 = load i32, i32* %12, align 4
  %181 = sub nsw i32 %179, %180
  %182 = sext i32 %181 to i64
  %183 = getelementptr inbounds i32, i32* %178, i64 %182
  %184 = load i32, i32* %183, align 4
  %185 = and i32 %184, 1
  %186 = icmp ne i32 %185, 0
  br i1 %186, label %187, label %188

187:                                              ; preds = %177
  br label %192

188:                                              ; preds = %177
  br label %189

189:                                              ; preds = %188
  %190 = load i32, i32* %21, align 4
  %191 = add nsw i32 %190, 1
  store i32 %191, i32* %21, align 4
  br label %151

192:                                              ; preds = %187, %160
  br label %193

193:                                              ; preds = %192
  %194 = load i32, i32* %20, align 4
  %195 = add nsw i32 %194, 1
  store i32 %195, i32* %20, align 4
  br label %141

196:                                              ; preds = %141
  %197 = load i32, i32* %16, align 4
  %198 = add nsw i32 %197, 1
  %199 = call i32* @calloc(i32 %198, i32 4)
  store i32* %199, i32** %15, align 8
  %200 = icmp eq i32* %199, null
  br i1 %200, label %201, label %204

201:                                              ; preds = %196
  %202 = load i32, i32* @EXIT_FAILURE, align 4
  %203 = call i32 @errx(i32 %202, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.4, i64 0, i64 0))
  br label %204

204:                                              ; preds = %201, %196
  store i32 0, i32* %20, align 4
  br label %205

205:                                              ; preds = %220, %204
  %206 = load i32, i32* %20, align 4
  %207 = load i32, i32* %10, align 4
  %208 = icmp slt i32 %206, %207
  br i1 %208, label %209, label %223

209:                                              ; preds = %205
  %210 = load i32*, i32** %15, align 8
  %211 = load i32*, i32** %14, align 8
  %212 = load i32, i32* %20, align 4
  %213 = sext i32 %212 to i64
  %214 = getelementptr inbounds i32, i32* %211, i64 %213
  %215 = load i32, i32* %214, align 4
  %216 = sext i32 %215 to i64
  %217 = getelementptr inbounds i32, i32* %210, i64 %216
  %218 = load i32, i32* %217, align 4
  %219 = add nsw i32 %218, 1
  store i32 %219, i32* %217, align 4
  br label %220

220:                                              ; preds = %209
  %221 = load i32, i32* %20, align 4
  %222 = add nsw i32 %221, 1
  store i32 %222, i32* %20, align 4
  br label %205

223:                                              ; preds = %205
  %224 = load i32, i32* %10, align 4
  %225 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.5, i64 0, i64 0), i32 %224)
  %226 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.6, i64 0, i64 0))
  store i32 0, i32* %17, align 4
  store i32 0, i32* %20, align 4
  br label %227

227:                                              ; preds = %265, %223
  %228 = load i32, i32* %20, align 4
  %229 = load i32, i32* %16, align 4
  %230 = icmp sle i32 %228, %229
  br i1 %230, label %231, label %268

231:                                              ; preds = %227
  %232 = load i32*, i32** %15, align 8
  %233 = load i32, i32* %20, align 4
  %234 = sext i32 %233 to i64
  %235 = getelementptr inbounds i32, i32* %232, i64 %234
  %236 = load i32, i32* %235, align 4
  %237 = load i32, i32* %20, align 4
  %238 = mul nsw i32 %236, %237
  %239 = load i32, i32* %17, align 4
  %240 = add nsw i32 %239, %238
  store i32 %240, i32* %17, align 4
  %241 = load i32, i32* %20, align 4
  %242 = load i32*, i32** %15, align 8
  %243 = load i32, i32* %20, align 4
  %244 = sext i32 %243 to i64
  %245 = getelementptr inbounds i32, i32* %242, i64 %244
  %246 = load i32, i32* %245, align 4
  %247 = load i32*, i32** %15, align 8
  %248 = load i32, i32* %20, align 4
  %249 = sext i32 %248 to i64
  %250 = getelementptr inbounds i32, i32* %247, i64 %249
  %251 = load i32, i32* %250, align 4
  %252 = sitofp i32 %251 to double
  %253 = fmul double %252, 1.000000e+02
  %254 = load i32, i32* %10, align 4
  %255 = sitofp i32 %254 to double
  %256 = fdiv double %253, %255
  %257 = load i32, i32* %17, align 4
  %258 = sitofp i32 %257 to double
  %259 = fmul double %258, 1.000000e+02
  %260 = load i32, i32* %11, align 4
  %261 = sub nsw i32 %260, 1
  %262 = sitofp i32 %261 to double
  %263 = fdiv double %259, %262
  %264 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.7, i64 0, i64 0), i32 %241, i32 %246, double %256, double %263)
  br label %265

265:                                              ; preds = %231
  %266 = load i32, i32* %20, align 4
  %267 = add nsw i32 %266, 1
  store i32 %267, i32* %20, align 4
  br label %227

268:                                              ; preds = %227
  %269 = load i32*, i32** %15, align 8
  %270 = call i32 @free(i32* %269)
  %271 = load i32*, i32** %14, align 8
  %272 = call i32 @free(i32* %271)
  br label %273

273:                                              ; preds = %268, %112, %84, %79, %67, %43, %36
  ret void
}

declare dso_local i32 @elf_errno(...) #1

declare dso_local %struct.TYPE_3__* @elf_getdata(i32, i32*) #1

declare dso_local i32 @warnx(i8*, ...) #1

declare dso_local i32 @elf_errmsg(i32) #1

declare dso_local i32 @get_ent_count(%struct.section*, i32*) #1

declare dso_local i32* @calloc(i32, i32) #1

declare dso_local i32 @errx(i32, i8*) #1

declare dso_local i32 @printf(i8*, ...) #1

declare dso_local i32 @free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

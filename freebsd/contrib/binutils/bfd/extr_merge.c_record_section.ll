; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/bfd/extr_merge.c_record_section.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/bfd/extr_merge.c_record_section.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sec_merge_info = type { %struct.sec_merge_sec_info*, i32 }
%struct.sec_merge_sec_info = type { i8*, i32**, %struct.sec_merge_sec_info*, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i32, i32, i32 }
%struct.sec_merge_hash_entry = type { i32 }

@FALSE = common dso_local global i64 0, align 8
@SEC_STRINGS = common dso_local global i32 0, align 4
@TRUE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.sec_merge_info*, %struct.sec_merge_sec_info*)* @record_section to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @record_section(%struct.sec_merge_info* %0, %struct.sec_merge_sec_info* %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca %struct.sec_merge_info*, align 8
  %5 = alloca %struct.sec_merge_sec_info*, align 8
  %6 = alloca %struct.TYPE_2__*, align 8
  %7 = alloca %struct.sec_merge_hash_entry*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.sec_merge_info* %0, %struct.sec_merge_info** %4, align 8
  store %struct.sec_merge_sec_info* %1, %struct.sec_merge_sec_info** %5, align 8
  %15 = load %struct.sec_merge_sec_info*, %struct.sec_merge_sec_info** %5, align 8
  %16 = getelementptr inbounds %struct.sec_merge_sec_info, %struct.sec_merge_sec_info* %15, i32 0, i32 3
  %17 = load %struct.TYPE_2__*, %struct.TYPE_2__** %16, align 8
  store %struct.TYPE_2__* %17, %struct.TYPE_2__** %6, align 8
  %18 = load %struct.TYPE_2__*, %struct.TYPE_2__** %6, align 8
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  store i32 %20, i32* %13, align 4
  %21 = load %struct.sec_merge_sec_info*, %struct.sec_merge_sec_info** %5, align 8
  %22 = getelementptr inbounds %struct.sec_merge_sec_info, %struct.sec_merge_sec_info* %21, i32 0, i32 0
  %23 = load i8*, i8** %22, align 8
  %24 = load %struct.TYPE_2__*, %struct.TYPE_2__** %6, align 8
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds i8, i8* %23, i64 %27
  store i8* %28, i8** %10, align 8
  %29 = load i64, i64* @FALSE, align 8
  store i64 %29, i64* %8, align 8
  %30 = load i32, i32* %13, align 4
  %31 = shl i32 1, %30
  %32 = sub i32 %31, 1
  store i32 %32, i32* %11, align 4
  %33 = load %struct.TYPE_2__*, %struct.TYPE_2__** %6, align 8
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 2
  %35 = load i32, i32* %34, align 4
  %36 = load i32, i32* @SEC_STRINGS, align 4
  %37 = and i32 %35, %36
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %208

39:                                               ; preds = %2
  %40 = load %struct.sec_merge_sec_info*, %struct.sec_merge_sec_info** %5, align 8
  %41 = getelementptr inbounds %struct.sec_merge_sec_info, %struct.sec_merge_sec_info* %40, i32 0, i32 0
  %42 = load i8*, i8** %41, align 8
  store i8* %42, i8** %9, align 8
  br label %43

43:                                               ; preds = %206, %39
  %44 = load i8*, i8** %9, align 8
  %45 = load i8*, i8** %10, align 8
  %46 = icmp ult i8* %44, %45
  br i1 %46, label %47, label %207

47:                                               ; preds = %43
  %48 = load i8*, i8** %9, align 8
  %49 = load %struct.sec_merge_sec_info*, %struct.sec_merge_sec_info** %5, align 8
  %50 = getelementptr inbounds %struct.sec_merge_sec_info, %struct.sec_merge_sec_info* %49, i32 0, i32 0
  %51 = load i8*, i8** %50, align 8
  %52 = ptrtoint i8* %48 to i64
  %53 = ptrtoint i8* %51 to i64
  %54 = sub i64 %52, %53
  %55 = trunc i64 %54 to i32
  store i32 %55, i32* %12, align 4
  %56 = load i32, i32* %12, align 4
  %57 = load i32, i32* %12, align 4
  %58 = sub i32 %57, 1
  %59 = xor i32 %56, %58
  %60 = add i32 %59, 1
  %61 = lshr i32 %60, 1
  store i32 %61, i32* %12, align 4
  %62 = load i32, i32* %12, align 4
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %68

64:                                               ; preds = %47
  %65 = load i32, i32* %12, align 4
  %66 = load i32, i32* %11, align 4
  %67 = icmp ugt i32 %65, %66
  br i1 %67, label %68, label %71

68:                                               ; preds = %64, %47
  %69 = load i32, i32* %11, align 4
  %70 = add i32 %69, 1
  store i32 %70, i32* %12, align 4
  br label %71

71:                                               ; preds = %68, %64
  %72 = load %struct.sec_merge_info*, %struct.sec_merge_info** %4, align 8
  %73 = getelementptr inbounds %struct.sec_merge_info, %struct.sec_merge_info* %72, i32 0, i32 1
  %74 = load i32, i32* %73, align 8
  %75 = load i8*, i8** %9, align 8
  %76 = load i32, i32* %12, align 4
  %77 = load %struct.sec_merge_sec_info*, %struct.sec_merge_sec_info** %5, align 8
  %78 = call %struct.sec_merge_hash_entry* @sec_merge_add(i32 %74, i8* %75, i32 %76, %struct.sec_merge_sec_info* %77)
  store %struct.sec_merge_hash_entry* %78, %struct.sec_merge_hash_entry** %7, align 8
  %79 = load %struct.sec_merge_hash_entry*, %struct.sec_merge_hash_entry** %7, align 8
  %80 = icmp ne %struct.sec_merge_hash_entry* %79, null
  br i1 %80, label %82, label %81

81:                                               ; preds = %71
  br label %237

82:                                               ; preds = %71
  %83 = load %struct.sec_merge_hash_entry*, %struct.sec_merge_hash_entry** %7, align 8
  %84 = getelementptr inbounds %struct.sec_merge_hash_entry, %struct.sec_merge_hash_entry* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 4
  %86 = load i8*, i8** %9, align 8
  %87 = sext i32 %85 to i64
  %88 = getelementptr inbounds i8, i8* %86, i64 %87
  store i8* %88, i8** %9, align 8
  %89 = load %struct.TYPE_2__*, %struct.TYPE_2__** %6, align 8
  %90 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %89, i32 0, i32 3
  %91 = load i32, i32* %90, align 4
  %92 = icmp eq i32 %91, 1
  br i1 %92, label %93, label %137

93:                                               ; preds = %82
  br label %94

94:                                               ; preds = %133, %93
  %95 = load i8*, i8** %9, align 8
  %96 = load i8*, i8** %10, align 8
  %97 = icmp ult i8* %95, %96
  br i1 %97, label %98, label %103

98:                                               ; preds = %94
  %99 = load i8*, i8** %9, align 8
  %100 = load i8, i8* %99, align 1
  %101 = zext i8 %100 to i32
  %102 = icmp eq i32 %101, 0
  br label %103

103:                                              ; preds = %98, %94
  %104 = phi i1 [ false, %94 ], [ %102, %98 ]
  br i1 %104, label %105, label %136

105:                                              ; preds = %103
  %106 = load i64, i64* %8, align 8
  %107 = icmp ne i64 %106, 0
  br i1 %107, label %133, label %108

108:                                              ; preds = %105
  %109 = load i8*, i8** %9, align 8
  %110 = load %struct.sec_merge_sec_info*, %struct.sec_merge_sec_info** %5, align 8
  %111 = getelementptr inbounds %struct.sec_merge_sec_info, %struct.sec_merge_sec_info* %110, i32 0, i32 0
  %112 = load i8*, i8** %111, align 8
  %113 = ptrtoint i8* %109 to i64
  %114 = ptrtoint i8* %112 to i64
  %115 = sub i64 %113, %114
  %116 = load i32, i32* %11, align 4
  %117 = zext i32 %116 to i64
  %118 = and i64 %115, %117
  %119 = icmp ne i64 %118, 0
  br i1 %119, label %133, label %120

120:                                              ; preds = %108
  %121 = load i64, i64* @TRUE, align 8
  store i64 %121, i64* %8, align 8
  %122 = load %struct.sec_merge_info*, %struct.sec_merge_info** %4, align 8
  %123 = getelementptr inbounds %struct.sec_merge_info, %struct.sec_merge_info* %122, i32 0, i32 1
  %124 = load i32, i32* %123, align 8
  %125 = load i32, i32* %11, align 4
  %126 = add i32 %125, 1
  %127 = load %struct.sec_merge_sec_info*, %struct.sec_merge_sec_info** %5, align 8
  %128 = call %struct.sec_merge_hash_entry* @sec_merge_add(i32 %124, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0), i32 %126, %struct.sec_merge_sec_info* %127)
  store %struct.sec_merge_hash_entry* %128, %struct.sec_merge_hash_entry** %7, align 8
  %129 = load %struct.sec_merge_hash_entry*, %struct.sec_merge_hash_entry** %7, align 8
  %130 = icmp ne %struct.sec_merge_hash_entry* %129, null
  br i1 %130, label %132, label %131

131:                                              ; preds = %120
  br label %237

132:                                              ; preds = %120
  br label %133

133:                                              ; preds = %132, %108, %105
  %134 = load i8*, i8** %9, align 8
  %135 = getelementptr inbounds i8, i8* %134, i32 1
  store i8* %135, i8** %9, align 8
  br label %94

136:                                              ; preds = %103
  br label %206

137:                                              ; preds = %82
  br label %138

138:                                              ; preds = %198, %137
  %139 = load i8*, i8** %9, align 8
  %140 = load i8*, i8** %10, align 8
  %141 = icmp ult i8* %139, %140
  br i1 %141, label %142, label %205

142:                                              ; preds = %138
  store i32 0, i32* %14, align 4
  br label %143

143:                                              ; preds = %159, %142
  %144 = load i32, i32* %14, align 4
  %145 = load %struct.TYPE_2__*, %struct.TYPE_2__** %6, align 8
  %146 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %145, i32 0, i32 3
  %147 = load i32, i32* %146, align 4
  %148 = icmp ult i32 %144, %147
  br i1 %148, label %149, label %162

149:                                              ; preds = %143
  %150 = load i8*, i8** %9, align 8
  %151 = load i32, i32* %14, align 4
  %152 = zext i32 %151 to i64
  %153 = getelementptr inbounds i8, i8* %150, i64 %152
  %154 = load i8, i8* %153, align 1
  %155 = zext i8 %154 to i32
  %156 = icmp ne i32 %155, 0
  br i1 %156, label %157, label %158

157:                                              ; preds = %149
  br label %162

158:                                              ; preds = %149
  br label %159

159:                                              ; preds = %158
  %160 = load i32, i32* %14, align 4
  %161 = add i32 %160, 1
  store i32 %161, i32* %14, align 4
  br label %143

162:                                              ; preds = %157, %143
  %163 = load i32, i32* %14, align 4
  %164 = load %struct.TYPE_2__*, %struct.TYPE_2__** %6, align 8
  %165 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %164, i32 0, i32 3
  %166 = load i32, i32* %165, align 4
  %167 = icmp ne i32 %163, %166
  br i1 %167, label %168, label %169

168:                                              ; preds = %162
  br label %205

169:                                              ; preds = %162
  %170 = load i64, i64* %8, align 8
  %171 = icmp ne i64 %170, 0
  br i1 %171, label %198, label %172

172:                                              ; preds = %169
  %173 = load i8*, i8** %9, align 8
  %174 = load %struct.sec_merge_sec_info*, %struct.sec_merge_sec_info** %5, align 8
  %175 = getelementptr inbounds %struct.sec_merge_sec_info, %struct.sec_merge_sec_info* %174, i32 0, i32 0
  %176 = load i8*, i8** %175, align 8
  %177 = ptrtoint i8* %173 to i64
  %178 = ptrtoint i8* %176 to i64
  %179 = sub i64 %177, %178
  %180 = load i32, i32* %11, align 4
  %181 = zext i32 %180 to i64
  %182 = and i64 %179, %181
  %183 = icmp ne i64 %182, 0
  br i1 %183, label %198, label %184

184:                                              ; preds = %172
  %185 = load i64, i64* @TRUE, align 8
  store i64 %185, i64* %8, align 8
  %186 = load %struct.sec_merge_info*, %struct.sec_merge_info** %4, align 8
  %187 = getelementptr inbounds %struct.sec_merge_info, %struct.sec_merge_info* %186, i32 0, i32 1
  %188 = load i32, i32* %187, align 8
  %189 = load i8*, i8** %9, align 8
  %190 = load i32, i32* %11, align 4
  %191 = add i32 %190, 1
  %192 = load %struct.sec_merge_sec_info*, %struct.sec_merge_sec_info** %5, align 8
  %193 = call %struct.sec_merge_hash_entry* @sec_merge_add(i32 %188, i8* %189, i32 %191, %struct.sec_merge_sec_info* %192)
  store %struct.sec_merge_hash_entry* %193, %struct.sec_merge_hash_entry** %7, align 8
  %194 = load %struct.sec_merge_hash_entry*, %struct.sec_merge_hash_entry** %7, align 8
  %195 = icmp ne %struct.sec_merge_hash_entry* %194, null
  br i1 %195, label %197, label %196

196:                                              ; preds = %184
  br label %237

197:                                              ; preds = %184
  br label %198

198:                                              ; preds = %197, %172, %169
  %199 = load %struct.TYPE_2__*, %struct.TYPE_2__** %6, align 8
  %200 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %199, i32 0, i32 3
  %201 = load i32, i32* %200, align 4
  %202 = load i8*, i8** %9, align 8
  %203 = sext i32 %201 to i64
  %204 = getelementptr inbounds i8, i8* %202, i64 %203
  store i8* %204, i8** %9, align 8
  br label %138

205:                                              ; preds = %168, %138
  br label %206

206:                                              ; preds = %205, %136
  br label %43

207:                                              ; preds = %43
  br label %235

208:                                              ; preds = %2
  %209 = load %struct.sec_merge_sec_info*, %struct.sec_merge_sec_info** %5, align 8
  %210 = getelementptr inbounds %struct.sec_merge_sec_info, %struct.sec_merge_sec_info* %209, i32 0, i32 0
  %211 = load i8*, i8** %210, align 8
  store i8* %211, i8** %9, align 8
  br label %212

212:                                              ; preds = %227, %208
  %213 = load i8*, i8** %9, align 8
  %214 = load i8*, i8** %10, align 8
  %215 = icmp ult i8* %213, %214
  br i1 %215, label %216, label %234

216:                                              ; preds = %212
  %217 = load %struct.sec_merge_info*, %struct.sec_merge_info** %4, align 8
  %218 = getelementptr inbounds %struct.sec_merge_info, %struct.sec_merge_info* %217, i32 0, i32 1
  %219 = load i32, i32* %218, align 8
  %220 = load i8*, i8** %9, align 8
  %221 = load %struct.sec_merge_sec_info*, %struct.sec_merge_sec_info** %5, align 8
  %222 = call %struct.sec_merge_hash_entry* @sec_merge_add(i32 %219, i8* %220, i32 1, %struct.sec_merge_sec_info* %221)
  store %struct.sec_merge_hash_entry* %222, %struct.sec_merge_hash_entry** %7, align 8
  %223 = load %struct.sec_merge_hash_entry*, %struct.sec_merge_hash_entry** %7, align 8
  %224 = icmp ne %struct.sec_merge_hash_entry* %223, null
  br i1 %224, label %226, label %225

225:                                              ; preds = %216
  br label %237

226:                                              ; preds = %216
  br label %227

227:                                              ; preds = %226
  %228 = load %struct.TYPE_2__*, %struct.TYPE_2__** %6, align 8
  %229 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %228, i32 0, i32 3
  %230 = load i32, i32* %229, align 4
  %231 = load i8*, i8** %9, align 8
  %232 = sext i32 %230 to i64
  %233 = getelementptr inbounds i8, i8* %231, i64 %232
  store i8* %233, i8** %9, align 8
  br label %212

234:                                              ; preds = %212
  br label %235

235:                                              ; preds = %234, %207
  %236 = load i64, i64* @TRUE, align 8
  store i64 %236, i64* %3, align 8
  br label %254

237:                                              ; preds = %225, %196, %131, %81
  %238 = load %struct.sec_merge_info*, %struct.sec_merge_info** %4, align 8
  %239 = getelementptr inbounds %struct.sec_merge_info, %struct.sec_merge_info* %238, i32 0, i32 0
  %240 = load %struct.sec_merge_sec_info*, %struct.sec_merge_sec_info** %239, align 8
  store %struct.sec_merge_sec_info* %240, %struct.sec_merge_sec_info** %5, align 8
  br label %241

241:                                              ; preds = %248, %237
  %242 = load %struct.sec_merge_sec_info*, %struct.sec_merge_sec_info** %5, align 8
  %243 = icmp ne %struct.sec_merge_sec_info* %242, null
  br i1 %243, label %244, label %252

244:                                              ; preds = %241
  %245 = load %struct.sec_merge_sec_info*, %struct.sec_merge_sec_info** %5, align 8
  %246 = getelementptr inbounds %struct.sec_merge_sec_info, %struct.sec_merge_sec_info* %245, i32 0, i32 1
  %247 = load i32**, i32*** %246, align 8
  store i32* null, i32** %247, align 8
  br label %248

248:                                              ; preds = %244
  %249 = load %struct.sec_merge_sec_info*, %struct.sec_merge_sec_info** %5, align 8
  %250 = getelementptr inbounds %struct.sec_merge_sec_info, %struct.sec_merge_sec_info* %249, i32 0, i32 2
  %251 = load %struct.sec_merge_sec_info*, %struct.sec_merge_sec_info** %250, align 8
  store %struct.sec_merge_sec_info* %251, %struct.sec_merge_sec_info** %5, align 8
  br label %241

252:                                              ; preds = %241
  %253 = load i64, i64* @FALSE, align 8
  store i64 %253, i64* %3, align 8
  br label %254

254:                                              ; preds = %252, %235
  %255 = load i64, i64* %3, align 8
  ret i64 %255
}

declare dso_local %struct.sec_merge_hash_entry* @sec_merge_add(i32, i8*, i32, %struct.sec_merge_sec_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

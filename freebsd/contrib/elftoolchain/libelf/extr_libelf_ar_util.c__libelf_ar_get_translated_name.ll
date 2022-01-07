; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/elftoolchain/libelf/extr_libelf_ar_util.c__libelf_ar_get_translated_name.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/elftoolchain/libelf/extr_libelf_ar_util.c__libelf_ar_get_translated_name.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ar_hdr = type { i64 }
%struct.TYPE_7__ = type { i64, i8*, i32, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i64, i8* }

@ELF_K_AR = common dso_local global i64 0, align 8
@ARCHIVE = common dso_local global i32 0, align 4
@RESOURCE = common dso_local global i32 0, align 4
@LIBELF_AR_BSD_EXTENDED_NAME_PREFIX_SIZE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @_libelf_ar_get_translated_name(%struct.ar_hdr* %0, %struct.TYPE_7__* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca %struct.ar_hdr*, align 8
  %5 = alloca %struct.TYPE_7__*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8, align 1
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i64, align 8
  store %struct.ar_hdr* %0, %struct.ar_hdr** %4, align 8
  store %struct.TYPE_7__* %1, %struct.TYPE_7__** %5, align 8
  store i64 8, i64* %14, align 8
  %15 = load %struct.ar_hdr*, %struct.ar_hdr** %4, align 8
  %16 = icmp ne %struct.ar_hdr* %15, null
  %17 = zext i1 %16 to i32
  %18 = call i32 @assert(i32 %17)
  %19 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %20 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = load i64, i64* @ELF_K_AR, align 8
  %23 = icmp eq i64 %21, %22
  %24 = zext i1 %23 to i32
  %25 = call i32 @assert(i32 %24)
  %26 = load %struct.ar_hdr*, %struct.ar_hdr** %4, align 8
  %27 = bitcast %struct.ar_hdr* %26 to i8*
  %28 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %29 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %28, i32 0, i32 1
  %30 = load i8*, i8** %29, align 8
  %31 = icmp uge i8* %27, %30
  br i1 %31, label %32, label %44

32:                                               ; preds = %2
  %33 = load %struct.ar_hdr*, %struct.ar_hdr** %4, align 8
  %34 = bitcast %struct.ar_hdr* %33 to i8*
  %35 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %36 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %35, i32 0, i32 1
  %37 = load i8*, i8** %36, align 8
  %38 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %39 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %38, i32 0, i32 2
  %40 = load i32, i32* %39, align 8
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds i8, i8* %37, i64 %41
  %43 = icmp ult i8* %34, %42
  br label %44

44:                                               ; preds = %32, %2
  %45 = phi i1 [ false, %2 ], [ %43, %32 ]
  %46 = zext i1 %45 to i32
  %47 = call i32 @assert(i32 %46)
  %48 = load %struct.ar_hdr*, %struct.ar_hdr** %4, align 8
  %49 = getelementptr inbounds %struct.ar_hdr, %struct.ar_hdr* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = inttoptr i64 %50 to i8*
  store i8* %51, i8** %10, align 8
  %52 = load i8*, i8** %10, align 8
  %53 = getelementptr inbounds i8, i8* %52, i64 0
  %54 = load i8, i8* %53, align 1
  %55 = zext i8 %54 to i32
  %56 = icmp eq i32 %55, 47
  br i1 %56, label %57, label %144

57:                                               ; preds = %44
  %58 = load i8*, i8** %10, align 8
  %59 = getelementptr inbounds i8, i8* %58, i64 1
  %60 = load i8, i8* %59, align 1
  store i8 %60, i8* %7, align 1
  %61 = zext i8 %60 to i32
  %62 = icmp sge i32 %61, 48
  br i1 %62, label %63, label %144

63:                                               ; preds = %57
  %64 = load i8, i8* %7, align 1
  %65 = zext i8 %64 to i32
  %66 = icmp sle i32 %65, 57
  br i1 %66, label %67, label %144

67:                                               ; preds = %63
  %68 = load i8*, i8** %10, align 8
  %69 = getelementptr inbounds i8, i8* %68, i64 1
  %70 = call i64 @_libelf_ar_get_number(i8* %69, i64 7, i32 10, i64* %9)
  %71 = icmp eq i64 %70, 0
  br i1 %71, label %72, label %75

72:                                               ; preds = %67
  %73 = load i32, i32* @ARCHIVE, align 4
  %74 = call i32 @LIBELF_SET_ERROR(i32 %73, i32 0)
  store i8* null, i8** %3, align 8
  br label %254

75:                                               ; preds = %67
  %76 = load i64, i64* %9, align 8
  %77 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %78 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %77, i32 0, i32 3
  %79 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %78, i32 0, i32 0
  %80 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %79, i32 0, i32 0
  %81 = load i64, i64* %80, align 8
  %82 = icmp ugt i64 %76, %81
  br i1 %82, label %83, label %86

83:                                               ; preds = %75
  %84 = load i32, i32* @ARCHIVE, align 4
  %85 = call i32 @LIBELF_SET_ERROR(i32 %84, i32 0)
  store i8* null, i8** %3, align 8
  br label %254

86:                                               ; preds = %75
  %87 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %88 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %87, i32 0, i32 3
  %89 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %88, i32 0, i32 0
  %90 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %89, i32 0, i32 1
  %91 = load i8*, i8** %90, align 8
  %92 = load i64, i64* %9, align 8
  %93 = getelementptr inbounds i8, i8* %91, i64 %92
  store i8* %93, i8** %12, align 8
  store i8* %93, i8** %11, align 8
  %94 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %95 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %94, i32 0, i32 3
  %96 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %95, i32 0, i32 0
  %97 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %96, i32 0, i32 1
  %98 = load i8*, i8** %97, align 8
  %99 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %100 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %99, i32 0, i32 3
  %101 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %100, i32 0, i32 0
  %102 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %101, i32 0, i32 0
  %103 = load i64, i64* %102, align 8
  %104 = getelementptr inbounds i8, i8* %98, i64 %103
  store i8* %104, i8** %13, align 8
  br label %105

105:                                              ; preds = %117, %86
  %106 = load i8*, i8** %11, align 8
  %107 = load i8*, i8** %13, align 8
  %108 = icmp ult i8* %106, %107
  br i1 %108, label %109, label %114

109:                                              ; preds = %105
  %110 = load i8*, i8** %11, align 8
  %111 = load i8, i8* %110, align 1
  %112 = zext i8 %111 to i32
  %113 = icmp ne i32 %112, 47
  br label %114

114:                                              ; preds = %109, %105
  %115 = phi i1 [ false, %105 ], [ %113, %109 ]
  br i1 %115, label %116, label %120

116:                                              ; preds = %114
  br label %117

117:                                              ; preds = %116
  %118 = load i8*, i8** %11, align 8
  %119 = getelementptr inbounds i8, i8* %118, i32 1
  store i8* %119, i8** %11, align 8
  br label %105

120:                                              ; preds = %114
  %121 = load i8*, i8** %11, align 8
  %122 = load i8*, i8** %12, align 8
  %123 = ptrtoint i8* %121 to i64
  %124 = ptrtoint i8* %122 to i64
  %125 = sub i64 %123, %124
  %126 = add nsw i64 %125, 1
  store i64 %126, i64* %8, align 8
  %127 = load i64, i64* %8, align 8
  %128 = call i8* @malloc(i64 %127)
  store i8* %128, i8** %6, align 8
  %129 = icmp eq i8* %128, null
  br i1 %129, label %130, label %133

130:                                              ; preds = %120
  %131 = load i32, i32* @RESOURCE, align 4
  %132 = call i32 @LIBELF_SET_ERROR(i32 %131, i32 0)
  store i8* null, i8** %3, align 8
  br label %254

133:                                              ; preds = %120
  %134 = load i8*, i8** %6, align 8
  %135 = load i8*, i8** %12, align 8
  %136 = load i64, i64* %8, align 8
  %137 = sub i64 %136, 1
  %138 = call i32 @strncpy(i8* %134, i8* %135, i64 %137)
  %139 = load i8*, i8** %6, align 8
  %140 = load i64, i64* %8, align 8
  %141 = sub i64 %140, 1
  %142 = getelementptr inbounds i8, i8* %139, i64 %141
  store i8 0, i8* %142, align 1
  %143 = load i8*, i8** %6, align 8
  store i8* %143, i8** %3, align 8
  br label %254

144:                                              ; preds = %63, %57, %44
  %145 = load i8*, i8** %10, align 8
  %146 = call i64 @IS_EXTENDED_BSD_NAME(i8* %145)
  %147 = icmp ne i64 %146, 0
  br i1 %147, label %148, label %180

148:                                              ; preds = %144
  %149 = load i8*, i8** %10, align 8
  %150 = load i64, i64* @LIBELF_AR_BSD_EXTENDED_NAME_PREFIX_SIZE, align 8
  %151 = getelementptr inbounds i8, i8* %149, i64 %150
  store i8* %151, i8** %13, align 8
  %152 = load i8*, i8** %13, align 8
  %153 = load i64, i64* @LIBELF_AR_BSD_EXTENDED_NAME_PREFIX_SIZE, align 8
  %154 = sub i64 8, %153
  %155 = call i64 @_libelf_ar_get_number(i8* %152, i64 %154, i32 10, i64* %8)
  %156 = icmp eq i64 %155, 0
  br i1 %156, label %157, label %160

157:                                              ; preds = %148
  %158 = load i32, i32* @ARCHIVE, align 4
  %159 = call i32 @LIBELF_SET_ERROR(i32 %158, i32 0)
  store i8* null, i8** %3, align 8
  br label %254

160:                                              ; preds = %148
  %161 = load i64, i64* %8, align 8
  %162 = add i64 %161, 1
  %163 = call i8* @malloc(i64 %162)
  store i8* %163, i8** %6, align 8
  %164 = icmp eq i8* %163, null
  br i1 %164, label %165, label %168

165:                                              ; preds = %160
  %166 = load i32, i32* @RESOURCE, align 4
  %167 = call i32 @LIBELF_SET_ERROR(i32 %166, i32 0)
  store i8* null, i8** %3, align 8
  br label %254

168:                                              ; preds = %160
  %169 = load %struct.ar_hdr*, %struct.ar_hdr** %4, align 8
  %170 = getelementptr inbounds %struct.ar_hdr, %struct.ar_hdr* %169, i64 1
  %171 = bitcast %struct.ar_hdr* %170 to i8*
  store i8* %171, i8** %12, align 8
  %172 = load i8*, i8** %6, align 8
  %173 = load i8*, i8** %12, align 8
  %174 = load i64, i64* %8, align 8
  %175 = call i32 @strncpy(i8* %172, i8* %173, i64 %174)
  %176 = load i8*, i8** %6, align 8
  %177 = load i64, i64* %8, align 8
  %178 = getelementptr inbounds i8, i8* %176, i64 %177
  store i8 0, i8* %178, align 1
  %179 = load i8*, i8** %6, align 8
  store i8* %179, i8** %3, align 8
  br label %254

180:                                              ; preds = %144
  br label %181

181:                                              ; preds = %180
  %182 = load i8*, i8** %10, align 8
  %183 = getelementptr inbounds i8, i8* %182, i64 8
  %184 = getelementptr inbounds i8, i8* %183, i64 -1
  store i8* %184, i8** %12, align 8
  br label %185

185:                                              ; preds = %197, %181
  %186 = load i8*, i8** %12, align 8
  %187 = load i8*, i8** %10, align 8
  %188 = icmp uge i8* %186, %187
  br i1 %188, label %189, label %194

189:                                              ; preds = %185
  %190 = load i8*, i8** %12, align 8
  %191 = load i8, i8* %190, align 1
  %192 = zext i8 %191 to i32
  %193 = icmp eq i32 %192, 32
  br label %194

194:                                              ; preds = %189, %185
  %195 = phi i1 [ false, %185 ], [ %193, %189 ]
  br i1 %195, label %196, label %200

196:                                              ; preds = %194
  br label %197

197:                                              ; preds = %196
  %198 = load i8*, i8** %12, align 8
  %199 = getelementptr inbounds i8, i8* %198, i32 -1
  store i8* %199, i8** %12, align 8
  br label %185

200:                                              ; preds = %194
  %201 = load i8*, i8** %12, align 8
  %202 = load i8*, i8** %10, align 8
  %203 = icmp uge i8* %201, %202
  br i1 %203, label %204, label %235

204:                                              ; preds = %200
  %205 = load i8*, i8** %12, align 8
  %206 = load i8, i8* %205, align 1
  %207 = zext i8 %206 to i32
  %208 = icmp eq i32 %207, 47
  br i1 %208, label %209, label %228

209:                                              ; preds = %204
  %210 = load i8*, i8** %12, align 8
  %211 = load i8*, i8** %10, align 8
  %212 = getelementptr inbounds i8, i8* %211, i64 1
  %213 = icmp ugt i8* %210, %212
  br i1 %213, label %224, label %214

214:                                              ; preds = %209
  %215 = load i8*, i8** %12, align 8
  %216 = load i8*, i8** %10, align 8
  %217 = getelementptr inbounds i8, i8* %216, i64 1
  %218 = icmp eq i8* %215, %217
  br i1 %218, label %219, label %227

219:                                              ; preds = %214
  %220 = load i8*, i8** %10, align 8
  %221 = load i8, i8* %220, align 1
  %222 = zext i8 %221 to i32
  %223 = icmp ne i32 %222, 47
  br i1 %223, label %224, label %227

224:                                              ; preds = %219, %209
  %225 = load i8*, i8** %12, align 8
  %226 = getelementptr inbounds i8, i8* %225, i32 -1
  store i8* %226, i8** %12, align 8
  br label %227

227:                                              ; preds = %224, %219, %214
  br label %228

228:                                              ; preds = %227, %204
  %229 = load i8*, i8** %12, align 8
  %230 = load i8*, i8** %10, align 8
  %231 = ptrtoint i8* %229 to i64
  %232 = ptrtoint i8* %230 to i64
  %233 = sub i64 %231, %232
  %234 = add nsw i64 %233, 2
  store i64 %234, i64* %8, align 8
  br label %236

235:                                              ; preds = %200
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0), i8** %10, align 8
  store i64 1, i64* %8, align 8
  br label %236

236:                                              ; preds = %235, %228
  %237 = load i64, i64* %8, align 8
  %238 = call i8* @malloc(i64 %237)
  store i8* %238, i8** %6, align 8
  %239 = icmp eq i8* %238, null
  br i1 %239, label %240, label %243

240:                                              ; preds = %236
  %241 = load i32, i32* @RESOURCE, align 4
  %242 = call i32 @LIBELF_SET_ERROR(i32 %241, i32 0)
  store i8* null, i8** %3, align 8
  br label %254

243:                                              ; preds = %236
  %244 = load i8*, i8** %6, align 8
  %245 = load i8*, i8** %10, align 8
  %246 = load i64, i64* %8, align 8
  %247 = sub i64 %246, 1
  %248 = call i32 @strncpy(i8* %244, i8* %245, i64 %247)
  %249 = load i8*, i8** %6, align 8
  %250 = load i64, i64* %8, align 8
  %251 = sub i64 %250, 1
  %252 = getelementptr inbounds i8, i8* %249, i64 %251
  store i8 0, i8* %252, align 1
  %253 = load i8*, i8** %6, align 8
  store i8* %253, i8** %3, align 8
  br label %254

254:                                              ; preds = %243, %240, %168, %165, %157, %133, %130, %83, %72
  %255 = load i8*, i8** %3, align 8
  ret i8* %255
}

declare dso_local i32 @assert(i32) #1

declare dso_local i64 @_libelf_ar_get_number(i8*, i64, i32, i64*) #1

declare dso_local i32 @LIBELF_SET_ERROR(i32, i32) #1

declare dso_local i8* @malloc(i64) #1

declare dso_local i32 @strncpy(i8*, i8*, i64) #1

declare dso_local i64 @IS_EXTENDED_BSD_NAME(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

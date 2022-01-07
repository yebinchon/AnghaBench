; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/ld/extr_pe-dll.c_auto_export.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/ld/extr_pe-dll.c_auto_export.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_17__ = type { i8*, i32 }
%struct.TYPE_19__ = type { %struct.TYPE_17__* }
%struct.exclude_list_struct = type { i32, i8*, %struct.exclude_list_struct* }
%struct.TYPE_16__ = type { i32, %struct.TYPE_18__* }
%struct.TYPE_18__ = type { i32 }
%struct.TYPE_15__ = type { i32, %struct.TYPE_14__* }
%struct.TYPE_14__ = type { i8* }

@pe_dll_do_default_excludes = common dso_local global i64 0, align 8
@pe_dll_extra_pe_debug = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [53 x i8] c"considering exporting: %s, abfd=%p, abfd->my_arc=%p\0A\00", align 1
@autofilter_liblist = common dso_local global %struct.TYPE_17__* null, align 8
@autofilter_objlist = common dso_local global %struct.TYPE_17__* null, align 8
@pe_details = common dso_local global %struct.TYPE_19__* null, align 8
@autofilter_symbolprefixlist = common dso_local global %struct.TYPE_17__* null, align 8
@autofilter_symbolsuffixlist = common dso_local global %struct.TYPE_17__* null, align 8
@excludes = common dso_local global %struct.exclude_list_struct* null, align 8
@.str.1 = private unnamed_addr constant [4 x i8] c"ALL\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_16__*, %struct.TYPE_15__*, i8*)* @auto_export to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @auto_export(%struct.TYPE_16__* %0, %struct.TYPE_15__* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_16__*, align 8
  %6 = alloca %struct.TYPE_15__*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.exclude_list_struct*, align 8
  %10 = alloca %struct.TYPE_17__*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i32, align 4
  store %struct.TYPE_16__* %0, %struct.TYPE_16__** %5, align 8
  store %struct.TYPE_15__* %1, %struct.TYPE_15__** %6, align 8
  store i8* %2, i8** %7, align 8
  store i8* null, i8** %11, align 8
  %14 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %15 = icmp ne %struct.TYPE_16__* %14, null
  br i1 %15, label %16, label %28

16:                                               ; preds = %3
  %17 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %18 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %17, i32 0, i32 1
  %19 = load %struct.TYPE_18__*, %struct.TYPE_18__** %18, align 8
  %20 = icmp ne %struct.TYPE_18__* %19, null
  br i1 %20, label %21, label %28

21:                                               ; preds = %16
  %22 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %23 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %22, i32 0, i32 1
  %24 = load %struct.TYPE_18__*, %struct.TYPE_18__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = call i8* @lbasename(i32 %26)
  store i8* %27, i8** %11, align 8
  br label %28

28:                                               ; preds = %21, %16, %3
  store i32 0, i32* %8, align 4
  br label %29

29:                                               ; preds = %49, %28
  %30 = load i32, i32* %8, align 4
  %31 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %32 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = icmp slt i32 %30, %33
  br i1 %34, label %35, label %52

35:                                               ; preds = %29
  %36 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %37 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %36, i32 0, i32 1
  %38 = load %struct.TYPE_14__*, %struct.TYPE_14__** %37, align 8
  %39 = load i32, i32* %8, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %38, i64 %40
  %42 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %41, i32 0, i32 0
  %43 = load i8*, i8** %42, align 8
  %44 = load i8*, i8** %7, align 8
  %45 = call i64 @strcmp(i8* %43, i8* %44)
  %46 = icmp eq i64 %45, 0
  br i1 %46, label %47, label %48

47:                                               ; preds = %35
  store i32 0, i32* %4, align 4
  br label %242

48:                                               ; preds = %35
  br label %49

49:                                               ; preds = %48
  %50 = load i32, i32* %8, align 4
  %51 = add nsw i32 %50, 1
  store i32 %51, i32* %8, align 4
  br label %29

52:                                               ; preds = %29
  %53 = load i64, i64* @pe_dll_do_default_excludes, align 8
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %199

55:                                               ; preds = %52
  %56 = load i64, i64* @pe_dll_extra_pe_debug, align 8
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %65

58:                                               ; preds = %55
  %59 = load i8*, i8** %7, align 8
  %60 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %61 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %62 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %61, i32 0, i32 1
  %63 = load %struct.TYPE_18__*, %struct.TYPE_18__** %62, align 8
  %64 = call i32 @printf(i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str, i64 0, i64 0), i8* %59, %struct.TYPE_16__* %60, %struct.TYPE_18__* %63)
  br label %65

65:                                               ; preds = %58, %55
  %66 = load i8*, i8** %11, align 8
  %67 = icmp ne i8* %66, null
  br i1 %67, label %68, label %90

68:                                               ; preds = %65
  %69 = load %struct.TYPE_17__*, %struct.TYPE_17__** @autofilter_liblist, align 8
  store %struct.TYPE_17__* %69, %struct.TYPE_17__** %10, align 8
  br label %70

70:                                               ; preds = %86, %68
  %71 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  %72 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %71, i32 0, i32 0
  %73 = load i8*, i8** %72, align 8
  %74 = icmp ne i8* %73, null
  br i1 %74, label %75, label %89

75:                                               ; preds = %70
  %76 = load i8*, i8** %11, align 8
  %77 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  %78 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %77, i32 0, i32 0
  %79 = load i8*, i8** %78, align 8
  %80 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  %81 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %80, i32 0, i32 1
  %82 = load i32, i32* %81, align 8
  %83 = call i64 @strncmp(i8* %76, i8* %79, i32 %82)
  %84 = icmp eq i64 %83, 0
  br i1 %84, label %85, label %86

85:                                               ; preds = %75
  store i32 0, i32* %4, align 4
  br label %242

86:                                               ; preds = %75
  %87 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  %88 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %87, i32 1
  store %struct.TYPE_17__* %88, %struct.TYPE_17__** %10, align 8
  br label %70

89:                                               ; preds = %70
  br label %90

90:                                               ; preds = %89, %65
  %91 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %92 = icmp ne %struct.TYPE_16__* %91, null
  br i1 %92, label %93, label %118

93:                                               ; preds = %90
  %94 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %95 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 8
  %97 = call i8* @lbasename(i32 %96)
  store i8* %97, i8** %12, align 8
  %98 = icmp ne i8* %97, null
  br i1 %98, label %99, label %118

99:                                               ; preds = %93
  %100 = load %struct.TYPE_17__*, %struct.TYPE_17__** @autofilter_objlist, align 8
  store %struct.TYPE_17__* %100, %struct.TYPE_17__** %10, align 8
  br label %101

101:                                              ; preds = %114, %99
  %102 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  %103 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %102, i32 0, i32 0
  %104 = load i8*, i8** %103, align 8
  %105 = icmp ne i8* %104, null
  br i1 %105, label %106, label %117

106:                                              ; preds = %101
  %107 = load i8*, i8** %12, align 8
  %108 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  %109 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %108, i32 0, i32 0
  %110 = load i8*, i8** %109, align 8
  %111 = call i64 @strcmp(i8* %107, i8* %110)
  %112 = icmp eq i64 %111, 0
  br i1 %112, label %113, label %114

113:                                              ; preds = %106
  store i32 0, i32* %4, align 4
  br label %242

114:                                              ; preds = %106
  %115 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  %116 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %115, i32 1
  store %struct.TYPE_17__* %116, %struct.TYPE_17__** %10, align 8
  br label %101

117:                                              ; preds = %101
  br label %118

118:                                              ; preds = %117, %93, %90
  %119 = load %struct.TYPE_19__*, %struct.TYPE_19__** @pe_details, align 8
  %120 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %119, i32 0, i32 0
  %121 = load %struct.TYPE_17__*, %struct.TYPE_17__** %120, align 8
  store %struct.TYPE_17__* %121, %struct.TYPE_17__** %10, align 8
  br label %122

122:                                              ; preds = %135, %118
  %123 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  %124 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %123, i32 0, i32 0
  %125 = load i8*, i8** %124, align 8
  %126 = icmp ne i8* %125, null
  br i1 %126, label %127, label %138

127:                                              ; preds = %122
  %128 = load i8*, i8** %7, align 8
  %129 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  %130 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %129, i32 0, i32 0
  %131 = load i8*, i8** %130, align 8
  %132 = call i64 @strcmp(i8* %128, i8* %131)
  %133 = icmp eq i64 %132, 0
  br i1 %133, label %134, label %135

134:                                              ; preds = %127
  store i32 0, i32* %4, align 4
  br label %242

135:                                              ; preds = %127
  %136 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  %137 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %136, i32 1
  store %struct.TYPE_17__* %137, %struct.TYPE_17__** %10, align 8
  br label %122

138:                                              ; preds = %122
  %139 = load %struct.TYPE_17__*, %struct.TYPE_17__** @autofilter_symbolprefixlist, align 8
  store %struct.TYPE_17__* %139, %struct.TYPE_17__** %10, align 8
  br label %140

140:                                              ; preds = %156, %138
  %141 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  %142 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %141, i32 0, i32 0
  %143 = load i8*, i8** %142, align 8
  %144 = icmp ne i8* %143, null
  br i1 %144, label %145, label %159

145:                                              ; preds = %140
  %146 = load i8*, i8** %7, align 8
  %147 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  %148 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %147, i32 0, i32 0
  %149 = load i8*, i8** %148, align 8
  %150 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  %151 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %150, i32 0, i32 1
  %152 = load i32, i32* %151, align 8
  %153 = call i64 @strncmp(i8* %146, i8* %149, i32 %152)
  %154 = icmp eq i64 %153, 0
  br i1 %154, label %155, label %156

155:                                              ; preds = %145
  store i32 0, i32* %4, align 4
  br label %242

156:                                              ; preds = %145
  %157 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  %158 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %157, i32 1
  store %struct.TYPE_17__* %158, %struct.TYPE_17__** %10, align 8
  br label %140

159:                                              ; preds = %140
  %160 = load i8*, i8** %7, align 8
  %161 = call i32 @strlen(i8* %160)
  store i32 %161, i32* %13, align 4
  %162 = load %struct.TYPE_17__*, %struct.TYPE_17__** @autofilter_symbolsuffixlist, align 8
  store %struct.TYPE_17__* %162, %struct.TYPE_17__** %10, align 8
  br label %163

163:                                              ; preds = %195, %159
  %164 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  %165 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %164, i32 0, i32 0
  %166 = load i8*, i8** %165, align 8
  %167 = icmp ne i8* %166, null
  br i1 %167, label %168, label %198

168:                                              ; preds = %163
  %169 = load i32, i32* %13, align 4
  %170 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  %171 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %170, i32 0, i32 1
  %172 = load i32, i32* %171, align 8
  %173 = icmp sge i32 %169, %172
  br i1 %173, label %174, label %195

174:                                              ; preds = %168
  %175 = load i8*, i8** %7, align 8
  %176 = load i32, i32* %13, align 4
  %177 = sext i32 %176 to i64
  %178 = getelementptr inbounds i8, i8* %175, i64 %177
  %179 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  %180 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %179, i32 0, i32 1
  %181 = load i32, i32* %180, align 8
  %182 = sext i32 %181 to i64
  %183 = sub i64 0, %182
  %184 = getelementptr inbounds i8, i8* %178, i64 %183
  %185 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  %186 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %185, i32 0, i32 0
  %187 = load i8*, i8** %186, align 8
  %188 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  %189 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %188, i32 0, i32 1
  %190 = load i32, i32* %189, align 8
  %191 = add nsw i32 %190, 1
  %192 = call i64 @strncmp(i8* %184, i8* %187, i32 %191)
  %193 = icmp eq i64 %192, 0
  br i1 %193, label %194, label %195

194:                                              ; preds = %174
  store i32 0, i32* %4, align 4
  br label %242

195:                                              ; preds = %174, %168
  %196 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  %197 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %196, i32 1
  store %struct.TYPE_17__* %197, %struct.TYPE_17__** %10, align 8
  br label %163

198:                                              ; preds = %163
  br label %199

199:                                              ; preds = %198, %52
  %200 = load %struct.exclude_list_struct*, %struct.exclude_list_struct** @excludes, align 8
  store %struct.exclude_list_struct* %200, %struct.exclude_list_struct** %9, align 8
  br label %201

201:                                              ; preds = %237, %199
  %202 = load %struct.exclude_list_struct*, %struct.exclude_list_struct** %9, align 8
  %203 = icmp ne %struct.exclude_list_struct* %202, null
  br i1 %203, label %204, label %241

204:                                              ; preds = %201
  %205 = load %struct.exclude_list_struct*, %struct.exclude_list_struct** %9, align 8
  %206 = getelementptr inbounds %struct.exclude_list_struct, %struct.exclude_list_struct* %205, i32 0, i32 0
  %207 = load i32, i32* %206, align 8
  %208 = icmp eq i32 %207, 1
  br i1 %208, label %209, label %227

209:                                              ; preds = %204
  %210 = load i8*, i8** %11, align 8
  %211 = icmp ne i8* %210, null
  br i1 %211, label %212, label %226

212:                                              ; preds = %209
  %213 = load i8*, i8** %11, align 8
  %214 = load %struct.exclude_list_struct*, %struct.exclude_list_struct** %9, align 8
  %215 = getelementptr inbounds %struct.exclude_list_struct, %struct.exclude_list_struct* %214, i32 0, i32 1
  %216 = load i8*, i8** %215, align 8
  %217 = call i64 @strcmp(i8* %213, i8* %216)
  %218 = icmp eq i64 %217, 0
  br i1 %218, label %225, label %219

219:                                              ; preds = %212
  %220 = load %struct.exclude_list_struct*, %struct.exclude_list_struct** %9, align 8
  %221 = getelementptr inbounds %struct.exclude_list_struct, %struct.exclude_list_struct* %220, i32 0, i32 1
  %222 = load i8*, i8** %221, align 8
  %223 = call i64 @strcasecmp(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i8* %222)
  %224 = icmp eq i64 %223, 0
  br i1 %224, label %225, label %226

225:                                              ; preds = %219, %212
  store i32 0, i32* %4, align 4
  br label %242

226:                                              ; preds = %219, %209
  br label %236

227:                                              ; preds = %204
  %228 = load i8*, i8** %7, align 8
  %229 = load %struct.exclude_list_struct*, %struct.exclude_list_struct** %9, align 8
  %230 = getelementptr inbounds %struct.exclude_list_struct, %struct.exclude_list_struct* %229, i32 0, i32 1
  %231 = load i8*, i8** %230, align 8
  %232 = call i64 @strcmp(i8* %228, i8* %231)
  %233 = icmp eq i64 %232, 0
  br i1 %233, label %234, label %235

234:                                              ; preds = %227
  store i32 0, i32* %4, align 4
  br label %242

235:                                              ; preds = %227
  br label %236

236:                                              ; preds = %235, %226
  br label %237

237:                                              ; preds = %236
  %238 = load %struct.exclude_list_struct*, %struct.exclude_list_struct** %9, align 8
  %239 = getelementptr inbounds %struct.exclude_list_struct, %struct.exclude_list_struct* %238, i32 0, i32 2
  %240 = load %struct.exclude_list_struct*, %struct.exclude_list_struct** %239, align 8
  store %struct.exclude_list_struct* %240, %struct.exclude_list_struct** %9, align 8
  br label %201

241:                                              ; preds = %201
  store i32 1, i32* %4, align 4
  br label %242

242:                                              ; preds = %241, %234, %225, %194, %155, %134, %113, %85, %47
  %243 = load i32, i32* %4, align 4
  ret i32 %243
}

declare dso_local i8* @lbasename(i32) #1

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i32 @printf(i8*, i8*, %struct.TYPE_16__*, %struct.TYPE_18__*) #1

declare dso_local i64 @strncmp(i8*, i8*, i32) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i64 @strcasecmp(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

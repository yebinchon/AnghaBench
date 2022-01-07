; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/expat/lib/extr_xmlparse.c_doCdataSection.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/expat/lib/extr_xmlparse.c_doCdataSection.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i8*, i8*, i32*, %struct.TYPE_7__, i32, i32, i64, i32 (i32, i32*, i32)*, i32 (i32)*, %struct.TYPE_6__*, i32* }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_6__ = type { i8*, i8* }

@XML_ERROR_ABORTED = common dso_local global i32 0, align 4
@XML_ERROR_NONE = common dso_local global i32 0, align 4
@XML_CONVERT_COMPLETED = common dso_local global i32 0, align 4
@XML_CONVERT_INPUT_INCOMPLETE = common dso_local global i32 0, align 4
@XML_ERROR_INVALID_TOKEN = common dso_local global i32 0, align 4
@XML_ERROR_PARTIAL_CHAR = common dso_local global i32 0, align 4
@XML_ERROR_UNCLOSED_CDATA_SECTION = common dso_local global i32 0, align 4
@XML_ERROR_UNEXPECTED_STATE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_8__*, i32*, i8**, i8*, i8**, i32)* @doCdataSection to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @doCdataSection(%struct.TYPE_8__* %0, i32* %1, i8** %2, i8* %3, i8** %4, i32 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_8__*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i8**, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8**, align 8
  %13 = alloca i32, align 4
  %14 = alloca i8*, align 8
  %15 = alloca i8**, align 8
  %16 = alloca i8**, align 8
  %17 = alloca i8*, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32 (i32, i32*, i32)*, align 8
  %21 = alloca i32*, align 8
  %22 = alloca i32, align 4
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %8, align 8
  store i32* %1, i32** %9, align 8
  store i8** %2, i8*** %10, align 8
  store i8* %3, i8** %11, align 8
  store i8** %4, i8*** %12, align 8
  store i32 %5, i32* %13, align 4
  %23 = load i8**, i8*** %10, align 8
  %24 = load i8*, i8** %23, align 8
  store i8* %24, i8** %14, align 8
  %25 = load i32*, i32** %9, align 8
  %26 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %27 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %26, i32 0, i32 10
  %28 = load i32*, i32** %27, align 8
  %29 = icmp eq i32* %25, %28
  br i1 %29, label %30, label %37

30:                                               ; preds = %6
  %31 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %32 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %31, i32 0, i32 0
  store i8** %32, i8*** %15, align 8
  %33 = load i8*, i8** %14, align 8
  %34 = load i8**, i8*** %15, align 8
  store i8* %33, i8** %34, align 8
  %35 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %36 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %35, i32 0, i32 1
  store i8** %36, i8*** %16, align 8
  br label %46

37:                                               ; preds = %6
  %38 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %39 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %38, i32 0, i32 9
  %40 = load %struct.TYPE_6__*, %struct.TYPE_6__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %40, i32 0, i32 0
  store i8** %41, i8*** %15, align 8
  %42 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %43 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %42, i32 0, i32 9
  %44 = load %struct.TYPE_6__*, %struct.TYPE_6__** %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %44, i32 0, i32 1
  store i8** %45, i8*** %16, align 8
  br label %46

46:                                               ; preds = %37, %30
  %47 = load i8*, i8** %14, align 8
  %48 = load i8**, i8*** %15, align 8
  store i8* %47, i8** %48, align 8
  %49 = load i8**, i8*** %10, align 8
  store i8* null, i8** %49, align 8
  br label %50

50:                                               ; preds = %248, %46
  %51 = load i32*, i32** %9, align 8
  %52 = load i8*, i8** %14, align 8
  %53 = load i8*, i8** %11, align 8
  %54 = call i32 @XmlCdataSectionTok(i32* %51, i8* %52, i8* %53, i8** %17)
  store i32 %54, i32* %18, align 4
  %55 = load i8*, i8** %17, align 8
  %56 = load i8**, i8*** %16, align 8
  store i8* %55, i8** %56, align 8
  %57 = load i32, i32* %18, align 4
  switch i32 %57, label %230 [
    i32 134, label %58
    i32 132, label %97
    i32 133, label %123
    i32 131, label %208
    i32 128, label %212
    i32 129, label %221
    i32 130, label %221
  ]

58:                                               ; preds = %50
  %59 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %60 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %59, i32 0, i32 8
  %61 = load i32 (i32)*, i32 (i32)** %60, align 8
  %62 = icmp ne i32 (i32)* %61, null
  br i1 %62, label %63, label %71

63:                                               ; preds = %58
  %64 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %65 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %64, i32 0, i32 8
  %66 = load i32 (i32)*, i32 (i32)** %65, align 8
  %67 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %68 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %67, i32 0, i32 5
  %69 = load i32, i32* %68, align 8
  %70 = call i32 %66(i32 %69)
  br label %83

71:                                               ; preds = %58
  %72 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %73 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %72, i32 0, i32 4
  %74 = load i32, i32* %73, align 4
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %76, label %82

76:                                               ; preds = %71
  %77 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %78 = load i32*, i32** %9, align 8
  %79 = load i8*, i8** %14, align 8
  %80 = load i8*, i8** %17, align 8
  %81 = call i32 @reportDefault(%struct.TYPE_8__* %77, i32* %78, i8* %79, i8* %80)
  br label %82

82:                                               ; preds = %76, %71
  br label %83

83:                                               ; preds = %82, %63
  %84 = load i8*, i8** %17, align 8
  %85 = load i8**, i8*** %10, align 8
  store i8* %84, i8** %85, align 8
  %86 = load i8*, i8** %17, align 8
  %87 = load i8**, i8*** %12, align 8
  store i8* %86, i8** %87, align 8
  %88 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %89 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %88, i32 0, i32 3
  %90 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 8
  %92 = icmp eq i32 %91, 136
  br i1 %92, label %93, label %95

93:                                               ; preds = %83
  %94 = load i32, i32* @XML_ERROR_ABORTED, align 4
  store i32 %94, i32* %7, align 4
  br label %249

95:                                               ; preds = %83
  %96 = load i32, i32* @XML_ERROR_NONE, align 4
  store i32 %96, i32* %7, align 4
  br label %249

97:                                               ; preds = %50
  %98 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %99 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %98, i32 0, i32 7
  %100 = load i32 (i32, i32*, i32)*, i32 (i32, i32*, i32)** %99, align 8
  %101 = icmp ne i32 (i32, i32*, i32)* %100, null
  br i1 %101, label %102, label %110

102:                                              ; preds = %97
  store i32 10, i32* %19, align 4
  %103 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %104 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %103, i32 0, i32 7
  %105 = load i32 (i32, i32*, i32)*, i32 (i32, i32*, i32)** %104, align 8
  %106 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %107 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %106, i32 0, i32 5
  %108 = load i32, i32* %107, align 8
  %109 = call i32 %105(i32 %108, i32* %19, i32 1)
  br label %122

110:                                              ; preds = %97
  %111 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %112 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %111, i32 0, i32 4
  %113 = load i32, i32* %112, align 4
  %114 = icmp ne i32 %113, 0
  br i1 %114, label %115, label %121

115:                                              ; preds = %110
  %116 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %117 = load i32*, i32** %9, align 8
  %118 = load i8*, i8** %14, align 8
  %119 = load i8*, i8** %17, align 8
  %120 = call i32 @reportDefault(%struct.TYPE_8__* %116, i32* %117, i8* %118, i8* %119)
  br label %121

121:                                              ; preds = %115, %110
  br label %122

122:                                              ; preds = %121, %102
  br label %234

123:                                              ; preds = %50
  %124 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %125 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %124, i32 0, i32 7
  %126 = load i32 (i32, i32*, i32)*, i32 (i32, i32*, i32)** %125, align 8
  store i32 (i32, i32*, i32)* %126, i32 (i32, i32*, i32)** %20, align 8
  %127 = load i32 (i32, i32*, i32)*, i32 (i32, i32*, i32)** %20, align 8
  %128 = icmp ne i32 (i32, i32*, i32)* %127, null
  br i1 %128, label %129, label %195

129:                                              ; preds = %123
  %130 = load i32*, i32** %9, align 8
  %131 = load i8*, i8** %14, align 8
  %132 = call i32 @MUST_CONVERT(i32* %130, i8* %131)
  %133 = icmp ne i32 %132, 0
  br i1 %133, label %134, label %177

134:                                              ; preds = %129
  br label %135

135:                                              ; preds = %173, %134
  %136 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %137 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %136, i32 0, i32 2
  %138 = load i32*, i32** %137, align 8
  store i32* %138, i32** %21, align 8
  %139 = load i32*, i32** %9, align 8
  %140 = load i8*, i8** %17, align 8
  %141 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %142 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %141, i32 0, i32 6
  %143 = load i64, i64* %142, align 8
  %144 = inttoptr i64 %143 to i32*
  %145 = call i32 @XmlConvert(i32* %139, i8** %14, i8* %140, i32** %21, i32* %144)
  store i32 %145, i32* %22, align 4
  %146 = load i8*, i8** %17, align 8
  %147 = load i8**, i8*** %16, align 8
  store i8* %146, i8** %147, align 8
  %148 = load i32 (i32, i32*, i32)*, i32 (i32, i32*, i32)** %20, align 8
  %149 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %150 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %149, i32 0, i32 5
  %151 = load i32, i32* %150, align 8
  %152 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %153 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %152, i32 0, i32 2
  %154 = load i32*, i32** %153, align 8
  %155 = load i32*, i32** %21, align 8
  %156 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %157 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %156, i32 0, i32 2
  %158 = load i32*, i32** %157, align 8
  %159 = ptrtoint i32* %155 to i64
  %160 = ptrtoint i32* %158 to i64
  %161 = sub i64 %159, %160
  %162 = sdiv exact i64 %161, 4
  %163 = trunc i64 %162 to i32
  %164 = call i32 %148(i32 %151, i32* %154, i32 %163)
  %165 = load i32, i32* %22, align 4
  %166 = load i32, i32* @XML_CONVERT_COMPLETED, align 4
  %167 = icmp eq i32 %165, %166
  br i1 %167, label %172, label %168

168:                                              ; preds = %135
  %169 = load i32, i32* %22, align 4
  %170 = load i32, i32* @XML_CONVERT_INPUT_INCOMPLETE, align 4
  %171 = icmp eq i32 %169, %170
  br i1 %171, label %172, label %173

172:                                              ; preds = %168, %135
  br label %176

173:                                              ; preds = %168
  %174 = load i8*, i8** %14, align 8
  %175 = load i8**, i8*** %15, align 8
  store i8* %174, i8** %175, align 8
  br label %135

176:                                              ; preds = %172
  br label %194

177:                                              ; preds = %129
  %178 = load i32 (i32, i32*, i32)*, i32 (i32, i32*, i32)** %20, align 8
  %179 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %180 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %179, i32 0, i32 5
  %181 = load i32, i32* %180, align 8
  %182 = load i8*, i8** %14, align 8
  %183 = bitcast i8* %182 to i32*
  %184 = load i8*, i8** %17, align 8
  %185 = bitcast i8* %184 to i32*
  %186 = load i8*, i8** %14, align 8
  %187 = bitcast i8* %186 to i32*
  %188 = ptrtoint i32* %185 to i64
  %189 = ptrtoint i32* %187 to i64
  %190 = sub i64 %188, %189
  %191 = sdiv exact i64 %190, 4
  %192 = trunc i64 %191 to i32
  %193 = call i32 %178(i32 %181, i32* %183, i32 %192)
  br label %194

194:                                              ; preds = %177, %176
  br label %207

195:                                              ; preds = %123
  %196 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %197 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %196, i32 0, i32 4
  %198 = load i32, i32* %197, align 4
  %199 = icmp ne i32 %198, 0
  br i1 %199, label %200, label %206

200:                                              ; preds = %195
  %201 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %202 = load i32*, i32** %9, align 8
  %203 = load i8*, i8** %14, align 8
  %204 = load i8*, i8** %17, align 8
  %205 = call i32 @reportDefault(%struct.TYPE_8__* %201, i32* %202, i8* %203, i8* %204)
  br label %206

206:                                              ; preds = %200, %195
  br label %207

207:                                              ; preds = %206, %194
  br label %234

208:                                              ; preds = %50
  %209 = load i8*, i8** %17, align 8
  %210 = load i8**, i8*** %15, align 8
  store i8* %209, i8** %210, align 8
  %211 = load i32, i32* @XML_ERROR_INVALID_TOKEN, align 4
  store i32 %211, i32* %7, align 4
  br label %249

212:                                              ; preds = %50
  %213 = load i32, i32* %13, align 4
  %214 = icmp ne i32 %213, 0
  br i1 %214, label %215, label %219

215:                                              ; preds = %212
  %216 = load i8*, i8** %14, align 8
  %217 = load i8**, i8*** %12, align 8
  store i8* %216, i8** %217, align 8
  %218 = load i32, i32* @XML_ERROR_NONE, align 4
  store i32 %218, i32* %7, align 4
  br label %249

219:                                              ; preds = %212
  %220 = load i32, i32* @XML_ERROR_PARTIAL_CHAR, align 4
  store i32 %220, i32* %7, align 4
  br label %249

221:                                              ; preds = %50, %50
  %222 = load i32, i32* %13, align 4
  %223 = icmp ne i32 %222, 0
  br i1 %223, label %224, label %228

224:                                              ; preds = %221
  %225 = load i8*, i8** %14, align 8
  %226 = load i8**, i8*** %12, align 8
  store i8* %225, i8** %226, align 8
  %227 = load i32, i32* @XML_ERROR_NONE, align 4
  store i32 %227, i32* %7, align 4
  br label %249

228:                                              ; preds = %221
  %229 = load i32, i32* @XML_ERROR_UNCLOSED_CDATA_SECTION, align 4
  store i32 %229, i32* %7, align 4
  br label %249

230:                                              ; preds = %50
  %231 = load i8*, i8** %17, align 8
  %232 = load i8**, i8*** %15, align 8
  store i8* %231, i8** %232, align 8
  %233 = load i32, i32* @XML_ERROR_UNEXPECTED_STATE, align 4
  store i32 %233, i32* %7, align 4
  br label %249

234:                                              ; preds = %207, %122
  %235 = load i8*, i8** %17, align 8
  store i8* %235, i8** %14, align 8
  %236 = load i8**, i8*** %15, align 8
  store i8* %235, i8** %236, align 8
  %237 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %238 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %237, i32 0, i32 3
  %239 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %238, i32 0, i32 0
  %240 = load i32, i32* %239, align 8
  switch i32 %240, label %247 [
    i32 135, label %241
    i32 136, label %245
  ]

241:                                              ; preds = %234
  %242 = load i8*, i8** %17, align 8
  %243 = load i8**, i8*** %12, align 8
  store i8* %242, i8** %243, align 8
  %244 = load i32, i32* @XML_ERROR_NONE, align 4
  store i32 %244, i32* %7, align 4
  br label %249

245:                                              ; preds = %234
  %246 = load i32, i32* @XML_ERROR_ABORTED, align 4
  store i32 %246, i32* %7, align 4
  br label %249

247:                                              ; preds = %234
  br label %248

248:                                              ; preds = %247
  br label %50

249:                                              ; preds = %245, %241, %230, %228, %224, %219, %215, %208, %95, %93
  %250 = load i32, i32* %7, align 4
  ret i32 %250
}

declare dso_local i32 @XmlCdataSectionTok(i32*, i8*, i8*, i8**) #1

declare dso_local i32 @reportDefault(%struct.TYPE_8__*, i32*, i8*, i8*) #1

declare dso_local i32 @MUST_CONVERT(i32*, i8*) #1

declare dso_local i32 @XmlConvert(i32*, i8**, i8*, i32**, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

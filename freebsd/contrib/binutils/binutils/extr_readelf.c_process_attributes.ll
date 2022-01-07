; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/binutils/extr_readelf.c_process_attributes.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/binutils/extr_readelf.c_process_attributes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i64, i32 }
%struct.TYPE_5__ = type { i32 }

@section_headers = common dso_local global %struct.TYPE_4__* null, align 8
@elf_header = common dso_local global %struct.TYPE_5__ zeroinitializer, align 4
@SHT_GNU_ATTRIBUTES = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [11 x i8] c"attributes\00", align 1
@.str.1 = private unnamed_addr constant [37 x i8] c"ERROR: Bad section length (%d > %d)\0A\00", align 1
@.str.2 = private unnamed_addr constant [23 x i8] c"Attribute Section: %s\0A\00", align 1
@TRUE = common dso_local global i64 0, align 8
@FALSE = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [4 x i8] c"gnu\00", align 1
@.str.4 = private unnamed_addr constant [40 x i8] c"ERROR: Bad subsection length (%d > %d)\0A\00", align 1
@.str.5 = private unnamed_addr constant [17 x i8] c"File Attributes\0A\00", align 1
@.str.6 = private unnamed_addr constant [20 x i8] c"Section Attributes:\00", align 1
@.str.7 = private unnamed_addr constant [19 x i8] c"Symbol Attributes:\00", align 1
@.str.8 = private unnamed_addr constant [4 x i8] c" %d\00", align 1
@.str.9 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.10 = private unnamed_addr constant [17 x i8] c"Unknown tag: %d\0A\00", align 1
@.str.11 = private unnamed_addr constant [28 x i8] c"  Unknown section contexts\0A\00", align 1
@.str.12 = private unnamed_addr constant [21 x i8] c"Unknown format '%c'\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i8*, i32, i8* (i8*)*, i8* (i8*, i32)*)* @process_attributes to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @process_attributes(i32* %0, i8* %1, i32 %2, i8* (i8*)* %3, i8* (i8*, i32)* %4) #0 {
  %6 = alloca i32*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8* (i8*)*, align 8
  %10 = alloca i8* (i8*, i32)*, align 8
  %11 = alloca %struct.TYPE_4__*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i64, align 8
  %20 = alloca i64, align 8
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i64, align 8
  %24 = alloca i32, align 4
  store i32* %0, i32** %6, align 8
  store i8* %1, i8** %7, align 8
  store i32 %2, i32* %8, align 4
  store i8* (i8*)* %3, i8* (i8*)** %9, align 8
  store i8* (i8*, i32)* %4, i8* (i8*, i32)** %10, align 8
  store i32 0, i32* %17, align 4
  %25 = load %struct.TYPE_4__*, %struct.TYPE_4__** @section_headers, align 8
  store %struct.TYPE_4__* %25, %struct.TYPE_4__** %11, align 8
  br label %26

26:                                               ; preds = %226, %5
  %27 = load i32, i32* %17, align 4
  %28 = load i32, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @elf_header, i32 0, i32 0), align 4
  %29 = icmp ult i32 %27, %28
  br i1 %29, label %30, label %231

30:                                               ; preds = %26
  %31 = load %struct.TYPE_4__*, %struct.TYPE_4__** %11, align 8
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = load i32, i32* %8, align 4
  %35 = icmp ne i32 %33, %34
  br i1 %35, label %36, label %43

36:                                               ; preds = %30
  %37 = load %struct.TYPE_4__*, %struct.TYPE_4__** %11, align 8
  %38 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = load i32, i32* @SHT_GNU_ATTRIBUTES, align 4
  %41 = icmp ne i32 %39, %40
  br i1 %41, label %42, label %43

42:                                               ; preds = %36
  br label %226

43:                                               ; preds = %36, %30
  %44 = load i32*, i32** %6, align 8
  %45 = load %struct.TYPE_4__*, %struct.TYPE_4__** %11, align 8
  %46 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %45, i32 0, i32 2
  %47 = load i32, i32* %46, align 8
  %48 = load %struct.TYPE_4__*, %struct.TYPE_4__** %11, align 8
  %49 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %48, i32 0, i32 1
  %50 = load i64, i64* %49, align 8
  %51 = call i8* @_(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0))
  %52 = call i8* @get_data(i32* null, i32* %44, i32 %47, i32 1, i64 %50, i8* %51)
  store i8* %52, i8** %12, align 8
  %53 = load i8*, i8** %12, align 8
  %54 = icmp ne i8* %53, null
  br i1 %54, label %56, label %55

55:                                               ; preds = %43
  br label %226

56:                                               ; preds = %43
  %57 = load i8*, i8** %12, align 8
  store i8* %57, i8** %13, align 8
  %58 = load i8*, i8** %13, align 8
  %59 = load i8, i8* %58, align 1
  %60 = zext i8 %59 to i32
  %61 = icmp eq i32 %60, 65
  br i1 %61, label %62, label %217

62:                                               ; preds = %56
  %63 = load %struct.TYPE_4__*, %struct.TYPE_4__** %11, align 8
  %64 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %63, i32 0, i32 1
  %65 = load i64, i64* %64, align 8
  %66 = sub nsw i64 %65, 1
  store i64 %66, i64* %16, align 8
  %67 = load i8*, i8** %13, align 8
  %68 = getelementptr inbounds i8, i8* %67, i32 1
  store i8* %68, i8** %13, align 8
  br label %69

69:                                               ; preds = %215, %62
  %70 = load i64, i64* %16, align 8
  %71 = icmp sgt i64 %70, 0
  br i1 %71, label %72, label %216

72:                                               ; preds = %69
  %73 = load i8*, i8** %13, align 8
  %74 = call i64 @byte_get(i8* %73, i32 4)
  store i64 %74, i64* %15, align 8
  %75 = load i8*, i8** %13, align 8
  %76 = getelementptr inbounds i8, i8* %75, i64 4
  store i8* %76, i8** %13, align 8
  %77 = load i64, i64* %15, align 8
  %78 = load i64, i64* %16, align 8
  %79 = icmp sgt i64 %77, %78
  br i1 %79, label %80, label %88

80:                                               ; preds = %72
  %81 = call i8* @_(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1, i64 0, i64 0))
  %82 = load i64, i64* %15, align 8
  %83 = trunc i64 %82 to i32
  %84 = load i64, i64* %16, align 8
  %85 = trunc i64 %84 to i32
  %86 = call i32 (i8*, ...) @printf(i8* %81, i32 %83, i32 %85)
  %87 = load i64, i64* %16, align 8
  store i64 %87, i64* %15, align 8
  br label %88

88:                                               ; preds = %80, %72
  %89 = load i64, i64* %15, align 8
  %90 = load i64, i64* %16, align 8
  %91 = sub nsw i64 %90, %89
  store i64 %91, i64* %16, align 8
  %92 = load i8*, i8** %13, align 8
  %93 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.2, i64 0, i64 0), i8* %92)
  %94 = load i8*, i8** %7, align 8
  %95 = icmp ne i8* %94, null
  br i1 %95, label %96, label %103

96:                                               ; preds = %88
  %97 = load i8*, i8** %13, align 8
  %98 = load i8*, i8** %7, align 8
  %99 = call i64 @strcmp(i8* %97, i8* %98)
  %100 = icmp eq i64 %99, 0
  br i1 %100, label %101, label %103

101:                                              ; preds = %96
  %102 = load i64, i64* @TRUE, align 8
  store i64 %102, i64* %19, align 8
  br label %105

103:                                              ; preds = %96, %88
  %104 = load i64, i64* @FALSE, align 8
  store i64 %104, i64* %19, align 8
  br label %105

105:                                              ; preds = %103, %101
  %106 = load i8*, i8** %13, align 8
  %107 = call i64 @strcmp(i8* %106, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0))
  %108 = icmp eq i64 %107, 0
  br i1 %108, label %109, label %111

109:                                              ; preds = %105
  %110 = load i64, i64* @TRUE, align 8
  store i64 %110, i64* %20, align 8
  br label %113

111:                                              ; preds = %105
  %112 = load i64, i64* @FALSE, align 8
  store i64 %112, i64* %20, align 8
  br label %113

113:                                              ; preds = %111, %109
  %114 = load i8*, i8** %13, align 8
  %115 = call i32 @strlen(i8* %114)
  %116 = add nsw i32 %115, 1
  store i32 %116, i32* %18, align 4
  %117 = load i32, i32* %18, align 4
  %118 = load i8*, i8** %13, align 8
  %119 = sext i32 %117 to i64
  %120 = getelementptr inbounds i8, i8* %118, i64 %119
  store i8* %120, i8** %13, align 8
  %121 = load i32, i32* %18, align 4
  %122 = add nsw i32 %121, 4
  %123 = sext i32 %122 to i64
  %124 = load i64, i64* %15, align 8
  %125 = sub nsw i64 %124, %123
  store i64 %125, i64* %15, align 8
  br label %126

126:                                              ; preds = %214, %113
  %127 = load i64, i64* %15, align 8
  %128 = icmp sgt i64 %127, 0
  br i1 %128, label %129, label %215

129:                                              ; preds = %126
  %130 = load i8*, i8** %13, align 8
  %131 = getelementptr inbounds i8, i8* %130, i32 1
  store i8* %131, i8** %13, align 8
  %132 = load i8, i8* %130, align 1
  %133 = zext i8 %132 to i32
  store i32 %133, i32* %21, align 4
  %134 = load i8*, i8** %13, align 8
  %135 = call i64 @byte_get(i8* %134, i32 4)
  store i64 %135, i64* %23, align 8
  %136 = load i64, i64* %23, align 8
  %137 = load i64, i64* %15, align 8
  %138 = icmp sgt i64 %136, %137
  br i1 %138, label %139, label %147

139:                                              ; preds = %129
  %140 = call i8* @_(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.4, i64 0, i64 0))
  %141 = load i64, i64* %23, align 8
  %142 = trunc i64 %141 to i32
  %143 = load i64, i64* %15, align 8
  %144 = trunc i64 %143 to i32
  %145 = call i32 (i8*, ...) @printf(i8* %140, i32 %142, i32 %144)
  %146 = load i64, i64* %15, align 8
  store i64 %146, i64* %23, align 8
  br label %147

147:                                              ; preds = %139, %129
  %148 = load i64, i64* %23, align 8
  %149 = load i64, i64* %15, align 8
  %150 = sub nsw i64 %149, %148
  store i64 %150, i64* %15, align 8
  %151 = load i8*, i8** %13, align 8
  %152 = load i64, i64* %23, align 8
  %153 = getelementptr inbounds i8, i8* %151, i64 %152
  %154 = getelementptr inbounds i8, i8* %153, i64 -1
  store i8* %154, i8** %14, align 8
  %155 = load i8*, i8** %13, align 8
  %156 = getelementptr inbounds i8, i8* %155, i64 4
  store i8* %156, i8** %13, align 8
  %157 = load i32, i32* %21, align 4
  switch i32 %157, label %180 [
    i32 1, label %158
    i32 2, label %160
    i32 3, label %162
  ]

158:                                              ; preds = %147
  %159 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.5, i64 0, i64 0))
  br label %184

160:                                              ; preds = %147
  %161 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.6, i64 0, i64 0))
  br label %164

162:                                              ; preds = %147
  %163 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.7, i64 0, i64 0))
  br label %164

164:                                              ; preds = %162, %160
  br label %165

165:                                              ; preds = %175, %164
  %166 = load i8*, i8** %13, align 8
  %167 = call i32 @read_uleb128(i8* %166, i32* %24)
  store i32 %167, i32* %22, align 4
  %168 = load i32, i32* %24, align 4
  %169 = load i8*, i8** %13, align 8
  %170 = zext i32 %168 to i64
  %171 = getelementptr inbounds i8, i8* %169, i64 %170
  store i8* %171, i8** %13, align 8
  %172 = load i32, i32* %22, align 4
  %173 = icmp eq i32 %172, 0
  br i1 %173, label %174, label %175

174:                                              ; preds = %165
  br label %178

175:                                              ; preds = %165
  %176 = load i32, i32* %22, align 4
  %177 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.8, i64 0, i64 0), i32 %176)
  br label %165

178:                                              ; preds = %174
  %179 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.9, i64 0, i64 0))
  br label %184

180:                                              ; preds = %147
  %181 = load i32, i32* %21, align 4
  %182 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.10, i64 0, i64 0), i32 %181)
  %183 = load i64, i64* @FALSE, align 8
  store i64 %183, i64* %19, align 8
  br label %184

184:                                              ; preds = %180, %178, %158
  %185 = load i64, i64* %19, align 8
  %186 = icmp ne i64 %185, 0
  br i1 %186, label %187, label %197

187:                                              ; preds = %184
  br label %188

188:                                              ; preds = %192, %187
  %189 = load i8*, i8** %13, align 8
  %190 = load i8*, i8** %14, align 8
  %191 = icmp ult i8* %189, %190
  br i1 %191, label %192, label %196

192:                                              ; preds = %188
  %193 = load i8* (i8*)*, i8* (i8*)** %9, align 8
  %194 = load i8*, i8** %13, align 8
  %195 = call i8* %193(i8* %194)
  store i8* %195, i8** %13, align 8
  br label %188

196:                                              ; preds = %188
  br label %214

197:                                              ; preds = %184
  %198 = load i64, i64* %20, align 8
  %199 = icmp ne i64 %198, 0
  br i1 %199, label %200, label %210

200:                                              ; preds = %197
  br label %201

201:                                              ; preds = %205, %200
  %202 = load i8*, i8** %13, align 8
  %203 = load i8*, i8** %14, align 8
  %204 = icmp ult i8* %202, %203
  br i1 %204, label %205, label %209

205:                                              ; preds = %201
  %206 = load i8*, i8** %13, align 8
  %207 = load i8* (i8*, i32)*, i8* (i8*, i32)** %10, align 8
  %208 = call i8* @display_gnu_attribute(i8* %206, i8* (i8*, i32)* %207)
  store i8* %208, i8** %13, align 8
  br label %201

209:                                              ; preds = %201
  br label %213

210:                                              ; preds = %197
  %211 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.11, i64 0, i64 0))
  %212 = load i8*, i8** %14, align 8
  store i8* %212, i8** %13, align 8
  br label %213

213:                                              ; preds = %210, %209
  br label %214

214:                                              ; preds = %213, %196
  br label %126

215:                                              ; preds = %126
  br label %69

216:                                              ; preds = %69
  br label %223

217:                                              ; preds = %56
  %218 = call i8* @_(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.12, i64 0, i64 0))
  %219 = load i8*, i8** %13, align 8
  %220 = load i8, i8* %219, align 1
  %221 = zext i8 %220 to i32
  %222 = call i32 (i8*, ...) @printf(i8* %218, i32 %221)
  br label %223

223:                                              ; preds = %217, %216
  %224 = load i8*, i8** %12, align 8
  %225 = call i32 @free(i8* %224)
  br label %226

226:                                              ; preds = %223, %55, %42
  %227 = load i32, i32* %17, align 4
  %228 = add i32 %227, 1
  store i32 %228, i32* %17, align 4
  %229 = load %struct.TYPE_4__*, %struct.TYPE_4__** %11, align 8
  %230 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %229, i32 1
  store %struct.TYPE_4__* %230, %struct.TYPE_4__** %11, align 8
  br label %26

231:                                              ; preds = %26
  ret i32 1
}

declare dso_local i8* @get_data(i32*, i32*, i32, i32, i64, i8*) #1

declare dso_local i8* @_(i8*) #1

declare dso_local i64 @byte_get(i8*, i32) #1

declare dso_local i32 @printf(i8*, ...) #1

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @read_uleb128(i8*, i32*) #1

declare dso_local i8* @display_gnu_attribute(i8*, i8* (i8*, i32)*) #1

declare dso_local i32 @free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

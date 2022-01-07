; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/elftoolchain/readelf/extr_readelf.c_dump_attributes.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/elftoolchain/readelf/extr_readelf.c_dump_attributes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.readelf = type { i64, i64 (i8**, i32)*, %struct.TYPE_4__, %struct.section* }
%struct.TYPE_4__ = type { i64 }
%struct.section = type { i64, i32 }
%struct.TYPE_5__ = type { i32, i8* }

@SHT_GNU_ATTRIBUTES = common dso_local global i64 0, align 8
@EM_ARM = common dso_local global i64 0, align 8
@SHT_LOPROC = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [23 x i8] c"elf_rawdata failed: %s\00", align 1
@.str.1 = private unnamed_addr constant [38 x i8] c"Unknown Attribute Section Format: %c\0A\00", align 1
@.str.2 = private unnamed_addr constant [35 x i8] c"truncated attribute section length\00", align 1
@.str.3 = private unnamed_addr constant [33 x i8] c"invalid attribute section length\00", align 1
@.str.4 = private unnamed_addr constant [31 x i8] c"invalid attribute section name\00", align 1
@.str.5 = private unnamed_addr constant [23 x i8] c"Attribute Section: %s\0A\00", align 1
@.str.6 = private unnamed_addr constant [37 x i8] c"invalid attribute sub-section length\00", align 1
@.str.7 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.8 = private unnamed_addr constant [5 x i8] c" %ju\00", align 1
@EM_MIPS = common dso_local global i64 0, align 8
@EM_MIPS_RS3_LE = common dso_local global i64 0, align 8
@EM_PPC = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.readelf*)* @dump_attributes to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dump_attributes(%struct.readelf* %0) #0 {
  %2 = alloca %struct.readelf*, align 8
  %3 = alloca %struct.section*, align 8
  %4 = alloca %struct.TYPE_5__*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.readelf* %0, %struct.readelf** %2, align 8
  store i32 0, i32* %14, align 4
  br label %16

16:                                               ; preds = %248, %1
  %17 = load i32, i32* %14, align 4
  %18 = sext i32 %17 to i64
  %19 = load %struct.readelf*, %struct.readelf** %2, align 8
  %20 = getelementptr inbounds %struct.readelf, %struct.readelf* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = icmp ult i64 %18, %21
  br i1 %22, label %23, label %251

23:                                               ; preds = %16
  %24 = load %struct.readelf*, %struct.readelf** %2, align 8
  %25 = getelementptr inbounds %struct.readelf, %struct.readelf* %24, i32 0, i32 3
  %26 = load %struct.section*, %struct.section** %25, align 8
  %27 = load i32, i32* %14, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds %struct.section, %struct.section* %26, i64 %28
  store %struct.section* %29, %struct.section** %3, align 8
  %30 = load %struct.section*, %struct.section** %3, align 8
  %31 = getelementptr inbounds %struct.section, %struct.section* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = load i64, i64* @SHT_GNU_ATTRIBUTES, align 8
  %34 = icmp ne i64 %32, %33
  br i1 %34, label %35, label %50

35:                                               ; preds = %23
  %36 = load %struct.readelf*, %struct.readelf** %2, align 8
  %37 = getelementptr inbounds %struct.readelf, %struct.readelf* %36, i32 0, i32 2
  %38 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = load i64, i64* @EM_ARM, align 8
  %41 = icmp ne i64 %39, %40
  br i1 %41, label %49, label %42

42:                                               ; preds = %35
  %43 = load %struct.section*, %struct.section** %3, align 8
  %44 = getelementptr inbounds %struct.section, %struct.section* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = load i64, i64* @SHT_LOPROC, align 8
  %47 = add nsw i64 %46, 3
  %48 = icmp ne i64 %45, %47
  br i1 %48, label %49, label %50

49:                                               ; preds = %42, %35
  br label %248

50:                                               ; preds = %42, %23
  %51 = call i32 (...) @elf_errno()
  %52 = load %struct.section*, %struct.section** %3, align 8
  %53 = getelementptr inbounds %struct.section, %struct.section* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 8
  %55 = call %struct.TYPE_5__* @elf_rawdata(i32 %54, i32* null)
  store %struct.TYPE_5__* %55, %struct.TYPE_5__** %4, align 8
  %56 = icmp eq %struct.TYPE_5__* %55, null
  br i1 %56, label %57, label %66

57:                                               ; preds = %50
  %58 = call i32 (...) @elf_errno()
  store i32 %58, i32* %15, align 4
  %59 = load i32, i32* %15, align 4
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %65

61:                                               ; preds = %57
  %62 = load i32, i32* %15, align 4
  %63 = call i32 @elf_errmsg(i32 %62)
  %64 = call i32 (i8*, ...) @warnx(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 %63)
  br label %65

65:                                               ; preds = %61, %57
  br label %248

66:                                               ; preds = %50
  %67 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %68 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 8
  %70 = icmp sle i32 %69, 0
  br i1 %70, label %71, label %72

71:                                               ; preds = %66
  br label %248

72:                                               ; preds = %66
  %73 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %74 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %73, i32 0, i32 1
  %75 = load i8*, i8** %74, align 8
  store i8* %75, i8** %5, align 8
  %76 = load i8*, i8** %5, align 8
  %77 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %78 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 8
  %80 = sext i32 %79 to i64
  %81 = getelementptr inbounds i8, i8* %76, i64 %80
  store i8* %81, i8** %6, align 8
  %82 = load i8*, i8** %5, align 8
  %83 = load i8, i8* %82, align 1
  %84 = sext i8 %83 to i32
  %85 = icmp ne i32 %84, 65
  br i1 %85, label %86, label %91

86:                                               ; preds = %72
  %87 = load i8*, i8** %5, align 8
  %88 = load i8, i8* %87, align 1
  %89 = sext i8 %88 to i32
  %90 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.1, i64 0, i64 0), i32 %89)
  br label %248

91:                                               ; preds = %72
  %92 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %93 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 8
  %95 = sub nsw i32 %94, 1
  %96 = sext i32 %95 to i64
  store i64 %96, i64* %8, align 8
  %97 = load i8*, i8** %5, align 8
  %98 = getelementptr inbounds i8, i8* %97, i32 1
  store i8* %98, i8** %5, align 8
  br label %99

99:                                               ; preds = %246, %91
  %100 = load i64, i64* %8, align 8
  %101 = icmp ugt i64 %100, 0
  br i1 %101, label %102, label %247

102:                                              ; preds = %99
  %103 = load i64, i64* %8, align 8
  %104 = icmp ult i64 %103, 4
  br i1 %104, label %105, label %107

105:                                              ; preds = %102
  %106 = call i32 (i8*, ...) @warnx(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.2, i64 0, i64 0))
  br label %251

107:                                              ; preds = %102
  %108 = load %struct.readelf*, %struct.readelf** %2, align 8
  %109 = getelementptr inbounds %struct.readelf, %struct.readelf* %108, i32 0, i32 1
  %110 = load i64 (i8**, i32)*, i64 (i8**, i32)** %109, align 8
  %111 = call i64 %110(i8** %5, i32 4)
  store i64 %111, i64* %9, align 8
  %112 = load i64, i64* %9, align 8
  %113 = load i64, i64* %8, align 8
  %114 = icmp ugt i64 %112, %113
  br i1 %114, label %115, label %117

115:                                              ; preds = %107
  %116 = call i32 (i8*, ...) @warnx(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.3, i64 0, i64 0))
  br label %251

117:                                              ; preds = %107
  %118 = load i64, i64* %9, align 8
  %119 = load i64, i64* %8, align 8
  %120 = sub i64 %119, %118
  store i64 %120, i64* %8, align 8
  %121 = load i8*, i8** %5, align 8
  %122 = call i32 @strlen(i8* %121)
  %123 = add nsw i32 %122, 1
  %124 = sext i32 %123 to i64
  store i64 %124, i64* %10, align 8
  %125 = load i64, i64* %10, align 8
  %126 = add i64 %125, 4
  %127 = load i64, i64* %9, align 8
  %128 = icmp ugt i64 %126, %127
  br i1 %128, label %129, label %131

129:                                              ; preds = %117
  %130 = call i32 (i8*, ...) @warnx(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.4, i64 0, i64 0))
  br label %251

131:                                              ; preds = %117
  %132 = load i8*, i8** %5, align 8
  %133 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.5, i64 0, i64 0), i8* %132)
  %134 = load i64, i64* %10, align 8
  %135 = load i8*, i8** %5, align 8
  %136 = getelementptr inbounds i8, i8* %135, i64 %134
  store i8* %136, i8** %5, align 8
  %137 = load i64, i64* %10, align 8
  %138 = add i64 %137, 4
  %139 = load i64, i64* %9, align 8
  %140 = sub i64 %139, %138
  store i64 %140, i64* %9, align 8
  br label %141

141:                                              ; preds = %242, %131
  %142 = load i64, i64* %9, align 8
  %143 = icmp ugt i64 %142, 0
  br i1 %143, label %144, label %246

144:                                              ; preds = %141
  %145 = load i8*, i8** %5, align 8
  store i8* %145, i8** %7, align 8
  %146 = load i8*, i8** %5, align 8
  %147 = getelementptr inbounds i8, i8* %146, i32 1
  store i8* %147, i8** %5, align 8
  %148 = load i8, i8* %146, align 1
  %149 = sext i8 %148 to i32
  store i32 %149, i32* %13, align 4
  %150 = load %struct.readelf*, %struct.readelf** %2, align 8
  %151 = getelementptr inbounds %struct.readelf, %struct.readelf* %150, i32 0, i32 1
  %152 = load i64 (i8**, i32)*, i64 (i8**, i32)** %151, align 8
  %153 = call i64 %152(i8** %5, i32 4)
  store i64 %153, i64* %11, align 8
  %154 = load i64, i64* %11, align 8
  %155 = load i64, i64* %9, align 8
  %156 = icmp ugt i64 %154, %155
  br i1 %156, label %157, label %159

157:                                              ; preds = %144
  %158 = call i32 (i8*, ...) @warnx(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.6, i64 0, i64 0))
  br label %251

159:                                              ; preds = %144
  %160 = load i64, i64* %11, align 8
  %161 = load i64, i64* %9, align 8
  %162 = sub i64 %161, %160
  store i64 %162, i64* %9, align 8
  %163 = load i32, i32* %13, align 4
  %164 = call i8* @top_tag(i32 %163)
  %165 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.7, i64 0, i64 0), i8* %164)
  %166 = load i32, i32* %13, align 4
  %167 = icmp eq i32 %166, 2
  br i1 %167, label %171, label %168

168:                                              ; preds = %159
  %169 = load i32, i32* %13, align 4
  %170 = icmp eq i32 %169, 3
  br i1 %170, label %171, label %184

171:                                              ; preds = %168, %159
  %172 = call i32 @putchar(i8 signext 58)
  br label %173

173:                                              ; preds = %179, %171
  %174 = load i8*, i8** %6, align 8
  %175 = call i64 @_decode_uleb128(i8** %5, i8* %174)
  store i64 %175, i64* %12, align 8
  %176 = load i64, i64* %12, align 8
  %177 = icmp eq i64 %176, 0
  br i1 %177, label %178, label %179

178:                                              ; preds = %173
  br label %183

179:                                              ; preds = %173
  %180 = load i64, i64* %12, align 8
  %181 = inttoptr i64 %180 to i8*
  %182 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.8, i64 0, i64 0), i8* %181)
  br label %173

183:                                              ; preds = %178
  br label %184

184:                                              ; preds = %183, %168
  %185 = call i32 @putchar(i8 signext 10)
  %186 = load %struct.readelf*, %struct.readelf** %2, align 8
  %187 = getelementptr inbounds %struct.readelf, %struct.readelf* %186, i32 0, i32 2
  %188 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %187, i32 0, i32 0
  %189 = load i64, i64* %188, align 8
  %190 = load i64, i64* @EM_ARM, align 8
  %191 = icmp eq i64 %189, %190
  br i1 %191, label %192, label %206

192:                                              ; preds = %184
  %193 = load %struct.section*, %struct.section** %3, align 8
  %194 = getelementptr inbounds %struct.section, %struct.section* %193, i32 0, i32 0
  %195 = load i64, i64* %194, align 8
  %196 = load i64, i64* @SHT_LOPROC, align 8
  %197 = add nsw i64 %196, 3
  %198 = icmp eq i64 %195, %197
  br i1 %198, label %199, label %206

199:                                              ; preds = %192
  %200 = load %struct.readelf*, %struct.readelf** %2, align 8
  %201 = load i8*, i8** %5, align 8
  %202 = load i8*, i8** %7, align 8
  %203 = load i64, i64* %11, align 8
  %204 = getelementptr inbounds i8, i8* %202, i64 %203
  %205 = call i32 @dump_arm_attributes(%struct.readelf* %200, i8* %201, i8* %204)
  br label %242

206:                                              ; preds = %192, %184
  %207 = load %struct.readelf*, %struct.readelf** %2, align 8
  %208 = getelementptr inbounds %struct.readelf, %struct.readelf* %207, i32 0, i32 2
  %209 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %208, i32 0, i32 0
  %210 = load i64, i64* %209, align 8
  %211 = load i64, i64* @EM_MIPS, align 8
  %212 = icmp eq i64 %210, %211
  br i1 %212, label %220, label %213

213:                                              ; preds = %206
  %214 = load %struct.readelf*, %struct.readelf** %2, align 8
  %215 = getelementptr inbounds %struct.readelf, %struct.readelf* %214, i32 0, i32 2
  %216 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %215, i32 0, i32 0
  %217 = load i64, i64* %216, align 8
  %218 = load i64, i64* @EM_MIPS_RS3_LE, align 8
  %219 = icmp eq i64 %217, %218
  br i1 %219, label %220, label %227

220:                                              ; preds = %213, %206
  %221 = load %struct.readelf*, %struct.readelf** %2, align 8
  %222 = load i8*, i8** %5, align 8
  %223 = load i8*, i8** %7, align 8
  %224 = load i64, i64* %11, align 8
  %225 = getelementptr inbounds i8, i8* %223, i64 %224
  %226 = call i32 @dump_mips_attributes(%struct.readelf* %221, i8* %222, i8* %225)
  br label %241

227:                                              ; preds = %213
  %228 = load %struct.readelf*, %struct.readelf** %2, align 8
  %229 = getelementptr inbounds %struct.readelf, %struct.readelf* %228, i32 0, i32 2
  %230 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %229, i32 0, i32 0
  %231 = load i64, i64* %230, align 8
  %232 = load i64, i64* @EM_PPC, align 8
  %233 = icmp eq i64 %231, %232
  br i1 %233, label %234, label %240

234:                                              ; preds = %227
  %235 = load i8*, i8** %5, align 8
  %236 = load i8*, i8** %7, align 8
  %237 = load i64, i64* %11, align 8
  %238 = getelementptr inbounds i8, i8* %236, i64 %237
  %239 = call i32 @dump_ppc_attributes(i8* %235, i8* %238)
  br label %240

240:                                              ; preds = %234, %227
  br label %241

241:                                              ; preds = %240, %220
  br label %242

242:                                              ; preds = %241, %199
  %243 = load i8*, i8** %7, align 8
  %244 = load i64, i64* %11, align 8
  %245 = getelementptr inbounds i8, i8* %243, i64 %244
  store i8* %245, i8** %5, align 8
  br label %141

246:                                              ; preds = %141
  br label %99

247:                                              ; preds = %99
  br label %248

248:                                              ; preds = %247, %86, %71, %65, %49
  %249 = load i32, i32* %14, align 4
  %250 = add nsw i32 %249, 1
  store i32 %250, i32* %14, align 4
  br label %16

251:                                              ; preds = %105, %115, %129, %157, %16
  ret void
}

declare dso_local i32 @elf_errno(...) #1

declare dso_local %struct.TYPE_5__* @elf_rawdata(i32, i32*) #1

declare dso_local i32 @warnx(i8*, ...) #1

declare dso_local i32 @elf_errmsg(i32) #1

declare dso_local i32 @printf(i8*, ...) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i8* @top_tag(i32) #1

declare dso_local i32 @putchar(i8 signext) #1

declare dso_local i64 @_decode_uleb128(i8**, i8*) #1

declare dso_local i32 @dump_arm_attributes(%struct.readelf*, i8*, i8*) #1

declare dso_local i32 @dump_mips_attributes(%struct.readelf*, i8*, i8*) #1

declare dso_local i32 @dump_ppc_attributes(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

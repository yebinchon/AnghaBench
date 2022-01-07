; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/elftoolchain/elfdump/extr_elfdump.c_elf_print_note.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/elftoolchain/elfdump/extr_elfdump.c_elf_print_note.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.elfdump = type { i64, i32, %struct.TYPE_5__, i32, %struct.section* }
%struct.TYPE_5__ = type { i64* }
%struct.section = type { i64, i64, i32 }
%struct.TYPE_7__ = type { i64, i64* }
%struct.TYPE_6__ = type { i64, i64, i64 }

@SHT_NOTE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [14 x i8] c".note.ABI-tag\00", align 1
@SOLARIS_FMT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [20 x i8] c"\0ANote Section:  %s\0A\00", align 1
@.str.2 = private unnamed_addr constant [13 x i8] c"\0Anote (%s):\0A\00", align 1
@.str.3 = private unnamed_addr constant [23 x i8] c"elf_getdata failed: %s\00", align 1
@.str.4 = private unnamed_addr constant [23 x i8] c"truncated note section\00", align 1
@.str.5 = private unnamed_addr constant [17 x i8] c"\0A    type   %#x\0A\00", align 1
@.str.6 = private unnamed_addr constant [17 x i8] c"    namesz %#x:\0A\00", align 1
@.str.7 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@.str.8 = private unnamed_addr constant [5 x i8] c"\09%s \00", align 1
@.str.9 = private unnamed_addr constant [16 x i8] c"    descsz %#x:\00", align 1
@.str.10 = private unnamed_addr constant [9 x i8] c"desc[%d]\00", align 1
@.str.11 = private unnamed_addr constant [12 x i8] c"\0A      %-9s\00", align 1
@.str.12 = private unnamed_addr constant [3 x i8] c"  \00", align 1
@.str.13 = private unnamed_addr constant [7 x i8] c" %2.2x\00", align 1
@.str.14 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@EI_DATA = common dso_local global i64 0, align 8
@ELFDATA2MSB = common dso_local global i64 0, align 8
@.str.15 = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.elfdump*)* @elf_print_note to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @elf_print_note(%struct.elfdump* %0) #0 {
  %2 = alloca %struct.elfdump*, align 8
  %3 = alloca %struct.section*, align 8
  %4 = alloca %struct.TYPE_7__*, align 8
  %5 = alloca %struct.TYPE_6__*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i64*, align 8
  %13 = alloca [17 x i8], align 16
  store %struct.elfdump* %0, %struct.elfdump** %2, align 8
  store %struct.section* null, %struct.section** %3, align 8
  store i32 0, i32* %11, align 4
  br label %14

14:                                               ; preds = %58, %1
  %15 = load i32, i32* %11, align 4
  %16 = sext i32 %15 to i64
  %17 = load %struct.elfdump*, %struct.elfdump** %2, align 8
  %18 = getelementptr inbounds %struct.elfdump, %struct.elfdump* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = icmp ult i64 %16, %19
  br i1 %20, label %21, label %61

21:                                               ; preds = %14
  %22 = load %struct.elfdump*, %struct.elfdump** %2, align 8
  %23 = getelementptr inbounds %struct.elfdump, %struct.elfdump* %22, i32 0, i32 4
  %24 = load %struct.section*, %struct.section** %23, align 8
  %25 = load i32, i32* %11, align 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds %struct.section, %struct.section* %24, i64 %26
  store %struct.section* %27, %struct.section** %3, align 8
  %28 = load %struct.section*, %struct.section** %3, align 8
  %29 = getelementptr inbounds %struct.section, %struct.section* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = load i64, i64* @SHT_NOTE, align 8
  %32 = icmp eq i64 %30, %31
  br i1 %32, label %33, label %57

33:                                               ; preds = %21
  %34 = load %struct.section*, %struct.section** %3, align 8
  %35 = getelementptr inbounds %struct.section, %struct.section* %34, i32 0, i32 1
  %36 = load i64, i64* %35, align 8
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %57

38:                                               ; preds = %33
  %39 = load %struct.section*, %struct.section** %3, align 8
  %40 = getelementptr inbounds %struct.section, %struct.section* %39, i32 0, i32 1
  %41 = load i64, i64* %40, align 8
  %42 = call i32 @strcmp(i64 %41, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0))
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %57, label %44

44:                                               ; preds = %38
  %45 = load %struct.elfdump*, %struct.elfdump** %2, align 8
  %46 = getelementptr inbounds %struct.elfdump, %struct.elfdump* %45, i32 0, i32 3
  %47 = call i64 @STAILQ_EMPTY(i32* %46)
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %56, label %49

49:                                               ; preds = %44
  %50 = load %struct.elfdump*, %struct.elfdump** %2, align 8
  %51 = load %struct.section*, %struct.section** %3, align 8
  %52 = getelementptr inbounds %struct.section, %struct.section* %51, i32 0, i32 1
  %53 = load i64, i64* %52, align 8
  %54 = call i64 @find_name(%struct.elfdump* %50, i64 %53)
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %57

56:                                               ; preds = %49, %44
  br label %61

57:                                               ; preds = %49, %38, %33, %21
  br label %58

58:                                               ; preds = %57
  %59 = load i32, i32* %11, align 4
  %60 = add nsw i32 %59, 1
  store i32 %60, i32* %11, align 4
  br label %14

61:                                               ; preds = %56, %14
  %62 = load i32, i32* %11, align 4
  %63 = sext i32 %62 to i64
  %64 = load %struct.elfdump*, %struct.elfdump** %2, align 8
  %65 = getelementptr inbounds %struct.elfdump, %struct.elfdump* %64, i32 0, i32 0
  %66 = load i64, i64* %65, align 8
  %67 = icmp uge i64 %63, %66
  br i1 %67, label %68, label %69

68:                                               ; preds = %61
  br label %238

69:                                               ; preds = %61
  %70 = load %struct.elfdump*, %struct.elfdump** %2, align 8
  %71 = getelementptr inbounds %struct.elfdump, %struct.elfdump* %70, i32 0, i32 1
  %72 = load i32, i32* %71, align 8
  %73 = load i32, i32* @SOLARIS_FMT, align 4
  %74 = and i32 %72, %73
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %76, label %81

76:                                               ; preds = %69
  %77 = load %struct.section*, %struct.section** %3, align 8
  %78 = getelementptr inbounds %struct.section, %struct.section* %77, i32 0, i32 1
  %79 = load i64, i64* %78, align 8
  %80 = call i32 (i8*, ...) @PRT(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0), i64 %79)
  br label %86

81:                                               ; preds = %69
  %82 = load %struct.section*, %struct.section** %3, align 8
  %83 = getelementptr inbounds %struct.section, %struct.section* %82, i32 0, i32 1
  %84 = load i64, i64* %83, align 8
  %85 = call i32 (i8*, ...) @PRT(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0), i64 %84)
  br label %86

86:                                               ; preds = %81, %76
  %87 = call i32 (...) @elf_errno()
  %88 = load %struct.section*, %struct.section** %3, align 8
  %89 = getelementptr inbounds %struct.section, %struct.section* %88, i32 0, i32 2
  %90 = load i32, i32* %89, align 8
  %91 = call %struct.TYPE_7__* @elf_getdata(i32 %90, i32* null)
  store %struct.TYPE_7__* %91, %struct.TYPE_7__** %4, align 8
  %92 = icmp eq %struct.TYPE_7__* %91, null
  br i1 %92, label %93, label %102

93:                                               ; preds = %86
  %94 = call i32 (...) @elf_errno()
  store i32 %94, i32* %10, align 4
  %95 = load i32, i32* %10, align 4
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %97, label %101

97:                                               ; preds = %93
  %98 = load i32, i32* %10, align 4
  %99 = call i32 @elf_errmsg(i32 %98)
  %100 = call i32 (i8*, ...) @warnx(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.3, i64 0, i64 0), i32 %99)
  br label %101

101:                                              ; preds = %97, %93
  br label %238

102:                                              ; preds = %86
  %103 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %104 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %103, i32 0, i32 1
  %105 = load i64*, i64** %104, align 8
  store i64* %105, i64** %12, align 8
  %106 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %107 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %106, i32 0, i32 0
  %108 = load i64, i64* %107, align 8
  store i64 %108, i64* %9, align 8
  br label %109

109:                                              ; preds = %229, %102
  %110 = load i64, i64* %9, align 8
  %111 = icmp ugt i64 %110, 24
  br i1 %111, label %112, label %238

112:                                              ; preds = %109
  %113 = load i64*, i64** %12, align 8
  %114 = ptrtoint i64* %113 to i64
  %115 = inttoptr i64 %114 to %struct.TYPE_6__*
  store %struct.TYPE_6__* %115, %struct.TYPE_6__** %5, align 8
  %116 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %117 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %116, i32 0, i32 0
  %118 = load i64, i64* %117, align 8
  store i64 %118, i64* %6, align 8
  %119 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %120 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %119, i32 0, i32 1
  %121 = load i64, i64* %120, align 8
  store i64 %121, i64* %7, align 8
  %122 = load i64*, i64** %12, align 8
  %123 = getelementptr inbounds i64, i64* %122, i64 24
  store i64* %123, i64** %12, align 8
  %124 = load i64, i64* %9, align 8
  %125 = sub i64 %124, 24
  store i64 %125, i64* %9, align 8
  %126 = load i64, i64* %6, align 8
  %127 = call i64 @roundup2(i64 %126, i32 4)
  %128 = load i64, i64* %7, align 8
  %129 = call i64 @roundup2(i64 %128, i32 4)
  %130 = add i64 %127, %129
  %131 = load i64, i64* %9, align 8
  %132 = icmp ugt i64 %130, %131
  br i1 %132, label %133, label %135

133:                                              ; preds = %112
  %134 = call i32 (i8*, ...) @warnx(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.4, i64 0, i64 0))
  br label %238

135:                                              ; preds = %112
  %136 = load %struct.elfdump*, %struct.elfdump** %2, align 8
  %137 = getelementptr inbounds %struct.elfdump, %struct.elfdump* %136, i32 0, i32 1
  %138 = load i32, i32* %137, align 8
  %139 = load i32, i32* @SOLARIS_FMT, align 4
  %140 = and i32 %138, %139
  %141 = icmp ne i32 %140, 0
  br i1 %141, label %142, label %153

142:                                              ; preds = %135
  %143 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %144 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %143, i32 0, i32 2
  %145 = load i64, i64* %144, align 8
  %146 = call i32 (i8*, ...) @PRT(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.5, i64 0, i64 0), i64 %145)
  %147 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %148 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %147, i32 0, i32 0
  %149 = load i64, i64* %148, align 8
  %150 = call i32 (i8*, ...) @PRT(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.6, i64 0, i64 0), i64 %149)
  %151 = load i64*, i64** %12, align 8
  %152 = call i32 (i8*, ...) @PRT(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.7, i64 0, i64 0), i64* %151)
  br label %156

153:                                              ; preds = %135
  %154 = load i64*, i64** %12, align 8
  %155 = call i32 (i8*, ...) @PRT(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.8, i64 0, i64 0), i64* %154)
  br label %156

156:                                              ; preds = %153, %142
  %157 = load i64, i64* %6, align 8
  %158 = call i64 @roundup2(i64 %157, i32 4)
  %159 = load i64*, i64** %12, align 8
  %160 = getelementptr inbounds i64, i64* %159, i64 %158
  store i64* %160, i64** %12, align 8
  %161 = load i64, i64* %6, align 8
  %162 = call i64 @roundup2(i64 %161, i32 4)
  %163 = load i64, i64* %9, align 8
  %164 = sub i64 %163, %162
  store i64 %164, i64* %9, align 8
  %165 = load %struct.elfdump*, %struct.elfdump** %2, align 8
  %166 = getelementptr inbounds %struct.elfdump, %struct.elfdump* %165, i32 0, i32 1
  %167 = load i32, i32* %166, align 8
  %168 = load i32, i32* @SOLARIS_FMT, align 4
  %169 = and i32 %167, %168
  %170 = icmp ne i32 %169, 0
  br i1 %170, label %171, label %210

171:                                              ; preds = %156
  %172 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %173 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %172, i32 0, i32 1
  %174 = load i64, i64* %173, align 8
  %175 = call i32 (i8*, ...) @PRT(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.9, i64 0, i64 0), i64 %174)
  store i32 0, i32* %11, align 4
  br label %176

176:                                              ; preds = %205, %171
  %177 = load i32, i32* %11, align 4
  %178 = sext i32 %177 to i64
  %179 = load i64, i64* %7, align 8
  %180 = icmp slt i64 %178, %179
  br i1 %180, label %181, label %208

181:                                              ; preds = %176
  %182 = load i32, i32* %11, align 4
  %183 = and i32 %182, 15
  %184 = icmp eq i32 %183, 0
  br i1 %184, label %185, label %191

185:                                              ; preds = %181
  %186 = getelementptr inbounds [17 x i8], [17 x i8]* %13, i64 0, i64 0
  %187 = load i32, i32* %11, align 4
  %188 = call i32 @snprintf(i8* %186, i32 17, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.10, i64 0, i64 0), i32 %187)
  %189 = getelementptr inbounds [17 x i8], [17 x i8]* %13, i64 0, i64 0
  %190 = call i32 (i8*, ...) @PRT(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.11, i64 0, i64 0), i8* %189)
  br label %198

191:                                              ; preds = %181
  %192 = load i32, i32* %11, align 4
  %193 = and i32 %192, 3
  %194 = icmp eq i32 %193, 0
  br i1 %194, label %195, label %197

195:                                              ; preds = %191
  %196 = call i32 (i8*, ...) @PRT(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.12, i64 0, i64 0))
  br label %197

197:                                              ; preds = %195, %191
  br label %198

198:                                              ; preds = %197, %185
  %199 = load i64*, i64** %12, align 8
  %200 = load i32, i32* %11, align 4
  %201 = sext i32 %200 to i64
  %202 = getelementptr inbounds i64, i64* %199, i64 %201
  %203 = load i64, i64* %202, align 8
  %204 = call i32 (i8*, ...) @PRT(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.13, i64 0, i64 0), i64 %203)
  br label %205

205:                                              ; preds = %198
  %206 = load i32, i32* %11, align 4
  %207 = add nsw i32 %206, 1
  store i32 %207, i32* %11, align 4
  br label %176

208:                                              ; preds = %176
  %209 = call i32 (i8*, ...) @PRT(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.14, i64 0, i64 0))
  br label %229

210:                                              ; preds = %156
  %211 = load %struct.elfdump*, %struct.elfdump** %2, align 8
  %212 = getelementptr inbounds %struct.elfdump, %struct.elfdump* %211, i32 0, i32 2
  %213 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %212, i32 0, i32 0
  %214 = load i64*, i64** %213, align 8
  %215 = load i64, i64* @EI_DATA, align 8
  %216 = getelementptr inbounds i64, i64* %214, i64 %215
  %217 = load i64, i64* %216, align 8
  %218 = load i64, i64* @ELFDATA2MSB, align 8
  %219 = icmp eq i64 %217, %218
  br i1 %219, label %220, label %223

220:                                              ; preds = %210
  %221 = load i64*, i64** %12, align 8
  %222 = call i64 @be32dec(i64* %221)
  store i64 %222, i64* %8, align 8
  br label %226

223:                                              ; preds = %210
  %224 = load i64*, i64** %12, align 8
  %225 = call i64 @le32dec(i64* %224)
  store i64 %225, i64* %8, align 8
  br label %226

226:                                              ; preds = %223, %220
  %227 = load i64, i64* %8, align 8
  %228 = call i32 (i8*, ...) @PRT(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.15, i64 0, i64 0), i64 %227)
  br label %229

229:                                              ; preds = %226, %208
  %230 = load i64, i64* %7, align 8
  %231 = call i64 @roundup2(i64 %230, i32 4)
  %232 = load i64*, i64** %12, align 8
  %233 = getelementptr inbounds i64, i64* %232, i64 %231
  store i64* %233, i64** %12, align 8
  %234 = load i64, i64* %7, align 8
  %235 = call i64 @roundup2(i64 %234, i32 4)
  %236 = load i64, i64* %9, align 8
  %237 = sub i64 %236, %235
  store i64 %237, i64* %9, align 8
  br label %109

238:                                              ; preds = %68, %101, %133, %109
  ret void
}

declare dso_local i32 @strcmp(i64, i8*) #1

declare dso_local i64 @STAILQ_EMPTY(i32*) #1

declare dso_local i64 @find_name(%struct.elfdump*, i64) #1

declare dso_local i32 @PRT(i8*, ...) #1

declare dso_local i32 @elf_errno(...) #1

declare dso_local %struct.TYPE_7__* @elf_getdata(i32, i32*) #1

declare dso_local i32 @warnx(i8*, ...) #1

declare dso_local i32 @elf_errmsg(i32) #1

declare dso_local i64 @roundup2(i64, i32) #1

declare dso_local i32 @snprintf(i8*, i32, i8*, i32) #1

declare dso_local i64 @be32dec(i64*) #1

declare dso_local i64 @le32dec(i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

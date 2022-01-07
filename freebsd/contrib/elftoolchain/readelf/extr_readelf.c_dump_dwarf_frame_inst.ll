; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/elftoolchain/readelf/extr_readelf.c_dump_dwarf_frame_inst.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/elftoolchain/readelf/extr_readelf.c_dump_dwarf_frame_inst.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.readelf = type { i32 }
%struct.TYPE_4__ = type { i32, i32, i32, i32 }

@DW_DLV_OK = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [43 x i8] c"dwarf_expand_frame_instructions failed: %s\00", align 1
@.str.1 = private unnamed_addr constant [19 x i8] c"[Unknown CFA: %#x]\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"  %s\00", align 1
@.str.3 = private unnamed_addr constant [15 x i8] c": %ju to %08jx\00", align 1
@.str.4 = private unnamed_addr constant [22 x i8] c": r%u (%s) at cfa%+jd\00", align 1
@.str.5 = private unnamed_addr constant [11 x i8] c": r%u (%s)\00", align 1
@.str.6 = private unnamed_addr constant [11 x i8] c": to %08jx\00", align 1
@.str.7 = private unnamed_addr constant [15 x i8] c": %jd to %08jx\00", align 1
@.str.8 = private unnamed_addr constant [19 x i8] c": r%u (%s) ofs %ju\00", align 1
@.str.9 = private unnamed_addr constant [19 x i8] c": r%u (%s) ofs %jd\00", align 1
@.str.10 = private unnamed_addr constant [6 x i8] c": %ju\00", align 1
@.str.11 = private unnamed_addr constant [6 x i8] c": %jd\00", align 1
@DW_DLA_FRAME_BLOCK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.readelf*, i32, i32*, i32, i32, i32, i32, i32)* @dump_dwarf_frame_inst to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dump_dwarf_frame_inst(%struct.readelf* %0, i32 %1, i32* %2, i32 %3, i32 %4, i32 %5, i32 %6, i32 %7) #0 {
  %9 = alloca %struct.readelf*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca %struct.TYPE_4__*, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i8*, align 8
  %23 = alloca [32 x i8], align 16
  %24 = alloca i32, align 4
  store %struct.readelf* %0, %struct.readelf** %9, align 8
  store i32 %1, i32* %10, align 4
  store i32* %2, i32** %11, align 8
  store i32 %3, i32* %12, align 4
  store i32 %4, i32* %13, align 4
  store i32 %5, i32* %14, align 4
  store i32 %6, i32* %15, align 4
  store i32 %7, i32* %16, align 4
  %25 = load i32, i32* %10, align 4
  %26 = load i32*, i32** %11, align 8
  %27 = load i32, i32* %12, align 4
  %28 = call i64 @dwarf_expand_frame_instructions(i32 %25, i32* %26, i32 %27, %struct.TYPE_4__** %17, i32* %18, i32* %21)
  %29 = load i64, i64* @DW_DLV_OK, align 8
  %30 = icmp ne i64 %28, %29
  br i1 %30, label %31, label %35

31:                                               ; preds = %8
  %32 = load i32, i32* %21, align 4
  %33 = call i32 @dwarf_errmsg(i32 %32)
  %34 = call i32 @warnx(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i64 0, i64 0), i32 %33)
  br label %270

35:                                               ; preds = %8
  store i32 0, i32* %24, align 4
  br label %36

36:                                               ; preds = %262, %35
  %37 = load i32, i32* %24, align 4
  %38 = load i32, i32* %18, align 4
  %39 = icmp slt i32 %37, %38
  br i1 %39, label %40, label %265

40:                                               ; preds = %36
  %41 = load %struct.TYPE_4__*, %struct.TYPE_4__** %17, align 8
  %42 = load i32, i32* %24, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %41, i64 %43
  %45 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %56

48:                                               ; preds = %40
  %49 = load %struct.TYPE_4__*, %struct.TYPE_4__** %17, align 8
  %50 = load i32, i32* %24, align 4
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %49, i64 %51
  %53 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = shl i32 %54, 6
  store i32 %55, i32* %20, align 4
  br label %63

56:                                               ; preds = %40
  %57 = load %struct.TYPE_4__*, %struct.TYPE_4__** %17, align 8
  %58 = load i32, i32* %24, align 4
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %57, i64 %59
  %61 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %60, i32 0, i32 1
  %62 = load i32, i32* %61, align 4
  store i32 %62, i32* %20, align 4
  br label %63

63:                                               ; preds = %56, %48
  %64 = load i32, i32* %20, align 4
  %65 = call i64 @dwarf_get_CFA_name(i32 %64, i8** %22)
  %66 = load i64, i64* @DW_DLV_OK, align 8
  %67 = icmp ne i64 %65, %66
  br i1 %67, label %68, label %73

68:                                               ; preds = %63
  %69 = getelementptr inbounds [32 x i8], [32 x i8]* %23, i64 0, i64 0
  %70 = load i32, i32* %20, align 4
  %71 = call i32 @snprintf(i8* %69, i32 32, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0), i32 %70)
  %72 = getelementptr inbounds [32 x i8], [32 x i8]* %23, i64 0, i64 0
  store i8* %72, i8** %22, align 8
  br label %73

73:                                               ; preds = %68, %63
  %74 = load i8*, i8** %22, align 8
  %75 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), i8* %74)
  %76 = load i32, i32* %20, align 4
  switch i32 %76, label %259 [
    i32 141, label %77
    i32 132, label %96
    i32 131, label %96
    i32 130, label %96
    i32 129, label %123
    i32 128, label %139
    i32 140, label %150
    i32 139, label %150
    i32 138, label %150
    i32 137, label %171
    i32 133, label %195
    i32 134, label %221
    i32 136, label %237
    i32 135, label %247
  ]

77:                                               ; preds = %73
  %78 = load %struct.TYPE_4__*, %struct.TYPE_4__** %17, align 8
  %79 = load i32, i32* %24, align 4
  %80 = sext i32 %79 to i64
  %81 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %78, i64 %80
  %82 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %81, i32 0, i32 2
  %83 = load i32, i32* %82, align 4
  %84 = load i32, i32* %13, align 4
  %85 = mul nsw i32 %83, %84
  store i32 %85, i32* %19, align 4
  %86 = load i32, i32* %19, align 4
  %87 = load i32, i32* %15, align 4
  %88 = add nsw i32 %87, %86
  store i32 %88, i32* %15, align 4
  %89 = load i32, i32* %19, align 4
  %90 = sext i32 %89 to i64
  %91 = inttoptr i64 %90 to i8*
  %92 = load i32, i32* %15, align 4
  %93 = sext i32 %92 to i64
  %94 = inttoptr i64 %93 to i8*
  %95 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.3, i64 0, i64 0), i8* %91, i8* %94)
  br label %260

96:                                               ; preds = %73, %73, %73
  %97 = load %struct.TYPE_4__*, %struct.TYPE_4__** %17, align 8
  %98 = load i32, i32* %24, align 4
  %99 = sext i32 %98 to i64
  %100 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %97, i64 %99
  %101 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %100, i32 0, i32 2
  %102 = load i32, i32* %101, align 4
  %103 = load i32, i32* %14, align 4
  %104 = mul nsw i32 %102, %103
  store i32 %104, i32* %19, align 4
  %105 = load %struct.TYPE_4__*, %struct.TYPE_4__** %17, align 8
  %106 = load i32, i32* %24, align 4
  %107 = sext i32 %106 to i64
  %108 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %105, i64 %107
  %109 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %108, i32 0, i32 3
  %110 = load i32, i32* %109, align 4
  %111 = load %struct.readelf*, %struct.readelf** %9, align 8
  %112 = load %struct.TYPE_4__*, %struct.TYPE_4__** %17, align 8
  %113 = load i32, i32* %24, align 4
  %114 = sext i32 %113 to i64
  %115 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %112, i64 %114
  %116 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %115, i32 0, i32 3
  %117 = load i32, i32* %116, align 4
  %118 = call i8* @dwarf_regname(%struct.readelf* %111, i32 %117)
  %119 = load i32, i32* %19, align 4
  %120 = sext i32 %119 to i64
  %121 = inttoptr i64 %120 to i8*
  %122 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.4, i64 0, i64 0), i32 %110, i8* %118, i8* %121)
  br label %260

123:                                              ; preds = %73
  %124 = load %struct.TYPE_4__*, %struct.TYPE_4__** %17, align 8
  %125 = load i32, i32* %24, align 4
  %126 = sext i32 %125 to i64
  %127 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %124, i64 %126
  %128 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %127, i32 0, i32 3
  %129 = load i32, i32* %128, align 4
  %130 = load %struct.readelf*, %struct.readelf** %9, align 8
  %131 = load %struct.TYPE_4__*, %struct.TYPE_4__** %17, align 8
  %132 = load i32, i32* %24, align 4
  %133 = sext i32 %132 to i64
  %134 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %131, i64 %133
  %135 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %134, i32 0, i32 3
  %136 = load i32, i32* %135, align 4
  %137 = call i8* @dwarf_regname(%struct.readelf* %130, i32 %136)
  %138 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.5, i64 0, i64 0), i32 %129, i8* %137)
  br label %260

139:                                              ; preds = %73
  %140 = load %struct.TYPE_4__*, %struct.TYPE_4__** %17, align 8
  %141 = load i32, i32* %24, align 4
  %142 = sext i32 %141 to i64
  %143 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %140, i64 %142
  %144 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %143, i32 0, i32 2
  %145 = load i32, i32* %144, align 4
  store i32 %145, i32* %15, align 4
  %146 = load i32, i32* %15, align 4
  %147 = sext i32 %146 to i64
  %148 = inttoptr i64 %147 to i8*
  %149 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.6, i64 0, i64 0), i8* %148)
  br label %260

150:                                              ; preds = %73, %73, %73
  %151 = load %struct.TYPE_4__*, %struct.TYPE_4__** %17, align 8
  %152 = load i32, i32* %24, align 4
  %153 = sext i32 %152 to i64
  %154 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %151, i64 %153
  %155 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %154, i32 0, i32 2
  %156 = load i32, i32* %155, align 4
  %157 = load i32, i32* %15, align 4
  %158 = add nsw i32 %157, %156
  store i32 %158, i32* %15, align 4
  %159 = load %struct.TYPE_4__*, %struct.TYPE_4__** %17, align 8
  %160 = load i32, i32* %24, align 4
  %161 = sext i32 %160 to i64
  %162 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %159, i64 %161
  %163 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %162, i32 0, i32 2
  %164 = load i32, i32* %163, align 4
  %165 = sext i32 %164 to i64
  %166 = inttoptr i64 %165 to i8*
  %167 = load i32, i32* %15, align 4
  %168 = sext i32 %167 to i64
  %169 = inttoptr i64 %168 to i8*
  %170 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.7, i64 0, i64 0), i8* %166, i8* %169)
  br label %260

171:                                              ; preds = %73
  %172 = load %struct.TYPE_4__*, %struct.TYPE_4__** %17, align 8
  %173 = load i32, i32* %24, align 4
  %174 = sext i32 %173 to i64
  %175 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %172, i64 %174
  %176 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %175, i32 0, i32 3
  %177 = load i32, i32* %176, align 4
  %178 = load %struct.readelf*, %struct.readelf** %9, align 8
  %179 = load %struct.TYPE_4__*, %struct.TYPE_4__** %17, align 8
  %180 = load i32, i32* %24, align 4
  %181 = sext i32 %180 to i64
  %182 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %179, i64 %181
  %183 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %182, i32 0, i32 3
  %184 = load i32, i32* %183, align 4
  %185 = call i8* @dwarf_regname(%struct.readelf* %178, i32 %184)
  %186 = load %struct.TYPE_4__*, %struct.TYPE_4__** %17, align 8
  %187 = load i32, i32* %24, align 4
  %188 = sext i32 %187 to i64
  %189 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %186, i64 %188
  %190 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %189, i32 0, i32 2
  %191 = load i32, i32* %190, align 4
  %192 = sext i32 %191 to i64
  %193 = inttoptr i64 %192 to i8*
  %194 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.8, i64 0, i64 0), i32 %177, i8* %185, i8* %193)
  br label %260

195:                                              ; preds = %73
  %196 = load %struct.TYPE_4__*, %struct.TYPE_4__** %17, align 8
  %197 = load i32, i32* %24, align 4
  %198 = sext i32 %197 to i64
  %199 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %196, i64 %198
  %200 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %199, i32 0, i32 3
  %201 = load i32, i32* %200, align 4
  %202 = load %struct.readelf*, %struct.readelf** %9, align 8
  %203 = load %struct.TYPE_4__*, %struct.TYPE_4__** %17, align 8
  %204 = load i32, i32* %24, align 4
  %205 = sext i32 %204 to i64
  %206 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %203, i64 %205
  %207 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %206, i32 0, i32 3
  %208 = load i32, i32* %207, align 4
  %209 = call i8* @dwarf_regname(%struct.readelf* %202, i32 %208)
  %210 = load %struct.TYPE_4__*, %struct.TYPE_4__** %17, align 8
  %211 = load i32, i32* %24, align 4
  %212 = sext i32 %211 to i64
  %213 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %210, i64 %212
  %214 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %213, i32 0, i32 2
  %215 = load i32, i32* %214, align 4
  %216 = load i32, i32* %14, align 4
  %217 = mul nsw i32 %215, %216
  %218 = sext i32 %217 to i64
  %219 = inttoptr i64 %218 to i8*
  %220 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.9, i64 0, i64 0), i32 %201, i8* %209, i8* %219)
  br label %260

221:                                              ; preds = %73
  %222 = load %struct.TYPE_4__*, %struct.TYPE_4__** %17, align 8
  %223 = load i32, i32* %24, align 4
  %224 = sext i32 %223 to i64
  %225 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %222, i64 %224
  %226 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %225, i32 0, i32 3
  %227 = load i32, i32* %226, align 4
  %228 = load %struct.readelf*, %struct.readelf** %9, align 8
  %229 = load %struct.TYPE_4__*, %struct.TYPE_4__** %17, align 8
  %230 = load i32, i32* %24, align 4
  %231 = sext i32 %230 to i64
  %232 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %229, i64 %231
  %233 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %232, i32 0, i32 3
  %234 = load i32, i32* %233, align 4
  %235 = call i8* @dwarf_regname(%struct.readelf* %228, i32 %234)
  %236 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.5, i64 0, i64 0), i32 %227, i8* %235)
  br label %260

237:                                              ; preds = %73
  %238 = load %struct.TYPE_4__*, %struct.TYPE_4__** %17, align 8
  %239 = load i32, i32* %24, align 4
  %240 = sext i32 %239 to i64
  %241 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %238, i64 %240
  %242 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %241, i32 0, i32 2
  %243 = load i32, i32* %242, align 4
  %244 = sext i32 %243 to i64
  %245 = inttoptr i64 %244 to i8*
  %246 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.10, i64 0, i64 0), i8* %245)
  br label %260

247:                                              ; preds = %73
  %248 = load %struct.TYPE_4__*, %struct.TYPE_4__** %17, align 8
  %249 = load i32, i32* %24, align 4
  %250 = sext i32 %249 to i64
  %251 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %248, i64 %250
  %252 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %251, i32 0, i32 2
  %253 = load i32, i32* %252, align 4
  %254 = load i32, i32* %14, align 4
  %255 = mul nsw i32 %253, %254
  %256 = sext i32 %255 to i64
  %257 = inttoptr i64 %256 to i8*
  %258 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.11, i64 0, i64 0), i8* %257)
  br label %260

259:                                              ; preds = %73
  br label %260

260:                                              ; preds = %259, %247, %237, %221, %195, %171, %150, %139, %123, %96, %77
  %261 = call i32 @putchar(i8 signext 10)
  br label %262

262:                                              ; preds = %260
  %263 = load i32, i32* %24, align 4
  %264 = add nsw i32 %263, 1
  store i32 %264, i32* %24, align 4
  br label %36

265:                                              ; preds = %36
  %266 = load i32, i32* %16, align 4
  %267 = load %struct.TYPE_4__*, %struct.TYPE_4__** %17, align 8
  %268 = load i32, i32* @DW_DLA_FRAME_BLOCK, align 4
  %269 = call i32 @dwarf_dealloc(i32 %266, %struct.TYPE_4__* %267, i32 %268)
  br label %270

270:                                              ; preds = %265, %31
  ret void
}

declare dso_local i64 @dwarf_expand_frame_instructions(i32, i32*, i32, %struct.TYPE_4__**, i32*, i32*) #1

declare dso_local i32 @warnx(i8*, i32) #1

declare dso_local i32 @dwarf_errmsg(i32) #1

declare dso_local i64 @dwarf_get_CFA_name(i32, i8**) #1

declare dso_local i32 @snprintf(i8*, i32, i8*, i32) #1

declare dso_local i32 @printf(i8*, ...) #1

declare dso_local i8* @dwarf_regname(%struct.readelf*, i32) #1

declare dso_local i32 @putchar(i8 signext) #1

declare dso_local i32 @dwarf_dealloc(i32, %struct.TYPE_4__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

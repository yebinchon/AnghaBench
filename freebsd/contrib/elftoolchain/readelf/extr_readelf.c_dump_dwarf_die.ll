; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/elftoolchain/readelf/extr_readelf.c_dump_dwarf_die.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/elftoolchain/readelf/extr_readelf.c_dump_dwarf_die.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.readelf = type { i32, i64 (i32**, i32)* }
%struct.TYPE_6__ = type { i32*, i64 }
%struct.TYPE_5__ = type { i32* }

@DW_DLV_OK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"dwarf_dieoffset failed: %s\00", align 1
@.str.1 = private unnamed_addr constant [13 x i8] c" <%d><%jx>: \00", align 1
@.str.2 = private unnamed_addr constant [37 x i8] c"dwarf_die_CU_offset_range failed: %s\00", align 1
@.str.3 = private unnamed_addr constant [21 x i8] c"dwarf_tag failed: %s\00", align 1
@.str.4 = private unnamed_addr constant [19 x i8] c"[Unknown Tag: %#x]\00", align 1
@.str.5 = private unnamed_addr constant [24 x i8] c"Abbrev Number: %d (%s)\0A\00", align 1
@DW_DLV_ERROR = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [26 x i8] c"dwarf_attrlist failed: %s\00", align 1
@.str.7 = private unnamed_addr constant [26 x i8] c"dwarf_whatform failed: %s\00", align 1
@.str.8 = private unnamed_addr constant [26 x i8] c"dwarf_whatattr failed: %s\00", align 1
@.str.9 = private unnamed_addr constant [18 x i8] c"[Unknown AT: %#x]\00", align 1
@.str.10 = private unnamed_addr constant [28 x i8] c"dwarf_attroffset failed: %s\00", align 1
@.str.11 = private unnamed_addr constant [20 x i8] c"    <%jx>   %-18s: \00", align 1
@.str.12 = private unnamed_addr constant [32 x i8] c"dwarf_global_formref failed: %s\00", align 1
@.str.13 = private unnamed_addr constant [8 x i8] c"<0x%jx>\00", align 1
@.str.14 = private unnamed_addr constant [6 x i8] c"0x%jx\00", align 1
@.str.15 = private unnamed_addr constant [25 x i8] c"dwarf_formref failed: %s\00", align 1
@.str.16 = private unnamed_addr constant [26 x i8] c"dwarf_formaddr failed: %s\00", align 1
@.str.17 = private unnamed_addr constant [5 x i8] c"%#jx\00", align 1
@.str.18 = private unnamed_addr constant [27 x i8] c"dwarf_formudata failed: %s\00", align 1
@DW_AT_high_pc = common dso_local global i32 0, align 4
@.str.19 = private unnamed_addr constant [4 x i8] c"%ju\00", align 1
@.str.20 = private unnamed_addr constant [4 x i8] c"%jd\00", align 1
@.str.21 = private unnamed_addr constant [26 x i8] c"dwarf_formflag failed: %s\00", align 1
@.str.22 = private unnamed_addr constant [28 x i8] c"dwarf_formstring failed: %s\00", align 1
@.str.23 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.24 = private unnamed_addr constant [21 x i8] c"(indirect string) %s\00", align 1
@.str.25 = private unnamed_addr constant [27 x i8] c"dwarf_formblock failed: %s\00", align 1
@.str.26 = private unnamed_addr constant [16 x i8] c"%ju byte block:\00", align 1
@.str.27 = private unnamed_addr constant [4 x i8] c" %x\00", align 1
@.str.28 = private unnamed_addr constant [3 x i8] c"\09(\00", align 1
@.str.29 = private unnamed_addr constant [29 x i8] c"dwarf_formexprloc failed: %s\00", align 1
@.str.30 = private unnamed_addr constant [26 x i8] c"dwarf_formsig8 failed: %s\00", align 1
@.str.31 = private unnamed_addr constant [17 x i8] c"signature: 0x%jx\00", align 1
@.str.32 = private unnamed_addr constant [15 x i8] c"DW_ATE_UNKNOWN\00", align 1
@.str.33 = private unnamed_addr constant [6 x i8] c"\09(%s)\00", align 1
@.str.34 = private unnamed_addr constant [8 x i8] c"DW_ATE_\00", align 1
@.str.35 = private unnamed_addr constant [9 x i8] c"DW_LANG_\00", align 1
@.str.36 = private unnamed_addr constant [17 x i8] c"\09(location list)\00", align 1
@.str.37 = private unnamed_addr constant [16 x i8] c"dwarf_child: %s\00", align 1
@.str.38 = private unnamed_addr constant [20 x i8] c"dwarf_siblingof: %s\00", align 1
@DW_DLA_DIE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.readelf*, i32, i32)* @dump_dwarf_die to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dump_dwarf_die(%struct.readelf* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.readelf*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i64, align 8
  %20 = alloca i64, align 8
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca %struct.TYPE_6__*, align 8
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  %27 = alloca %struct.TYPE_5__, align 8
  %28 = alloca i32, align 4
  %29 = alloca i32*, align 8
  %30 = alloca i8*, align 8
  %31 = alloca i8*, align 8
  %32 = alloca i8*, align 8
  %33 = alloca i8*, align 8
  %34 = alloca [32 x i8], align 16
  %35 = alloca [32 x i8], align 16
  %36 = alloca i8*, align 8
  %37 = alloca i32*, align 8
  %38 = alloca i32*, align 8
  %39 = alloca i32, align 4
  %40 = alloca i32, align 4
  %41 = alloca i32, align 4
  %42 = alloca i32, align 4
  store %struct.readelf* %0, %struct.readelf** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %43 = load i32, i32* %5, align 4
  %44 = call i32 @dwarf_dieoffset(i32 %43, i64* %9, i32* %28)
  %45 = load i32, i32* @DW_DLV_OK, align 4
  %46 = icmp ne i32 %44, %45
  br i1 %46, label %47, label %51

47:                                               ; preds = %3
  %48 = load i32, i32* %28, align 4
  %49 = call i32 @dwarf_errmsg(i32 %48)
  %50 = call i32 @warnx(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0), i32 %49)
  br label %474

51:                                               ; preds = %3
  %52 = load i32, i32* %6, align 4
  %53 = load i64, i64* %9, align 8
  %54 = trunc i64 %53 to i32
  %55 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0), i32 %52, i32 %54)
  %56 = load i32, i32* %5, align 4
  %57 = call i32 @dwarf_die_CU_offset_range(i32 %56, i64* %10, i64* %11, i32* %28)
  %58 = load i32, i32* @DW_DLV_OK, align 4
  %59 = icmp ne i32 %57, %58
  br i1 %59, label %60, label %64

60:                                               ; preds = %51
  %61 = load i32, i32* %28, align 4
  %62 = call i32 @dwarf_errmsg(i32 %61)
  %63 = call i32 @warnx(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.2, i64 0, i64 0), i32 %62)
  store i64 0, i64* %10, align 8
  br label %64

64:                                               ; preds = %60, %51
  %65 = load i32, i32* %5, align 4
  %66 = call i32 @dwarf_die_abbrev_code(i32 %65)
  store i32 %66, i32* %41, align 4
  %67 = load i32, i32* %5, align 4
  %68 = call i32 @dwarf_tag(i32 %67, i32* %21, i32* %28)
  %69 = load i32, i32* @DW_DLV_OK, align 4
  %70 = icmp ne i32 %68, %69
  br i1 %70, label %71, label %75

71:                                               ; preds = %64
  %72 = load i32, i32* %28, align 4
  %73 = call i32 @dwarf_errmsg(i32 %72)
  %74 = call i32 @warnx(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.3, i64 0, i64 0), i32 %73)
  br label %474

75:                                               ; preds = %64
  %76 = load i32, i32* %21, align 4
  %77 = call i32 @dwarf_get_TAG_name(i32 %76, i8** %30)
  %78 = load i32, i32* @DW_DLV_OK, align 4
  %79 = icmp ne i32 %77, %78
  br i1 %79, label %80, label %85

80:                                               ; preds = %75
  %81 = getelementptr inbounds [32 x i8], [32 x i8]* %34, i64 0, i64 0
  %82 = load i32, i32* %21, align 4
  %83 = call i32 @snprintf(i8* %81, i32 32, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.4, i64 0, i64 0), i32 %82)
  %84 = getelementptr inbounds [32 x i8], [32 x i8]* %34, i64 0, i64 0
  store i8* %84, i8** %30, align 8
  br label %85

85:                                               ; preds = %80, %75
  %86 = load i32, i32* %41, align 4
  %87 = load i8*, i8** %30, align 8
  %88 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.5, i64 0, i64 0), i32 %86, i8* %87)
  %89 = load i32, i32* %5, align 4
  %90 = call i32 @dwarf_attrlist(i32 %89, i32** %7, i32* %17, i32* %28)
  store i32 %90, i32* %42, align 4
  %91 = load i32, i32* @DW_DLV_OK, align 4
  %92 = icmp ne i32 %90, %91
  br i1 %92, label %93, label %102

93:                                               ; preds = %85
  %94 = load i32, i32* %42, align 4
  %95 = load i32, i32* @DW_DLV_ERROR, align 4
  %96 = icmp eq i32 %94, %95
  br i1 %96, label %97, label %101

97:                                               ; preds = %93
  %98 = load i32, i32* %28, align 4
  %99 = call i32 @dwarf_errmsg(i32 %98)
  %100 = call i32 @warnx(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.6, i64 0, i64 0), i32 %99)
  br label %101

101:                                              ; preds = %97, %93
  br label %474

102:                                              ; preds = %85
  store i32 0, i32* %39, align 4
  br label %103

103:                                              ; preds = %470, %102
  %104 = load i32, i32* %39, align 4
  %105 = load i32, i32* %17, align 4
  %106 = icmp slt i32 %104, %105
  br i1 %106, label %107, label %473

107:                                              ; preds = %103
  %108 = load i32*, i32** %7, align 8
  %109 = load i32, i32* %39, align 4
  %110 = sext i32 %109 to i64
  %111 = getelementptr inbounds i32, i32* %108, i64 %110
  %112 = load i32, i32* %111, align 4
  %113 = call i32 @dwarf_whatform(i32 %112, i32* %23, i32* %28)
  %114 = load i32, i32* @DW_DLV_OK, align 4
  %115 = icmp ne i32 %113, %114
  br i1 %115, label %116, label %120

116:                                              ; preds = %107
  %117 = load i32, i32* %28, align 4
  %118 = call i32 @dwarf_errmsg(i32 %117)
  %119 = call i32 @warnx(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.7, i64 0, i64 0), i32 %118)
  br label %470

120:                                              ; preds = %107
  %121 = load i32*, i32** %7, align 8
  %122 = load i32, i32* %39, align 4
  %123 = sext i32 %122 to i64
  %124 = getelementptr inbounds i32, i32* %121, i64 %123
  %125 = load i32, i32* %124, align 4
  %126 = call i32 @dwarf_whatattr(i32 %125, i32* %22, i32* %28)
  %127 = load i32, i32* @DW_DLV_OK, align 4
  %128 = icmp ne i32 %126, %127
  br i1 %128, label %129, label %133

129:                                              ; preds = %120
  %130 = load i32, i32* %28, align 4
  %131 = call i32 @dwarf_errmsg(i32 %130)
  %132 = call i32 @warnx(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.8, i64 0, i64 0), i32 %131)
  br label %470

133:                                              ; preds = %120
  %134 = load i32, i32* %22, align 4
  %135 = call i32 @dwarf_get_AT_name(i32 %134, i8** %31)
  %136 = load i32, i32* @DW_DLV_OK, align 4
  %137 = icmp ne i32 %135, %136
  br i1 %137, label %138, label %143

138:                                              ; preds = %133
  %139 = getelementptr inbounds [32 x i8], [32 x i8]* %35, i64 0, i64 0
  %140 = load i32, i32* %22, align 4
  %141 = call i32 @snprintf(i8* %139, i32 32, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.9, i64 0, i64 0), i32 %140)
  %142 = getelementptr inbounds [32 x i8], [32 x i8]* %35, i64 0, i64 0
  store i8* %142, i8** %31, align 8
  br label %143

143:                                              ; preds = %138, %133
  %144 = load i32*, i32** %7, align 8
  %145 = load i32, i32* %39, align 4
  %146 = sext i32 %145 to i64
  %147 = getelementptr inbounds i32, i32* %144, i64 %146
  %148 = load i32, i32* %147, align 4
  %149 = call i32 @dwarf_attroffset(i32 %148, i64* %12, i32* %28)
  %150 = load i32, i32* @DW_DLV_OK, align 4
  %151 = icmp ne i32 %149, %150
  br i1 %151, label %152, label %156

152:                                              ; preds = %143
  %153 = load i32, i32* %28, align 4
  %154 = call i32 @dwarf_errmsg(i32 %153)
  %155 = call i32 @warnx(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.10, i64 0, i64 0), i32 %154)
  store i64 0, i64* %12, align 8
  br label %156

156:                                              ; preds = %152, %143
  %157 = load i64, i64* %12, align 8
  %158 = trunc i64 %157 to i32
  %159 = load i8*, i8** %31, align 8
  %160 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.11, i64 0, i64 0), i32 %158, i8* %159)
  %161 = load i32, i32* %23, align 4
  switch i32 %161, label %423 [
    i32 135, label %162
    i32 131, label %162
    i32 139, label %187
    i32 138, label %187
    i32 137, label %187
    i32 136, label %187
    i32 133, label %187
    i32 151, label %207
    i32 146, label %224
    i32 145, label %224
    i32 144, label %224
    i32 143, label %224
    i32 128, label %224
    i32 132, label %250
    i32 141, label %266
    i32 140, label %282
    i32 130, label %284
    i32 129, label %284
    i32 150, label %307
    i32 149, label %307
    i32 148, label %307
    i32 147, label %307
    i32 142, label %357
    i32 134, label %397
  ]

162:                                              ; preds = %156, %156
  %163 = load i32*, i32** %7, align 8
  %164 = load i32, i32* %39, align 4
  %165 = sext i32 %164 to i64
  %166 = getelementptr inbounds i32, i32* %163, i64 %165
  %167 = load i32, i32* %166, align 4
  %168 = call i32 @dwarf_global_formref(i32 %167, i64* %19, i32* %28)
  %169 = load i32, i32* @DW_DLV_OK, align 4
  %170 = icmp ne i32 %168, %169
  br i1 %170, label %171, label %175

171:                                              ; preds = %162
  %172 = load i32, i32* %28, align 4
  %173 = call i32 @dwarf_errmsg(i32 %172)
  %174 = call i32 @warnx(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.12, i64 0, i64 0), i32 %173)
  br label %470

175:                                              ; preds = %162
  %176 = load i32, i32* %23, align 4
  %177 = icmp eq i32 %176, 135
  br i1 %177, label %178, label %182

178:                                              ; preds = %175
  %179 = load i64, i64* %19, align 8
  %180 = trunc i64 %179 to i32
  %181 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.13, i64 0, i64 0), i32 %180)
  br label %186

182:                                              ; preds = %175
  %183 = load i64, i64* %19, align 8
  %184 = trunc i64 %183 to i32
  %185 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.14, i64 0, i64 0), i32 %184)
  br label %186

186:                                              ; preds = %182, %178
  br label %423

187:                                              ; preds = %156, %156, %156, %156, %156
  %188 = load i32*, i32** %7, align 8
  %189 = load i32, i32* %39, align 4
  %190 = sext i32 %189 to i64
  %191 = getelementptr inbounds i32, i32* %188, i64 %190
  %192 = load i32, i32* %191, align 4
  %193 = call i32 @dwarf_formref(i32 %192, i64* %19, i32* %28)
  %194 = load i32, i32* @DW_DLV_OK, align 4
  %195 = icmp ne i32 %193, %194
  br i1 %195, label %196, label %200

196:                                              ; preds = %187
  %197 = load i32, i32* %28, align 4
  %198 = call i32 @dwarf_errmsg(i32 %197)
  %199 = call i32 @warnx(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.15, i64 0, i64 0), i32 %198)
  br label %470

200:                                              ; preds = %187
  %201 = load i64, i64* %10, align 8
  %202 = load i64, i64* %19, align 8
  %203 = add nsw i64 %202, %201
  store i64 %203, i64* %19, align 8
  %204 = load i64, i64* %19, align 8
  %205 = trunc i64 %204 to i32
  %206 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.13, i64 0, i64 0), i32 %205)
  br label %423

207:                                              ; preds = %156
  %208 = load i32*, i32** %7, align 8
  %209 = load i32, i32* %39, align 4
  %210 = sext i32 %209 to i64
  %211 = getelementptr inbounds i32, i32* %208, i64 %210
  %212 = load i32, i32* %211, align 4
  %213 = call i32 @dwarf_formaddr(i32 %212, i64* %20, i32* %28)
  %214 = load i32, i32* @DW_DLV_OK, align 4
  %215 = icmp ne i32 %213, %214
  br i1 %215, label %216, label %220

216:                                              ; preds = %207
  %217 = load i32, i32* %28, align 4
  %218 = call i32 @dwarf_errmsg(i32 %217)
  %219 = call i32 @warnx(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.16, i64 0, i64 0), i32 %218)
  br label %470

220:                                              ; preds = %207
  %221 = load i64, i64* %20, align 8
  %222 = trunc i64 %221 to i32
  %223 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.17, i64 0, i64 0), i32 %222)
  br label %423

224:                                              ; preds = %156, %156, %156, %156, %156
  %225 = load i32*, i32** %7, align 8
  %226 = load i32, i32* %39, align 4
  %227 = sext i32 %226 to i64
  %228 = getelementptr inbounds i32, i32* %225, i64 %227
  %229 = load i32, i32* %228, align 4
  %230 = call i32 @dwarf_formudata(i32 %229, i64* %15, i32* %28)
  %231 = load i32, i32* @DW_DLV_OK, align 4
  %232 = icmp ne i32 %230, %231
  br i1 %232, label %233, label %237

233:                                              ; preds = %224
  %234 = load i32, i32* %28, align 4
  %235 = call i32 @dwarf_errmsg(i32 %234)
  %236 = call i32 @warnx(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.18, i64 0, i64 0), i32 %235)
  br label %470

237:                                              ; preds = %224
  %238 = load i32, i32* %22, align 4
  %239 = load i32, i32* @DW_AT_high_pc, align 4
  %240 = icmp eq i32 %238, %239
  br i1 %240, label %241, label %245

241:                                              ; preds = %237
  %242 = load i64, i64* %15, align 8
  %243 = trunc i64 %242 to i32
  %244 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.14, i64 0, i64 0), i32 %243)
  br label %249

245:                                              ; preds = %237
  %246 = load i64, i64* %15, align 8
  %247 = trunc i64 %246 to i32
  %248 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.19, i64 0, i64 0), i32 %247)
  br label %249

249:                                              ; preds = %245, %241
  br label %423

250:                                              ; preds = %156
  %251 = load i32*, i32** %7, align 8
  %252 = load i32, i32* %39, align 4
  %253 = sext i32 %252 to i64
  %254 = getelementptr inbounds i32, i32* %251, i64 %253
  %255 = load i32, i32* %254, align 4
  %256 = call i32 @dwarf_formsdata(i32 %255, i32* %18, i32* %28)
  %257 = load i32, i32* @DW_DLV_OK, align 4
  %258 = icmp ne i32 %256, %257
  br i1 %258, label %259, label %263

259:                                              ; preds = %250
  %260 = load i32, i32* %28, align 4
  %261 = call i32 @dwarf_errmsg(i32 %260)
  %262 = call i32 @warnx(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.18, i64 0, i64 0), i32 %261)
  br label %470

263:                                              ; preds = %250
  %264 = load i32, i32* %18, align 4
  %265 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.20, i64 0, i64 0), i32 %264)
  br label %423

266:                                              ; preds = %156
  %267 = load i32*, i32** %7, align 8
  %268 = load i32, i32* %39, align 4
  %269 = sext i32 %268 to i64
  %270 = getelementptr inbounds i32, i32* %267, i64 %269
  %271 = load i32, i32* %270, align 4
  %272 = call i32 @dwarf_formflag(i32 %271, i32* %25, i32* %28)
  %273 = load i32, i32* @DW_DLV_OK, align 4
  %274 = icmp ne i32 %272, %273
  br i1 %274, label %275, label %279

275:                                              ; preds = %266
  %276 = load i32, i32* %28, align 4
  %277 = call i32 @dwarf_errmsg(i32 %276)
  %278 = call i32 @warnx(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.21, i64 0, i64 0), i32 %277)
  br label %470

279:                                              ; preds = %266
  %280 = load i32, i32* %25, align 4
  %281 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.20, i64 0, i64 0), i32 %280)
  br label %423

282:                                              ; preds = %156
  %283 = call i32 @putchar(i8 signext 49)
  br label %423

284:                                              ; preds = %156, %156
  %285 = load i32*, i32** %7, align 8
  %286 = load i32, i32* %39, align 4
  %287 = sext i32 %286 to i64
  %288 = getelementptr inbounds i32, i32* %285, i64 %287
  %289 = load i32, i32* %288, align 4
  %290 = call i32 @dwarf_formstring(i32 %289, i8** %36, i32* %28)
  %291 = load i32, i32* @DW_DLV_OK, align 4
  %292 = icmp ne i32 %290, %291
  br i1 %292, label %293, label %297

293:                                              ; preds = %284
  %294 = load i32, i32* %28, align 4
  %295 = call i32 @dwarf_errmsg(i32 %294)
  %296 = call i32 @warnx(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.22, i64 0, i64 0), i32 %295)
  br label %470

297:                                              ; preds = %284
  %298 = load i32, i32* %23, align 4
  %299 = icmp eq i32 %298, 130
  br i1 %299, label %300, label %303

300:                                              ; preds = %297
  %301 = load i8*, i8** %36, align 8
  %302 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.23, i64 0, i64 0), i8* %301)
  br label %306

303:                                              ; preds = %297
  %304 = load i8*, i8** %36, align 8
  %305 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.24, i64 0, i64 0), i8* %304)
  br label %306

306:                                              ; preds = %303, %300
  br label %423

307:                                              ; preds = %156, %156, %156, %156
  %308 = load i32*, i32** %7, align 8
  %309 = load i32, i32* %39, align 4
  %310 = sext i32 %309 to i64
  %311 = getelementptr inbounds i32, i32* %308, i64 %310
  %312 = load i32, i32* %311, align 4
  %313 = call i32 @dwarf_formblock(i32 %312, %struct.TYPE_6__** %24, i32* %28)
  %314 = load i32, i32* @DW_DLV_OK, align 4
  %315 = icmp ne i32 %313, %314
  br i1 %315, label %316, label %320

316:                                              ; preds = %307
  %317 = load i32, i32* %28, align 4
  %318 = call i32 @dwarf_errmsg(i32 %317)
  %319 = call i32 @warnx(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.25, i64 0, i64 0), i32 %318)
  br label %470

320:                                              ; preds = %307
  %321 = load %struct.TYPE_6__*, %struct.TYPE_6__** %24, align 8
  %322 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %321, i32 0, i32 1
  %323 = load i64, i64* %322, align 8
  %324 = trunc i64 %323 to i32
  %325 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.26, i64 0, i64 0), i32 %324)
  %326 = load %struct.TYPE_6__*, %struct.TYPE_6__** %24, align 8
  %327 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %326, i32 0, i32 0
  %328 = load i32*, i32** %327, align 8
  store i32* %328, i32** %37, align 8
  store i32 0, i32* %40, align 4
  br label %329

329:                                              ; preds = %343, %320
  %330 = load i32, i32* %40, align 4
  %331 = sext i32 %330 to i64
  %332 = load %struct.TYPE_6__*, %struct.TYPE_6__** %24, align 8
  %333 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %332, i32 0, i32 1
  %334 = load i64, i64* %333, align 8
  %335 = icmp slt i64 %331, %334
  br i1 %335, label %336, label %346

336:                                              ; preds = %329
  %337 = load i32*, i32** %37, align 8
  %338 = load i32, i32* %40, align 4
  %339 = sext i32 %338 to i64
  %340 = getelementptr inbounds i32, i32* %337, i64 %339
  %341 = load i32, i32* %340, align 4
  %342 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.27, i64 0, i64 0), i32 %341)
  br label %343

343:                                              ; preds = %336
  %344 = load i32, i32* %40, align 4
  %345 = add nsw i32 %344, 1
  store i32 %345, i32* %40, align 4
  br label %329

346:                                              ; preds = %329
  %347 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.28, i64 0, i64 0))
  %348 = load %struct.readelf*, %struct.readelf** %4, align 8
  %349 = load %struct.TYPE_6__*, %struct.TYPE_6__** %24, align 8
  %350 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %349, i32 0, i32 0
  %351 = load i32*, i32** %350, align 8
  %352 = load %struct.TYPE_6__*, %struct.TYPE_6__** %24, align 8
  %353 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %352, i32 0, i32 1
  %354 = load i64, i64* %353, align 8
  %355 = call i32 @dump_dwarf_block(%struct.readelf* %348, i32* %351, i64 %354)
  %356 = call i32 @putchar(i8 signext 41)
  br label %423

357:                                              ; preds = %156
  %358 = load i32*, i32** %7, align 8
  %359 = load i32, i32* %39, align 4
  %360 = sext i32 %359 to i64
  %361 = getelementptr inbounds i32, i32* %358, i64 %360
  %362 = load i32, i32* %361, align 4
  %363 = call i32 @dwarf_formexprloc(i32 %362, i64* %15, i32** %29, i32* %28)
  %364 = load i32, i32* @DW_DLV_OK, align 4
  %365 = icmp ne i32 %363, %364
  br i1 %365, label %366, label %370

366:                                              ; preds = %357
  %367 = load i32, i32* %28, align 4
  %368 = call i32 @dwarf_errmsg(i32 %367)
  %369 = call i32 @warnx(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.29, i64 0, i64 0), i32 %368)
  br label %470

370:                                              ; preds = %357
  %371 = load i64, i64* %15, align 8
  %372 = trunc i64 %371 to i32
  %373 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.26, i64 0, i64 0), i32 %372)
  %374 = load i32*, i32** %29, align 8
  store i32* %374, i32** %37, align 8
  store i32 0, i32* %40, align 4
  br label %375

375:                                              ; preds = %387, %370
  %376 = load i32, i32* %40, align 4
  %377 = sext i32 %376 to i64
  %378 = load i64, i64* %15, align 8
  %379 = icmp slt i64 %377, %378
  br i1 %379, label %380, label %390

380:                                              ; preds = %375
  %381 = load i32*, i32** %37, align 8
  %382 = load i32, i32* %40, align 4
  %383 = sext i32 %382 to i64
  %384 = getelementptr inbounds i32, i32* %381, i64 %383
  %385 = load i32, i32* %384, align 4
  %386 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.27, i64 0, i64 0), i32 %385)
  br label %387

387:                                              ; preds = %380
  %388 = load i32, i32* %40, align 4
  %389 = add nsw i32 %388, 1
  store i32 %389, i32* %40, align 4
  br label %375

390:                                              ; preds = %375
  %391 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.28, i64 0, i64 0))
  %392 = load %struct.readelf*, %struct.readelf** %4, align 8
  %393 = load i32*, i32** %29, align 8
  %394 = load i64, i64* %15, align 8
  %395 = call i32 @dump_dwarf_block(%struct.readelf* %392, i32* %393, i64 %394)
  %396 = call i32 @putchar(i8 signext 41)
  br label %423

397:                                              ; preds = %156
  %398 = load i32*, i32** %7, align 8
  %399 = load i32, i32* %39, align 4
  %400 = sext i32 %399 to i64
  %401 = getelementptr inbounds i32, i32* %398, i64 %400
  %402 = load i32, i32* %401, align 4
  %403 = call i32 @dwarf_formsig8(i32 %402, %struct.TYPE_5__* %27, i32* %28)
  %404 = load i32, i32* @DW_DLV_OK, align 4
  %405 = icmp ne i32 %403, %404
  br i1 %405, label %406, label %410

406:                                              ; preds = %397
  %407 = load i32, i32* %28, align 4
  %408 = call i32 @dwarf_errmsg(i32 %407)
  %409 = call i32 @warnx(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.30, i64 0, i64 0), i32 %408)
  br label %470

410:                                              ; preds = %397
  %411 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %27, i32 0, i32 0
  %412 = load i32*, i32** %411, align 8
  %413 = getelementptr inbounds i32, i32* %412, i64 0
  %414 = ptrtoint i32* %413 to i64
  %415 = inttoptr i64 %414 to i32*
  store i32* %415, i32** %38, align 8
  %416 = load %struct.readelf*, %struct.readelf** %4, align 8
  %417 = getelementptr inbounds %struct.readelf, %struct.readelf* %416, i32 0, i32 1
  %418 = load i64 (i32**, i32)*, i64 (i32**, i32)** %417, align 8
  %419 = call i64 %418(i32** %38, i32 8)
  store i64 %419, i64* %16, align 8
  %420 = load i64, i64* %16, align 8
  %421 = trunc i64 %420 to i32
  %422 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.31, i64 0, i64 0), i32 %421)
  br label %423

423:                                              ; preds = %410, %156, %390, %346, %306, %282, %279, %263, %249, %220, %200, %186
  %424 = load i32, i32* %22, align 4
  switch i32 %424, label %467 [
    i32 161, label %425
    i32 159, label %443
    i32 158, label %461
    i32 154, label %461
    i32 157, label %461
    i32 162, label %461
    i32 160, label %461
    i32 156, label %461
    i32 155, label %461
    i32 153, label %461
    i32 152, label %461
  ]

425:                                              ; preds = %423
  %426 = load i32, i32* %5, align 4
  %427 = load i32, i32* %22, align 4
  %428 = call i32 @dwarf_attrval_unsigned(i32 %426, i32 %427, i64* %13, i32* %28)
  %429 = load i32, i32* @DW_DLV_OK, align 4
  %430 = icmp ne i32 %428, %429
  br i1 %430, label %431, label %432

431:                                              ; preds = %425
  br label %468

432:                                              ; preds = %425
  %433 = load i64, i64* %13, align 8
  %434 = call i32 @dwarf_get_ATE_name(i64 %433, i8** %32)
  %435 = load i32, i32* @DW_DLV_OK, align 4
  %436 = icmp ne i32 %434, %435
  br i1 %436, label %437, label %438

437:                                              ; preds = %432
  store i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.32, i64 0, i64 0), i8** %32, align 8
  br label %438

438:                                              ; preds = %437, %432
  %439 = load i8*, i8** %32, align 8
  %440 = call i64 @strlen(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.34, i64 0, i64 0))
  %441 = getelementptr inbounds i8, i8* %439, i64 %440
  %442 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.33, i64 0, i64 0), i8* %441)
  br label %468

443:                                              ; preds = %423
  %444 = load i32, i32* %5, align 4
  %445 = load i32, i32* %22, align 4
  %446 = call i32 @dwarf_attrval_unsigned(i32 %444, i32 %445, i64* %14, i32* %28)
  %447 = load i32, i32* @DW_DLV_OK, align 4
  %448 = icmp ne i32 %446, %447
  br i1 %448, label %449, label %450

449:                                              ; preds = %443
  br label %468

450:                                              ; preds = %443
  %451 = load i64, i64* %14, align 8
  %452 = call i32 @dwarf_get_LANG_name(i64 %451, i8** %33)
  %453 = load i32, i32* @DW_DLV_OK, align 4
  %454 = icmp ne i32 %452, %453
  br i1 %454, label %455, label %456

455:                                              ; preds = %450
  br label %468

456:                                              ; preds = %450
  %457 = load i8*, i8** %33, align 8
  %458 = call i64 @strlen(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.35, i64 0, i64 0))
  %459 = getelementptr inbounds i8, i8* %457, i64 %458
  %460 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.33, i64 0, i64 0), i8* %459)
  br label %468

461:                                              ; preds = %423, %423, %423, %423, %423, %423, %423, %423, %423
  %462 = load i32, i32* %23, align 4
  switch i32 %462, label %465 [
    i32 144, label %463
    i32 143, label %463
    i32 131, label %463
  ]

463:                                              ; preds = %461, %461, %461
  %464 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.36, i64 0, i64 0))
  br label %466

465:                                              ; preds = %461
  br label %466

466:                                              ; preds = %465, %463
  br label %467

467:                                              ; preds = %423, %466
  br label %468

468:                                              ; preds = %467, %456, %455, %449, %438, %431
  %469 = call i32 @putchar(i8 signext 10)
  br label %470

470:                                              ; preds = %468, %406, %366, %316, %293, %275, %259, %233, %216, %196, %171, %129, %116
  %471 = load i32, i32* %39, align 4
  %472 = add nsw i32 %471, 1
  store i32 %472, i32* %39, align 4
  br label %103

473:                                              ; preds = %103
  br label %474

474:                                              ; preds = %473, %101, %71, %47
  %475 = load i32, i32* %5, align 4
  %476 = call i32 @dwarf_child(i32 %475, i32* %8, i32* %28)
  store i32 %476, i32* %42, align 4
  %477 = load i32, i32* %42, align 4
  %478 = load i32, i32* @DW_DLV_ERROR, align 4
  %479 = icmp eq i32 %477, %478
  br i1 %479, label %480, label %484

480:                                              ; preds = %474
  %481 = load i32, i32* %28, align 4
  %482 = call i32 @dwarf_errmsg(i32 %481)
  %483 = call i32 @warnx(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.37, i64 0, i64 0), i32 %482)
  br label %494

484:                                              ; preds = %474
  %485 = load i32, i32* %42, align 4
  %486 = load i32, i32* @DW_DLV_OK, align 4
  %487 = icmp eq i32 %485, %486
  br i1 %487, label %488, label %493

488:                                              ; preds = %484
  %489 = load %struct.readelf*, %struct.readelf** %4, align 8
  %490 = load i32, i32* %8, align 4
  %491 = load i32, i32* %6, align 4
  %492 = add nsw i32 %491, 1
  call void @dump_dwarf_die(%struct.readelf* %489, i32 %490, i32 %492)
  br label %493

493:                                              ; preds = %488, %484
  br label %494

494:                                              ; preds = %493, %480
  %495 = load i32, i32* %5, align 4
  %496 = call i32 @dwarf_get_die_infotypes_flag(i32 %495)
  store i32 %496, i32* %26, align 4
  %497 = load %struct.readelf*, %struct.readelf** %4, align 8
  %498 = getelementptr inbounds %struct.readelf, %struct.readelf* %497, i32 0, i32 0
  %499 = load i32, i32* %498, align 8
  %500 = load i32, i32* %5, align 4
  %501 = load i32, i32* %26, align 4
  %502 = call i32 @dwarf_siblingof_b(i32 %499, i32 %500, i32* %8, i32 %501, i32* %28)
  store i32 %502, i32* %42, align 4
  %503 = load i32, i32* %42, align 4
  %504 = load i32, i32* @DW_DLV_ERROR, align 4
  %505 = icmp eq i32 %503, %504
  br i1 %505, label %506, label %510

506:                                              ; preds = %494
  %507 = load i32, i32* %28, align 4
  %508 = call i32 @dwarf_errmsg(i32 %507)
  %509 = call i32 @warnx(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.38, i64 0, i64 0), i32 %508)
  br label %519

510:                                              ; preds = %494
  %511 = load i32, i32* %42, align 4
  %512 = load i32, i32* @DW_DLV_OK, align 4
  %513 = icmp eq i32 %511, %512
  br i1 %513, label %514, label %518

514:                                              ; preds = %510
  %515 = load %struct.readelf*, %struct.readelf** %4, align 8
  %516 = load i32, i32* %8, align 4
  %517 = load i32, i32* %6, align 4
  call void @dump_dwarf_die(%struct.readelf* %515, i32 %516, i32 %517)
  br label %518

518:                                              ; preds = %514, %510
  br label %519

519:                                              ; preds = %518, %506
  %520 = load %struct.readelf*, %struct.readelf** %4, align 8
  %521 = getelementptr inbounds %struct.readelf, %struct.readelf* %520, i32 0, i32 0
  %522 = load i32, i32* %521, align 8
  %523 = load i32, i32* %5, align 4
  %524 = load i32, i32* @DW_DLA_DIE, align 4
  %525 = call i32 @dwarf_dealloc(i32 %522, i32 %523, i32 %524)
  ret void
}

declare dso_local i32 @dwarf_dieoffset(i32, i64*, i32*) #1

declare dso_local i32 @warnx(i8*, i32) #1

declare dso_local i32 @dwarf_errmsg(i32) #1

declare dso_local i32 @printf(i8*, ...) #1

declare dso_local i32 @dwarf_die_CU_offset_range(i32, i64*, i64*, i32*) #1

declare dso_local i32 @dwarf_die_abbrev_code(i32) #1

declare dso_local i32 @dwarf_tag(i32, i32*, i32*) #1

declare dso_local i32 @dwarf_get_TAG_name(i32, i8**) #1

declare dso_local i32 @snprintf(i8*, i32, i8*, i32) #1

declare dso_local i32 @dwarf_attrlist(i32, i32**, i32*, i32*) #1

declare dso_local i32 @dwarf_whatform(i32, i32*, i32*) #1

declare dso_local i32 @dwarf_whatattr(i32, i32*, i32*) #1

declare dso_local i32 @dwarf_get_AT_name(i32, i8**) #1

declare dso_local i32 @dwarf_attroffset(i32, i64*, i32*) #1

declare dso_local i32 @dwarf_global_formref(i32, i64*, i32*) #1

declare dso_local i32 @dwarf_formref(i32, i64*, i32*) #1

declare dso_local i32 @dwarf_formaddr(i32, i64*, i32*) #1

declare dso_local i32 @dwarf_formudata(i32, i64*, i32*) #1

declare dso_local i32 @dwarf_formsdata(i32, i32*, i32*) #1

declare dso_local i32 @dwarf_formflag(i32, i32*, i32*) #1

declare dso_local i32 @putchar(i8 signext) #1

declare dso_local i32 @dwarf_formstring(i32, i8**, i32*) #1

declare dso_local i32 @dwarf_formblock(i32, %struct.TYPE_6__**, i32*) #1

declare dso_local i32 @dump_dwarf_block(%struct.readelf*, i32*, i64) #1

declare dso_local i32 @dwarf_formexprloc(i32, i64*, i32**, i32*) #1

declare dso_local i32 @dwarf_formsig8(i32, %struct.TYPE_5__*, i32*) #1

declare dso_local i32 @dwarf_attrval_unsigned(i32, i32, i64*, i32*) #1

declare dso_local i32 @dwarf_get_ATE_name(i64, i8**) #1

declare dso_local i64 @strlen(i8*) #1

declare dso_local i32 @dwarf_get_LANG_name(i64, i8**) #1

declare dso_local i32 @dwarf_child(i32, i32*, i32*) #1

declare dso_local i32 @dwarf_get_die_infotypes_flag(i32) #1

declare dso_local i32 @dwarf_siblingof_b(i32, i32, i32*, i32, i32*) #1

declare dso_local i32 @dwarf_dealloc(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

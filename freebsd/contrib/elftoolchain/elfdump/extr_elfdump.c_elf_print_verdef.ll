; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/elftoolchain/elfdump/extr_elfdump.c_elf_print_verdef.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/elftoolchain/elfdump/extr_elfdump.c_elf_print_verdef.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.elfdump = type { i32 }
%struct.section = type { i32, i32, i32 }
%struct.TYPE_5__ = type { i32, i32* }
%struct.TYPE_6__ = type { i32, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_7__ = type { i32, i32 }

@SOLARIS_FMT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [33 x i8] c"Version Definition Section:  %s\0A\00", align 1
@.str.1 = private unnamed_addr constant [35 x i8] c"\0Aversion definition section (%s):\0A\00", align 1
@.str.2 = private unnamed_addr constant [23 x i8] c"elf_getdata failed: %s\00", align 1
@.str.3 = private unnamed_addr constant [52 x i8] c"     index  version                     dependency\0A\00", align 1
@.str.4 = private unnamed_addr constant [5 x i8] c"[%d]\00", align 1
@.str.5 = private unnamed_addr constant [7 x i8] c"%10s  \00", align 1
@.str.6 = private unnamed_addr constant [12 x i8] c"\0Aentry: %d\0A\00", align 1
@.str.7 = private unnamed_addr constant [17 x i8] c"\09vd_version: %u\0A\00", align 1
@.str.8 = private unnamed_addr constant [15 x i8] c"\09vd_flags: %u\0A\00", align 1
@.str.9 = private unnamed_addr constant [13 x i8] c"\09vd_ndx: %u\0A\00", align 1
@.str.10 = private unnamed_addr constant [13 x i8] c"\09vd_cnt: %u\0A\00", align 1
@.str.11 = private unnamed_addr constant [14 x i8] c"\09vd_hash: %u\0A\00", align 1
@.str.12 = private unnamed_addr constant [13 x i8] c"\09vd_aux: %u\0A\00", align 1
@.str.13 = private unnamed_addr constant [15 x i8] c"\09vd_next: %u\0A\0A\00", align 1
@.str.14 = private unnamed_addr constant [9 x i8] c"%-26.26s\00", align 1
@.str.15 = private unnamed_addr constant [11 x i8] c"  %-20.20s\00", align 1
@.str.16 = private unnamed_addr constant [9 x i8] c"\0A%40.40s\00", align 1
@.str.17 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.18 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.19 = private unnamed_addr constant [11 x i8] c"\09\09vda: %d\0A\00", align 1
@.str.20 = private unnamed_addr constant [17 x i8] c"\09\09\09vda_name: %s\0A\00", align 1
@.str.21 = private unnamed_addr constant [17 x i8] c"\09\09\09vda_next: %u\0A\00", align 1
@VER_FLG_BASE = common dso_local global i32 0, align 4
@.str.22 = private unnamed_addr constant [9 x i8] c"%-20.20s\00", align 1
@.str.23 = private unnamed_addr constant [9 x i8] c"[ BASE ]\00", align 1
@.str.24 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.elfdump*, %struct.section*)* @elf_print_verdef to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @elf_print_verdef(%struct.elfdump* %0, %struct.section* %1) #0 {
  %3 = alloca %struct.elfdump*, align 8
  %4 = alloca %struct.section*, align 8
  %5 = alloca %struct.TYPE_5__*, align 8
  %6 = alloca %struct.TYPE_6__*, align 8
  %7 = alloca %struct.TYPE_7__*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca [10 x i8], align 1
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store %struct.elfdump* %0, %struct.elfdump** %3, align 8
  store %struct.section* %1, %struct.section** %4, align 8
  %17 = load %struct.elfdump*, %struct.elfdump** %3, align 8
  %18 = getelementptr inbounds %struct.elfdump, %struct.elfdump* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = load i32, i32* @SOLARIS_FMT, align 4
  %21 = and i32 %19, %20
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %28

23:                                               ; preds = %2
  %24 = load %struct.section*, %struct.section** %4, align 8
  %25 = getelementptr inbounds %struct.section, %struct.section* %24, i32 0, i32 2
  %26 = load i32, i32* %25, align 4
  %27 = call i32 (i8*, ...) @PRT(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i32 %26)
  br label %33

28:                                               ; preds = %2
  %29 = load %struct.section*, %struct.section** %4, align 8
  %30 = getelementptr inbounds %struct.section, %struct.section* %29, i32 0, i32 2
  %31 = load i32, i32* %30, align 4
  %32 = call i32 (i8*, ...) @PRT(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0), i32 %31)
  br label %33

33:                                               ; preds = %28, %23
  %34 = call i32 (...) @elf_errno()
  %35 = load %struct.section*, %struct.section** %4, align 8
  %36 = getelementptr inbounds %struct.section, %struct.section* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = call %struct.TYPE_5__* @elf_getdata(i32 %37, i32* null)
  store %struct.TYPE_5__* %38, %struct.TYPE_5__** %5, align 8
  %39 = icmp eq %struct.TYPE_5__* %38, null
  br i1 %39, label %40, label %49

40:                                               ; preds = %33
  %41 = call i32 (...) @elf_errno()
  store i32 %41, i32* %15, align 4
  %42 = load i32, i32* %15, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %48

44:                                               ; preds = %40
  %45 = load i32, i32* %15, align 4
  %46 = call i32 @elf_errmsg(i32 %45)
  %47 = call i32 @warnx(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.2, i64 0, i64 0), i32 %46)
  br label %48

48:                                               ; preds = %44, %40
  br label %248

49:                                               ; preds = %33
  %50 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %51 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %50, i32 0, i32 1
  %52 = load i32*, i32** %51, align 8
  store i32* %52, i32** %10, align 8
  %53 = load i32*, i32** %10, align 8
  %54 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %55 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 8
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds i32, i32* %53, i64 %57
  store i32* %58, i32** %11, align 8
  store i32 0, i32* %13, align 4
  %59 = load %struct.elfdump*, %struct.elfdump** %3, align 8
  %60 = getelementptr inbounds %struct.elfdump, %struct.elfdump* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = load i32, i32* @SOLARIS_FMT, align 4
  %63 = and i32 %61, %62
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %67

65:                                               ; preds = %49
  %66 = call i32 (i8*, ...) @PRT(i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.3, i64 0, i64 0))
  br label %67

67:                                               ; preds = %65, %49
  br label %68

68:                                               ; preds = %241, %67
  %69 = load i32*, i32** %10, align 8
  %70 = getelementptr inbounds i32, i32* %69, i64 28
  %71 = load i32*, i32** %11, align 8
  %72 = icmp ule i32* %70, %71
  br i1 %72, label %73, label %248

73:                                               ; preds = %68
  %74 = load i32*, i32** %10, align 8
  %75 = ptrtoint i32* %74 to i64
  %76 = inttoptr i64 %75 to %struct.TYPE_6__*
  store %struct.TYPE_6__* %76, %struct.TYPE_6__** %6, align 8
  %77 = load %struct.elfdump*, %struct.elfdump** %3, align 8
  %78 = getelementptr inbounds %struct.elfdump, %struct.elfdump* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 4
  %80 = load i32, i32* @SOLARIS_FMT, align 4
  %81 = and i32 %79, %80
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %83, label %91

83:                                               ; preds = %73
  %84 = getelementptr inbounds [10 x i8], [10 x i8]* %9, i64 0, i64 0
  %85 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %86 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 4
  %88 = call i32 @snprintf(i8* %84, i32 10, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0), i32 %87)
  %89 = getelementptr inbounds [10 x i8], [10 x i8]* %9, i64 0, i64 0
  %90 = call i32 (i8*, ...) @PRT(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i64 0, i64 0), i8* %89)
  br label %123

91:                                               ; preds = %73
  %92 = load i32, i32* %13, align 4
  %93 = add nsw i32 %92, 1
  store i32 %93, i32* %13, align 4
  %94 = call i32 (i8*, ...) @PRT(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.6, i64 0, i64 0), i32 %92)
  %95 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %96 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %95, i32 0, i32 6
  %97 = load i32, i32* %96, align 4
  %98 = call i32 (i8*, ...) @PRT(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.7, i64 0, i64 0), i32 %97)
  %99 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %100 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %99, i32 0, i32 1
  %101 = load i32, i32* %100, align 4
  %102 = call i32 (i8*, ...) @PRT(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.8, i64 0, i64 0), i32 %101)
  %103 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %104 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %103, i32 0, i32 0
  %105 = load i32, i32* %104, align 4
  %106 = call i32 (i8*, ...) @PRT(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.9, i64 0, i64 0), i32 %105)
  %107 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %108 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %107, i32 0, i32 2
  %109 = load i32, i32* %108, align 4
  %110 = call i32 (i8*, ...) @PRT(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.10, i64 0, i64 0), i32 %109)
  %111 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %112 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %111, i32 0, i32 5
  %113 = load i32, i32* %112, align 4
  %114 = call i32 (i8*, ...) @PRT(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.11, i64 0, i64 0), i32 %113)
  %115 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %116 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %115, i32 0, i32 4
  %117 = load i32, i32* %116, align 4
  %118 = call i32 (i8*, ...) @PRT(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.12, i64 0, i64 0), i32 %117)
  %119 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %120 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %119, i32 0, i32 3
  %121 = load i32, i32* %120, align 4
  %122 = call i32 (i8*, ...) @PRT(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.13, i64 0, i64 0), i32 %121)
  br label %123

123:                                              ; preds = %91, %83
  %124 = load i32*, i32** %10, align 8
  %125 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %126 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %125, i32 0, i32 4
  %127 = load i32, i32* %126, align 4
  %128 = sext i32 %127 to i64
  %129 = getelementptr inbounds i32, i32* %124, i64 %128
  store i32* %129, i32** %12, align 8
  store i32 0, i32* %14, align 4
  store i32 0, i32* %16, align 4
  br label %130

130:                                              ; preds = %228, %123
  %131 = load i32*, i32** %12, align 8
  %132 = getelementptr inbounds i32, i32* %131, i64 8
  %133 = load i32*, i32** %11, align 8
  %134 = icmp ule i32* %132, %133
  br i1 %134, label %135, label %141

135:                                              ; preds = %130
  %136 = load i32, i32* %14, align 4
  %137 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %138 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %137, i32 0, i32 2
  %139 = load i32, i32* %138, align 4
  %140 = icmp slt i32 %136, %139
  br label %141

141:                                              ; preds = %135, %130
  %142 = phi i1 [ false, %130 ], [ %140, %135 ]
  br i1 %142, label %143, label %235

143:                                              ; preds = %141
  %144 = load i32*, i32** %12, align 8
  %145 = ptrtoint i32* %144 to i64
  %146 = inttoptr i64 %145 to %struct.TYPE_7__*
  store %struct.TYPE_7__* %146, %struct.TYPE_7__** %7, align 8
  %147 = load %struct.elfdump*, %struct.elfdump** %3, align 8
  %148 = load %struct.section*, %struct.section** %4, align 8
  %149 = getelementptr inbounds %struct.section, %struct.section* %148, i32 0, i32 0
  %150 = load i32, i32* %149, align 4
  %151 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %152 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %151, i32 0, i32 1
  %153 = load i32, i32* %152, align 4
  %154 = call i8* @get_string(%struct.elfdump* %147, i32 %150, i32 %153)
  store i8* %154, i8** %8, align 8
  %155 = load %struct.elfdump*, %struct.elfdump** %3, align 8
  %156 = getelementptr inbounds %struct.elfdump, %struct.elfdump* %155, i32 0, i32 0
  %157 = load i32, i32* %156, align 4
  %158 = load i32, i32* @SOLARIS_FMT, align 4
  %159 = and i32 %157, %158
  %160 = icmp ne i32 %159, 0
  br i1 %160, label %161, label %179

161:                                              ; preds = %143
  %162 = load i32, i32* %16, align 4
  %163 = icmp eq i32 %162, 0
  br i1 %163, label %164, label %167

164:                                              ; preds = %161
  %165 = load i8*, i8** %8, align 8
  %166 = call i32 (i8*, ...) @PRT(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.14, i64 0, i64 0), i8* %165)
  br label %178

167:                                              ; preds = %161
  %168 = load i32, i32* %16, align 4
  %169 = icmp eq i32 %168, 1
  br i1 %169, label %170, label %173

170:                                              ; preds = %167
  %171 = load i8*, i8** %8, align 8
  %172 = call i32 (i8*, ...) @PRT(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.15, i64 0, i64 0), i8* %171)
  br label %177

173:                                              ; preds = %167
  %174 = call i32 (i8*, ...) @PRT(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.16, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.17, i64 0, i64 0))
  %175 = load i8*, i8** %8, align 8
  %176 = call i32 (i8*, ...) @PRT(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.18, i64 0, i64 0), i8* %175)
  br label %177

177:                                              ; preds = %173, %170
  br label %178

178:                                              ; preds = %177, %164
  br label %189

179:                                              ; preds = %143
  %180 = load i32, i32* %14, align 4
  %181 = add nsw i32 %180, 1
  store i32 %181, i32* %14, align 4
  %182 = call i32 (i8*, ...) @PRT(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.19, i64 0, i64 0), i32 %180)
  %183 = load i8*, i8** %8, align 8
  %184 = call i32 (i8*, ...) @PRT(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.20, i64 0, i64 0), i8* %183)
  %185 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %186 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %185, i32 0, i32 0
  %187 = load i32, i32* %186, align 4
  %188 = call i32 (i8*, ...) @PRT(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.21, i64 0, i64 0), i32 %187)
  br label %189

189:                                              ; preds = %179, %178
  %190 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %191 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %190, i32 0, i32 0
  %192 = load i32, i32* %191, align 4
  %193 = icmp eq i32 %192, 0
  br i1 %193, label %194, label %218

194:                                              ; preds = %189
  %195 = load %struct.elfdump*, %struct.elfdump** %3, align 8
  %196 = getelementptr inbounds %struct.elfdump, %struct.elfdump* %195, i32 0, i32 0
  %197 = load i32, i32* %196, align 4
  %198 = load i32, i32* @SOLARIS_FMT, align 4
  %199 = and i32 %197, %198
  %200 = icmp ne i32 %199, 0
  br i1 %200, label %201, label %217

201:                                              ; preds = %194
  %202 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %203 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %202, i32 0, i32 1
  %204 = load i32, i32* %203, align 4
  %205 = load i32, i32* @VER_FLG_BASE, align 4
  %206 = and i32 %204, %205
  %207 = icmp ne i32 %206, 0
  br i1 %207, label %208, label %215

208:                                              ; preds = %201
  %209 = load i32, i32* %16, align 4
  %210 = icmp eq i32 %209, 0
  br i1 %210, label %211, label %213

211:                                              ; preds = %208
  %212 = call i32 (i8*, ...) @PRT(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.22, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.17, i64 0, i64 0))
  br label %213

213:                                              ; preds = %211, %208
  %214 = call i32 (i8*, ...) @PRT(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.18, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.23, i64 0, i64 0))
  br label %215

215:                                              ; preds = %213, %201
  %216 = call i32 (i8*, ...) @PRT(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.24, i64 0, i64 0))
  br label %217

217:                                              ; preds = %215, %194
  br label %235

218:                                              ; preds = %189
  %219 = load %struct.elfdump*, %struct.elfdump** %3, align 8
  %220 = getelementptr inbounds %struct.elfdump, %struct.elfdump* %219, i32 0, i32 0
  %221 = load i32, i32* %220, align 4
  %222 = load i32, i32* @SOLARIS_FMT, align 4
  %223 = and i32 %221, %222
  %224 = icmp ne i32 %223, 0
  br i1 %224, label %225, label %228

225:                                              ; preds = %218
  %226 = load i32, i32* %16, align 4
  %227 = add nsw i32 %226, 1
  store i32 %227, i32* %16, align 4
  br label %228

228:                                              ; preds = %225, %218
  %229 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %230 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %229, i32 0, i32 0
  %231 = load i32, i32* %230, align 4
  %232 = load i32*, i32** %12, align 8
  %233 = sext i32 %231 to i64
  %234 = getelementptr inbounds i32, i32* %232, i64 %233
  store i32* %234, i32** %12, align 8
  br label %130

235:                                              ; preds = %217, %141
  %236 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %237 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %236, i32 0, i32 3
  %238 = load i32, i32* %237, align 4
  %239 = icmp eq i32 %238, 0
  br i1 %239, label %240, label %241

240:                                              ; preds = %235
  br label %248

241:                                              ; preds = %235
  %242 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %243 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %242, i32 0, i32 3
  %244 = load i32, i32* %243, align 4
  %245 = load i32*, i32** %10, align 8
  %246 = sext i32 %244 to i64
  %247 = getelementptr inbounds i32, i32* %245, i64 %246
  store i32* %247, i32** %10, align 8
  br label %68

248:                                              ; preds = %48, %240, %68
  ret void
}

declare dso_local i32 @PRT(i8*, ...) #1

declare dso_local i32 @elf_errno(...) #1

declare dso_local %struct.TYPE_5__* @elf_getdata(i32, i32*) #1

declare dso_local i32 @warnx(i8*, i32) #1

declare dso_local i32 @elf_errmsg(i32) #1

declare dso_local i32 @snprintf(i8*, i32, i8*, i32) #1

declare dso_local i8* @get_string(%struct.elfdump*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

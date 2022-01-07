; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/bfd/extr_elf.c_bfd_elf_print_symbol.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/bfd/extr_elf.c_bfd_elf_print_symbol.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_16__ = type { i8*, %struct.TYPE_12__*, i64, i32 }
%struct.TYPE_12__ = type { i8* }
%struct.elf_backend_data = type { i8* (i32*, i8*, %struct.TYPE_16__*)* }
%struct.TYPE_17__ = type { %struct.TYPE_18__*, %struct.TYPE_17__* }
%struct.TYPE_18__ = type { i32, i8*, %struct.TYPE_18__* }
%struct.TYPE_15__ = type { i32, %struct.TYPE_14__ }
%struct.TYPE_14__ = type { i8, i32, i32 }
%struct.TYPE_19__ = type { i32, %struct.TYPE_17__*, %struct.TYPE_13__*, i32, i32, i32 }
%struct.TYPE_13__ = type { i8* }

@.str = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"elf \00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c" %lx\00", align 1
@.str.3 = private unnamed_addr constant [9 x i8] c"(*none*)\00", align 1
@.str.4 = private unnamed_addr constant [5 x i8] c" %s\09\00", align 1
@VERSYM_VERSION = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.6 = private unnamed_addr constant [5 x i8] c"Base\00", align 1
@VERSYM_HIDDEN = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [8 x i8] c"  %-11s\00", align 1
@.str.8 = private unnamed_addr constant [6 x i8] c" (%s)\00", align 1
@.str.9 = private unnamed_addr constant [11 x i8] c" .internal\00", align 1
@.str.10 = private unnamed_addr constant [9 x i8] c" .hidden\00", align 1
@.str.11 = private unnamed_addr constant [12 x i8] c" .protected\00", align 1
@.str.12 = private unnamed_addr constant [8 x i8] c" 0x%02x\00", align 1
@.str.13 = private unnamed_addr constant [4 x i8] c" %s\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bfd_elf_print_symbol(i32* %0, i8* %1, %struct.TYPE_16__* %2, i32 %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.TYPE_16__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca %struct.elf_backend_data*, align 8
  %13 = alloca i8, align 1
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i8*, align 8
  %17 = alloca %struct.TYPE_17__*, align 8
  %18 = alloca %struct.TYPE_18__*, align 8
  %19 = alloca i32, align 4
  store i32* %0, i32** %5, align 8
  store i8* %1, i8** %6, align 8
  store %struct.TYPE_16__* %2, %struct.TYPE_16__** %7, align 8
  store i32 %3, i32* %8, align 4
  %20 = load i8*, i8** %6, align 8
  %21 = bitcast i8* %20 to i32*
  store i32* %21, i32** %9, align 8
  %22 = load i32, i32* %8, align 4
  switch i32 %22, label %252 [
    i32 128, label %23
    i32 129, label %29
    i32 130, label %43
  ]

23:                                               ; preds = %4
  %24 = load i32*, i32** %9, align 8
  %25 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %26 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %25, i32 0, i32 0
  %27 = load i8*, i8** %26, align 8
  %28 = call i32 (i32*, i8*, ...) @fprintf(i32* %24, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i8* %27)
  br label %252

29:                                               ; preds = %4
  %30 = load i32*, i32** %9, align 8
  %31 = call i32 (i32*, i8*, ...) @fprintf(i32* %30, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0))
  %32 = load i32*, i32** %5, align 8
  %33 = load i32*, i32** %9, align 8
  %34 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %35 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %34, i32 0, i32 3
  %36 = load i32, i32* %35, align 8
  %37 = call i32 @bfd_fprintf_vma(i32* %32, i32* %33, i32 %36)
  %38 = load i32*, i32** %9, align 8
  %39 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %40 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %39, i32 0, i32 2
  %41 = load i64, i64* %40, align 8
  %42 = call i32 (i32*, i8*, ...) @fprintf(i32* %38, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), i64 %41)
  br label %252

43:                                               ; preds = %4
  store i8* null, i8** %11, align 8
  %44 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %45 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %44, i32 0, i32 1
  %46 = load %struct.TYPE_12__*, %struct.TYPE_12__** %45, align 8
  %47 = icmp ne %struct.TYPE_12__* %46, null
  br i1 %47, label %48, label %54

48:                                               ; preds = %43
  %49 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %50 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %49, i32 0, i32 1
  %51 = load %struct.TYPE_12__*, %struct.TYPE_12__** %50, align 8
  %52 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %51, i32 0, i32 0
  %53 = load i8*, i8** %52, align 8
  br label %55

54:                                               ; preds = %43
  br label %55

55:                                               ; preds = %54, %48
  %56 = phi i8* [ %53, %48 ], [ getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0), %54 ]
  store i8* %56, i8** %10, align 8
  %57 = load i32*, i32** %5, align 8
  %58 = call %struct.elf_backend_data* @get_elf_backend_data(i32* %57)
  store %struct.elf_backend_data* %58, %struct.elf_backend_data** %12, align 8
  %59 = load %struct.elf_backend_data*, %struct.elf_backend_data** %12, align 8
  %60 = getelementptr inbounds %struct.elf_backend_data, %struct.elf_backend_data* %59, i32 0, i32 0
  %61 = load i8* (i32*, i8*, %struct.TYPE_16__*)*, i8* (i32*, i8*, %struct.TYPE_16__*)** %60, align 8
  %62 = icmp ne i8* (i32*, i8*, %struct.TYPE_16__*)* %61, null
  br i1 %62, label %63, label %71

63:                                               ; preds = %55
  %64 = load %struct.elf_backend_data*, %struct.elf_backend_data** %12, align 8
  %65 = getelementptr inbounds %struct.elf_backend_data, %struct.elf_backend_data* %64, i32 0, i32 0
  %66 = load i8* (i32*, i8*, %struct.TYPE_16__*)*, i8* (i32*, i8*, %struct.TYPE_16__*)** %65, align 8
  %67 = load i32*, i32** %5, align 8
  %68 = load i8*, i8** %6, align 8
  %69 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %70 = call i8* %66(i32* %67, i8* %68, %struct.TYPE_16__* %69)
  store i8* %70, i8** %11, align 8
  br label %71

71:                                               ; preds = %63, %55
  %72 = load i8*, i8** %11, align 8
  %73 = icmp eq i8* %72, null
  br i1 %73, label %74, label %82

74:                                               ; preds = %71
  %75 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %76 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %75, i32 0, i32 0
  %77 = load i8*, i8** %76, align 8
  store i8* %77, i8** %11, align 8
  %78 = load i32*, i32** %5, align 8
  %79 = load i32*, i32** %9, align 8
  %80 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %81 = call i32 @bfd_print_symbol_vandf(i32* %78, i32* %79, %struct.TYPE_16__* %80)
  br label %82

82:                                               ; preds = %74, %71
  %83 = load i32*, i32** %9, align 8
  %84 = load i8*, i8** %10, align 8
  %85 = call i32 (i32*, i8*, ...) @fprintf(i32* %83, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0), i8* %84)
  %86 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %87 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %86, i32 0, i32 1
  %88 = load %struct.TYPE_12__*, %struct.TYPE_12__** %87, align 8
  %89 = call i32 @bfd_is_com_section(%struct.TYPE_12__* %88)
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %91, label %97

91:                                               ; preds = %82
  %92 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %93 = bitcast %struct.TYPE_16__* %92 to %struct.TYPE_15__*
  %94 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %93, i32 0, i32 1
  %95 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %94, i32 0, i32 2
  %96 = load i32, i32* %95, align 4
  store i32 %96, i32* %14, align 4
  br label %103

97:                                               ; preds = %82
  %98 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %99 = bitcast %struct.TYPE_16__* %98 to %struct.TYPE_15__*
  %100 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %99, i32 0, i32 1
  %101 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %100, i32 0, i32 1
  %102 = load i32, i32* %101, align 4
  store i32 %102, i32* %14, align 4
  br label %103

103:                                              ; preds = %97, %91
  %104 = load i32*, i32** %5, align 8
  %105 = load i32*, i32** %9, align 8
  %106 = load i32, i32* %14, align 4
  %107 = call i32 @bfd_fprintf_vma(i32* %104, i32* %105, i32 %106)
  %108 = load i32*, i32** %5, align 8
  %109 = call %struct.TYPE_19__* @elf_tdata(i32* %108)
  %110 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %109, i32 0, i32 5
  %111 = load i32, i32* %110, align 8
  %112 = icmp ne i32 %111, 0
  br i1 %112, label %113, label %225

113:                                              ; preds = %103
  %114 = load i32*, i32** %5, align 8
  %115 = call %struct.TYPE_19__* @elf_tdata(i32* %114)
  %116 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %115, i32 0, i32 4
  %117 = load i32, i32* %116, align 4
  %118 = icmp ne i32 %117, 0
  br i1 %118, label %125, label %119

119:                                              ; preds = %113
  %120 = load i32*, i32** %5, align 8
  %121 = call %struct.TYPE_19__* @elf_tdata(i32* %120)
  %122 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %121, i32 0, i32 3
  %123 = load i32, i32* %122, align 8
  %124 = icmp ne i32 %123, 0
  br i1 %124, label %125, label %225

125:                                              ; preds = %119, %113
  %126 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %127 = bitcast %struct.TYPE_16__* %126 to %struct.TYPE_15__*
  %128 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %127, i32 0, i32 0
  %129 = load i32, i32* %128, align 4
  %130 = load i32, i32* @VERSYM_VERSION, align 4
  %131 = and i32 %129, %130
  store i32 %131, i32* %15, align 4
  %132 = load i32, i32* %15, align 4
  %133 = icmp eq i32 %132, 0
  br i1 %133, label %134, label %135

134:                                              ; preds = %125
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.5, i64 0, i64 0), i8** %16, align 8
  br label %195

135:                                              ; preds = %125
  %136 = load i32, i32* %15, align 4
  %137 = icmp eq i32 %136, 1
  br i1 %137, label %138, label %139

138:                                              ; preds = %135
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i64 0, i64 0), i8** %16, align 8
  br label %194

139:                                              ; preds = %135
  %140 = load i32, i32* %15, align 4
  %141 = load i32*, i32** %5, align 8
  %142 = call %struct.TYPE_19__* @elf_tdata(i32* %141)
  %143 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %142, i32 0, i32 0
  %144 = load i32, i32* %143, align 8
  %145 = icmp ule i32 %140, %144
  br i1 %145, label %146, label %157

146:                                              ; preds = %139
  %147 = load i32*, i32** %5, align 8
  %148 = call %struct.TYPE_19__* @elf_tdata(i32* %147)
  %149 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %148, i32 0, i32 2
  %150 = load %struct.TYPE_13__*, %struct.TYPE_13__** %149, align 8
  %151 = load i32, i32* %15, align 4
  %152 = sub i32 %151, 1
  %153 = zext i32 %152 to i64
  %154 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %150, i64 %153
  %155 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %154, i32 0, i32 0
  %156 = load i8*, i8** %155, align 8
  store i8* %156, i8** %16, align 8
  br label %193

157:                                              ; preds = %139
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.5, i64 0, i64 0), i8** %16, align 8
  %158 = load i32*, i32** %5, align 8
  %159 = call %struct.TYPE_19__* @elf_tdata(i32* %158)
  %160 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %159, i32 0, i32 1
  %161 = load %struct.TYPE_17__*, %struct.TYPE_17__** %160, align 8
  store %struct.TYPE_17__* %161, %struct.TYPE_17__** %17, align 8
  br label %162

162:                                              ; preds = %188, %157
  %163 = load %struct.TYPE_17__*, %struct.TYPE_17__** %17, align 8
  %164 = icmp ne %struct.TYPE_17__* %163, null
  br i1 %164, label %165, label %192

165:                                              ; preds = %162
  %166 = load %struct.TYPE_17__*, %struct.TYPE_17__** %17, align 8
  %167 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %166, i32 0, i32 0
  %168 = load %struct.TYPE_18__*, %struct.TYPE_18__** %167, align 8
  store %struct.TYPE_18__* %168, %struct.TYPE_18__** %18, align 8
  br label %169

169:                                              ; preds = %183, %165
  %170 = load %struct.TYPE_18__*, %struct.TYPE_18__** %18, align 8
  %171 = icmp ne %struct.TYPE_18__* %170, null
  br i1 %171, label %172, label %187

172:                                              ; preds = %169
  %173 = load %struct.TYPE_18__*, %struct.TYPE_18__** %18, align 8
  %174 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %173, i32 0, i32 0
  %175 = load i32, i32* %174, align 8
  %176 = load i32, i32* %15, align 4
  %177 = icmp eq i32 %175, %176
  br i1 %177, label %178, label %182

178:                                              ; preds = %172
  %179 = load %struct.TYPE_18__*, %struct.TYPE_18__** %18, align 8
  %180 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %179, i32 0, i32 1
  %181 = load i8*, i8** %180, align 8
  store i8* %181, i8** %16, align 8
  br label %187

182:                                              ; preds = %172
  br label %183

183:                                              ; preds = %182
  %184 = load %struct.TYPE_18__*, %struct.TYPE_18__** %18, align 8
  %185 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %184, i32 0, i32 2
  %186 = load %struct.TYPE_18__*, %struct.TYPE_18__** %185, align 8
  store %struct.TYPE_18__* %186, %struct.TYPE_18__** %18, align 8
  br label %169

187:                                              ; preds = %178, %169
  br label %188

188:                                              ; preds = %187
  %189 = load %struct.TYPE_17__*, %struct.TYPE_17__** %17, align 8
  %190 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %189, i32 0, i32 1
  %191 = load %struct.TYPE_17__*, %struct.TYPE_17__** %190, align 8
  store %struct.TYPE_17__* %191, %struct.TYPE_17__** %17, align 8
  br label %162

192:                                              ; preds = %162
  br label %193

193:                                              ; preds = %192, %146
  br label %194

194:                                              ; preds = %193, %138
  br label %195

195:                                              ; preds = %194, %134
  %196 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %197 = bitcast %struct.TYPE_16__* %196 to %struct.TYPE_15__*
  %198 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %197, i32 0, i32 0
  %199 = load i32, i32* %198, align 4
  %200 = load i32, i32* @VERSYM_HIDDEN, align 4
  %201 = and i32 %199, %200
  %202 = icmp eq i32 %201, 0
  br i1 %202, label %203, label %207

203:                                              ; preds = %195
  %204 = load i32*, i32** %9, align 8
  %205 = load i8*, i8** %16, align 8
  %206 = call i32 (i32*, i8*, ...) @fprintf(i32* %204, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.7, i64 0, i64 0), i8* %205)
  br label %224

207:                                              ; preds = %195
  %208 = load i32*, i32** %9, align 8
  %209 = load i8*, i8** %16, align 8
  %210 = call i32 (i32*, i8*, ...) @fprintf(i32* %208, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.8, i64 0, i64 0), i8* %209)
  %211 = load i8*, i8** %16, align 8
  %212 = call i32 @strlen(i8* %211)
  %213 = sub nsw i32 10, %212
  store i32 %213, i32* %19, align 4
  br label %214

214:                                              ; preds = %220, %207
  %215 = load i32, i32* %19, align 4
  %216 = icmp sgt i32 %215, 0
  br i1 %216, label %217, label %223

217:                                              ; preds = %214
  %218 = load i32*, i32** %9, align 8
  %219 = call i32 @putc(i8 signext 32, i32* %218)
  br label %220

220:                                              ; preds = %217
  %221 = load i32, i32* %19, align 4
  %222 = add nsw i32 %221, -1
  store i32 %222, i32* %19, align 4
  br label %214

223:                                              ; preds = %214
  br label %224

224:                                              ; preds = %223, %203
  br label %225

225:                                              ; preds = %224, %119, %103
  %226 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %227 = bitcast %struct.TYPE_16__* %226 to %struct.TYPE_15__*
  %228 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %227, i32 0, i32 1
  %229 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %228, i32 0, i32 0
  %230 = load i8, i8* %229, align 4
  store i8 %230, i8* %13, align 1
  %231 = load i8, i8* %13, align 1
  %232 = zext i8 %231 to i32
  switch i32 %232, label %243 [
    i32 0, label %233
    i32 132, label %234
    i32 133, label %237
    i32 131, label %240
  ]

233:                                              ; preds = %225
  br label %248

234:                                              ; preds = %225
  %235 = load i32*, i32** %9, align 8
  %236 = call i32 (i32*, i8*, ...) @fprintf(i32* %235, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.9, i64 0, i64 0))
  br label %248

237:                                              ; preds = %225
  %238 = load i32*, i32** %9, align 8
  %239 = call i32 (i32*, i8*, ...) @fprintf(i32* %238, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.10, i64 0, i64 0))
  br label %248

240:                                              ; preds = %225
  %241 = load i32*, i32** %9, align 8
  %242 = call i32 (i32*, i8*, ...) @fprintf(i32* %241, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.11, i64 0, i64 0))
  br label %248

243:                                              ; preds = %225
  %244 = load i32*, i32** %9, align 8
  %245 = load i8, i8* %13, align 1
  %246 = zext i8 %245 to i32
  %247 = call i32 (i32*, i8*, ...) @fprintf(i32* %244, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.12, i64 0, i64 0), i32 %246)
  br label %248

248:                                              ; preds = %243, %240, %237, %234, %233
  %249 = load i32*, i32** %9, align 8
  %250 = load i8*, i8** %11, align 8
  %251 = call i32 (i32*, i8*, ...) @fprintf(i32* %249, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.13, i64 0, i64 0), i8* %250)
  br label %252

252:                                              ; preds = %4, %248, %29, %23
  ret void
}

declare dso_local i32 @fprintf(i32*, i8*, ...) #1

declare dso_local i32 @bfd_fprintf_vma(i32*, i32*, i32) #1

declare dso_local %struct.elf_backend_data* @get_elf_backend_data(i32*) #1

declare dso_local i32 @bfd_print_symbol_vandf(i32*, i32*, %struct.TYPE_16__*) #1

declare dso_local i32 @bfd_is_com_section(%struct.TYPE_12__*) #1

declare dso_local %struct.TYPE_19__* @elf_tdata(i32*) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @putc(i8 signext, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

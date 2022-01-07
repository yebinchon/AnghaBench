; ModuleID = '/home/carl/AnghaBench/freebsd/cddl/contrib/opensolaris/tools/ctf/cvt/extr_output.c_write_file.c'
source_filename = "/home/carl/AnghaBench/freebsd/cddl/contrib/opensolaris/tools/ctf/cvt/extr_output.c_write_file.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_22__ = type { i32, i8, i64, %struct.TYPE_22__*, i32, i32 }
%struct.TYPE_25__ = type { i32, i32, i32, i64, i64 }
%struct.TYPE_24__ = type { i64, i64, i64, i64, i32, i32, i8, i32 }
%struct.TYPE_23__ = type { i64 }

@CTF_USE_DYNSYM = common dso_local global i32 0, align 4
@CTF_KEEP_STABS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"Cannot copy ehdr to temp file\00", align 1
@SHT_DYNSYM = common dso_local global i64 0, align 8
@SHT_SYMTAB = common dso_local global i64 0, align 8
@ELF_C_SET = common dso_local global i32 0, align 4
@ELF_F_LAYOUT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [31 x i8] c"Cannot make phdrs in temp file\00", align 1
@.str.2 = private unnamed_addr constant [24 x i8] c"Can't find string at %u\00", align 1
@CTF_ELF_SCN_NAME = common dso_local global i8* null, align 8
@.str.3 = private unnamed_addr constant [6 x i8] c".stab\00", align 1
@.str.4 = private unnamed_addr constant [7 x i8] c".debug\00", align 1
@.str.5 = private unnamed_addr constant [11 x i8] c".rel.debug\00", align 1
@.str.6 = private unnamed_addr constant [12 x i8] c".rela.debug\00", align 1
@SHT_REL = common dso_local global i64 0, align 8
@SHT_RELA = common dso_local global i64 0, align 8
@.str.7 = private unnamed_addr constant [22 x i8] c"Cannot update sect %s\00", align 1
@.str.8 = private unnamed_addr constant [24 x i8] c"Cannot get sect %s data\00", align 1
@.str.9 = private unnamed_addr constant [24 x i8] c"Can't make sect %s data\00", align 1
@.str.10 = private unnamed_addr constant [25 x i8] c"Could not get symbol %d\0A\00", align 1
@SHN_LORESERVE = common dso_local global i64 0, align 8
@SHT_NOBITS = common dso_local global i64 0, align 8
@.str.11 = private unnamed_addr constant [28 x i8] c"%s: Cannot find %s section\0A\00", align 1
@.str.12 = private unnamed_addr constant [11 x i8] c"SHT_DYNSYM\00", align 1
@.str.13 = private unnamed_addr constant [11 x i8] c"SHT_SYMTAB\00", align 1
@SHT_PROGBITS = common dso_local global i64 0, align 8
@ELF_T_ADDR = common dso_local global i32 0, align 4
@EV_CURRENT = common dso_local global i32 0, align 4
@ELF_C_WRITE = common dso_local global i32 0, align 4
@.str.14 = private unnamed_addr constant [26 x i8] c"Cannot finalize temp file\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i8*, i32*, i8*, %struct.TYPE_22__*, i64, i32)* @write_file to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @write_file(i32* %0, i8* %1, i32* %2, i8* %3, %struct.TYPE_22__* %4, i64 %5, i32 %6) #0 {
  %8 = alloca i32*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca %struct.TYPE_22__*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  %15 = alloca %struct.TYPE_25__, align 8
  %16 = alloca %struct.TYPE_25__, align 8
  %17 = alloca i32*, align 8
  %18 = alloca i32*, align 8
  %19 = alloca %struct.TYPE_22__*, align 8
  %20 = alloca %struct.TYPE_22__*, align 8
  %21 = alloca %struct.TYPE_24__, align 8
  %22 = alloca i64, align 8
  %23 = alloca i32, align 4
  %24 = alloca i64, align 8
  %25 = alloca i64, align 8
  %26 = alloca i32, align 4
  %27 = alloca i32, align 4
  %28 = alloca i32*, align 8
  %29 = alloca i32, align 4
  %30 = alloca i32, align 4
  %31 = alloca i32, align 4
  %32 = alloca i32, align 4
  %33 = alloca i32, align 4
  %34 = alloca i32, align 4
  %35 = alloca i32, align 4
  %36 = alloca i32*, align 8
  %37 = alloca %struct.TYPE_24__, align 8
  %38 = alloca i8*, align 8
  %39 = alloca i8*, align 8
  %40 = alloca i8, align 1
  %41 = alloca i32, align 4
  %42 = alloca %struct.TYPE_23__, align 8
  %43 = alloca i16, align 2
  %44 = alloca i64, align 8
  %45 = alloca i64, align 8
  store i32* %0, i32** %8, align 8
  store i8* %1, i8** %9, align 8
  store i32* %2, i32** %10, align 8
  store i8* %3, i8** %11, align 8
  store %struct.TYPE_22__* %4, %struct.TYPE_22__** %12, align 8
  store i64 %5, i64* %13, align 8
  store i32 %6, i32* %14, align 4
  store i32 -1, i32* %23, align 4
  store i64 0, i64* %24, align 8
  store i64 0, i64* %25, align 8
  %46 = load i32, i32* %14, align 4
  %47 = load i32, i32* @CTF_USE_DYNSYM, align 4
  %48 = and i32 %46, %47
  store i32 %48, i32* %26, align 4
  %49 = load i32, i32* %14, align 4
  %50 = load i32, i32* @CTF_KEEP_STABS, align 4
  %51 = and i32 %49, %50
  store i32 %51, i32* %27, align 4
  store i32 0, i32* %31, align 4
  store i32 0, i32* %32, align 4
  %52 = load i32*, i32** %10, align 8
  %53 = load i32*, i32** %8, align 8
  %54 = call i32 @gelf_getclass(i32* %53)
  %55 = call i32* @gelf_newehdr(i32* %52, i32 %54)
  %56 = icmp eq i32* %55, null
  br i1 %56, label %57, label %60

57:                                               ; preds = %7
  %58 = load i8*, i8** %11, align 8
  %59 = call i32 (i8*, i8*, ...) @elfterminate(i8* %58, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0))
  br label %60

60:                                               ; preds = %57, %7
  %61 = load i32*, i32** %8, align 8
  %62 = call i32 @gelf_getehdr(i32* %61, %struct.TYPE_25__* %15)
  %63 = call i32 @memcpy(%struct.TYPE_25__* %16, %struct.TYPE_25__* %15, i32 32)
  %64 = load i32*, i32** %10, align 8
  %65 = call i32 @gelf_update_ehdr(i32* %64, %struct.TYPE_25__* %16)
  %66 = load i32, i32* %26, align 4
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %70

68:                                               ; preds = %60
  %69 = load i64, i64* @SHT_DYNSYM, align 8
  br label %72

70:                                               ; preds = %60
  %71 = load i64, i64* @SHT_SYMTAB, align 8
  br label %72

72:                                               ; preds = %70, %68
  %73 = phi i64 [ %69, %68 ], [ %71, %70 ]
  store i64 %73, i64* %22, align 8
  %74 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %15, i32 0, i32 0
  %75 = load i32, i32* %74, align 8
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %77, label %107

77:                                               ; preds = %72
  %78 = load i32*, i32** %10, align 8
  %79 = load i32, i32* @ELF_C_SET, align 4
  %80 = load i32, i32* @ELF_F_LAYOUT, align 4
  %81 = call i32 @elf_flagelf(i32* %78, i32 %79, i32 %80)
  %82 = load i32*, i32** %10, align 8
  %83 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %15, i32 0, i32 0
  %84 = load i32, i32* %83, align 8
  %85 = call i32* @gelf_newphdr(i32* %82, i32 %84)
  %86 = icmp eq i32* %85, null
  br i1 %86, label %87, label %90

87:                                               ; preds = %77
  %88 = load i8*, i8** %11, align 8
  %89 = call i32 (i8*, i8*, ...) @elfterminate(i8* %88, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0))
  br label %90

90:                                               ; preds = %87, %77
  store i32 0, i32* %34, align 4
  br label %91

91:                                               ; preds = %103, %90
  %92 = load i32, i32* %34, align 4
  %93 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %15, i32 0, i32 0
  %94 = load i32, i32* %93, align 8
  %95 = icmp slt i32 %92, %94
  br i1 %95, label %96, label %106

96:                                               ; preds = %91
  %97 = load i32*, i32** %8, align 8
  %98 = load i32, i32* %34, align 4
  %99 = call i32 @gelf_getphdr(i32* %97, i32 %98, i32* %35)
  %100 = load i32*, i32** %10, align 8
  %101 = load i32, i32* %34, align 4
  %102 = call i32 @gelf_update_phdr(i32* %100, i32 %101, i32* %35)
  br label %103

103:                                              ; preds = %96
  %104 = load i32, i32* %34, align 4
  %105 = add nsw i32 %104, 1
  store i32 %105, i32* %34, align 4
  br label %91

106:                                              ; preds = %91
  br label %107

107:                                              ; preds = %106, %72
  %108 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %15, i32 0, i32 1
  %109 = load i32, i32* %108, align 4
  %110 = sext i32 %109 to i64
  %111 = mul i64 4, %110
  %112 = trunc i64 %111 to i8
  %113 = call i8* @xmalloc(i8 signext %112)
  %114 = bitcast i8* %113 to i32*
  store i32* %114, i32** %28, align 8
  store i32 0, i32* %30, align 4
  store i32 0, i32* %29, align 4
  br label %115

115:                                              ; preds = %204, %107
  %116 = load i32, i32* %29, align 4
  %117 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %15, i32 0, i32 1
  %118 = load i32, i32* %117, align 4
  %119 = icmp slt i32 %116, %118
  br i1 %119, label %120, label %207

120:                                              ; preds = %115
  %121 = load i32*, i32** %8, align 8
  %122 = load i32, i32* %29, align 4
  %123 = call i32* @elf_getscn(i32* %121, i32 %122)
  store i32* %123, i32** %36, align 8
  %124 = load i32*, i32** %36, align 8
  %125 = call i32 @gelf_getshdr(i32* %124, %struct.TYPE_24__* %37)
  %126 = load i32*, i32** %8, align 8
  %127 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %15, i32 0, i32 2
  %128 = load i32, i32* %127, align 8
  %129 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %37, i32 0, i32 0
  %130 = load i64, i64* %129, align 8
  %131 = call i8* @elf_strptr(i32* %126, i32 %128, i64 %130)
  store i8* %131, i8** %38, align 8
  %132 = load i8*, i8** %38, align 8
  %133 = icmp eq i8* %132, null
  br i1 %133, label %134, label %139

134:                                              ; preds = %120
  %135 = load i8*, i8** %9, align 8
  %136 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %37, i32 0, i32 0
  %137 = load i64, i64* %136, align 8
  %138 = call i32 (i8*, i8*, ...) @elfterminate(i8* %135, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.2, i64 0, i64 0), i64 %137)
  br label %139

139:                                              ; preds = %134, %120
  %140 = load i8*, i8** %38, align 8
  %141 = load i8*, i8** @CTF_ELF_SCN_NAME, align 8
  %142 = call i64 @strcmp(i8* %140, i8* %141)
  %143 = icmp eq i64 %142, 0
  br i1 %143, label %144, label %149

144:                                              ; preds = %139
  %145 = load i32*, i32** %28, align 8
  %146 = load i32, i32* %29, align 4
  %147 = sext i32 %146 to i64
  %148 = getelementptr inbounds i32, i32* %145, i64 %147
  store i32 -1, i32* %148, align 4
  br label %201

149:                                              ; preds = %139
  %150 = load i32, i32* %27, align 4
  %151 = icmp ne i32 %150, 0
  br i1 %151, label %173, label %152

152:                                              ; preds = %149
  %153 = load i8*, i8** %38, align 8
  %154 = call i64 @strncmp(i8* %153, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0), i32 5)
  %155 = icmp eq i64 %154, 0
  br i1 %155, label %168, label %156

156:                                              ; preds = %152
  %157 = load i8*, i8** %38, align 8
  %158 = call i64 @strncmp(i8* %157, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i64 0, i64 0), i32 6)
  %159 = icmp eq i64 %158, 0
  br i1 %159, label %168, label %160

160:                                              ; preds = %156
  %161 = load i8*, i8** %38, align 8
  %162 = call i64 @strncmp(i8* %161, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.5, i64 0, i64 0), i32 10)
  %163 = icmp eq i64 %162, 0
  br i1 %163, label %168, label %164

164:                                              ; preds = %160
  %165 = load i8*, i8** %38, align 8
  %166 = call i64 @strncmp(i8* %165, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.6, i64 0, i64 0), i32 11)
  %167 = icmp eq i64 %166, 0
  br i1 %167, label %168, label %173

168:                                              ; preds = %164, %160, %156, %152
  %169 = load i32*, i32** %28, align 8
  %170 = load i32, i32* %29, align 4
  %171 = sext i32 %170 to i64
  %172 = getelementptr inbounds i32, i32* %169, i64 %171
  store i32 -1, i32* %172, align 4
  br label %200

173:                                              ; preds = %164, %149
  %174 = load i32, i32* %26, align 4
  %175 = icmp ne i32 %174, 0
  br i1 %175, label %176, label %186

176:                                              ; preds = %173
  %177 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %37, i32 0, i32 1
  %178 = load i64, i64* %177, align 8
  %179 = load i64, i64* @SHT_SYMTAB, align 8
  %180 = icmp eq i64 %178, %179
  br i1 %180, label %181, label %186

181:                                              ; preds = %176
  %182 = load i32*, i32** %28, align 8
  %183 = load i32, i32* %29, align 4
  %184 = sext i32 %183 to i64
  %185 = getelementptr inbounds i32, i32* %182, i64 %184
  store i32 -1, i32* %185, align 4
  br label %199

186:                                              ; preds = %176, %173
  %187 = load i32, i32* %30, align 4
  %188 = add nsw i32 %187, 1
  store i32 %188, i32* %30, align 4
  %189 = load i32*, i32** %28, align 8
  %190 = load i32, i32* %29, align 4
  %191 = sext i32 %190 to i64
  %192 = getelementptr inbounds i32, i32* %189, i64 %191
  store i32 %187, i32* %192, align 4
  %193 = load i8*, i8** %38, align 8
  %194 = call signext i8 @strlen(i8* %193)
  %195 = sext i8 %194 to i32
  %196 = add nsw i32 %195, 1
  %197 = load i32, i32* %31, align 4
  %198 = add nsw i32 %197, %196
  store i32 %198, i32* %31, align 4
  br label %199

199:                                              ; preds = %186, %181
  br label %200

200:                                              ; preds = %199, %168
  br label %201

201:                                              ; preds = %200, %144
  %202 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %16, i32 0, i32 4
  %203 = load i64, i64* %202, align 8
  store i64 %203, i64* %24, align 8
  br label %204

204:                                              ; preds = %201
  %205 = load i32, i32* %29, align 4
  %206 = add nsw i32 %205, 1
  store i32 %206, i32* %29, align 4
  br label %115

207:                                              ; preds = %115
  store i32 1, i32* %29, align 4
  br label %208

208:                                              ; preds = %547, %207
  %209 = load i32, i32* %29, align 4
  %210 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %15, i32 0, i32 1
  %211 = load i32, i32* %210, align 4
  %212 = icmp slt i32 %209, %211
  br i1 %212, label %213, label %550

213:                                              ; preds = %208
  %214 = load i32*, i32** %8, align 8
  %215 = load i32, i32* %29, align 4
  %216 = call i32* @elf_getscn(i32* %214, i32 %215)
  store i32* %216, i32** %17, align 8
  %217 = load i32*, i32** %17, align 8
  %218 = call i32 @gelf_getshdr(i32* %217, %struct.TYPE_24__* %21)
  %219 = load i32*, i32** %28, align 8
  %220 = load i32, i32* %29, align 4
  %221 = sext i32 %220 to i64
  %222 = getelementptr inbounds i32, i32* %219, i64 %221
  %223 = load i32, i32* %222, align 4
  %224 = icmp eq i32 %223, -1
  br i1 %224, label %225, label %226

225:                                              ; preds = %213
  store i32 1, i32* %32, align 4
  br label %547

226:                                              ; preds = %213
  %227 = load i32*, i32** %10, align 8
  %228 = call i32* @elf_newscn(i32* %227)
  store i32* %228, i32** %18, align 8
  %229 = load i32, i32* %32, align 4
  %230 = icmp ne i32 %229, 0
  br i1 %230, label %231, label %254

231:                                              ; preds = %226
  %232 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %15, i32 0, i32 0
  %233 = load i32, i32* %232, align 8
  %234 = icmp ne i32 %233, 0
  br i1 %234, label %235, label %254

235:                                              ; preds = %231
  %236 = load i64, i64* %24, align 8
  %237 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %21, i32 0, i32 2
  %238 = load i64, i64* %237, align 8
  %239 = urem i64 %236, %238
  %240 = trunc i64 %239 to i32
  store i32 %240, i32* %33, align 4
  %241 = load i32, i32* %33, align 4
  %242 = icmp ne i32 %241, 0
  br i1 %242, label %243, label %251

243:                                              ; preds = %235
  %244 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %21, i32 0, i32 2
  %245 = load i64, i64* %244, align 8
  %246 = load i32, i32* %33, align 4
  %247 = sext i32 %246 to i64
  %248 = sub i64 %245, %247
  %249 = load i64, i64* %24, align 8
  %250 = add i64 %249, %248
  store i64 %250, i64* %24, align 8
  br label %251

251:                                              ; preds = %243, %235
  %252 = load i64, i64* %24, align 8
  %253 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %21, i32 0, i32 3
  store i64 %252, i64* %253, align 8
  br label %254

254:                                              ; preds = %251, %231, %226
  %255 = load i32*, i32** %28, align 8
  %256 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %21, i32 0, i32 4
  %257 = load i32, i32* %256, align 8
  %258 = sext i32 %257 to i64
  %259 = getelementptr inbounds i32, i32* %255, i64 %258
  %260 = load i32, i32* %259, align 4
  %261 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %21, i32 0, i32 4
  store i32 %260, i32* %261, align 8
  %262 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %21, i32 0, i32 1
  %263 = load i64, i64* %262, align 8
  %264 = load i64, i64* @SHT_REL, align 8
  %265 = icmp eq i64 %263, %264
  br i1 %265, label %271, label %266

266:                                              ; preds = %254
  %267 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %21, i32 0, i32 1
  %268 = load i64, i64* %267, align 8
  %269 = load i64, i64* @SHT_RELA, align 8
  %270 = icmp eq i64 %268, %269
  br i1 %270, label %271, label %279

271:                                              ; preds = %266, %254
  %272 = load i32*, i32** %28, align 8
  %273 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %21, i32 0, i32 5
  %274 = load i32, i32* %273, align 4
  %275 = sext i32 %274 to i64
  %276 = getelementptr inbounds i32, i32* %272, i64 %275
  %277 = load i32, i32* %276, align 4
  %278 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %21, i32 0, i32 5
  store i32 %277, i32* %278, align 4
  br label %279

279:                                              ; preds = %271, %266
  %280 = load i32*, i32** %8, align 8
  %281 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %15, i32 0, i32 2
  %282 = load i32, i32* %281, align 8
  %283 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %21, i32 0, i32 0
  %284 = load i64, i64* %283, align 8
  %285 = call i8* @elf_strptr(i32* %280, i32 %282, i64 %284)
  store i8* %285, i8** %39, align 8
  %286 = load i8*, i8** %39, align 8
  %287 = icmp eq i8* %286, null
  br i1 %287, label %288, label %293

288:                                              ; preds = %279
  %289 = load i8*, i8** %9, align 8
  %290 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %21, i32 0, i32 0
  %291 = load i64, i64* %290, align 8
  %292 = call i32 (i8*, i8*, ...) @elfterminate(i8* %289, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.2, i64 0, i64 0), i64 %291)
  br label %293

293:                                              ; preds = %288, %279
  %294 = load i32*, i32** %18, align 8
  %295 = call i64 @gelf_update_shdr(i32* %294, %struct.TYPE_24__* %21)
  %296 = icmp eq i64 %295, 0
  br i1 %296, label %297, label %301

297:                                              ; preds = %293
  %298 = load i8*, i8** %11, align 8
  %299 = load i8*, i8** %39, align 8
  %300 = call i32 (i8*, i8*, ...) @elfterminate(i8* %298, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.7, i64 0, i64 0), i8* %299)
  br label %301

301:                                              ; preds = %297, %293
  %302 = load i32*, i32** %17, align 8
  %303 = call %struct.TYPE_22__* @elf_getdata(i32* %302, i32* null)
  store %struct.TYPE_22__* %303, %struct.TYPE_22__** %19, align 8
  %304 = icmp eq %struct.TYPE_22__* %303, null
  br i1 %304, label %305, label %309

305:                                              ; preds = %301
  %306 = load i8*, i8** %9, align 8
  %307 = load i8*, i8** %39, align 8
  %308 = call i32 (i8*, i8*, ...) @elfterminate(i8* %306, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.8, i64 0, i64 0), i8* %307)
  br label %309

309:                                              ; preds = %305, %301
  %310 = load i32*, i32** %18, align 8
  %311 = call %struct.TYPE_22__* @elf_newdata(i32* %310)
  store %struct.TYPE_22__* %311, %struct.TYPE_22__** %20, align 8
  %312 = icmp eq %struct.TYPE_22__* %311, null
  br i1 %312, label %313, label %317

313:                                              ; preds = %309
  %314 = load i8*, i8** %11, align 8
  %315 = load i8*, i8** %39, align 8
  %316 = call i32 (i8*, i8*, ...) @elfterminate(i8* %314, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.9, i64 0, i64 0), i8* %315)
  br label %317

317:                                              ; preds = %313, %309
  %318 = load %struct.TYPE_22__*, %struct.TYPE_22__** %19, align 8
  %319 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %318, i32 0, i32 0
  %320 = load i32, i32* %319, align 8
  %321 = load %struct.TYPE_22__*, %struct.TYPE_22__** %20, align 8
  %322 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %321, i32 0, i32 0
  store i32 %320, i32* %322, align 8
  %323 = load %struct.TYPE_22__*, %struct.TYPE_22__** %19, align 8
  %324 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %323, i32 0, i32 2
  %325 = load i64, i64* %324, align 8
  %326 = load %struct.TYPE_22__*, %struct.TYPE_22__** %20, align 8
  %327 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %326, i32 0, i32 2
  store i64 %325, i64* %327, align 8
  %328 = load %struct.TYPE_22__*, %struct.TYPE_22__** %19, align 8
  %329 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %328, i32 0, i32 1
  %330 = load i8, i8* %329, align 4
  %331 = load %struct.TYPE_22__*, %struct.TYPE_22__** %20, align 8
  %332 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %331, i32 0, i32 1
  store i8 %330, i8* %332, align 4
  %333 = load %struct.TYPE_22__*, %struct.TYPE_22__** %19, align 8
  %334 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %333, i32 0, i32 5
  %335 = load i32, i32* %334, align 4
  %336 = load %struct.TYPE_22__*, %struct.TYPE_22__** %20, align 8
  %337 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %336, i32 0, i32 5
  store i32 %335, i32* %337, align 4
  %338 = load %struct.TYPE_22__*, %struct.TYPE_22__** %19, align 8
  %339 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %338, i32 0, i32 4
  %340 = load i32, i32* %339, align 8
  %341 = load %struct.TYPE_22__*, %struct.TYPE_22__** %20, align 8
  %342 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %341, i32 0, i32 4
  store i32 %340, i32* %342, align 8
  %343 = load i32, i32* %29, align 4
  %344 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %15, i32 0, i32 2
  %345 = load i32, i32* %344, align 8
  %346 = icmp eq i32 %343, %345
  br i1 %346, label %347, label %412

347:                                              ; preds = %317
  %348 = load i8*, i8** @CTF_ELF_SCN_NAME, align 8
  %349 = call signext i8 @strlen(i8* %348)
  store i8 %349, i8* %40, align 1
  %350 = load %struct.TYPE_22__*, %struct.TYPE_22__** %20, align 8
  %351 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %350, i32 0, i32 1
  %352 = load i8, i8* %351, align 4
  %353 = sext i8 %352 to i32
  %354 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %21, i32 0, i32 6
  %355 = load i8, i8* %354, align 8
  %356 = sext i8 %355 to i32
  %357 = add nsw i32 %353, %356
  %358 = load i8, i8* %40, align 1
  %359 = sext i8 %358 to i32
  %360 = add nsw i32 %357, %359
  %361 = add nsw i32 %360, 1
  %362 = trunc i32 %361 to i8
  %363 = call i8* @xmalloc(i8 signext %362)
  %364 = bitcast i8* %363 to %struct.TYPE_22__*
  %365 = load %struct.TYPE_22__*, %struct.TYPE_22__** %20, align 8
  %366 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %365, i32 0, i32 3
  store %struct.TYPE_22__* %364, %struct.TYPE_22__** %366, align 8
  %367 = load %struct.TYPE_22__*, %struct.TYPE_22__** %19, align 8
  %368 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %367, i32 0, i32 3
  %369 = load %struct.TYPE_22__*, %struct.TYPE_22__** %368, align 8
  %370 = load %struct.TYPE_22__*, %struct.TYPE_22__** %20, align 8
  %371 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %370, i32 0, i32 3
  %372 = load %struct.TYPE_22__*, %struct.TYPE_22__** %371, align 8
  %373 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %21, i32 0, i32 6
  %374 = load i8, i8* %373, align 8
  %375 = sext i8 %374 to i32
  %376 = call i32 @bcopy(%struct.TYPE_22__* %369, %struct.TYPE_22__* %372, i32 %375)
  %377 = load %struct.TYPE_22__*, %struct.TYPE_22__** %20, align 8
  %378 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %377, i32 0, i32 3
  %379 = load %struct.TYPE_22__*, %struct.TYPE_22__** %378, align 8
  %380 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %21, i32 0, i32 6
  %381 = load i8, i8* %380, align 8
  %382 = sext i8 %381 to i32
  %383 = sext i32 %382 to i64
  %384 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %379, i64 %383
  %385 = load i8*, i8** @CTF_ELF_SCN_NAME, align 8
  %386 = call i32 @strcpy(%struct.TYPE_22__* %384, i8* %385)
  %387 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %21, i32 0, i32 6
  %388 = load i8, i8* %387, align 8
  %389 = sext i8 %388 to i64
  store i64 %389, i64* %25, align 8
  %390 = load i8, i8* %40, align 1
  %391 = sext i8 %390 to i32
  %392 = add nsw i32 %391, 1
  %393 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %21, i32 0, i32 6
  %394 = load i8, i8* %393, align 8
  %395 = sext i8 %394 to i32
  %396 = add nsw i32 %395, %392
  %397 = trunc i32 %396 to i8
  store i8 %397, i8* %393, align 8
  %398 = load i8, i8* %40, align 1
  %399 = sext i8 %398 to i32
  %400 = add nsw i32 %399, 1
  %401 = load %struct.TYPE_22__*, %struct.TYPE_22__** %20, align 8
  %402 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %401, i32 0, i32 1
  %403 = load i8, i8* %402, align 4
  %404 = sext i8 %403 to i32
  %405 = add nsw i32 %404, %400
  %406 = trunc i32 %405 to i8
  store i8 %406, i8* %402, align 4
  %407 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %15, i32 0, i32 0
  %408 = load i32, i32* %407, align 8
  %409 = icmp ne i32 %408, 0
  br i1 %409, label %410, label %411

410:                                              ; preds = %347
  store i32 1, i32* %32, align 4
  br label %411

411:                                              ; preds = %410, %347
  br label %412

412:                                              ; preds = %411, %317
  %413 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %21, i32 0, i32 1
  %414 = load i64, i64* %413, align 8
  %415 = load i64, i64* %22, align 8
  %416 = icmp eq i64 %414, %415
  br i1 %416, label %417, label %498

417:                                              ; preds = %412
  %418 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %21, i32 0, i32 7
  %419 = load i32, i32* %418, align 4
  %420 = icmp ne i32 %419, 0
  br i1 %420, label %421, label %498

421:                                              ; preds = %417
  %422 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %21, i32 0, i32 6
  %423 = load i8, i8* %422, align 8
  %424 = sext i8 %423 to i32
  %425 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %21, i32 0, i32 7
  %426 = load i32, i32* %425, align 4
  %427 = sdiv i32 %424, %426
  store i32 %427, i32* %41, align 4
  %428 = load i32*, i32** %28, align 8
  %429 = load i32, i32* %29, align 4
  %430 = sext i32 %429 to i64
  %431 = getelementptr inbounds i32, i32* %428, i64 %430
  %432 = load i32, i32* %431, align 4
  store i32 %432, i32* %23, align 4
  %433 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %21, i32 0, i32 6
  %434 = load i8, i8* %433, align 8
  %435 = call i8* @xmalloc(i8 signext %434)
  %436 = bitcast i8* %435 to %struct.TYPE_22__*
  %437 = load %struct.TYPE_22__*, %struct.TYPE_22__** %20, align 8
  %438 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %437, i32 0, i32 3
  store %struct.TYPE_22__* %436, %struct.TYPE_22__** %438, align 8
  %439 = load %struct.TYPE_22__*, %struct.TYPE_22__** %19, align 8
  %440 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %439, i32 0, i32 3
  %441 = load %struct.TYPE_22__*, %struct.TYPE_22__** %440, align 8
  %442 = load %struct.TYPE_22__*, %struct.TYPE_22__** %20, align 8
  %443 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %442, i32 0, i32 3
  %444 = load %struct.TYPE_22__*, %struct.TYPE_22__** %443, align 8
  %445 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %21, i32 0, i32 6
  %446 = load i8, i8* %445, align 8
  %447 = sext i8 %446 to i32
  %448 = call i32 @bcopy(%struct.TYPE_22__* %441, %struct.TYPE_22__* %444, i32 %447)
  store i32 0, i32* %34, align 4
  br label %449

449:                                              ; preds = %494, %421
  %450 = load i32, i32* %34, align 4
  %451 = load i32, i32* %41, align 4
  %452 = icmp slt i32 %450, %451
  br i1 %452, label %453, label %497

453:                                              ; preds = %449
  %454 = load %struct.TYPE_22__*, %struct.TYPE_22__** %20, align 8
  %455 = load i32, i32* %34, align 4
  %456 = call i32* @gelf_getsym(%struct.TYPE_22__* %454, i32 %455, %struct.TYPE_23__* %42)
  %457 = icmp eq i32* %456, null
  br i1 %457, label %458, label %461

458:                                              ; preds = %453
  %459 = load i32, i32* %34, align 4
  %460 = call i32 @printf(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.10, i64 0, i64 0), i32 %459)
  br label %461

461:                                              ; preds = %458, %453
  %462 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %42, i32 0, i32 0
  %463 = load i64, i64* %462, align 8
  %464 = load i64, i64* @SHN_LORESERVE, align 8
  %465 = icmp uge i64 %463, %464
  br i1 %465, label %466, label %467

466:                                              ; preds = %461
  br label %494

467:                                              ; preds = %461
  %468 = load i32*, i32** %28, align 8
  %469 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %42, i32 0, i32 0
  %470 = load i64, i64* %469, align 8
  %471 = getelementptr inbounds i32, i32* %468, i64 %470
  %472 = load i32, i32* %471, align 4
  %473 = trunc i32 %472 to i16
  store i16 %473, i16* %43, align 2
  %474 = sext i16 %473 to i64
  %475 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %42, i32 0, i32 0
  %476 = load i64, i64* %475, align 8
  %477 = icmp ne i64 %474, %476
  br i1 %477, label %478, label %493

478:                                              ; preds = %467
  %479 = load i16, i16* %43, align 2
  %480 = sext i16 %479 to i32
  %481 = icmp eq i32 %480, -1
  br i1 %481, label %482, label %483

482:                                              ; preds = %478
  br label %486

483:                                              ; preds = %478
  %484 = load i16, i16* %43, align 2
  %485 = sext i16 %484 to i32
  br label %486

486:                                              ; preds = %483, %482
  %487 = phi i32 [ 1, %482 ], [ %485, %483 ]
  %488 = sext i32 %487 to i64
  %489 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %42, i32 0, i32 0
  store i64 %488, i64* %489, align 8
  %490 = load %struct.TYPE_22__*, %struct.TYPE_22__** %20, align 8
  %491 = load i32, i32* %34, align 4
  %492 = call i32 @gelf_update_sym(%struct.TYPE_22__* %490, i32 %491, %struct.TYPE_23__* %42)
  br label %493

493:                                              ; preds = %486, %467
  br label %494

494:                                              ; preds = %493, %466
  %495 = load i32, i32* %34, align 4
  %496 = add nsw i32 %495, 1
  store i32 %496, i32* %34, align 4
  br label %449

497:                                              ; preds = %449
  br label %498

498:                                              ; preds = %497, %417, %412
  %499 = load %struct.TYPE_22__*, %struct.TYPE_22__** %20, align 8
  %500 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %499, i32 0, i32 3
  %501 = load %struct.TYPE_22__*, %struct.TYPE_22__** %500, align 8
  %502 = icmp eq %struct.TYPE_22__* %501, null
  br i1 %502, label %503, label %525

503:                                              ; preds = %498
  %504 = load %struct.TYPE_22__*, %struct.TYPE_22__** %19, align 8
  %505 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %504, i32 0, i32 3
  %506 = load %struct.TYPE_22__*, %struct.TYPE_22__** %505, align 8
  %507 = icmp ne %struct.TYPE_22__* %506, null
  br i1 %507, label %508, label %525

508:                                              ; preds = %503
  %509 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %21, i32 0, i32 6
  %510 = load i8, i8* %509, align 8
  %511 = call i8* @xmalloc(i8 signext %510)
  %512 = bitcast i8* %511 to %struct.TYPE_22__*
  %513 = load %struct.TYPE_22__*, %struct.TYPE_22__** %20, align 8
  %514 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %513, i32 0, i32 3
  store %struct.TYPE_22__* %512, %struct.TYPE_22__** %514, align 8
  %515 = load %struct.TYPE_22__*, %struct.TYPE_22__** %19, align 8
  %516 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %515, i32 0, i32 3
  %517 = load %struct.TYPE_22__*, %struct.TYPE_22__** %516, align 8
  %518 = load %struct.TYPE_22__*, %struct.TYPE_22__** %20, align 8
  %519 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %518, i32 0, i32 3
  %520 = load %struct.TYPE_22__*, %struct.TYPE_22__** %519, align 8
  %521 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %21, i32 0, i32 6
  %522 = load i8, i8* %521, align 8
  %523 = sext i8 %522 to i32
  %524 = call i32 @bcopy(%struct.TYPE_22__* %517, %struct.TYPE_22__* %520, i32 %523)
  br label %525

525:                                              ; preds = %508, %503, %498
  %526 = load i32*, i32** %18, align 8
  %527 = call i64 @gelf_update_shdr(i32* %526, %struct.TYPE_24__* %21)
  %528 = icmp eq i64 %527, 0
  br i1 %528, label %529, label %533

529:                                              ; preds = %525
  %530 = load i8*, i8** %11, align 8
  %531 = load i8*, i8** %39, align 8
  %532 = call i32 (i8*, i8*, ...) @elfterminate(i8* %530, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.7, i64 0, i64 0), i8* %531)
  br label %533

533:                                              ; preds = %529, %525
  %534 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %21, i32 0, i32 3
  %535 = load i64, i64* %534, align 8
  store i64 %535, i64* %24, align 8
  %536 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %21, i32 0, i32 1
  %537 = load i64, i64* %536, align 8
  %538 = load i64, i64* @SHT_NOBITS, align 8
  %539 = icmp ne i64 %537, %538
  br i1 %539, label %540, label %546

540:                                              ; preds = %533
  %541 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %21, i32 0, i32 6
  %542 = load i8, i8* %541, align 8
  %543 = sext i8 %542 to i64
  %544 = load i64, i64* %24, align 8
  %545 = add i64 %544, %543
  store i64 %545, i64* %24, align 8
  br label %546

546:                                              ; preds = %540, %533
  br label %547

547:                                              ; preds = %546, %225
  %548 = load i32, i32* %29, align 4
  %549 = add nsw i32 %548, 1
  store i32 %549, i32* %29, align 4
  br label %208

550:                                              ; preds = %208
  %551 = load i32, i32* %23, align 4
  %552 = icmp eq i32 %551, -1
  br i1 %552, label %553, label %560

553:                                              ; preds = %550
  %554 = load i8*, i8** %9, align 8
  %555 = load i32, i32* %26, align 4
  %556 = icmp ne i32 %555, 0
  %557 = zext i1 %556 to i64
  %558 = select i1 %556, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.12, i64 0, i64 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.13, i64 0, i64 0)
  %559 = call i32 @terminate(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.11, i64 0, i64 0), i8* %554, i8* %558)
  br label %560

560:                                              ; preds = %553, %550
  %561 = load i32*, i32** %10, align 8
  %562 = call i32* @elf_newscn(i32* %561)
  store i32* %562, i32** %18, align 8
  %563 = load i32*, i32** %18, align 8
  %564 = call i32 @gelf_getshdr(i32* %563, %struct.TYPE_24__* %21)
  %565 = load i64, i64* %25, align 8
  %566 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %21, i32 0, i32 0
  store i64 %565, i64* %566, align 8
  %567 = load i64, i64* @SHT_PROGBITS, align 8
  %568 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %21, i32 0, i32 1
  store i64 %567, i64* %568, align 8
  %569 = load i64, i64* %13, align 8
  %570 = trunc i64 %569 to i8
  %571 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %21, i32 0, i32 6
  store i8 %570, i8* %571, align 8
  %572 = load i32, i32* %23, align 4
  %573 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %21, i32 0, i32 4
  store i32 %572, i32* %573, align 8
  %574 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %21, i32 0, i32 2
  store i64 4, i64* %574, align 8
  %575 = load i32, i32* %32, align 4
  %576 = icmp ne i32 %575, 0
  br i1 %576, label %577, label %605

577:                                              ; preds = %560
  %578 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %15, i32 0, i32 0
  %579 = load i32, i32* %578, align 8
  %580 = icmp ne i32 %579, 0
  br i1 %580, label %581, label %605

581:                                              ; preds = %577
  %582 = load i64, i64* %24, align 8
  %583 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %21, i32 0, i32 2
  %584 = load i64, i64* %583, align 8
  %585 = urem i64 %582, %584
  %586 = trunc i64 %585 to i32
  store i32 %586, i32* %33, align 4
  %587 = load i32, i32* %33, align 4
  %588 = icmp ne i32 %587, 0
  br i1 %588, label %589, label %597

589:                                              ; preds = %581
  %590 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %21, i32 0, i32 2
  %591 = load i64, i64* %590, align 8
  %592 = load i32, i32* %33, align 4
  %593 = sext i32 %592 to i64
  %594 = sub i64 %591, %593
  %595 = load i64, i64* %24, align 8
  %596 = add i64 %595, %594
  store i64 %596, i64* %24, align 8
  br label %597

597:                                              ; preds = %589, %581
  %598 = load i64, i64* %24, align 8
  %599 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %21, i32 0, i32 3
  store i64 %598, i64* %599, align 8
  %600 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %21, i32 0, i32 6
  %601 = load i8, i8* %600, align 8
  %602 = sext i8 %601 to i64
  %603 = load i64, i64* %24, align 8
  %604 = add i64 %603, %602
  store i64 %604, i64* %24, align 8
  br label %605

605:                                              ; preds = %597, %577, %560
  %606 = load i32*, i32** %18, align 8
  %607 = call %struct.TYPE_22__* @elf_newdata(i32* %606)
  store %struct.TYPE_22__* %607, %struct.TYPE_22__** %20, align 8
  %608 = load %struct.TYPE_22__*, %struct.TYPE_22__** %12, align 8
  %609 = load %struct.TYPE_22__*, %struct.TYPE_22__** %20, align 8
  %610 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %609, i32 0, i32 3
  store %struct.TYPE_22__* %608, %struct.TYPE_22__** %610, align 8
  %611 = load i64, i64* %13, align 8
  %612 = trunc i64 %611 to i8
  %613 = load %struct.TYPE_22__*, %struct.TYPE_22__** %20, align 8
  %614 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %613, i32 0, i32 1
  store i8 %612, i8* %614, align 4
  %615 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %21, i32 0, i32 2
  %616 = load i64, i64* %615, align 8
  %617 = trunc i64 %616 to i32
  %618 = load %struct.TYPE_22__*, %struct.TYPE_22__** %20, align 8
  %619 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %618, i32 0, i32 0
  store i32 %617, i32* %619, align 8
  %620 = load %struct.TYPE_22__*, %struct.TYPE_22__** %20, align 8
  %621 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %620, i32 0, i32 2
  store i64 0, i64* %621, align 8
  %622 = load i32*, i32** %18, align 8
  %623 = call i64 @gelf_update_shdr(i32* %622, %struct.TYPE_24__* %21)
  %624 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %15, i32 0, i32 0
  %625 = load i32, i32* %624, align 8
  %626 = icmp ne i32 %625, 0
  br i1 %626, label %627, label %646

627:                                              ; preds = %605
  %628 = load i32*, i32** %10, align 8
  %629 = load i32, i32* @ELF_T_ADDR, align 4
  %630 = load i32, i32* @EV_CURRENT, align 4
  %631 = call i64 @gelf_fsize(i32* %628, i32 %629, i32 1, i32 %630)
  store i64 %631, i64* %44, align 8
  %632 = load i64, i64* %24, align 8
  %633 = load i64, i64* %44, align 8
  %634 = urem i64 %632, %633
  store i64 %634, i64* %45, align 8
  %635 = load i64, i64* %45, align 8
  %636 = icmp ne i64 %635, 0
  br i1 %636, label %637, label %643

637:                                              ; preds = %627
  %638 = load i64, i64* %44, align 8
  %639 = load i64, i64* %45, align 8
  %640 = sub i64 %638, %639
  %641 = load i64, i64* %24, align 8
  %642 = add i64 %641, %640
  store i64 %642, i64* %24, align 8
  br label %643

643:                                              ; preds = %637, %627
  %644 = load i64, i64* %24, align 8
  %645 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %16, i32 0, i32 3
  store i64 %644, i64* %645, align 8
  br label %646

646:                                              ; preds = %643, %605
  %647 = load i32*, i32** %28, align 8
  %648 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %15, i32 0, i32 2
  %649 = load i32, i32* %648, align 8
  %650 = sext i32 %649 to i64
  %651 = getelementptr inbounds i32, i32* %647, i64 %650
  %652 = load i32, i32* %651, align 4
  %653 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %16, i32 0, i32 2
  store i32 %652, i32* %653, align 8
  %654 = load i32*, i32** %10, align 8
  %655 = call i32 @gelf_update_ehdr(i32* %654, %struct.TYPE_25__* %16)
  %656 = load i32*, i32** %10, align 8
  %657 = load i32, i32* @ELF_C_WRITE, align 4
  %658 = call i64 @elf_update(i32* %656, i32 %657)
  %659 = icmp slt i64 %658, 0
  br i1 %659, label %660, label %663

660:                                              ; preds = %646
  %661 = load i8*, i8** %11, align 8
  %662 = call i32 (i8*, i8*, ...) @elfterminate(i8* %661, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.14, i64 0, i64 0))
  br label %663

663:                                              ; preds = %660, %646
  %664 = load i32*, i32** %28, align 8
  %665 = call i32 @free(i32* %664)
  ret void
}

declare dso_local i32* @gelf_newehdr(i32*, i32) #1

declare dso_local i32 @gelf_getclass(i32*) #1

declare dso_local i32 @elfterminate(i8*, i8*, ...) #1

declare dso_local i32 @gelf_getehdr(i32*, %struct.TYPE_25__*) #1

declare dso_local i32 @memcpy(%struct.TYPE_25__*, %struct.TYPE_25__*, i32) #1

declare dso_local i32 @gelf_update_ehdr(i32*, %struct.TYPE_25__*) #1

declare dso_local i32 @elf_flagelf(i32*, i32, i32) #1

declare dso_local i32* @gelf_newphdr(i32*, i32) #1

declare dso_local i32 @gelf_getphdr(i32*, i32, i32*) #1

declare dso_local i32 @gelf_update_phdr(i32*, i32, i32*) #1

declare dso_local i8* @xmalloc(i8 signext) #1

declare dso_local i32* @elf_getscn(i32*, i32) #1

declare dso_local i32 @gelf_getshdr(i32*, %struct.TYPE_24__*) #1

declare dso_local i8* @elf_strptr(i32*, i32, i64) #1

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i64 @strncmp(i8*, i8*, i32) #1

declare dso_local signext i8 @strlen(i8*) #1

declare dso_local i32* @elf_newscn(i32*) #1

declare dso_local i64 @gelf_update_shdr(i32*, %struct.TYPE_24__*) #1

declare dso_local %struct.TYPE_22__* @elf_getdata(i32*, i32*) #1

declare dso_local %struct.TYPE_22__* @elf_newdata(i32*) #1

declare dso_local i32 @bcopy(%struct.TYPE_22__*, %struct.TYPE_22__*, i32) #1

declare dso_local i32 @strcpy(%struct.TYPE_22__*, i8*) #1

declare dso_local i32* @gelf_getsym(%struct.TYPE_22__*, i32, %struct.TYPE_23__*) #1

declare dso_local i32 @printf(i8*, i32) #1

declare dso_local i32 @gelf_update_sym(%struct.TYPE_22__*, i32, %struct.TYPE_23__*) #1

declare dso_local i32 @terminate(i8*, i8*, i8*) #1

declare dso_local i64 @gelf_fsize(i32*, i32, i32, i32) #1

declare dso_local i64 @elf_update(i32*, i32) #1

declare dso_local i32 @free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

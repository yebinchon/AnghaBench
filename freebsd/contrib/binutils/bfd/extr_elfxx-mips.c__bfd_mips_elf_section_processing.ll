; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/bfd/extr_elfxx-mips.c__bfd_mips_elf_section_processing.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/bfd/extr_elfxx-mips.c__bfd_mips_elf_section_processing.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i64, i32, i32, i32, i64, i32*, i64, i32* }
%struct.TYPE_9__ = type { i32, i64 }
%struct.TYPE_10__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32* }

@SHT_MIPS_REGINFO = common dso_local global i64 0, align 8
@SEEK_SET = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@SHT_MIPS_OPTIONS = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [61 x i8] c"%B: Warning: bad `%s' option size %u smaller than its header\00", align 1
@ODK_REGINFO = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [7 x i8] c".sdata\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c".lit8\00", align 1
@.str.3 = private unnamed_addr constant [6 x i8] c".lit4\00", align 1
@SHF_ALLOC = common dso_local global i32 0, align 4
@SHF_WRITE = common dso_local global i32 0, align 4
@SHF_MIPS_GPREL = common dso_local global i32 0, align 4
@SHT_PROGBITS = common dso_local global i8* null, align 8
@.str.4 = private unnamed_addr constant [6 x i8] c".sbss\00", align 1
@SHT_NOBITS = common dso_local global i64 0, align 8
@.str.5 = private unnamed_addr constant [8 x i8] c".srdata\00", align 1
@.str.6 = private unnamed_addr constant [13 x i8] c".compact_rel\00", align 1
@.str.7 = private unnamed_addr constant [8 x i8] c".rtproc\00", align 1
@TRUE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @_bfd_mips_elf_section_processing(i32* %0, %struct.TYPE_8__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca %struct.TYPE_8__*, align 8
  %6 = alloca [4 x i32], align 16
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca %struct.TYPE_9__, align 8
  %11 = alloca [8 x i32], align 16
  %12 = alloca [4 x i32], align 16
  %13 = alloca i8*, align 8
  %14 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store %struct.TYPE_8__* %1, %struct.TYPE_8__** %5, align 8
  %15 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %16 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = load i64, i64* @SHT_MIPS_REGINFO, align 8
  %19 = icmp eq i64 %17, %18
  br i1 %19, label %20, label %63

20:                                               ; preds = %2
  %21 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %22 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 8
  %24 = icmp sgt i32 %23, 0
  br i1 %24, label %25, label %63

25:                                               ; preds = %20
  %26 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %27 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 8
  %29 = sext i32 %28 to i64
  %30 = icmp eq i64 %29, 4
  %31 = zext i1 %30 to i32
  %32 = call i32 @BFD_ASSERT(i32 %31)
  %33 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %34 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %33, i32 0, i32 7
  %35 = load i32*, i32** %34, align 8
  %36 = icmp eq i32* %35, null
  %37 = zext i1 %36 to i32
  %38 = call i32 @BFD_ASSERT(i32 %37)
  %39 = load i32*, i32** %4, align 8
  %40 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %41 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %40, i32 0, i32 6
  %42 = load i64, i64* %41, align 8
  %43 = add i64 %42, 4
  %44 = sub i64 %43, 4
  %45 = load i32, i32* @SEEK_SET, align 4
  %46 = call i64 @bfd_seek(i32* %39, i64 %44, i32 %45)
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %50

48:                                               ; preds = %25
  %49 = load i32, i32* @FALSE, align 4
  store i32 %49, i32* %3, align 4
  br label %334

50:                                               ; preds = %25
  %51 = load i32*, i32** %4, align 8
  %52 = load i32*, i32** %4, align 8
  %53 = call i32 @elf_gp(i32* %52)
  %54 = getelementptr inbounds [4 x i32], [4 x i32]* %6, i64 0, i64 0
  %55 = call i32 @H_PUT_32(i32* %51, i32 %53, i32* %54)
  %56 = getelementptr inbounds [4 x i32], [4 x i32]* %6, i64 0, i64 0
  %57 = load i32*, i32** %4, align 8
  %58 = call i32 @bfd_bwrite(i32* %56, i32 4, i32* %57)
  %59 = icmp ne i32 %58, 4
  br i1 %59, label %60, label %62

60:                                               ; preds = %50
  %61 = load i32, i32* @FALSE, align 4
  store i32 %61, i32* %3, align 4
  br label %334

62:                                               ; preds = %50
  br label %63

63:                                               ; preds = %62, %20, %2
  %64 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %65 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %64, i32 0, i32 0
  %66 = load i64, i64* %65, align 8
  %67 = load i64, i64* @SHT_MIPS_OPTIONS, align 8
  %68 = icmp eq i64 %66, %67
  br i1 %68, label %69, label %211

69:                                               ; preds = %63
  %70 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %71 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %70, i32 0, i32 5
  %72 = load i32*, i32** %71, align 8
  %73 = icmp ne i32* %72, null
  br i1 %73, label %74, label %211

74:                                               ; preds = %69
  %75 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %76 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %75, i32 0, i32 5
  %77 = load i32*, i32** %76, align 8
  %78 = call %struct.TYPE_10__* @mips_elf_section_data(i32* %77)
  %79 = icmp ne %struct.TYPE_10__* %78, null
  br i1 %79, label %80, label %211

80:                                               ; preds = %74
  %81 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %82 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %81, i32 0, i32 5
  %83 = load i32*, i32** %82, align 8
  %84 = call %struct.TYPE_10__* @mips_elf_section_data(i32* %83)
  %85 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %84, i32 0, i32 0
  %86 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %85, i32 0, i32 0
  %87 = load i32*, i32** %86, align 8
  %88 = icmp ne i32* %87, null
  br i1 %88, label %89, label %211

89:                                               ; preds = %80
  %90 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %91 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %90, i32 0, i32 5
  %92 = load i32*, i32** %91, align 8
  %93 = call %struct.TYPE_10__* @mips_elf_section_data(i32* %92)
  %94 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %93, i32 0, i32 0
  %95 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %94, i32 0, i32 0
  %96 = load i32*, i32** %95, align 8
  store i32* %96, i32** %7, align 8
  %97 = load i32*, i32** %7, align 8
  store i32* %97, i32** %8, align 8
  %98 = load i32*, i32** %7, align 8
  %99 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %100 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %99, i32 0, i32 1
  %101 = load i32, i32* %100, align 8
  %102 = sext i32 %101 to i64
  %103 = getelementptr inbounds i32, i32* %98, i64 %102
  store i32* %103, i32** %9, align 8
  br label %104

104:                                              ; preds = %204, %89
  %105 = load i32*, i32** %8, align 8
  %106 = getelementptr inbounds i32, i32* %105, i64 4
  %107 = load i32*, i32** %9, align 8
  %108 = icmp ule i32* %106, %107
  br i1 %108, label %109, label %210

109:                                              ; preds = %104
  %110 = load i32*, i32** %4, align 8
  %111 = load i32*, i32** %8, align 8
  %112 = call i32 @bfd_mips_elf_swap_options_in(i32* %110, i32* %111, %struct.TYPE_9__* %10)
  %113 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %10, i32 0, i32 0
  %114 = load i32, i32* %113, align 8
  %115 = sext i32 %114 to i64
  %116 = icmp ult i64 %115, 4
  br i1 %116, label %117, label %125

117:                                              ; preds = %109
  %118 = call i32 @_(i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str, i64 0, i64 0))
  %119 = load i32*, i32** %4, align 8
  %120 = load i32*, i32** %4, align 8
  %121 = call i32 @MIPS_ELF_OPTIONS_SECTION_NAME(i32* %120)
  %122 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %10, i32 0, i32 0
  %123 = load i32, i32* %122, align 8
  %124 = call i32 @_bfd_error_handler(i32 %118, i32* %119, i32 %121, i32 %123)
  br label %210

125:                                              ; preds = %109
  %126 = load i32*, i32** %4, align 8
  %127 = call i64 @ABI_64_P(i32* %126)
  %128 = icmp ne i64 %127, 0
  br i1 %128, label %129, label %166

129:                                              ; preds = %125
  %130 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %10, i32 0, i32 1
  %131 = load i64, i64* %130, align 8
  %132 = load i64, i64* @ODK_REGINFO, align 8
  %133 = icmp eq i64 %131, %132
  br i1 %133, label %134, label %166

134:                                              ; preds = %129
  %135 = load i32*, i32** %4, align 8
  %136 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %137 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %136, i32 0, i32 6
  %138 = load i64, i64* %137, align 8
  %139 = load i32*, i32** %8, align 8
  %140 = load i32*, i32** %7, align 8
  %141 = ptrtoint i32* %139 to i64
  %142 = ptrtoint i32* %140 to i64
  %143 = sub i64 %141, %142
  %144 = sdiv exact i64 %143, 4
  %145 = add nsw i64 %138, %144
  %146 = add i64 %145, 4
  %147 = add i64 %146, -4
  %148 = load i32, i32* @SEEK_SET, align 4
  %149 = call i64 @bfd_seek(i32* %135, i64 %147, i32 %148)
  %150 = icmp ne i64 %149, 0
  br i1 %150, label %151, label %153

151:                                              ; preds = %134
  %152 = load i32, i32* @FALSE, align 4
  store i32 %152, i32* %3, align 4
  br label %334

153:                                              ; preds = %134
  %154 = load i32*, i32** %4, align 8
  %155 = load i32*, i32** %4, align 8
  %156 = call i32 @elf_gp(i32* %155)
  %157 = getelementptr inbounds [8 x i32], [8 x i32]* %11, i64 0, i64 0
  %158 = call i32 @H_PUT_64(i32* %154, i32 %156, i32* %157)
  %159 = getelementptr inbounds [8 x i32], [8 x i32]* %11, i64 0, i64 0
  %160 = load i32*, i32** %4, align 8
  %161 = call i32 @bfd_bwrite(i32* %159, i32 8, i32* %160)
  %162 = icmp ne i32 %161, 8
  br i1 %162, label %163, label %165

163:                                              ; preds = %153
  %164 = load i32, i32* @FALSE, align 4
  store i32 %164, i32* %3, align 4
  br label %334

165:                                              ; preds = %153
  br label %204

166:                                              ; preds = %129, %125
  %167 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %10, i32 0, i32 1
  %168 = load i64, i64* %167, align 8
  %169 = load i64, i64* @ODK_REGINFO, align 8
  %170 = icmp eq i64 %168, %169
  br i1 %170, label %171, label %203

171:                                              ; preds = %166
  %172 = load i32*, i32** %4, align 8
  %173 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %174 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %173, i32 0, i32 6
  %175 = load i64, i64* %174, align 8
  %176 = load i32*, i32** %8, align 8
  %177 = load i32*, i32** %7, align 8
  %178 = ptrtoint i32* %176 to i64
  %179 = ptrtoint i32* %177 to i64
  %180 = sub i64 %178, %179
  %181 = sdiv exact i64 %180, 4
  %182 = add nsw i64 %175, %181
  %183 = add i64 %182, 4
  %184 = add i64 %183, 0
  %185 = load i32, i32* @SEEK_SET, align 4
  %186 = call i64 @bfd_seek(i32* %172, i64 %184, i32 %185)
  %187 = icmp ne i64 %186, 0
  br i1 %187, label %188, label %190

188:                                              ; preds = %171
  %189 = load i32, i32* @FALSE, align 4
  store i32 %189, i32* %3, align 4
  br label %334

190:                                              ; preds = %171
  %191 = load i32*, i32** %4, align 8
  %192 = load i32*, i32** %4, align 8
  %193 = call i32 @elf_gp(i32* %192)
  %194 = getelementptr inbounds [4 x i32], [4 x i32]* %12, i64 0, i64 0
  %195 = call i32 @H_PUT_32(i32* %191, i32 %193, i32* %194)
  %196 = getelementptr inbounds [4 x i32], [4 x i32]* %12, i64 0, i64 0
  %197 = load i32*, i32** %4, align 8
  %198 = call i32 @bfd_bwrite(i32* %196, i32 4, i32* %197)
  %199 = icmp ne i32 %198, 4
  br i1 %199, label %200, label %202

200:                                              ; preds = %190
  %201 = load i32, i32* @FALSE, align 4
  store i32 %201, i32* %3, align 4
  br label %334

202:                                              ; preds = %190
  br label %203

203:                                              ; preds = %202, %166
  br label %204

204:                                              ; preds = %203, %165
  %205 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %10, i32 0, i32 0
  %206 = load i32, i32* %205, align 8
  %207 = load i32*, i32** %8, align 8
  %208 = sext i32 %206 to i64
  %209 = getelementptr inbounds i32, i32* %207, i64 %208
  store i32* %209, i32** %8, align 8
  br label %104

210:                                              ; preds = %117, %104
  br label %211

211:                                              ; preds = %210, %80, %74, %69, %63
  %212 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %213 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %212, i32 0, i32 5
  %214 = load i32*, i32** %213, align 8
  %215 = icmp ne i32* %214, null
  br i1 %215, label %216, label %332

216:                                              ; preds = %211
  %217 = load i32*, i32** %4, align 8
  %218 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %219 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %218, i32 0, i32 5
  %220 = load i32*, i32** %219, align 8
  %221 = call i8* @bfd_get_section_name(i32* %217, i32* %220)
  store i8* %221, i8** %13, align 8
  %222 = load i8*, i8** %13, align 8
  %223 = call i64 @strcmp(i8* %222, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0))
  %224 = icmp eq i64 %223, 0
  br i1 %224, label %233, label %225

225:                                              ; preds = %216
  %226 = load i8*, i8** %13, align 8
  %227 = call i64 @strcmp(i8* %226, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0))
  %228 = icmp eq i64 %227, 0
  br i1 %228, label %233, label %229

229:                                              ; preds = %225
  %230 = load i8*, i8** %13, align 8
  %231 = call i64 @strcmp(i8* %230, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0))
  %232 = icmp eq i64 %231, 0
  br i1 %232, label %233, label %247

233:                                              ; preds = %229, %225, %216
  %234 = load i32, i32* @SHF_ALLOC, align 4
  %235 = load i32, i32* @SHF_WRITE, align 4
  %236 = or i32 %234, %235
  %237 = load i32, i32* @SHF_MIPS_GPREL, align 4
  %238 = or i32 %236, %237
  %239 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %240 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %239, i32 0, i32 2
  %241 = load i32, i32* %240, align 4
  %242 = or i32 %241, %238
  store i32 %242, i32* %240, align 4
  %243 = load i8*, i8** @SHT_PROGBITS, align 8
  %244 = ptrtoint i8* %243 to i64
  %245 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %246 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %245, i32 0, i32 0
  store i64 %244, i64* %246, align 8
  br label %331

247:                                              ; preds = %229
  %248 = load i8*, i8** %13, align 8
  %249 = call i64 @strcmp(i8* %248, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i64 0, i64 0))
  %250 = icmp eq i64 %249, 0
  br i1 %250, label %251, label %264

251:                                              ; preds = %247
  %252 = load i32, i32* @SHF_ALLOC, align 4
  %253 = load i32, i32* @SHF_WRITE, align 4
  %254 = or i32 %252, %253
  %255 = load i32, i32* @SHF_MIPS_GPREL, align 4
  %256 = or i32 %254, %255
  %257 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %258 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %257, i32 0, i32 2
  %259 = load i32, i32* %258, align 4
  %260 = or i32 %259, %256
  store i32 %260, i32* %258, align 4
  %261 = load i64, i64* @SHT_NOBITS, align 8
  %262 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %263 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %262, i32 0, i32 0
  store i64 %261, i64* %263, align 8
  br label %330

264:                                              ; preds = %247
  %265 = load i8*, i8** %13, align 8
  %266 = call i64 @strcmp(i8* %265, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i64 0, i64 0))
  %267 = icmp eq i64 %266, 0
  br i1 %267, label %268, label %280

268:                                              ; preds = %264
  %269 = load i32, i32* @SHF_ALLOC, align 4
  %270 = load i32, i32* @SHF_MIPS_GPREL, align 4
  %271 = or i32 %269, %270
  %272 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %273 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %272, i32 0, i32 2
  %274 = load i32, i32* %273, align 4
  %275 = or i32 %274, %271
  store i32 %275, i32* %273, align 4
  %276 = load i8*, i8** @SHT_PROGBITS, align 8
  %277 = ptrtoint i8* %276 to i64
  %278 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %279 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %278, i32 0, i32 0
  store i64 %277, i64* %279, align 8
  br label %329

280:                                              ; preds = %264
  %281 = load i8*, i8** %13, align 8
  %282 = call i64 @strcmp(i8* %281, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.6, i64 0, i64 0))
  %283 = icmp eq i64 %282, 0
  br i1 %283, label %284, label %291

284:                                              ; preds = %280
  %285 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %286 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %285, i32 0, i32 2
  store i32 0, i32* %286, align 4
  %287 = load i8*, i8** @SHT_PROGBITS, align 8
  %288 = ptrtoint i8* %287 to i64
  %289 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %290 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %289, i32 0, i32 0
  store i64 %288, i64* %290, align 8
  br label %328

291:                                              ; preds = %280
  %292 = load i8*, i8** %13, align 8
  %293 = call i64 @strcmp(i8* %292, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.7, i64 0, i64 0))
  %294 = icmp eq i64 %293, 0
  br i1 %294, label %295, label %327

295:                                              ; preds = %291
  %296 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %297 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %296, i32 0, i32 3
  %298 = load i32, i32* %297, align 8
  %299 = icmp ne i32 %298, 0
  br i1 %299, label %300, label %326

300:                                              ; preds = %295
  %301 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %302 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %301, i32 0, i32 4
  %303 = load i64, i64* %302, align 8
  %304 = icmp eq i64 %303, 0
  br i1 %304, label %305, label %326

305:                                              ; preds = %300
  %306 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %307 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %306, i32 0, i32 1
  %308 = load i32, i32* %307, align 8
  %309 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %310 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %309, i32 0, i32 3
  %311 = load i32, i32* %310, align 8
  %312 = urem i32 %308, %311
  store i32 %312, i32* %14, align 4
  %313 = load i32, i32* %14, align 4
  %314 = icmp ne i32 %313, 0
  br i1 %314, label %315, label %325

315:                                              ; preds = %305
  %316 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %317 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %316, i32 0, i32 3
  %318 = load i32, i32* %317, align 8
  %319 = load i32, i32* %14, align 4
  %320 = sub i32 %318, %319
  %321 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %322 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %321, i32 0, i32 1
  %323 = load i32, i32* %322, align 8
  %324 = add i32 %323, %320
  store i32 %324, i32* %322, align 8
  br label %325

325:                                              ; preds = %315, %305
  br label %326

326:                                              ; preds = %325, %300, %295
  br label %327

327:                                              ; preds = %326, %291
  br label %328

328:                                              ; preds = %327, %284
  br label %329

329:                                              ; preds = %328, %268
  br label %330

330:                                              ; preds = %329, %251
  br label %331

331:                                              ; preds = %330, %233
  br label %332

332:                                              ; preds = %331, %211
  %333 = load i32, i32* @TRUE, align 4
  store i32 %333, i32* %3, align 4
  br label %334

334:                                              ; preds = %332, %200, %188, %163, %151, %60, %48
  %335 = load i32, i32* %3, align 4
  ret i32 %335
}

declare dso_local i32 @BFD_ASSERT(i32) #1

declare dso_local i64 @bfd_seek(i32*, i64, i32) #1

declare dso_local i32 @H_PUT_32(i32*, i32, i32*) #1

declare dso_local i32 @elf_gp(i32*) #1

declare dso_local i32 @bfd_bwrite(i32*, i32, i32*) #1

declare dso_local %struct.TYPE_10__* @mips_elf_section_data(i32*) #1

declare dso_local i32 @bfd_mips_elf_swap_options_in(i32*, i32*, %struct.TYPE_9__*) #1

declare dso_local i32 @_bfd_error_handler(i32, i32*, i32, i32) #1

declare dso_local i32 @_(i8*) #1

declare dso_local i32 @MIPS_ELF_OPTIONS_SECTION_NAME(i32*) #1

declare dso_local i64 @ABI_64_P(i32*) #1

declare dso_local i32 @H_PUT_64(i32*, i32, i32*) #1

declare dso_local i8* @bfd_get_section_name(i32*, i32*) #1

declare dso_local i64 @strcmp(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

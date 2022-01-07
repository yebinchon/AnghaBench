; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/bfd/extr_elfxx-mips.c__bfd_mips_elf_section_from_shdr.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/bfd/extr_elfxx-mips.c__bfd_mips_elf_section_from_shdr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i32, i32, i32 }
%struct.TYPE_13__ = type { i32 }
%struct.TYPE_11__ = type { i32, i64 }
%struct.TYPE_12__ = type { i32 }

@.str = private unnamed_addr constant [9 x i8] c".liblist\00", align 1
@FALSE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [6 x i8] c".msym\00", align 1
@.str.2 = private unnamed_addr constant [10 x i8] c".conflict\00", align 1
@.str.3 = private unnamed_addr constant [8 x i8] c".gptab.\00", align 1
@.str.4 = private unnamed_addr constant [7 x i8] c".ucode\00", align 1
@.str.5 = private unnamed_addr constant [8 x i8] c".mdebug\00", align 1
@SEC_DEBUGGING = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [9 x i8] c".reginfo\00", align 1
@SEC_LINK_ONCE = common dso_local global i32 0, align 4
@SEC_LINK_DUPLICATES_SAME_SIZE = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [17 x i8] c".MIPS.interfaces\00", align 1
@.str.8 = private unnamed_addr constant [14 x i8] c".MIPS.content\00", align 1
@.str.9 = private unnamed_addr constant [8 x i8] c".debug_\00", align 1
@.str.10 = private unnamed_addr constant [13 x i8] c".MIPS.symlib\00", align 1
@.str.11 = private unnamed_addr constant [13 x i8] c".MIPS.events\00", align 1
@.str.12 = private unnamed_addr constant [15 x i8] c".MIPS.post_rel\00", align 1
@.str.13 = private unnamed_addr constant [61 x i8] c"%B: Warning: bad `%s' option size %u smaller than its header\00", align 1
@ODK_REGINFO = common dso_local global i64 0, align 8
@TRUE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @_bfd_mips_elf_section_from_shdr(i32* %0, %struct.TYPE_10__* %1, i8* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca %struct.TYPE_10__*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.TYPE_13__, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i32*, align 8
  %17 = alloca %struct.TYPE_11__, align 8
  %18 = alloca %struct.TYPE_12__, align 4
  %19 = alloca i32, align 4
  %20 = alloca %struct.TYPE_13__, align 4
  %21 = alloca i32, align 4
  store i32* %0, i32** %6, align 8
  store %struct.TYPE_10__* %1, %struct.TYPE_10__** %7, align 8
  store i8* %2, i8** %8, align 8
  store i32 %3, i32* %9, align 4
  store i32 0, i32* %10, align 4
  %22 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %23 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  switch i32 %24, label %130 [
    i32 133, label %25
    i32 132, label %32
    i32 140, label %39
    i32 135, label %46
    i32 128, label %53
    i32 138, label %60
    i32 130, label %68
    i32 134, label %84
    i32 139, label %91
    i32 131, label %98
    i32 137, label %105
    i32 129, label %112
    i32 136, label %119
  ]

25:                                               ; preds = %4
  %26 = load i8*, i8** %8, align 8
  %27 = call i32 @strcmp(i8* %26, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0))
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %31

29:                                               ; preds = %25
  %30 = load i32, i32* @FALSE, align 4
  store i32 %30, i32* %5, align 4
  br label %277

31:                                               ; preds = %25
  br label %131

32:                                               ; preds = %4
  %33 = load i8*, i8** %8, align 8
  %34 = call i32 @strcmp(i8* %33, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0))
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %38

36:                                               ; preds = %32
  %37 = load i32, i32* @FALSE, align 4
  store i32 %37, i32* %5, align 4
  br label %277

38:                                               ; preds = %32
  br label %131

39:                                               ; preds = %4
  %40 = load i8*, i8** %8, align 8
  %41 = call i32 @strcmp(i8* %40, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0))
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %45

43:                                               ; preds = %39
  %44 = load i32, i32* @FALSE, align 4
  store i32 %44, i32* %5, align 4
  br label %277

45:                                               ; preds = %39
  br label %131

46:                                               ; preds = %4
  %47 = load i8*, i8** %8, align 8
  %48 = call i32 @CONST_STRNEQ(i8* %47, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0))
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %52, label %50

50:                                               ; preds = %46
  %51 = load i32, i32* @FALSE, align 4
  store i32 %51, i32* %5, align 4
  br label %277

52:                                               ; preds = %46
  br label %131

53:                                               ; preds = %4
  %54 = load i8*, i8** %8, align 8
  %55 = call i32 @strcmp(i8* %54, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i64 0, i64 0))
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %59

57:                                               ; preds = %53
  %58 = load i32, i32* @FALSE, align 4
  store i32 %58, i32* %5, align 4
  br label %277

59:                                               ; preds = %53
  br label %131

60:                                               ; preds = %4
  %61 = load i8*, i8** %8, align 8
  %62 = call i32 @strcmp(i8* %61, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i64 0, i64 0))
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %66

64:                                               ; preds = %60
  %65 = load i32, i32* @FALSE, align 4
  store i32 %65, i32* %5, align 4
  br label %277

66:                                               ; preds = %60
  %67 = load i32, i32* @SEC_DEBUGGING, align 4
  store i32 %67, i32* %10, align 4
  br label %131

68:                                               ; preds = %4
  %69 = load i8*, i8** %8, align 8
  %70 = call i32 @strcmp(i8* %69, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.6, i64 0, i64 0))
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %78, label %72

72:                                               ; preds = %68
  %73 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %74 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %73, i32 0, i32 1
  %75 = load i32, i32* %74, align 4
  %76 = sext i32 %75 to i64
  %77 = icmp ne i64 %76, 4
  br i1 %77, label %78, label %80

78:                                               ; preds = %72, %68
  %79 = load i32, i32* @FALSE, align 4
  store i32 %79, i32* %5, align 4
  br label %277

80:                                               ; preds = %72
  %81 = load i32, i32* @SEC_LINK_ONCE, align 4
  %82 = load i32, i32* @SEC_LINK_DUPLICATES_SAME_SIZE, align 4
  %83 = or i32 %81, %82
  store i32 %83, i32* %10, align 4
  br label %131

84:                                               ; preds = %4
  %85 = load i8*, i8** %8, align 8
  %86 = call i32 @strcmp(i8* %85, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.7, i64 0, i64 0))
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %88, label %90

88:                                               ; preds = %84
  %89 = load i32, i32* @FALSE, align 4
  store i32 %89, i32* %5, align 4
  br label %277

90:                                               ; preds = %84
  br label %131

91:                                               ; preds = %4
  %92 = load i8*, i8** %8, align 8
  %93 = call i32 @CONST_STRNEQ(i8* %92, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.8, i64 0, i64 0))
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %97, label %95

95:                                               ; preds = %91
  %96 = load i32, i32* @FALSE, align 4
  store i32 %96, i32* %5, align 4
  br label %277

97:                                               ; preds = %91
  br label %131

98:                                               ; preds = %4
  %99 = load i8*, i8** %8, align 8
  %100 = call i32 @MIPS_ELF_OPTIONS_SECTION_NAME_P(i8* %99)
  %101 = icmp ne i32 %100, 0
  br i1 %101, label %104, label %102

102:                                              ; preds = %98
  %103 = load i32, i32* @FALSE, align 4
  store i32 %103, i32* %5, align 4
  br label %277

104:                                              ; preds = %98
  br label %131

105:                                              ; preds = %4
  %106 = load i8*, i8** %8, align 8
  %107 = call i32 @CONST_STRNEQ(i8* %106, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.9, i64 0, i64 0))
  %108 = icmp ne i32 %107, 0
  br i1 %108, label %111, label %109

109:                                              ; preds = %105
  %110 = load i32, i32* @FALSE, align 4
  store i32 %110, i32* %5, align 4
  br label %277

111:                                              ; preds = %105
  br label %131

112:                                              ; preds = %4
  %113 = load i8*, i8** %8, align 8
  %114 = call i32 @strcmp(i8* %113, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.10, i64 0, i64 0))
  %115 = icmp ne i32 %114, 0
  br i1 %115, label %116, label %118

116:                                              ; preds = %112
  %117 = load i32, i32* @FALSE, align 4
  store i32 %117, i32* %5, align 4
  br label %277

118:                                              ; preds = %112
  br label %131

119:                                              ; preds = %4
  %120 = load i8*, i8** %8, align 8
  %121 = call i32 @CONST_STRNEQ(i8* %120, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.11, i64 0, i64 0))
  %122 = icmp ne i32 %121, 0
  br i1 %122, label %129, label %123

123:                                              ; preds = %119
  %124 = load i8*, i8** %8, align 8
  %125 = call i32 @CONST_STRNEQ(i8* %124, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.12, i64 0, i64 0))
  %126 = icmp ne i32 %125, 0
  br i1 %126, label %129, label %127

127:                                              ; preds = %123
  %128 = load i32, i32* @FALSE, align 4
  store i32 %128, i32* %5, align 4
  br label %277

129:                                              ; preds = %123, %119
  br label %131

130:                                              ; preds = %4
  br label %131

131:                                              ; preds = %130, %129, %118, %111, %104, %97, %90, %80, %66, %59, %52, %45, %38, %31
  %132 = load i32*, i32** %6, align 8
  %133 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %134 = load i8*, i8** %8, align 8
  %135 = load i32, i32* %9, align 4
  %136 = call i32 @_bfd_elf_make_section_from_shdr(i32* %132, %struct.TYPE_10__* %133, i8* %134, i32 %135)
  %137 = icmp ne i32 %136, 0
  br i1 %137, label %140, label %138

138:                                              ; preds = %131
  %139 = load i32, i32* @FALSE, align 4
  store i32 %139, i32* %5, align 4
  br label %277

140:                                              ; preds = %131
  %141 = load i32, i32* %10, align 4
  %142 = icmp ne i32 %141, 0
  br i1 %142, label %143, label %160

143:                                              ; preds = %140
  %144 = load i32*, i32** %6, align 8
  %145 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %146 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %145, i32 0, i32 2
  %147 = load i32, i32* %146, align 4
  %148 = load i32*, i32** %6, align 8
  %149 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %150 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %149, i32 0, i32 2
  %151 = load i32, i32* %150, align 4
  %152 = call i32 @bfd_get_section_flags(i32* %148, i32 %151)
  %153 = load i32, i32* %10, align 4
  %154 = or i32 %152, %153
  %155 = call i32 @bfd_set_section_flags(i32* %144, i32 %147, i32 %154)
  %156 = icmp ne i32 %155, 0
  br i1 %156, label %159, label %157

157:                                              ; preds = %143
  %158 = load i32, i32* @FALSE, align 4
  store i32 %158, i32* %5, align 4
  br label %277

159:                                              ; preds = %143
  br label %160

160:                                              ; preds = %159, %140
  %161 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %162 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %161, i32 0, i32 0
  %163 = load i32, i32* %162, align 4
  %164 = icmp eq i32 %163, 130
  br i1 %164, label %165, label %179

165:                                              ; preds = %160
  %166 = load i32*, i32** %6, align 8
  %167 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %168 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %167, i32 0, i32 2
  %169 = load i32, i32* %168, align 4
  %170 = call i32 @bfd_get_section_contents(i32* %166, i32 %169, i32* %11, i32 0, i32 4)
  %171 = icmp ne i32 %170, 0
  br i1 %171, label %174, label %172

172:                                              ; preds = %165
  %173 = load i32, i32* @FALSE, align 4
  store i32 %173, i32* %5, align 4
  br label %277

174:                                              ; preds = %165
  %175 = load i32*, i32** %6, align 8
  %176 = call i32 @bfd_mips_elf32_swap_reginfo_in(i32* %175, i32* %11, %struct.TYPE_13__* %12)
  %177 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %12, i32 0, i32 0
  %178 = load i32, i32* %177, align 4
  store i32 %178, i32* %13, align 4
  br label %179

179:                                              ; preds = %174, %160
  %180 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %181 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %180, i32 0, i32 0
  %182 = load i32, i32* %181, align 4
  %183 = icmp eq i32 %182, 131
  br i1 %183, label %184, label %275

184:                                              ; preds = %179
  %185 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %186 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %185, i32 0, i32 1
  %187 = load i32, i32* %186, align 4
  %188 = call i32* @bfd_malloc(i32 %187)
  store i32* %188, i32** %14, align 8
  %189 = load i32*, i32** %14, align 8
  %190 = icmp eq i32* %189, null
  br i1 %190, label %191, label %193

191:                                              ; preds = %184
  %192 = load i32, i32* @FALSE, align 4
  store i32 %192, i32* %5, align 4
  br label %277

193:                                              ; preds = %184
  %194 = load i32*, i32** %6, align 8
  %195 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %196 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %195, i32 0, i32 2
  %197 = load i32, i32* %196, align 4
  %198 = load i32*, i32** %14, align 8
  %199 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %200 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %199, i32 0, i32 1
  %201 = load i32, i32* %200, align 4
  %202 = call i32 @bfd_get_section_contents(i32* %194, i32 %197, i32* %198, i32 0, i32 %201)
  %203 = icmp ne i32 %202, 0
  br i1 %203, label %208, label %204

204:                                              ; preds = %193
  %205 = load i32*, i32** %14, align 8
  %206 = call i32 @free(i32* %205)
  %207 = load i32, i32* @FALSE, align 4
  store i32 %207, i32* %5, align 4
  br label %277

208:                                              ; preds = %193
  %209 = load i32*, i32** %14, align 8
  store i32* %209, i32** %15, align 8
  %210 = load i32*, i32** %14, align 8
  %211 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %212 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %211, i32 0, i32 1
  %213 = load i32, i32* %212, align 4
  %214 = sext i32 %213 to i64
  %215 = getelementptr inbounds i32, i32* %210, i64 %214
  store i32* %215, i32** %16, align 8
  br label %216

216:                                              ; preds = %266, %208
  %217 = load i32*, i32** %15, align 8
  %218 = getelementptr inbounds i32, i32* %217, i64 4
  %219 = load i32*, i32** %16, align 8
  %220 = icmp ule i32* %218, %219
  br i1 %220, label %221, label %272

221:                                              ; preds = %216
  %222 = load i32*, i32** %6, align 8
  %223 = load i32*, i32** %15, align 8
  %224 = call i32 @bfd_mips_elf_swap_options_in(i32* %222, i32* %223, %struct.TYPE_11__* %17)
  %225 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %17, i32 0, i32 0
  %226 = load i32, i32* %225, align 8
  %227 = sext i32 %226 to i64
  %228 = icmp ult i64 %227, 4
  br i1 %228, label %229, label %237

229:                                              ; preds = %221
  %230 = call i32 @_(i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.13, i64 0, i64 0))
  %231 = load i32*, i32** %6, align 8
  %232 = load i32*, i32** %6, align 8
  %233 = call i32 @MIPS_ELF_OPTIONS_SECTION_NAME(i32* %232)
  %234 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %17, i32 0, i32 0
  %235 = load i32, i32* %234, align 8
  %236 = call i32 @_bfd_error_handler(i32 %230, i32* %231, i32 %233, i32 %235)
  br label %272

237:                                              ; preds = %221
  %238 = load i32*, i32** %6, align 8
  %239 = call i64 @ABI_64_P(i32* %238)
  %240 = icmp ne i64 %239, 0
  br i1 %240, label %241, label %253

241:                                              ; preds = %237
  %242 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %17, i32 0, i32 1
  %243 = load i64, i64* %242, align 8
  %244 = load i64, i64* @ODK_REGINFO, align 8
  %245 = icmp eq i64 %243, %244
  br i1 %245, label %246, label %253

246:                                              ; preds = %241
  %247 = load i32*, i32** %6, align 8
  %248 = load i32*, i32** %15, align 8
  %249 = getelementptr inbounds i32, i32* %248, i64 4
  %250 = call i32 @bfd_mips_elf64_swap_reginfo_in(i32* %247, i32* %249, %struct.TYPE_12__* %18)
  %251 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %18, i32 0, i32 0
  %252 = load i32, i32* %251, align 4
  store i32 %252, i32* %19, align 4
  br label %266

253:                                              ; preds = %241, %237
  %254 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %17, i32 0, i32 1
  %255 = load i64, i64* %254, align 8
  %256 = load i64, i64* @ODK_REGINFO, align 8
  %257 = icmp eq i64 %255, %256
  br i1 %257, label %258, label %265

258:                                              ; preds = %253
  %259 = load i32*, i32** %6, align 8
  %260 = load i32*, i32** %15, align 8
  %261 = getelementptr inbounds i32, i32* %260, i64 4
  %262 = call i32 @bfd_mips_elf32_swap_reginfo_in(i32* %259, i32* %261, %struct.TYPE_13__* %20)
  %263 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %20, i32 0, i32 0
  %264 = load i32, i32* %263, align 4
  store i32 %264, i32* %21, align 4
  br label %265

265:                                              ; preds = %258, %253
  br label %266

266:                                              ; preds = %265, %246
  %267 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %17, i32 0, i32 0
  %268 = load i32, i32* %267, align 8
  %269 = load i32*, i32** %15, align 8
  %270 = sext i32 %268 to i64
  %271 = getelementptr inbounds i32, i32* %269, i64 %270
  store i32* %271, i32** %15, align 8
  br label %216

272:                                              ; preds = %229, %216
  %273 = load i32*, i32** %14, align 8
  %274 = call i32 @free(i32* %273)
  br label %275

275:                                              ; preds = %272, %179
  %276 = load i32, i32* @TRUE, align 4
  store i32 %276, i32* %5, align 4
  br label %277

277:                                              ; preds = %275, %204, %191, %172, %157, %138, %127, %116, %109, %102, %95, %88, %78, %64, %57, %50, %43, %36, %29
  %278 = load i32, i32* %5, align 4
  ret i32 %278
}

declare dso_local i32 @strcmp(i8*, i8*) #1

declare dso_local i32 @CONST_STRNEQ(i8*, i8*) #1

declare dso_local i32 @MIPS_ELF_OPTIONS_SECTION_NAME_P(i8*) #1

declare dso_local i32 @_bfd_elf_make_section_from_shdr(i32*, %struct.TYPE_10__*, i8*, i32) #1

declare dso_local i32 @bfd_set_section_flags(i32*, i32, i32) #1

declare dso_local i32 @bfd_get_section_flags(i32*, i32) #1

declare dso_local i32 @bfd_get_section_contents(i32*, i32, i32*, i32, i32) #1

declare dso_local i32 @bfd_mips_elf32_swap_reginfo_in(i32*, i32*, %struct.TYPE_13__*) #1

declare dso_local i32* @bfd_malloc(i32) #1

declare dso_local i32 @free(i32*) #1

declare dso_local i32 @bfd_mips_elf_swap_options_in(i32*, i32*, %struct.TYPE_11__*) #1

declare dso_local i32 @_bfd_error_handler(i32, i32*, i32, i32) #1

declare dso_local i32 @_(i8*) #1

declare dso_local i32 @MIPS_ELF_OPTIONS_SECTION_NAME(i32*) #1

declare dso_local i64 @ABI_64_P(i32*) #1

declare dso_local i32 @bfd_mips_elf64_swap_reginfo_in(i32*, i32*, %struct.TYPE_12__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

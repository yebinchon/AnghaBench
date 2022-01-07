; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/elftoolchain/elfcopy/extr_ascii.c_create_srec.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/elftoolchain/elfcopy/extr_ascii.c_create_srec.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.elfcopy = type { i32, i32, i32 }
%struct.TYPE_10__ = type { i64, i32* }
%struct.TYPE_9__ = type { i32 }
%struct.TYPE_8__ = type { i64, i32, i64, i32 }

@ELF_C_READ = common dso_local global i32 0, align 4
@EXIT_FAILURE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"elf_begin() failed: %s\00", align 1
@.str.1 = private unnamed_addr constant [11 x i8] c"symbolsrec\00", align 1
@.str.2 = private unnamed_addr constant [24 x i8] c"gelf_getshdr failed: %s\00", align 1
@SHT_SYMTAB = common dso_local global i64 0, align 8
@SREC_FORCE_S3 = common dso_local global i32 0, align 4
@SHF_ALLOC = common dso_local global i32 0, align 4
@SHT_NOBITS = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [23 x i8] c"elf_nextscn failed: %s\00", align 1
@SREC_FORCE_LEN = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [40 x i8] c"address space too big for S-Record file\00", align 1
@.str.5 = private unnamed_addr constant [23 x i8] c"elf_getdata failed: %s\00", align 1
@.str.6 = private unnamed_addr constant [26 x i8] c"gelf_getehdr() failed: %s\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @create_srec(%struct.elfcopy* %0, i32 %1, i32 %2, i8* %3) #0 {
  %5 = alloca %struct.elfcopy*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca %struct.TYPE_10__*, align 8
  %12 = alloca %struct.TYPE_9__, align 4
  %13 = alloca %struct.TYPE_8__, align 8
  %14 = alloca i32, align 4
  %15 = alloca i64, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i8, align 1
  store %struct.elfcopy* %0, %struct.elfcopy** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i8* %3, i8** %8, align 8
  %19 = load i32, i32* %6, align 4
  %20 = load i32, i32* @ELF_C_READ, align 4
  %21 = call i32* @elf_begin(i32 %19, i32 %20, i32* null)
  store i32* %21, i32** %9, align 8
  %22 = icmp eq i32* %21, null
  br i1 %22, label %23, label %27

23:                                               ; preds = %4
  %24 = load i32, i32* @EXIT_FAILURE, align 4
  %25 = call i32 @elf_errmsg(i32 -1)
  %26 = call i32 @errx(i32 %24, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 %25)
  br label %27

27:                                               ; preds = %23, %4
  %28 = load %struct.elfcopy*, %struct.elfcopy** %5, align 8
  %29 = getelementptr inbounds %struct.elfcopy, %struct.elfcopy* %28, i32 0, i32 2
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @strlen(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0))
  %32 = call i32 @strncmp(i32 %30, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0), i32 %31)
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %61, label %34

34:                                               ; preds = %27
  store i32* null, i32** %10, align 8
  br label %35

35:                                               ; preds = %53, %44, %34
  %36 = load i32*, i32** %9, align 8
  %37 = load i32*, i32** %10, align 8
  %38 = call i32* @elf_nextscn(i32* %36, i32* %37)
  store i32* %38, i32** %10, align 8
  %39 = icmp ne i32* %38, null
  br i1 %39, label %40, label %60

40:                                               ; preds = %35
  %41 = load i32*, i32** %10, align 8
  %42 = call i32* @gelf_getshdr(i32* %41, %struct.TYPE_8__* %13)
  %43 = icmp eq i32* %42, null
  br i1 %43, label %44, label %48

44:                                               ; preds = %40
  %45 = call i32 @elf_errmsg(i32 -1)
  %46 = call i32 (i8*, ...) @warnx(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.2, i64 0, i64 0), i32 %45)
  %47 = call i32 (...) @elf_errno()
  br label %35

48:                                               ; preds = %40
  %49 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %13, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = load i64, i64* @SHT_SYMTAB, align 8
  %52 = icmp ne i64 %50, %51
  br i1 %52, label %53, label %54

53:                                               ; preds = %48
  br label %35

54:                                               ; preds = %48
  %55 = load i32, i32* %7, align 4
  %56 = load i8*, i8** %8, align 8
  %57 = load i32*, i32** %9, align 8
  %58 = load i32*, i32** %10, align 8
  %59 = call i32 @srec_write_symtab(i32 %55, i8* %56, i32* %57, i32* %58, %struct.TYPE_8__* %13)
  br label %60

60:                                               ; preds = %54, %35
  br label %61

61:                                               ; preds = %60, %27
  %62 = load %struct.elfcopy*, %struct.elfcopy** %5, align 8
  %63 = getelementptr inbounds %struct.elfcopy, %struct.elfcopy* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = load i32, i32* @SREC_FORCE_S3, align 4
  %66 = and i32 %64, %65
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %69

68:                                               ; preds = %61
  store i8 51, i8* %18, align 1
  br label %127

69:                                               ; preds = %61
  store i32 0, i32* %14, align 4
  store i32* null, i32** %10, align 8
  br label %70

70:                                               ; preds = %107, %98, %79, %69
  %71 = load i32*, i32** %9, align 8
  %72 = load i32*, i32** %10, align 8
  %73 = call i32* @elf_nextscn(i32* %71, i32* %72)
  store i32* %73, i32** %10, align 8
  %74 = icmp ne i32* %73, null
  br i1 %74, label %75, label %108

75:                                               ; preds = %70
  %76 = load i32*, i32** %10, align 8
  %77 = call i32* @gelf_getshdr(i32* %76, %struct.TYPE_8__* %13)
  %78 = icmp eq i32* %77, null
  br i1 %78, label %79, label %83

79:                                               ; preds = %75
  %80 = call i32 @elf_errmsg(i32 -1)
  %81 = call i32 (i8*, ...) @warnx(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.2, i64 0, i64 0), i32 %80)
  %82 = call i32 (...) @elf_errno()
  br label %70

83:                                               ; preds = %75
  %84 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %13, i32 0, i32 1
  %85 = load i32, i32* %84, align 8
  %86 = load i32, i32* @SHF_ALLOC, align 4
  %87 = and i32 %85, %86
  %88 = icmp eq i32 %87, 0
  br i1 %88, label %98, label %89

89:                                               ; preds = %83
  %90 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %13, i32 0, i32 0
  %91 = load i64, i64* %90, align 8
  %92 = load i64, i64* @SHT_NOBITS, align 8
  %93 = icmp eq i64 %91, %92
  br i1 %93, label %98, label %94

94:                                               ; preds = %89
  %95 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %13, i32 0, i32 2
  %96 = load i64, i64* %95, align 8
  %97 = icmp eq i64 %96, 0
  br i1 %97, label %98, label %99

98:                                               ; preds = %94, %89, %83
  br label %70

99:                                               ; preds = %94
  %100 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %13, i32 0, i32 3
  %101 = load i32, i32* %100, align 8
  %102 = load i32, i32* %14, align 4
  %103 = icmp sgt i32 %101, %102
  br i1 %103, label %104, label %107

104:                                              ; preds = %99
  %105 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %13, i32 0, i32 3
  %106 = load i32, i32* %105, align 8
  store i32 %106, i32* %14, align 4
  br label %107

107:                                              ; preds = %104, %99
  br label %70

108:                                              ; preds = %70
  %109 = call i32 (...) @elf_errno()
  store i32 %109, i32* %16, align 4
  %110 = load i32, i32* %16, align 4
  %111 = icmp ne i32 %110, 0
  br i1 %111, label %112, label %116

112:                                              ; preds = %108
  %113 = load i32, i32* %16, align 4
  %114 = call i32 @elf_errmsg(i32 %113)
  %115 = call i32 (i8*, ...) @warnx(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.3, i64 0, i64 0), i32 %114)
  br label %116

116:                                              ; preds = %112, %108
  %117 = load i32, i32* %14, align 4
  %118 = icmp sle i32 %117, 65535
  br i1 %118, label %119, label %120

119:                                              ; preds = %116
  store i8 49, i8* %18, align 1
  br label %126

120:                                              ; preds = %116
  %121 = load i32, i32* %14, align 4
  %122 = icmp sle i32 %121, 16777215
  br i1 %122, label %123, label %124

123:                                              ; preds = %120
  store i8 50, i8* %18, align 1
  br label %125

124:                                              ; preds = %120
  store i8 51, i8* %18, align 1
  br label %125

125:                                              ; preds = %124, %123
  br label %126

126:                                              ; preds = %125, %119
  br label %127

127:                                              ; preds = %126, %68
  %128 = load %struct.elfcopy*, %struct.elfcopy** %5, align 8
  %129 = getelementptr inbounds %struct.elfcopy, %struct.elfcopy* %128, i32 0, i32 0
  %130 = load i32, i32* %129, align 4
  %131 = load i32, i32* @SREC_FORCE_LEN, align 4
  %132 = and i32 %130, %131
  %133 = icmp ne i32 %132, 0
  br i1 %133, label %134, label %164

134:                                              ; preds = %127
  %135 = load i8, i8* %18, align 1
  %136 = sext i8 %135 to i32
  %137 = sub nsw i32 %136, 48
  %138 = add nsw i32 %137, 1
  store i32 %138, i32* %17, align 4
  %139 = load %struct.elfcopy*, %struct.elfcopy** %5, align 8
  %140 = getelementptr inbounds %struct.elfcopy, %struct.elfcopy* %139, i32 0, i32 1
  %141 = load i32, i32* %140, align 4
  %142 = icmp slt i32 %141, 1
  br i1 %142, label %143, label %144

143:                                              ; preds = %134
  store i64 1, i64* %15, align 8
  br label %163

144:                                              ; preds = %134
  %145 = load %struct.elfcopy*, %struct.elfcopy** %5, align 8
  %146 = getelementptr inbounds %struct.elfcopy, %struct.elfcopy* %145, i32 0, i32 1
  %147 = load i32, i32* %146, align 4
  %148 = load i32, i32* %17, align 4
  %149 = add nsw i32 %147, %148
  %150 = add nsw i32 %149, 1
  %151 = icmp sgt i32 %150, 255
  br i1 %151, label %152, label %157

152:                                              ; preds = %144
  %153 = load i32, i32* %17, align 4
  %154 = add nsw i32 %153, 1
  %155 = sub nsw i32 255, %154
  %156 = sext i32 %155 to i64
  store i64 %156, i64* %15, align 8
  br label %162

157:                                              ; preds = %144
  %158 = load %struct.elfcopy*, %struct.elfcopy** %5, align 8
  %159 = getelementptr inbounds %struct.elfcopy, %struct.elfcopy* %158, i32 0, i32 1
  %160 = load i32, i32* %159, align 4
  %161 = sext i32 %160 to i64
  store i64 %161, i64* %15, align 8
  br label %162

162:                                              ; preds = %157, %152
  br label %163

163:                                              ; preds = %162, %143
  br label %165

164:                                              ; preds = %127
  store i64 16, i64* %15, align 8
  br label %165

165:                                              ; preds = %164, %163
  %166 = load i32, i32* %7, align 4
  %167 = load i8*, i8** %8, align 8
  %168 = call i32 @srec_write_S0(i32 %166, i8* %167)
  store i32* null, i32** %10, align 8
  br label %169

169:                                              ; preds = %228, %227, %216, %202, %197, %178, %165
  %170 = load i32*, i32** %9, align 8
  %171 = load i32*, i32** %10, align 8
  %172 = call i32* @elf_nextscn(i32* %170, i32* %171)
  store i32* %172, i32** %10, align 8
  %173 = icmp ne i32* %172, null
  br i1 %173, label %174, label %241

174:                                              ; preds = %169
  %175 = load i32*, i32** %10, align 8
  %176 = call i32* @gelf_getshdr(i32* %175, %struct.TYPE_8__* %13)
  %177 = icmp eq i32* %176, null
  br i1 %177, label %178, label %182

178:                                              ; preds = %174
  %179 = call i32 @elf_errmsg(i32 -1)
  %180 = call i32 (i8*, ...) @warnx(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.2, i64 0, i64 0), i32 %179)
  %181 = call i32 (...) @elf_errno()
  br label %169

182:                                              ; preds = %174
  %183 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %13, i32 0, i32 1
  %184 = load i32, i32* %183, align 8
  %185 = load i32, i32* @SHF_ALLOC, align 4
  %186 = and i32 %184, %185
  %187 = icmp eq i32 %186, 0
  br i1 %187, label %197, label %188

188:                                              ; preds = %182
  %189 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %13, i32 0, i32 0
  %190 = load i64, i64* %189, align 8
  %191 = load i64, i64* @SHT_NOBITS, align 8
  %192 = icmp eq i64 %190, %191
  br i1 %192, label %197, label %193

193:                                              ; preds = %188
  %194 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %13, i32 0, i32 2
  %195 = load i64, i64* %194, align 8
  %196 = icmp eq i64 %195, 0
  br i1 %196, label %197, label %198

197:                                              ; preds = %193, %188, %182
  br label %169

198:                                              ; preds = %193
  %199 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %13, i32 0, i32 3
  %200 = load i32, i32* %199, align 8
  %201 = icmp ugt i32 %200, -1
  br i1 %201, label %202, label %204

202:                                              ; preds = %198
  %203 = call i32 (i8*, ...) @warnx(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.4, i64 0, i64 0))
  br label %169

204:                                              ; preds = %198
  %205 = call i32 (...) @elf_errno()
  %206 = load i32*, i32** %10, align 8
  %207 = call %struct.TYPE_10__* @elf_getdata(i32* %206, i32* null)
  store %struct.TYPE_10__* %207, %struct.TYPE_10__** %11, align 8
  %208 = icmp eq %struct.TYPE_10__* %207, null
  br i1 %208, label %209, label %217

209:                                              ; preds = %204
  %210 = call i32 (...) @elf_errno()
  store i32 %210, i32* %16, align 4
  %211 = load i32, i32* %16, align 4
  %212 = icmp ne i32 %211, 0
  br i1 %212, label %213, label %216

213:                                              ; preds = %209
  %214 = call i32 @elf_errmsg(i32 -1)
  %215 = call i32 (i8*, ...) @warnx(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.5, i64 0, i64 0), i32 %214)
  br label %216

216:                                              ; preds = %213, %209
  br label %169

217:                                              ; preds = %204
  %218 = load %struct.TYPE_10__*, %struct.TYPE_10__** %11, align 8
  %219 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %218, i32 0, i32 1
  %220 = load i32*, i32** %219, align 8
  %221 = icmp eq i32* %220, null
  br i1 %221, label %227, label %222

222:                                              ; preds = %217
  %223 = load %struct.TYPE_10__*, %struct.TYPE_10__** %11, align 8
  %224 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %223, i32 0, i32 0
  %225 = load i64, i64* %224, align 8
  %226 = icmp eq i64 %225, 0
  br i1 %226, label %227, label %228

227:                                              ; preds = %222, %217
  br label %169

228:                                              ; preds = %222
  %229 = load i32, i32* %7, align 4
  %230 = load i8, i8* %18, align 1
  %231 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %13, i32 0, i32 3
  %232 = load i32, i32* %231, align 8
  %233 = load %struct.TYPE_10__*, %struct.TYPE_10__** %11, align 8
  %234 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %233, i32 0, i32 1
  %235 = load i32*, i32** %234, align 8
  %236 = load %struct.TYPE_10__*, %struct.TYPE_10__** %11, align 8
  %237 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %236, i32 0, i32 0
  %238 = load i64, i64* %237, align 8
  %239 = load i64, i64* %15, align 8
  %240 = call i32 @srec_write_Sd(i32 %229, i8 signext %230, i32 %232, i32* %235, i64 %238, i64 %239)
  br label %169

241:                                              ; preds = %169
  %242 = call i32 (...) @elf_errno()
  store i32 %242, i32* %16, align 4
  %243 = load i32, i32* %16, align 4
  %244 = icmp ne i32 %243, 0
  br i1 %244, label %245, label %249

245:                                              ; preds = %241
  %246 = load i32, i32* %16, align 4
  %247 = call i32 @elf_errmsg(i32 %246)
  %248 = call i32 (i8*, ...) @warnx(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.3, i64 0, i64 0), i32 %247)
  br label %249

249:                                              ; preds = %245, %241
  %250 = load i32*, i32** %9, align 8
  %251 = call i32* @gelf_getehdr(i32* %250, %struct.TYPE_9__* %12)
  %252 = icmp eq i32* %251, null
  br i1 %252, label %253, label %257

253:                                              ; preds = %249
  %254 = load i32, i32* @EXIT_FAILURE, align 4
  %255 = call i32 @elf_errmsg(i32 -1)
  %256 = call i32 @errx(i32 %254, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.6, i64 0, i64 0), i32 %255)
  br label %257

257:                                              ; preds = %253, %249
  %258 = load i32, i32* %7, align 4
  %259 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %12, i32 0, i32 0
  %260 = load i32, i32* %259, align 4
  %261 = load %struct.elfcopy*, %struct.elfcopy** %5, align 8
  %262 = getelementptr inbounds %struct.elfcopy, %struct.elfcopy* %261, i32 0, i32 0
  %263 = load i32, i32* %262, align 4
  %264 = load i32, i32* @SREC_FORCE_S3, align 4
  %265 = and i32 %263, %264
  %266 = call i32 @srec_write_Se(i32 %258, i32 %260, i32 %265)
  ret void
}

declare dso_local i32* @elf_begin(i32, i32, i32*) #1

declare dso_local i32 @errx(i32, i8*, i32) #1

declare dso_local i32 @elf_errmsg(i32) #1

declare dso_local i32 @strncmp(i32, i8*, i32) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32* @elf_nextscn(i32*, i32*) #1

declare dso_local i32* @gelf_getshdr(i32*, %struct.TYPE_8__*) #1

declare dso_local i32 @warnx(i8*, ...) #1

declare dso_local i32 @elf_errno(...) #1

declare dso_local i32 @srec_write_symtab(i32, i8*, i32*, i32*, %struct.TYPE_8__*) #1

declare dso_local i32 @srec_write_S0(i32, i8*) #1

declare dso_local %struct.TYPE_10__* @elf_getdata(i32*, i32*) #1

declare dso_local i32 @srec_write_Sd(i32, i8 signext, i32, i32*, i64, i64) #1

declare dso_local i32* @gelf_getehdr(i32*, %struct.TYPE_9__*) #1

declare dso_local i32 @srec_write_Se(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/elftoolchain/elfcopy/extr_main.c_create_elf.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/elftoolchain/elfcopy/extr_main.c_create_elf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.elfcopy = type { i32, i64, i64, i64, i32, i64, i64, i64, i64, i32, i32, i32, i32*, i32*, i32 }
%struct.section = type { i32 }
%struct.TYPE_4__ = type { i64*, i64, i64, i32, i32, i32, i32, i32 }

@SYMTAB_INTACT = common dso_local global i32 0, align 4
@SYMTAB_EXIST = common dso_local global i32 0, align 4
@EXIT_FAILURE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"gelf_getehdr() failed: %s\00", align 1
@ELFCLASSNONE = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [22 x i8] c"getclass() failed: %s\00", align 1
@ELFDATANONE = common dso_local global i64 0, align 8
@EI_DATA = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [24 x i8] c"gelf_newehdr failed: %s\00", align 1
@EI_CLASS = common dso_local global i64 0, align 8
@EI_OSABI = common dso_local global i64 0, align 8
@EXECUTABLE = common dso_local global i32 0, align 4
@DYNAMIC = common dso_local global i32 0, align 4
@RELOCATABLE = common dso_local global i32 0, align 4
@ET_EXEC = common dso_local global i64 0, align 8
@ET_DYN = common dso_local global i64 0, align 8
@ET_REL = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [19 x i8] c"unsupported e_type\00", align 1
@.str.4 = private unnamed_addr constant [24 x i8] c"elf_getshnum failed: %s\00", align 1
@.str.5 = private unnamed_addr constant [14 x i8] c"calloc failed\00", align 1
@STRIP_DEBUG = common dso_local global i64 0, align 8
@STRIP_UNNEEDED = common dso_local global i64 0, align 8
@WEAKEN_ALL = common dso_local global i32 0, align 4
@LOCALIZE_HIDDEN = common dso_local global i32 0, align 4
@DISCARD_LOCAL = common dso_local global i32 0, align 4
@DISCARD_LLABEL = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [30 x i8] c"gelf_update_ehdr() failed: %s\00", align 1
@ELFOSABI_FREEBSD = common dso_local global i32 0, align 4
@ELF_T_EHDR = common dso_local global i32 0, align 4
@EV_CURRENT = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [24 x i8] c"gelf_fsize() failed: %s\00", align 1
@SET_START = common dso_local global i32 0, align 4
@ELF_C_WRITE = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [24 x i8] c"elf_update() failed: %s\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @create_elf(%struct.elfcopy* %0) #0 {
  %2 = alloca %struct.elfcopy*, align 8
  %3 = alloca %struct.section*, align 8
  %4 = alloca %struct.TYPE_4__, align 8
  %5 = alloca %struct.TYPE_4__, align 8
  %6 = alloca i64, align 8
  store %struct.elfcopy* %0, %struct.elfcopy** %2, align 8
  %7 = load i32, i32* @SYMTAB_INTACT, align 4
  %8 = load %struct.elfcopy*, %struct.elfcopy** %2, align 8
  %9 = getelementptr inbounds %struct.elfcopy, %struct.elfcopy* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 8
  %11 = or i32 %10, %7
  store i32 %11, i32* %9, align 8
  %12 = load i32, i32* @SYMTAB_EXIST, align 4
  %13 = xor i32 %12, -1
  %14 = load %struct.elfcopy*, %struct.elfcopy** %2, align 8
  %15 = getelementptr inbounds %struct.elfcopy, %struct.elfcopy* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = and i32 %16, %13
  store i32 %17, i32* %15, align 8
  %18 = load %struct.elfcopy*, %struct.elfcopy** %2, align 8
  %19 = getelementptr inbounds %struct.elfcopy, %struct.elfcopy* %18, i32 0, i32 14
  %20 = load i32, i32* %19, align 8
  %21 = call i32* @gelf_getehdr(i32 %20, %struct.TYPE_4__* %4)
  %22 = icmp eq i32* %21, null
  br i1 %22, label %23, label %27

23:                                               ; preds = %1
  %24 = load i32, i32* @EXIT_FAILURE, align 4
  %25 = call i32 @elf_errmsg(i32 -1)
  %26 = call i32 (i32, i8*, ...) @errx(i32 %24, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i32 %25)
  br label %27

27:                                               ; preds = %23, %1
  %28 = load %struct.elfcopy*, %struct.elfcopy** %2, align 8
  %29 = getelementptr inbounds %struct.elfcopy, %struct.elfcopy* %28, i32 0, i32 14
  %30 = load i32, i32* %29, align 8
  %31 = call i64 @gelf_getclass(i32 %30)
  %32 = load %struct.elfcopy*, %struct.elfcopy** %2, align 8
  %33 = getelementptr inbounds %struct.elfcopy, %struct.elfcopy* %32, i32 0, i32 1
  store i64 %31, i64* %33, align 8
  %34 = load i64, i64* @ELFCLASSNONE, align 8
  %35 = icmp eq i64 %31, %34
  br i1 %35, label %36, label %40

36:                                               ; preds = %27
  %37 = load i32, i32* @EXIT_FAILURE, align 4
  %38 = call i32 @elf_errmsg(i32 -1)
  %39 = call i32 (i32, i8*, ...) @errx(i32 %37, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0), i32 %38)
  br label %40

40:                                               ; preds = %36, %27
  %41 = load %struct.elfcopy*, %struct.elfcopy** %2, align 8
  %42 = getelementptr inbounds %struct.elfcopy, %struct.elfcopy* %41, i32 0, i32 2
  %43 = load i64, i64* %42, align 8
  %44 = load i64, i64* @ELFCLASSNONE, align 8
  %45 = icmp eq i64 %43, %44
  br i1 %45, label %46, label %52

46:                                               ; preds = %40
  %47 = load %struct.elfcopy*, %struct.elfcopy** %2, align 8
  %48 = getelementptr inbounds %struct.elfcopy, %struct.elfcopy* %47, i32 0, i32 1
  %49 = load i64, i64* %48, align 8
  %50 = load %struct.elfcopy*, %struct.elfcopy** %2, align 8
  %51 = getelementptr inbounds %struct.elfcopy, %struct.elfcopy* %50, i32 0, i32 2
  store i64 %49, i64* %51, align 8
  br label %52

52:                                               ; preds = %46, %40
  %53 = load %struct.elfcopy*, %struct.elfcopy** %2, align 8
  %54 = getelementptr inbounds %struct.elfcopy, %struct.elfcopy* %53, i32 0, i32 3
  %55 = load i64, i64* %54, align 8
  %56 = load i64, i64* @ELFDATANONE, align 8
  %57 = icmp eq i64 %55, %56
  br i1 %57, label %58, label %66

58:                                               ; preds = %52
  %59 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %4, i32 0, i32 0
  %60 = load i64*, i64** %59, align 8
  %61 = load i64, i64* @EI_DATA, align 8
  %62 = getelementptr inbounds i64, i64* %60, i64 %61
  %63 = load i64, i64* %62, align 8
  %64 = load %struct.elfcopy*, %struct.elfcopy** %2, align 8
  %65 = getelementptr inbounds %struct.elfcopy, %struct.elfcopy* %64, i32 0, i32 3
  store i64 %63, i64* %65, align 8
  br label %66

66:                                               ; preds = %58, %52
  %67 = load %struct.elfcopy*, %struct.elfcopy** %2, align 8
  %68 = getelementptr inbounds %struct.elfcopy, %struct.elfcopy* %67, i32 0, i32 9
  %69 = load i32, i32* %68, align 8
  %70 = load %struct.elfcopy*, %struct.elfcopy** %2, align 8
  %71 = getelementptr inbounds %struct.elfcopy, %struct.elfcopy* %70, i32 0, i32 2
  %72 = load i64, i64* %71, align 8
  %73 = call i32* @gelf_newehdr(i32 %69, i64 %72)
  %74 = icmp eq i32* %73, null
  br i1 %74, label %75, label %79

75:                                               ; preds = %66
  %76 = load i32, i32* @EXIT_FAILURE, align 4
  %77 = call i32 @elf_errmsg(i32 -1)
  %78 = call i32 (i32, i8*, ...) @errx(i32 %76, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.2, i64 0, i64 0), i32 %77)
  br label %79

79:                                               ; preds = %75, %66
  %80 = load %struct.elfcopy*, %struct.elfcopy** %2, align 8
  %81 = getelementptr inbounds %struct.elfcopy, %struct.elfcopy* %80, i32 0, i32 9
  %82 = load i32, i32* %81, align 8
  %83 = call i32* @gelf_getehdr(i32 %82, %struct.TYPE_4__* %5)
  %84 = icmp eq i32* %83, null
  br i1 %84, label %85, label %89

85:                                               ; preds = %79
  %86 = load i32, i32* @EXIT_FAILURE, align 4
  %87 = call i32 @elf_errmsg(i32 -1)
  %88 = call i32 (i32, i8*, ...) @errx(i32 %86, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i32 %87)
  br label %89

89:                                               ; preds = %85, %79
  %90 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %5, i32 0, i32 0
  %91 = load i64*, i64** %90, align 8
  %92 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %4, i32 0, i32 0
  %93 = load i64*, i64** %92, align 8
  %94 = call i32 @memcpy(i64* %91, i64* %93, i32 8)
  %95 = load %struct.elfcopy*, %struct.elfcopy** %2, align 8
  %96 = getelementptr inbounds %struct.elfcopy, %struct.elfcopy* %95, i32 0, i32 2
  %97 = load i64, i64* %96, align 8
  %98 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %5, i32 0, i32 0
  %99 = load i64*, i64** %98, align 8
  %100 = load i64, i64* @EI_CLASS, align 8
  %101 = getelementptr inbounds i64, i64* %99, i64 %100
  store i64 %97, i64* %101, align 8
  %102 = load %struct.elfcopy*, %struct.elfcopy** %2, align 8
  %103 = getelementptr inbounds %struct.elfcopy, %struct.elfcopy* %102, i32 0, i32 3
  %104 = load i64, i64* %103, align 8
  %105 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %5, i32 0, i32 0
  %106 = load i64*, i64** %105, align 8
  %107 = load i64, i64* @EI_DATA, align 8
  %108 = getelementptr inbounds i64, i64* %106, i64 %107
  store i64 %104, i64* %108, align 8
  %109 = load %struct.elfcopy*, %struct.elfcopy** %2, align 8
  %110 = getelementptr inbounds %struct.elfcopy, %struct.elfcopy* %109, i32 0, i32 4
  %111 = load i32, i32* %110, align 8
  %112 = icmp ne i32 %111, -1
  br i1 %112, label %113, label %122

113:                                              ; preds = %89
  %114 = load %struct.elfcopy*, %struct.elfcopy** %2, align 8
  %115 = getelementptr inbounds %struct.elfcopy, %struct.elfcopy* %114, i32 0, i32 4
  %116 = load i32, i32* %115, align 8
  %117 = sext i32 %116 to i64
  %118 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %5, i32 0, i32 0
  %119 = load i64*, i64** %118, align 8
  %120 = load i64, i64* @EI_OSABI, align 8
  %121 = getelementptr inbounds i64, i64* %119, i64 %120
  store i64 %117, i64* %121, align 8
  br label %122

122:                                              ; preds = %113, %89
  %123 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %4, i32 0, i32 7
  %124 = load i32, i32* %123, align 8
  %125 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %5, i32 0, i32 7
  store i32 %124, i32* %125, align 8
  %126 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %4, i32 0, i32 6
  %127 = load i32, i32* %126, align 4
  %128 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %5, i32 0, i32 6
  store i32 %127, i32* %128, align 4
  %129 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %4, i32 0, i32 1
  %130 = load i64, i64* %129, align 8
  %131 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %5, i32 0, i32 1
  store i64 %130, i64* %131, align 8
  %132 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %4, i32 0, i32 3
  %133 = load i32, i32* %132, align 8
  %134 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %5, i32 0, i32 3
  store i32 %133, i32* %134, align 8
  %135 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %4, i32 0, i32 5
  %136 = load i32, i32* %135, align 8
  %137 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %5, i32 0, i32 5
  store i32 %136, i32* %137, align 8
  %138 = load i32, i32* @EXECUTABLE, align 4
  %139 = load i32, i32* @DYNAMIC, align 4
  %140 = or i32 %138, %139
  %141 = load i32, i32* @RELOCATABLE, align 4
  %142 = or i32 %140, %141
  %143 = xor i32 %142, -1
  %144 = load %struct.elfcopy*, %struct.elfcopy** %2, align 8
  %145 = getelementptr inbounds %struct.elfcopy, %struct.elfcopy* %144, i32 0, i32 0
  %146 = load i32, i32* %145, align 8
  %147 = and i32 %146, %143
  store i32 %147, i32* %145, align 8
  %148 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %4, i32 0, i32 1
  %149 = load i64, i64* %148, align 8
  %150 = load i64, i64* @ET_EXEC, align 8
  %151 = icmp eq i64 %149, %150
  br i1 %151, label %152, label %158

152:                                              ; preds = %122
  %153 = load i32, i32* @EXECUTABLE, align 4
  %154 = load %struct.elfcopy*, %struct.elfcopy** %2, align 8
  %155 = getelementptr inbounds %struct.elfcopy, %struct.elfcopy* %154, i32 0, i32 0
  %156 = load i32, i32* %155, align 8
  %157 = or i32 %156, %153
  store i32 %157, i32* %155, align 8
  br label %185

158:                                              ; preds = %122
  %159 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %4, i32 0, i32 1
  %160 = load i64, i64* %159, align 8
  %161 = load i64, i64* @ET_DYN, align 8
  %162 = icmp eq i64 %160, %161
  br i1 %162, label %163, label %169

163:                                              ; preds = %158
  %164 = load i32, i32* @DYNAMIC, align 4
  %165 = load %struct.elfcopy*, %struct.elfcopy** %2, align 8
  %166 = getelementptr inbounds %struct.elfcopy, %struct.elfcopy* %165, i32 0, i32 0
  %167 = load i32, i32* %166, align 8
  %168 = or i32 %167, %164
  store i32 %168, i32* %166, align 8
  br label %184

169:                                              ; preds = %158
  %170 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %4, i32 0, i32 1
  %171 = load i64, i64* %170, align 8
  %172 = load i64, i64* @ET_REL, align 8
  %173 = icmp eq i64 %171, %172
  br i1 %173, label %174, label %180

174:                                              ; preds = %169
  %175 = load i32, i32* @RELOCATABLE, align 4
  %176 = load %struct.elfcopy*, %struct.elfcopy** %2, align 8
  %177 = getelementptr inbounds %struct.elfcopy, %struct.elfcopy* %176, i32 0, i32 0
  %178 = load i32, i32* %177, align 8
  %179 = or i32 %178, %175
  store i32 %179, i32* %177, align 8
  br label %183

180:                                              ; preds = %169
  %181 = load i32, i32* @EXIT_FAILURE, align 4
  %182 = call i32 (i32, i8*, ...) @errx(i32 %181, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.3, i64 0, i64 0))
  br label %183

183:                                              ; preds = %180, %174
  br label %184

184:                                              ; preds = %183, %163
  br label %185

185:                                              ; preds = %184, %152
  %186 = load %struct.elfcopy*, %struct.elfcopy** %2, align 8
  %187 = getelementptr inbounds %struct.elfcopy, %struct.elfcopy* %186, i32 0, i32 14
  %188 = load i32, i32* %187, align 8
  %189 = call i32 @elf_getshnum(i32 %188, i64* %6)
  %190 = icmp ne i32 %189, 0
  br i1 %190, label %195, label %191

191:                                              ; preds = %185
  %192 = load i32, i32* @EXIT_FAILURE, align 4
  %193 = call i32 @elf_errmsg(i32 -1)
  %194 = call i32 (i32, i8*, ...) @errx(i32 %192, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.4, i64 0, i64 0), i32 %193)
  br label %195

195:                                              ; preds = %191, %185
  %196 = load i64, i64* %6, align 8
  %197 = icmp ugt i64 %196, 0
  br i1 %197, label %198, label %207

198:                                              ; preds = %195
  %199 = load i64, i64* %6, align 8
  %200 = call i32* @calloc(i64 %199, i32 4)
  %201 = load %struct.elfcopy*, %struct.elfcopy** %2, align 8
  %202 = getelementptr inbounds %struct.elfcopy, %struct.elfcopy* %201, i32 0, i32 13
  store i32* %200, i32** %202, align 8
  %203 = icmp eq i32* %200, null
  br i1 %203, label %204, label %207

204:                                              ; preds = %198
  %205 = load i32, i32* @EXIT_FAILURE, align 4
  %206 = call i32 @err(i32 %205, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.5, i64 0, i64 0))
  br label %207

207:                                              ; preds = %204, %198, %195
  %208 = load %struct.elfcopy*, %struct.elfcopy** %2, align 8
  %209 = call i32 @setup_phdr(%struct.elfcopy* %208)
  %210 = load %struct.elfcopy*, %struct.elfcopy** %2, align 8
  %211 = call i32 @create_scn(%struct.elfcopy* %210)
  %212 = load %struct.elfcopy*, %struct.elfcopy** %2, align 8
  %213 = call i32 @adjust_addr(%struct.elfcopy* %212)
  %214 = load %struct.elfcopy*, %struct.elfcopy** %2, align 8
  %215 = getelementptr inbounds %struct.elfcopy, %struct.elfcopy* %214, i32 0, i32 5
  %216 = load i64, i64* %215, align 8
  %217 = load i64, i64* @STRIP_DEBUG, align 8
  %218 = icmp eq i64 %216, %217
  br i1 %218, label %263, label %219

219:                                              ; preds = %207
  %220 = load %struct.elfcopy*, %struct.elfcopy** %2, align 8
  %221 = getelementptr inbounds %struct.elfcopy, %struct.elfcopy* %220, i32 0, i32 5
  %222 = load i64, i64* %221, align 8
  %223 = load i64, i64* @STRIP_UNNEEDED, align 8
  %224 = icmp eq i64 %222, %223
  br i1 %224, label %263, label %225

225:                                              ; preds = %219
  %226 = load %struct.elfcopy*, %struct.elfcopy** %2, align 8
  %227 = getelementptr inbounds %struct.elfcopy, %struct.elfcopy* %226, i32 0, i32 0
  %228 = load i32, i32* %227, align 8
  %229 = load i32, i32* @WEAKEN_ALL, align 4
  %230 = and i32 %228, %229
  %231 = icmp ne i32 %230, 0
  br i1 %231, label %263, label %232

232:                                              ; preds = %225
  %233 = load %struct.elfcopy*, %struct.elfcopy** %2, align 8
  %234 = getelementptr inbounds %struct.elfcopy, %struct.elfcopy* %233, i32 0, i32 0
  %235 = load i32, i32* %234, align 8
  %236 = load i32, i32* @LOCALIZE_HIDDEN, align 4
  %237 = and i32 %235, %236
  %238 = icmp ne i32 %237, 0
  br i1 %238, label %263, label %239

239:                                              ; preds = %232
  %240 = load %struct.elfcopy*, %struct.elfcopy** %2, align 8
  %241 = getelementptr inbounds %struct.elfcopy, %struct.elfcopy* %240, i32 0, i32 0
  %242 = load i32, i32* %241, align 8
  %243 = load i32, i32* @DISCARD_LOCAL, align 4
  %244 = and i32 %242, %243
  %245 = icmp ne i32 %244, 0
  br i1 %245, label %263, label %246

246:                                              ; preds = %239
  %247 = load %struct.elfcopy*, %struct.elfcopy** %2, align 8
  %248 = getelementptr inbounds %struct.elfcopy, %struct.elfcopy* %247, i32 0, i32 0
  %249 = load i32, i32* %248, align 8
  %250 = load i32, i32* @DISCARD_LLABEL, align 4
  %251 = and i32 %249, %250
  %252 = icmp ne i32 %251, 0
  br i1 %252, label %263, label %253

253:                                              ; preds = %246
  %254 = load %struct.elfcopy*, %struct.elfcopy** %2, align 8
  %255 = getelementptr inbounds %struct.elfcopy, %struct.elfcopy* %254, i32 0, i32 12
  %256 = load i32*, i32** %255, align 8
  %257 = icmp ne i32* %256, null
  br i1 %257, label %263, label %258

258:                                              ; preds = %253
  %259 = load %struct.elfcopy*, %struct.elfcopy** %2, align 8
  %260 = getelementptr inbounds %struct.elfcopy, %struct.elfcopy* %259, i32 0, i32 11
  %261 = call i32 @STAILQ_EMPTY(i32* %260)
  %262 = icmp ne i32 %261, 0
  br i1 %262, label %270, label %263

263:                                              ; preds = %258, %253, %246, %239, %232, %225, %219, %207
  %264 = load i32, i32* @SYMTAB_INTACT, align 4
  %265 = xor i32 %264, -1
  %266 = load %struct.elfcopy*, %struct.elfcopy** %2, align 8
  %267 = getelementptr inbounds %struct.elfcopy, %struct.elfcopy* %266, i32 0, i32 0
  %268 = load i32, i32* %267, align 8
  %269 = and i32 %268, %265
  store i32 %269, i32* %267, align 8
  br label %270

270:                                              ; preds = %263, %258
  %271 = load %struct.elfcopy*, %struct.elfcopy** %2, align 8
  %272 = getelementptr inbounds %struct.elfcopy, %struct.elfcopy* %271, i32 0, i32 0
  %273 = load i32, i32* %272, align 8
  %274 = load i32, i32* @SYMTAB_EXIST, align 4
  %275 = and i32 %273, %274
  %276 = icmp ne i32 %275, 0
  br i1 %276, label %277, label %280

277:                                              ; preds = %270
  %278 = load %struct.elfcopy*, %struct.elfcopy** %2, align 8
  %279 = call i32 @create_symtab(%struct.elfcopy* %278)
  br label %280

280:                                              ; preds = %277, %270
  %281 = load %struct.elfcopy*, %struct.elfcopy** %2, align 8
  %282 = getelementptr inbounds %struct.elfcopy, %struct.elfcopy* %281, i32 0, i32 9
  %283 = load i32, i32* %282, align 8
  %284 = call i64 @gelf_update_ehdr(i32 %283, %struct.TYPE_4__* %5)
  %285 = icmp eq i64 %284, 0
  br i1 %285, label %286, label %290

286:                                              ; preds = %280
  %287 = load i32, i32* @EXIT_FAILURE, align 4
  %288 = call i32 @elf_errmsg(i32 -1)
  %289 = call i32 (i32, i8*, ...) @errx(i32 %287, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.6, i64 0, i64 0), i32 %288)
  br label %290

290:                                              ; preds = %286, %280
  %291 = load %struct.elfcopy*, %struct.elfcopy** %2, align 8
  %292 = call i32 @copy_content(%struct.elfcopy* %291)
  %293 = load %struct.elfcopy*, %struct.elfcopy** %2, align 8
  %294 = call i32 @update_shdr(%struct.elfcopy* %293, i32 1)
  %295 = load %struct.elfcopy*, %struct.elfcopy** %2, align 8
  %296 = getelementptr inbounds %struct.elfcopy, %struct.elfcopy* %295, i32 0, i32 9
  %297 = load i32, i32* %296, align 8
  %298 = call i32* @gelf_getehdr(i32 %297, %struct.TYPE_4__* %5)
  %299 = icmp eq i32* %298, null
  br i1 %299, label %300, label %304

300:                                              ; preds = %290
  %301 = load i32, i32* @EXIT_FAILURE, align 4
  %302 = call i32 @elf_errmsg(i32 -1)
  %303 = call i32 (i32, i8*, ...) @errx(i32 %301, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i32 %302)
  br label %304

304:                                              ; preds = %300, %290
  %305 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %5, i32 0, i32 0
  %306 = load i64*, i64** %305, align 8
  %307 = load i64, i64* @EI_OSABI, align 8
  %308 = getelementptr inbounds i64, i64* %306, i64 %307
  %309 = load i64, i64* %308, align 8
  %310 = load i32, i32* @ELFOSABI_FREEBSD, align 4
  %311 = sext i32 %310 to i64
  %312 = icmp eq i64 %309, %311
  br i1 %312, label %313, label %316

313:                                              ; preds = %304
  %314 = load %struct.elfcopy*, %struct.elfcopy** %2, align 8
  %315 = call %struct.section* @insert_shtab(%struct.elfcopy* %314, i32 1)
  store %struct.section* %315, %struct.section** %3, align 8
  br label %319

316:                                              ; preds = %304
  %317 = load %struct.elfcopy*, %struct.elfcopy** %2, align 8
  %318 = call %struct.section* @insert_shtab(%struct.elfcopy* %317, i32 0)
  store %struct.section* %318, %struct.section** %3, align 8
  br label %319

319:                                              ; preds = %316, %313
  %320 = load %struct.elfcopy*, %struct.elfcopy** %2, align 8
  %321 = call i32 @resync_sections(%struct.elfcopy* %320)
  %322 = load %struct.section*, %struct.section** %3, align 8
  %323 = getelementptr inbounds %struct.section, %struct.section* %322, i32 0, i32 0
  %324 = load i32, i32* %323, align 4
  %325 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %5, i32 0, i32 4
  store i32 %324, i32* %325, align 4
  %326 = load %struct.elfcopy*, %struct.elfcopy** %2, align 8
  %327 = getelementptr inbounds %struct.elfcopy, %struct.elfcopy* %326, i32 0, i32 6
  %328 = load i64, i64* %327, align 8
  %329 = icmp sgt i64 %328, 0
  br i1 %329, label %330, label %346

330:                                              ; preds = %319
  %331 = load %struct.elfcopy*, %struct.elfcopy** %2, align 8
  %332 = getelementptr inbounds %struct.elfcopy, %struct.elfcopy* %331, i32 0, i32 9
  %333 = load i32, i32* %332, align 8
  %334 = load i32, i32* @ELF_T_EHDR, align 4
  %335 = load i32, i32* @EV_CURRENT, align 4
  %336 = call i64 @gelf_fsize(i32 %333, i32 %334, i32 1, i32 %335)
  %337 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %5, i32 0, i32 2
  store i64 %336, i64* %337, align 8
  %338 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %5, i32 0, i32 2
  %339 = load i64, i64* %338, align 8
  %340 = icmp eq i64 %339, 0
  br i1 %340, label %341, label %345

341:                                              ; preds = %330
  %342 = load i32, i32* @EXIT_FAILURE, align 4
  %343 = call i32 @elf_errmsg(i32 -1)
  %344 = call i32 (i32, i8*, ...) @errx(i32 %342, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.7, i64 0, i64 0), i32 %343)
  br label %345

345:                                              ; preds = %341, %330
  br label %346

346:                                              ; preds = %345, %319
  %347 = load %struct.elfcopy*, %struct.elfcopy** %2, align 8
  %348 = getelementptr inbounds %struct.elfcopy, %struct.elfcopy* %347, i32 0, i32 7
  %349 = load i64, i64* %348, align 8
  %350 = icmp ne i64 %349, 0
  br i1 %350, label %351, label %360

351:                                              ; preds = %346
  %352 = load %struct.elfcopy*, %struct.elfcopy** %2, align 8
  %353 = getelementptr inbounds %struct.elfcopy, %struct.elfcopy* %352, i32 0, i32 7
  %354 = load i64, i64* %353, align 8
  %355 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %5, i32 0, i32 3
  %356 = load i32, i32* %355, align 8
  %357 = sext i32 %356 to i64
  %358 = add nsw i64 %357, %354
  %359 = trunc i64 %358 to i32
  store i32 %359, i32* %355, align 8
  br label %360

360:                                              ; preds = %351, %346
  %361 = load %struct.elfcopy*, %struct.elfcopy** %2, align 8
  %362 = getelementptr inbounds %struct.elfcopy, %struct.elfcopy* %361, i32 0, i32 0
  %363 = load i32, i32* %362, align 8
  %364 = load i32, i32* @SET_START, align 4
  %365 = and i32 %363, %364
  %366 = icmp ne i32 %365, 0
  br i1 %366, label %367, label %372

367:                                              ; preds = %360
  %368 = load %struct.elfcopy*, %struct.elfcopy** %2, align 8
  %369 = getelementptr inbounds %struct.elfcopy, %struct.elfcopy* %368, i32 0, i32 10
  %370 = load i32, i32* %369, align 4
  %371 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %5, i32 0, i32 3
  store i32 %370, i32* %371, align 8
  br label %372

372:                                              ; preds = %367, %360
  %373 = load %struct.elfcopy*, %struct.elfcopy** %2, align 8
  %374 = getelementptr inbounds %struct.elfcopy, %struct.elfcopy* %373, i32 0, i32 8
  %375 = load i64, i64* %374, align 8
  %376 = icmp ne i64 %375, 0
  br i1 %376, label %377, label %386

377:                                              ; preds = %372
  %378 = load %struct.elfcopy*, %struct.elfcopy** %2, align 8
  %379 = getelementptr inbounds %struct.elfcopy, %struct.elfcopy* %378, i32 0, i32 8
  %380 = load i64, i64* %379, align 8
  %381 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %5, i32 0, i32 3
  %382 = load i32, i32* %381, align 8
  %383 = sext i32 %382 to i64
  %384 = add nsw i64 %383, %380
  %385 = trunc i64 %384 to i32
  store i32 %385, i32* %381, align 8
  br label %386

386:                                              ; preds = %377, %372
  %387 = load %struct.elfcopy*, %struct.elfcopy** %2, align 8
  %388 = getelementptr inbounds %struct.elfcopy, %struct.elfcopy* %387, i32 0, i32 9
  %389 = load i32, i32* %388, align 8
  %390 = call i64 @gelf_update_ehdr(i32 %389, %struct.TYPE_4__* %5)
  %391 = icmp eq i64 %390, 0
  br i1 %391, label %392, label %396

392:                                              ; preds = %386
  %393 = load i32, i32* @EXIT_FAILURE, align 4
  %394 = call i32 @elf_errmsg(i32 -1)
  %395 = call i32 (i32, i8*, ...) @errx(i32 %393, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.6, i64 0, i64 0), i32 %394)
  br label %396

396:                                              ; preds = %392, %386
  %397 = load %struct.elfcopy*, %struct.elfcopy** %2, align 8
  %398 = getelementptr inbounds %struct.elfcopy, %struct.elfcopy* %397, i32 0, i32 6
  %399 = load i64, i64* %398, align 8
  %400 = icmp sgt i64 %399, 0
  br i1 %400, label %401, label %404

401:                                              ; preds = %396
  %402 = load %struct.elfcopy*, %struct.elfcopy** %2, align 8
  %403 = call i32 @copy_phdr(%struct.elfcopy* %402)
  br label %404

404:                                              ; preds = %401, %396
  %405 = load %struct.elfcopy*, %struct.elfcopy** %2, align 8
  %406 = getelementptr inbounds %struct.elfcopy, %struct.elfcopy* %405, i32 0, i32 9
  %407 = load i32, i32* %406, align 8
  %408 = load i32, i32* @ELF_C_WRITE, align 4
  %409 = call i64 @elf_update(i32 %407, i32 %408)
  %410 = icmp slt i64 %409, 0
  br i1 %410, label %411, label %415

411:                                              ; preds = %404
  %412 = load i32, i32* @EXIT_FAILURE, align 4
  %413 = call i32 @elf_errmsg(i32 -1)
  %414 = call i32 (i32, i8*, ...) @errx(i32 %412, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.8, i64 0, i64 0), i32 %413)
  br label %415

415:                                              ; preds = %411, %404
  %416 = load %struct.elfcopy*, %struct.elfcopy** %2, align 8
  %417 = call i32 @free_elf(%struct.elfcopy* %416)
  ret void
}

declare dso_local i32* @gelf_getehdr(i32, %struct.TYPE_4__*) #1

declare dso_local i32 @errx(i32, i8*, ...) #1

declare dso_local i32 @elf_errmsg(i32) #1

declare dso_local i64 @gelf_getclass(i32) #1

declare dso_local i32* @gelf_newehdr(i32, i64) #1

declare dso_local i32 @memcpy(i64*, i64*, i32) #1

declare dso_local i32 @elf_getshnum(i32, i64*) #1

declare dso_local i32* @calloc(i64, i32) #1

declare dso_local i32 @err(i32, i8*) #1

declare dso_local i32 @setup_phdr(%struct.elfcopy*) #1

declare dso_local i32 @create_scn(%struct.elfcopy*) #1

declare dso_local i32 @adjust_addr(%struct.elfcopy*) #1

declare dso_local i32 @STAILQ_EMPTY(i32*) #1

declare dso_local i32 @create_symtab(%struct.elfcopy*) #1

declare dso_local i64 @gelf_update_ehdr(i32, %struct.TYPE_4__*) #1

declare dso_local i32 @copy_content(%struct.elfcopy*) #1

declare dso_local i32 @update_shdr(%struct.elfcopy*, i32) #1

declare dso_local %struct.section* @insert_shtab(%struct.elfcopy*, i32) #1

declare dso_local i32 @resync_sections(%struct.elfcopy*) #1

declare dso_local i64 @gelf_fsize(i32, i32, i32, i32) #1

declare dso_local i32 @copy_phdr(%struct.elfcopy*) #1

declare dso_local i64 @elf_update(i32, i32) #1

declare dso_local i32 @free_elf(%struct.elfcopy*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

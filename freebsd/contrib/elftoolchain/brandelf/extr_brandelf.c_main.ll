; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/elftoolchain/brandelf/extr_brandelf.c_main.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/elftoolchain/brandelf/extr_brandelf.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32* }

@ELFOSABI_NONE = common dso_local global i32 0, align 4
@EV_CURRENT = common dso_local global i32 0, align 4
@EV_NONE = common dso_local global i64 0, align 8
@EXIT_FAILURE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [18 x i8] c"elf_version error\00", align 1
@.str.1 = private unnamed_addr constant [9 x i8] c"Vf:hlt:v\00", align 1
@brandelf_longopts = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [57 x i8] c"ERROR: the -f option is incompatible with the -t option.\00", align 1
@optarg = common dso_local global i8* null, align 8
@errno = common dso_local global i32 0, align 4
@ERANGE = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [41 x i8] c"ERROR: invalid argument to option -f: %s\00", align 1
@.str.4 = private unnamed_addr constant [50 x i8] c"the -t option is incompatible with the -f option.\00", align 1
@.str.5 = private unnamed_addr constant [29 x i8] c"ERROR: invalid ELF type '%s'\00", align 1
@optind = common dso_local global i64 0, align 8
@.str.6 = private unnamed_addr constant [21 x i8] c"no file(s) specified\00", align 1
@O_RDWR = common dso_local global i32 0, align 4
@O_RDONLY = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [22 x i8] c"error opening file %s\00", align 1
@ELF_C_RDWR = common dso_local global i32 0, align 4
@ELF_C_READ = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [21 x i8] c"elf_begin failed: %s\00", align 1
@ELF_K_ELF = common dso_local global i64 0, align 8
@ELF_K_AR = common dso_local global i64 0, align 8
@.str.9 = private unnamed_addr constant [25 x i8] c"file '%s' is an archive.\00", align 1
@.str.10 = private unnamed_addr constant [30 x i8] c"file '%s' is not an ELF file.\00", align 1
@.str.11 = private unnamed_addr constant [17 x i8] c"gelf_getehdr: %s\00", align 1
@stdout = common dso_local global i32 0, align 4
@.str.12 = private unnamed_addr constant [34 x i8] c"File '%s' is of brand '%s' (%u).\0A\00", align 1
@EI_OSABI = common dso_local global i64 0, align 8
@.str.13 = private unnamed_addr constant [30 x i8] c"ELF ABI Brand '%u' is unknown\00", align 1
@ELF_C_SET = common dso_local global i32 0, align 4
@ELF_F_LAYOUT = common dso_local global i32 0, align 4
@.str.14 = private unnamed_addr constant [23 x i8] c"elf_flagelf failed: %s\00", align 1
@.str.15 = private unnamed_addr constant [27 x i8] c"gelf_update_ehdr error: %s\00", align 1
@ELF_C_WRITE = common dso_local global i32 0, align 4
@.str.16 = private unnamed_addr constant [21 x i8] c"elf_update error: %s\00", align 1
@.str.17 = private unnamed_addr constant [16 x i8] c"%s: close error\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca %struct.TYPE_4__, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  %16 = load i32, i32* @ELFOSABI_NONE, align 4
  store i32 %16, i32* %9, align 4
  store i32 0, i32* %10, align 4
  store i32 0, i32* %12, align 4
  store i32 0, i32* %13, align 4
  store i32 0, i32* %14, align 4
  %17 = load i32, i32* @EV_CURRENT, align 4
  %18 = call i64 @elf_version(i32 %17)
  %19 = load i64, i64* @EV_NONE, align 8
  %20 = icmp eq i64 %18, %19
  br i1 %20, label %21, label %24

21:                                               ; preds = %2
  %22 = load i32, i32* @EXIT_FAILURE, align 4
  %23 = call i32 @errx(i32 %22, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0))
  br label %24

24:                                               ; preds = %21, %2
  br label %25

25:                                               ; preds = %80, %24
  %26 = load i32, i32* %4, align 4
  %27 = load i8**, i8*** %5, align 8
  %28 = load i32, i32* @brandelf_longopts, align 4
  %29 = call i32 @getopt_long(i32 %26, i8** %27, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), i32 %28, i32* null)
  store i32 %29, i32* %11, align 4
  %30 = icmp ne i32 %29, -1
  br i1 %30, label %31, label %81

31:                                               ; preds = %25
  %32 = load i32, i32* %11, align 4
  switch i32 %32, label %78 [
    i32 102, label %33
    i32 104, label %56
    i32 108, label %58
    i32 118, label %60
    i32 116, label %61
    i32 86, label %76
  ]

33:                                               ; preds = %31
  %34 = load i32, i32* %12, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %39

36:                                               ; preds = %33
  %37 = load i32, i32* @EXIT_FAILURE, align 4
  %38 = call i32 @errx(i32 %37, i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.2, i64 0, i64 0))
  br label %39

39:                                               ; preds = %36, %33
  store i32 1, i32* %13, align 4
  %40 = load i8*, i8** @optarg, align 8
  %41 = call i32 @atoi(i8* %40)
  store i32 %41, i32* %9, align 4
  %42 = load i32, i32* @errno, align 4
  %43 = load i32, i32* @ERANGE, align 4
  %44 = icmp eq i32 %42, %43
  br i1 %44, label %51, label %45

45:                                               ; preds = %39
  %46 = load i32, i32* %9, align 4
  %47 = icmp slt i32 %46, 0
  br i1 %47, label %51, label %48

48:                                               ; preds = %45
  %49 = load i32, i32* %9, align 4
  %50 = icmp sgt i32 %49, 255
  br i1 %50, label %51, label %55

51:                                               ; preds = %48, %45, %39
  %52 = load i8*, i8** @optarg, align 8
  %53 = call i32 (i8*, ...) @warnx(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.3, i64 0, i64 0), i8* %52)
  %54 = call i32 (...) @usage()
  br label %55

55:                                               ; preds = %51, %48
  br label %80

56:                                               ; preds = %31
  %57 = call i32 (...) @usage()
  br label %80

58:                                               ; preds = %31
  %59 = call i32 (...) @printelftypes()
  store i32 1, i32* %14, align 4
  br label %80

60:                                               ; preds = %31
  br label %80

61:                                               ; preds = %31
  %62 = load i32, i32* %13, align 4
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %67

64:                                               ; preds = %61
  %65 = load i32, i32* @EXIT_FAILURE, align 4
  %66 = call i32 @errx(i32 %65, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.4, i64 0, i64 0))
  br label %67

67:                                               ; preds = %64, %61
  %68 = load i8*, i8** @optarg, align 8
  %69 = call i32 @elftype(i8* %68)
  store i32 %69, i32* %9, align 4
  %70 = icmp eq i32 %69, -1
  br i1 %70, label %71, label %75

71:                                               ; preds = %67
  %72 = load i8*, i8** @optarg, align 8
  %73 = call i32 (i8*, ...) @warnx(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.5, i64 0, i64 0), i8* %72)
  %74 = call i32 (...) @usage()
  br label %75

75:                                               ; preds = %71, %67
  store i32 1, i32* %12, align 4
  br label %80

76:                                               ; preds = %31
  %77 = call i32 (...) @printversion()
  br label %80

78:                                               ; preds = %31
  %79 = call i32 (...) @usage()
  br label %80

80:                                               ; preds = %78, %76, %75, %60, %58, %56, %55
  br label %25

81:                                               ; preds = %25
  %82 = load i64, i64* @optind, align 8
  %83 = load i32, i32* %4, align 4
  %84 = sext i32 %83 to i64
  %85 = sub nsw i64 %84, %82
  %86 = trunc i64 %85 to i32
  store i32 %86, i32* %4, align 4
  %87 = load i64, i64* @optind, align 8
  %88 = load i8**, i8*** %5, align 8
  %89 = getelementptr inbounds i8*, i8** %88, i64 %87
  store i8** %89, i8*** %5, align 8
  %90 = load i32, i32* %4, align 4
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %101, label %92

92:                                               ; preds = %81
  %93 = load i32, i32* %14, align 4
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %95, label %97

95:                                               ; preds = %92
  %96 = call i32 @exit(i32 0) #3
  unreachable

97:                                               ; preds = %92
  %98 = call i32 (i8*, ...) @warnx(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.6, i64 0, i64 0))
  %99 = call i32 (...) @usage()
  br label %100

100:                                              ; preds = %97
  br label %101

101:                                              ; preds = %100, %81
  br label %102

102:                                              ; preds = %254, %101
  %103 = load i32, i32* %4, align 4
  %104 = icmp ne i32 %103, 0
  br i1 %104, label %105, label %259

105:                                              ; preds = %102
  store i32* null, i32** %7, align 8
  %106 = load i8**, i8*** %5, align 8
  %107 = getelementptr inbounds i8*, i8** %106, i64 0
  %108 = load i8*, i8** %107, align 8
  %109 = load i32, i32* %12, align 4
  %110 = icmp ne i32 %109, 0
  br i1 %110, label %114, label %111

111:                                              ; preds = %105
  %112 = load i32, i32* %13, align 4
  %113 = icmp ne i32 %112, 0
  br i1 %113, label %114, label %116

114:                                              ; preds = %111, %105
  %115 = load i32, i32* @O_RDWR, align 4
  br label %118

116:                                              ; preds = %111
  %117 = load i32, i32* @O_RDONLY, align 4
  br label %118

118:                                              ; preds = %116, %114
  %119 = phi i32 [ %115, %114 ], [ %117, %116 ]
  %120 = call i32 @open(i8* %108, i32 %119, i32 0)
  store i32 %120, i32* %15, align 4
  %121 = icmp slt i32 %120, 0
  br i1 %121, label %122, label %127

122:                                              ; preds = %118
  %123 = load i8**, i8*** %5, align 8
  %124 = getelementptr inbounds i8*, i8** %123, i64 0
  %125 = load i8*, i8** %124, align 8
  %126 = call i32 @warn(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.7, i64 0, i64 0), i8* %125)
  store i32 1, i32* %10, align 4
  br label %236

127:                                              ; preds = %118
  %128 = load i32, i32* %15, align 4
  %129 = load i32, i32* %12, align 4
  %130 = icmp ne i32 %129, 0
  br i1 %130, label %134, label %131

131:                                              ; preds = %127
  %132 = load i32, i32* %13, align 4
  %133 = icmp ne i32 %132, 0
  br i1 %133, label %134, label %136

134:                                              ; preds = %131, %127
  %135 = load i32, i32* @ELF_C_RDWR, align 4
  br label %138

136:                                              ; preds = %131
  %137 = load i32, i32* @ELF_C_READ, align 4
  br label %138

138:                                              ; preds = %136, %134
  %139 = phi i32 [ %135, %134 ], [ %137, %136 ]
  %140 = call i32* @elf_begin(i32 %128, i32 %139, i32* null)
  store i32* %140, i32** %7, align 8
  %141 = icmp eq i32* %140, null
  br i1 %141, label %142, label %145

142:                                              ; preds = %138
  %143 = call i8* @elf_errmsg(i32 -1)
  %144 = call i32 (i8*, ...) @warnx(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.8, i64 0, i64 0), i8* %143)
  store i32 1, i32* %10, align 4
  br label %236

145:                                              ; preds = %138
  %146 = load i32*, i32** %7, align 8
  %147 = call i64 @elf_kind(i32* %146)
  store i64 %147, i64* %8, align 8
  %148 = load i64, i64* @ELF_K_ELF, align 8
  %149 = icmp ne i64 %147, %148
  br i1 %149, label %150, label %165

150:                                              ; preds = %145
  %151 = load i64, i64* %8, align 8
  %152 = load i64, i64* @ELF_K_AR, align 8
  %153 = icmp eq i64 %151, %152
  br i1 %153, label %154, label %159

154:                                              ; preds = %150
  %155 = load i8**, i8*** %5, align 8
  %156 = getelementptr inbounds i8*, i8** %155, i64 0
  %157 = load i8*, i8** %156, align 8
  %158 = call i32 (i8*, ...) @warnx(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.9, i64 0, i64 0), i8* %157)
  br label %164

159:                                              ; preds = %150
  %160 = load i8**, i8*** %5, align 8
  %161 = getelementptr inbounds i8*, i8** %160, i64 0
  %162 = load i8*, i8** %161, align 8
  %163 = call i32 (i8*, ...) @warnx(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.10, i64 0, i64 0), i8* %162)
  br label %164

164:                                              ; preds = %159, %154
  store i32 1, i32* %10, align 4
  br label %236

165:                                              ; preds = %145
  %166 = load i32*, i32** %7, align 8
  %167 = call i32* @gelf_getehdr(i32* %166, %struct.TYPE_4__* %6)
  %168 = icmp eq i32* %167, null
  br i1 %168, label %169, label %172

169:                                              ; preds = %165
  %170 = call i8* @elf_errmsg(i32 -1)
  %171 = call i32 (i8*, ...) @warnx(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.11, i64 0, i64 0), i8* %170)
  store i32 1, i32* %10, align 4
  br label %236

172:                                              ; preds = %165
  %173 = load i32, i32* %12, align 4
  %174 = icmp ne i32 %173, 0
  br i1 %174, label %203, label %175

175:                                              ; preds = %172
  %176 = load i32, i32* %13, align 4
  %177 = icmp ne i32 %176, 0
  br i1 %177, label %203, label %178

178:                                              ; preds = %175
  %179 = load i32, i32* @stdout, align 4
  %180 = load i8**, i8*** %5, align 8
  %181 = getelementptr inbounds i8*, i8** %180, i64 0
  %182 = load i8*, i8** %181, align 8
  %183 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %6, i32 0, i32 0
  %184 = load i32*, i32** %183, align 8
  %185 = load i64, i64* @EI_OSABI, align 8
  %186 = getelementptr inbounds i32, i32* %184, i64 %185
  %187 = load i32, i32* %186, align 4
  %188 = call i8* @iselftype(i32 %187)
  %189 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %6, i32 0, i32 0
  %190 = load i32*, i32** %189, align 8
  %191 = load i64, i64* @EI_OSABI, align 8
  %192 = getelementptr inbounds i32, i32* %190, i64 %191
  %193 = load i32, i32* %192, align 4
  %194 = call i32 @fprintf(i32 %179, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.12, i64 0, i64 0), i8* %182, i8* %188, i32 %193)
  %195 = load i32, i32* %9, align 4
  %196 = call i8* @iselftype(i32 %195)
  %197 = icmp ne i8* %196, null
  br i1 %197, label %202, label %198

198:                                              ; preds = %178
  %199 = load i32, i32* %9, align 4
  %200 = call i32 (i8*, ...) @warnx(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.13, i64 0, i64 0), i32 %199)
  %201 = call i32 (...) @printelftypes()
  br label %202

202:                                              ; preds = %198, %178
  br label %235

203:                                              ; preds = %175, %172
  %204 = load i32*, i32** %7, align 8
  %205 = load i32, i32* @ELF_C_SET, align 4
  %206 = load i32, i32* @ELF_F_LAYOUT, align 4
  %207 = call i64 @elf_flagelf(i32* %204, i32 %205, i32 %206)
  %208 = icmp eq i64 %207, 0
  br i1 %208, label %209, label %212

209:                                              ; preds = %203
  %210 = call i8* @elf_errmsg(i32 -1)
  %211 = call i32 (i8*, ...) @warnx(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.14, i64 0, i64 0), i8* %210)
  store i32 1, i32* %10, align 4
  br label %236

212:                                              ; preds = %203
  %213 = load i32, i32* %9, align 4
  %214 = trunc i32 %213 to i8
  %215 = zext i8 %214 to i32
  %216 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %6, i32 0, i32 0
  %217 = load i32*, i32** %216, align 8
  %218 = load i64, i64* @EI_OSABI, align 8
  %219 = getelementptr inbounds i32, i32* %217, i64 %218
  store i32 %215, i32* %219, align 4
  %220 = load i32*, i32** %7, align 8
  %221 = call i64 @gelf_update_ehdr(i32* %220, %struct.TYPE_4__* %6)
  %222 = icmp eq i64 %221, 0
  br i1 %222, label %223, label %226

223:                                              ; preds = %212
  %224 = call i8* @elf_errmsg(i32 -1)
  %225 = call i32 (i8*, ...) @warnx(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.15, i64 0, i64 0), i8* %224)
  store i32 1, i32* %10, align 4
  br label %236

226:                                              ; preds = %212
  %227 = load i32*, i32** %7, align 8
  %228 = load i32, i32* @ELF_C_WRITE, align 4
  %229 = call i32 @elf_update(i32* %227, i32 %228)
  %230 = icmp eq i32 %229, -1
  br i1 %230, label %231, label %234

231:                                              ; preds = %226
  %232 = call i8* @elf_errmsg(i32 -1)
  %233 = call i32 (i8*, ...) @warnx(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.16, i64 0, i64 0), i8* %232)
  store i32 1, i32* %10, align 4
  br label %236

234:                                              ; preds = %226
  br label %235

235:                                              ; preds = %234, %202
  br label %236

236:                                              ; preds = %235, %231, %223, %209, %169, %164, %142, %122
  %237 = load i32*, i32** %7, align 8
  %238 = icmp ne i32* %237, null
  br i1 %238, label %239, label %242

239:                                              ; preds = %236
  %240 = load i32*, i32** %7, align 8
  %241 = call i32 @elf_end(i32* %240)
  br label %242

242:                                              ; preds = %239, %236
  %243 = load i32, i32* %15, align 4
  %244 = icmp sge i32 %243, 0
  br i1 %244, label %245, label %254

245:                                              ; preds = %242
  %246 = load i32, i32* %15, align 4
  %247 = call i32 @close(i32 %246)
  %248 = icmp eq i32 %247, -1
  br i1 %248, label %249, label %254

249:                                              ; preds = %245
  %250 = load i8**, i8*** %5, align 8
  %251 = getelementptr inbounds i8*, i8** %250, i64 0
  %252 = load i8*, i8** %251, align 8
  %253 = call i32 (i8*, ...) @warnx(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.17, i64 0, i64 0), i8* %252)
  store i32 1, i32* %10, align 4
  br label %254

254:                                              ; preds = %249, %245, %242
  %255 = load i32, i32* %4, align 4
  %256 = add nsw i32 %255, -1
  store i32 %256, i32* %4, align 4
  %257 = load i8**, i8*** %5, align 8
  %258 = getelementptr inbounds i8*, i8** %257, i32 1
  store i8** %258, i8*** %5, align 8
  br label %102

259:                                              ; preds = %102
  %260 = load i32, i32* %10, align 4
  ret i32 %260
}

declare dso_local i64 @elf_version(i32) #1

declare dso_local i32 @errx(i32, i8*) #1

declare dso_local i32 @getopt_long(i32, i8**, i8*, i32, i32*) #1

declare dso_local i32 @atoi(i8*) #1

declare dso_local i32 @warnx(i8*, ...) #1

declare dso_local i32 @usage(...) #1

declare dso_local i32 @printelftypes(...) #1

declare dso_local i32 @elftype(i8*) #1

declare dso_local i32 @printversion(...) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

declare dso_local i32 @open(i8*, i32, i32) #1

declare dso_local i32 @warn(i8*, i8*) #1

declare dso_local i32* @elf_begin(i32, i32, i32*) #1

declare dso_local i8* @elf_errmsg(i32) #1

declare dso_local i64 @elf_kind(i32*) #1

declare dso_local i32* @gelf_getehdr(i32*, %struct.TYPE_4__*) #1

declare dso_local i32 @fprintf(i32, i8*, i8*, i8*, i32) #1

declare dso_local i8* @iselftype(i32) #1

declare dso_local i64 @elf_flagelf(i32*, i32, i32) #1

declare dso_local i64 @gelf_update_ehdr(i32*, %struct.TYPE_4__*) #1

declare dso_local i32 @elf_update(i32*, i32) #1

declare dso_local i32 @elf_end(i32*) #1

declare dso_local i32 @close(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

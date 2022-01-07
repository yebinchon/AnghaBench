; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/elftoolchain/elfcopy/extr_pe.c_create_pe.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/elftoolchain/elfcopy/extr_pe.c_create_pe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.elfcopy = type { i64, i32 }
%struct.TYPE_20__ = type { i32 }
%struct.TYPE_19__ = type { i64 }
%struct.TYPE_18__ = type { i64, i32, i32, i64, i32 }
%struct.TYPE_16__ = type { i32, i32, i32, i8*, i32, i64, i32, i32, i32, i64, i8*, i8*, i8*, i32, i8*, i32 }
%struct.TYPE_17__ = type { i32, i32*, i8*, i64 }

@ETF_EFI = common dso_local global i64 0, align 8
@PE_O_PE32P = common dso_local global i64 0, align 8
@PE_O_PE32 = common dso_local global i64 0, align 8
@ELF_C_READ = common dso_local global i32 0, align 4
@EXIT_FAILURE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"elf_begin() failed: %s\00", align 1
@.str.1 = private unnamed_addr constant [26 x i8] c"gelf_getehdr() failed: %s\00", align 1
@.str.2 = private unnamed_addr constant [29 x i8] c"elf_getshstrndx() failed: %s\00", align 1
@PE_C_WRITE = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [17 x i8] c"pe_init() failed\00", align 1
@IMAGE_FILE_MACHINE_I386 = common dso_local global i32 0, align 4
@IMAGE_FILE_MACHINE_AMD64 = common dso_local global i32 0, align 4
@IMAGE_FILE_MACHINE_UNKNOWN = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [16 x i8] c"elftc_timestamp\00", align 1
@.str.5 = private unnamed_addr constant [31 x i8] c"pe_update_coff_header() failed\00", align 1
@IMAGE_SUBSYSTEM_EFI_APPLICATION = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [26 x i8] c"gelf_getshdr() failed: %s\00", align 1
@.str.7 = private unnamed_addr constant [24 x i8] c"elf_strptr() failed: %s\00", align 1
@.str.8 = private unnamed_addr constant [10 x i8] c".shstrtab\00", align 1
@.str.9 = private unnamed_addr constant [8 x i8] c".symtab\00", align 1
@.str.10 = private unnamed_addr constant [8 x i8] c".strtab\00", align 1
@.str.11 = private unnamed_addr constant [25 x i8] c"elf_getdata() failed: %s\00", align 1
@.str.12 = private unnamed_addr constant [6 x i8] c".text\00", align 1
@.str.13 = private unnamed_addr constant [6 x i8] c".data\00", align 1
@SHT_NOBITS = common dso_local global i64 0, align 8
@SHF_ALLOC = common dso_local global i32 0, align 4
@.str.14 = private unnamed_addr constant [19 x i8] c"pe_newscn() failed\00", align 1
@IMAGE_SCN_CNT_UNINITIALIZED_DATA = common dso_local global i32 0, align 4
@IMAGE_SCN_MEM_READ = common dso_local global i32 0, align 4
@SHF_WRITE = common dso_local global i32 0, align 4
@IMAGE_SCN_MEM_WRITE = common dso_local global i32 0, align 4
@SHF_EXECINSTR = common dso_local global i32 0, align 4
@IMAGE_SCN_MEM_EXECUTE = common dso_local global i32 0, align 4
@IMAGE_SCN_CNT_CODE = common dso_local global i32 0, align 4
@IMAGE_SCN_CNT_INITIALIZED_DATA = common dso_local global i32 0, align 4
@.str.15 = private unnamed_addr constant [7 x i8] c".reloc\00", align 1
@IMAGE_SCN_MEM_DISCARDABLE = common dso_local global i32 0, align 4
@.str.16 = private unnamed_addr constant [34 x i8] c"pe_update_section_header() failed\00", align 1
@.str.17 = private unnamed_addr constant [22 x i8] c"pe_newbuffer() failed\00", align 1
@.str.18 = private unnamed_addr constant [14 x i8] c"calloc failed\00", align 1
@.str.19 = private unnamed_addr constant [25 x i8] c"elf_nextscn() failed: %s\00", align 1
@.str.20 = private unnamed_addr constant [30 x i8] c"pe_update_opt_header() failed\00", align 1
@.str.21 = private unnamed_addr constant [19 x i8] c"pe_update() failed\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @create_pe(%struct.elfcopy* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.elfcopy*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca %struct.TYPE_20__*, align 8
  %10 = alloca %struct.TYPE_19__, align 8
  %11 = alloca %struct.TYPE_18__, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca %struct.TYPE_16__, align 8
  %15 = alloca %struct.TYPE_16__, align 8
  %16 = alloca %struct.TYPE_16__, align 8
  %17 = alloca i64, align 8
  %18 = alloca %struct.TYPE_17__*, align 8
  %19 = alloca i8*, align 8
  %20 = alloca i64, align 8
  %21 = alloca i64, align 8
  %22 = alloca i32, align 4
  store %struct.elfcopy* %0, %struct.elfcopy** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %23 = load %struct.elfcopy*, %struct.elfcopy** %4, align 8
  %24 = getelementptr inbounds %struct.elfcopy, %struct.elfcopy* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = load i64, i64* @ETF_EFI, align 8
  %27 = icmp eq i64 %25, %26
  br i1 %27, label %33, label %28

28:                                               ; preds = %3
  %29 = load %struct.elfcopy*, %struct.elfcopy** %4, align 8
  %30 = getelementptr inbounds %struct.elfcopy, %struct.elfcopy* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 8
  %32 = icmp eq i32 %31, 128
  br i1 %32, label %33, label %35

33:                                               ; preds = %28, %3
  %34 = load i64, i64* @PE_O_PE32P, align 8
  store i64 %34, i64* %17, align 8
  br label %37

35:                                               ; preds = %28
  %36 = load i64, i64* @PE_O_PE32, align 8
  store i64 %36, i64* %17, align 8
  br label %37

37:                                               ; preds = %35, %33
  %38 = load i32, i32* %5, align 4
  %39 = load i32, i32* @ELF_C_READ, align 4
  %40 = call i32* @elf_begin(i32 %38, i32 %39, i32* null)
  store i32* %40, i32** %7, align 8
  %41 = icmp eq i32* %40, null
  br i1 %41, label %42, label %46

42:                                               ; preds = %37
  %43 = load i32, i32* @EXIT_FAILURE, align 4
  %44 = call i32 @elf_errmsg(i32 -1)
  %45 = call i32 @errx(i32 %43, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 %44)
  br label %46

46:                                               ; preds = %42, %37
  %47 = load i32*, i32** %7, align 8
  %48 = call i32* @gelf_getehdr(i32* %47, %struct.TYPE_19__* %10)
  %49 = icmp eq i32* %48, null
  br i1 %49, label %50, label %54

50:                                               ; preds = %46
  %51 = load i32, i32* @EXIT_FAILURE, align 4
  %52 = call i32 @elf_errmsg(i32 -1)
  %53 = call i32 @errx(i32 %51, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0), i32 %52)
  br label %54

54:                                               ; preds = %50, %46
  %55 = load i32*, i32** %7, align 8
  %56 = call i64 @elf_getshstrndx(i32* %55, i64* %20)
  %57 = icmp eq i64 %56, 0
  br i1 %57, label %58, label %62

58:                                               ; preds = %54
  %59 = load i32, i32* @EXIT_FAILURE, align 4
  %60 = call i32 @elf_errmsg(i32 -1)
  %61 = call i32 @errx(i32 %59, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i64 0, i64 0), i32 %60)
  br label %62

62:                                               ; preds = %58, %54
  %63 = load i32, i32* %6, align 4
  %64 = load i32, i32* @PE_C_WRITE, align 4
  %65 = load i64, i64* %17, align 8
  %66 = call i32* @pe_init(i32 %63, i32 %64, i64 %65)
  store i32* %66, i32** %12, align 8
  %67 = icmp eq i32* %66, null
  br i1 %67, label %68, label %71

68:                                               ; preds = %62
  %69 = load i32, i32* @EXIT_FAILURE, align 4
  %70 = call i32 @err(i32 %69, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.3, i64 0, i64 0))
  br label %71

71:                                               ; preds = %68, %62
  %72 = call i32 @memset(%struct.TYPE_16__* %15, i32 0, i32 112)
  %73 = load %struct.elfcopy*, %struct.elfcopy** %4, align 8
  %74 = getelementptr inbounds %struct.elfcopy, %struct.elfcopy* %73, i32 0, i32 1
  %75 = load i32, i32* %74, align 8
  switch i32 %75, label %82 [
    i32 129, label %76
    i32 128, label %79
  ]

76:                                               ; preds = %71
  %77 = load i32, i32* @IMAGE_FILE_MACHINE_I386, align 4
  %78 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %15, i32 0, i32 15
  store i32 %77, i32* %78, align 8
  br label %85

79:                                               ; preds = %71
  %80 = load i32, i32* @IMAGE_FILE_MACHINE_AMD64, align 4
  %81 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %15, i32 0, i32 15
  store i32 %80, i32* %81, align 8
  br label %85

82:                                               ; preds = %71
  %83 = load i32, i32* @IMAGE_FILE_MACHINE_UNKNOWN, align 4
  %84 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %15, i32 0, i32 15
  store i32 %83, i32* %84, align 8
  br label %85

85:                                               ; preds = %82, %79, %76
  %86 = call i64 @elftc_timestamp(i64* %21)
  %87 = icmp ne i64 %86, 0
  br i1 %87, label %88, label %91

88:                                               ; preds = %85
  %89 = load i32, i32* @EXIT_FAILURE, align 4
  %90 = call i32 @err(i32 %89, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.4, i64 0, i64 0))
  br label %91

91:                                               ; preds = %88, %85
  %92 = load i64, i64* %21, align 8
  %93 = inttoptr i64 %92 to i8*
  %94 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %15, i32 0, i32 14
  store i8* %93, i8** %94, align 8
  %95 = load i32*, i32** %12, align 8
  %96 = call i64 @pe_update_coff_header(i32* %95, %struct.TYPE_16__* %15)
  %97 = icmp slt i64 %96, 0
  br i1 %97, label %98, label %101

98:                                               ; preds = %91
  %99 = load i32, i32* @EXIT_FAILURE, align 4
  %100 = call i32 @err(i32 %99, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.5, i64 0, i64 0))
  br label %101

101:                                              ; preds = %98, %91
  %102 = call i32 @memset(%struct.TYPE_16__* %16, i32 0, i32 112)
  %103 = load %struct.elfcopy*, %struct.elfcopy** %4, align 8
  %104 = getelementptr inbounds %struct.elfcopy, %struct.elfcopy* %103, i32 0, i32 0
  %105 = load i64, i64* %104, align 8
  %106 = load i64, i64* @ETF_EFI, align 8
  %107 = icmp eq i64 %105, %106
  br i1 %107, label %108, label %111

108:                                              ; preds = %101
  %109 = load i32, i32* @IMAGE_SUBSYSTEM_EFI_APPLICATION, align 4
  %110 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %16, i32 0, i32 13
  store i32 %109, i32* %110, align 8
  br label %111

111:                                              ; preds = %108, %101
  %112 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %10, i32 0, i32 0
  %113 = load i64, i64* %112, align 8
  %114 = inttoptr i64 %113 to i8*
  %115 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %16, i32 0, i32 12
  store i8* %114, i8** %115, align 8
  %116 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %16, i32 0, i32 0
  store i32 4096, i32* %116, align 8
  %117 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %16, i32 0, i32 1
  store i32 512, i32* %117, align 4
  store i32* null, i32** %8, align 8
  br label %118

118:                                              ; preds = %360, %348, %322, %316, %229, %159, %154, %138, %127, %111
  %119 = load i32*, i32** %7, align 8
  %120 = load i32*, i32** %8, align 8
  %121 = call i32* @elf_nextscn(i32* %119, i32* %120)
  store i32* %121, i32** %8, align 8
  %122 = icmp ne i32* %121, null
  br i1 %122, label %123, label %361

123:                                              ; preds = %118
  %124 = load i32*, i32** %8, align 8
  %125 = call i32* @gelf_getshdr(i32* %124, %struct.TYPE_18__* %11)
  %126 = icmp eq i32* %125, null
  br i1 %126, label %127, label %131

127:                                              ; preds = %123
  %128 = call i32 @elf_errmsg(i32 -1)
  %129 = call i32 @warnx(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.6, i64 0, i64 0), i32 %128)
  %130 = call i32 (...) @elf_errno()
  br label %118

131:                                              ; preds = %123
  %132 = load i32*, i32** %7, align 8
  %133 = load i64, i64* %20, align 8
  %134 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %11, i32 0, i32 4
  %135 = load i32, i32* %134, align 8
  %136 = call i8* @elf_strptr(i32* %132, i64 %133, i32 %135)
  store i8* %136, i8** %19, align 8
  %137 = icmp eq i8* %136, null
  br i1 %137, label %138, label %142

138:                                              ; preds = %131
  %139 = call i32 @elf_errmsg(i32 -1)
  %140 = call i32 @warnx(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.7, i64 0, i64 0), i32 %139)
  %141 = call i32 (...) @elf_errno()
  br label %118

142:                                              ; preds = %131
  %143 = load i8*, i8** %19, align 8
  %144 = call i64 @strcmp(i8* %143, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.8, i64 0, i64 0))
  %145 = icmp eq i64 %144, 0
  br i1 %145, label %154, label %146

146:                                              ; preds = %142
  %147 = load i8*, i8** %19, align 8
  %148 = call i64 @strcmp(i8* %147, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.9, i64 0, i64 0))
  %149 = icmp eq i64 %148, 0
  br i1 %149, label %154, label %150

150:                                              ; preds = %146
  %151 = load i8*, i8** %19, align 8
  %152 = call i64 @strcmp(i8* %151, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.10, i64 0, i64 0))
  %153 = icmp eq i64 %152, 0
  br i1 %153, label %154, label %155

154:                                              ; preds = %150, %146, %142
  br label %118

155:                                              ; preds = %150
  %156 = load i32*, i32** %8, align 8
  %157 = call %struct.TYPE_20__* @elf_getdata(i32* %156, i32* null)
  store %struct.TYPE_20__* %157, %struct.TYPE_20__** %9, align 8
  %158 = icmp eq %struct.TYPE_20__* %157, null
  br i1 %158, label %159, label %163

159:                                              ; preds = %155
  %160 = call i32 @elf_errmsg(i32 -1)
  %161 = call i32 @warnx(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.11, i64 0, i64 0), i32 %160)
  %162 = call i32 (...) @elf_errno()
  br label %118

163:                                              ; preds = %155
  %164 = load i8*, i8** %19, align 8
  %165 = call i64 @strcmp(i8* %164, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.12, i64 0, i64 0))
  %166 = icmp eq i64 %165, 0
  br i1 %166, label %167, label %178

167:                                              ; preds = %163
  %168 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %11, i32 0, i32 3
  %169 = load i64, i64* %168, align 8
  %170 = inttoptr i64 %169 to i8*
  %171 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %16, i32 0, i32 11
  store i8* %170, i8** %171, align 8
  %172 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %11, i32 0, i32 2
  %173 = load i32, i32* %172, align 4
  %174 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %16, i32 0, i32 1
  %175 = load i32, i32* %174, align 4
  %176 = call i8* @roundup(i32 %173, i32 %175)
  %177 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %16, i32 0, i32 10
  store i8* %176, i8** %177, align 8
  br label %225

178:                                              ; preds = %163
  %179 = load i64, i64* %17, align 8
  %180 = load i64, i64* @PE_O_PE32, align 8
  %181 = icmp eq i64 %179, %180
  br i1 %181, label %182, label %190

182:                                              ; preds = %178
  %183 = load i8*, i8** %19, align 8
  %184 = call i64 @strcmp(i8* %183, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.13, i64 0, i64 0))
  %185 = icmp eq i64 %184, 0
  br i1 %185, label %186, label %190

186:                                              ; preds = %182
  %187 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %11, i32 0, i32 3
  %188 = load i64, i64* %187, align 8
  %189 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %16, i32 0, i32 9
  store i64 %188, i64* %189, align 8
  br label %190

190:                                              ; preds = %186, %182, %178
  %191 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %11, i32 0, i32 0
  %192 = load i64, i64* %191, align 8
  %193 = load i64, i64* @SHT_NOBITS, align 8
  %194 = icmp eq i64 %192, %193
  br i1 %194, label %195, label %206

195:                                              ; preds = %190
  %196 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %11, i32 0, i32 2
  %197 = load i32, i32* %196, align 4
  %198 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %16, i32 0, i32 1
  %199 = load i32, i32* %198, align 4
  %200 = call i8* @roundup(i32 %197, i32 %199)
  %201 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %16, i32 0, i32 8
  %202 = load i32, i32* %201, align 8
  %203 = sext i32 %202 to i64
  %204 = getelementptr i8, i8* %200, i64 %203
  %205 = ptrtoint i8* %204 to i32
  store i32 %205, i32* %201, align 8
  br label %224

206:                                              ; preds = %190
  %207 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %11, i32 0, i32 1
  %208 = load i32, i32* %207, align 8
  %209 = load i32, i32* @SHF_ALLOC, align 4
  %210 = and i32 %208, %209
  %211 = icmp ne i32 %210, 0
  br i1 %211, label %212, label %223

212:                                              ; preds = %206
  %213 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %11, i32 0, i32 2
  %214 = load i32, i32* %213, align 4
  %215 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %16, i32 0, i32 1
  %216 = load i32, i32* %215, align 4
  %217 = call i8* @roundup(i32 %214, i32 %216)
  %218 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %16, i32 0, i32 7
  %219 = load i32, i32* %218, align 4
  %220 = sext i32 %219 to i64
  %221 = getelementptr i8, i8* %217, i64 %220
  %222 = ptrtoint i8* %221 to i32
  store i32 %222, i32* %218, align 4
  br label %223

223:                                              ; preds = %212, %206
  br label %224

224:                                              ; preds = %223, %195
  br label %225

225:                                              ; preds = %224, %167
  %226 = load i32*, i32** %12, align 8
  %227 = call i32* @pe_newscn(i32* %226)
  store i32* %227, i32** %13, align 8
  %228 = icmp eq i32* %227, null
  br i1 %228, label %229, label %231

229:                                              ; preds = %225
  %230 = call i32 @warn(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.14, i64 0, i64 0))
  br label %118

231:                                              ; preds = %225
  %232 = call i32 @memset(%struct.TYPE_16__* %14, i32 0, i32 112)
  %233 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %14, i32 0, i32 6
  %234 = load i32, i32* %233, align 8
  %235 = load i8*, i8** %19, align 8
  %236 = call i32 @strncpy(i32 %234, i8* %235, i32 4)
  %237 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %11, i32 0, i32 3
  %238 = load i64, i64* %237, align 8
  %239 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %14, i32 0, i32 5
  store i64 %238, i64* %239, align 8
  %240 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %11, i32 0, i32 2
  %241 = load i32, i32* %240, align 4
  %242 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %14, i32 0, i32 4
  store i32 %241, i32* %242, align 8
  %243 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %11, i32 0, i32 0
  %244 = load i64, i64* %243, align 8
  %245 = load i64, i64* @SHT_NOBITS, align 8
  %246 = icmp ne i64 %244, %245
  br i1 %246, label %247, label %254

247:                                              ; preds = %231
  %248 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %11, i32 0, i32 2
  %249 = load i32, i32* %248, align 4
  %250 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %16, i32 0, i32 1
  %251 = load i32, i32* %250, align 4
  %252 = call i8* @roundup(i32 %249, i32 %251)
  %253 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %14, i32 0, i32 3
  store i8* %252, i8** %253, align 8
  br label %259

254:                                              ; preds = %231
  %255 = load i32, i32* @IMAGE_SCN_CNT_UNINITIALIZED_DATA, align 4
  %256 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %14, i32 0, i32 2
  %257 = load i32, i32* %256, align 8
  %258 = or i32 %257, %255
  store i32 %258, i32* %256, align 8
  br label %259

259:                                              ; preds = %254, %247
  %260 = load i32, i32* @IMAGE_SCN_MEM_READ, align 4
  %261 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %14, i32 0, i32 2
  %262 = load i32, i32* %261, align 8
  %263 = or i32 %262, %260
  store i32 %263, i32* %261, align 8
  %264 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %11, i32 0, i32 1
  %265 = load i32, i32* %264, align 8
  %266 = load i32, i32* @SHF_WRITE, align 4
  %267 = and i32 %265, %266
  %268 = icmp ne i32 %267, 0
  br i1 %268, label %269, label %274

269:                                              ; preds = %259
  %270 = load i32, i32* @IMAGE_SCN_MEM_WRITE, align 4
  %271 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %14, i32 0, i32 2
  %272 = load i32, i32* %271, align 8
  %273 = or i32 %272, %270
  store i32 %273, i32* %271, align 8
  br label %274

274:                                              ; preds = %269, %259
  %275 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %11, i32 0, i32 1
  %276 = load i32, i32* %275, align 8
  %277 = load i32, i32* @SHF_EXECINSTR, align 4
  %278 = and i32 %276, %277
  %279 = icmp ne i32 %278, 0
  br i1 %279, label %280, label %287

280:                                              ; preds = %274
  %281 = load i32, i32* @IMAGE_SCN_MEM_EXECUTE, align 4
  %282 = load i32, i32* @IMAGE_SCN_CNT_CODE, align 4
  %283 = or i32 %281, %282
  %284 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %14, i32 0, i32 2
  %285 = load i32, i32* %284, align 8
  %286 = or i32 %285, %283
  store i32 %286, i32* %284, align 8
  br label %287

287:                                              ; preds = %280, %274
  %288 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %11, i32 0, i32 1
  %289 = load i32, i32* %288, align 8
  %290 = load i32, i32* @SHF_ALLOC, align 4
  %291 = and i32 %289, %290
  %292 = icmp ne i32 %291, 0
  br i1 %292, label %293, label %303

293:                                              ; preds = %287
  %294 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %14, i32 0, i32 2
  %295 = load i32, i32* %294, align 8
  %296 = and i32 %295, 240
  %297 = icmp eq i32 %296, 0
  br i1 %297, label %298, label %303

298:                                              ; preds = %293
  %299 = load i32, i32* @IMAGE_SCN_CNT_INITIALIZED_DATA, align 4
  %300 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %14, i32 0, i32 2
  %301 = load i32, i32* %300, align 8
  %302 = or i32 %301, %299
  store i32 %302, i32* %300, align 8
  br label %303

303:                                              ; preds = %298, %293, %287
  %304 = load i8*, i8** %19, align 8
  %305 = call i64 @strcmp(i8* %304, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.15, i64 0, i64 0))
  %306 = icmp eq i64 %305, 0
  br i1 %306, label %307, label %312

307:                                              ; preds = %303
  %308 = load i32, i32* @IMAGE_SCN_MEM_DISCARDABLE, align 4
  %309 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %14, i32 0, i32 2
  %310 = load i32, i32* %309, align 8
  %311 = or i32 %310, %308
  store i32 %311, i32* %309, align 8
  br label %312

312:                                              ; preds = %307, %303
  %313 = load i32*, i32** %13, align 8
  %314 = call i64 @pe_update_section_header(i32* %313, %struct.TYPE_16__* %14)
  %315 = icmp slt i64 %314, 0
  br i1 %315, label %316, label %318

316:                                              ; preds = %312
  %317 = call i32 @warn(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.16, i64 0, i64 0))
  br label %118

318:                                              ; preds = %312
  %319 = load i32*, i32** %13, align 8
  %320 = call %struct.TYPE_17__* @pe_newbuffer(i32* %319)
  store %struct.TYPE_17__* %320, %struct.TYPE_17__** %18, align 8
  %321 = icmp eq %struct.TYPE_17__* %320, null
  br i1 %321, label %322, label %324

322:                                              ; preds = %318
  %323 = call i32 @warn(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.17, i64 0, i64 0))
  br label %118

324:                                              ; preds = %318
  %325 = load %struct.TYPE_17__*, %struct.TYPE_17__** %18, align 8
  %326 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %325, i32 0, i32 0
  store i32 1, i32* %326, align 8
  %327 = load %struct.TYPE_17__*, %struct.TYPE_17__** %18, align 8
  %328 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %327, i32 0, i32 3
  store i64 0, i64* %328, align 8
  %329 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %11, i32 0, i32 0
  %330 = load i64, i64* %329, align 8
  %331 = load i64, i64* @SHT_NOBITS, align 8
  %332 = icmp ne i64 %330, %331
  br i1 %332, label %333, label %360

333:                                              ; preds = %324
  %334 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %11, i32 0, i32 2
  %335 = load i32, i32* %334, align 4
  %336 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %16, i32 0, i32 1
  %337 = load i32, i32* %336, align 4
  %338 = call i8* @roundup(i32 %335, i32 %337)
  %339 = load %struct.TYPE_17__*, %struct.TYPE_17__** %18, align 8
  %340 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %339, i32 0, i32 2
  store i8* %338, i8** %340, align 8
  %341 = load %struct.TYPE_17__*, %struct.TYPE_17__** %18, align 8
  %342 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %341, i32 0, i32 2
  %343 = load i8*, i8** %342, align 8
  %344 = call i32* @calloc(i32 1, i8* %343)
  %345 = load %struct.TYPE_17__*, %struct.TYPE_17__** %18, align 8
  %346 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %345, i32 0, i32 1
  store i32* %344, i32** %346, align 8
  %347 = icmp eq i32* %344, null
  br i1 %347, label %348, label %350

348:                                              ; preds = %333
  %349 = call i32 @warn(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.18, i64 0, i64 0))
  br label %118

350:                                              ; preds = %333
  %351 = load %struct.TYPE_17__*, %struct.TYPE_17__** %18, align 8
  %352 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %351, i32 0, i32 1
  %353 = load i32*, i32** %352, align 8
  %354 = load %struct.TYPE_20__*, %struct.TYPE_20__** %9, align 8
  %355 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %354, i32 0, i32 0
  %356 = load i32, i32* %355, align 4
  %357 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %11, i32 0, i32 2
  %358 = load i32, i32* %357, align 4
  %359 = call i32 @memcpy(i32* %353, i32 %356, i32 %358)
  br label %360

360:                                              ; preds = %350, %324
  br label %118

361:                                              ; preds = %118
  %362 = call i32 (...) @elf_errno()
  store i32 %362, i32* %22, align 4
  %363 = load i32, i32* %22, align 4
  %364 = icmp ne i32 %363, 0
  br i1 %364, label %365, label %369

365:                                              ; preds = %361
  %366 = load i32, i32* %22, align 4
  %367 = call i32 @elf_errmsg(i32 %366)
  %368 = call i32 @warnx(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.19, i64 0, i64 0), i32 %367)
  br label %369

369:                                              ; preds = %365, %361
  %370 = load i32*, i32** %12, align 8
  %371 = call i64 @pe_update_opt_header(i32* %370, %struct.TYPE_16__* %16)
  %372 = icmp slt i64 %371, 0
  br i1 %372, label %373, label %376

373:                                              ; preds = %369
  %374 = load i32, i32* @EXIT_FAILURE, align 4
  %375 = call i32 @err(i32 %374, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.20, i64 0, i64 0))
  br label %376

376:                                              ; preds = %373, %369
  %377 = load i32*, i32** %12, align 8
  %378 = call i64 @pe_update(i32* %377)
  %379 = icmp slt i64 %378, 0
  br i1 %379, label %380, label %383

380:                                              ; preds = %376
  %381 = load i32, i32* @EXIT_FAILURE, align 4
  %382 = call i32 @err(i32 %381, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.21, i64 0, i64 0))
  br label %383

383:                                              ; preds = %380, %376
  %384 = load i32*, i32** %12, align 8
  %385 = call i32 @pe_finish(i32* %384)
  %386 = load i32*, i32** %7, align 8
  %387 = call i32 @elf_end(i32* %386)
  ret void
}

declare dso_local i32* @elf_begin(i32, i32, i32*) #1

declare dso_local i32 @errx(i32, i8*, i32) #1

declare dso_local i32 @elf_errmsg(i32) #1

declare dso_local i32* @gelf_getehdr(i32*, %struct.TYPE_19__*) #1

declare dso_local i64 @elf_getshstrndx(i32*, i64*) #1

declare dso_local i32* @pe_init(i32, i32, i64) #1

declare dso_local i32 @err(i32, i8*) #1

declare dso_local i32 @memset(%struct.TYPE_16__*, i32, i32) #1

declare dso_local i64 @elftc_timestamp(i64*) #1

declare dso_local i64 @pe_update_coff_header(i32*, %struct.TYPE_16__*) #1

declare dso_local i32* @elf_nextscn(i32*, i32*) #1

declare dso_local i32* @gelf_getshdr(i32*, %struct.TYPE_18__*) #1

declare dso_local i32 @warnx(i8*, i32) #1

declare dso_local i32 @elf_errno(...) #1

declare dso_local i8* @elf_strptr(i32*, i64, i32) #1

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local %struct.TYPE_20__* @elf_getdata(i32*, i32*) #1

declare dso_local i8* @roundup(i32, i32) #1

declare dso_local i32* @pe_newscn(i32*) #1

declare dso_local i32 @warn(i8*) #1

declare dso_local i32 @strncpy(i32, i8*, i32) #1

declare dso_local i64 @pe_update_section_header(i32*, %struct.TYPE_16__*) #1

declare dso_local %struct.TYPE_17__* @pe_newbuffer(i32*) #1

declare dso_local i32* @calloc(i32, i8*) #1

declare dso_local i32 @memcpy(i32*, i32, i32) #1

declare dso_local i64 @pe_update_opt_header(i32*, %struct.TYPE_16__*) #1

declare dso_local i64 @pe_update(i32*) #1

declare dso_local i32 @pe_finish(i32*) #1

declare dso_local i32 @elf_end(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

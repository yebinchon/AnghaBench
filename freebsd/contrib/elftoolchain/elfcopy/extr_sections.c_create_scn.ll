; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/elftoolchain/elfcopy/extr_sections.c_create_scn.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/elftoolchain/elfcopy/extr_sections.c_create_scn.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.elfcopy = type { i32, i64, i32, %struct.section*, %struct.section*, i64*, i32, i32*, %struct.section*, i32 }
%struct.section = type { i32, i32, i32, i8*, i64, i32, i32*, i64, i32, i64, i32* }
%struct.TYPE_3__ = type { i64, i64, i32, i32, i64, i32, i64, i32 }

@EXIT_FAILURE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [14 x i8] c"calloc failed\00", align 1
@ELF_T_EHDR = common dso_local global i32 0, align 4
@EV_CURRENT = common dso_local global i32 0, align 4
@ELF_T_PHDR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [27 x i8] c"elf_getshstrndx failed: %s\00", align 1
@.str.2 = private unnamed_addr constant [24 x i8] c"gelf_getshdr failed: %s\00", align 1
@.str.3 = private unnamed_addr constant [22 x i8] c"elf_strptr failed: %s\00", align 1
@SHT_REL = common dso_local global i64 0, align 8
@SHT_RELA = common dso_local global i64 0, align 8
@SHT_GROUP = common dso_local global i64 0, align 8
@STRIP_ALL = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [10 x i8] c".shstrtab\00", align 1
@SF_LOAD = common dso_local global i32 0, align 4
@SF_ALLOC = common dso_local global i32 0, align 4
@RELOCATABLE = common dso_local global i32 0, align 4
@SHF_ALLOC = common dso_local global i32 0, align 4
@SHN_UNDEF = common dso_local global i64 0, align 8
@.str.5 = private unnamed_addr constant [8 x i8] c".symtab\00", align 1
@.str.6 = private unnamed_addr constant [8 x i8] c".strtab\00", align 1
@SEC_ADD = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [22 x i8] c"elf_newscn failed: %s\00", align 1
@.str.8 = private unnamed_addr constant [22 x i8] c"elf_ndxscn failed: %s\00", align 1
@STRIP_NONDEBUG = common dso_local global i64 0, align 8
@SHF_GROUP = common dso_local global i32 0, align 4
@SHT_NOTE = common dso_local global i64 0, align 8
@SHT_NOBITS = common dso_local global i64 0, align 8
@SYMTAB_INTACT = common dso_local global i32 0, align 4
@SYMTAB_EXIST = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [23 x i8] c"elf_nextscn failed: %s\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @create_scn(%struct.elfcopy* %0) #0 {
  %2 = alloca %struct.elfcopy*, align 8
  %3 = alloca %struct.section*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.TYPE_3__, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.elfcopy* %0, %struct.elfcopy** %2, align 8
  %13 = call %struct.section* @calloc(i32 1, i32 80)
  store %struct.section* %13, %struct.section** %3, align 8
  %14 = icmp eq %struct.section* %13, null
  br i1 %14, label %15, label %18

15:                                               ; preds = %1
  %16 = load i32, i32* @EXIT_FAILURE, align 4
  %17 = call i32 @err(i32 %16, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0))
  br label %18

18:                                               ; preds = %15, %1
  %19 = load %struct.section*, %struct.section** %3, align 8
  %20 = getelementptr inbounds %struct.section, %struct.section* %19, i32 0, i32 7
  store i64 0, i64* %20, align 8
  %21 = load %struct.elfcopy*, %struct.elfcopy** %2, align 8
  %22 = getelementptr inbounds %struct.elfcopy, %struct.elfcopy* %21, i32 0, i32 6
  %23 = load i32, i32* %22, align 8
  %24 = load i32, i32* @ELF_T_EHDR, align 4
  %25 = load i32, i32* @EV_CURRENT, align 4
  %26 = call i64 @gelf_fsize(i32 %23, i32 %24, i32 1, i32 %25)
  %27 = load %struct.elfcopy*, %struct.elfcopy** %2, align 8
  %28 = getelementptr inbounds %struct.elfcopy, %struct.elfcopy* %27, i32 0, i32 6
  %29 = load i32, i32* %28, align 8
  %30 = load i32, i32* @ELF_T_PHDR, align 4
  %31 = load %struct.elfcopy*, %struct.elfcopy** %2, align 8
  %32 = getelementptr inbounds %struct.elfcopy, %struct.elfcopy* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = load i32, i32* @EV_CURRENT, align 4
  %35 = call i64 @gelf_fsize(i32 %29, i32 %30, i32 %33, i32 %34)
  %36 = add nsw i64 %26, %35
  %37 = load %struct.section*, %struct.section** %3, align 8
  %38 = getelementptr inbounds %struct.section, %struct.section* %37, i32 0, i32 9
  store i64 %36, i64* %38, align 8
  %39 = load %struct.section*, %struct.section** %3, align 8
  %40 = getelementptr inbounds %struct.section, %struct.section* %39, i32 0, i32 0
  store i32 1, i32* %40, align 8
  %41 = load %struct.section*, %struct.section** %3, align 8
  %42 = getelementptr inbounds %struct.section, %struct.section* %41, i32 0, i32 1
  store i32 1, i32* %42, align 4
  %43 = load %struct.elfcopy*, %struct.elfcopy** %2, align 8
  %44 = load %struct.section*, %struct.section** %3, align 8
  %45 = call i8* @add_to_inseg_list(%struct.elfcopy* %43, %struct.section* %44)
  %46 = ptrtoint i8* %45 to i32
  %47 = load %struct.section*, %struct.section** %3, align 8
  %48 = getelementptr inbounds %struct.section, %struct.section* %47, i32 0, i32 2
  store i32 %46, i32* %48, align 8
  %49 = load %struct.elfcopy*, %struct.elfcopy** %2, align 8
  %50 = load %struct.section*, %struct.section** %3, align 8
  %51 = call i32 @insert_to_sec_list(%struct.elfcopy* %49, %struct.section* %50, i32 0)
  %52 = load %struct.elfcopy*, %struct.elfcopy** %2, align 8
  %53 = call i32 @init_shstrtab(%struct.elfcopy* %52)
  %54 = load %struct.elfcopy*, %struct.elfcopy** %2, align 8
  %55 = getelementptr inbounds %struct.elfcopy, %struct.elfcopy* %54, i32 0, i32 9
  %56 = load i32, i32* %55, align 8
  %57 = call i64 @elf_getshstrndx(i32 %56, i64* %7)
  %58 = icmp eq i64 %57, 0
  br i1 %58, label %59, label %63

59:                                               ; preds = %18
  %60 = load i32, i32* @EXIT_FAILURE, align 4
  %61 = call i32 @elf_errmsg(i32 -1)
  %62 = call i32 @errx(i32 %60, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0), i32 %61)
  br label %63

63:                                               ; preds = %59, %18
  store i32 0, i32* %12, align 4
  store i32* null, i32** %5, align 8
  br label %64

64:                                               ; preds = %380, %131, %118, %97, %63
  %65 = load %struct.elfcopy*, %struct.elfcopy** %2, align 8
  %66 = getelementptr inbounds %struct.elfcopy, %struct.elfcopy* %65, i32 0, i32 9
  %67 = load i32, i32* %66, align 8
  %68 = load i32*, i32** %5, align 8
  %69 = call i32* @elf_nextscn(i32 %67, i32* %68)
  store i32* %69, i32** %5, align 8
  %70 = icmp ne i32* %69, null
  br i1 %70, label %71, label %384

71:                                               ; preds = %64
  %72 = load i32*, i32** %5, align 8
  %73 = call i32* @gelf_getshdr(i32* %72, %struct.TYPE_3__* %6)
  %74 = icmp eq i32* %73, null
  br i1 %74, label %75, label %79

75:                                               ; preds = %71
  %76 = load i32, i32* @EXIT_FAILURE, align 4
  %77 = call i32 @elf_errmsg(i32 -1)
  %78 = call i32 @errx(i32 %76, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.2, i64 0, i64 0), i32 %77)
  br label %79

79:                                               ; preds = %75, %71
  %80 = load %struct.elfcopy*, %struct.elfcopy** %2, align 8
  %81 = getelementptr inbounds %struct.elfcopy, %struct.elfcopy* %80, i32 0, i32 9
  %82 = load i32, i32* %81, align 8
  %83 = load i64, i64* %7, align 8
  %84 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %6, i32 0, i32 7
  %85 = load i32, i32* %84, align 8
  %86 = call i8* @elf_strptr(i32 %82, i64 %83, i32 %85)
  store i8* %86, i8** %4, align 8
  %87 = icmp eq i8* %86, null
  br i1 %87, label %88, label %92

88:                                               ; preds = %79
  %89 = load i32, i32* @EXIT_FAILURE, align 4
  %90 = call i32 @elf_errmsg(i32 -1)
  %91 = call i32 @errx(i32 %89, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.3, i64 0, i64 0), i32 %90)
  br label %92

92:                                               ; preds = %88, %79
  %93 = load %struct.elfcopy*, %struct.elfcopy** %2, align 8
  %94 = load i8*, i8** %4, align 8
  %95 = call i64 @is_remove_section(%struct.elfcopy* %93, i8* %94)
  %96 = icmp ne i64 %95, 0
  br i1 %96, label %97, label %98

97:                                               ; preds = %92
  br label %64

98:                                               ; preds = %92
  %99 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %6, i32 0, i32 0
  %100 = load i64, i64* %99, align 8
  %101 = load i64, i64* @SHT_REL, align 8
  %102 = icmp eq i64 %100, %101
  br i1 %102, label %108, label %103

103:                                              ; preds = %98
  %104 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %6, i32 0, i32 0
  %105 = load i64, i64* %104, align 8
  %106 = load i64, i64* @SHT_RELA, align 8
  %107 = icmp eq i64 %105, %106
  br i1 %107, label %108, label %120

108:                                              ; preds = %103, %98
  %109 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %6, i32 0, i32 1
  %110 = load i64, i64* %109, align 8
  %111 = icmp ne i64 %110, 0
  br i1 %111, label %112, label %119

112:                                              ; preds = %108
  %113 = load %struct.elfcopy*, %struct.elfcopy** %2, align 8
  %114 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %6, i32 0, i32 1
  %115 = load i64, i64* %114, align 8
  %116 = call i64 @is_remove_reloc_sec(%struct.elfcopy* %113, i64 %115)
  %117 = icmp ne i64 %116, 0
  br i1 %117, label %118, label %119

118:                                              ; preds = %112
  br label %64

119:                                              ; preds = %112, %108
  br label %120

120:                                              ; preds = %119, %103
  %121 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %6, i32 0, i32 0
  %122 = load i64, i64* %121, align 8
  %123 = load i64, i64* @SHT_GROUP, align 8
  %124 = icmp eq i64 %122, %123
  br i1 %124, label %125, label %132

125:                                              ; preds = %120
  %126 = load %struct.elfcopy*, %struct.elfcopy** %2, align 8
  %127 = getelementptr inbounds %struct.elfcopy, %struct.elfcopy* %126, i32 0, i32 1
  %128 = load i64, i64* %127, align 8
  %129 = load i64, i64* @STRIP_ALL, align 8
  %130 = icmp eq i64 %128, %129
  br i1 %130, label %131, label %132

131:                                              ; preds = %125
  br label %64

132:                                              ; preds = %125, %120
  %133 = load %struct.elfcopy*, %struct.elfcopy** %2, align 8
  %134 = load i8*, i8** %4, align 8
  %135 = call i32 @get_section_flags(%struct.elfcopy* %133, i8* %134)
  store i32 %135, i32* %11, align 4
  %136 = load i8*, i8** %4, align 8
  %137 = call i64 @strcmp(i8* %136, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.4, i64 0, i64 0))
  %138 = icmp ne i64 %137, 0
  br i1 %138, label %139, label %212

139:                                              ; preds = %132
  %140 = call %struct.section* @calloc(i32 1, i32 80)
  store %struct.section* %140, %struct.section** %3, align 8
  %141 = icmp eq %struct.section* %140, null
  br i1 %141, label %142, label %145

142:                                              ; preds = %139
  %143 = load i32, i32* @EXIT_FAILURE, align 4
  %144 = call i32 @err(i32 %143, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0))
  br label %145

145:                                              ; preds = %142, %139
  %146 = load i8*, i8** %4, align 8
  %147 = load %struct.section*, %struct.section** %3, align 8
  %148 = getelementptr inbounds %struct.section, %struct.section* %147, i32 0, i32 3
  store i8* %146, i8** %148, align 8
  %149 = load i32*, i32** %5, align 8
  %150 = load %struct.section*, %struct.section** %3, align 8
  %151 = getelementptr inbounds %struct.section, %struct.section* %150, i32 0, i32 10
  store i32* %149, i32** %151, align 8
  %152 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %6, i32 0, i32 4
  %153 = load i64, i64* %152, align 8
  %154 = load %struct.section*, %struct.section** %3, align 8
  %155 = getelementptr inbounds %struct.section, %struct.section* %154, i32 0, i32 7
  store i64 %153, i64* %155, align 8
  %156 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %6, i32 0, i32 6
  %157 = load i64, i64* %156, align 8
  %158 = load %struct.section*, %struct.section** %3, align 8
  %159 = getelementptr inbounds %struct.section, %struct.section* %158, i32 0, i32 9
  store i64 %157, i64* %159, align 8
  %160 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %6, i32 0, i32 2
  %161 = load i32, i32* %160, align 8
  %162 = load %struct.section*, %struct.section** %3, align 8
  %163 = getelementptr inbounds %struct.section, %struct.section* %162, i32 0, i32 0
  store i32 %161, i32* %163, align 8
  %164 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %6, i32 0, i32 0
  %165 = load i64, i64* %164, align 8
  %166 = load %struct.section*, %struct.section** %3, align 8
  %167 = getelementptr inbounds %struct.section, %struct.section* %166, i32 0, i32 4
  store i64 %165, i64* %167, align 8
  %168 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %6, i32 0, i32 3
  %169 = load i32, i32* %168, align 4
  %170 = load %struct.section*, %struct.section** %3, align 8
  %171 = getelementptr inbounds %struct.section, %struct.section* %170, i32 0, i32 5
  store i32 %169, i32* %171, align 8
  %172 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %6, i32 0, i32 5
  %173 = load i32, i32* %172, align 8
  %174 = load %struct.section*, %struct.section** %3, align 8
  %175 = getelementptr inbounds %struct.section, %struct.section* %174, i32 0, i32 8
  store i32 %173, i32* %175, align 8
  %176 = load i32, i32* %11, align 4
  %177 = icmp ne i32 %176, 0
  br i1 %177, label %178, label %188

178:                                              ; preds = %145
  %179 = load i32, i32* %11, align 4
  %180 = load i32, i32* @SF_LOAD, align 4
  %181 = load i32, i32* @SF_ALLOC, align 4
  %182 = or i32 %180, %181
  %183 = and i32 %179, %182
  %184 = icmp eq i32 %183, 0
  br i1 %184, label %185, label %188

185:                                              ; preds = %178
  %186 = load %struct.section*, %struct.section** %3, align 8
  %187 = getelementptr inbounds %struct.section, %struct.section* %186, i32 0, i32 2
  store i32 0, i32* %187, align 8
  br label %211

188:                                              ; preds = %178, %145
  %189 = load %struct.elfcopy*, %struct.elfcopy** %2, align 8
  %190 = load %struct.section*, %struct.section** %3, align 8
  %191 = call i8* @add_to_inseg_list(%struct.elfcopy* %189, %struct.section* %190)
  %192 = ptrtoint i8* %191 to i32
  %193 = load %struct.section*, %struct.section** %3, align 8
  %194 = getelementptr inbounds %struct.section, %struct.section* %193, i32 0, i32 2
  store i32 %192, i32* %194, align 8
  %195 = load %struct.elfcopy*, %struct.elfcopy** %2, align 8
  %196 = getelementptr inbounds %struct.elfcopy, %struct.elfcopy* %195, i32 0, i32 2
  %197 = load i32, i32* %196, align 8
  %198 = load i32, i32* @RELOCATABLE, align 4
  %199 = and i32 %197, %198
  %200 = icmp ne i32 %199, 0
  br i1 %200, label %201, label %210

201:                                              ; preds = %188
  %202 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %6, i32 0, i32 3
  %203 = load i32, i32* %202, align 4
  %204 = load i32, i32* @SHF_ALLOC, align 4
  %205 = and i32 %203, %204
  %206 = icmp ne i32 %205, 0
  br i1 %206, label %207, label %210

207:                                              ; preds = %201
  %208 = load %struct.section*, %struct.section** %3, align 8
  %209 = getelementptr inbounds %struct.section, %struct.section* %208, i32 0, i32 2
  store i32 1, i32* %209, align 8
  br label %210

210:                                              ; preds = %207, %201, %188
  br label %211

211:                                              ; preds = %210, %185
  br label %220

212:                                              ; preds = %132
  %213 = load %struct.elfcopy*, %struct.elfcopy** %2, align 8
  %214 = getelementptr inbounds %struct.elfcopy, %struct.elfcopy* %213, i32 0, i32 8
  %215 = load %struct.section*, %struct.section** %214, align 8
  store %struct.section* %215, %struct.section** %3, align 8
  %216 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %6, i32 0, i32 4
  %217 = load i64, i64* %216, align 8
  %218 = load %struct.section*, %struct.section** %3, align 8
  %219 = getelementptr inbounds %struct.section, %struct.section* %218, i32 0, i32 7
  store i64 %217, i64* %219, align 8
  br label %220

220:                                              ; preds = %212, %211
  %221 = load i64, i64* @SHN_UNDEF, align 8
  store i64 %221, i64* %9, align 8
  store i64 %221, i64* %8, align 8
  %222 = load i8*, i8** %4, align 8
  %223 = call i64 @strcmp(i8* %222, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i64 0, i64 0))
  %224 = icmp ne i64 %223, 0
  br i1 %224, label %225, label %276

225:                                              ; preds = %220
  %226 = load i8*, i8** %4, align 8
  %227 = call i64 @strcmp(i8* %226, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6, i64 0, i64 0))
  %228 = icmp ne i64 %227, 0
  br i1 %228, label %229, label %276

229:                                              ; preds = %225
  %230 = load i8*, i8** %4, align 8
  %231 = call i64 @strcmp(i8* %230, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.4, i64 0, i64 0))
  %232 = icmp ne i64 %231, 0
  br i1 %232, label %252, label %233

233:                                              ; preds = %229
  %234 = load %struct.elfcopy*, %struct.elfcopy** %2, align 8
  %235 = getelementptr inbounds %struct.elfcopy, %struct.elfcopy* %234, i32 0, i32 7
  %236 = load i32*, i32** %235, align 8
  %237 = icmp ne i32* %236, null
  br i1 %237, label %238, label %241

238:                                              ; preds = %233
  %239 = load %struct.elfcopy*, %struct.elfcopy** %2, align 8
  %240 = call i32 @add_gnu_debuglink(%struct.elfcopy* %239)
  br label %241

241:                                              ; preds = %238, %233
  %242 = load %struct.elfcopy*, %struct.elfcopy** %2, align 8
  %243 = getelementptr inbounds %struct.elfcopy, %struct.elfcopy* %242, i32 0, i32 2
  %244 = load i32, i32* %243, align 8
  %245 = load i32, i32* @SEC_ADD, align 4
  %246 = and i32 %244, %245
  %247 = icmp ne i32 %246, 0
  br i1 %247, label %248, label %251

248:                                              ; preds = %241
  %249 = load %struct.elfcopy*, %struct.elfcopy** %2, align 8
  %250 = call i32 @insert_sections(%struct.elfcopy* %249)
  br label %251

251:                                              ; preds = %248, %241
  br label %252

252:                                              ; preds = %251, %229
  %253 = load %struct.elfcopy*, %struct.elfcopy** %2, align 8
  %254 = getelementptr inbounds %struct.elfcopy, %struct.elfcopy* %253, i32 0, i32 6
  %255 = load i32, i32* %254, align 8
  %256 = call i32* @elf_newscn(i32 %255)
  %257 = load %struct.section*, %struct.section** %3, align 8
  %258 = getelementptr inbounds %struct.section, %struct.section* %257, i32 0, i32 6
  store i32* %256, i32** %258, align 8
  %259 = icmp eq i32* %256, null
  br i1 %259, label %260, label %264

260:                                              ; preds = %252
  %261 = load i32, i32* @EXIT_FAILURE, align 4
  %262 = call i32 @elf_errmsg(i32 -1)
  %263 = call i32 @errx(i32 %261, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.7, i64 0, i64 0), i32 %262)
  br label %264

264:                                              ; preds = %260, %252
  %265 = load %struct.section*, %struct.section** %3, align 8
  %266 = getelementptr inbounds %struct.section, %struct.section* %265, i32 0, i32 6
  %267 = load i32*, i32** %266, align 8
  %268 = call i64 @elf_ndxscn(i32* %267)
  store i64 %268, i64* %9, align 8
  %269 = load i64, i64* @SHN_UNDEF, align 8
  %270 = icmp eq i64 %268, %269
  br i1 %270, label %271, label %275

271:                                              ; preds = %264
  %272 = load i32, i32* @EXIT_FAILURE, align 4
  %273 = call i32 @elf_errmsg(i32 -1)
  %274 = call i32 @errx(i32 %272, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.8, i64 0, i64 0), i32 %273)
  br label %275

275:                                              ; preds = %271, %264
  br label %276

276:                                              ; preds = %275, %225, %220
  %277 = load i32*, i32** %5, align 8
  %278 = call i64 @elf_ndxscn(i32* %277)
  store i64 %278, i64* %8, align 8
  %279 = load i64, i64* @SHN_UNDEF, align 8
  %280 = icmp eq i64 %278, %279
  br i1 %280, label %281, label %285

281:                                              ; preds = %276
  %282 = load i32, i32* @EXIT_FAILURE, align 4
  %283 = call i32 @elf_errmsg(i32 -1)
  %284 = call i32 @errx(i32 %282, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.8, i64 0, i64 0), i32 %283)
  br label %285

285:                                              ; preds = %281, %276
  %286 = load i64, i64* %8, align 8
  %287 = load i64, i64* @SHN_UNDEF, align 8
  %288 = icmp ne i64 %286, %287
  br i1 %288, label %289, label %300

289:                                              ; preds = %285
  %290 = load i64, i64* %9, align 8
  %291 = load i64, i64* @SHN_UNDEF, align 8
  %292 = icmp ne i64 %290, %291
  br i1 %292, label %293, label %300

293:                                              ; preds = %289
  %294 = load i64, i64* %9, align 8
  %295 = load %struct.elfcopy*, %struct.elfcopy** %2, align 8
  %296 = getelementptr inbounds %struct.elfcopy, %struct.elfcopy* %295, i32 0, i32 5
  %297 = load i64*, i64** %296, align 8
  %298 = load i64, i64* %8, align 8
  %299 = getelementptr inbounds i64, i64* %297, i64 %298
  store i64 %294, i64* %299, align 8
  br label %300

300:                                              ; preds = %293, %289, %285
  %301 = load %struct.elfcopy*, %struct.elfcopy** %2, align 8
  %302 = getelementptr inbounds %struct.elfcopy, %struct.elfcopy* %301, i32 0, i32 1
  %303 = load i64, i64* %302, align 8
  %304 = load i64, i64* @STRIP_NONDEBUG, align 8
  %305 = icmp eq i64 %303, %304
  br i1 %305, label %306, label %328

306:                                              ; preds = %300
  %307 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %6, i32 0, i32 3
  %308 = load i32, i32* %307, align 4
  %309 = load i32, i32* @SHF_ALLOC, align 4
  %310 = and i32 %308, %309
  %311 = icmp ne i32 %310, 0
  br i1 %311, label %318, label %312

312:                                              ; preds = %306
  %313 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %6, i32 0, i32 3
  %314 = load i32, i32* %313, align 4
  %315 = load i32, i32* @SHF_GROUP, align 4
  %316 = and i32 %314, %315
  %317 = icmp ne i32 %316, 0
  br i1 %317, label %318, label %327

318:                                              ; preds = %312, %306
  %319 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %6, i32 0, i32 0
  %320 = load i64, i64* %319, align 8
  %321 = load i64, i64* @SHT_NOTE, align 8
  %322 = icmp ne i64 %320, %321
  br i1 %322, label %323, label %327

323:                                              ; preds = %318
  %324 = load i64, i64* @SHT_NOBITS, align 8
  %325 = load %struct.section*, %struct.section** %3, align 8
  %326 = getelementptr inbounds %struct.section, %struct.section* %325, i32 0, i32 4
  store i64 %324, i64* %326, align 8
  br label %327

327:                                              ; preds = %323, %318, %312
  br label %328

328:                                              ; preds = %327, %300
  %329 = load %struct.elfcopy*, %struct.elfcopy** %2, align 8
  %330 = load %struct.section*, %struct.section** %3, align 8
  %331 = call i32 @check_section_rename(%struct.elfcopy* %329, %struct.section* %330)
  %332 = load i8*, i8** %4, align 8
  %333 = call i64 @strcmp(i8* %332, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i64 0, i64 0))
  %334 = icmp ne i64 %333, 0
  br i1 %334, label %335, label %358

335:                                              ; preds = %328
  %336 = load i8*, i8** %4, align 8
  %337 = call i64 @strcmp(i8* %336, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6, i64 0, i64 0))
  %338 = icmp ne i64 %337, 0
  br i1 %338, label %339, label %358

339:                                              ; preds = %335
  %340 = load i8*, i8** %4, align 8
  %341 = call i64 @strcmp(i8* %340, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.4, i64 0, i64 0))
  %342 = icmp ne i64 %341, 0
  br i1 %342, label %343, label %358

343:                                              ; preds = %339
  %344 = load %struct.elfcopy*, %struct.elfcopy** %2, align 8
  %345 = load %struct.section*, %struct.section** %3, align 8
  %346 = load i32, i32* %11, align 4
  %347 = call i32 @copy_shdr(%struct.elfcopy* %344, %struct.section* %345, i32* null, i32 0, i32 %346)
  %348 = load i32, i32* %12, align 4
  %349 = icmp ne i32 %348, 0
  br i1 %349, label %350, label %357

350:                                              ; preds = %343
  %351 = load i32, i32* @SYMTAB_INTACT, align 4
  %352 = xor i32 %351, -1
  %353 = load %struct.elfcopy*, %struct.elfcopy** %2, align 8
  %354 = getelementptr inbounds %struct.elfcopy, %struct.elfcopy* %353, i32 0, i32 2
  %355 = load i32, i32* %354, align 8
  %356 = and i32 %355, %352
  store i32 %356, i32* %354, align 8
  br label %357

357:                                              ; preds = %350, %343
  br label %359

358:                                              ; preds = %339, %335, %328
  store i32 1, i32* %12, align 4
  br label %359

359:                                              ; preds = %358, %357
  %360 = load i8*, i8** %4, align 8
  %361 = call i64 @strcmp(i8* %360, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i64 0, i64 0))
  %362 = icmp eq i64 %361, 0
  br i1 %362, label %363, label %372

363:                                              ; preds = %359
  %364 = load i32, i32* @SYMTAB_EXIST, align 4
  %365 = load %struct.elfcopy*, %struct.elfcopy** %2, align 8
  %366 = getelementptr inbounds %struct.elfcopy, %struct.elfcopy* %365, i32 0, i32 2
  %367 = load i32, i32* %366, align 8
  %368 = or i32 %367, %364
  store i32 %368, i32* %366, align 8
  %369 = load %struct.section*, %struct.section** %3, align 8
  %370 = load %struct.elfcopy*, %struct.elfcopy** %2, align 8
  %371 = getelementptr inbounds %struct.elfcopy, %struct.elfcopy* %370, i32 0, i32 4
  store %struct.section* %369, %struct.section** %371, align 8
  br label %372

372:                                              ; preds = %363, %359
  %373 = load i8*, i8** %4, align 8
  %374 = call i64 @strcmp(i8* %373, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6, i64 0, i64 0))
  %375 = icmp eq i64 %374, 0
  br i1 %375, label %376, label %380

376:                                              ; preds = %372
  %377 = load %struct.section*, %struct.section** %3, align 8
  %378 = load %struct.elfcopy*, %struct.elfcopy** %2, align 8
  %379 = getelementptr inbounds %struct.elfcopy, %struct.elfcopy* %378, i32 0, i32 3
  store %struct.section* %377, %struct.section** %379, align 8
  br label %380

380:                                              ; preds = %376, %372
  %381 = load %struct.elfcopy*, %struct.elfcopy** %2, align 8
  %382 = load %struct.section*, %struct.section** %3, align 8
  %383 = call i32 @insert_to_sec_list(%struct.elfcopy* %381, %struct.section* %382, i32 0)
  br label %64

384:                                              ; preds = %64
  %385 = call i32 (...) @elf_errno()
  store i32 %385, i32* %10, align 4
  %386 = load i32, i32* %10, align 4
  %387 = icmp ne i32 %386, 0
  br i1 %387, label %388, label %393

388:                                              ; preds = %384
  %389 = load i32, i32* @EXIT_FAILURE, align 4
  %390 = load i32, i32* %10, align 4
  %391 = call i32 @elf_errmsg(i32 %390)
  %392 = call i32 @errx(i32 %389, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.9, i64 0, i64 0), i32 %391)
  br label %393

393:                                              ; preds = %388, %384
  ret void
}

declare dso_local %struct.section* @calloc(i32, i32) #1

declare dso_local i32 @err(i32, i8*) #1

declare dso_local i64 @gelf_fsize(i32, i32, i32, i32) #1

declare dso_local i8* @add_to_inseg_list(%struct.elfcopy*, %struct.section*) #1

declare dso_local i32 @insert_to_sec_list(%struct.elfcopy*, %struct.section*, i32) #1

declare dso_local i32 @init_shstrtab(%struct.elfcopy*) #1

declare dso_local i64 @elf_getshstrndx(i32, i64*) #1

declare dso_local i32 @errx(i32, i8*, i32) #1

declare dso_local i32 @elf_errmsg(i32) #1

declare dso_local i32* @elf_nextscn(i32, i32*) #1

declare dso_local i32* @gelf_getshdr(i32*, %struct.TYPE_3__*) #1

declare dso_local i8* @elf_strptr(i32, i64, i32) #1

declare dso_local i64 @is_remove_section(%struct.elfcopy*, i8*) #1

declare dso_local i64 @is_remove_reloc_sec(%struct.elfcopy*, i64) #1

declare dso_local i32 @get_section_flags(%struct.elfcopy*, i8*) #1

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i32 @add_gnu_debuglink(%struct.elfcopy*) #1

declare dso_local i32 @insert_sections(%struct.elfcopy*) #1

declare dso_local i32* @elf_newscn(i32) #1

declare dso_local i64 @elf_ndxscn(i32*) #1

declare dso_local i32 @check_section_rename(%struct.elfcopy*, %struct.section*) #1

declare dso_local i32 @copy_shdr(%struct.elfcopy*, %struct.section*, i32*, i32, i32) #1

declare dso_local i32 @elf_errno(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

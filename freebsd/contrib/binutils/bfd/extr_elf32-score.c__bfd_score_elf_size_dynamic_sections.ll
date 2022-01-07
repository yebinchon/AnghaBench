; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/bfd/extr_elf32-score.c__bfd_score_elf_size_dynamic_sections.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/bfd/extr_elf32-score.c__bfd_score_elf_size_dynamic_sections.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { %struct.TYPE_12__* }
%struct.TYPE_12__ = type { i64, i32, i32*, i64, %struct.TYPE_12__*, %struct.TYPE_11__*, %struct.TYPE_12__* }
%struct.bfd_link_info = type { i32, i32 }
%struct.TYPE_13__ = type { i64, %struct.TYPE_11__* }

@.str = private unnamed_addr constant [8 x i8] c".interp\00", align 1
@ELF_DYNAMIC_INTERPRETER = common dso_local global i64 0, align 8
@FALSE = common dso_local global i64 0, align 8
@SEC_LINKER_CREATED = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [5 x i8] c".rel\00", align 1
@SEC_EXCLUDE = common dso_local global i32 0, align 4
@SEC_READONLY = common dso_local global i32 0, align 4
@SEC_ALLOC = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [9 x i8] c".rel.dyn\00", align 1
@TRUE = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [5 x i8] c".got\00", align 1
@SCORE_ELF_STUB_SECTION_NAME = common dso_local global i8* null, align 8
@SCORE_FUNCTION_STUB_SIZE = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [6 x i8] c".init\00", align 1
@bfd_error_no_memory = common dso_local global i32 0, align 4
@DT_DEBUG = common dso_local global i32 0, align 4
@DF_TEXTREL = common dso_local global i32 0, align 4
@DT_TEXTREL = common dso_local global i32 0, align 4
@DT_PLTGOT = common dso_local global i32 0, align 4
@DT_REL = common dso_local global i32 0, align 4
@DT_RELSZ = common dso_local global i32 0, align 4
@DT_RELENT = common dso_local global i32 0, align 4
@DT_SCORE_BASE_ADDRESS = common dso_local global i32 0, align 4
@DT_SCORE_LOCAL_GOTNO = common dso_local global i32 0, align 4
@DT_SCORE_SYMTABNO = common dso_local global i32 0, align 4
@DT_SCORE_UNREFEXTNO = common dso_local global i32 0, align 4
@DT_SCORE_GOTSYM = common dso_local global i32 0, align 4
@DT_SCORE_HIPAGENO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.TYPE_11__*, %struct.bfd_link_info*)* @_bfd_score_elf_size_dynamic_sections to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @_bfd_score_elf_size_dynamic_sections(%struct.TYPE_11__* %0, %struct.bfd_link_info* %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca %struct.TYPE_11__*, align 8
  %5 = alloca %struct.bfd_link_info*, align 8
  %6 = alloca %struct.TYPE_11__*, align 8
  %7 = alloca %struct.TYPE_12__*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca %struct.TYPE_12__*, align 8
  store %struct.TYPE_11__* %0, %struct.TYPE_11__** %4, align 8
  store %struct.bfd_link_info* %1, %struct.bfd_link_info** %5, align 8
  %12 = load %struct.bfd_link_info*, %struct.bfd_link_info** %5, align 8
  %13 = call %struct.TYPE_13__* @elf_hash_table(%struct.bfd_link_info* %12)
  %14 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %13, i32 0, i32 1
  %15 = load %struct.TYPE_11__*, %struct.TYPE_11__** %14, align 8
  store %struct.TYPE_11__* %15, %struct.TYPE_11__** %6, align 8
  %16 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %17 = icmp ne %struct.TYPE_11__* %16, null
  %18 = zext i1 %17 to i32
  %19 = call i32 @BFD_ASSERT(i32 %18)
  %20 = load %struct.bfd_link_info*, %struct.bfd_link_info** %5, align 8
  %21 = call %struct.TYPE_13__* @elf_hash_table(%struct.bfd_link_info* %20)
  %22 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %47

25:                                               ; preds = %2
  %26 = load %struct.bfd_link_info*, %struct.bfd_link_info** %5, align 8
  %27 = getelementptr inbounds %struct.bfd_link_info, %struct.bfd_link_info* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %46, label %30

30:                                               ; preds = %25
  %31 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %32 = call %struct.TYPE_12__* @bfd_get_section_by_name(%struct.TYPE_11__* %31, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0))
  store %struct.TYPE_12__* %32, %struct.TYPE_12__** %7, align 8
  %33 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %34 = icmp ne %struct.TYPE_12__* %33, null
  %35 = zext i1 %34 to i32
  %36 = call i32 @BFD_ASSERT(i32 %35)
  %37 = load i64, i64* @ELF_DYNAMIC_INTERPRETER, align 8
  %38 = call i64 @strlen(i64 %37)
  %39 = add nsw i64 %38, 1
  %40 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %41 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %40, i32 0, i32 0
  store i64 %39, i64* %41, align 8
  %42 = load i64, i64* @ELF_DYNAMIC_INTERPRETER, align 8
  %43 = inttoptr i64 %42 to i32*
  %44 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %45 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %44, i32 0, i32 2
  store i32* %43, i32** %45, align 8
  br label %46

46:                                               ; preds = %30, %25
  br label %47

47:                                               ; preds = %46, %2
  %48 = load i64, i64* @FALSE, align 8
  store i64 %48, i64* %8, align 8
  %49 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %50 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %49, i32 0, i32 0
  %51 = load %struct.TYPE_12__*, %struct.TYPE_12__** %50, align 8
  store %struct.TYPE_12__* %51, %struct.TYPE_12__** %7, align 8
  br label %52

52:                                               ; preds = %187, %47
  %53 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %54 = icmp ne %struct.TYPE_12__* %53, null
  br i1 %54, label %55, label %191

55:                                               ; preds = %52
  %56 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %57 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 8
  %59 = load i32, i32* @SEC_LINKER_CREATED, align 4
  %60 = and i32 %58, %59
  %61 = icmp eq i32 %60, 0
  br i1 %61, label %62, label %63

62:                                               ; preds = %55
  br label %187

63:                                               ; preds = %55
  %64 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %65 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %66 = call i8* @bfd_get_section_name(%struct.TYPE_11__* %64, %struct.TYPE_12__* %65)
  store i8* %66, i8** %9, align 8
  %67 = load i8*, i8** %9, align 8
  %68 = call i64 @CONST_STRNEQ(i8* %67, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0))
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %70, label %141

70:                                               ; preds = %63
  %71 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %72 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %71, i32 0, i32 0
  %73 = load i64, i64* %72, align 8
  %74 = icmp eq i64 %73, 0
  br i1 %74, label %75, label %100

75:                                               ; preds = %70
  %76 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %77 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %76, i32 0, i32 4
  %78 = load %struct.TYPE_12__*, %struct.TYPE_12__** %77, align 8
  %79 = icmp ne %struct.TYPE_12__* %78, null
  br i1 %79, label %80, label %99

80:                                               ; preds = %75
  %81 = load i8*, i8** %9, align 8
  %82 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %83 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %82, i32 0, i32 4
  %84 = load %struct.TYPE_12__*, %struct.TYPE_12__** %83, align 8
  %85 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %84, i32 0, i32 5
  %86 = load %struct.TYPE_11__*, %struct.TYPE_11__** %85, align 8
  %87 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %88 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %87, i32 0, i32 4
  %89 = load %struct.TYPE_12__*, %struct.TYPE_12__** %88, align 8
  %90 = call i8* @bfd_get_section_name(%struct.TYPE_11__* %86, %struct.TYPE_12__* %89)
  %91 = call i64 @strcmp(i8* %81, i8* %90)
  %92 = icmp eq i64 %91, 0
  br i1 %92, label %93, label %99

93:                                               ; preds = %80
  %94 = load i32, i32* @SEC_EXCLUDE, align 4
  %95 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %96 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %95, i32 0, i32 1
  %97 = load i32, i32* %96, align 8
  %98 = or i32 %97, %94
  store i32 %98, i32* %96, align 8
  br label %99

99:                                               ; preds = %93, %80, %75
  br label %140

100:                                              ; preds = %70
  %101 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %102 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %103 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %102, i32 0, i32 4
  %104 = load %struct.TYPE_12__*, %struct.TYPE_12__** %103, align 8
  %105 = call i8* @bfd_get_section_name(%struct.TYPE_11__* %101, %struct.TYPE_12__* %104)
  store i8* %105, i8** %10, align 8
  %106 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %107 = load i8*, i8** %10, align 8
  %108 = getelementptr inbounds i8, i8* %107, i64 4
  %109 = call %struct.TYPE_12__* @bfd_get_section_by_name(%struct.TYPE_11__* %106, i8* %108)
  store %struct.TYPE_12__* %109, %struct.TYPE_12__** %11, align 8
  %110 = load %struct.TYPE_12__*, %struct.TYPE_12__** %11, align 8
  %111 = icmp ne %struct.TYPE_12__* %110, null
  br i1 %111, label %112, label %126

112:                                              ; preds = %100
  %113 = load %struct.TYPE_12__*, %struct.TYPE_12__** %11, align 8
  %114 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %113, i32 0, i32 1
  %115 = load i32, i32* %114, align 8
  %116 = load i32, i32* @SEC_READONLY, align 4
  %117 = and i32 %115, %116
  %118 = icmp ne i32 %117, 0
  br i1 %118, label %119, label %126

119:                                              ; preds = %112
  %120 = load %struct.TYPE_12__*, %struct.TYPE_12__** %11, align 8
  %121 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %120, i32 0, i32 1
  %122 = load i32, i32* %121, align 8
  %123 = load i32, i32* @SEC_ALLOC, align 4
  %124 = and i32 %122, %123
  %125 = icmp ne i32 %124, 0
  br i1 %125, label %130, label %126

126:                                              ; preds = %119, %112, %100
  %127 = load i8*, i8** %10, align 8
  %128 = call i64 @strcmp(i8* %127, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0))
  %129 = icmp eq i64 %128, 0
  br i1 %129, label %130, label %132

130:                                              ; preds = %126, %119
  %131 = load i64, i64* @TRUE, align 8
  store i64 %131, i64* %8, align 8
  br label %132

132:                                              ; preds = %130, %126
  %133 = load i8*, i8** %9, align 8
  %134 = call i64 @strcmp(i8* %133, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0))
  %135 = icmp ne i64 %134, 0
  br i1 %135, label %136, label %139

136:                                              ; preds = %132
  %137 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %138 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %137, i32 0, i32 3
  store i64 0, i64* %138, align 8
  br label %139

139:                                              ; preds = %136, %132
  br label %140

140:                                              ; preds = %139, %99
  br label %165

141:                                              ; preds = %63
  %142 = load i8*, i8** %9, align 8
  %143 = call i64 @CONST_STRNEQ(i8* %142, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0))
  %144 = icmp ne i64 %143, 0
  br i1 %144, label %145, label %146

145:                                              ; preds = %141
  br label %164

146:                                              ; preds = %141
  %147 = load i8*, i8** %9, align 8
  %148 = load i8*, i8** @SCORE_ELF_STUB_SECTION_NAME, align 8
  %149 = call i64 @strcmp(i8* %147, i8* %148)
  %150 = icmp eq i64 %149, 0
  br i1 %150, label %151, label %157

151:                                              ; preds = %146
  %152 = load i64, i64* @SCORE_FUNCTION_STUB_SIZE, align 8
  %153 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %154 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %153, i32 0, i32 0
  %155 = load i64, i64* %154, align 8
  %156 = add nsw i64 %155, %152
  store i64 %156, i64* %154, align 8
  br label %163

157:                                              ; preds = %146
  %158 = load i8*, i8** %9, align 8
  %159 = call i64 @CONST_STRNEQ(i8* %158, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i64 0, i64 0))
  %160 = icmp ne i64 %159, 0
  br i1 %160, label %162, label %161

161:                                              ; preds = %157
  br label %187

162:                                              ; preds = %157
  br label %163

163:                                              ; preds = %162, %151
  br label %164

164:                                              ; preds = %163, %145
  br label %165

165:                                              ; preds = %164, %140
  %166 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %167 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %168 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %167, i32 0, i32 0
  %169 = load i64, i64* %168, align 8
  %170 = call i32* @bfd_zalloc(%struct.TYPE_11__* %166, i64 %169)
  %171 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %172 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %171, i32 0, i32 2
  store i32* %170, i32** %172, align 8
  %173 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %174 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %173, i32 0, i32 2
  %175 = load i32*, i32** %174, align 8
  %176 = icmp eq i32* %175, null
  br i1 %176, label %177, label %186

177:                                              ; preds = %165
  %178 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %179 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %178, i32 0, i32 0
  %180 = load i64, i64* %179, align 8
  %181 = icmp ne i64 %180, 0
  br i1 %181, label %182, label %186

182:                                              ; preds = %177
  %183 = load i32, i32* @bfd_error_no_memory, align 4
  %184 = call i32 @bfd_set_error(i32 %183)
  %185 = load i64, i64* @FALSE, align 8
  store i64 %185, i64* %3, align 8
  br label %307

186:                                              ; preds = %177, %165
  br label %187

187:                                              ; preds = %186, %161, %62
  %188 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %189 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %188, i32 0, i32 6
  %190 = load %struct.TYPE_12__*, %struct.TYPE_12__** %189, align 8
  store %struct.TYPE_12__* %190, %struct.TYPE_12__** %7, align 8
  br label %52

191:                                              ; preds = %52
  %192 = load %struct.bfd_link_info*, %struct.bfd_link_info** %5, align 8
  %193 = call %struct.TYPE_13__* @elf_hash_table(%struct.bfd_link_info* %192)
  %194 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %193, i32 0, i32 0
  %195 = load i64, i64* %194, align 8
  %196 = icmp ne i64 %195, 0
  br i1 %196, label %197, label %305

197:                                              ; preds = %191
  %198 = load %struct.bfd_link_info*, %struct.bfd_link_info** %5, align 8
  %199 = load i32, i32* @DT_DEBUG, align 4
  %200 = call i32 @SCORE_ELF_ADD_DYNAMIC_ENTRY(%struct.bfd_link_info* %198, i32 %199, i32 0)
  %201 = icmp ne i32 %200, 0
  br i1 %201, label %204, label %202

202:                                              ; preds = %197
  %203 = load i64, i64* @FALSE, align 8
  store i64 %203, i64* %3, align 8
  br label %307

204:                                              ; preds = %197
  %205 = load i64, i64* %8, align 8
  %206 = icmp ne i64 %205, 0
  br i1 %206, label %207, label %213

207:                                              ; preds = %204
  %208 = load i32, i32* @DF_TEXTREL, align 4
  %209 = load %struct.bfd_link_info*, %struct.bfd_link_info** %5, align 8
  %210 = getelementptr inbounds %struct.bfd_link_info, %struct.bfd_link_info* %209, i32 0, i32 0
  %211 = load i32, i32* %210, align 4
  %212 = or i32 %211, %208
  store i32 %212, i32* %210, align 4
  br label %213

213:                                              ; preds = %207, %204
  %214 = load %struct.bfd_link_info*, %struct.bfd_link_info** %5, align 8
  %215 = getelementptr inbounds %struct.bfd_link_info, %struct.bfd_link_info* %214, i32 0, i32 0
  %216 = load i32, i32* %215, align 4
  %217 = load i32, i32* @DF_TEXTREL, align 4
  %218 = and i32 %216, %217
  %219 = icmp ne i32 %218, 0
  br i1 %219, label %220, label %228

220:                                              ; preds = %213
  %221 = load %struct.bfd_link_info*, %struct.bfd_link_info** %5, align 8
  %222 = load i32, i32* @DT_TEXTREL, align 4
  %223 = call i32 @SCORE_ELF_ADD_DYNAMIC_ENTRY(%struct.bfd_link_info* %221, i32 %222, i32 0)
  %224 = icmp ne i32 %223, 0
  br i1 %224, label %227, label %225

225:                                              ; preds = %220
  %226 = load i64, i64* @FALSE, align 8
  store i64 %226, i64* %3, align 8
  br label %307

227:                                              ; preds = %220
  br label %228

228:                                              ; preds = %227, %213
  %229 = load %struct.bfd_link_info*, %struct.bfd_link_info** %5, align 8
  %230 = load i32, i32* @DT_PLTGOT, align 4
  %231 = call i32 @SCORE_ELF_ADD_DYNAMIC_ENTRY(%struct.bfd_link_info* %229, i32 %230, i32 0)
  %232 = icmp ne i32 %231, 0
  br i1 %232, label %235, label %233

233:                                              ; preds = %228
  %234 = load i64, i64* @FALSE, align 8
  store i64 %234, i64* %3, align 8
  br label %307

235:                                              ; preds = %228
  %236 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %237 = load i64, i64* @FALSE, align 8
  %238 = call i64 @score_elf_rel_dyn_section(%struct.TYPE_11__* %236, i64 %237)
  %239 = icmp ne i64 %238, 0
  br i1 %239, label %240, label %262

240:                                              ; preds = %235
  %241 = load %struct.bfd_link_info*, %struct.bfd_link_info** %5, align 8
  %242 = load i32, i32* @DT_REL, align 4
  %243 = call i32 @SCORE_ELF_ADD_DYNAMIC_ENTRY(%struct.bfd_link_info* %241, i32 %242, i32 0)
  %244 = icmp ne i32 %243, 0
  br i1 %244, label %247, label %245

245:                                              ; preds = %240
  %246 = load i64, i64* @FALSE, align 8
  store i64 %246, i64* %3, align 8
  br label %307

247:                                              ; preds = %240
  %248 = load %struct.bfd_link_info*, %struct.bfd_link_info** %5, align 8
  %249 = load i32, i32* @DT_RELSZ, align 4
  %250 = call i32 @SCORE_ELF_ADD_DYNAMIC_ENTRY(%struct.bfd_link_info* %248, i32 %249, i32 0)
  %251 = icmp ne i32 %250, 0
  br i1 %251, label %254, label %252

252:                                              ; preds = %247
  %253 = load i64, i64* @FALSE, align 8
  store i64 %253, i64* %3, align 8
  br label %307

254:                                              ; preds = %247
  %255 = load %struct.bfd_link_info*, %struct.bfd_link_info** %5, align 8
  %256 = load i32, i32* @DT_RELENT, align 4
  %257 = call i32 @SCORE_ELF_ADD_DYNAMIC_ENTRY(%struct.bfd_link_info* %255, i32 %256, i32 0)
  %258 = icmp ne i32 %257, 0
  br i1 %258, label %261, label %259

259:                                              ; preds = %254
  %260 = load i64, i64* @FALSE, align 8
  store i64 %260, i64* %3, align 8
  br label %307

261:                                              ; preds = %254
  br label %262

262:                                              ; preds = %261, %235
  %263 = load %struct.bfd_link_info*, %struct.bfd_link_info** %5, align 8
  %264 = load i32, i32* @DT_SCORE_BASE_ADDRESS, align 4
  %265 = call i32 @SCORE_ELF_ADD_DYNAMIC_ENTRY(%struct.bfd_link_info* %263, i32 %264, i32 0)
  %266 = icmp ne i32 %265, 0
  br i1 %266, label %269, label %267

267:                                              ; preds = %262
  %268 = load i64, i64* @FALSE, align 8
  store i64 %268, i64* %3, align 8
  br label %307

269:                                              ; preds = %262
  %270 = load %struct.bfd_link_info*, %struct.bfd_link_info** %5, align 8
  %271 = load i32, i32* @DT_SCORE_LOCAL_GOTNO, align 4
  %272 = call i32 @SCORE_ELF_ADD_DYNAMIC_ENTRY(%struct.bfd_link_info* %270, i32 %271, i32 0)
  %273 = icmp ne i32 %272, 0
  br i1 %273, label %276, label %274

274:                                              ; preds = %269
  %275 = load i64, i64* @FALSE, align 8
  store i64 %275, i64* %3, align 8
  br label %307

276:                                              ; preds = %269
  %277 = load %struct.bfd_link_info*, %struct.bfd_link_info** %5, align 8
  %278 = load i32, i32* @DT_SCORE_SYMTABNO, align 4
  %279 = call i32 @SCORE_ELF_ADD_DYNAMIC_ENTRY(%struct.bfd_link_info* %277, i32 %278, i32 0)
  %280 = icmp ne i32 %279, 0
  br i1 %280, label %283, label %281

281:                                              ; preds = %276
  %282 = load i64, i64* @FALSE, align 8
  store i64 %282, i64* %3, align 8
  br label %307

283:                                              ; preds = %276
  %284 = load %struct.bfd_link_info*, %struct.bfd_link_info** %5, align 8
  %285 = load i32, i32* @DT_SCORE_UNREFEXTNO, align 4
  %286 = call i32 @SCORE_ELF_ADD_DYNAMIC_ENTRY(%struct.bfd_link_info* %284, i32 %285, i32 0)
  %287 = icmp ne i32 %286, 0
  br i1 %287, label %290, label %288

288:                                              ; preds = %283
  %289 = load i64, i64* @FALSE, align 8
  store i64 %289, i64* %3, align 8
  br label %307

290:                                              ; preds = %283
  %291 = load %struct.bfd_link_info*, %struct.bfd_link_info** %5, align 8
  %292 = load i32, i32* @DT_SCORE_GOTSYM, align 4
  %293 = call i32 @SCORE_ELF_ADD_DYNAMIC_ENTRY(%struct.bfd_link_info* %291, i32 %292, i32 0)
  %294 = icmp ne i32 %293, 0
  br i1 %294, label %297, label %295

295:                                              ; preds = %290
  %296 = load i64, i64* @FALSE, align 8
  store i64 %296, i64* %3, align 8
  br label %307

297:                                              ; preds = %290
  %298 = load %struct.bfd_link_info*, %struct.bfd_link_info** %5, align 8
  %299 = load i32, i32* @DT_SCORE_HIPAGENO, align 4
  %300 = call i32 @SCORE_ELF_ADD_DYNAMIC_ENTRY(%struct.bfd_link_info* %298, i32 %299, i32 0)
  %301 = icmp ne i32 %300, 0
  br i1 %301, label %304, label %302

302:                                              ; preds = %297
  %303 = load i64, i64* @FALSE, align 8
  store i64 %303, i64* %3, align 8
  br label %307

304:                                              ; preds = %297
  br label %305

305:                                              ; preds = %304, %191
  %306 = load i64, i64* @TRUE, align 8
  store i64 %306, i64* %3, align 8
  br label %307

307:                                              ; preds = %305, %302, %295, %288, %281, %274, %267, %259, %252, %245, %233, %225, %202, %182
  %308 = load i64, i64* %3, align 8
  ret i64 %308
}

declare dso_local %struct.TYPE_13__* @elf_hash_table(%struct.bfd_link_info*) #1

declare dso_local i32 @BFD_ASSERT(i32) #1

declare dso_local %struct.TYPE_12__* @bfd_get_section_by_name(%struct.TYPE_11__*, i8*) #1

declare dso_local i64 @strlen(i64) #1

declare dso_local i8* @bfd_get_section_name(%struct.TYPE_11__*, %struct.TYPE_12__*) #1

declare dso_local i64 @CONST_STRNEQ(i8*, i8*) #1

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i32* @bfd_zalloc(%struct.TYPE_11__*, i64) #1

declare dso_local i32 @bfd_set_error(i32) #1

declare dso_local i32 @SCORE_ELF_ADD_DYNAMIC_ENTRY(%struct.bfd_link_info*, i32, i32) #1

declare dso_local i64 @score_elf_rel_dyn_section(%struct.TYPE_11__*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

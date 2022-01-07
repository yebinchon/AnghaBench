; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/bfd/extr_elflink.c__bfd_elf_link_create_dynamic_sections.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/bfd/extr_elflink.c__bfd_elf_link_create_dynamic_sections.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bfd_link_info = type { i64, i64, i64, i32 }
%struct.elf_backend_data = type { i32, i32 (i32*, %struct.bfd_link_info.0*)*, %struct.TYPE_5__* }
%struct.bfd_link_info.0 = type opaque
%struct.TYPE_5__ = type { i32, i32, i32 }
%struct.TYPE_8__ = type { i64, i32* }
%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32 }

@FALSE = common dso_local global i64 0, align 8
@TRUE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [8 x i8] c".interp\00", align 1
@SEC_READONLY = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [15 x i8] c".gnu.version_d\00", align 1
@.str.2 = private unnamed_addr constant [13 x i8] c".gnu.version\00", align 1
@.str.3 = private unnamed_addr constant [15 x i8] c".gnu.version_r\00", align 1
@.str.4 = private unnamed_addr constant [8 x i8] c".dynsym\00", align 1
@.str.5 = private unnamed_addr constant [8 x i8] c".dynstr\00", align 1
@.str.6 = private unnamed_addr constant [9 x i8] c".dynamic\00", align 1
@.str.7 = private unnamed_addr constant [9 x i8] c"_DYNAMIC\00", align 1
@.str.8 = private unnamed_addr constant [6 x i8] c".hash\00", align 1
@.str.9 = private unnamed_addr constant [10 x i8] c".gnu.hash\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @_bfd_elf_link_create_dynamic_sections(i32* %0, %struct.bfd_link_info* %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca i32*, align 8
  %5 = alloca %struct.bfd_link_info*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca %struct.elf_backend_data*, align 8
  store i32* %0, i32** %4, align 8
  store %struct.bfd_link_info* %1, %struct.bfd_link_info** %5, align 8
  %9 = load %struct.bfd_link_info*, %struct.bfd_link_info** %5, align 8
  %10 = getelementptr inbounds %struct.bfd_link_info, %struct.bfd_link_info* %9, i32 0, i32 3
  %11 = load i32, i32* %10, align 8
  %12 = call i32 @is_elf_hash_table(i32 %11)
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %16, label %14

14:                                               ; preds = %2
  %15 = load i64, i64* @FALSE, align 8
  store i64 %15, i64* %3, align 8
  br label %262

16:                                               ; preds = %2
  %17 = load %struct.bfd_link_info*, %struct.bfd_link_info** %5, align 8
  %18 = call %struct.TYPE_8__* @elf_hash_table(%struct.bfd_link_info* %17)
  %19 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %24

22:                                               ; preds = %16
  %23 = load i64, i64* @TRUE, align 8
  store i64 %23, i64* %3, align 8
  br label %262

24:                                               ; preds = %16
  %25 = load i32*, i32** %4, align 8
  %26 = load %struct.bfd_link_info*, %struct.bfd_link_info** %5, align 8
  %27 = call i32 @_bfd_elf_link_create_dynstrtab(i32* %25, %struct.bfd_link_info* %26)
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %31, label %29

29:                                               ; preds = %24
  %30 = load i64, i64* @FALSE, align 8
  store i64 %30, i64* %3, align 8
  br label %262

31:                                               ; preds = %24
  %32 = load %struct.bfd_link_info*, %struct.bfd_link_info** %5, align 8
  %33 = call %struct.TYPE_8__* @elf_hash_table(%struct.bfd_link_info* %32)
  %34 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %33, i32 0, i32 1
  %35 = load i32*, i32** %34, align 8
  store i32* %35, i32** %4, align 8
  %36 = load i32*, i32** %4, align 8
  %37 = call %struct.elf_backend_data* @get_elf_backend_data(i32* %36)
  store %struct.elf_backend_data* %37, %struct.elf_backend_data** %8, align 8
  %38 = load %struct.elf_backend_data*, %struct.elf_backend_data** %8, align 8
  %39 = getelementptr inbounds %struct.elf_backend_data, %struct.elf_backend_data* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  store i32 %40, i32* %6, align 4
  %41 = load %struct.bfd_link_info*, %struct.bfd_link_info** %5, align 8
  %42 = getelementptr inbounds %struct.bfd_link_info, %struct.bfd_link_info* %41, i32 0, i32 2
  %43 = load i64, i64* %42, align 8
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %56

45:                                               ; preds = %31
  %46 = load i32*, i32** %4, align 8
  %47 = load i32, i32* %6, align 4
  %48 = load i32, i32* @SEC_READONLY, align 4
  %49 = or i32 %47, %48
  %50 = call i32* @bfd_make_section_with_flags(i32* %46, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i32 %49)
  store i32* %50, i32** %7, align 8
  %51 = load i32*, i32** %7, align 8
  %52 = icmp eq i32* %51, null
  br i1 %52, label %53, label %55

53:                                               ; preds = %45
  %54 = load i64, i64* @FALSE, align 8
  store i64 %54, i64* %3, align 8
  br label %262

55:                                               ; preds = %45
  br label %56

56:                                               ; preds = %55, %31
  %57 = load i32*, i32** %4, align 8
  %58 = load i32, i32* %6, align 4
  %59 = load i32, i32* @SEC_READONLY, align 4
  %60 = or i32 %58, %59
  %61 = call i32* @bfd_make_section_with_flags(i32* %57, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0), i32 %60)
  store i32* %61, i32** %7, align 8
  %62 = load i32*, i32** %7, align 8
  %63 = icmp eq i32* %62, null
  br i1 %63, label %74, label %64

64:                                               ; preds = %56
  %65 = load i32*, i32** %4, align 8
  %66 = load i32*, i32** %7, align 8
  %67 = load %struct.elf_backend_data*, %struct.elf_backend_data** %8, align 8
  %68 = getelementptr inbounds %struct.elf_backend_data, %struct.elf_backend_data* %67, i32 0, i32 2
  %69 = load %struct.TYPE_5__*, %struct.TYPE_5__** %68, align 8
  %70 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 4
  %72 = call i32 @bfd_set_section_alignment(i32* %65, i32* %66, i32 %71)
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %76, label %74

74:                                               ; preds = %64, %56
  %75 = load i64, i64* @FALSE, align 8
  store i64 %75, i64* %3, align 8
  br label %262

76:                                               ; preds = %64
  %77 = load i32*, i32** %4, align 8
  %78 = load i32, i32* %6, align 4
  %79 = load i32, i32* @SEC_READONLY, align 4
  %80 = or i32 %78, %79
  %81 = call i32* @bfd_make_section_with_flags(i32* %77, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0), i32 %80)
  store i32* %81, i32** %7, align 8
  %82 = load i32*, i32** %7, align 8
  %83 = icmp eq i32* %82, null
  br i1 %83, label %89, label %84

84:                                               ; preds = %76
  %85 = load i32*, i32** %4, align 8
  %86 = load i32*, i32** %7, align 8
  %87 = call i32 @bfd_set_section_alignment(i32* %85, i32* %86, i32 1)
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %91, label %89

89:                                               ; preds = %84, %76
  %90 = load i64, i64* @FALSE, align 8
  store i64 %90, i64* %3, align 8
  br label %262

91:                                               ; preds = %84
  %92 = load i32*, i32** %4, align 8
  %93 = load i32, i32* %6, align 4
  %94 = load i32, i32* @SEC_READONLY, align 4
  %95 = or i32 %93, %94
  %96 = call i32* @bfd_make_section_with_flags(i32* %92, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.3, i64 0, i64 0), i32 %95)
  store i32* %96, i32** %7, align 8
  %97 = load i32*, i32** %7, align 8
  %98 = icmp eq i32* %97, null
  br i1 %98, label %109, label %99

99:                                               ; preds = %91
  %100 = load i32*, i32** %4, align 8
  %101 = load i32*, i32** %7, align 8
  %102 = load %struct.elf_backend_data*, %struct.elf_backend_data** %8, align 8
  %103 = getelementptr inbounds %struct.elf_backend_data, %struct.elf_backend_data* %102, i32 0, i32 2
  %104 = load %struct.TYPE_5__*, %struct.TYPE_5__** %103, align 8
  %105 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %104, i32 0, i32 0
  %106 = load i32, i32* %105, align 4
  %107 = call i32 @bfd_set_section_alignment(i32* %100, i32* %101, i32 %106)
  %108 = icmp ne i32 %107, 0
  br i1 %108, label %111, label %109

109:                                              ; preds = %99, %91
  %110 = load i64, i64* @FALSE, align 8
  store i64 %110, i64* %3, align 8
  br label %262

111:                                              ; preds = %99
  %112 = load i32*, i32** %4, align 8
  %113 = load i32, i32* %6, align 4
  %114 = load i32, i32* @SEC_READONLY, align 4
  %115 = or i32 %113, %114
  %116 = call i32* @bfd_make_section_with_flags(i32* %112, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i64 0, i64 0), i32 %115)
  store i32* %116, i32** %7, align 8
  %117 = load i32*, i32** %7, align 8
  %118 = icmp eq i32* %117, null
  br i1 %118, label %129, label %119

119:                                              ; preds = %111
  %120 = load i32*, i32** %4, align 8
  %121 = load i32*, i32** %7, align 8
  %122 = load %struct.elf_backend_data*, %struct.elf_backend_data** %8, align 8
  %123 = getelementptr inbounds %struct.elf_backend_data, %struct.elf_backend_data* %122, i32 0, i32 2
  %124 = load %struct.TYPE_5__*, %struct.TYPE_5__** %123, align 8
  %125 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %124, i32 0, i32 0
  %126 = load i32, i32* %125, align 4
  %127 = call i32 @bfd_set_section_alignment(i32* %120, i32* %121, i32 %126)
  %128 = icmp ne i32 %127, 0
  br i1 %128, label %131, label %129

129:                                              ; preds = %119, %111
  %130 = load i64, i64* @FALSE, align 8
  store i64 %130, i64* %3, align 8
  br label %262

131:                                              ; preds = %119
  %132 = load i32*, i32** %4, align 8
  %133 = load i32, i32* %6, align 4
  %134 = load i32, i32* @SEC_READONLY, align 4
  %135 = or i32 %133, %134
  %136 = call i32* @bfd_make_section_with_flags(i32* %132, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i64 0, i64 0), i32 %135)
  store i32* %136, i32** %7, align 8
  %137 = load i32*, i32** %7, align 8
  %138 = icmp eq i32* %137, null
  br i1 %138, label %139, label %141

139:                                              ; preds = %131
  %140 = load i64, i64* @FALSE, align 8
  store i64 %140, i64* %3, align 8
  br label %262

141:                                              ; preds = %131
  %142 = load i32*, i32** %4, align 8
  %143 = load i32, i32* %6, align 4
  %144 = call i32* @bfd_make_section_with_flags(i32* %142, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.6, i64 0, i64 0), i32 %143)
  store i32* %144, i32** %7, align 8
  %145 = load i32*, i32** %7, align 8
  %146 = icmp eq i32* %145, null
  br i1 %146, label %157, label %147

147:                                              ; preds = %141
  %148 = load i32*, i32** %4, align 8
  %149 = load i32*, i32** %7, align 8
  %150 = load %struct.elf_backend_data*, %struct.elf_backend_data** %8, align 8
  %151 = getelementptr inbounds %struct.elf_backend_data, %struct.elf_backend_data* %150, i32 0, i32 2
  %152 = load %struct.TYPE_5__*, %struct.TYPE_5__** %151, align 8
  %153 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %152, i32 0, i32 0
  %154 = load i32, i32* %153, align 4
  %155 = call i32 @bfd_set_section_alignment(i32* %148, i32* %149, i32 %154)
  %156 = icmp ne i32 %155, 0
  br i1 %156, label %159, label %157

157:                                              ; preds = %147, %141
  %158 = load i64, i64* @FALSE, align 8
  store i64 %158, i64* %3, align 8
  br label %262

159:                                              ; preds = %147
  %160 = load i32*, i32** %4, align 8
  %161 = load %struct.bfd_link_info*, %struct.bfd_link_info** %5, align 8
  %162 = load i32*, i32** %7, align 8
  %163 = call i32 @_bfd_elf_define_linkage_sym(i32* %160, %struct.bfd_link_info* %161, i32* %162, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.7, i64 0, i64 0))
  %164 = icmp ne i32 %163, 0
  br i1 %164, label %167, label %165

165:                                              ; preds = %159
  %166 = load i64, i64* @FALSE, align 8
  store i64 %166, i64* %3, align 8
  br label %262

167:                                              ; preds = %159
  %168 = load %struct.bfd_link_info*, %struct.bfd_link_info** %5, align 8
  %169 = getelementptr inbounds %struct.bfd_link_info, %struct.bfd_link_info* %168, i32 0, i32 1
  %170 = load i64, i64* %169, align 8
  %171 = icmp ne i64 %170, 0
  br i1 %171, label %172, label %202

172:                                              ; preds = %167
  %173 = load i32*, i32** %4, align 8
  %174 = load i32, i32* %6, align 4
  %175 = load i32, i32* @SEC_READONLY, align 4
  %176 = or i32 %174, %175
  %177 = call i32* @bfd_make_section_with_flags(i32* %173, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.8, i64 0, i64 0), i32 %176)
  store i32* %177, i32** %7, align 8
  %178 = load i32*, i32** %7, align 8
  %179 = icmp eq i32* %178, null
  br i1 %179, label %190, label %180

180:                                              ; preds = %172
  %181 = load i32*, i32** %4, align 8
  %182 = load i32*, i32** %7, align 8
  %183 = load %struct.elf_backend_data*, %struct.elf_backend_data** %8, align 8
  %184 = getelementptr inbounds %struct.elf_backend_data, %struct.elf_backend_data* %183, i32 0, i32 2
  %185 = load %struct.TYPE_5__*, %struct.TYPE_5__** %184, align 8
  %186 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %185, i32 0, i32 0
  %187 = load i32, i32* %186, align 4
  %188 = call i32 @bfd_set_section_alignment(i32* %181, i32* %182, i32 %187)
  %189 = icmp ne i32 %188, 0
  br i1 %189, label %192, label %190

190:                                              ; preds = %180, %172
  %191 = load i64, i64* @FALSE, align 8
  store i64 %191, i64* %3, align 8
  br label %262

192:                                              ; preds = %180
  %193 = load %struct.elf_backend_data*, %struct.elf_backend_data** %8, align 8
  %194 = getelementptr inbounds %struct.elf_backend_data, %struct.elf_backend_data* %193, i32 0, i32 2
  %195 = load %struct.TYPE_5__*, %struct.TYPE_5__** %194, align 8
  %196 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %195, i32 0, i32 1
  %197 = load i32, i32* %196, align 4
  %198 = load i32*, i32** %7, align 8
  %199 = call %struct.TYPE_7__* @elf_section_data(i32* %198)
  %200 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %199, i32 0, i32 0
  %201 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %200, i32 0, i32 0
  store i32 %197, i32* %201, align 4
  br label %202

202:                                              ; preds = %192, %167
  %203 = load %struct.bfd_link_info*, %struct.bfd_link_info** %5, align 8
  %204 = getelementptr inbounds %struct.bfd_link_info, %struct.bfd_link_info* %203, i32 0, i32 0
  %205 = load i64, i64* %204, align 8
  %206 = icmp ne i64 %205, 0
  br i1 %206, label %207, label %245

207:                                              ; preds = %202
  %208 = load i32*, i32** %4, align 8
  %209 = load i32, i32* %6, align 4
  %210 = load i32, i32* @SEC_READONLY, align 4
  %211 = or i32 %209, %210
  %212 = call i32* @bfd_make_section_with_flags(i32* %208, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.9, i64 0, i64 0), i32 %211)
  store i32* %212, i32** %7, align 8
  %213 = load i32*, i32** %7, align 8
  %214 = icmp eq i32* %213, null
  br i1 %214, label %225, label %215

215:                                              ; preds = %207
  %216 = load i32*, i32** %4, align 8
  %217 = load i32*, i32** %7, align 8
  %218 = load %struct.elf_backend_data*, %struct.elf_backend_data** %8, align 8
  %219 = getelementptr inbounds %struct.elf_backend_data, %struct.elf_backend_data* %218, i32 0, i32 2
  %220 = load %struct.TYPE_5__*, %struct.TYPE_5__** %219, align 8
  %221 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %220, i32 0, i32 0
  %222 = load i32, i32* %221, align 4
  %223 = call i32 @bfd_set_section_alignment(i32* %216, i32* %217, i32 %222)
  %224 = icmp ne i32 %223, 0
  br i1 %224, label %227, label %225

225:                                              ; preds = %215, %207
  %226 = load i64, i64* @FALSE, align 8
  store i64 %226, i64* %3, align 8
  br label %262

227:                                              ; preds = %215
  %228 = load %struct.elf_backend_data*, %struct.elf_backend_data** %8, align 8
  %229 = getelementptr inbounds %struct.elf_backend_data, %struct.elf_backend_data* %228, i32 0, i32 2
  %230 = load %struct.TYPE_5__*, %struct.TYPE_5__** %229, align 8
  %231 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %230, i32 0, i32 2
  %232 = load i32, i32* %231, align 4
  %233 = icmp eq i32 %232, 64
  br i1 %233, label %234, label %239

234:                                              ; preds = %227
  %235 = load i32*, i32** %7, align 8
  %236 = call %struct.TYPE_7__* @elf_section_data(i32* %235)
  %237 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %236, i32 0, i32 0
  %238 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %237, i32 0, i32 0
  store i32 0, i32* %238, align 4
  br label %244

239:                                              ; preds = %227
  %240 = load i32*, i32** %7, align 8
  %241 = call %struct.TYPE_7__* @elf_section_data(i32* %240)
  %242 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %241, i32 0, i32 0
  %243 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %242, i32 0, i32 0
  store i32 4, i32* %243, align 4
  br label %244

244:                                              ; preds = %239, %234
  br label %245

245:                                              ; preds = %244, %202
  %246 = load %struct.elf_backend_data*, %struct.elf_backend_data** %8, align 8
  %247 = getelementptr inbounds %struct.elf_backend_data, %struct.elf_backend_data* %246, i32 0, i32 1
  %248 = load i32 (i32*, %struct.bfd_link_info.0*)*, i32 (i32*, %struct.bfd_link_info.0*)** %247, align 8
  %249 = load i32*, i32** %4, align 8
  %250 = load %struct.bfd_link_info*, %struct.bfd_link_info** %5, align 8
  %251 = bitcast %struct.bfd_link_info* %250 to %struct.bfd_link_info.0*
  %252 = call i32 %248(i32* %249, %struct.bfd_link_info.0* %251)
  %253 = icmp ne i32 %252, 0
  br i1 %253, label %256, label %254

254:                                              ; preds = %245
  %255 = load i64, i64* @FALSE, align 8
  store i64 %255, i64* %3, align 8
  br label %262

256:                                              ; preds = %245
  %257 = load i64, i64* @TRUE, align 8
  %258 = load %struct.bfd_link_info*, %struct.bfd_link_info** %5, align 8
  %259 = call %struct.TYPE_8__* @elf_hash_table(%struct.bfd_link_info* %258)
  %260 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %259, i32 0, i32 0
  store i64 %257, i64* %260, align 8
  %261 = load i64, i64* @TRUE, align 8
  store i64 %261, i64* %3, align 8
  br label %262

262:                                              ; preds = %256, %254, %225, %190, %165, %157, %139, %129, %109, %89, %74, %53, %29, %22, %14
  %263 = load i64, i64* %3, align 8
  ret i64 %263
}

declare dso_local i32 @is_elf_hash_table(i32) #1

declare dso_local %struct.TYPE_8__* @elf_hash_table(%struct.bfd_link_info*) #1

declare dso_local i32 @_bfd_elf_link_create_dynstrtab(i32*, %struct.bfd_link_info*) #1

declare dso_local %struct.elf_backend_data* @get_elf_backend_data(i32*) #1

declare dso_local i32* @bfd_make_section_with_flags(i32*, i8*, i32) #1

declare dso_local i32 @bfd_set_section_alignment(i32*, i32*, i32) #1

declare dso_local i32 @_bfd_elf_define_linkage_sym(i32*, %struct.bfd_link_info*, i32*, i8*) #1

declare dso_local %struct.TYPE_7__* @elf_section_data(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/bfd/extr_elfcode.h_bfd_elf64_slurp_symbol_table.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/bfd/extr_elfcode.h_bfd_elf64_slurp_symbol_table.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_41__ = type { i64 }
%struct.TYPE_42__ = type { i32, i32 }
%struct.TYPE_45__ = type { i32, i8*, i32 }
%struct.TYPE_40__ = type { %struct.TYPE_38__, i32, i32 }
%struct.TYPE_38__ = type { i32, %struct.TYPE_41__*, i32, i32, %struct.TYPE_42__* }
%struct.TYPE_44__ = type { i64, i32, i32, i32 }
%struct.elf_backend_data = type { i32 (%struct.TYPE_42__*, %struct.TYPE_40__*, i64)*, i32 (%struct.TYPE_42__*, %struct.TYPE_38__*)* }
%struct.TYPE_43__ = type { i32 }
%struct.TYPE_39__ = type { i64, i64, i32*, i32*, %struct.TYPE_45__, %struct.TYPE_45__, %struct.TYPE_45__ }

@FALSE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [58 x i8] c"%s: version count (%ld) does not match symbol count (%ld)\00", align 1
@SEEK_SET = common dso_local global i32 0, align 4
@SHN_UNDEF = common dso_local global i64 0, align 8
@bfd_und_section_ptr = common dso_local global %struct.TYPE_41__* null, align 8
@SHN_LORESERVE = common dso_local global i64 0, align 8
@SHN_HIRESERVE = common dso_local global i64 0, align 8
@bfd_abs_section_ptr = common dso_local global i8* null, align 8
@SHN_ABS = common dso_local global i64 0, align 8
@SHN_COMMON = common dso_local global i64 0, align 8
@bfd_com_section_ptr = common dso_local global %struct.TYPE_41__* null, align 8
@EXEC_P = common dso_local global i32 0, align 4
@DYNAMIC = common dso_local global i32 0, align 4
@BSF_LOCAL = common dso_local global i32 0, align 4
@BSF_GLOBAL = common dso_local global i32 0, align 4
@BSF_WEAK = common dso_local global i32 0, align 4
@BSF_SECTION_SYM = common dso_local global i32 0, align 4
@BSF_DEBUGGING = common dso_local global i32 0, align 4
@BSF_FILE = common dso_local global i32 0, align 4
@BSF_FUNCTION = common dso_local global i32 0, align 4
@BSF_OBJECT = common dso_local global i32 0, align 4
@BSF_THREAD_LOCAL = common dso_local global i32 0, align 4
@BSF_RELC = common dso_local global i32 0, align 4
@BSF_SRELC = common dso_local global i32 0, align 4
@BSF_DYNAMIC = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @elf_slurp_symbol_table(%struct.TYPE_42__* %0, i32** %1, i64 %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca %struct.TYPE_42__*, align 8
  %6 = alloca i32**, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.TYPE_45__*, align 8
  %9 = alloca %struct.TYPE_45__*, align 8
  %10 = alloca i64, align 8
  %11 = alloca %struct.TYPE_40__*, align 8
  %12 = alloca %struct.TYPE_40__*, align 8
  %13 = alloca %struct.TYPE_44__*, align 8
  %14 = alloca %struct.TYPE_44__*, align 8
  %15 = alloca %struct.TYPE_44__*, align 8
  %16 = alloca %struct.TYPE_44__*, align 8
  %17 = alloca %struct.TYPE_44__*, align 8
  %18 = alloca %struct.elf_backend_data*, align 8
  %19 = alloca i32, align 4
  %20 = alloca %struct.TYPE_43__, align 4
  %21 = alloca i64, align 8
  store %struct.TYPE_42__* %0, %struct.TYPE_42__** %5, align 8
  store i32** %1, i32*** %6, align 8
  store i64 %2, i64* %7, align 8
  store %struct.TYPE_44__* null, %struct.TYPE_44__** %15, align 8
  store %struct.TYPE_44__* null, %struct.TYPE_44__** %17, align 8
  %22 = load i64, i64* %7, align 8
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %28, label %24

24:                                               ; preds = %3
  %25 = load %struct.TYPE_42__*, %struct.TYPE_42__** %5, align 8
  %26 = call %struct.TYPE_39__* @elf_tdata(%struct.TYPE_42__* %25)
  %27 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %26, i32 0, i32 6
  store %struct.TYPE_45__* %27, %struct.TYPE_45__** %8, align 8
  store %struct.TYPE_45__* null, %struct.TYPE_45__** %9, align 8
  br label %72

28:                                               ; preds = %3
  %29 = load %struct.TYPE_42__*, %struct.TYPE_42__** %5, align 8
  %30 = call %struct.TYPE_39__* @elf_tdata(%struct.TYPE_42__* %29)
  %31 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %30, i32 0, i32 5
  store %struct.TYPE_45__* %31, %struct.TYPE_45__** %8, align 8
  %32 = load %struct.TYPE_42__*, %struct.TYPE_42__** %5, align 8
  %33 = call i64 @elf_dynversym(%struct.TYPE_42__* %32)
  %34 = icmp eq i64 %33, 0
  br i1 %34, label %35, label %36

35:                                               ; preds = %28
  store %struct.TYPE_45__* null, %struct.TYPE_45__** %9, align 8
  br label %40

36:                                               ; preds = %28
  %37 = load %struct.TYPE_42__*, %struct.TYPE_42__** %5, align 8
  %38 = call %struct.TYPE_39__* @elf_tdata(%struct.TYPE_42__* %37)
  %39 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %38, i32 0, i32 4
  store %struct.TYPE_45__* %39, %struct.TYPE_45__** %9, align 8
  br label %40

40:                                               ; preds = %36, %35
  %41 = load %struct.TYPE_42__*, %struct.TYPE_42__** %5, align 8
  %42 = call %struct.TYPE_39__* @elf_tdata(%struct.TYPE_42__* %41)
  %43 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %52

46:                                               ; preds = %40
  %47 = load %struct.TYPE_42__*, %struct.TYPE_42__** %5, align 8
  %48 = call %struct.TYPE_39__* @elf_tdata(%struct.TYPE_42__* %47)
  %49 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %48, i32 0, i32 3
  %50 = load i32*, i32** %49, align 8
  %51 = icmp eq i32* %50, null
  br i1 %51, label %64, label %52

52:                                               ; preds = %46, %40
  %53 = load %struct.TYPE_42__*, %struct.TYPE_42__** %5, align 8
  %54 = call %struct.TYPE_39__* @elf_tdata(%struct.TYPE_42__* %53)
  %55 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %54, i32 0, i32 1
  %56 = load i64, i64* %55, align 8
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %71

58:                                               ; preds = %52
  %59 = load %struct.TYPE_42__*, %struct.TYPE_42__** %5, align 8
  %60 = call %struct.TYPE_39__* @elf_tdata(%struct.TYPE_42__* %59)
  %61 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %60, i32 0, i32 2
  %62 = load i32*, i32** %61, align 8
  %63 = icmp eq i32* %62, null
  br i1 %63, label %64, label %71

64:                                               ; preds = %58, %46
  %65 = load %struct.TYPE_42__*, %struct.TYPE_42__** %5, align 8
  %66 = load i32, i32* @FALSE, align 4
  %67 = call i32 @_bfd_elf_slurp_version_tables(%struct.TYPE_42__* %65, i32 %66)
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %70, label %69

69:                                               ; preds = %64
  store i64 -1, i64* %4, align 8
  br label %529

70:                                               ; preds = %64
  br label %71

71:                                               ; preds = %70, %58, %52
  br label %72

72:                                               ; preds = %71, %24
  %73 = load %struct.TYPE_42__*, %struct.TYPE_42__** %5, align 8
  %74 = call %struct.elf_backend_data* @get_elf_backend_data(%struct.TYPE_42__* %73)
  store %struct.elf_backend_data* %74, %struct.elf_backend_data** %18, align 8
  %75 = load %struct.TYPE_45__*, %struct.TYPE_45__** %8, align 8
  %76 = getelementptr inbounds %struct.TYPE_45__, %struct.TYPE_45__* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 8
  %78 = sext i32 %77 to i64
  %79 = udiv i64 %78, 4
  store i64 %79, i64* %10, align 8
  %80 = load i64, i64* %10, align 8
  %81 = icmp eq i64 %80, 0
  br i1 %81, label %82, label %83

82:                                               ; preds = %72
  store %struct.TYPE_40__* null, %struct.TYPE_40__** %12, align 8
  store %struct.TYPE_40__* null, %struct.TYPE_40__** %11, align 8
  br label %449

83:                                               ; preds = %72
  %84 = load %struct.TYPE_42__*, %struct.TYPE_42__** %5, align 8
  %85 = load %struct.TYPE_45__*, %struct.TYPE_45__** %8, align 8
  %86 = load i64, i64* %10, align 8
  %87 = call %struct.TYPE_44__* @bfd_elf_get_elf_syms(%struct.TYPE_42__* %84, %struct.TYPE_45__* %85, i64 %86, i32 0, i32* null, i32* null, i32* null)
  store %struct.TYPE_44__* %87, %struct.TYPE_44__** %15, align 8
  %88 = load %struct.TYPE_44__*, %struct.TYPE_44__** %15, align 8
  %89 = icmp eq %struct.TYPE_44__* %88, null
  br i1 %89, label %90, label %91

90:                                               ; preds = %83
  store i64 -1, i64* %4, align 8
  br label %529

91:                                               ; preds = %83
  %92 = load i64, i64* %10, align 8
  %93 = trunc i64 %92 to i32
  store i32 %93, i32* %19, align 4
  %94 = load i32, i32* %19, align 4
  %95 = sext i32 %94 to i64
  %96 = mul i64 %95, 40
  %97 = trunc i64 %96 to i32
  store i32 %97, i32* %19, align 4
  %98 = load %struct.TYPE_42__*, %struct.TYPE_42__** %5, align 8
  %99 = load i32, i32* %19, align 4
  %100 = call %struct.TYPE_40__* @bfd_zalloc(%struct.TYPE_42__* %98, i32 %99)
  store %struct.TYPE_40__* %100, %struct.TYPE_40__** %12, align 8
  %101 = load %struct.TYPE_40__*, %struct.TYPE_40__** %12, align 8
  %102 = icmp eq %struct.TYPE_40__* %101, null
  br i1 %102, label %103, label %104

103:                                              ; preds = %91
  br label %509

104:                                              ; preds = %91
  %105 = load %struct.TYPE_45__*, %struct.TYPE_45__** %9, align 8
  %106 = icmp ne %struct.TYPE_45__* %105, null
  br i1 %106, label %107, label %127

107:                                              ; preds = %104
  %108 = load %struct.TYPE_45__*, %struct.TYPE_45__** %9, align 8
  %109 = getelementptr inbounds %struct.TYPE_45__, %struct.TYPE_45__* %108, i32 0, i32 0
  %110 = load i32, i32* %109, align 8
  %111 = sext i32 %110 to i64
  %112 = udiv i64 %111, 24
  %113 = load i64, i64* %10, align 8
  %114 = icmp ne i64 %112, %113
  br i1 %114, label %115, label %127

115:                                              ; preds = %107
  %116 = call i32 @_(i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str, i64 0, i64 0))
  %117 = load %struct.TYPE_42__*, %struct.TYPE_42__** %5, align 8
  %118 = getelementptr inbounds %struct.TYPE_42__, %struct.TYPE_42__* %117, i32 0, i32 1
  %119 = load i32, i32* %118, align 4
  %120 = load %struct.TYPE_45__*, %struct.TYPE_45__** %9, align 8
  %121 = getelementptr inbounds %struct.TYPE_45__, %struct.TYPE_45__* %120, i32 0, i32 0
  %122 = load i32, i32* %121, align 8
  %123 = sext i32 %122 to i64
  %124 = udiv i64 %123, 24
  %125 = load i64, i64* %10, align 8
  %126 = call i32 @_bfd_error_handler(i32 %116, i32 %119, i64 %124, i64 %125)
  store %struct.TYPE_45__* null, %struct.TYPE_45__** %9, align 8
  br label %127

127:                                              ; preds = %115, %107, %104
  %128 = load %struct.TYPE_45__*, %struct.TYPE_45__** %9, align 8
  %129 = icmp ne %struct.TYPE_45__* %128, null
  br i1 %129, label %130, label %165

130:                                              ; preds = %127
  %131 = load %struct.TYPE_42__*, %struct.TYPE_42__** %5, align 8
  %132 = load %struct.TYPE_45__*, %struct.TYPE_45__** %9, align 8
  %133 = getelementptr inbounds %struct.TYPE_45__, %struct.TYPE_45__* %132, i32 0, i32 2
  %134 = load i32, i32* %133, align 8
  %135 = load i32, i32* @SEEK_SET, align 4
  %136 = call i64 @bfd_seek(%struct.TYPE_42__* %131, i32 %134, i32 %135)
  %137 = icmp ne i64 %136, 0
  br i1 %137, label %138, label %139

138:                                              ; preds = %130
  br label %509

139:                                              ; preds = %130
  %140 = load %struct.TYPE_45__*, %struct.TYPE_45__** %9, align 8
  %141 = getelementptr inbounds %struct.TYPE_45__, %struct.TYPE_45__* %140, i32 0, i32 0
  %142 = load i32, i32* %141, align 8
  %143 = call %struct.TYPE_44__* @bfd_malloc(i32 %142)
  store %struct.TYPE_44__* %143, %struct.TYPE_44__** %17, align 8
  %144 = load %struct.TYPE_44__*, %struct.TYPE_44__** %17, align 8
  %145 = icmp eq %struct.TYPE_44__* %144, null
  br i1 %145, label %146, label %152

146:                                              ; preds = %139
  %147 = load %struct.TYPE_45__*, %struct.TYPE_45__** %9, align 8
  %148 = getelementptr inbounds %struct.TYPE_45__, %struct.TYPE_45__* %147, i32 0, i32 0
  %149 = load i32, i32* %148, align 8
  %150 = icmp ne i32 %149, 0
  br i1 %150, label %151, label %152

151:                                              ; preds = %146
  br label %509

152:                                              ; preds = %146, %139
  %153 = load %struct.TYPE_44__*, %struct.TYPE_44__** %17, align 8
  %154 = load %struct.TYPE_45__*, %struct.TYPE_45__** %9, align 8
  %155 = getelementptr inbounds %struct.TYPE_45__, %struct.TYPE_45__* %154, i32 0, i32 0
  %156 = load i32, i32* %155, align 8
  %157 = load %struct.TYPE_42__*, %struct.TYPE_42__** %5, align 8
  %158 = call i32 @bfd_bread(%struct.TYPE_44__* %153, i32 %156, %struct.TYPE_42__* %157)
  %159 = load %struct.TYPE_45__*, %struct.TYPE_45__** %9, align 8
  %160 = getelementptr inbounds %struct.TYPE_45__, %struct.TYPE_45__* %159, i32 0, i32 0
  %161 = load i32, i32* %160, align 8
  %162 = icmp ne i32 %158, %161
  br i1 %162, label %163, label %164

163:                                              ; preds = %152
  br label %509

164:                                              ; preds = %152
  br label %165

165:                                              ; preds = %164, %127
  %166 = load %struct.TYPE_44__*, %struct.TYPE_44__** %17, align 8
  store %struct.TYPE_44__* %166, %struct.TYPE_44__** %16, align 8
  %167 = load %struct.TYPE_44__*, %struct.TYPE_44__** %16, align 8
  %168 = icmp ne %struct.TYPE_44__* %167, null
  br i1 %168, label %169, label %172

169:                                              ; preds = %165
  %170 = load %struct.TYPE_44__*, %struct.TYPE_44__** %16, align 8
  %171 = getelementptr inbounds %struct.TYPE_44__, %struct.TYPE_44__* %170, i32 1
  store %struct.TYPE_44__* %171, %struct.TYPE_44__** %16, align 8
  br label %172

172:                                              ; preds = %169, %165
  %173 = load %struct.TYPE_44__*, %struct.TYPE_44__** %15, align 8
  %174 = load i64, i64* %10, align 8
  %175 = getelementptr inbounds %struct.TYPE_44__, %struct.TYPE_44__* %173, i64 %174
  store %struct.TYPE_44__* %175, %struct.TYPE_44__** %14, align 8
  %176 = load %struct.TYPE_44__*, %struct.TYPE_44__** %15, align 8
  %177 = getelementptr inbounds %struct.TYPE_44__, %struct.TYPE_44__* %176, i64 1
  store %struct.TYPE_44__* %177, %struct.TYPE_44__** %13, align 8
  %178 = load %struct.TYPE_40__*, %struct.TYPE_40__** %12, align 8
  store %struct.TYPE_40__* %178, %struct.TYPE_40__** %11, align 8
  br label %179

179:                                              ; preds = %443, %172
  %180 = load %struct.TYPE_44__*, %struct.TYPE_44__** %13, align 8
  %181 = load %struct.TYPE_44__*, %struct.TYPE_44__** %14, align 8
  %182 = icmp ult %struct.TYPE_44__* %180, %181
  br i1 %182, label %183, label %448

183:                                              ; preds = %179
  %184 = load %struct.TYPE_40__*, %struct.TYPE_40__** %11, align 8
  %185 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %184, i32 0, i32 2
  %186 = load %struct.TYPE_44__*, %struct.TYPE_44__** %13, align 8
  %187 = call i32 @memcpy(i32* %185, %struct.TYPE_44__* %186, i32 24)
  %188 = load %struct.TYPE_42__*, %struct.TYPE_42__** %5, align 8
  %189 = load %struct.TYPE_40__*, %struct.TYPE_40__** %11, align 8
  %190 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %189, i32 0, i32 0
  %191 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %190, i32 0, i32 4
  store %struct.TYPE_42__* %188, %struct.TYPE_42__** %191, align 8
  %192 = load %struct.TYPE_42__*, %struct.TYPE_42__** %5, align 8
  %193 = load %struct.TYPE_45__*, %struct.TYPE_45__** %8, align 8
  %194 = load %struct.TYPE_44__*, %struct.TYPE_44__** %13, align 8
  %195 = call i32 @bfd_elf_sym_name(%struct.TYPE_42__* %192, %struct.TYPE_45__* %193, %struct.TYPE_44__* %194, i32* null)
  %196 = load %struct.TYPE_40__*, %struct.TYPE_40__** %11, align 8
  %197 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %196, i32 0, i32 0
  %198 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %197, i32 0, i32 3
  store i32 %195, i32* %198, align 4
  %199 = load %struct.TYPE_44__*, %struct.TYPE_44__** %13, align 8
  %200 = getelementptr inbounds %struct.TYPE_44__, %struct.TYPE_44__* %199, i32 0, i32 3
  %201 = load i32, i32* %200, align 8
  %202 = load %struct.TYPE_40__*, %struct.TYPE_40__** %11, align 8
  %203 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %202, i32 0, i32 0
  %204 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %203, i32 0, i32 2
  store i32 %201, i32* %204, align 8
  %205 = load %struct.TYPE_44__*, %struct.TYPE_44__** %13, align 8
  %206 = getelementptr inbounds %struct.TYPE_44__, %struct.TYPE_44__* %205, i32 0, i32 0
  %207 = load i64, i64* %206, align 8
  %208 = load i64, i64* @SHN_UNDEF, align 8
  %209 = icmp eq i64 %207, %208
  br i1 %209, label %210, label %215

210:                                              ; preds = %183
  %211 = load %struct.TYPE_41__*, %struct.TYPE_41__** @bfd_und_section_ptr, align 8
  %212 = load %struct.TYPE_40__*, %struct.TYPE_40__** %11, align 8
  %213 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %212, i32 0, i32 0
  %214 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %213, i32 0, i32 1
  store %struct.TYPE_41__* %211, %struct.TYPE_41__** %214, align 8
  br label %286

215:                                              ; preds = %183
  %216 = load %struct.TYPE_44__*, %struct.TYPE_44__** %13, align 8
  %217 = getelementptr inbounds %struct.TYPE_44__, %struct.TYPE_44__* %216, i32 0, i32 0
  %218 = load i64, i64* %217, align 8
  %219 = load i64, i64* @SHN_LORESERVE, align 8
  %220 = icmp slt i64 %218, %219
  br i1 %220, label %227, label %221

221:                                              ; preds = %215
  %222 = load %struct.TYPE_44__*, %struct.TYPE_44__** %13, align 8
  %223 = getelementptr inbounds %struct.TYPE_44__, %struct.TYPE_44__* %222, i32 0, i32 0
  %224 = load i64, i64* %223, align 8
  %225 = load i64, i64* @SHN_HIRESERVE, align 8
  %226 = icmp sgt i64 %224, %225
  br i1 %226, label %227, label %248

227:                                              ; preds = %221, %215
  %228 = load %struct.TYPE_42__*, %struct.TYPE_42__** %5, align 8
  %229 = load %struct.TYPE_44__*, %struct.TYPE_44__** %13, align 8
  %230 = getelementptr inbounds %struct.TYPE_44__, %struct.TYPE_44__* %229, i32 0, i32 0
  %231 = load i64, i64* %230, align 8
  %232 = call %struct.TYPE_41__* @bfd_section_from_elf_index(%struct.TYPE_42__* %228, i64 %231)
  %233 = load %struct.TYPE_40__*, %struct.TYPE_40__** %11, align 8
  %234 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %233, i32 0, i32 0
  %235 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %234, i32 0, i32 1
  store %struct.TYPE_41__* %232, %struct.TYPE_41__** %235, align 8
  %236 = load %struct.TYPE_40__*, %struct.TYPE_40__** %11, align 8
  %237 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %236, i32 0, i32 0
  %238 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %237, i32 0, i32 1
  %239 = load %struct.TYPE_41__*, %struct.TYPE_41__** %238, align 8
  %240 = icmp eq %struct.TYPE_41__* %239, null
  br i1 %240, label %241, label %247

241:                                              ; preds = %227
  %242 = load i8*, i8** @bfd_abs_section_ptr, align 8
  %243 = bitcast i8* %242 to %struct.TYPE_41__*
  %244 = load %struct.TYPE_40__*, %struct.TYPE_40__** %11, align 8
  %245 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %244, i32 0, i32 0
  %246 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %245, i32 0, i32 1
  store %struct.TYPE_41__* %243, %struct.TYPE_41__** %246, align 8
  br label %247

247:                                              ; preds = %241, %227
  br label %285

248:                                              ; preds = %221
  %249 = load %struct.TYPE_44__*, %struct.TYPE_44__** %13, align 8
  %250 = getelementptr inbounds %struct.TYPE_44__, %struct.TYPE_44__* %249, i32 0, i32 0
  %251 = load i64, i64* %250, align 8
  %252 = load i64, i64* @SHN_ABS, align 8
  %253 = icmp eq i64 %251, %252
  br i1 %253, label %254, label %260

254:                                              ; preds = %248
  %255 = load i8*, i8** @bfd_abs_section_ptr, align 8
  %256 = bitcast i8* %255 to %struct.TYPE_41__*
  %257 = load %struct.TYPE_40__*, %struct.TYPE_40__** %11, align 8
  %258 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %257, i32 0, i32 0
  %259 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %258, i32 0, i32 1
  store %struct.TYPE_41__* %256, %struct.TYPE_41__** %259, align 8
  br label %284

260:                                              ; preds = %248
  %261 = load %struct.TYPE_44__*, %struct.TYPE_44__** %13, align 8
  %262 = getelementptr inbounds %struct.TYPE_44__, %struct.TYPE_44__* %261, i32 0, i32 0
  %263 = load i64, i64* %262, align 8
  %264 = load i64, i64* @SHN_COMMON, align 8
  %265 = icmp eq i64 %263, %264
  br i1 %265, label %266, label %277

266:                                              ; preds = %260
  %267 = load %struct.TYPE_41__*, %struct.TYPE_41__** @bfd_com_section_ptr, align 8
  %268 = load %struct.TYPE_40__*, %struct.TYPE_40__** %11, align 8
  %269 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %268, i32 0, i32 0
  %270 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %269, i32 0, i32 1
  store %struct.TYPE_41__* %267, %struct.TYPE_41__** %270, align 8
  %271 = load %struct.TYPE_44__*, %struct.TYPE_44__** %13, align 8
  %272 = getelementptr inbounds %struct.TYPE_44__, %struct.TYPE_44__* %271, i32 0, i32 2
  %273 = load i32, i32* %272, align 4
  %274 = load %struct.TYPE_40__*, %struct.TYPE_40__** %11, align 8
  %275 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %274, i32 0, i32 0
  %276 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %275, i32 0, i32 2
  store i32 %273, i32* %276, align 8
  br label %283

277:                                              ; preds = %260
  %278 = load i8*, i8** @bfd_abs_section_ptr, align 8
  %279 = bitcast i8* %278 to %struct.TYPE_41__*
  %280 = load %struct.TYPE_40__*, %struct.TYPE_40__** %11, align 8
  %281 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %280, i32 0, i32 0
  %282 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %281, i32 0, i32 1
  store %struct.TYPE_41__* %279, %struct.TYPE_41__** %282, align 8
  br label %283

283:                                              ; preds = %277, %266
  br label %284

284:                                              ; preds = %283, %254
  br label %285

285:                                              ; preds = %284, %247
  br label %286

286:                                              ; preds = %285, %210
  %287 = load %struct.TYPE_42__*, %struct.TYPE_42__** %5, align 8
  %288 = getelementptr inbounds %struct.TYPE_42__, %struct.TYPE_42__* %287, i32 0, i32 0
  %289 = load i32, i32* %288, align 4
  %290 = load i32, i32* @EXEC_P, align 4
  %291 = load i32, i32* @DYNAMIC, align 4
  %292 = or i32 %290, %291
  %293 = and i32 %289, %292
  %294 = icmp ne i32 %293, 0
  br i1 %294, label %295, label %309

295:                                              ; preds = %286
  %296 = load %struct.TYPE_40__*, %struct.TYPE_40__** %11, align 8
  %297 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %296, i32 0, i32 0
  %298 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %297, i32 0, i32 1
  %299 = load %struct.TYPE_41__*, %struct.TYPE_41__** %298, align 8
  %300 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %299, i32 0, i32 0
  %301 = load i64, i64* %300, align 8
  %302 = load %struct.TYPE_40__*, %struct.TYPE_40__** %11, align 8
  %303 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %302, i32 0, i32 0
  %304 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %303, i32 0, i32 2
  %305 = load i32, i32* %304, align 8
  %306 = sext i32 %305 to i64
  %307 = sub nsw i64 %306, %301
  %308 = trunc i64 %307 to i32
  store i32 %308, i32* %304, align 8
  br label %309

309:                                              ; preds = %295, %286
  %310 = load %struct.TYPE_44__*, %struct.TYPE_44__** %13, align 8
  %311 = getelementptr inbounds %struct.TYPE_44__, %struct.TYPE_44__* %310, i32 0, i32 1
  %312 = load i32, i32* %311, align 8
  %313 = call i32 @ELF_ST_BIND(i32 %312)
  switch i32 %313, label %348 [
    i32 136, label %314
    i32 137, label %321
    i32 135, label %341
  ]

314:                                              ; preds = %309
  %315 = load i32, i32* @BSF_LOCAL, align 4
  %316 = load %struct.TYPE_40__*, %struct.TYPE_40__** %11, align 8
  %317 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %316, i32 0, i32 0
  %318 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %317, i32 0, i32 0
  %319 = load i32, i32* %318, align 8
  %320 = or i32 %319, %315
  store i32 %320, i32* %318, align 8
  br label %348

321:                                              ; preds = %309
  %322 = load %struct.TYPE_44__*, %struct.TYPE_44__** %13, align 8
  %323 = getelementptr inbounds %struct.TYPE_44__, %struct.TYPE_44__* %322, i32 0, i32 0
  %324 = load i64, i64* %323, align 8
  %325 = load i64, i64* @SHN_UNDEF, align 8
  %326 = icmp ne i64 %324, %325
  br i1 %326, label %327, label %340

327:                                              ; preds = %321
  %328 = load %struct.TYPE_44__*, %struct.TYPE_44__** %13, align 8
  %329 = getelementptr inbounds %struct.TYPE_44__, %struct.TYPE_44__* %328, i32 0, i32 0
  %330 = load i64, i64* %329, align 8
  %331 = load i64, i64* @SHN_COMMON, align 8
  %332 = icmp ne i64 %330, %331
  br i1 %332, label %333, label %340

333:                                              ; preds = %327
  %334 = load i32, i32* @BSF_GLOBAL, align 4
  %335 = load %struct.TYPE_40__*, %struct.TYPE_40__** %11, align 8
  %336 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %335, i32 0, i32 0
  %337 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %336, i32 0, i32 0
  %338 = load i32, i32* %337, align 8
  %339 = or i32 %338, %334
  store i32 %339, i32* %337, align 8
  br label %340

340:                                              ; preds = %333, %327, %321
  br label %348

341:                                              ; preds = %309
  %342 = load i32, i32* @BSF_WEAK, align 4
  %343 = load %struct.TYPE_40__*, %struct.TYPE_40__** %11, align 8
  %344 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %343, i32 0, i32 0
  %345 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %344, i32 0, i32 0
  %346 = load i32, i32* %345, align 8
  %347 = or i32 %346, %342
  store i32 %347, i32* %345, align 8
  br label %348

348:                                              ; preds = %309, %341, %340, %314
  %349 = load %struct.TYPE_44__*, %struct.TYPE_44__** %13, align 8
  %350 = getelementptr inbounds %struct.TYPE_44__, %struct.TYPE_44__* %349, i32 0, i32 1
  %351 = load i32, i32* %350, align 8
  %352 = call i32 @ELF_ST_TYPE(i32 %351)
  switch i32 %352, label %406 [
    i32 130, label %353
    i32 134, label %362
    i32 133, label %371
    i32 132, label %378
    i32 128, label %385
    i32 131, label %392
    i32 129, label %399
  ]

353:                                              ; preds = %348
  %354 = load i32, i32* @BSF_SECTION_SYM, align 4
  %355 = load i32, i32* @BSF_DEBUGGING, align 4
  %356 = or i32 %354, %355
  %357 = load %struct.TYPE_40__*, %struct.TYPE_40__** %11, align 8
  %358 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %357, i32 0, i32 0
  %359 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %358, i32 0, i32 0
  %360 = load i32, i32* %359, align 8
  %361 = or i32 %360, %356
  store i32 %361, i32* %359, align 8
  br label %406

362:                                              ; preds = %348
  %363 = load i32, i32* @BSF_FILE, align 4
  %364 = load i32, i32* @BSF_DEBUGGING, align 4
  %365 = or i32 %363, %364
  %366 = load %struct.TYPE_40__*, %struct.TYPE_40__** %11, align 8
  %367 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %366, i32 0, i32 0
  %368 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %367, i32 0, i32 0
  %369 = load i32, i32* %368, align 8
  %370 = or i32 %369, %365
  store i32 %370, i32* %368, align 8
  br label %406

371:                                              ; preds = %348
  %372 = load i32, i32* @BSF_FUNCTION, align 4
  %373 = load %struct.TYPE_40__*, %struct.TYPE_40__** %11, align 8
  %374 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %373, i32 0, i32 0
  %375 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %374, i32 0, i32 0
  %376 = load i32, i32* %375, align 8
  %377 = or i32 %376, %372
  store i32 %377, i32* %375, align 8
  br label %406

378:                                              ; preds = %348
  %379 = load i32, i32* @BSF_OBJECT, align 4
  %380 = load %struct.TYPE_40__*, %struct.TYPE_40__** %11, align 8
  %381 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %380, i32 0, i32 0
  %382 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %381, i32 0, i32 0
  %383 = load i32, i32* %382, align 8
  %384 = or i32 %383, %379
  store i32 %384, i32* %382, align 8
  br label %406

385:                                              ; preds = %348
  %386 = load i32, i32* @BSF_THREAD_LOCAL, align 4
  %387 = load %struct.TYPE_40__*, %struct.TYPE_40__** %11, align 8
  %388 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %387, i32 0, i32 0
  %389 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %388, i32 0, i32 0
  %390 = load i32, i32* %389, align 8
  %391 = or i32 %390, %386
  store i32 %391, i32* %389, align 8
  br label %406

392:                                              ; preds = %348
  %393 = load i32, i32* @BSF_RELC, align 4
  %394 = load %struct.TYPE_40__*, %struct.TYPE_40__** %11, align 8
  %395 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %394, i32 0, i32 0
  %396 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %395, i32 0, i32 0
  %397 = load i32, i32* %396, align 8
  %398 = or i32 %397, %393
  store i32 %398, i32* %396, align 8
  br label %406

399:                                              ; preds = %348
  %400 = load i32, i32* @BSF_SRELC, align 4
  %401 = load %struct.TYPE_40__*, %struct.TYPE_40__** %11, align 8
  %402 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %401, i32 0, i32 0
  %403 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %402, i32 0, i32 0
  %404 = load i32, i32* %403, align 8
  %405 = or i32 %404, %400
  store i32 %405, i32* %403, align 8
  br label %406

406:                                              ; preds = %348, %399, %392, %385, %378, %371, %362, %353
  %407 = load i64, i64* %7, align 8
  %408 = icmp ne i64 %407, 0
  br i1 %408, label %409, label %416

409:                                              ; preds = %406
  %410 = load i32, i32* @BSF_DYNAMIC, align 4
  %411 = load %struct.TYPE_40__*, %struct.TYPE_40__** %11, align 8
  %412 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %411, i32 0, i32 0
  %413 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %412, i32 0, i32 0
  %414 = load i32, i32* %413, align 8
  %415 = or i32 %414, %410
  store i32 %415, i32* %413, align 8
  br label %416

416:                                              ; preds = %409, %406
  %417 = load %struct.TYPE_44__*, %struct.TYPE_44__** %16, align 8
  %418 = icmp ne %struct.TYPE_44__* %417, null
  br i1 %418, label %419, label %429

419:                                              ; preds = %416
  %420 = load %struct.TYPE_42__*, %struct.TYPE_42__** %5, align 8
  %421 = load %struct.TYPE_44__*, %struct.TYPE_44__** %16, align 8
  %422 = call i32 @_bfd_elf_swap_versym_in(%struct.TYPE_42__* %420, %struct.TYPE_44__* %421, %struct.TYPE_43__* %20)
  %423 = getelementptr inbounds %struct.TYPE_43__, %struct.TYPE_43__* %20, i32 0, i32 0
  %424 = load i32, i32* %423, align 4
  %425 = load %struct.TYPE_40__*, %struct.TYPE_40__** %11, align 8
  %426 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %425, i32 0, i32 1
  store i32 %424, i32* %426, align 8
  %427 = load %struct.TYPE_44__*, %struct.TYPE_44__** %16, align 8
  %428 = getelementptr inbounds %struct.TYPE_44__, %struct.TYPE_44__* %427, i32 1
  store %struct.TYPE_44__* %428, %struct.TYPE_44__** %16, align 8
  br label %429

429:                                              ; preds = %419, %416
  %430 = load %struct.elf_backend_data*, %struct.elf_backend_data** %18, align 8
  %431 = getelementptr inbounds %struct.elf_backend_data, %struct.elf_backend_data* %430, i32 0, i32 1
  %432 = load i32 (%struct.TYPE_42__*, %struct.TYPE_38__*)*, i32 (%struct.TYPE_42__*, %struct.TYPE_38__*)** %431, align 8
  %433 = icmp ne i32 (%struct.TYPE_42__*, %struct.TYPE_38__*)* %432, null
  br i1 %433, label %434, label %442

434:                                              ; preds = %429
  %435 = load %struct.elf_backend_data*, %struct.elf_backend_data** %18, align 8
  %436 = getelementptr inbounds %struct.elf_backend_data, %struct.elf_backend_data* %435, i32 0, i32 1
  %437 = load i32 (%struct.TYPE_42__*, %struct.TYPE_38__*)*, i32 (%struct.TYPE_42__*, %struct.TYPE_38__*)** %436, align 8
  %438 = load %struct.TYPE_42__*, %struct.TYPE_42__** %5, align 8
  %439 = load %struct.TYPE_40__*, %struct.TYPE_40__** %11, align 8
  %440 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %439, i32 0, i32 0
  %441 = call i32 %437(%struct.TYPE_42__* %438, %struct.TYPE_38__* %440)
  br label %442

442:                                              ; preds = %434, %429
  br label %443

443:                                              ; preds = %442
  %444 = load %struct.TYPE_44__*, %struct.TYPE_44__** %13, align 8
  %445 = getelementptr inbounds %struct.TYPE_44__, %struct.TYPE_44__* %444, i32 1
  store %struct.TYPE_44__* %445, %struct.TYPE_44__** %13, align 8
  %446 = load %struct.TYPE_40__*, %struct.TYPE_40__** %11, align 8
  %447 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %446, i32 1
  store %struct.TYPE_40__* %447, %struct.TYPE_40__** %11, align 8
  br label %179

448:                                              ; preds = %179
  br label %449

449:                                              ; preds = %448, %82
  %450 = load %struct.elf_backend_data*, %struct.elf_backend_data** %18, align 8
  %451 = getelementptr inbounds %struct.elf_backend_data, %struct.elf_backend_data* %450, i32 0, i32 0
  %452 = load i32 (%struct.TYPE_42__*, %struct.TYPE_40__*, i64)*, i32 (%struct.TYPE_42__*, %struct.TYPE_40__*, i64)** %451, align 8
  %453 = icmp ne i32 (%struct.TYPE_42__*, %struct.TYPE_40__*, i64)* %452, null
  br i1 %453, label %454, label %462

454:                                              ; preds = %449
  %455 = load %struct.elf_backend_data*, %struct.elf_backend_data** %18, align 8
  %456 = getelementptr inbounds %struct.elf_backend_data, %struct.elf_backend_data* %455, i32 0, i32 0
  %457 = load i32 (%struct.TYPE_42__*, %struct.TYPE_40__*, i64)*, i32 (%struct.TYPE_42__*, %struct.TYPE_40__*, i64)** %456, align 8
  %458 = load %struct.TYPE_42__*, %struct.TYPE_42__** %5, align 8
  %459 = load %struct.TYPE_40__*, %struct.TYPE_40__** %12, align 8
  %460 = load i64, i64* %10, align 8
  %461 = call i32 %457(%struct.TYPE_42__* %458, %struct.TYPE_40__* %459, i64 %460)
  br label %462

462:                                              ; preds = %454, %449
  %463 = load %struct.TYPE_40__*, %struct.TYPE_40__** %11, align 8
  %464 = load %struct.TYPE_40__*, %struct.TYPE_40__** %12, align 8
  %465 = ptrtoint %struct.TYPE_40__* %463 to i64
  %466 = ptrtoint %struct.TYPE_40__* %464 to i64
  %467 = sub i64 %465, %466
  %468 = sdiv exact i64 %467, 40
  store i64 %468, i64* %10, align 8
  %469 = load i32**, i32*** %6, align 8
  %470 = icmp ne i32** %469, null
  br i1 %470, label %471, label %488

471:                                              ; preds = %462
  %472 = load i64, i64* %10, align 8
  store i64 %472, i64* %21, align 8
  %473 = load %struct.TYPE_40__*, %struct.TYPE_40__** %12, align 8
  store %struct.TYPE_40__* %473, %struct.TYPE_40__** %11, align 8
  br label %474

474:                                              ; preds = %478, %471
  %475 = load i64, i64* %21, align 8
  %476 = add nsw i64 %475, -1
  store i64 %476, i64* %21, align 8
  %477 = icmp sgt i64 %475, 0
  br i1 %477, label %478, label %486

478:                                              ; preds = %474
  %479 = load %struct.TYPE_40__*, %struct.TYPE_40__** %11, align 8
  %480 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %479, i32 0, i32 0
  %481 = bitcast %struct.TYPE_38__* %480 to i32*
  %482 = load i32**, i32*** %6, align 8
  %483 = getelementptr inbounds i32*, i32** %482, i32 1
  store i32** %483, i32*** %6, align 8
  store i32* %481, i32** %482, align 8
  %484 = load %struct.TYPE_40__*, %struct.TYPE_40__** %11, align 8
  %485 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %484, i32 1
  store %struct.TYPE_40__* %485, %struct.TYPE_40__** %11, align 8
  br label %474

486:                                              ; preds = %474
  %487 = load i32**, i32*** %6, align 8
  store i32* null, i32** %487, align 8
  br label %488

488:                                              ; preds = %486, %462
  %489 = load %struct.TYPE_44__*, %struct.TYPE_44__** %17, align 8
  %490 = icmp ne %struct.TYPE_44__* %489, null
  br i1 %490, label %491, label %494

491:                                              ; preds = %488
  %492 = load %struct.TYPE_44__*, %struct.TYPE_44__** %17, align 8
  %493 = call i32 @free(%struct.TYPE_44__* %492)
  br label %494

494:                                              ; preds = %491, %488
  %495 = load %struct.TYPE_44__*, %struct.TYPE_44__** %15, align 8
  %496 = icmp ne %struct.TYPE_44__* %495, null
  br i1 %496, label %497, label %507

497:                                              ; preds = %494
  %498 = load %struct.TYPE_45__*, %struct.TYPE_45__** %8, align 8
  %499 = getelementptr inbounds %struct.TYPE_45__, %struct.TYPE_45__* %498, i32 0, i32 1
  %500 = load i8*, i8** %499, align 8
  %501 = load %struct.TYPE_44__*, %struct.TYPE_44__** %15, align 8
  %502 = bitcast %struct.TYPE_44__* %501 to i8*
  %503 = icmp ne i8* %500, %502
  br i1 %503, label %504, label %507

504:                                              ; preds = %497
  %505 = load %struct.TYPE_44__*, %struct.TYPE_44__** %15, align 8
  %506 = call i32 @free(%struct.TYPE_44__* %505)
  br label %507

507:                                              ; preds = %504, %497, %494
  %508 = load i64, i64* %10, align 8
  store i64 %508, i64* %4, align 8
  br label %529

509:                                              ; preds = %163, %151, %138, %103
  %510 = load %struct.TYPE_44__*, %struct.TYPE_44__** %17, align 8
  %511 = icmp ne %struct.TYPE_44__* %510, null
  br i1 %511, label %512, label %515

512:                                              ; preds = %509
  %513 = load %struct.TYPE_44__*, %struct.TYPE_44__** %17, align 8
  %514 = call i32 @free(%struct.TYPE_44__* %513)
  br label %515

515:                                              ; preds = %512, %509
  %516 = load %struct.TYPE_44__*, %struct.TYPE_44__** %15, align 8
  %517 = icmp ne %struct.TYPE_44__* %516, null
  br i1 %517, label %518, label %528

518:                                              ; preds = %515
  %519 = load %struct.TYPE_45__*, %struct.TYPE_45__** %8, align 8
  %520 = getelementptr inbounds %struct.TYPE_45__, %struct.TYPE_45__* %519, i32 0, i32 1
  %521 = load i8*, i8** %520, align 8
  %522 = load %struct.TYPE_44__*, %struct.TYPE_44__** %15, align 8
  %523 = bitcast %struct.TYPE_44__* %522 to i8*
  %524 = icmp ne i8* %521, %523
  br i1 %524, label %525, label %528

525:                                              ; preds = %518
  %526 = load %struct.TYPE_44__*, %struct.TYPE_44__** %15, align 8
  %527 = call i32 @free(%struct.TYPE_44__* %526)
  br label %528

528:                                              ; preds = %525, %518, %515
  store i64 -1, i64* %4, align 8
  br label %529

529:                                              ; preds = %528, %507, %90, %69
  %530 = load i64, i64* %4, align 8
  ret i64 %530
}

declare dso_local %struct.TYPE_39__* @elf_tdata(%struct.TYPE_42__*) #1

declare dso_local i64 @elf_dynversym(%struct.TYPE_42__*) #1

declare dso_local i32 @_bfd_elf_slurp_version_tables(%struct.TYPE_42__*, i32) #1

declare dso_local %struct.elf_backend_data* @get_elf_backend_data(%struct.TYPE_42__*) #1

declare dso_local %struct.TYPE_44__* @bfd_elf_get_elf_syms(%struct.TYPE_42__*, %struct.TYPE_45__*, i64, i32, i32*, i32*, i32*) #1

declare dso_local %struct.TYPE_40__* @bfd_zalloc(%struct.TYPE_42__*, i32) #1

declare dso_local i32 @_bfd_error_handler(i32, i32, i64, i64) #1

declare dso_local i32 @_(i8*) #1

declare dso_local i64 @bfd_seek(%struct.TYPE_42__*, i32, i32) #1

declare dso_local %struct.TYPE_44__* @bfd_malloc(i32) #1

declare dso_local i32 @bfd_bread(%struct.TYPE_44__*, i32, %struct.TYPE_42__*) #1

declare dso_local i32 @memcpy(i32*, %struct.TYPE_44__*, i32) #1

declare dso_local i32 @bfd_elf_sym_name(%struct.TYPE_42__*, %struct.TYPE_45__*, %struct.TYPE_44__*, i32*) #1

declare dso_local %struct.TYPE_41__* @bfd_section_from_elf_index(%struct.TYPE_42__*, i64) #1

declare dso_local i32 @ELF_ST_BIND(i32) #1

declare dso_local i32 @ELF_ST_TYPE(i32) #1

declare dso_local i32 @_bfd_elf_swap_versym_in(%struct.TYPE_42__*, %struct.TYPE_44__*, %struct.TYPE_43__*) #1

declare dso_local i32 @free(%struct.TYPE_44__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

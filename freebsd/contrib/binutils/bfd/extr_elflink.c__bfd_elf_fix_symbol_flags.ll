; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/bfd/extr_elflink.c__bfd_elf_fix_symbol_flags.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/bfd/extr_elflink.c__bfd_elf_fix_symbol_flags.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.elf_link_hash_entry = type { i32, i32, i32, i32, i32, %struct.TYPE_20__, %struct.TYPE_23__, i32, i64, i64, i64 }
%struct.TYPE_20__ = type { %struct.elf_link_hash_entry* }
%struct.TYPE_23__ = type { i64, %struct.TYPE_22__ }
%struct.TYPE_22__ = type { %struct.TYPE_21__, %struct.TYPE_19__ }
%struct.TYPE_21__ = type { i64 }
%struct.TYPE_19__ = type { %struct.TYPE_17__* }
%struct.TYPE_17__ = type { %struct.TYPE_18__* }
%struct.TYPE_18__ = type { i32 }
%struct.elf_info_failed = type { i32, %struct.TYPE_24__* }
%struct.TYPE_24__ = type { i32, i64 }
%struct.elf_backend_data = type { i32 (%struct.TYPE_24__*, %struct.elf_link_hash_entry*, %struct.elf_link_hash_entry*)*, i32 (%struct.TYPE_24__*, %struct.elf_link_hash_entry*, i32)*, i32 (%struct.TYPE_24__*, %struct.elf_link_hash_entry*)* }
%struct.TYPE_16__ = type { i64 }

@bfd_link_hash_indirect = common dso_local global i64 0, align 8
@bfd_link_hash_defined = common dso_local global i64 0, align 8
@bfd_link_hash_defweak = common dso_local global i64 0, align 8
@bfd_target_elf_flavour = common dso_local global i64 0, align 8
@TRUE = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@DYNAMIC = common dso_local global i32 0, align 4
@STV_DEFAULT = common dso_local global i64 0, align 8
@STV_INTERNAL = common dso_local global i64 0, align 8
@STV_HIDDEN = common dso_local global i64 0, align 8
@bfd_link_hash_undefweak = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @_bfd_elf_fix_symbol_flags(%struct.elf_link_hash_entry* %0, %struct.elf_info_failed* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.elf_link_hash_entry*, align 8
  %5 = alloca %struct.elf_info_failed*, align 8
  %6 = alloca %struct.elf_backend_data*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.elf_backend_data*, align 8
  %9 = alloca %struct.elf_link_hash_entry*, align 8
  store %struct.elf_link_hash_entry* %0, %struct.elf_link_hash_entry** %4, align 8
  store %struct.elf_info_failed* %1, %struct.elf_info_failed** %5, align 8
  store %struct.elf_backend_data* null, %struct.elf_backend_data** %6, align 8
  %10 = load %struct.elf_link_hash_entry*, %struct.elf_link_hash_entry** %4, align 8
  %11 = getelementptr inbounds %struct.elf_link_hash_entry, %struct.elf_link_hash_entry* %10, i32 0, i32 10
  %12 = load i64, i64* %11, align 8
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %109

14:                                               ; preds = %2
  br label %15

15:                                               ; preds = %22, %14
  %16 = load %struct.elf_link_hash_entry*, %struct.elf_link_hash_entry** %4, align 8
  %17 = getelementptr inbounds %struct.elf_link_hash_entry, %struct.elf_link_hash_entry* %16, i32 0, i32 6
  %18 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = load i64, i64* @bfd_link_hash_indirect, align 8
  %21 = icmp eq i64 %19, %20
  br i1 %21, label %22, label %30

22:                                               ; preds = %15
  %23 = load %struct.elf_link_hash_entry*, %struct.elf_link_hash_entry** %4, align 8
  %24 = getelementptr inbounds %struct.elf_link_hash_entry, %struct.elf_link_hash_entry* %23, i32 0, i32 6
  %25 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %24, i32 0, i32 1
  %26 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = inttoptr i64 %28 to %struct.elf_link_hash_entry*
  store %struct.elf_link_hash_entry* %29, %struct.elf_link_hash_entry** %4, align 8
  br label %15

30:                                               ; preds = %15
  %31 = load %struct.elf_link_hash_entry*, %struct.elf_link_hash_entry** %4, align 8
  %32 = getelementptr inbounds %struct.elf_link_hash_entry, %struct.elf_link_hash_entry* %31, i32 0, i32 6
  %33 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = load i64, i64* @bfd_link_hash_defined, align 8
  %36 = icmp ne i64 %34, %35
  br i1 %36, label %37, label %49

37:                                               ; preds = %30
  %38 = load %struct.elf_link_hash_entry*, %struct.elf_link_hash_entry** %4, align 8
  %39 = getelementptr inbounds %struct.elf_link_hash_entry, %struct.elf_link_hash_entry* %38, i32 0, i32 6
  %40 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = load i64, i64* @bfd_link_hash_defweak, align 8
  %43 = icmp ne i64 %41, %42
  br i1 %43, label %44, label %49

44:                                               ; preds = %37
  %45 = load %struct.elf_link_hash_entry*, %struct.elf_link_hash_entry** %4, align 8
  %46 = getelementptr inbounds %struct.elf_link_hash_entry, %struct.elf_link_hash_entry* %45, i32 0, i32 0
  store i32 1, i32* %46, align 8
  %47 = load %struct.elf_link_hash_entry*, %struct.elf_link_hash_entry** %4, align 8
  %48 = getelementptr inbounds %struct.elf_link_hash_entry, %struct.elf_link_hash_entry* %47, i32 0, i32 1
  store i32 1, i32* %48, align 4
  br label %80

49:                                               ; preds = %37, %30
  %50 = load %struct.elf_link_hash_entry*, %struct.elf_link_hash_entry** %4, align 8
  %51 = getelementptr inbounds %struct.elf_link_hash_entry, %struct.elf_link_hash_entry* %50, i32 0, i32 6
  %52 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %51, i32 0, i32 1
  %53 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %52, i32 0, i32 1
  %54 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %53, i32 0, i32 0
  %55 = load %struct.TYPE_17__*, %struct.TYPE_17__** %54, align 8
  %56 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %55, i32 0, i32 0
  %57 = load %struct.TYPE_18__*, %struct.TYPE_18__** %56, align 8
  %58 = icmp ne %struct.TYPE_18__* %57, null
  br i1 %58, label %59, label %76

59:                                               ; preds = %49
  %60 = load %struct.elf_link_hash_entry*, %struct.elf_link_hash_entry** %4, align 8
  %61 = getelementptr inbounds %struct.elf_link_hash_entry, %struct.elf_link_hash_entry* %60, i32 0, i32 6
  %62 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %61, i32 0, i32 1
  %63 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %62, i32 0, i32 1
  %64 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %63, i32 0, i32 0
  %65 = load %struct.TYPE_17__*, %struct.TYPE_17__** %64, align 8
  %66 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %65, i32 0, i32 0
  %67 = load %struct.TYPE_18__*, %struct.TYPE_18__** %66, align 8
  %68 = call i64 @bfd_get_flavour(%struct.TYPE_18__* %67)
  %69 = load i64, i64* @bfd_target_elf_flavour, align 8
  %70 = icmp eq i64 %68, %69
  br i1 %70, label %71, label %76

71:                                               ; preds = %59
  %72 = load %struct.elf_link_hash_entry*, %struct.elf_link_hash_entry** %4, align 8
  %73 = getelementptr inbounds %struct.elf_link_hash_entry, %struct.elf_link_hash_entry* %72, i32 0, i32 0
  store i32 1, i32* %73, align 8
  %74 = load %struct.elf_link_hash_entry*, %struct.elf_link_hash_entry** %4, align 8
  %75 = getelementptr inbounds %struct.elf_link_hash_entry, %struct.elf_link_hash_entry* %74, i32 0, i32 1
  store i32 1, i32* %75, align 4
  br label %79

76:                                               ; preds = %59, %49
  %77 = load %struct.elf_link_hash_entry*, %struct.elf_link_hash_entry** %4, align 8
  %78 = getelementptr inbounds %struct.elf_link_hash_entry, %struct.elf_link_hash_entry* %77, i32 0, i32 2
  store i32 1, i32* %78, align 8
  br label %79

79:                                               ; preds = %76, %71
  br label %80

80:                                               ; preds = %79, %44
  %81 = load %struct.elf_link_hash_entry*, %struct.elf_link_hash_entry** %4, align 8
  %82 = getelementptr inbounds %struct.elf_link_hash_entry, %struct.elf_link_hash_entry* %81, i32 0, i32 3
  %83 = load i32, i32* %82, align 4
  %84 = icmp eq i32 %83, -1
  br i1 %84, label %85, label %108

85:                                               ; preds = %80
  %86 = load %struct.elf_link_hash_entry*, %struct.elf_link_hash_entry** %4, align 8
  %87 = getelementptr inbounds %struct.elf_link_hash_entry, %struct.elf_link_hash_entry* %86, i32 0, i32 4
  %88 = load i32, i32* %87, align 8
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %95, label %90

90:                                               ; preds = %85
  %91 = load %struct.elf_link_hash_entry*, %struct.elf_link_hash_entry** %4, align 8
  %92 = getelementptr inbounds %struct.elf_link_hash_entry, %struct.elf_link_hash_entry* %91, i32 0, i32 9
  %93 = load i64, i64* %92, align 8
  %94 = icmp ne i64 %93, 0
  br i1 %94, label %95, label %108

95:                                               ; preds = %90, %85
  %96 = load %struct.elf_info_failed*, %struct.elf_info_failed** %5, align 8
  %97 = getelementptr inbounds %struct.elf_info_failed, %struct.elf_info_failed* %96, i32 0, i32 1
  %98 = load %struct.TYPE_24__*, %struct.TYPE_24__** %97, align 8
  %99 = load %struct.elf_link_hash_entry*, %struct.elf_link_hash_entry** %4, align 8
  %100 = call i32 @bfd_elf_link_record_dynamic_symbol(%struct.TYPE_24__* %98, %struct.elf_link_hash_entry* %99)
  %101 = icmp ne i32 %100, 0
  br i1 %101, label %107, label %102

102:                                              ; preds = %95
  %103 = load i32, i32* @TRUE, align 4
  %104 = load %struct.elf_info_failed*, %struct.elf_info_failed** %5, align 8
  %105 = getelementptr inbounds %struct.elf_info_failed, %struct.elf_info_failed* %104, i32 0, i32 0
  store i32 %103, i32* %105, align 8
  %106 = load i32, i32* @FALSE, align 4
  store i32 %106, i32* %3, align 4
  br label %421

107:                                              ; preds = %95
  br label %108

108:                                              ; preds = %107, %90, %80
  br label %168

109:                                              ; preds = %2
  %110 = load %struct.elf_link_hash_entry*, %struct.elf_link_hash_entry** %4, align 8
  %111 = getelementptr inbounds %struct.elf_link_hash_entry, %struct.elf_link_hash_entry* %110, i32 0, i32 6
  %112 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %111, i32 0, i32 0
  %113 = load i64, i64* %112, align 8
  %114 = load i64, i64* @bfd_link_hash_defined, align 8
  %115 = icmp eq i64 %113, %114
  br i1 %115, label %123, label %116

116:                                              ; preds = %109
  %117 = load %struct.elf_link_hash_entry*, %struct.elf_link_hash_entry** %4, align 8
  %118 = getelementptr inbounds %struct.elf_link_hash_entry, %struct.elf_link_hash_entry* %117, i32 0, i32 6
  %119 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %118, i32 0, i32 0
  %120 = load i64, i64* %119, align 8
  %121 = load i64, i64* @bfd_link_hash_defweak, align 8
  %122 = icmp eq i64 %120, %121
  br i1 %122, label %123, label %167

123:                                              ; preds = %116, %109
  %124 = load %struct.elf_link_hash_entry*, %struct.elf_link_hash_entry** %4, align 8
  %125 = getelementptr inbounds %struct.elf_link_hash_entry, %struct.elf_link_hash_entry* %124, i32 0, i32 2
  %126 = load i32, i32* %125, align 8
  %127 = icmp ne i32 %126, 0
  br i1 %127, label %167, label %128

128:                                              ; preds = %123
  %129 = load %struct.elf_link_hash_entry*, %struct.elf_link_hash_entry** %4, align 8
  %130 = getelementptr inbounds %struct.elf_link_hash_entry, %struct.elf_link_hash_entry* %129, i32 0, i32 6
  %131 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %130, i32 0, i32 1
  %132 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %131, i32 0, i32 1
  %133 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %132, i32 0, i32 0
  %134 = load %struct.TYPE_17__*, %struct.TYPE_17__** %133, align 8
  %135 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %134, i32 0, i32 0
  %136 = load %struct.TYPE_18__*, %struct.TYPE_18__** %135, align 8
  %137 = icmp ne %struct.TYPE_18__* %136, null
  br i1 %137, label %138, label %150

138:                                              ; preds = %128
  %139 = load %struct.elf_link_hash_entry*, %struct.elf_link_hash_entry** %4, align 8
  %140 = getelementptr inbounds %struct.elf_link_hash_entry, %struct.elf_link_hash_entry* %139, i32 0, i32 6
  %141 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %140, i32 0, i32 1
  %142 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %141, i32 0, i32 1
  %143 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %142, i32 0, i32 0
  %144 = load %struct.TYPE_17__*, %struct.TYPE_17__** %143, align 8
  %145 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %144, i32 0, i32 0
  %146 = load %struct.TYPE_18__*, %struct.TYPE_18__** %145, align 8
  %147 = call i64 @bfd_get_flavour(%struct.TYPE_18__* %146)
  %148 = load i64, i64* @bfd_target_elf_flavour, align 8
  %149 = icmp ne i64 %147, %148
  br i1 %149, label %164, label %167

150:                                              ; preds = %128
  %151 = load %struct.elf_link_hash_entry*, %struct.elf_link_hash_entry** %4, align 8
  %152 = getelementptr inbounds %struct.elf_link_hash_entry, %struct.elf_link_hash_entry* %151, i32 0, i32 6
  %153 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %152, i32 0, i32 1
  %154 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %153, i32 0, i32 1
  %155 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %154, i32 0, i32 0
  %156 = load %struct.TYPE_17__*, %struct.TYPE_17__** %155, align 8
  %157 = call i64 @bfd_is_abs_section(%struct.TYPE_17__* %156)
  %158 = icmp ne i64 %157, 0
  br i1 %158, label %159, label %167

159:                                              ; preds = %150
  %160 = load %struct.elf_link_hash_entry*, %struct.elf_link_hash_entry** %4, align 8
  %161 = getelementptr inbounds %struct.elf_link_hash_entry, %struct.elf_link_hash_entry* %160, i32 0, i32 4
  %162 = load i32, i32* %161, align 8
  %163 = icmp ne i32 %162, 0
  br i1 %163, label %167, label %164

164:                                              ; preds = %159, %138
  %165 = load %struct.elf_link_hash_entry*, %struct.elf_link_hash_entry** %4, align 8
  %166 = getelementptr inbounds %struct.elf_link_hash_entry, %struct.elf_link_hash_entry* %165, i32 0, i32 2
  store i32 1, i32* %166, align 8
  br label %167

167:                                              ; preds = %164, %159, %150, %138, %123, %116
  br label %168

168:                                              ; preds = %167, %108
  %169 = load %struct.elf_info_failed*, %struct.elf_info_failed** %5, align 8
  %170 = getelementptr inbounds %struct.elf_info_failed, %struct.elf_info_failed* %169, i32 0, i32 1
  %171 = load %struct.TYPE_24__*, %struct.TYPE_24__** %170, align 8
  %172 = call %struct.TYPE_16__* @elf_hash_table(%struct.TYPE_24__* %171)
  %173 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %172, i32 0, i32 0
  %174 = load i64, i64* %173, align 8
  %175 = icmp ne i64 %174, 0
  br i1 %175, label %176, label %201

176:                                              ; preds = %168
  %177 = load %struct.elf_info_failed*, %struct.elf_info_failed** %5, align 8
  %178 = getelementptr inbounds %struct.elf_info_failed, %struct.elf_info_failed* %177, i32 0, i32 1
  %179 = load %struct.TYPE_24__*, %struct.TYPE_24__** %178, align 8
  %180 = call %struct.TYPE_16__* @elf_hash_table(%struct.TYPE_24__* %179)
  %181 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %180, i32 0, i32 0
  %182 = load i64, i64* %181, align 8
  %183 = call %struct.elf_backend_data* @get_elf_backend_data(i64 %182)
  store %struct.elf_backend_data* %183, %struct.elf_backend_data** %6, align 8
  %184 = load %struct.elf_backend_data*, %struct.elf_backend_data** %6, align 8
  %185 = getelementptr inbounds %struct.elf_backend_data, %struct.elf_backend_data* %184, i32 0, i32 2
  %186 = load i32 (%struct.TYPE_24__*, %struct.elf_link_hash_entry*)*, i32 (%struct.TYPE_24__*, %struct.elf_link_hash_entry*)** %185, align 8
  %187 = icmp ne i32 (%struct.TYPE_24__*, %struct.elf_link_hash_entry*)* %186, null
  br i1 %187, label %188, label %200

188:                                              ; preds = %176
  %189 = load %struct.elf_backend_data*, %struct.elf_backend_data** %6, align 8
  %190 = getelementptr inbounds %struct.elf_backend_data, %struct.elf_backend_data* %189, i32 0, i32 2
  %191 = load i32 (%struct.TYPE_24__*, %struct.elf_link_hash_entry*)*, i32 (%struct.TYPE_24__*, %struct.elf_link_hash_entry*)** %190, align 8
  %192 = load %struct.elf_info_failed*, %struct.elf_info_failed** %5, align 8
  %193 = getelementptr inbounds %struct.elf_info_failed, %struct.elf_info_failed* %192, i32 0, i32 1
  %194 = load %struct.TYPE_24__*, %struct.TYPE_24__** %193, align 8
  %195 = load %struct.elf_link_hash_entry*, %struct.elf_link_hash_entry** %4, align 8
  %196 = call i32 %191(%struct.TYPE_24__* %194, %struct.elf_link_hash_entry* %195)
  %197 = icmp ne i32 %196, 0
  br i1 %197, label %200, label %198

198:                                              ; preds = %188
  %199 = load i32, i32* @FALSE, align 4
  store i32 %199, i32* %3, align 4
  br label %421

200:                                              ; preds = %188, %176
  br label %201

201:                                              ; preds = %200, %168
  %202 = load %struct.elf_link_hash_entry*, %struct.elf_link_hash_entry** %4, align 8
  %203 = getelementptr inbounds %struct.elf_link_hash_entry, %struct.elf_link_hash_entry* %202, i32 0, i32 6
  %204 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %203, i32 0, i32 0
  %205 = load i64, i64* %204, align 8
  %206 = load i64, i64* @bfd_link_hash_defined, align 8
  %207 = icmp eq i64 %205, %206
  br i1 %207, label %208, label %240

208:                                              ; preds = %201
  %209 = load %struct.elf_link_hash_entry*, %struct.elf_link_hash_entry** %4, align 8
  %210 = getelementptr inbounds %struct.elf_link_hash_entry, %struct.elf_link_hash_entry* %209, i32 0, i32 2
  %211 = load i32, i32* %210, align 8
  %212 = icmp ne i32 %211, 0
  br i1 %212, label %240, label %213

213:                                              ; preds = %208
  %214 = load %struct.elf_link_hash_entry*, %struct.elf_link_hash_entry** %4, align 8
  %215 = getelementptr inbounds %struct.elf_link_hash_entry, %struct.elf_link_hash_entry* %214, i32 0, i32 0
  %216 = load i32, i32* %215, align 8
  %217 = icmp ne i32 %216, 0
  br i1 %217, label %218, label %240

218:                                              ; preds = %213
  %219 = load %struct.elf_link_hash_entry*, %struct.elf_link_hash_entry** %4, align 8
  %220 = getelementptr inbounds %struct.elf_link_hash_entry, %struct.elf_link_hash_entry* %219, i32 0, i32 4
  %221 = load i32, i32* %220, align 8
  %222 = icmp ne i32 %221, 0
  br i1 %222, label %240, label %223

223:                                              ; preds = %218
  %224 = load %struct.elf_link_hash_entry*, %struct.elf_link_hash_entry** %4, align 8
  %225 = getelementptr inbounds %struct.elf_link_hash_entry, %struct.elf_link_hash_entry* %224, i32 0, i32 6
  %226 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %225, i32 0, i32 1
  %227 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %226, i32 0, i32 1
  %228 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %227, i32 0, i32 0
  %229 = load %struct.TYPE_17__*, %struct.TYPE_17__** %228, align 8
  %230 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %229, i32 0, i32 0
  %231 = load %struct.TYPE_18__*, %struct.TYPE_18__** %230, align 8
  %232 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %231, i32 0, i32 0
  %233 = load i32, i32* %232, align 4
  %234 = load i32, i32* @DYNAMIC, align 4
  %235 = and i32 %233, %234
  %236 = icmp eq i32 %235, 0
  br i1 %236, label %237, label %240

237:                                              ; preds = %223
  %238 = load %struct.elf_link_hash_entry*, %struct.elf_link_hash_entry** %4, align 8
  %239 = getelementptr inbounds %struct.elf_link_hash_entry, %struct.elf_link_hash_entry* %238, i32 0, i32 2
  store i32 1, i32* %239, align 8
  br label %240

240:                                              ; preds = %237, %223, %218, %213, %208, %201
  %241 = load %struct.elf_link_hash_entry*, %struct.elf_link_hash_entry** %4, align 8
  %242 = getelementptr inbounds %struct.elf_link_hash_entry, %struct.elf_link_hash_entry* %241, i32 0, i32 8
  %243 = load i64, i64* %242, align 8
  %244 = icmp ne i64 %243, 0
  br i1 %244, label %245, label %305

245:                                              ; preds = %240
  %246 = load %struct.elf_info_failed*, %struct.elf_info_failed** %5, align 8
  %247 = getelementptr inbounds %struct.elf_info_failed, %struct.elf_info_failed* %246, i32 0, i32 1
  %248 = load %struct.TYPE_24__*, %struct.TYPE_24__** %247, align 8
  %249 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %248, i32 0, i32 1
  %250 = load i64, i64* %249, align 8
  %251 = icmp ne i64 %250, 0
  br i1 %251, label %252, label %305

252:                                              ; preds = %245
  %253 = load %struct.elf_info_failed*, %struct.elf_info_failed** %5, align 8
  %254 = getelementptr inbounds %struct.elf_info_failed, %struct.elf_info_failed* %253, i32 0, i32 1
  %255 = load %struct.TYPE_24__*, %struct.TYPE_24__** %254, align 8
  %256 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %255, i32 0, i32 0
  %257 = load i32, i32* %256, align 8
  %258 = call i64 @is_elf_hash_table(i32 %257)
  %259 = icmp ne i64 %258, 0
  br i1 %259, label %260, label %305

260:                                              ; preds = %252
  %261 = load %struct.elf_info_failed*, %struct.elf_info_failed** %5, align 8
  %262 = getelementptr inbounds %struct.elf_info_failed, %struct.elf_info_failed* %261, i32 0, i32 1
  %263 = load %struct.TYPE_24__*, %struct.TYPE_24__** %262, align 8
  %264 = load %struct.elf_link_hash_entry*, %struct.elf_link_hash_entry** %4, align 8
  %265 = call i64 @SYMBOLIC_BIND(%struct.TYPE_24__* %263, %struct.elf_link_hash_entry* %264)
  %266 = icmp ne i64 %265, 0
  br i1 %266, label %274, label %267

267:                                              ; preds = %260
  %268 = load %struct.elf_link_hash_entry*, %struct.elf_link_hash_entry** %4, align 8
  %269 = getelementptr inbounds %struct.elf_link_hash_entry, %struct.elf_link_hash_entry* %268, i32 0, i32 7
  %270 = load i32, i32* %269, align 8
  %271 = call i64 @ELF_ST_VISIBILITY(i32 %270)
  %272 = load i64, i64* @STV_DEFAULT, align 8
  %273 = icmp ne i64 %271, %272
  br i1 %273, label %274, label %305

274:                                              ; preds = %267, %260
  %275 = load %struct.elf_link_hash_entry*, %struct.elf_link_hash_entry** %4, align 8
  %276 = getelementptr inbounds %struct.elf_link_hash_entry, %struct.elf_link_hash_entry* %275, i32 0, i32 2
  %277 = load i32, i32* %276, align 8
  %278 = icmp ne i32 %277, 0
  br i1 %278, label %279, label %305

279:                                              ; preds = %274
  %280 = load %struct.elf_link_hash_entry*, %struct.elf_link_hash_entry** %4, align 8
  %281 = getelementptr inbounds %struct.elf_link_hash_entry, %struct.elf_link_hash_entry* %280, i32 0, i32 7
  %282 = load i32, i32* %281, align 8
  %283 = call i64 @ELF_ST_VISIBILITY(i32 %282)
  %284 = load i64, i64* @STV_INTERNAL, align 8
  %285 = icmp eq i64 %283, %284
  br i1 %285, label %293, label %286

286:                                              ; preds = %279
  %287 = load %struct.elf_link_hash_entry*, %struct.elf_link_hash_entry** %4, align 8
  %288 = getelementptr inbounds %struct.elf_link_hash_entry, %struct.elf_link_hash_entry* %287, i32 0, i32 7
  %289 = load i32, i32* %288, align 8
  %290 = call i64 @ELF_ST_VISIBILITY(i32 %289)
  %291 = load i64, i64* @STV_HIDDEN, align 8
  %292 = icmp eq i64 %290, %291
  br label %293

293:                                              ; preds = %286, %279
  %294 = phi i1 [ true, %279 ], [ %292, %286 ]
  %295 = zext i1 %294 to i32
  store i32 %295, i32* %7, align 4
  %296 = load %struct.elf_backend_data*, %struct.elf_backend_data** %6, align 8
  %297 = getelementptr inbounds %struct.elf_backend_data, %struct.elf_backend_data* %296, i32 0, i32 1
  %298 = load i32 (%struct.TYPE_24__*, %struct.elf_link_hash_entry*, i32)*, i32 (%struct.TYPE_24__*, %struct.elf_link_hash_entry*, i32)** %297, align 8
  %299 = load %struct.elf_info_failed*, %struct.elf_info_failed** %5, align 8
  %300 = getelementptr inbounds %struct.elf_info_failed, %struct.elf_info_failed* %299, i32 0, i32 1
  %301 = load %struct.TYPE_24__*, %struct.TYPE_24__** %300, align 8
  %302 = load %struct.elf_link_hash_entry*, %struct.elf_link_hash_entry** %4, align 8
  %303 = load i32, i32* %7, align 4
  %304 = call i32 %298(%struct.TYPE_24__* %301, %struct.elf_link_hash_entry* %302, i32 %303)
  br label %305

305:                                              ; preds = %293, %274, %267, %252, %245, %240
  %306 = load %struct.elf_link_hash_entry*, %struct.elf_link_hash_entry** %4, align 8
  %307 = getelementptr inbounds %struct.elf_link_hash_entry, %struct.elf_link_hash_entry* %306, i32 0, i32 7
  %308 = load i32, i32* %307, align 8
  %309 = call i64 @ELF_ST_VISIBILITY(i32 %308)
  %310 = load i64, i64* @STV_DEFAULT, align 8
  %311 = icmp ne i64 %309, %310
  br i1 %311, label %312, label %336

312:                                              ; preds = %305
  %313 = load %struct.elf_link_hash_entry*, %struct.elf_link_hash_entry** %4, align 8
  %314 = getelementptr inbounds %struct.elf_link_hash_entry, %struct.elf_link_hash_entry* %313, i32 0, i32 6
  %315 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %314, i32 0, i32 0
  %316 = load i64, i64* %315, align 8
  %317 = load i64, i64* @bfd_link_hash_undefweak, align 8
  %318 = icmp eq i64 %316, %317
  br i1 %318, label %319, label %336

319:                                              ; preds = %312
  %320 = load %struct.elf_info_failed*, %struct.elf_info_failed** %5, align 8
  %321 = getelementptr inbounds %struct.elf_info_failed, %struct.elf_info_failed* %320, i32 0, i32 1
  %322 = load %struct.TYPE_24__*, %struct.TYPE_24__** %321, align 8
  %323 = call %struct.TYPE_16__* @elf_hash_table(%struct.TYPE_24__* %322)
  %324 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %323, i32 0, i32 0
  %325 = load i64, i64* %324, align 8
  %326 = call %struct.elf_backend_data* @get_elf_backend_data(i64 %325)
  store %struct.elf_backend_data* %326, %struct.elf_backend_data** %8, align 8
  %327 = load %struct.elf_backend_data*, %struct.elf_backend_data** %8, align 8
  %328 = getelementptr inbounds %struct.elf_backend_data, %struct.elf_backend_data* %327, i32 0, i32 1
  %329 = load i32 (%struct.TYPE_24__*, %struct.elf_link_hash_entry*, i32)*, i32 (%struct.TYPE_24__*, %struct.elf_link_hash_entry*, i32)** %328, align 8
  %330 = load %struct.elf_info_failed*, %struct.elf_info_failed** %5, align 8
  %331 = getelementptr inbounds %struct.elf_info_failed, %struct.elf_info_failed* %330, i32 0, i32 1
  %332 = load %struct.TYPE_24__*, %struct.TYPE_24__** %331, align 8
  %333 = load %struct.elf_link_hash_entry*, %struct.elf_link_hash_entry** %4, align 8
  %334 = load i32, i32* @TRUE, align 4
  %335 = call i32 %329(%struct.TYPE_24__* %332, %struct.elf_link_hash_entry* %333, i32 %334)
  br label %336

336:                                              ; preds = %319, %312, %305
  %337 = load %struct.elf_link_hash_entry*, %struct.elf_link_hash_entry** %4, align 8
  %338 = getelementptr inbounds %struct.elf_link_hash_entry, %struct.elf_link_hash_entry* %337, i32 0, i32 5
  %339 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %338, i32 0, i32 0
  %340 = load %struct.elf_link_hash_entry*, %struct.elf_link_hash_entry** %339, align 8
  %341 = icmp ne %struct.elf_link_hash_entry* %340, null
  br i1 %341, label %342, label %419

342:                                              ; preds = %336
  %343 = load %struct.elf_link_hash_entry*, %struct.elf_link_hash_entry** %4, align 8
  %344 = getelementptr inbounds %struct.elf_link_hash_entry, %struct.elf_link_hash_entry* %343, i32 0, i32 5
  %345 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %344, i32 0, i32 0
  %346 = load %struct.elf_link_hash_entry*, %struct.elf_link_hash_entry** %345, align 8
  store %struct.elf_link_hash_entry* %346, %struct.elf_link_hash_entry** %9, align 8
  %347 = load %struct.elf_link_hash_entry*, %struct.elf_link_hash_entry** %4, align 8
  %348 = getelementptr inbounds %struct.elf_link_hash_entry, %struct.elf_link_hash_entry* %347, i32 0, i32 6
  %349 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %348, i32 0, i32 0
  %350 = load i64, i64* %349, align 8
  %351 = load i64, i64* @bfd_link_hash_indirect, align 8
  %352 = icmp eq i64 %350, %351
  br i1 %352, label %353, label %361

353:                                              ; preds = %342
  %354 = load %struct.elf_link_hash_entry*, %struct.elf_link_hash_entry** %4, align 8
  %355 = getelementptr inbounds %struct.elf_link_hash_entry, %struct.elf_link_hash_entry* %354, i32 0, i32 6
  %356 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %355, i32 0, i32 1
  %357 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %356, i32 0, i32 0
  %358 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %357, i32 0, i32 0
  %359 = load i64, i64* %358, align 8
  %360 = inttoptr i64 %359 to %struct.elf_link_hash_entry*
  store %struct.elf_link_hash_entry* %360, %struct.elf_link_hash_entry** %4, align 8
  br label %361

361:                                              ; preds = %353, %342
  %362 = load %struct.elf_link_hash_entry*, %struct.elf_link_hash_entry** %4, align 8
  %363 = getelementptr inbounds %struct.elf_link_hash_entry, %struct.elf_link_hash_entry* %362, i32 0, i32 6
  %364 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %363, i32 0, i32 0
  %365 = load i64, i64* %364, align 8
  %366 = load i64, i64* @bfd_link_hash_defined, align 8
  %367 = icmp eq i64 %365, %366
  br i1 %367, label %375, label %368

368:                                              ; preds = %361
  %369 = load %struct.elf_link_hash_entry*, %struct.elf_link_hash_entry** %4, align 8
  %370 = getelementptr inbounds %struct.elf_link_hash_entry, %struct.elf_link_hash_entry* %369, i32 0, i32 6
  %371 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %370, i32 0, i32 0
  %372 = load i64, i64* %371, align 8
  %373 = load i64, i64* @bfd_link_hash_defweak, align 8
  %374 = icmp eq i64 %372, %373
  br label %375

375:                                              ; preds = %368, %361
  %376 = phi i1 [ true, %361 ], [ %374, %368 ]
  %377 = zext i1 %376 to i32
  %378 = call i32 @BFD_ASSERT(i32 %377)
  %379 = load %struct.elf_link_hash_entry*, %struct.elf_link_hash_entry** %9, align 8
  %380 = getelementptr inbounds %struct.elf_link_hash_entry, %struct.elf_link_hash_entry* %379, i32 0, i32 6
  %381 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %380, i32 0, i32 0
  %382 = load i64, i64* %381, align 8
  %383 = load i64, i64* @bfd_link_hash_defined, align 8
  %384 = icmp eq i64 %382, %383
  br i1 %384, label %392, label %385

385:                                              ; preds = %375
  %386 = load %struct.elf_link_hash_entry*, %struct.elf_link_hash_entry** %9, align 8
  %387 = getelementptr inbounds %struct.elf_link_hash_entry, %struct.elf_link_hash_entry* %386, i32 0, i32 6
  %388 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %387, i32 0, i32 0
  %389 = load i64, i64* %388, align 8
  %390 = load i64, i64* @bfd_link_hash_defweak, align 8
  %391 = icmp eq i64 %389, %390
  br label %392

392:                                              ; preds = %385, %375
  %393 = phi i1 [ true, %375 ], [ %391, %385 ]
  %394 = zext i1 %393 to i32
  %395 = call i32 @BFD_ASSERT(i32 %394)
  %396 = load %struct.elf_link_hash_entry*, %struct.elf_link_hash_entry** %9, align 8
  %397 = getelementptr inbounds %struct.elf_link_hash_entry, %struct.elf_link_hash_entry* %396, i32 0, i32 4
  %398 = load i32, i32* %397, align 8
  %399 = call i32 @BFD_ASSERT(i32 %398)
  %400 = load %struct.elf_link_hash_entry*, %struct.elf_link_hash_entry** %9, align 8
  %401 = getelementptr inbounds %struct.elf_link_hash_entry, %struct.elf_link_hash_entry* %400, i32 0, i32 2
  %402 = load i32, i32* %401, align 8
  %403 = icmp ne i32 %402, 0
  br i1 %403, label %404, label %408

404:                                              ; preds = %392
  %405 = load %struct.elf_link_hash_entry*, %struct.elf_link_hash_entry** %4, align 8
  %406 = getelementptr inbounds %struct.elf_link_hash_entry, %struct.elf_link_hash_entry* %405, i32 0, i32 5
  %407 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %406, i32 0, i32 0
  store %struct.elf_link_hash_entry* null, %struct.elf_link_hash_entry** %407, align 8
  br label %418

408:                                              ; preds = %392
  %409 = load %struct.elf_backend_data*, %struct.elf_backend_data** %6, align 8
  %410 = getelementptr inbounds %struct.elf_backend_data, %struct.elf_backend_data* %409, i32 0, i32 0
  %411 = load i32 (%struct.TYPE_24__*, %struct.elf_link_hash_entry*, %struct.elf_link_hash_entry*)*, i32 (%struct.TYPE_24__*, %struct.elf_link_hash_entry*, %struct.elf_link_hash_entry*)** %410, align 8
  %412 = load %struct.elf_info_failed*, %struct.elf_info_failed** %5, align 8
  %413 = getelementptr inbounds %struct.elf_info_failed, %struct.elf_info_failed* %412, i32 0, i32 1
  %414 = load %struct.TYPE_24__*, %struct.TYPE_24__** %413, align 8
  %415 = load %struct.elf_link_hash_entry*, %struct.elf_link_hash_entry** %9, align 8
  %416 = load %struct.elf_link_hash_entry*, %struct.elf_link_hash_entry** %4, align 8
  %417 = call i32 %411(%struct.TYPE_24__* %414, %struct.elf_link_hash_entry* %415, %struct.elf_link_hash_entry* %416)
  br label %418

418:                                              ; preds = %408, %404
  br label %419

419:                                              ; preds = %418, %336
  %420 = load i32, i32* @TRUE, align 4
  store i32 %420, i32* %3, align 4
  br label %421

421:                                              ; preds = %419, %198, %102
  %422 = load i32, i32* %3, align 4
  ret i32 %422
}

declare dso_local i64 @bfd_get_flavour(%struct.TYPE_18__*) #1

declare dso_local i32 @bfd_elf_link_record_dynamic_symbol(%struct.TYPE_24__*, %struct.elf_link_hash_entry*) #1

declare dso_local i64 @bfd_is_abs_section(%struct.TYPE_17__*) #1

declare dso_local %struct.TYPE_16__* @elf_hash_table(%struct.TYPE_24__*) #1

declare dso_local %struct.elf_backend_data* @get_elf_backend_data(i64) #1

declare dso_local i64 @is_elf_hash_table(i32) #1

declare dso_local i64 @SYMBOLIC_BIND(%struct.TYPE_24__*, %struct.elf_link_hash_entry*) #1

declare dso_local i64 @ELF_ST_VISIBILITY(i32) #1

declare dso_local i32 @BFD_ASSERT(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

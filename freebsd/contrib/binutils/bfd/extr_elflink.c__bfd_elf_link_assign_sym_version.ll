; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/bfd/extr_elflink.c__bfd_elf_link_assign_sym_version.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/bfd/extr_elflink.c__bfd_elf_link_assign_sym_version.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.elf_link_hash_entry = type { i32, i32, %struct.TYPE_14__, %struct.TYPE_13__, i32 }
%struct.TYPE_14__ = type { %struct.bfd_elf_version_tree* }
%struct.bfd_elf_version_tree = type { i8*, i32, i64, %struct.TYPE_15__, %struct.bfd_elf_version_expr* (%struct.TYPE_15__*, %struct.bfd_elf_version_expr*, i8*)*, %struct.TYPE_15__, %struct.bfd_elf_version_tree*, i8* }
%struct.bfd_elf_version_expr = type { i32, i8*, i64 }
%struct.TYPE_15__ = type { i32* }
%struct.TYPE_13__ = type { i64, %struct.TYPE_12__, %struct.TYPE_11__ }
%struct.TYPE_12__ = type { i8* }
%struct.TYPE_11__ = type { %struct.TYPE_10__ }
%struct.TYPE_10__ = type { i64 }
%struct.elf_assign_sym_version_info = type { %struct.bfd_elf_version_tree*, i8*, i32, %struct.bfd_link_info* }
%struct.bfd_link_info = type { i32, i64 }
%struct.elf_backend_data = type { i32 (%struct.bfd_link_info*, %struct.elf_link_hash_entry*, i8*)* }
%struct.elf_info_failed = type { i8*, %struct.bfd_link_info* }

@bfd_link_hash_warning = common dso_local global i64 0, align 8
@FALSE = common dso_local global i8* null, align 8
@TRUE = common dso_local global i8* null, align 8
@ELF_VER_CHR = common dso_local global i8 0, align 1
@.str = private unnamed_addr constant [41 x i8] c"%B: version node not found for symbol %s\00", align 1
@bfd_error_bad_value = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @_bfd_elf_link_assign_sym_version(%struct.elf_link_hash_entry* %0, i8* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca %struct.elf_link_hash_entry*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.elf_assign_sym_version_info*, align 8
  %7 = alloca %struct.bfd_link_info*, align 8
  %8 = alloca %struct.elf_backend_data*, align 8
  %9 = alloca %struct.elf_info_failed, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.bfd_elf_version_tree*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i64, align 8
  %15 = alloca i8*, align 8
  %16 = alloca %struct.bfd_elf_version_expr*, align 8
  %17 = alloca %struct.bfd_elf_version_tree**, align 8
  %18 = alloca i32, align 4
  %19 = alloca %struct.bfd_elf_version_tree*, align 8
  %20 = alloca %struct.bfd_elf_version_tree*, align 8
  %21 = alloca %struct.bfd_elf_version_expr*, align 8
  %22 = alloca i8*, align 8
  store %struct.elf_link_hash_entry* %0, %struct.elf_link_hash_entry** %4, align 8
  store i8* %1, i8** %5, align 8
  %23 = load i8*, i8** %5, align 8
  %24 = bitcast i8* %23 to %struct.elf_assign_sym_version_info*
  store %struct.elf_assign_sym_version_info* %24, %struct.elf_assign_sym_version_info** %6, align 8
  %25 = load %struct.elf_assign_sym_version_info*, %struct.elf_assign_sym_version_info** %6, align 8
  %26 = getelementptr inbounds %struct.elf_assign_sym_version_info, %struct.elf_assign_sym_version_info* %25, i32 0, i32 3
  %27 = load %struct.bfd_link_info*, %struct.bfd_link_info** %26, align 8
  store %struct.bfd_link_info* %27, %struct.bfd_link_info** %7, align 8
  %28 = load %struct.elf_link_hash_entry*, %struct.elf_link_hash_entry** %4, align 8
  %29 = getelementptr inbounds %struct.elf_link_hash_entry, %struct.elf_link_hash_entry* %28, i32 0, i32 3
  %30 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = load i64, i64* @bfd_link_hash_warning, align 8
  %33 = icmp eq i64 %31, %32
  br i1 %33, label %34, label %42

34:                                               ; preds = %2
  %35 = load %struct.elf_link_hash_entry*, %struct.elf_link_hash_entry** %4, align 8
  %36 = getelementptr inbounds %struct.elf_link_hash_entry, %struct.elf_link_hash_entry* %35, i32 0, i32 3
  %37 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %36, i32 0, i32 2
  %38 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = inttoptr i64 %40 to %struct.elf_link_hash_entry*
  store %struct.elf_link_hash_entry* %41, %struct.elf_link_hash_entry** %4, align 8
  br label %42

42:                                               ; preds = %34, %2
  %43 = load i8*, i8** @FALSE, align 8
  %44 = getelementptr inbounds %struct.elf_info_failed, %struct.elf_info_failed* %9, i32 0, i32 0
  store i8* %43, i8** %44, align 8
  %45 = load %struct.bfd_link_info*, %struct.bfd_link_info** %7, align 8
  %46 = getelementptr inbounds %struct.elf_info_failed, %struct.elf_info_failed* %9, i32 0, i32 1
  store %struct.bfd_link_info* %45, %struct.bfd_link_info** %46, align 8
  %47 = load %struct.elf_link_hash_entry*, %struct.elf_link_hash_entry** %4, align 8
  %48 = call i32 @_bfd_elf_fix_symbol_flags(%struct.elf_link_hash_entry* %47, %struct.elf_info_failed* %9)
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %60, label %50

50:                                               ; preds = %42
  %51 = getelementptr inbounds %struct.elf_info_failed, %struct.elf_info_failed* %9, i32 0, i32 0
  %52 = load i8*, i8** %51, align 8
  %53 = icmp ne i8* %52, null
  br i1 %53, label %54, label %58

54:                                               ; preds = %50
  %55 = load i8*, i8** @TRUE, align 8
  %56 = load %struct.elf_assign_sym_version_info*, %struct.elf_assign_sym_version_info** %6, align 8
  %57 = getelementptr inbounds %struct.elf_assign_sym_version_info, %struct.elf_assign_sym_version_info* %56, i32 0, i32 1
  store i8* %55, i8** %57, align 8
  br label %58

58:                                               ; preds = %54, %50
  %59 = load i8*, i8** @FALSE, align 8
  store i8* %59, i8** %3, align 8
  br label %492

60:                                               ; preds = %42
  %61 = load %struct.elf_link_hash_entry*, %struct.elf_link_hash_entry** %4, align 8
  %62 = getelementptr inbounds %struct.elf_link_hash_entry, %struct.elf_link_hash_entry* %61, i32 0, i32 4
  %63 = load i32, i32* %62, align 8
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %67, label %65

65:                                               ; preds = %60
  %66 = load i8*, i8** @TRUE, align 8
  store i8* %66, i8** %3, align 8
  br label %492

67:                                               ; preds = %60
  %68 = load %struct.elf_assign_sym_version_info*, %struct.elf_assign_sym_version_info** %6, align 8
  %69 = getelementptr inbounds %struct.elf_assign_sym_version_info, %struct.elf_assign_sym_version_info* %68, i32 0, i32 2
  %70 = load i32, i32* %69, align 8
  %71 = call %struct.elf_backend_data* @get_elf_backend_data(i32 %70)
  store %struct.elf_backend_data* %71, %struct.elf_backend_data** %8, align 8
  %72 = load %struct.elf_link_hash_entry*, %struct.elf_link_hash_entry** %4, align 8
  %73 = getelementptr inbounds %struct.elf_link_hash_entry, %struct.elf_link_hash_entry* %72, i32 0, i32 3
  %74 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %73, i32 0, i32 1
  %75 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %74, i32 0, i32 0
  %76 = load i8*, i8** %75, align 8
  %77 = load i8, i8* @ELF_VER_CHR, align 1
  %78 = call i8* @strchr(i8* %76, i8 signext %77)
  store i8* %78, i8** %10, align 8
  %79 = load i8*, i8** %10, align 8
  %80 = icmp ne i8* %79, null
  br i1 %80, label %81, label %341

81:                                               ; preds = %67
  %82 = load %struct.elf_link_hash_entry*, %struct.elf_link_hash_entry** %4, align 8
  %83 = getelementptr inbounds %struct.elf_link_hash_entry, %struct.elf_link_hash_entry* %82, i32 0, i32 2
  %84 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %83, i32 0, i32 0
  %85 = load %struct.bfd_elf_version_tree*, %struct.bfd_elf_version_tree** %84, align 8
  %86 = icmp eq %struct.bfd_elf_version_tree* %85, null
  br i1 %86, label %87, label %341

87:                                               ; preds = %81
  %88 = load i8*, i8** @TRUE, align 8
  store i8* %88, i8** %13, align 8
  %89 = load i8*, i8** %10, align 8
  %90 = getelementptr inbounds i8, i8* %89, i32 1
  store i8* %90, i8** %10, align 8
  %91 = load i8*, i8** %10, align 8
  %92 = load i8, i8* %91, align 1
  %93 = sext i8 %92 to i32
  %94 = load i8, i8* @ELF_VER_CHR, align 1
  %95 = sext i8 %94 to i32
  %96 = icmp eq i32 %93, %95
  br i1 %96, label %97, label %101

97:                                               ; preds = %87
  %98 = load i8*, i8** @FALSE, align 8
  store i8* %98, i8** %13, align 8
  %99 = load i8*, i8** %10, align 8
  %100 = getelementptr inbounds i8, i8* %99, i32 1
  store i8* %100, i8** %10, align 8
  br label %101

101:                                              ; preds = %97, %87
  %102 = load i8*, i8** %10, align 8
  %103 = load i8, i8* %102, align 1
  %104 = sext i8 %103 to i32
  %105 = icmp eq i32 %104, 0
  br i1 %105, label %106, label %114

106:                                              ; preds = %101
  %107 = load i8*, i8** %13, align 8
  %108 = icmp ne i8* %107, null
  br i1 %108, label %109, label %112

109:                                              ; preds = %106
  %110 = load %struct.elf_link_hash_entry*, %struct.elf_link_hash_entry** %4, align 8
  %111 = getelementptr inbounds %struct.elf_link_hash_entry, %struct.elf_link_hash_entry* %110, i32 0, i32 0
  store i32 1, i32* %111, align 8
  br label %112

112:                                              ; preds = %109, %106
  %113 = load i8*, i8** @TRUE, align 8
  store i8* %113, i8** %3, align 8
  br label %492

114:                                              ; preds = %101
  %115 = load %struct.elf_assign_sym_version_info*, %struct.elf_assign_sym_version_info** %6, align 8
  %116 = getelementptr inbounds %struct.elf_assign_sym_version_info, %struct.elf_assign_sym_version_info* %115, i32 0, i32 0
  %117 = load %struct.bfd_elf_version_tree*, %struct.bfd_elf_version_tree** %116, align 8
  store %struct.bfd_elf_version_tree* %117, %struct.bfd_elf_version_tree** %12, align 8
  br label %118

118:                                              ; preds = %235, %114
  %119 = load %struct.bfd_elf_version_tree*, %struct.bfd_elf_version_tree** %12, align 8
  %120 = icmp ne %struct.bfd_elf_version_tree* %119, null
  br i1 %120, label %121, label %239

121:                                              ; preds = %118
  %122 = load %struct.bfd_elf_version_tree*, %struct.bfd_elf_version_tree** %12, align 8
  %123 = getelementptr inbounds %struct.bfd_elf_version_tree, %struct.bfd_elf_version_tree* %122, i32 0, i32 0
  %124 = load i8*, i8** %123, align 8
  %125 = load i8*, i8** %10, align 8
  %126 = call i64 @strcmp(i8* %124, i8* %125)
  %127 = icmp eq i64 %126, 0
  br i1 %127, label %128, label %234

128:                                              ; preds = %121
  %129 = load i8*, i8** %10, align 8
  %130 = load %struct.elf_link_hash_entry*, %struct.elf_link_hash_entry** %4, align 8
  %131 = getelementptr inbounds %struct.elf_link_hash_entry, %struct.elf_link_hash_entry* %130, i32 0, i32 3
  %132 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %131, i32 0, i32 1
  %133 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %132, i32 0, i32 0
  %134 = load i8*, i8** %133, align 8
  %135 = ptrtoint i8* %129 to i64
  %136 = ptrtoint i8* %134 to i64
  %137 = sub i64 %135, %136
  store i64 %137, i64* %14, align 8
  %138 = load i64, i64* %14, align 8
  %139 = call i8* @bfd_malloc(i64 %138)
  store i8* %139, i8** %15, align 8
  %140 = load i8*, i8** %15, align 8
  %141 = icmp eq i8* %140, null
  br i1 %141, label %142, label %144

142:                                              ; preds = %128
  %143 = load i8*, i8** @FALSE, align 8
  store i8* %143, i8** %3, align 8
  br label %492

144:                                              ; preds = %128
  %145 = load i8*, i8** %15, align 8
  %146 = load %struct.elf_link_hash_entry*, %struct.elf_link_hash_entry** %4, align 8
  %147 = getelementptr inbounds %struct.elf_link_hash_entry, %struct.elf_link_hash_entry* %146, i32 0, i32 3
  %148 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %147, i32 0, i32 1
  %149 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %148, i32 0, i32 0
  %150 = load i8*, i8** %149, align 8
  %151 = load i64, i64* %14, align 8
  %152 = sub i64 %151, 1
  %153 = call i32 @memcpy(i8* %145, i8* %150, i64 %152)
  %154 = load i8*, i8** %15, align 8
  %155 = load i64, i64* %14, align 8
  %156 = sub i64 %155, 1
  %157 = getelementptr inbounds i8, i8* %154, i64 %156
  store i8 0, i8* %157, align 1
  %158 = load i8*, i8** %15, align 8
  %159 = load i64, i64* %14, align 8
  %160 = sub i64 %159, 2
  %161 = getelementptr inbounds i8, i8* %158, i64 %160
  %162 = load i8, i8* %161, align 1
  %163 = sext i8 %162 to i32
  %164 = load i8, i8* @ELF_VER_CHR, align 1
  %165 = sext i8 %164 to i32
  %166 = icmp eq i32 %163, %165
  br i1 %166, label %167, label %172

167:                                              ; preds = %144
  %168 = load i8*, i8** %15, align 8
  %169 = load i64, i64* %14, align 8
  %170 = sub i64 %169, 2
  %171 = getelementptr inbounds i8, i8* %168, i64 %170
  store i8 0, i8* %171, align 1
  br label %172

172:                                              ; preds = %167, %144
  %173 = load %struct.bfd_elf_version_tree*, %struct.bfd_elf_version_tree** %12, align 8
  %174 = load %struct.elf_link_hash_entry*, %struct.elf_link_hash_entry** %4, align 8
  %175 = getelementptr inbounds %struct.elf_link_hash_entry, %struct.elf_link_hash_entry* %174, i32 0, i32 2
  %176 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %175, i32 0, i32 0
  store %struct.bfd_elf_version_tree* %173, %struct.bfd_elf_version_tree** %176, align 8
  %177 = load i8*, i8** @TRUE, align 8
  %178 = load %struct.bfd_elf_version_tree*, %struct.bfd_elf_version_tree** %12, align 8
  %179 = getelementptr inbounds %struct.bfd_elf_version_tree, %struct.bfd_elf_version_tree* %178, i32 0, i32 7
  store i8* %177, i8** %179, align 8
  store %struct.bfd_elf_version_expr* null, %struct.bfd_elf_version_expr** %16, align 8
  %180 = load %struct.bfd_elf_version_tree*, %struct.bfd_elf_version_tree** %12, align 8
  %181 = getelementptr inbounds %struct.bfd_elf_version_tree, %struct.bfd_elf_version_tree* %180, i32 0, i32 5
  %182 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %181, i32 0, i32 0
  %183 = load i32*, i32** %182, align 8
  %184 = icmp ne i32* %183, null
  br i1 %184, label %185, label %193

185:                                              ; preds = %172
  %186 = load %struct.bfd_elf_version_tree*, %struct.bfd_elf_version_tree** %12, align 8
  %187 = getelementptr inbounds %struct.bfd_elf_version_tree, %struct.bfd_elf_version_tree* %186, i32 0, i32 4
  %188 = load %struct.bfd_elf_version_expr* (%struct.TYPE_15__*, %struct.bfd_elf_version_expr*, i8*)*, %struct.bfd_elf_version_expr* (%struct.TYPE_15__*, %struct.bfd_elf_version_expr*, i8*)** %187, align 8
  %189 = load %struct.bfd_elf_version_tree*, %struct.bfd_elf_version_tree** %12, align 8
  %190 = getelementptr inbounds %struct.bfd_elf_version_tree, %struct.bfd_elf_version_tree* %189, i32 0, i32 5
  %191 = load i8*, i8** %15, align 8
  %192 = call %struct.bfd_elf_version_expr* %188(%struct.TYPE_15__* %190, %struct.bfd_elf_version_expr* null, i8* %191)
  store %struct.bfd_elf_version_expr* %192, %struct.bfd_elf_version_expr** %16, align 8
  br label %193

193:                                              ; preds = %185, %172
  %194 = load %struct.bfd_elf_version_expr*, %struct.bfd_elf_version_expr** %16, align 8
  %195 = icmp eq %struct.bfd_elf_version_expr* %194, null
  br i1 %195, label %196, label %231

196:                                              ; preds = %193
  %197 = load %struct.bfd_elf_version_tree*, %struct.bfd_elf_version_tree** %12, align 8
  %198 = getelementptr inbounds %struct.bfd_elf_version_tree, %struct.bfd_elf_version_tree* %197, i32 0, i32 3
  %199 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %198, i32 0, i32 0
  %200 = load i32*, i32** %199, align 8
  %201 = icmp ne i32* %200, null
  br i1 %201, label %202, label %231

202:                                              ; preds = %196
  %203 = load %struct.bfd_elf_version_tree*, %struct.bfd_elf_version_tree** %12, align 8
  %204 = getelementptr inbounds %struct.bfd_elf_version_tree, %struct.bfd_elf_version_tree* %203, i32 0, i32 4
  %205 = load %struct.bfd_elf_version_expr* (%struct.TYPE_15__*, %struct.bfd_elf_version_expr*, i8*)*, %struct.bfd_elf_version_expr* (%struct.TYPE_15__*, %struct.bfd_elf_version_expr*, i8*)** %204, align 8
  %206 = load %struct.bfd_elf_version_tree*, %struct.bfd_elf_version_tree** %12, align 8
  %207 = getelementptr inbounds %struct.bfd_elf_version_tree, %struct.bfd_elf_version_tree* %206, i32 0, i32 3
  %208 = load i8*, i8** %15, align 8
  %209 = call %struct.bfd_elf_version_expr* %205(%struct.TYPE_15__* %207, %struct.bfd_elf_version_expr* null, i8* %208)
  store %struct.bfd_elf_version_expr* %209, %struct.bfd_elf_version_expr** %16, align 8
  %210 = load %struct.bfd_elf_version_expr*, %struct.bfd_elf_version_expr** %16, align 8
  %211 = icmp ne %struct.bfd_elf_version_expr* %210, null
  br i1 %211, label %212, label %230

212:                                              ; preds = %202
  %213 = load %struct.elf_link_hash_entry*, %struct.elf_link_hash_entry** %4, align 8
  %214 = getelementptr inbounds %struct.elf_link_hash_entry, %struct.elf_link_hash_entry* %213, i32 0, i32 1
  %215 = load i32, i32* %214, align 4
  %216 = icmp ne i32 %215, -1
  br i1 %216, label %217, label %230

217:                                              ; preds = %212
  %218 = load %struct.bfd_link_info*, %struct.bfd_link_info** %7, align 8
  %219 = getelementptr inbounds %struct.bfd_link_info, %struct.bfd_link_info* %218, i32 0, i32 0
  %220 = load i32, i32* %219, align 8
  %221 = icmp ne i32 %220, 0
  br i1 %221, label %230, label %222

222:                                              ; preds = %217
  %223 = load %struct.elf_backend_data*, %struct.elf_backend_data** %8, align 8
  %224 = getelementptr inbounds %struct.elf_backend_data, %struct.elf_backend_data* %223, i32 0, i32 0
  %225 = load i32 (%struct.bfd_link_info*, %struct.elf_link_hash_entry*, i8*)*, i32 (%struct.bfd_link_info*, %struct.elf_link_hash_entry*, i8*)** %224, align 8
  %226 = load %struct.bfd_link_info*, %struct.bfd_link_info** %7, align 8
  %227 = load %struct.elf_link_hash_entry*, %struct.elf_link_hash_entry** %4, align 8
  %228 = load i8*, i8** @TRUE, align 8
  %229 = call i32 %225(%struct.bfd_link_info* %226, %struct.elf_link_hash_entry* %227, i8* %228)
  br label %230

230:                                              ; preds = %222, %217, %212, %202
  br label %231

231:                                              ; preds = %230, %196, %193
  %232 = load i8*, i8** %15, align 8
  %233 = call i32 @free(i8* %232)
  br label %239

234:                                              ; preds = %121
  br label %235

235:                                              ; preds = %234
  %236 = load %struct.bfd_elf_version_tree*, %struct.bfd_elf_version_tree** %12, align 8
  %237 = getelementptr inbounds %struct.bfd_elf_version_tree, %struct.bfd_elf_version_tree* %236, i32 0, i32 6
  %238 = load %struct.bfd_elf_version_tree*, %struct.bfd_elf_version_tree** %237, align 8
  store %struct.bfd_elf_version_tree* %238, %struct.bfd_elf_version_tree** %12, align 8
  br label %118

239:                                              ; preds = %231, %118
  %240 = load %struct.bfd_elf_version_tree*, %struct.bfd_elf_version_tree** %12, align 8
  %241 = icmp eq %struct.bfd_elf_version_tree* %240, null
  br i1 %241, label %242, label %313

242:                                              ; preds = %239
  %243 = load %struct.bfd_link_info*, %struct.bfd_link_info** %7, align 8
  %244 = getelementptr inbounds %struct.bfd_link_info, %struct.bfd_link_info* %243, i32 0, i32 1
  %245 = load i64, i64* %244, align 8
  %246 = icmp ne i64 %245, 0
  br i1 %246, label %247, label %313

247:                                              ; preds = %242
  %248 = load %struct.elf_link_hash_entry*, %struct.elf_link_hash_entry** %4, align 8
  %249 = getelementptr inbounds %struct.elf_link_hash_entry, %struct.elf_link_hash_entry* %248, i32 0, i32 1
  %250 = load i32, i32* %249, align 4
  %251 = icmp eq i32 %250, -1
  br i1 %251, label %252, label %254

252:                                              ; preds = %247
  %253 = load i8*, i8** @TRUE, align 8
  store i8* %253, i8** %3, align 8
  br label %492

254:                                              ; preds = %247
  store i32 64, i32* %11, align 4
  %255 = load %struct.elf_assign_sym_version_info*, %struct.elf_assign_sym_version_info** %6, align 8
  %256 = getelementptr inbounds %struct.elf_assign_sym_version_info, %struct.elf_assign_sym_version_info* %255, i32 0, i32 2
  %257 = load i32, i32* %256, align 8
  %258 = load i32, i32* %11, align 4
  %259 = call %struct.bfd_elf_version_tree* @bfd_zalloc(i32 %257, i32 %258)
  store %struct.bfd_elf_version_tree* %259, %struct.bfd_elf_version_tree** %12, align 8
  %260 = load %struct.bfd_elf_version_tree*, %struct.bfd_elf_version_tree** %12, align 8
  %261 = icmp eq %struct.bfd_elf_version_tree* %260, null
  br i1 %261, label %262, label %267

262:                                              ; preds = %254
  %263 = load i8*, i8** @TRUE, align 8
  %264 = load %struct.elf_assign_sym_version_info*, %struct.elf_assign_sym_version_info** %6, align 8
  %265 = getelementptr inbounds %struct.elf_assign_sym_version_info, %struct.elf_assign_sym_version_info* %264, i32 0, i32 1
  store i8* %263, i8** %265, align 8
  %266 = load i8*, i8** @FALSE, align 8
  store i8* %266, i8** %3, align 8
  br label %492

267:                                              ; preds = %254
  %268 = load i8*, i8** %10, align 8
  %269 = load %struct.bfd_elf_version_tree*, %struct.bfd_elf_version_tree** %12, align 8
  %270 = getelementptr inbounds %struct.bfd_elf_version_tree, %struct.bfd_elf_version_tree* %269, i32 0, i32 0
  store i8* %268, i8** %270, align 8
  %271 = load %struct.bfd_elf_version_tree*, %struct.bfd_elf_version_tree** %12, align 8
  %272 = getelementptr inbounds %struct.bfd_elf_version_tree, %struct.bfd_elf_version_tree* %271, i32 0, i32 1
  store i32 -1, i32* %272, align 8
  %273 = load i8*, i8** @TRUE, align 8
  %274 = load %struct.bfd_elf_version_tree*, %struct.bfd_elf_version_tree** %12, align 8
  %275 = getelementptr inbounds %struct.bfd_elf_version_tree, %struct.bfd_elf_version_tree* %274, i32 0, i32 7
  store i8* %273, i8** %275, align 8
  store i32 1, i32* %18, align 4
  %276 = load %struct.elf_assign_sym_version_info*, %struct.elf_assign_sym_version_info** %6, align 8
  %277 = getelementptr inbounds %struct.elf_assign_sym_version_info, %struct.elf_assign_sym_version_info* %276, i32 0, i32 0
  %278 = load %struct.bfd_elf_version_tree*, %struct.bfd_elf_version_tree** %277, align 8
  %279 = icmp ne %struct.bfd_elf_version_tree* %278, null
  br i1 %279, label %280, label %288

280:                                              ; preds = %267
  %281 = load %struct.elf_assign_sym_version_info*, %struct.elf_assign_sym_version_info** %6, align 8
  %282 = getelementptr inbounds %struct.elf_assign_sym_version_info, %struct.elf_assign_sym_version_info* %281, i32 0, i32 0
  %283 = load %struct.bfd_elf_version_tree*, %struct.bfd_elf_version_tree** %282, align 8
  %284 = getelementptr inbounds %struct.bfd_elf_version_tree, %struct.bfd_elf_version_tree* %283, i32 0, i32 2
  %285 = load i64, i64* %284, align 8
  %286 = icmp eq i64 %285, 0
  br i1 %286, label %287, label %288

287:                                              ; preds = %280
  store i32 0, i32* %18, align 4
  br label %288

288:                                              ; preds = %287, %280, %267
  %289 = load %struct.elf_assign_sym_version_info*, %struct.elf_assign_sym_version_info** %6, align 8
  %290 = getelementptr inbounds %struct.elf_assign_sym_version_info, %struct.elf_assign_sym_version_info* %289, i32 0, i32 0
  store %struct.bfd_elf_version_tree** %290, %struct.bfd_elf_version_tree*** %17, align 8
  br label %291

291:                                              ; preds = %298, %288
  %292 = load %struct.bfd_elf_version_tree**, %struct.bfd_elf_version_tree*** %17, align 8
  %293 = load %struct.bfd_elf_version_tree*, %struct.bfd_elf_version_tree** %292, align 8
  %294 = icmp ne %struct.bfd_elf_version_tree* %293, null
  br i1 %294, label %295, label %302

295:                                              ; preds = %291
  %296 = load i32, i32* %18, align 4
  %297 = add nsw i32 %296, 1
  store i32 %297, i32* %18, align 4
  br label %298

298:                                              ; preds = %295
  %299 = load %struct.bfd_elf_version_tree**, %struct.bfd_elf_version_tree*** %17, align 8
  %300 = load %struct.bfd_elf_version_tree*, %struct.bfd_elf_version_tree** %299, align 8
  %301 = getelementptr inbounds %struct.bfd_elf_version_tree, %struct.bfd_elf_version_tree* %300, i32 0, i32 6
  store %struct.bfd_elf_version_tree** %301, %struct.bfd_elf_version_tree*** %17, align 8
  br label %291

302:                                              ; preds = %291
  %303 = load i32, i32* %18, align 4
  %304 = sext i32 %303 to i64
  %305 = load %struct.bfd_elf_version_tree*, %struct.bfd_elf_version_tree** %12, align 8
  %306 = getelementptr inbounds %struct.bfd_elf_version_tree, %struct.bfd_elf_version_tree* %305, i32 0, i32 2
  store i64 %304, i64* %306, align 8
  %307 = load %struct.bfd_elf_version_tree*, %struct.bfd_elf_version_tree** %12, align 8
  %308 = load %struct.bfd_elf_version_tree**, %struct.bfd_elf_version_tree*** %17, align 8
  store %struct.bfd_elf_version_tree* %307, %struct.bfd_elf_version_tree** %308, align 8
  %309 = load %struct.bfd_elf_version_tree*, %struct.bfd_elf_version_tree** %12, align 8
  %310 = load %struct.elf_link_hash_entry*, %struct.elf_link_hash_entry** %4, align 8
  %311 = getelementptr inbounds %struct.elf_link_hash_entry, %struct.elf_link_hash_entry* %310, i32 0, i32 2
  %312 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %311, i32 0, i32 0
  store %struct.bfd_elf_version_tree* %309, %struct.bfd_elf_version_tree** %312, align 8
  br label %334

313:                                              ; preds = %242, %239
  %314 = load %struct.bfd_elf_version_tree*, %struct.bfd_elf_version_tree** %12, align 8
  %315 = icmp eq %struct.bfd_elf_version_tree* %314, null
  br i1 %315, label %316, label %333

316:                                              ; preds = %313
  %317 = call i32 @_(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0))
  %318 = load %struct.elf_assign_sym_version_info*, %struct.elf_assign_sym_version_info** %6, align 8
  %319 = getelementptr inbounds %struct.elf_assign_sym_version_info, %struct.elf_assign_sym_version_info* %318, i32 0, i32 2
  %320 = load i32, i32* %319, align 8
  %321 = load %struct.elf_link_hash_entry*, %struct.elf_link_hash_entry** %4, align 8
  %322 = getelementptr inbounds %struct.elf_link_hash_entry, %struct.elf_link_hash_entry* %321, i32 0, i32 3
  %323 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %322, i32 0, i32 1
  %324 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %323, i32 0, i32 0
  %325 = load i8*, i8** %324, align 8
  %326 = call i32 @_bfd_error_handler(i32 %317, i32 %320, i8* %325)
  %327 = load i32, i32* @bfd_error_bad_value, align 4
  %328 = call i32 @bfd_set_error(i32 %327)
  %329 = load i8*, i8** @TRUE, align 8
  %330 = load %struct.elf_assign_sym_version_info*, %struct.elf_assign_sym_version_info** %6, align 8
  %331 = getelementptr inbounds %struct.elf_assign_sym_version_info, %struct.elf_assign_sym_version_info* %330, i32 0, i32 1
  store i8* %329, i8** %331, align 8
  %332 = load i8*, i8** @FALSE, align 8
  store i8* %332, i8** %3, align 8
  br label %492

333:                                              ; preds = %313
  br label %334

334:                                              ; preds = %333, %302
  %335 = load i8*, i8** %13, align 8
  %336 = icmp ne i8* %335, null
  br i1 %336, label %337, label %340

337:                                              ; preds = %334
  %338 = load %struct.elf_link_hash_entry*, %struct.elf_link_hash_entry** %4, align 8
  %339 = getelementptr inbounds %struct.elf_link_hash_entry, %struct.elf_link_hash_entry* %338, i32 0, i32 0
  store i32 1, i32* %339, align 8
  br label %340

340:                                              ; preds = %337, %334
  br label %341

341:                                              ; preds = %340, %81, %67
  %342 = load %struct.elf_link_hash_entry*, %struct.elf_link_hash_entry** %4, align 8
  %343 = getelementptr inbounds %struct.elf_link_hash_entry, %struct.elf_link_hash_entry* %342, i32 0, i32 2
  %344 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %343, i32 0, i32 0
  %345 = load %struct.bfd_elf_version_tree*, %struct.bfd_elf_version_tree** %344, align 8
  %346 = icmp eq %struct.bfd_elf_version_tree* %345, null
  br i1 %346, label %347, label %490

347:                                              ; preds = %341
  %348 = load %struct.elf_assign_sym_version_info*, %struct.elf_assign_sym_version_info** %6, align 8
  %349 = getelementptr inbounds %struct.elf_assign_sym_version_info, %struct.elf_assign_sym_version_info* %348, i32 0, i32 0
  %350 = load %struct.bfd_elf_version_tree*, %struct.bfd_elf_version_tree** %349, align 8
  %351 = icmp ne %struct.bfd_elf_version_tree* %350, null
  br i1 %351, label %352, label %490

352:                                              ; preds = %347
  store %struct.bfd_elf_version_tree* null, %struct.bfd_elf_version_tree** %20, align 8
  %353 = load %struct.elf_assign_sym_version_info*, %struct.elf_assign_sym_version_info** %6, align 8
  %354 = getelementptr inbounds %struct.elf_assign_sym_version_info, %struct.elf_assign_sym_version_info* %353, i32 0, i32 0
  %355 = load %struct.bfd_elf_version_tree*, %struct.bfd_elf_version_tree** %354, align 8
  store %struct.bfd_elf_version_tree* %355, %struct.bfd_elf_version_tree** %19, align 8
  br label %356

356:                                              ; preds = %459, %352
  %357 = load %struct.bfd_elf_version_tree*, %struct.bfd_elf_version_tree** %19, align 8
  %358 = icmp ne %struct.bfd_elf_version_tree* %357, null
  br i1 %358, label %359, label %463

359:                                              ; preds = %356
  %360 = load %struct.bfd_elf_version_tree*, %struct.bfd_elf_version_tree** %19, align 8
  %361 = getelementptr inbounds %struct.bfd_elf_version_tree, %struct.bfd_elf_version_tree* %360, i32 0, i32 5
  %362 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %361, i32 0, i32 0
  %363 = load i32*, i32** %362, align 8
  %364 = icmp ne i32* %363, null
  br i1 %364, label %365, label %413

365:                                              ; preds = %359
  %366 = load i8*, i8** @FALSE, align 8
  store i8* %366, i8** %22, align 8
  store %struct.bfd_elf_version_expr* null, %struct.bfd_elf_version_expr** %21, align 8
  br label %367

367:                                              ; preds = %395, %365
  %368 = load %struct.bfd_elf_version_tree*, %struct.bfd_elf_version_tree** %19, align 8
  %369 = getelementptr inbounds %struct.bfd_elf_version_tree, %struct.bfd_elf_version_tree* %368, i32 0, i32 4
  %370 = load %struct.bfd_elf_version_expr* (%struct.TYPE_15__*, %struct.bfd_elf_version_expr*, i8*)*, %struct.bfd_elf_version_expr* (%struct.TYPE_15__*, %struct.bfd_elf_version_expr*, i8*)** %369, align 8
  %371 = load %struct.bfd_elf_version_tree*, %struct.bfd_elf_version_tree** %19, align 8
  %372 = getelementptr inbounds %struct.bfd_elf_version_tree, %struct.bfd_elf_version_tree* %371, i32 0, i32 5
  %373 = load %struct.bfd_elf_version_expr*, %struct.bfd_elf_version_expr** %21, align 8
  %374 = load %struct.elf_link_hash_entry*, %struct.elf_link_hash_entry** %4, align 8
  %375 = getelementptr inbounds %struct.elf_link_hash_entry, %struct.elf_link_hash_entry* %374, i32 0, i32 3
  %376 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %375, i32 0, i32 1
  %377 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %376, i32 0, i32 0
  %378 = load i8*, i8** %377, align 8
  %379 = call %struct.bfd_elf_version_expr* %370(%struct.TYPE_15__* %372, %struct.bfd_elf_version_expr* %373, i8* %378)
  store %struct.bfd_elf_version_expr* %379, %struct.bfd_elf_version_expr** %21, align 8
  %380 = icmp ne %struct.bfd_elf_version_expr* %379, null
  br i1 %380, label %381, label %396

381:                                              ; preds = %367
  %382 = load %struct.bfd_elf_version_expr*, %struct.bfd_elf_version_expr** %21, align 8
  %383 = getelementptr inbounds %struct.bfd_elf_version_expr, %struct.bfd_elf_version_expr* %382, i32 0, i32 2
  %384 = load i64, i64* %383, align 8
  %385 = icmp ne i64 %384, 0
  br i1 %385, label %386, label %388

386:                                              ; preds = %381
  %387 = load i8*, i8** @TRUE, align 8
  store i8* %387, i8** %22, align 8
  br label %395

388:                                              ; preds = %381
  %389 = load %struct.bfd_elf_version_tree*, %struct.bfd_elf_version_tree** %19, align 8
  %390 = load %struct.elf_link_hash_entry*, %struct.elf_link_hash_entry** %4, align 8
  %391 = getelementptr inbounds %struct.elf_link_hash_entry, %struct.elf_link_hash_entry* %390, i32 0, i32 2
  %392 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %391, i32 0, i32 0
  store %struct.bfd_elf_version_tree* %389, %struct.bfd_elf_version_tree** %392, align 8
  store %struct.bfd_elf_version_tree* null, %struct.bfd_elf_version_tree** %20, align 8
  %393 = load %struct.bfd_elf_version_expr*, %struct.bfd_elf_version_expr** %21, align 8
  %394 = getelementptr inbounds %struct.bfd_elf_version_expr, %struct.bfd_elf_version_expr* %393, i32 0, i32 0
  store i32 1, i32* %394, align 8
  br label %396

395:                                              ; preds = %386
  br label %367

396:                                              ; preds = %388, %367
  %397 = load %struct.bfd_elf_version_expr*, %struct.bfd_elf_version_expr** %21, align 8
  %398 = icmp ne %struct.bfd_elf_version_expr* %397, null
  br i1 %398, label %399, label %400

399:                                              ; preds = %396
  br label %463

400:                                              ; preds = %396
  %401 = load i8*, i8** %22, align 8
  %402 = icmp ne i8* %401, null
  br i1 %402, label %403, label %411

403:                                              ; preds = %400
  %404 = load %struct.elf_backend_data*, %struct.elf_backend_data** %8, align 8
  %405 = getelementptr inbounds %struct.elf_backend_data, %struct.elf_backend_data* %404, i32 0, i32 0
  %406 = load i32 (%struct.bfd_link_info*, %struct.elf_link_hash_entry*, i8*)*, i32 (%struct.bfd_link_info*, %struct.elf_link_hash_entry*, i8*)** %405, align 8
  %407 = load %struct.bfd_link_info*, %struct.bfd_link_info** %7, align 8
  %408 = load %struct.elf_link_hash_entry*, %struct.elf_link_hash_entry** %4, align 8
  %409 = load i8*, i8** @TRUE, align 8
  %410 = call i32 %406(%struct.bfd_link_info* %407, %struct.elf_link_hash_entry* %408, i8* %409)
  br label %411

411:                                              ; preds = %403, %400
  br label %412

412:                                              ; preds = %411
  br label %413

413:                                              ; preds = %412, %359
  %414 = load %struct.bfd_elf_version_tree*, %struct.bfd_elf_version_tree** %19, align 8
  %415 = getelementptr inbounds %struct.bfd_elf_version_tree, %struct.bfd_elf_version_tree* %414, i32 0, i32 3
  %416 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %415, i32 0, i32 0
  %417 = load i32*, i32** %416, align 8
  %418 = icmp ne i32* %417, null
  br i1 %418, label %419, label %458

419:                                              ; preds = %413
  store %struct.bfd_elf_version_expr* null, %struct.bfd_elf_version_expr** %21, align 8
  br label %420

420:                                              ; preds = %452, %419
  %421 = load %struct.bfd_elf_version_tree*, %struct.bfd_elf_version_tree** %19, align 8
  %422 = getelementptr inbounds %struct.bfd_elf_version_tree, %struct.bfd_elf_version_tree* %421, i32 0, i32 4
  %423 = load %struct.bfd_elf_version_expr* (%struct.TYPE_15__*, %struct.bfd_elf_version_expr*, i8*)*, %struct.bfd_elf_version_expr* (%struct.TYPE_15__*, %struct.bfd_elf_version_expr*, i8*)** %422, align 8
  %424 = load %struct.bfd_elf_version_tree*, %struct.bfd_elf_version_tree** %19, align 8
  %425 = getelementptr inbounds %struct.bfd_elf_version_tree, %struct.bfd_elf_version_tree* %424, i32 0, i32 3
  %426 = load %struct.bfd_elf_version_expr*, %struct.bfd_elf_version_expr** %21, align 8
  %427 = load %struct.elf_link_hash_entry*, %struct.elf_link_hash_entry** %4, align 8
  %428 = getelementptr inbounds %struct.elf_link_hash_entry, %struct.elf_link_hash_entry* %427, i32 0, i32 3
  %429 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %428, i32 0, i32 1
  %430 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %429, i32 0, i32 0
  %431 = load i8*, i8** %430, align 8
  %432 = call %struct.bfd_elf_version_expr* %423(%struct.TYPE_15__* %425, %struct.bfd_elf_version_expr* %426, i8* %431)
  store %struct.bfd_elf_version_expr* %432, %struct.bfd_elf_version_expr** %21, align 8
  %433 = icmp ne %struct.bfd_elf_version_expr* %432, null
  br i1 %433, label %434, label %453

434:                                              ; preds = %420
  %435 = load %struct.bfd_elf_version_tree*, %struct.bfd_elf_version_tree** %19, align 8
  store %struct.bfd_elf_version_tree* %435, %struct.bfd_elf_version_tree** %20, align 8
  %436 = load %struct.bfd_elf_version_expr*, %struct.bfd_elf_version_expr** %21, align 8
  %437 = getelementptr inbounds %struct.bfd_elf_version_expr, %struct.bfd_elf_version_expr* %436, i32 0, i32 1
  %438 = load i8*, i8** %437, align 8
  %439 = getelementptr inbounds i8, i8* %438, i64 0
  %440 = load i8, i8* %439, align 1
  %441 = sext i8 %440 to i32
  %442 = icmp ne i32 %441, 42
  br i1 %442, label %451, label %443

443:                                              ; preds = %434
  %444 = load %struct.bfd_elf_version_expr*, %struct.bfd_elf_version_expr** %21, align 8
  %445 = getelementptr inbounds %struct.bfd_elf_version_expr, %struct.bfd_elf_version_expr* %444, i32 0, i32 1
  %446 = load i8*, i8** %445, align 8
  %447 = getelementptr inbounds i8, i8* %446, i64 1
  %448 = load i8, i8* %447, align 1
  %449 = sext i8 %448 to i32
  %450 = icmp ne i32 %449, 0
  br i1 %450, label %451, label %452

451:                                              ; preds = %443, %434
  br label %453

452:                                              ; preds = %443
  br label %420

453:                                              ; preds = %451, %420
  %454 = load %struct.bfd_elf_version_expr*, %struct.bfd_elf_version_expr** %21, align 8
  %455 = icmp ne %struct.bfd_elf_version_expr* %454, null
  br i1 %455, label %456, label %457

456:                                              ; preds = %453
  br label %463

457:                                              ; preds = %453
  br label %458

458:                                              ; preds = %457, %413
  br label %459

459:                                              ; preds = %458
  %460 = load %struct.bfd_elf_version_tree*, %struct.bfd_elf_version_tree** %19, align 8
  %461 = getelementptr inbounds %struct.bfd_elf_version_tree, %struct.bfd_elf_version_tree* %460, i32 0, i32 6
  %462 = load %struct.bfd_elf_version_tree*, %struct.bfd_elf_version_tree** %461, align 8
  store %struct.bfd_elf_version_tree* %462, %struct.bfd_elf_version_tree** %19, align 8
  br label %356

463:                                              ; preds = %456, %399, %356
  %464 = load %struct.bfd_elf_version_tree*, %struct.bfd_elf_version_tree** %20, align 8
  %465 = icmp ne %struct.bfd_elf_version_tree* %464, null
  br i1 %465, label %466, label %489

466:                                              ; preds = %463
  %467 = load %struct.bfd_elf_version_tree*, %struct.bfd_elf_version_tree** %20, align 8
  %468 = load %struct.elf_link_hash_entry*, %struct.elf_link_hash_entry** %4, align 8
  %469 = getelementptr inbounds %struct.elf_link_hash_entry, %struct.elf_link_hash_entry* %468, i32 0, i32 2
  %470 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %469, i32 0, i32 0
  store %struct.bfd_elf_version_tree* %467, %struct.bfd_elf_version_tree** %470, align 8
  %471 = load %struct.elf_link_hash_entry*, %struct.elf_link_hash_entry** %4, align 8
  %472 = getelementptr inbounds %struct.elf_link_hash_entry, %struct.elf_link_hash_entry* %471, i32 0, i32 1
  %473 = load i32, i32* %472, align 4
  %474 = icmp ne i32 %473, -1
  br i1 %474, label %475, label %488

475:                                              ; preds = %466
  %476 = load %struct.bfd_link_info*, %struct.bfd_link_info** %7, align 8
  %477 = getelementptr inbounds %struct.bfd_link_info, %struct.bfd_link_info* %476, i32 0, i32 0
  %478 = load i32, i32* %477, align 8
  %479 = icmp ne i32 %478, 0
  br i1 %479, label %488, label %480

480:                                              ; preds = %475
  %481 = load %struct.elf_backend_data*, %struct.elf_backend_data** %8, align 8
  %482 = getelementptr inbounds %struct.elf_backend_data, %struct.elf_backend_data* %481, i32 0, i32 0
  %483 = load i32 (%struct.bfd_link_info*, %struct.elf_link_hash_entry*, i8*)*, i32 (%struct.bfd_link_info*, %struct.elf_link_hash_entry*, i8*)** %482, align 8
  %484 = load %struct.bfd_link_info*, %struct.bfd_link_info** %7, align 8
  %485 = load %struct.elf_link_hash_entry*, %struct.elf_link_hash_entry** %4, align 8
  %486 = load i8*, i8** @TRUE, align 8
  %487 = call i32 %483(%struct.bfd_link_info* %484, %struct.elf_link_hash_entry* %485, i8* %486)
  br label %488

488:                                              ; preds = %480, %475, %466
  br label %489

489:                                              ; preds = %488, %463
  br label %490

490:                                              ; preds = %489, %347, %341
  %491 = load i8*, i8** @TRUE, align 8
  store i8* %491, i8** %3, align 8
  br label %492

492:                                              ; preds = %490, %316, %262, %252, %142, %112, %65, %58
  %493 = load i8*, i8** %3, align 8
  ret i8* %493
}

declare dso_local i32 @_bfd_elf_fix_symbol_flags(%struct.elf_link_hash_entry*, %struct.elf_info_failed*) #1

declare dso_local %struct.elf_backend_data* @get_elf_backend_data(i32) #1

declare dso_local i8* @strchr(i8*, i8 signext) #1

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i8* @bfd_malloc(i64) #1

declare dso_local i32 @memcpy(i8*, i8*, i64) #1

declare dso_local i32 @free(i8*) #1

declare dso_local %struct.bfd_elf_version_tree* @bfd_zalloc(i32, i32) #1

declare dso_local i32 @_bfd_error_handler(i32, i32, i8*) #1

declare dso_local i32 @_(i8*) #1

declare dso_local i32 @bfd_set_error(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

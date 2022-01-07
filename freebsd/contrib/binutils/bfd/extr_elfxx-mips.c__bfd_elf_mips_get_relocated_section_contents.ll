; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/bfd/extr_elfxx-mips.c__bfd_elf_mips_get_relocated_section_contents.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/bfd/extr_elfxx-mips.c__bfd_elf_mips_get_relocated_section_contents.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_45__ = type { i64 }
%struct.bfd_link_info = type { %struct.TYPE_43__*, %struct.TYPE_39__* }
%struct.TYPE_43__ = type { i32 (%struct.bfd_link_info*, i32*, i32, i32, i32, %struct.TYPE_45__*, %struct.TYPE_35__*, i32)*, i32 (%struct.bfd_link_info*, i8*, %struct.TYPE_45__*, %struct.TYPE_35__*, i32)*, i32 (%struct.bfd_link_info*, i32, %struct.TYPE_45__*, %struct.TYPE_35__*, i32, i32)* }
%struct.TYPE_35__ = type { i64, %struct.TYPE_36__**, %struct.TYPE_35__*, i64, i64, %struct.TYPE_45__* }
%struct.TYPE_36__ = type { i32, i32, %struct.TYPE_44__*, i32** }
%struct.TYPE_44__ = type { i64, i32 }
%struct.TYPE_39__ = type { i32 }
%struct.bfd_link_order = type { %struct.TYPE_38__ }
%struct.TYPE_38__ = type { %struct.TYPE_37__ }
%struct.TYPE_37__ = type { %struct.TYPE_35__* }
%struct.bfd_hash_entry = type { i32 }
%struct.bfd_link_hash_entry = type { i32, %struct.TYPE_42__ }
%struct.TYPE_42__ = type { %struct.TYPE_41__, %struct.TYPE_40__ }
%struct.TYPE_41__ = type { %struct.bfd_link_hash_entry* }
%struct.TYPE_40__ = type { i32 }

@.str = private unnamed_addr constant [4 x i8] c"_gp\00", align 1
@FALSE = common dso_local global i32 0, align 4
@_bfd_mips_elf32_gprel16_reloc = common dso_local global i64 0, align 8
@bfd_reloc_ok = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @_bfd_elf_mips_get_relocated_section_contents(%struct.TYPE_45__* %0, %struct.bfd_link_info* %1, %struct.bfd_link_order* %2, i32* %3, i32 %4, i32** %5) #0 {
  %7 = alloca i32*, align 8
  %8 = alloca %struct.TYPE_45__*, align 8
  %9 = alloca %struct.bfd_link_info*, align 8
  %10 = alloca %struct.bfd_link_order*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32**, align 8
  %14 = alloca %struct.TYPE_45__*, align 8
  %15 = alloca %struct.TYPE_35__*, align 8
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  %18 = alloca %struct.TYPE_36__**, align 8
  %19 = alloca i64, align 8
  %20 = alloca %struct.TYPE_36__**, align 8
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca %struct.bfd_hash_entry*, align 8
  %24 = alloca %struct.bfd_link_hash_entry*, align 8
  %25 = alloca i8*, align 8
  %26 = alloca i32, align 4
  %27 = alloca i32*, align 8
  %28 = alloca %struct.TYPE_35__*, align 8
  store %struct.TYPE_45__* %0, %struct.TYPE_45__** %8, align 8
  store %struct.bfd_link_info* %1, %struct.bfd_link_info** %9, align 8
  store %struct.bfd_link_order* %2, %struct.bfd_link_order** %10, align 8
  store i32* %3, i32** %11, align 8
  store i32 %4, i32* %12, align 4
  store i32** %5, i32*** %13, align 8
  %29 = load %struct.bfd_link_order*, %struct.bfd_link_order** %10, align 8
  %30 = getelementptr inbounds %struct.bfd_link_order, %struct.bfd_link_order* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %31, i32 0, i32 0
  %33 = load %struct.TYPE_35__*, %struct.TYPE_35__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %33, i32 0, i32 5
  %35 = load %struct.TYPE_45__*, %struct.TYPE_45__** %34, align 8
  store %struct.TYPE_45__* %35, %struct.TYPE_45__** %14, align 8
  %36 = load %struct.bfd_link_order*, %struct.bfd_link_order** %10, align 8
  %37 = getelementptr inbounds %struct.bfd_link_order, %struct.bfd_link_order* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %38, i32 0, i32 0
  %40 = load %struct.TYPE_35__*, %struct.TYPE_35__** %39, align 8
  store %struct.TYPE_35__* %40, %struct.TYPE_35__** %15, align 8
  %41 = load %struct.TYPE_45__*, %struct.TYPE_45__** %14, align 8
  %42 = load %struct.TYPE_35__*, %struct.TYPE_35__** %15, align 8
  %43 = call i64 @bfd_get_reloc_upper_bound(%struct.TYPE_45__* %41, %struct.TYPE_35__* %42)
  store i64 %43, i64* %17, align 8
  store %struct.TYPE_36__** null, %struct.TYPE_36__*** %18, align 8
  %44 = load i64, i64* %17, align 8
  %45 = icmp slt i64 %44, 0
  br i1 %45, label %46, label %47

46:                                               ; preds = %6
  br label %310

47:                                               ; preds = %6
  %48 = load i64, i64* %17, align 8
  %49 = call %struct.TYPE_36__** @bfd_malloc(i64 %48)
  store %struct.TYPE_36__** %49, %struct.TYPE_36__*** %18, align 8
  %50 = load %struct.TYPE_36__**, %struct.TYPE_36__*** %18, align 8
  %51 = icmp eq %struct.TYPE_36__** %50, null
  br i1 %51, label %52, label %56

52:                                               ; preds = %47
  %53 = load i64, i64* %17, align 8
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %56

55:                                               ; preds = %52
  br label %310

56:                                               ; preds = %52, %47
  %57 = load %struct.TYPE_35__*, %struct.TYPE_35__** %15, align 8
  %58 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %57, i32 0, i32 4
  %59 = load i64, i64* %58, align 8
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %65

61:                                               ; preds = %56
  %62 = load %struct.TYPE_35__*, %struct.TYPE_35__** %15, align 8
  %63 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %62, i32 0, i32 4
  %64 = load i64, i64* %63, align 8
  br label %69

65:                                               ; preds = %56
  %66 = load %struct.TYPE_35__*, %struct.TYPE_35__** %15, align 8
  %67 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %66, i32 0, i32 3
  %68 = load i64, i64* %67, align 8
  br label %69

69:                                               ; preds = %65, %61
  %70 = phi i64 [ %64, %61 ], [ %68, %65 ]
  store i64 %70, i64* %16, align 8
  %71 = load %struct.TYPE_45__*, %struct.TYPE_45__** %14, align 8
  %72 = load %struct.TYPE_35__*, %struct.TYPE_35__** %15, align 8
  %73 = load i32*, i32** %11, align 8
  %74 = load i64, i64* %16, align 8
  %75 = call i32 @bfd_get_section_contents(%struct.TYPE_45__* %71, %struct.TYPE_35__* %72, i32* %73, i32 0, i64 %74)
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %78, label %77

77:                                               ; preds = %69
  br label %310

78:                                               ; preds = %69
  %79 = load %struct.TYPE_45__*, %struct.TYPE_45__** %14, align 8
  %80 = load %struct.TYPE_35__*, %struct.TYPE_35__** %15, align 8
  %81 = load %struct.TYPE_36__**, %struct.TYPE_36__*** %18, align 8
  %82 = load i32**, i32*** %13, align 8
  %83 = call i64 @bfd_canonicalize_reloc(%struct.TYPE_45__* %79, %struct.TYPE_35__* %80, %struct.TYPE_36__** %81, i32** %82)
  store i64 %83, i64* %19, align 8
  %84 = load i64, i64* %19, align 8
  %85 = icmp slt i64 %84, 0
  br i1 %85, label %86, label %87

86:                                               ; preds = %78
  br label %310

87:                                               ; preds = %78
  %88 = load i64, i64* %19, align 8
  %89 = icmp sgt i64 %88, 0
  br i1 %89, label %90, label %302

90:                                               ; preds = %87
  store i32 305419896, i32* %22, align 4
  %91 = load %struct.TYPE_45__*, %struct.TYPE_45__** %8, align 8
  %92 = icmp ne %struct.TYPE_45__* %91, null
  br i1 %92, label %93, label %105

93:                                               ; preds = %90
  %94 = load %struct.TYPE_45__*, %struct.TYPE_45__** %14, align 8
  %95 = icmp ne %struct.TYPE_45__* %94, null
  br i1 %95, label %96, label %105

96:                                               ; preds = %93
  %97 = load %struct.TYPE_45__*, %struct.TYPE_45__** %8, align 8
  %98 = getelementptr inbounds %struct.TYPE_45__, %struct.TYPE_45__* %97, i32 0, i32 0
  %99 = load i64, i64* %98, align 8
  %100 = load %struct.TYPE_45__*, %struct.TYPE_45__** %14, align 8
  %101 = getelementptr inbounds %struct.TYPE_45__, %struct.TYPE_45__* %100, i32 0, i32 0
  %102 = load i64, i64* %101, align 8
  %103 = icmp eq i64 %99, %102
  br i1 %103, label %104, label %105

104:                                              ; preds = %96
  store %struct.bfd_link_hash_entry* null, %struct.bfd_link_hash_entry** %24, align 8
  br label %115

105:                                              ; preds = %96, %93, %90
  %106 = load %struct.bfd_link_info*, %struct.bfd_link_info** %9, align 8
  %107 = getelementptr inbounds %struct.bfd_link_info, %struct.bfd_link_info* %106, i32 0, i32 1
  %108 = load %struct.TYPE_39__*, %struct.TYPE_39__** %107, align 8
  %109 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %108, i32 0, i32 0
  %110 = load i32, i32* @FALSE, align 4
  %111 = load i32, i32* @FALSE, align 4
  %112 = call %struct.bfd_hash_entry* @bfd_hash_lookup(i32* %109, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32 %110, i32 %111)
  store %struct.bfd_hash_entry* %112, %struct.bfd_hash_entry** %23, align 8
  %113 = load %struct.bfd_hash_entry*, %struct.bfd_hash_entry** %23, align 8
  %114 = bitcast %struct.bfd_hash_entry* %113 to %struct.bfd_link_hash_entry*
  store %struct.bfd_link_hash_entry* %114, %struct.bfd_link_hash_entry** %24, align 8
  br label %115

115:                                              ; preds = %105, %104
  br label %116

116:                                              ; preds = %130, %115
  %117 = load %struct.bfd_link_hash_entry*, %struct.bfd_link_hash_entry** %24, align 8
  %118 = icmp ne %struct.bfd_link_hash_entry* %117, null
  br i1 %118, label %119, label %140

119:                                              ; preds = %116
  %120 = load %struct.bfd_link_hash_entry*, %struct.bfd_link_hash_entry** %24, align 8
  %121 = getelementptr inbounds %struct.bfd_link_hash_entry, %struct.bfd_link_hash_entry* %120, i32 0, i32 0
  %122 = load i32, i32* %121, align 8
  switch i32 %122, label %137 [
    i32 134, label %123
    i32 133, label %123
    i32 139, label %123
    i32 138, label %124
    i32 137, label %124
    i32 136, label %130
    i32 132, label %130
    i32 135, label %136
  ]

123:                                              ; preds = %119, %119, %119
  store i32 0, i32* %21, align 4
  br label %139

124:                                              ; preds = %119, %119
  store i32 1, i32* %21, align 4
  %125 = load %struct.bfd_link_hash_entry*, %struct.bfd_link_hash_entry** %24, align 8
  %126 = getelementptr inbounds %struct.bfd_link_hash_entry, %struct.bfd_link_hash_entry* %125, i32 0, i32 1
  %127 = getelementptr inbounds %struct.TYPE_42__, %struct.TYPE_42__* %126, i32 0, i32 1
  %128 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %127, i32 0, i32 0
  %129 = load i32, i32* %128, align 8
  store i32 %129, i32* %22, align 4
  br label %139

130:                                              ; preds = %119, %119
  %131 = load %struct.bfd_link_hash_entry*, %struct.bfd_link_hash_entry** %24, align 8
  %132 = getelementptr inbounds %struct.bfd_link_hash_entry, %struct.bfd_link_hash_entry* %131, i32 0, i32 1
  %133 = getelementptr inbounds %struct.TYPE_42__, %struct.TYPE_42__* %132, i32 0, i32 0
  %134 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %133, i32 0, i32 0
  %135 = load %struct.bfd_link_hash_entry*, %struct.bfd_link_hash_entry** %134, align 8
  store %struct.bfd_link_hash_entry* %135, %struct.bfd_link_hash_entry** %24, align 8
  br label %116

136:                                              ; preds = %119
  br label %137

137:                                              ; preds = %119, %136
  %138 = call i32 (...) @abort() #3
  unreachable

139:                                              ; preds = %124, %123
  br label %141

140:                                              ; preds = %116
  store i32 0, i32* %21, align 4
  br label %141

141:                                              ; preds = %140, %139
  %142 = load %struct.TYPE_36__**, %struct.TYPE_36__*** %18, align 8
  store %struct.TYPE_36__** %142, %struct.TYPE_36__*** %20, align 8
  br label %143

143:                                              ; preds = %298, %141
  %144 = load %struct.TYPE_36__**, %struct.TYPE_36__*** %20, align 8
  %145 = load %struct.TYPE_36__*, %struct.TYPE_36__** %144, align 8
  %146 = icmp ne %struct.TYPE_36__* %145, null
  br i1 %146, label %147, label %301

147:                                              ; preds = %143
  store i8* null, i8** %25, align 8
  %148 = load %struct.TYPE_36__**, %struct.TYPE_36__*** %20, align 8
  %149 = load %struct.TYPE_36__*, %struct.TYPE_36__** %148, align 8
  %150 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %149, i32 0, i32 3
  %151 = load i32**, i32*** %150, align 8
  %152 = load i32*, i32** %151, align 8
  store i32* %152, i32** %27, align 8
  %153 = load i32, i32* %21, align 4
  %154 = icmp ne i32 %153, 0
  br i1 %154, label %155, label %174

155:                                              ; preds = %147
  %156 = load %struct.TYPE_36__**, %struct.TYPE_36__*** %20, align 8
  %157 = load %struct.TYPE_36__*, %struct.TYPE_36__** %156, align 8
  %158 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %157, i32 0, i32 2
  %159 = load %struct.TYPE_44__*, %struct.TYPE_44__** %158, align 8
  %160 = getelementptr inbounds %struct.TYPE_44__, %struct.TYPE_44__* %159, i32 0, i32 0
  %161 = load i64, i64* %160, align 8
  %162 = load i64, i64* @_bfd_mips_elf32_gprel16_reloc, align 8
  %163 = icmp eq i64 %161, %162
  br i1 %163, label %164, label %174

164:                                              ; preds = %155
  %165 = load %struct.TYPE_45__*, %struct.TYPE_45__** %14, align 8
  %166 = load i32*, i32** %27, align 8
  %167 = load %struct.TYPE_36__**, %struct.TYPE_36__*** %20, align 8
  %168 = load %struct.TYPE_36__*, %struct.TYPE_36__** %167, align 8
  %169 = load %struct.TYPE_35__*, %struct.TYPE_35__** %15, align 8
  %170 = load i32, i32* %12, align 4
  %171 = load i32*, i32** %11, align 8
  %172 = load i32, i32* %22, align 4
  %173 = call i32 @_bfd_mips_elf_gprel16_with_gp(%struct.TYPE_45__* %165, i32* %166, %struct.TYPE_36__* %168, %struct.TYPE_35__* %169, i32 %170, i32* %171, i32 %172)
  store i32 %173, i32* %26, align 4
  br label %188

174:                                              ; preds = %155, %147
  %175 = load %struct.TYPE_45__*, %struct.TYPE_45__** %14, align 8
  %176 = load %struct.TYPE_36__**, %struct.TYPE_36__*** %20, align 8
  %177 = load %struct.TYPE_36__*, %struct.TYPE_36__** %176, align 8
  %178 = load i32*, i32** %11, align 8
  %179 = load %struct.TYPE_35__*, %struct.TYPE_35__** %15, align 8
  %180 = load i32, i32* %12, align 4
  %181 = icmp ne i32 %180, 0
  br i1 %181, label %182, label %184

182:                                              ; preds = %174
  %183 = load %struct.TYPE_45__*, %struct.TYPE_45__** %8, align 8
  br label %185

184:                                              ; preds = %174
  br label %185

185:                                              ; preds = %184, %182
  %186 = phi %struct.TYPE_45__* [ %183, %182 ], [ null, %184 ]
  %187 = call i32 @bfd_perform_relocation(%struct.TYPE_45__* %175, %struct.TYPE_36__* %177, i32* %178, %struct.TYPE_35__* %179, %struct.TYPE_45__* %186, i8** %25)
  store i32 %187, i32* %26, align 4
  br label %188

188:                                              ; preds = %185, %164
  %189 = load i32, i32* %12, align 4
  %190 = icmp ne i32 %189, 0
  br i1 %190, label %191, label %208

191:                                              ; preds = %188
  %192 = load %struct.TYPE_35__*, %struct.TYPE_35__** %15, align 8
  %193 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %192, i32 0, i32 2
  %194 = load %struct.TYPE_35__*, %struct.TYPE_35__** %193, align 8
  store %struct.TYPE_35__* %194, %struct.TYPE_35__** %28, align 8
  %195 = load %struct.TYPE_36__**, %struct.TYPE_36__*** %20, align 8
  %196 = load %struct.TYPE_36__*, %struct.TYPE_36__** %195, align 8
  %197 = load %struct.TYPE_35__*, %struct.TYPE_35__** %28, align 8
  %198 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %197, i32 0, i32 1
  %199 = load %struct.TYPE_36__**, %struct.TYPE_36__*** %198, align 8
  %200 = load %struct.TYPE_35__*, %struct.TYPE_35__** %28, align 8
  %201 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %200, i32 0, i32 0
  %202 = load i64, i64* %201, align 8
  %203 = getelementptr inbounds %struct.TYPE_36__*, %struct.TYPE_36__** %199, i64 %202
  store %struct.TYPE_36__* %196, %struct.TYPE_36__** %203, align 8
  %204 = load %struct.TYPE_35__*, %struct.TYPE_35__** %28, align 8
  %205 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %204, i32 0, i32 0
  %206 = load i64, i64* %205, align 8
  %207 = add i64 %206, 1
  store i64 %207, i64* %205, align 8
  br label %208

208:                                              ; preds = %191, %188
  %209 = load i32, i32* %26, align 4
  %210 = load i32, i32* @bfd_reloc_ok, align 4
  %211 = icmp ne i32 %209, %210
  br i1 %211, label %212, label %297

212:                                              ; preds = %208
  %213 = load i32, i32* %26, align 4
  switch i32 %213, label %294 [
    i32 128, label %214
    i32 131, label %238
    i32 129, label %260
    i32 130, label %293
  ]

214:                                              ; preds = %212
  %215 = load %struct.bfd_link_info*, %struct.bfd_link_info** %9, align 8
  %216 = getelementptr inbounds %struct.bfd_link_info, %struct.bfd_link_info* %215, i32 0, i32 0
  %217 = load %struct.TYPE_43__*, %struct.TYPE_43__** %216, align 8
  %218 = getelementptr inbounds %struct.TYPE_43__, %struct.TYPE_43__* %217, i32 0, i32 2
  %219 = load i32 (%struct.bfd_link_info*, i32, %struct.TYPE_45__*, %struct.TYPE_35__*, i32, i32)*, i32 (%struct.bfd_link_info*, i32, %struct.TYPE_45__*, %struct.TYPE_35__*, i32, i32)** %218, align 8
  %220 = load %struct.bfd_link_info*, %struct.bfd_link_info** %9, align 8
  %221 = load %struct.TYPE_36__**, %struct.TYPE_36__*** %20, align 8
  %222 = load %struct.TYPE_36__*, %struct.TYPE_36__** %221, align 8
  %223 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %222, i32 0, i32 3
  %224 = load i32**, i32*** %223, align 8
  %225 = load i32*, i32** %224, align 8
  %226 = call i32 @bfd_asymbol_name(i32* %225)
  %227 = load %struct.TYPE_45__*, %struct.TYPE_45__** %14, align 8
  %228 = load %struct.TYPE_35__*, %struct.TYPE_35__** %15, align 8
  %229 = load %struct.TYPE_36__**, %struct.TYPE_36__*** %20, align 8
  %230 = load %struct.TYPE_36__*, %struct.TYPE_36__** %229, align 8
  %231 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %230, i32 0, i32 0
  %232 = load i32, i32* %231, align 8
  %233 = load i32, i32* @TRUE, align 4
  %234 = call i32 %219(%struct.bfd_link_info* %220, i32 %226, %struct.TYPE_45__* %227, %struct.TYPE_35__* %228, i32 %232, i32 %233)
  %235 = icmp ne i32 %234, 0
  br i1 %235, label %237, label %236

236:                                              ; preds = %214
  br label %310

237:                                              ; preds = %214
  br label %296

238:                                              ; preds = %212
  %239 = load i8*, i8** %25, align 8
  %240 = icmp ne i8* %239, null
  %241 = zext i1 %240 to i32
  %242 = call i32 @BFD_ASSERT(i32 %241)
  %243 = load %struct.bfd_link_info*, %struct.bfd_link_info** %9, align 8
  %244 = getelementptr inbounds %struct.bfd_link_info, %struct.bfd_link_info* %243, i32 0, i32 0
  %245 = load %struct.TYPE_43__*, %struct.TYPE_43__** %244, align 8
  %246 = getelementptr inbounds %struct.TYPE_43__, %struct.TYPE_43__* %245, i32 0, i32 1
  %247 = load i32 (%struct.bfd_link_info*, i8*, %struct.TYPE_45__*, %struct.TYPE_35__*, i32)*, i32 (%struct.bfd_link_info*, i8*, %struct.TYPE_45__*, %struct.TYPE_35__*, i32)** %246, align 8
  %248 = load %struct.bfd_link_info*, %struct.bfd_link_info** %9, align 8
  %249 = load i8*, i8** %25, align 8
  %250 = load %struct.TYPE_45__*, %struct.TYPE_45__** %14, align 8
  %251 = load %struct.TYPE_35__*, %struct.TYPE_35__** %15, align 8
  %252 = load %struct.TYPE_36__**, %struct.TYPE_36__*** %20, align 8
  %253 = load %struct.TYPE_36__*, %struct.TYPE_36__** %252, align 8
  %254 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %253, i32 0, i32 0
  %255 = load i32, i32* %254, align 8
  %256 = call i32 %247(%struct.bfd_link_info* %248, i8* %249, %struct.TYPE_45__* %250, %struct.TYPE_35__* %251, i32 %255)
  %257 = icmp ne i32 %256, 0
  br i1 %257, label %259, label %258

258:                                              ; preds = %238
  br label %310

259:                                              ; preds = %238
  br label %296

260:                                              ; preds = %212
  %261 = load %struct.bfd_link_info*, %struct.bfd_link_info** %9, align 8
  %262 = getelementptr inbounds %struct.bfd_link_info, %struct.bfd_link_info* %261, i32 0, i32 0
  %263 = load %struct.TYPE_43__*, %struct.TYPE_43__** %262, align 8
  %264 = getelementptr inbounds %struct.TYPE_43__, %struct.TYPE_43__* %263, i32 0, i32 0
  %265 = load i32 (%struct.bfd_link_info*, i32*, i32, i32, i32, %struct.TYPE_45__*, %struct.TYPE_35__*, i32)*, i32 (%struct.bfd_link_info*, i32*, i32, i32, i32, %struct.TYPE_45__*, %struct.TYPE_35__*, i32)** %264, align 8
  %266 = load %struct.bfd_link_info*, %struct.bfd_link_info** %9, align 8
  %267 = load %struct.TYPE_36__**, %struct.TYPE_36__*** %20, align 8
  %268 = load %struct.TYPE_36__*, %struct.TYPE_36__** %267, align 8
  %269 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %268, i32 0, i32 3
  %270 = load i32**, i32*** %269, align 8
  %271 = load i32*, i32** %270, align 8
  %272 = call i32 @bfd_asymbol_name(i32* %271)
  %273 = load %struct.TYPE_36__**, %struct.TYPE_36__*** %20, align 8
  %274 = load %struct.TYPE_36__*, %struct.TYPE_36__** %273, align 8
  %275 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %274, i32 0, i32 2
  %276 = load %struct.TYPE_44__*, %struct.TYPE_44__** %275, align 8
  %277 = getelementptr inbounds %struct.TYPE_44__, %struct.TYPE_44__* %276, i32 0, i32 1
  %278 = load i32, i32* %277, align 8
  %279 = load %struct.TYPE_36__**, %struct.TYPE_36__*** %20, align 8
  %280 = load %struct.TYPE_36__*, %struct.TYPE_36__** %279, align 8
  %281 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %280, i32 0, i32 1
  %282 = load i32, i32* %281, align 4
  %283 = load %struct.TYPE_45__*, %struct.TYPE_45__** %14, align 8
  %284 = load %struct.TYPE_35__*, %struct.TYPE_35__** %15, align 8
  %285 = load %struct.TYPE_36__**, %struct.TYPE_36__*** %20, align 8
  %286 = load %struct.TYPE_36__*, %struct.TYPE_36__** %285, align 8
  %287 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %286, i32 0, i32 0
  %288 = load i32, i32* %287, align 8
  %289 = call i32 %265(%struct.bfd_link_info* %266, i32* null, i32 %272, i32 %278, i32 %282, %struct.TYPE_45__* %283, %struct.TYPE_35__* %284, i32 %288)
  %290 = icmp ne i32 %289, 0
  br i1 %290, label %292, label %291

291:                                              ; preds = %260
  br label %310

292:                                              ; preds = %260
  br label %296

293:                                              ; preds = %212
  br label %294

294:                                              ; preds = %212, %293
  %295 = call i32 (...) @abort() #3
  unreachable

296:                                              ; preds = %292, %259, %237
  br label %297

297:                                              ; preds = %296, %208
  br label %298

298:                                              ; preds = %297
  %299 = load %struct.TYPE_36__**, %struct.TYPE_36__*** %20, align 8
  %300 = getelementptr inbounds %struct.TYPE_36__*, %struct.TYPE_36__** %299, i32 1
  store %struct.TYPE_36__** %300, %struct.TYPE_36__*** %20, align 8
  br label %143

301:                                              ; preds = %143
  br label %302

302:                                              ; preds = %301, %87
  %303 = load %struct.TYPE_36__**, %struct.TYPE_36__*** %18, align 8
  %304 = icmp ne %struct.TYPE_36__** %303, null
  br i1 %304, label %305, label %308

305:                                              ; preds = %302
  %306 = load %struct.TYPE_36__**, %struct.TYPE_36__*** %18, align 8
  %307 = call i32 @free(%struct.TYPE_36__** %306)
  br label %308

308:                                              ; preds = %305, %302
  %309 = load i32*, i32** %11, align 8
  store i32* %309, i32** %7, align 8
  br label %317

310:                                              ; preds = %291, %258, %236, %86, %77, %55, %46
  %311 = load %struct.TYPE_36__**, %struct.TYPE_36__*** %18, align 8
  %312 = icmp ne %struct.TYPE_36__** %311, null
  br i1 %312, label %313, label %316

313:                                              ; preds = %310
  %314 = load %struct.TYPE_36__**, %struct.TYPE_36__*** %18, align 8
  %315 = call i32 @free(%struct.TYPE_36__** %314)
  br label %316

316:                                              ; preds = %313, %310
  store i32* null, i32** %7, align 8
  br label %317

317:                                              ; preds = %316, %308
  %318 = load i32*, i32** %7, align 8
  ret i32* %318
}

declare dso_local i64 @bfd_get_reloc_upper_bound(%struct.TYPE_45__*, %struct.TYPE_35__*) #1

declare dso_local %struct.TYPE_36__** @bfd_malloc(i64) #1

declare dso_local i32 @bfd_get_section_contents(%struct.TYPE_45__*, %struct.TYPE_35__*, i32*, i32, i64) #1

declare dso_local i64 @bfd_canonicalize_reloc(%struct.TYPE_45__*, %struct.TYPE_35__*, %struct.TYPE_36__**, i32**) #1

declare dso_local %struct.bfd_hash_entry* @bfd_hash_lookup(i32*, i8*, i32, i32) #1

; Function Attrs: noreturn
declare dso_local i32 @abort(...) #2

declare dso_local i32 @_bfd_mips_elf_gprel16_with_gp(%struct.TYPE_45__*, i32*, %struct.TYPE_36__*, %struct.TYPE_35__*, i32, i32*, i32) #1

declare dso_local i32 @bfd_perform_relocation(%struct.TYPE_45__*, %struct.TYPE_36__*, i32*, %struct.TYPE_35__*, %struct.TYPE_45__*, i8**) #1

declare dso_local i32 @bfd_asymbol_name(i32*) #1

declare dso_local i32 @BFD_ASSERT(i32) #1

declare dso_local i32 @free(%struct.TYPE_36__**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

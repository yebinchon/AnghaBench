; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/bfd/extr_elflink.c__bfd_elf_section_already_linked.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/bfd/extr_elflink.c__bfd_elf_section_already_linked.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bfd_section = type { i64, i32, %struct.bfd_section*, i32*, i32, i32 }
%struct.bfd_link_info = type { i32 }
%struct.bfd_section_already_linked = type { %struct.bfd_section*, %struct.bfd_section_already_linked* }
%struct.bfd_section_already_linked_hash_entry = type { %struct.bfd_section_already_linked* }

@bfd_abs_section_ptr = common dso_local global i64 0, align 8
@SEC_LINK_ONCE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [15 x i8] c".gnu.linkonce.\00", align 1
@SEC_GROUP = common dso_local global i32 0, align 4
@SEC_LINK_DUPLICATES = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [36 x i8] c"%B: ignoring duplicate section `%A'\00", align 1
@.str.2 = private unnamed_addr constant [46 x i8] c"%B: duplicate section `%A' has different size\00", align 1
@.str.3 = private unnamed_addr constant [53 x i8] c"%B: warning: could not read contents of section `%A'\00", align 1
@.str.4 = private unnamed_addr constant [59 x i8] c"%B: warning: duplicate section `%A' has different contents\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @_bfd_elf_section_already_linked(i32* %0, %struct.bfd_section* %1, %struct.bfd_link_info* %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca %struct.bfd_section*, align 8
  %6 = alloca %struct.bfd_link_info*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca %struct.bfd_section_already_linked*, align 8
  %11 = alloca %struct.bfd_section_already_linked_hash_entry*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca %struct.bfd_section*, align 8
  %15 = alloca %struct.bfd_section*, align 8
  %16 = alloca %struct.bfd_section*, align 8
  %17 = alloca %struct.bfd_section*, align 8
  store i32* %0, i32** %4, align 8
  store %struct.bfd_section* %1, %struct.bfd_section** %5, align 8
  store %struct.bfd_link_info* %2, %struct.bfd_link_info** %6, align 8
  %18 = load %struct.bfd_section*, %struct.bfd_section** %5, align 8
  %19 = getelementptr inbounds %struct.bfd_section, %struct.bfd_section* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = load i64, i64* @bfd_abs_section_ptr, align 8
  %22 = icmp eq i64 %20, %21
  br i1 %22, label %23, label %24

23:                                               ; preds = %3
  br label %371

24:                                               ; preds = %3
  %25 = load %struct.bfd_section*, %struct.bfd_section** %5, align 8
  %26 = getelementptr inbounds %struct.bfd_section, %struct.bfd_section* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 8
  store i32 %27, i32* %7, align 4
  %28 = load i32, i32* %7, align 4
  %29 = load i32, i32* @SEC_LINK_ONCE, align 4
  %30 = and i32 %28, %29
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %32, label %33

32:                                               ; preds = %24
  br label %371

33:                                               ; preds = %24
  %34 = load %struct.bfd_section*, %struct.bfd_section** %5, align 8
  %35 = call i32* @elf_sec_group(%struct.bfd_section* %34)
  %36 = icmp ne i32* %35, null
  br i1 %36, label %37, label %38

37:                                               ; preds = %33
  br label %371

38:                                               ; preds = %33
  %39 = load i32*, i32** %4, align 8
  %40 = load %struct.bfd_section*, %struct.bfd_section** %5, align 8
  %41 = call i8* @bfd_get_section_name(i32* %39, %struct.bfd_section* %40)
  store i8* %41, i8** %8, align 8
  %42 = load i8*, i8** %8, align 8
  %43 = call i64 @CONST_STRNEQ(i8* %42, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0))
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %54

45:                                               ; preds = %38
  %46 = load i8*, i8** %8, align 8
  %47 = getelementptr inbounds i8, i8* %46, i64 15
  %48 = getelementptr inbounds i8, i8* %47, i64 -1
  %49 = call i8* @strchr(i8* %48, i8 signext 46)
  store i8* %49, i8** %9, align 8
  %50 = icmp ne i8* %49, null
  br i1 %50, label %51, label %54

51:                                               ; preds = %45
  %52 = load i8*, i8** %9, align 8
  %53 = getelementptr inbounds i8, i8* %52, i32 1
  store i8* %53, i8** %9, align 8
  br label %56

54:                                               ; preds = %45, %38
  %55 = load i8*, i8** %8, align 8
  store i8* %55, i8** %9, align 8
  br label %56

56:                                               ; preds = %54, %51
  %57 = load i8*, i8** %9, align 8
  %58 = call %struct.bfd_section_already_linked_hash_entry* @bfd_section_already_linked_table_lookup(i8* %57)
  store %struct.bfd_section_already_linked_hash_entry* %58, %struct.bfd_section_already_linked_hash_entry** %11, align 8
  %59 = load %struct.bfd_section_already_linked_hash_entry*, %struct.bfd_section_already_linked_hash_entry** %11, align 8
  %60 = getelementptr inbounds %struct.bfd_section_already_linked_hash_entry, %struct.bfd_section_already_linked_hash_entry* %59, i32 0, i32 0
  %61 = load %struct.bfd_section_already_linked*, %struct.bfd_section_already_linked** %60, align 8
  store %struct.bfd_section_already_linked* %61, %struct.bfd_section_already_linked** %10, align 8
  br label %62

62:                                               ; preds = %246, %56
  %63 = load %struct.bfd_section_already_linked*, %struct.bfd_section_already_linked** %10, align 8
  %64 = icmp ne %struct.bfd_section_already_linked* %63, null
  br i1 %64, label %65, label %250

65:                                               ; preds = %62
  %66 = load i32, i32* %7, align 4
  %67 = load i32, i32* @SEC_GROUP, align 4
  %68 = and i32 %66, %67
  %69 = load %struct.bfd_section_already_linked*, %struct.bfd_section_already_linked** %10, align 8
  %70 = getelementptr inbounds %struct.bfd_section_already_linked, %struct.bfd_section_already_linked* %69, i32 0, i32 0
  %71 = load %struct.bfd_section*, %struct.bfd_section** %70, align 8
  %72 = getelementptr inbounds %struct.bfd_section, %struct.bfd_section* %71, i32 0, i32 1
  %73 = load i32, i32* %72, align 8
  %74 = load i32, i32* @SEC_GROUP, align 4
  %75 = and i32 %73, %74
  %76 = icmp eq i32 %68, %75
  br i1 %76, label %77, label %245

77:                                               ; preds = %65
  %78 = load i8*, i8** %8, align 8
  %79 = load %struct.bfd_section_already_linked*, %struct.bfd_section_already_linked** %10, align 8
  %80 = getelementptr inbounds %struct.bfd_section_already_linked, %struct.bfd_section_already_linked* %79, i32 0, i32 0
  %81 = load %struct.bfd_section*, %struct.bfd_section** %80, align 8
  %82 = getelementptr inbounds %struct.bfd_section, %struct.bfd_section* %81, i32 0, i32 5
  %83 = load i32, i32* %82, align 4
  %84 = call i64 @strcmp(i8* %78, i32 %83)
  %85 = icmp eq i64 %84, 0
  br i1 %85, label %86, label %245

86:                                               ; preds = %77
  %87 = load %struct.bfd_section_already_linked*, %struct.bfd_section_already_linked** %10, align 8
  %88 = getelementptr inbounds %struct.bfd_section_already_linked, %struct.bfd_section_already_linked* %87, i32 0, i32 0
  %89 = load %struct.bfd_section*, %struct.bfd_section** %88, align 8
  %90 = getelementptr inbounds %struct.bfd_section, %struct.bfd_section* %89, i32 0, i32 3
  %91 = load i32*, i32** %90, align 8
  %92 = load %struct.bfd_section_already_linked*, %struct.bfd_section_already_linked** %10, align 8
  %93 = getelementptr inbounds %struct.bfd_section_already_linked, %struct.bfd_section_already_linked* %92, i32 0, i32 0
  %94 = load %struct.bfd_section*, %struct.bfd_section** %93, align 8
  %95 = call i32* @bfd_coff_get_comdat_section(i32* %91, %struct.bfd_section* %94)
  %96 = icmp eq i32* %95, null
  br i1 %96, label %97, label %245

97:                                               ; preds = %86
  %98 = load i32, i32* %7, align 4
  %99 = load i32, i32* @SEC_LINK_DUPLICATES, align 4
  %100 = and i32 %98, %99
  switch i32 %100, label %101 [
    i32 131, label %103
    i32 130, label %104
    i32 128, label %109
    i32 129, label %125
  ]

101:                                              ; preds = %97
  %102 = call i32 (...) @abort() #3
  unreachable

103:                                              ; preds = %97
  br label %207

104:                                              ; preds = %97
  %105 = call i32 @_(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0))
  %106 = load i32*, i32** %4, align 8
  %107 = load %struct.bfd_section*, %struct.bfd_section** %5, align 8
  %108 = call i32 @_bfd_error_handler(i32 %105, i32* %106, %struct.bfd_section* %107)
  br label %207

109:                                              ; preds = %97
  %110 = load %struct.bfd_section*, %struct.bfd_section** %5, align 8
  %111 = getelementptr inbounds %struct.bfd_section, %struct.bfd_section* %110, i32 0, i32 4
  %112 = load i32, i32* %111, align 8
  %113 = load %struct.bfd_section_already_linked*, %struct.bfd_section_already_linked** %10, align 8
  %114 = getelementptr inbounds %struct.bfd_section_already_linked, %struct.bfd_section_already_linked* %113, i32 0, i32 0
  %115 = load %struct.bfd_section*, %struct.bfd_section** %114, align 8
  %116 = getelementptr inbounds %struct.bfd_section, %struct.bfd_section* %115, i32 0, i32 4
  %117 = load i32, i32* %116, align 8
  %118 = icmp ne i32 %112, %117
  br i1 %118, label %119, label %124

119:                                              ; preds = %109
  %120 = call i32 @_(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.2, i64 0, i64 0))
  %121 = load i32*, i32** %4, align 8
  %122 = load %struct.bfd_section*, %struct.bfd_section** %5, align 8
  %123 = call i32 @_bfd_error_handler(i32 %120, i32* %121, %struct.bfd_section* %122)
  br label %124

124:                                              ; preds = %119, %109
  br label %207

125:                                              ; preds = %97
  %126 = load %struct.bfd_section*, %struct.bfd_section** %5, align 8
  %127 = getelementptr inbounds %struct.bfd_section, %struct.bfd_section* %126, i32 0, i32 4
  %128 = load i32, i32* %127, align 8
  %129 = load %struct.bfd_section_already_linked*, %struct.bfd_section_already_linked** %10, align 8
  %130 = getelementptr inbounds %struct.bfd_section_already_linked, %struct.bfd_section_already_linked* %129, i32 0, i32 0
  %131 = load %struct.bfd_section*, %struct.bfd_section** %130, align 8
  %132 = getelementptr inbounds %struct.bfd_section, %struct.bfd_section* %131, i32 0, i32 4
  %133 = load i32, i32* %132, align 8
  %134 = icmp ne i32 %128, %133
  br i1 %134, label %135, label %140

135:                                              ; preds = %125
  %136 = call i32 @_(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.2, i64 0, i64 0))
  %137 = load i32*, i32** %4, align 8
  %138 = load %struct.bfd_section*, %struct.bfd_section** %5, align 8
  %139 = call i32 @_bfd_error_handler(i32 %136, i32* %137, %struct.bfd_section* %138)
  br label %206

140:                                              ; preds = %125
  %141 = load %struct.bfd_section*, %struct.bfd_section** %5, align 8
  %142 = getelementptr inbounds %struct.bfd_section, %struct.bfd_section* %141, i32 0, i32 4
  %143 = load i32, i32* %142, align 8
  %144 = icmp ne i32 %143, 0
  br i1 %144, label %145, label %205

145:                                              ; preds = %140
  store i32* null, i32** %13, align 8
  %146 = load i32*, i32** %4, align 8
  %147 = load %struct.bfd_section*, %struct.bfd_section** %5, align 8
  %148 = call i32 @bfd_malloc_and_get_section(i32* %146, %struct.bfd_section* %147, i32** %12)
  %149 = icmp ne i32 %148, 0
  br i1 %149, label %155, label %150

150:                                              ; preds = %145
  %151 = call i32 @_(i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.3, i64 0, i64 0))
  %152 = load i32*, i32** %4, align 8
  %153 = load %struct.bfd_section*, %struct.bfd_section** %5, align 8
  %154 = call i32 @_bfd_error_handler(i32 %151, i32* %152, %struct.bfd_section* %153)
  br label %192

155:                                              ; preds = %145
  %156 = load %struct.bfd_section_already_linked*, %struct.bfd_section_already_linked** %10, align 8
  %157 = getelementptr inbounds %struct.bfd_section_already_linked, %struct.bfd_section_already_linked* %156, i32 0, i32 0
  %158 = load %struct.bfd_section*, %struct.bfd_section** %157, align 8
  %159 = getelementptr inbounds %struct.bfd_section, %struct.bfd_section* %158, i32 0, i32 3
  %160 = load i32*, i32** %159, align 8
  %161 = load %struct.bfd_section_already_linked*, %struct.bfd_section_already_linked** %10, align 8
  %162 = getelementptr inbounds %struct.bfd_section_already_linked, %struct.bfd_section_already_linked* %161, i32 0, i32 0
  %163 = load %struct.bfd_section*, %struct.bfd_section** %162, align 8
  %164 = call i32 @bfd_malloc_and_get_section(i32* %160, %struct.bfd_section* %163, i32** %13)
  %165 = icmp ne i32 %164, 0
  br i1 %165, label %177, label %166

166:                                              ; preds = %155
  %167 = call i32 @_(i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.3, i64 0, i64 0))
  %168 = load %struct.bfd_section_already_linked*, %struct.bfd_section_already_linked** %10, align 8
  %169 = getelementptr inbounds %struct.bfd_section_already_linked, %struct.bfd_section_already_linked* %168, i32 0, i32 0
  %170 = load %struct.bfd_section*, %struct.bfd_section** %169, align 8
  %171 = getelementptr inbounds %struct.bfd_section, %struct.bfd_section* %170, i32 0, i32 3
  %172 = load i32*, i32** %171, align 8
  %173 = load %struct.bfd_section_already_linked*, %struct.bfd_section_already_linked** %10, align 8
  %174 = getelementptr inbounds %struct.bfd_section_already_linked, %struct.bfd_section_already_linked* %173, i32 0, i32 0
  %175 = load %struct.bfd_section*, %struct.bfd_section** %174, align 8
  %176 = call i32 @_bfd_error_handler(i32 %167, i32* %172, %struct.bfd_section* %175)
  br label %191

177:                                              ; preds = %155
  %178 = load i32*, i32** %12, align 8
  %179 = load i32*, i32** %13, align 8
  %180 = load %struct.bfd_section*, %struct.bfd_section** %5, align 8
  %181 = getelementptr inbounds %struct.bfd_section, %struct.bfd_section* %180, i32 0, i32 4
  %182 = load i32, i32* %181, align 8
  %183 = call i32 @memcmp(i32* %178, i32* %179, i32 %182)
  %184 = icmp ne i32 %183, 0
  br i1 %184, label %185, label %190

185:                                              ; preds = %177
  %186 = call i32 @_(i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.4, i64 0, i64 0))
  %187 = load i32*, i32** %4, align 8
  %188 = load %struct.bfd_section*, %struct.bfd_section** %5, align 8
  %189 = call i32 @_bfd_error_handler(i32 %186, i32* %187, %struct.bfd_section* %188)
  br label %190

190:                                              ; preds = %185, %177
  br label %191

191:                                              ; preds = %190, %166
  br label %192

192:                                              ; preds = %191, %150
  %193 = load i32*, i32** %12, align 8
  %194 = icmp ne i32* %193, null
  br i1 %194, label %195, label %198

195:                                              ; preds = %192
  %196 = load i32*, i32** %12, align 8
  %197 = call i32 @free(i32* %196)
  br label %198

198:                                              ; preds = %195, %192
  %199 = load i32*, i32** %13, align 8
  %200 = icmp ne i32* %199, null
  br i1 %200, label %201, label %204

201:                                              ; preds = %198
  %202 = load i32*, i32** %13, align 8
  %203 = call i32 @free(i32* %202)
  br label %204

204:                                              ; preds = %201, %198
  br label %205

205:                                              ; preds = %204, %140
  br label %206

206:                                              ; preds = %205, %135
  br label %207

207:                                              ; preds = %206, %124, %104, %103
  %208 = load i64, i64* @bfd_abs_section_ptr, align 8
  %209 = load %struct.bfd_section*, %struct.bfd_section** %5, align 8
  %210 = getelementptr inbounds %struct.bfd_section, %struct.bfd_section* %209, i32 0, i32 0
  store i64 %208, i64* %210, align 8
  %211 = load %struct.bfd_section_already_linked*, %struct.bfd_section_already_linked** %10, align 8
  %212 = getelementptr inbounds %struct.bfd_section_already_linked, %struct.bfd_section_already_linked* %211, i32 0, i32 0
  %213 = load %struct.bfd_section*, %struct.bfd_section** %212, align 8
  %214 = load %struct.bfd_section*, %struct.bfd_section** %5, align 8
  %215 = getelementptr inbounds %struct.bfd_section, %struct.bfd_section* %214, i32 0, i32 2
  store %struct.bfd_section* %213, %struct.bfd_section** %215, align 8
  %216 = load i32, i32* %7, align 4
  %217 = load i32, i32* @SEC_GROUP, align 4
  %218 = and i32 %216, %217
  %219 = icmp ne i32 %218, 0
  br i1 %219, label %220, label %244

220:                                              ; preds = %207
  %221 = load %struct.bfd_section*, %struct.bfd_section** %5, align 8
  %222 = call %struct.bfd_section* @elf_next_in_group(%struct.bfd_section* %221)
  store %struct.bfd_section* %222, %struct.bfd_section** %14, align 8
  %223 = load %struct.bfd_section*, %struct.bfd_section** %14, align 8
  store %struct.bfd_section* %223, %struct.bfd_section** %15, align 8
  br label %224

224:                                              ; preds = %242, %220
  %225 = load %struct.bfd_section*, %struct.bfd_section** %15, align 8
  %226 = icmp ne %struct.bfd_section* %225, null
  br i1 %226, label %227, label %243

227:                                              ; preds = %224
  %228 = load i64, i64* @bfd_abs_section_ptr, align 8
  %229 = load %struct.bfd_section*, %struct.bfd_section** %15, align 8
  %230 = getelementptr inbounds %struct.bfd_section, %struct.bfd_section* %229, i32 0, i32 0
  store i64 %228, i64* %230, align 8
  %231 = load %struct.bfd_section_already_linked*, %struct.bfd_section_already_linked** %10, align 8
  %232 = getelementptr inbounds %struct.bfd_section_already_linked, %struct.bfd_section_already_linked* %231, i32 0, i32 0
  %233 = load %struct.bfd_section*, %struct.bfd_section** %232, align 8
  %234 = load %struct.bfd_section*, %struct.bfd_section** %15, align 8
  %235 = getelementptr inbounds %struct.bfd_section, %struct.bfd_section* %234, i32 0, i32 2
  store %struct.bfd_section* %233, %struct.bfd_section** %235, align 8
  %236 = load %struct.bfd_section*, %struct.bfd_section** %15, align 8
  %237 = call %struct.bfd_section* @elf_next_in_group(%struct.bfd_section* %236)
  store %struct.bfd_section* %237, %struct.bfd_section** %15, align 8
  %238 = load %struct.bfd_section*, %struct.bfd_section** %15, align 8
  %239 = load %struct.bfd_section*, %struct.bfd_section** %14, align 8
  %240 = icmp eq %struct.bfd_section* %238, %239
  br i1 %240, label %241, label %242

241:                                              ; preds = %227
  br label %243

242:                                              ; preds = %227
  br label %224

243:                                              ; preds = %241, %224
  br label %244

244:                                              ; preds = %243, %207
  br label %371

245:                                              ; preds = %86, %77, %65
  br label %246

246:                                              ; preds = %245
  %247 = load %struct.bfd_section_already_linked*, %struct.bfd_section_already_linked** %10, align 8
  %248 = getelementptr inbounds %struct.bfd_section_already_linked, %struct.bfd_section_already_linked* %247, i32 0, i32 1
  %249 = load %struct.bfd_section_already_linked*, %struct.bfd_section_already_linked** %248, align 8
  store %struct.bfd_section_already_linked* %249, %struct.bfd_section_already_linked** %10, align 8
  br label %62

250:                                              ; preds = %62
  %251 = load i32, i32* %7, align 4
  %252 = load i32, i32* @SEC_GROUP, align 4
  %253 = and i32 %251, %252
  %254 = icmp ne i32 %253, 0
  br i1 %254, label %255, label %319

255:                                              ; preds = %250
  %256 = load %struct.bfd_section*, %struct.bfd_section** %5, align 8
  %257 = call %struct.bfd_section* @elf_next_in_group(%struct.bfd_section* %256)
  store %struct.bfd_section* %257, %struct.bfd_section** %16, align 8
  %258 = load %struct.bfd_section*, %struct.bfd_section** %16, align 8
  %259 = icmp ne %struct.bfd_section* %258, null
  br i1 %259, label %260, label %318

260:                                              ; preds = %255
  %261 = load %struct.bfd_section*, %struct.bfd_section** %16, align 8
  %262 = call %struct.bfd_section* @elf_next_in_group(%struct.bfd_section* %261)
  %263 = load %struct.bfd_section*, %struct.bfd_section** %16, align 8
  %264 = icmp eq %struct.bfd_section* %262, %263
  br i1 %264, label %265, label %318

265:                                              ; preds = %260
  %266 = load %struct.bfd_section_already_linked_hash_entry*, %struct.bfd_section_already_linked_hash_entry** %11, align 8
  %267 = getelementptr inbounds %struct.bfd_section_already_linked_hash_entry, %struct.bfd_section_already_linked_hash_entry* %266, i32 0, i32 0
  %268 = load %struct.bfd_section_already_linked*, %struct.bfd_section_already_linked** %267, align 8
  store %struct.bfd_section_already_linked* %268, %struct.bfd_section_already_linked** %10, align 8
  br label %269

269:                                              ; preds = %313, %265
  %270 = load %struct.bfd_section_already_linked*, %struct.bfd_section_already_linked** %10, align 8
  %271 = icmp ne %struct.bfd_section_already_linked* %270, null
  br i1 %271, label %272, label %317

272:                                              ; preds = %269
  %273 = load %struct.bfd_section_already_linked*, %struct.bfd_section_already_linked** %10, align 8
  %274 = getelementptr inbounds %struct.bfd_section_already_linked, %struct.bfd_section_already_linked* %273, i32 0, i32 0
  %275 = load %struct.bfd_section*, %struct.bfd_section** %274, align 8
  %276 = getelementptr inbounds %struct.bfd_section, %struct.bfd_section* %275, i32 0, i32 1
  %277 = load i32, i32* %276, align 8
  %278 = load i32, i32* @SEC_GROUP, align 4
  %279 = and i32 %277, %278
  %280 = icmp eq i32 %279, 0
  br i1 %280, label %281, label %312

281:                                              ; preds = %272
  %282 = load %struct.bfd_section_already_linked*, %struct.bfd_section_already_linked** %10, align 8
  %283 = getelementptr inbounds %struct.bfd_section_already_linked, %struct.bfd_section_already_linked* %282, i32 0, i32 0
  %284 = load %struct.bfd_section*, %struct.bfd_section** %283, align 8
  %285 = getelementptr inbounds %struct.bfd_section, %struct.bfd_section* %284, i32 0, i32 3
  %286 = load i32*, i32** %285, align 8
  %287 = load %struct.bfd_section_already_linked*, %struct.bfd_section_already_linked** %10, align 8
  %288 = getelementptr inbounds %struct.bfd_section_already_linked, %struct.bfd_section_already_linked* %287, i32 0, i32 0
  %289 = load %struct.bfd_section*, %struct.bfd_section** %288, align 8
  %290 = call i32* @bfd_coff_get_comdat_section(i32* %286, %struct.bfd_section* %289)
  %291 = icmp eq i32* %290, null
  br i1 %291, label %292, label %312

292:                                              ; preds = %281
  %293 = load %struct.bfd_section_already_linked*, %struct.bfd_section_already_linked** %10, align 8
  %294 = getelementptr inbounds %struct.bfd_section_already_linked, %struct.bfd_section_already_linked* %293, i32 0, i32 0
  %295 = load %struct.bfd_section*, %struct.bfd_section** %294, align 8
  %296 = load %struct.bfd_section*, %struct.bfd_section** %16, align 8
  %297 = load %struct.bfd_link_info*, %struct.bfd_link_info** %6, align 8
  %298 = call i64 @bfd_elf_match_symbols_in_sections(%struct.bfd_section* %295, %struct.bfd_section* %296, %struct.bfd_link_info* %297)
  %299 = icmp ne i64 %298, 0
  br i1 %299, label %300, label %312

300:                                              ; preds = %292
  %301 = load i64, i64* @bfd_abs_section_ptr, align 8
  %302 = load %struct.bfd_section*, %struct.bfd_section** %16, align 8
  %303 = getelementptr inbounds %struct.bfd_section, %struct.bfd_section* %302, i32 0, i32 0
  store i64 %301, i64* %303, align 8
  %304 = load %struct.bfd_section_already_linked*, %struct.bfd_section_already_linked** %10, align 8
  %305 = getelementptr inbounds %struct.bfd_section_already_linked, %struct.bfd_section_already_linked* %304, i32 0, i32 0
  %306 = load %struct.bfd_section*, %struct.bfd_section** %305, align 8
  %307 = load %struct.bfd_section*, %struct.bfd_section** %16, align 8
  %308 = getelementptr inbounds %struct.bfd_section, %struct.bfd_section* %307, i32 0, i32 2
  store %struct.bfd_section* %306, %struct.bfd_section** %308, align 8
  %309 = load i64, i64* @bfd_abs_section_ptr, align 8
  %310 = load %struct.bfd_section*, %struct.bfd_section** %5, align 8
  %311 = getelementptr inbounds %struct.bfd_section, %struct.bfd_section* %310, i32 0, i32 0
  store i64 %309, i64* %311, align 8
  br label %317

312:                                              ; preds = %292, %281, %272
  br label %313

313:                                              ; preds = %312
  %314 = load %struct.bfd_section_already_linked*, %struct.bfd_section_already_linked** %10, align 8
  %315 = getelementptr inbounds %struct.bfd_section_already_linked, %struct.bfd_section_already_linked* %314, i32 0, i32 1
  %316 = load %struct.bfd_section_already_linked*, %struct.bfd_section_already_linked** %315, align 8
  store %struct.bfd_section_already_linked* %316, %struct.bfd_section_already_linked** %10, align 8
  br label %269

317:                                              ; preds = %300, %269
  br label %318

318:                                              ; preds = %317, %260, %255
  br label %367

319:                                              ; preds = %250
  %320 = load %struct.bfd_section_already_linked_hash_entry*, %struct.bfd_section_already_linked_hash_entry** %11, align 8
  %321 = getelementptr inbounds %struct.bfd_section_already_linked_hash_entry, %struct.bfd_section_already_linked_hash_entry* %320, i32 0, i32 0
  %322 = load %struct.bfd_section_already_linked*, %struct.bfd_section_already_linked** %321, align 8
  store %struct.bfd_section_already_linked* %322, %struct.bfd_section_already_linked** %10, align 8
  br label %323

323:                                              ; preds = %362, %319
  %324 = load %struct.bfd_section_already_linked*, %struct.bfd_section_already_linked** %10, align 8
  %325 = icmp ne %struct.bfd_section_already_linked* %324, null
  br i1 %325, label %326, label %366

326:                                              ; preds = %323
  %327 = load %struct.bfd_section_already_linked*, %struct.bfd_section_already_linked** %10, align 8
  %328 = getelementptr inbounds %struct.bfd_section_already_linked, %struct.bfd_section_already_linked* %327, i32 0, i32 0
  %329 = load %struct.bfd_section*, %struct.bfd_section** %328, align 8
  %330 = getelementptr inbounds %struct.bfd_section, %struct.bfd_section* %329, i32 0, i32 1
  %331 = load i32, i32* %330, align 8
  %332 = load i32, i32* @SEC_GROUP, align 4
  %333 = and i32 %331, %332
  %334 = icmp ne i32 %333, 0
  br i1 %334, label %335, label %361

335:                                              ; preds = %326
  %336 = load %struct.bfd_section_already_linked*, %struct.bfd_section_already_linked** %10, align 8
  %337 = getelementptr inbounds %struct.bfd_section_already_linked, %struct.bfd_section_already_linked* %336, i32 0, i32 0
  %338 = load %struct.bfd_section*, %struct.bfd_section** %337, align 8
  %339 = call %struct.bfd_section* @elf_next_in_group(%struct.bfd_section* %338)
  store %struct.bfd_section* %339, %struct.bfd_section** %17, align 8
  %340 = load %struct.bfd_section*, %struct.bfd_section** %17, align 8
  %341 = icmp ne %struct.bfd_section* %340, null
  br i1 %341, label %342, label %360

342:                                              ; preds = %335
  %343 = load %struct.bfd_section*, %struct.bfd_section** %17, align 8
  %344 = call %struct.bfd_section* @elf_next_in_group(%struct.bfd_section* %343)
  %345 = load %struct.bfd_section*, %struct.bfd_section** %17, align 8
  %346 = icmp eq %struct.bfd_section* %344, %345
  br i1 %346, label %347, label %360

347:                                              ; preds = %342
  %348 = load %struct.bfd_section*, %struct.bfd_section** %17, align 8
  %349 = load %struct.bfd_section*, %struct.bfd_section** %5, align 8
  %350 = load %struct.bfd_link_info*, %struct.bfd_link_info** %6, align 8
  %351 = call i64 @bfd_elf_match_symbols_in_sections(%struct.bfd_section* %348, %struct.bfd_section* %349, %struct.bfd_link_info* %350)
  %352 = icmp ne i64 %351, 0
  br i1 %352, label %353, label %360

353:                                              ; preds = %347
  %354 = load i64, i64* @bfd_abs_section_ptr, align 8
  %355 = load %struct.bfd_section*, %struct.bfd_section** %5, align 8
  %356 = getelementptr inbounds %struct.bfd_section, %struct.bfd_section* %355, i32 0, i32 0
  store i64 %354, i64* %356, align 8
  %357 = load %struct.bfd_section*, %struct.bfd_section** %17, align 8
  %358 = load %struct.bfd_section*, %struct.bfd_section** %5, align 8
  %359 = getelementptr inbounds %struct.bfd_section, %struct.bfd_section* %358, i32 0, i32 2
  store %struct.bfd_section* %357, %struct.bfd_section** %359, align 8
  br label %366

360:                                              ; preds = %347, %342, %335
  br label %361

361:                                              ; preds = %360, %326
  br label %362

362:                                              ; preds = %361
  %363 = load %struct.bfd_section_already_linked*, %struct.bfd_section_already_linked** %10, align 8
  %364 = getelementptr inbounds %struct.bfd_section_already_linked, %struct.bfd_section_already_linked* %363, i32 0, i32 1
  %365 = load %struct.bfd_section_already_linked*, %struct.bfd_section_already_linked** %364, align 8
  store %struct.bfd_section_already_linked* %365, %struct.bfd_section_already_linked** %10, align 8
  br label %323

366:                                              ; preds = %353, %323
  br label %367

367:                                              ; preds = %366, %318
  %368 = load %struct.bfd_section_already_linked_hash_entry*, %struct.bfd_section_already_linked_hash_entry** %11, align 8
  %369 = load %struct.bfd_section*, %struct.bfd_section** %5, align 8
  %370 = call i32 @bfd_section_already_linked_table_insert(%struct.bfd_section_already_linked_hash_entry* %368, %struct.bfd_section* %369)
  br label %371

371:                                              ; preds = %367, %244, %37, %32, %23
  ret void
}

declare dso_local i32* @elf_sec_group(%struct.bfd_section*) #1

declare dso_local i8* @bfd_get_section_name(i32*, %struct.bfd_section*) #1

declare dso_local i64 @CONST_STRNEQ(i8*, i8*) #1

declare dso_local i8* @strchr(i8*, i8 signext) #1

declare dso_local %struct.bfd_section_already_linked_hash_entry* @bfd_section_already_linked_table_lookup(i8*) #1

declare dso_local i64 @strcmp(i8*, i32) #1

declare dso_local i32* @bfd_coff_get_comdat_section(i32*, %struct.bfd_section*) #1

; Function Attrs: noreturn
declare dso_local i32 @abort(...) #2

declare dso_local i32 @_bfd_error_handler(i32, i32*, %struct.bfd_section*) #1

declare dso_local i32 @_(i8*) #1

declare dso_local i32 @bfd_malloc_and_get_section(i32*, %struct.bfd_section*, i32**) #1

declare dso_local i32 @memcmp(i32*, i32*, i32) #1

declare dso_local i32 @free(i32*) #1

declare dso_local %struct.bfd_section* @elf_next_in_group(%struct.bfd_section*) #1

declare dso_local i64 @bfd_elf_match_symbols_in_sections(%struct.bfd_section*, %struct.bfd_section*, %struct.bfd_link_info*) #1

declare dso_local i32 @bfd_section_already_linked_table_insert(%struct.bfd_section_already_linked_hash_entry*, %struct.bfd_section*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/bfd/extr_elflink.c_elf_finalize_dynstr.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/bfd/extr_elflink.c_elf_finalize_dynstr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bfd_link_info = type { i32 }
%struct.elf_link_hash_table = type { %struct.elf_link_local_dynamic_entry*, i32*, %struct.elf_strtab_hash* }
%struct.elf_link_local_dynamic_entry = type { %struct.TYPE_24__, %struct.elf_link_local_dynamic_entry* }
%struct.TYPE_24__ = type { i8* }
%struct.elf_strtab_hash = type { i32 }
%struct.TYPE_25__ = type { i32, i32* }
%struct.elf_backend_data = type { %struct.TYPE_23__* }
%struct.TYPE_23__ = type { i32 (i32*, %struct.TYPE_30__*, i32*)*, i32 (i32*, i32*, %struct.TYPE_30__*)*, i32 }
%struct.TYPE_30__ = type { i32, %struct.TYPE_22__ }
%struct.TYPE_22__ = type { i8* }
%struct.TYPE_28__ = type { i32, i64, i64 }
%struct.TYPE_29__ = type { i8* }
%struct.TYPE_26__ = type { i64, i8*, i64 }
%struct.TYPE_27__ = type { i8* }
%struct.TYPE_21__ = type { i64, i64 }

@.str = private unnamed_addr constant [9 x i8] c".dynamic\00", align 1
@elf_adjust_dynstr_offsets = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [15 x i8] c".gnu.version_d\00", align 1
@.str.2 = private unnamed_addr constant [15 x i8] c".gnu.version_r\00", align 1
@TRUE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, %struct.bfd_link_info*)* @elf_finalize_dynstr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @elf_finalize_dynstr(i32* %0, %struct.bfd_link_info* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca %struct.bfd_link_info*, align 8
  %5 = alloca %struct.elf_link_hash_table*, align 8
  %6 = alloca %struct.elf_link_local_dynamic_entry*, align 8
  %7 = alloca %struct.elf_strtab_hash*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca %struct.TYPE_25__*, align 8
  %10 = alloca i64, align 8
  %11 = alloca %struct.elf_backend_data*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca %struct.TYPE_30__, align 8
  %14 = alloca %struct.TYPE_25__*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i64, align 8
  %17 = alloca %struct.TYPE_28__, align 8
  %18 = alloca %struct.TYPE_29__, align 8
  %19 = alloca %struct.TYPE_25__*, align 8
  %20 = alloca i32*, align 8
  %21 = alloca i64, align 8
  %22 = alloca %struct.TYPE_26__, align 8
  %23 = alloca %struct.TYPE_27__, align 8
  store i32* %0, i32** %3, align 8
  store %struct.bfd_link_info* %1, %struct.bfd_link_info** %4, align 8
  %24 = load %struct.bfd_link_info*, %struct.bfd_link_info** %4, align 8
  %25 = call %struct.elf_link_hash_table* @elf_hash_table(%struct.bfd_link_info* %24)
  store %struct.elf_link_hash_table* %25, %struct.elf_link_hash_table** %5, align 8
  %26 = load %struct.elf_link_hash_table*, %struct.elf_link_hash_table** %5, align 8
  %27 = getelementptr inbounds %struct.elf_link_hash_table, %struct.elf_link_hash_table* %26, i32 0, i32 2
  %28 = load %struct.elf_strtab_hash*, %struct.elf_strtab_hash** %27, align 8
  store %struct.elf_strtab_hash* %28, %struct.elf_strtab_hash** %7, align 8
  %29 = load %struct.elf_link_hash_table*, %struct.elf_link_hash_table** %5, align 8
  %30 = getelementptr inbounds %struct.elf_link_hash_table, %struct.elf_link_hash_table* %29, i32 0, i32 1
  %31 = load i32*, i32** %30, align 8
  store i32* %31, i32** %8, align 8
  %32 = load %struct.elf_strtab_hash*, %struct.elf_strtab_hash** %7, align 8
  %33 = call i32 @_bfd_elf_strtab_finalize(%struct.elf_strtab_hash* %32)
  %34 = load %struct.elf_strtab_hash*, %struct.elf_strtab_hash** %7, align 8
  %35 = call i64 @_bfd_elf_strtab_size(%struct.elf_strtab_hash* %34)
  store i64 %35, i64* %10, align 8
  %36 = load i32*, i32** %8, align 8
  %37 = call %struct.elf_backend_data* @get_elf_backend_data(i32* %36)
  store %struct.elf_backend_data* %37, %struct.elf_backend_data** %11, align 8
  %38 = load i32*, i32** %8, align 8
  %39 = call %struct.TYPE_25__* @bfd_get_section_by_name(i32* %38, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0))
  store %struct.TYPE_25__* %39, %struct.TYPE_25__** %9, align 8
  %40 = load %struct.TYPE_25__*, %struct.TYPE_25__** %9, align 8
  %41 = icmp ne %struct.TYPE_25__* %40, null
  %42 = zext i1 %41 to i32
  %43 = call i32 @BFD_ASSERT(i32 %42)
  %44 = load %struct.TYPE_25__*, %struct.TYPE_25__** %9, align 8
  %45 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %44, i32 0, i32 1
  %46 = load i32*, i32** %45, align 8
  store i32* %46, i32** %12, align 8
  br label %47

47:                                               ; preds = %92, %2
  %48 = load i32*, i32** %12, align 8
  %49 = load %struct.TYPE_25__*, %struct.TYPE_25__** %9, align 8
  %50 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %49, i32 0, i32 1
  %51 = load i32*, i32** %50, align 8
  %52 = load %struct.TYPE_25__*, %struct.TYPE_25__** %9, align 8
  %53 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 8
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds i32, i32* %51, i64 %55
  %57 = icmp ult i32* %48, %56
  br i1 %57, label %58, label %101

58:                                               ; preds = %47
  %59 = load %struct.elf_backend_data*, %struct.elf_backend_data** %11, align 8
  %60 = getelementptr inbounds %struct.elf_backend_data, %struct.elf_backend_data* %59, i32 0, i32 0
  %61 = load %struct.TYPE_23__*, %struct.TYPE_23__** %60, align 8
  %62 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %61, i32 0, i32 1
  %63 = load i32 (i32*, i32*, %struct.TYPE_30__*)*, i32 (i32*, i32*, %struct.TYPE_30__*)** %62, align 8
  %64 = load i32*, i32** %8, align 8
  %65 = load i32*, i32** %12, align 8
  %66 = call i32 %63(i32* %64, i32* %65, %struct.TYPE_30__* %13)
  %67 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %13, i32 0, i32 0
  %68 = load i32, i32* %67, align 8
  switch i32 %68, label %82 [
    i32 128, label %69
    i32 132, label %74
    i32 129, label %74
    i32 131, label %74
    i32 130, label %74
    i32 133, label %74
    i32 134, label %74
  ]

69:                                               ; preds = %58
  %70 = load i64, i64* %10, align 8
  %71 = inttoptr i64 %70 to i8*
  %72 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %13, i32 0, i32 1
  %73 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %72, i32 0, i32 0
  store i8* %71, i8** %73, align 8
  br label %83

74:                                               ; preds = %58, %58, %58, %58, %58, %58
  %75 = load %struct.elf_strtab_hash*, %struct.elf_strtab_hash** %7, align 8
  %76 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %13, i32 0, i32 1
  %77 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %76, i32 0, i32 0
  %78 = load i8*, i8** %77, align 8
  %79 = call i8* @_bfd_elf_strtab_offset(%struct.elf_strtab_hash* %75, i8* %78)
  %80 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %13, i32 0, i32 1
  %81 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %80, i32 0, i32 0
  store i8* %79, i8** %81, align 8
  br label %83

82:                                               ; preds = %58
  br label %92

83:                                               ; preds = %74, %69
  %84 = load %struct.elf_backend_data*, %struct.elf_backend_data** %11, align 8
  %85 = getelementptr inbounds %struct.elf_backend_data, %struct.elf_backend_data* %84, i32 0, i32 0
  %86 = load %struct.TYPE_23__*, %struct.TYPE_23__** %85, align 8
  %87 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %86, i32 0, i32 0
  %88 = load i32 (i32*, %struct.TYPE_30__*, i32*)*, i32 (i32*, %struct.TYPE_30__*, i32*)** %87, align 8
  %89 = load i32*, i32** %8, align 8
  %90 = load i32*, i32** %12, align 8
  %91 = call i32 %88(i32* %89, %struct.TYPE_30__* %13, i32* %90)
  br label %92

92:                                               ; preds = %83, %82
  %93 = load %struct.elf_backend_data*, %struct.elf_backend_data** %11, align 8
  %94 = getelementptr inbounds %struct.elf_backend_data, %struct.elf_backend_data* %93, i32 0, i32 0
  %95 = load %struct.TYPE_23__*, %struct.TYPE_23__** %94, align 8
  %96 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %95, i32 0, i32 2
  %97 = load i32, i32* %96, align 8
  %98 = load i32*, i32** %12, align 8
  %99 = sext i32 %97 to i64
  %100 = getelementptr inbounds i32, i32* %98, i64 %99
  store i32* %100, i32** %12, align 8
  br label %47

101:                                              ; preds = %47
  %102 = load %struct.elf_link_hash_table*, %struct.elf_link_hash_table** %5, align 8
  %103 = getelementptr inbounds %struct.elf_link_hash_table, %struct.elf_link_hash_table* %102, i32 0, i32 0
  %104 = load %struct.elf_link_local_dynamic_entry*, %struct.elf_link_local_dynamic_entry** %103, align 8
  store %struct.elf_link_local_dynamic_entry* %104, %struct.elf_link_local_dynamic_entry** %6, align 8
  br label %105

105:                                              ; preds = %118, %101
  %106 = load %struct.elf_link_local_dynamic_entry*, %struct.elf_link_local_dynamic_entry** %6, align 8
  %107 = icmp ne %struct.elf_link_local_dynamic_entry* %106, null
  br i1 %107, label %108, label %122

108:                                              ; preds = %105
  %109 = load %struct.elf_strtab_hash*, %struct.elf_strtab_hash** %7, align 8
  %110 = load %struct.elf_link_local_dynamic_entry*, %struct.elf_link_local_dynamic_entry** %6, align 8
  %111 = getelementptr inbounds %struct.elf_link_local_dynamic_entry, %struct.elf_link_local_dynamic_entry* %110, i32 0, i32 0
  %112 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %111, i32 0, i32 0
  %113 = load i8*, i8** %112, align 8
  %114 = call i8* @_bfd_elf_strtab_offset(%struct.elf_strtab_hash* %109, i8* %113)
  %115 = load %struct.elf_link_local_dynamic_entry*, %struct.elf_link_local_dynamic_entry** %6, align 8
  %116 = getelementptr inbounds %struct.elf_link_local_dynamic_entry, %struct.elf_link_local_dynamic_entry* %115, i32 0, i32 0
  %117 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %116, i32 0, i32 0
  store i8* %114, i8** %117, align 8
  br label %118

118:                                              ; preds = %108
  %119 = load %struct.elf_link_local_dynamic_entry*, %struct.elf_link_local_dynamic_entry** %6, align 8
  %120 = getelementptr inbounds %struct.elf_link_local_dynamic_entry, %struct.elf_link_local_dynamic_entry* %119, i32 0, i32 1
  %121 = load %struct.elf_link_local_dynamic_entry*, %struct.elf_link_local_dynamic_entry** %120, align 8
  store %struct.elf_link_local_dynamic_entry* %121, %struct.elf_link_local_dynamic_entry** %6, align 8
  br label %105

122:                                              ; preds = %105
  %123 = load %struct.elf_link_hash_table*, %struct.elf_link_hash_table** %5, align 8
  %124 = load i32, i32* @elf_adjust_dynstr_offsets, align 4
  %125 = load %struct.elf_strtab_hash*, %struct.elf_strtab_hash** %7, align 8
  %126 = call i32 @elf_link_hash_traverse(%struct.elf_link_hash_table* %123, i32 %124, %struct.elf_strtab_hash* %125)
  %127 = load i32*, i32** %3, align 8
  %128 = call %struct.TYPE_21__* @elf_tdata(i32* %127)
  %129 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %128, i32 0, i32 1
  %130 = load i64, i64* %129, align 8
  %131 = icmp ne i64 %130, 0
  br i1 %131, label %132, label %178

132:                                              ; preds = %122
  %133 = load i32*, i32** %8, align 8
  %134 = call %struct.TYPE_25__* @bfd_get_section_by_name(i32* %133, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0))
  store %struct.TYPE_25__* %134, %struct.TYPE_25__** %14, align 8
  %135 = load %struct.TYPE_25__*, %struct.TYPE_25__** %14, align 8
  %136 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %135, i32 0, i32 1
  %137 = load i32*, i32** %136, align 8
  store i32* %137, i32** %15, align 8
  br label %138

138:                                              ; preds = %173, %132
  %139 = load i32*, i32** %3, align 8
  %140 = load i32*, i32** %15, align 8
  %141 = call i32 @_bfd_elf_swap_verdef_in(i32* %139, i32* %140, %struct.TYPE_28__* %17)
  %142 = load i32*, i32** %15, align 8
  %143 = getelementptr inbounds i32, i32* %142, i64 4
  store i32* %143, i32** %15, align 8
  %144 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %17, i32 0, i32 0
  %145 = load i32, i32* %144, align 8
  %146 = sext i32 %145 to i64
  %147 = icmp ne i64 %146, 4
  br i1 %147, label %148, label %149

148:                                              ; preds = %138
  br label %173

149:                                              ; preds = %138
  store i64 0, i64* %16, align 8
  br label %150

150:                                              ; preds = %169, %149
  %151 = load i64, i64* %16, align 8
  %152 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %17, i32 0, i32 1
  %153 = load i64, i64* %152, align 8
  %154 = icmp slt i64 %151, %153
  br i1 %154, label %155, label %172

155:                                              ; preds = %150
  %156 = load i32*, i32** %3, align 8
  %157 = load i32*, i32** %15, align 8
  %158 = call i32 @_bfd_elf_swap_verdaux_in(i32* %156, i32* %157, %struct.TYPE_29__* %18)
  %159 = load %struct.elf_strtab_hash*, %struct.elf_strtab_hash** %7, align 8
  %160 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %18, i32 0, i32 0
  %161 = load i8*, i8** %160, align 8
  %162 = call i8* @_bfd_elf_strtab_offset(%struct.elf_strtab_hash* %159, i8* %161)
  %163 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %18, i32 0, i32 0
  store i8* %162, i8** %163, align 8
  %164 = load i32*, i32** %3, align 8
  %165 = load i32*, i32** %15, align 8
  %166 = call i32 @_bfd_elf_swap_verdaux_out(i32* %164, %struct.TYPE_29__* %18, i32* %165)
  %167 = load i32*, i32** %15, align 8
  %168 = getelementptr inbounds i32, i32* %167, i64 4
  store i32* %168, i32** %15, align 8
  br label %169

169:                                              ; preds = %155
  %170 = load i64, i64* %16, align 8
  %171 = add nsw i64 %170, 1
  store i64 %171, i64* %16, align 8
  br label %150

172:                                              ; preds = %150
  br label %173

173:                                              ; preds = %172, %148
  %174 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %17, i32 0, i32 2
  %175 = load i64, i64* %174, align 8
  %176 = icmp ne i64 %175, 0
  br i1 %176, label %138, label %177

177:                                              ; preds = %173
  br label %178

178:                                              ; preds = %177, %122
  %179 = load i32*, i32** %3, align 8
  %180 = call %struct.TYPE_21__* @elf_tdata(i32* %179)
  %181 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %180, i32 0, i32 0
  %182 = load i64, i64* %181, align 8
  %183 = icmp ne i64 %182, 0
  br i1 %183, label %184, label %232

184:                                              ; preds = %178
  %185 = load i32*, i32** %8, align 8
  %186 = call %struct.TYPE_25__* @bfd_get_section_by_name(i32* %185, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0))
  store %struct.TYPE_25__* %186, %struct.TYPE_25__** %19, align 8
  %187 = load %struct.TYPE_25__*, %struct.TYPE_25__** %19, align 8
  %188 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %187, i32 0, i32 1
  %189 = load i32*, i32** %188, align 8
  store i32* %189, i32** %20, align 8
  br label %190

190:                                              ; preds = %227, %184
  %191 = load i32*, i32** %3, align 8
  %192 = load i32*, i32** %20, align 8
  %193 = call i32 @_bfd_elf_swap_verneed_in(i32* %191, i32* %192, %struct.TYPE_26__* %22)
  %194 = load %struct.elf_strtab_hash*, %struct.elf_strtab_hash** %7, align 8
  %195 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %22, i32 0, i32 1
  %196 = load i8*, i8** %195, align 8
  %197 = call i8* @_bfd_elf_strtab_offset(%struct.elf_strtab_hash* %194, i8* %196)
  %198 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %22, i32 0, i32 1
  store i8* %197, i8** %198, align 8
  %199 = load i32*, i32** %3, align 8
  %200 = load i32*, i32** %20, align 8
  %201 = call i32 @_bfd_elf_swap_verneed_out(i32* %199, %struct.TYPE_26__* %22, i32* %200)
  %202 = load i32*, i32** %20, align 8
  %203 = getelementptr inbounds i32, i32* %202, i64 4
  store i32* %203, i32** %20, align 8
  store i64 0, i64* %21, align 8
  br label %204

204:                                              ; preds = %223, %190
  %205 = load i64, i64* %21, align 8
  %206 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %22, i32 0, i32 0
  %207 = load i64, i64* %206, align 8
  %208 = icmp slt i64 %205, %207
  br i1 %208, label %209, label %226

209:                                              ; preds = %204
  %210 = load i32*, i32** %3, align 8
  %211 = load i32*, i32** %20, align 8
  %212 = call i32 @_bfd_elf_swap_vernaux_in(i32* %210, i32* %211, %struct.TYPE_27__* %23)
  %213 = load %struct.elf_strtab_hash*, %struct.elf_strtab_hash** %7, align 8
  %214 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %23, i32 0, i32 0
  %215 = load i8*, i8** %214, align 8
  %216 = call i8* @_bfd_elf_strtab_offset(%struct.elf_strtab_hash* %213, i8* %215)
  %217 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %23, i32 0, i32 0
  store i8* %216, i8** %217, align 8
  %218 = load i32*, i32** %3, align 8
  %219 = load i32*, i32** %20, align 8
  %220 = call i32 @_bfd_elf_swap_vernaux_out(i32* %218, %struct.TYPE_27__* %23, i32* %219)
  %221 = load i32*, i32** %20, align 8
  %222 = getelementptr inbounds i32, i32* %221, i64 4
  store i32* %222, i32** %20, align 8
  br label %223

223:                                              ; preds = %209
  %224 = load i64, i64* %21, align 8
  %225 = add nsw i64 %224, 1
  store i64 %225, i64* %21, align 8
  br label %204

226:                                              ; preds = %204
  br label %227

227:                                              ; preds = %226
  %228 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %22, i32 0, i32 2
  %229 = load i64, i64* %228, align 8
  %230 = icmp ne i64 %229, 0
  br i1 %230, label %190, label %231

231:                                              ; preds = %227
  br label %232

232:                                              ; preds = %231, %178
  %233 = load i32, i32* @TRUE, align 4
  ret i32 %233
}

declare dso_local %struct.elf_link_hash_table* @elf_hash_table(%struct.bfd_link_info*) #1

declare dso_local i32 @_bfd_elf_strtab_finalize(%struct.elf_strtab_hash*) #1

declare dso_local i64 @_bfd_elf_strtab_size(%struct.elf_strtab_hash*) #1

declare dso_local %struct.elf_backend_data* @get_elf_backend_data(i32*) #1

declare dso_local %struct.TYPE_25__* @bfd_get_section_by_name(i32*, i8*) #1

declare dso_local i32 @BFD_ASSERT(i32) #1

declare dso_local i8* @_bfd_elf_strtab_offset(%struct.elf_strtab_hash*, i8*) #1

declare dso_local i32 @elf_link_hash_traverse(%struct.elf_link_hash_table*, i32, %struct.elf_strtab_hash*) #1

declare dso_local %struct.TYPE_21__* @elf_tdata(i32*) #1

declare dso_local i32 @_bfd_elf_swap_verdef_in(i32*, i32*, %struct.TYPE_28__*) #1

declare dso_local i32 @_bfd_elf_swap_verdaux_in(i32*, i32*, %struct.TYPE_29__*) #1

declare dso_local i32 @_bfd_elf_swap_verdaux_out(i32*, %struct.TYPE_29__*, i32*) #1

declare dso_local i32 @_bfd_elf_swap_verneed_in(i32*, i32*, %struct.TYPE_26__*) #1

declare dso_local i32 @_bfd_elf_swap_verneed_out(i32*, %struct.TYPE_26__*, i32*) #1

declare dso_local i32 @_bfd_elf_swap_vernaux_in(i32*, i32*, %struct.TYPE_27__*) #1

declare dso_local i32 @_bfd_elf_swap_vernaux_out(i32*, %struct.TYPE_27__*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

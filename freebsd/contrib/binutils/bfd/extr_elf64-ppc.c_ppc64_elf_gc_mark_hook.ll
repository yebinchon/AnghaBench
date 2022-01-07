; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/bfd/extr_elf64-ppc.c_ppc64_elf_gc_mark_hook.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/bfd/extr_elf64-ppc.c_ppc64_elf_gc_mark_hook.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_27__ = type { i32, i32 }
%struct.bfd_link_info = type { %struct.bfd_sym_chain* }
%struct.bfd_sym_chain = type { i32, %struct.bfd_sym_chain* }
%struct.TYPE_29__ = type { i32, i32 }
%struct.elf_link_hash_entry = type { %struct.TYPE_38__ }
%struct.TYPE_38__ = type { %struct.TYPE_37__, i32 }
%struct.TYPE_37__ = type { %struct.TYPE_36__, %struct.TYPE_34__ }
%struct.TYPE_36__ = type { %struct.TYPE_35__* }
%struct.TYPE_35__ = type { %struct.TYPE_27__* }
%struct.TYPE_34__ = type { %struct.TYPE_27__* }
%struct.TYPE_28__ = type { i32, i32 }
%struct.ppc_link_hash_table = type { i32 }
%struct.ppc_link_hash_entry = type { %struct.TYPE_33__, %struct.ppc_link_hash_entry*, i64 }
%struct.TYPE_33__ = type { %struct.TYPE_32__ }
%struct.TYPE_32__ = type { i64, %struct.TYPE_31__ }
%struct.TYPE_31__ = type { %struct.TYPE_30__ }
%struct.TYPE_30__ = type { %struct.TYPE_27__*, i32 }

@FALSE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.TYPE_27__* (%struct.TYPE_27__*, %struct.bfd_link_info*, %struct.TYPE_29__*, %struct.elf_link_hash_entry*, %struct.TYPE_28__*)* @ppc64_elf_gc_mark_hook to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.TYPE_27__* @ppc64_elf_gc_mark_hook(%struct.TYPE_27__* %0, %struct.bfd_link_info* %1, %struct.TYPE_29__* %2, %struct.elf_link_hash_entry* %3, %struct.TYPE_28__* %4) #0 {
  %6 = alloca %struct.TYPE_27__*, align 8
  %7 = alloca %struct.TYPE_27__*, align 8
  %8 = alloca %struct.bfd_link_info*, align 8
  %9 = alloca %struct.TYPE_29__*, align 8
  %10 = alloca %struct.elf_link_hash_entry*, align 8
  %11 = alloca %struct.TYPE_28__*, align 8
  %12 = alloca %struct.TYPE_27__*, align 8
  %13 = alloca %struct.ppc_link_hash_table*, align 8
  %14 = alloca %struct.bfd_sym_chain*, align 8
  %15 = alloca %struct.ppc_link_hash_entry*, align 8
  %16 = alloca i32, align 4
  %17 = alloca %struct.ppc_link_hash_entry*, align 8
  %18 = alloca %struct.TYPE_27__**, align 8
  store %struct.TYPE_27__* %0, %struct.TYPE_27__** %7, align 8
  store %struct.bfd_link_info* %1, %struct.bfd_link_info** %8, align 8
  store %struct.TYPE_29__* %2, %struct.TYPE_29__** %9, align 8
  store %struct.elf_link_hash_entry* %3, %struct.elf_link_hash_entry** %10, align 8
  store %struct.TYPE_28__* %4, %struct.TYPE_28__** %11, align 8
  %19 = load %struct.bfd_link_info*, %struct.bfd_link_info** %8, align 8
  %20 = getelementptr inbounds %struct.bfd_link_info, %struct.bfd_link_info* %19, i32 0, i32 0
  %21 = load %struct.bfd_sym_chain*, %struct.bfd_sym_chain** %20, align 8
  %22 = icmp ne %struct.bfd_sym_chain* %21, null
  br i1 %22, label %23, label %157

23:                                               ; preds = %5
  %24 = load %struct.bfd_link_info*, %struct.bfd_link_info** %8, align 8
  %25 = call %struct.ppc_link_hash_table* @ppc_hash_table(%struct.bfd_link_info* %24)
  store %struct.ppc_link_hash_table* %25, %struct.ppc_link_hash_table** %13, align 8
  %26 = load %struct.bfd_link_info*, %struct.bfd_link_info** %8, align 8
  %27 = getelementptr inbounds %struct.bfd_link_info, %struct.bfd_link_info* %26, i32 0, i32 0
  %28 = load %struct.bfd_sym_chain*, %struct.bfd_sym_chain** %27, align 8
  store %struct.bfd_sym_chain* %28, %struct.bfd_sym_chain** %14, align 8
  %29 = load %struct.bfd_link_info*, %struct.bfd_link_info** %8, align 8
  %30 = getelementptr inbounds %struct.bfd_link_info, %struct.bfd_link_info* %29, i32 0, i32 0
  store %struct.bfd_sym_chain* null, %struct.bfd_sym_chain** %30, align 8
  br label %31

31:                                               ; preds = %152, %23
  %32 = load %struct.bfd_sym_chain*, %struct.bfd_sym_chain** %14, align 8
  %33 = icmp ne %struct.bfd_sym_chain* %32, null
  br i1 %33, label %34, label %156

34:                                               ; preds = %31
  %35 = load %struct.ppc_link_hash_table*, %struct.ppc_link_hash_table** %13, align 8
  %36 = getelementptr inbounds %struct.ppc_link_hash_table, %struct.ppc_link_hash_table* %35, i32 0, i32 0
  %37 = load %struct.bfd_sym_chain*, %struct.bfd_sym_chain** %14, align 8
  %38 = getelementptr inbounds %struct.bfd_sym_chain, %struct.bfd_sym_chain* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = load i32, i32* @FALSE, align 4
  %41 = load i32, i32* @FALSE, align 4
  %42 = load i32, i32* @FALSE, align 4
  %43 = call i64 @elf_link_hash_lookup(i32* %36, i32 %39, i32 %40, i32 %41, i32 %42)
  %44 = inttoptr i64 %43 to %struct.ppc_link_hash_entry*
  store %struct.ppc_link_hash_entry* %44, %struct.ppc_link_hash_entry** %15, align 8
  %45 = load %struct.ppc_link_hash_entry*, %struct.ppc_link_hash_entry** %15, align 8
  %46 = icmp eq %struct.ppc_link_hash_entry* %45, null
  br i1 %46, label %47, label %48

47:                                               ; preds = %34
  br label %152

48:                                               ; preds = %34
  %49 = load %struct.ppc_link_hash_entry*, %struct.ppc_link_hash_entry** %15, align 8
  %50 = getelementptr inbounds %struct.ppc_link_hash_entry, %struct.ppc_link_hash_entry* %49, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %50, i32 0, i32 0
  %52 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = icmp ne i64 %53, 129
  br i1 %54, label %55, label %63

55:                                               ; preds = %48
  %56 = load %struct.ppc_link_hash_entry*, %struct.ppc_link_hash_entry** %15, align 8
  %57 = getelementptr inbounds %struct.ppc_link_hash_entry, %struct.ppc_link_hash_entry* %56, i32 0, i32 0
  %58 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %57, i32 0, i32 0
  %59 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %58, i32 0, i32 0
  %60 = load i64, i64* %59, align 8
  %61 = icmp ne i64 %60, 128
  br i1 %61, label %62, label %63

62:                                               ; preds = %55
  br label %152

63:                                               ; preds = %55, %48
  %64 = load %struct.ppc_link_hash_entry*, %struct.ppc_link_hash_entry** %15, align 8
  %65 = getelementptr inbounds %struct.ppc_link_hash_entry, %struct.ppc_link_hash_entry* %64, i32 0, i32 2
  %66 = load i64, i64* %65, align 8
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %68, label %96

68:                                               ; preds = %63
  %69 = load %struct.ppc_link_hash_entry*, %struct.ppc_link_hash_entry** %15, align 8
  %70 = getelementptr inbounds %struct.ppc_link_hash_entry, %struct.ppc_link_hash_entry* %69, i32 0, i32 1
  %71 = load %struct.ppc_link_hash_entry*, %struct.ppc_link_hash_entry** %70, align 8
  %72 = getelementptr inbounds %struct.ppc_link_hash_entry, %struct.ppc_link_hash_entry* %71, i32 0, i32 0
  %73 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %72, i32 0, i32 0
  %74 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %73, i32 0, i32 0
  %75 = load i64, i64* %74, align 8
  %76 = icmp eq i64 %75, 129
  br i1 %76, label %86, label %77

77:                                               ; preds = %68
  %78 = load %struct.ppc_link_hash_entry*, %struct.ppc_link_hash_entry** %15, align 8
  %79 = getelementptr inbounds %struct.ppc_link_hash_entry, %struct.ppc_link_hash_entry* %78, i32 0, i32 1
  %80 = load %struct.ppc_link_hash_entry*, %struct.ppc_link_hash_entry** %79, align 8
  %81 = getelementptr inbounds %struct.ppc_link_hash_entry, %struct.ppc_link_hash_entry* %80, i32 0, i32 0
  %82 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %81, i32 0, i32 0
  %83 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %82, i32 0, i32 0
  %84 = load i64, i64* %83, align 8
  %85 = icmp eq i64 %84, 128
  br i1 %85, label %86, label %96

86:                                               ; preds = %77, %68
  %87 = load %struct.ppc_link_hash_entry*, %struct.ppc_link_hash_entry** %15, align 8
  %88 = getelementptr inbounds %struct.ppc_link_hash_entry, %struct.ppc_link_hash_entry* %87, i32 0, i32 1
  %89 = load %struct.ppc_link_hash_entry*, %struct.ppc_link_hash_entry** %88, align 8
  %90 = getelementptr inbounds %struct.ppc_link_hash_entry, %struct.ppc_link_hash_entry* %89, i32 0, i32 0
  %91 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %90, i32 0, i32 0
  %92 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %91, i32 0, i32 1
  %93 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %92, i32 0, i32 0
  %94 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %93, i32 0, i32 0
  %95 = load %struct.TYPE_27__*, %struct.TYPE_27__** %94, align 8
  store %struct.TYPE_27__* %95, %struct.TYPE_27__** %12, align 8
  br label %126

96:                                               ; preds = %77, %63
  %97 = load %struct.ppc_link_hash_entry*, %struct.ppc_link_hash_entry** %15, align 8
  %98 = getelementptr inbounds %struct.ppc_link_hash_entry, %struct.ppc_link_hash_entry* %97, i32 0, i32 0
  %99 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %98, i32 0, i32 0
  %100 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %99, i32 0, i32 1
  %101 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %100, i32 0, i32 0
  %102 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %101, i32 0, i32 0
  %103 = load %struct.TYPE_27__*, %struct.TYPE_27__** %102, align 8
  %104 = call %struct.TYPE_27__** @get_opd_info(%struct.TYPE_27__* %103)
  %105 = icmp ne %struct.TYPE_27__** %104, null
  br i1 %105, label %106, label %124

106:                                              ; preds = %96
  %107 = load %struct.ppc_link_hash_entry*, %struct.ppc_link_hash_entry** %15, align 8
  %108 = getelementptr inbounds %struct.ppc_link_hash_entry, %struct.ppc_link_hash_entry* %107, i32 0, i32 0
  %109 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %108, i32 0, i32 0
  %110 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %109, i32 0, i32 1
  %111 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %110, i32 0, i32 0
  %112 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %111, i32 0, i32 0
  %113 = load %struct.TYPE_27__*, %struct.TYPE_27__** %112, align 8
  %114 = load %struct.ppc_link_hash_entry*, %struct.ppc_link_hash_entry** %15, align 8
  %115 = getelementptr inbounds %struct.ppc_link_hash_entry, %struct.ppc_link_hash_entry* %114, i32 0, i32 0
  %116 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %115, i32 0, i32 0
  %117 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %116, i32 0, i32 1
  %118 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %117, i32 0, i32 0
  %119 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %118, i32 0, i32 1
  %120 = load i32, i32* %119, align 8
  %121 = call i64 @opd_entry_value(%struct.TYPE_27__* %113, i32 %120, %struct.TYPE_27__** %12, i32* null)
  %122 = icmp ne i64 %121, -1
  br i1 %122, label %123, label %124

123:                                              ; preds = %106
  br label %125

124:                                              ; preds = %106, %96
  br label %152

125:                                              ; preds = %123
  br label %126

126:                                              ; preds = %125, %86
  %127 = load %struct.TYPE_27__*, %struct.TYPE_27__** %12, align 8
  %128 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %127, i32 0, i32 0
  %129 = load i32, i32* %128, align 4
  %130 = icmp ne i32 %129, 0
  br i1 %130, label %135, label %131

131:                                              ; preds = %126
  %132 = load %struct.bfd_link_info*, %struct.bfd_link_info** %8, align 8
  %133 = load %struct.TYPE_27__*, %struct.TYPE_27__** %12, align 8
  %134 = call i32 @_bfd_elf_gc_mark(%struct.bfd_link_info* %132, %struct.TYPE_27__* %133, %struct.TYPE_27__* (%struct.TYPE_27__*, %struct.bfd_link_info*, %struct.TYPE_29__*, %struct.elf_link_hash_entry*, %struct.TYPE_28__*)* @ppc64_elf_gc_mark_hook)
  br label %135

135:                                              ; preds = %131, %126
  %136 = load %struct.ppc_link_hash_entry*, %struct.ppc_link_hash_entry** %15, align 8
  %137 = getelementptr inbounds %struct.ppc_link_hash_entry, %struct.ppc_link_hash_entry* %136, i32 0, i32 0
  %138 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %137, i32 0, i32 0
  %139 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %138, i32 0, i32 1
  %140 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %139, i32 0, i32 0
  %141 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %140, i32 0, i32 0
  %142 = load %struct.TYPE_27__*, %struct.TYPE_27__** %141, align 8
  store %struct.TYPE_27__* %142, %struct.TYPE_27__** %12, align 8
  %143 = load %struct.TYPE_27__*, %struct.TYPE_27__** %12, align 8
  %144 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %143, i32 0, i32 0
  %145 = load i32, i32* %144, align 4
  %146 = icmp ne i32 %145, 0
  br i1 %146, label %151, label %147

147:                                              ; preds = %135
  %148 = load %struct.bfd_link_info*, %struct.bfd_link_info** %8, align 8
  %149 = load %struct.TYPE_27__*, %struct.TYPE_27__** %12, align 8
  %150 = call i32 @_bfd_elf_gc_mark(%struct.bfd_link_info* %148, %struct.TYPE_27__* %149, %struct.TYPE_27__* (%struct.TYPE_27__*, %struct.bfd_link_info*, %struct.TYPE_29__*, %struct.elf_link_hash_entry*, %struct.TYPE_28__*)* @ppc64_elf_gc_mark_hook)
  br label %151

151:                                              ; preds = %147, %135
  br label %152

152:                                              ; preds = %151, %124, %62, %47
  %153 = load %struct.bfd_sym_chain*, %struct.bfd_sym_chain** %14, align 8
  %154 = getelementptr inbounds %struct.bfd_sym_chain, %struct.bfd_sym_chain* %153, i32 0, i32 1
  %155 = load %struct.bfd_sym_chain*, %struct.bfd_sym_chain** %154, align 8
  store %struct.bfd_sym_chain* %155, %struct.bfd_sym_chain** %14, align 8
  br label %31

156:                                              ; preds = %31
  br label %157

157:                                              ; preds = %156, %5
  store %struct.TYPE_27__* null, %struct.TYPE_27__** %12, align 8
  %158 = load %struct.TYPE_27__*, %struct.TYPE_27__** %7, align 8
  %159 = call %struct.TYPE_27__** @get_opd_info(%struct.TYPE_27__* %158)
  %160 = icmp ne %struct.TYPE_27__** %159, null
  br i1 %160, label %161, label %163

161:                                              ; preds = %157
  %162 = load %struct.TYPE_27__*, %struct.TYPE_27__** %12, align 8
  store %struct.TYPE_27__* %162, %struct.TYPE_27__** %6, align 8
  br label %375

163:                                              ; preds = %157
  %164 = load %struct.elf_link_hash_entry*, %struct.elf_link_hash_entry** %10, align 8
  %165 = icmp ne %struct.elf_link_hash_entry* %164, null
  br i1 %165, label %166, label %338

166:                                              ; preds = %163
  %167 = load %struct.TYPE_29__*, %struct.TYPE_29__** %9, align 8
  %168 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %167, i32 0, i32 1
  %169 = load i32, i32* %168, align 4
  %170 = call i32 @ELF64_R_TYPE(i32 %169)
  store i32 %170, i32* %16, align 4
  %171 = load i32, i32* %16, align 4
  switch i32 %171, label %173 [
    i32 131, label %172
    i32 132, label %172
  ]

172:                                              ; preds = %166, %166
  br label %337

173:                                              ; preds = %166
  %174 = load %struct.elf_link_hash_entry*, %struct.elf_link_hash_entry** %10, align 8
  %175 = getelementptr inbounds %struct.elf_link_hash_entry, %struct.elf_link_hash_entry* %174, i32 0, i32 0
  %176 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %175, i32 0, i32 1
  %177 = load i32, i32* %176, align 8
  switch i32 %177, label %335 [
    i32 129, label %178
    i32 128, label %178
    i32 130, label %326
  ]

178:                                              ; preds = %173, %173
  %179 = load %struct.elf_link_hash_entry*, %struct.elf_link_hash_entry** %10, align 8
  %180 = bitcast %struct.elf_link_hash_entry* %179 to %struct.ppc_link_hash_entry*
  store %struct.ppc_link_hash_entry* %180, %struct.ppc_link_hash_entry** %17, align 8
  %181 = load %struct.ppc_link_hash_entry*, %struct.ppc_link_hash_entry** %17, align 8
  %182 = getelementptr inbounds %struct.ppc_link_hash_entry, %struct.ppc_link_hash_entry* %181, i32 0, i32 1
  %183 = load %struct.ppc_link_hash_entry*, %struct.ppc_link_hash_entry** %182, align 8
  %184 = icmp ne %struct.ppc_link_hash_entry* %183, null
  br i1 %184, label %185, label %214

185:                                              ; preds = %178
  %186 = load %struct.ppc_link_hash_entry*, %struct.ppc_link_hash_entry** %17, align 8
  %187 = getelementptr inbounds %struct.ppc_link_hash_entry, %struct.ppc_link_hash_entry* %186, i32 0, i32 1
  %188 = load %struct.ppc_link_hash_entry*, %struct.ppc_link_hash_entry** %187, align 8
  %189 = getelementptr inbounds %struct.ppc_link_hash_entry, %struct.ppc_link_hash_entry* %188, i32 0, i32 2
  %190 = load i64, i64* %189, align 8
  %191 = icmp ne i64 %190, 0
  br i1 %191, label %192, label %214

192:                                              ; preds = %185
  %193 = load %struct.ppc_link_hash_entry*, %struct.ppc_link_hash_entry** %17, align 8
  %194 = getelementptr inbounds %struct.ppc_link_hash_entry, %struct.ppc_link_hash_entry* %193, i32 0, i32 1
  %195 = load %struct.ppc_link_hash_entry*, %struct.ppc_link_hash_entry** %194, align 8
  %196 = getelementptr inbounds %struct.ppc_link_hash_entry, %struct.ppc_link_hash_entry* %195, i32 0, i32 0
  %197 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %196, i32 0, i32 0
  %198 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %197, i32 0, i32 0
  %199 = load i64, i64* %198, align 8
  %200 = icmp eq i64 %199, 129
  br i1 %200, label %210, label %201

201:                                              ; preds = %192
  %202 = load %struct.ppc_link_hash_entry*, %struct.ppc_link_hash_entry** %17, align 8
  %203 = getelementptr inbounds %struct.ppc_link_hash_entry, %struct.ppc_link_hash_entry* %202, i32 0, i32 1
  %204 = load %struct.ppc_link_hash_entry*, %struct.ppc_link_hash_entry** %203, align 8
  %205 = getelementptr inbounds %struct.ppc_link_hash_entry, %struct.ppc_link_hash_entry* %204, i32 0, i32 0
  %206 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %205, i32 0, i32 0
  %207 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %206, i32 0, i32 0
  %208 = load i64, i64* %207, align 8
  %209 = icmp eq i64 %208, 128
  br i1 %209, label %210, label %214

210:                                              ; preds = %201, %192
  %211 = load %struct.ppc_link_hash_entry*, %struct.ppc_link_hash_entry** %17, align 8
  %212 = getelementptr inbounds %struct.ppc_link_hash_entry, %struct.ppc_link_hash_entry* %211, i32 0, i32 1
  %213 = load %struct.ppc_link_hash_entry*, %struct.ppc_link_hash_entry** %212, align 8
  store %struct.ppc_link_hash_entry* %213, %struct.ppc_link_hash_entry** %17, align 8
  br label %214

214:                                              ; preds = %210, %201, %185, %178
  %215 = load %struct.ppc_link_hash_entry*, %struct.ppc_link_hash_entry** %17, align 8
  %216 = getelementptr inbounds %struct.ppc_link_hash_entry, %struct.ppc_link_hash_entry* %215, i32 0, i32 2
  %217 = load i64, i64* %216, align 8
  %218 = icmp ne i64 %217, 0
  br i1 %218, label %219, label %268

219:                                              ; preds = %214
  %220 = load %struct.ppc_link_hash_entry*, %struct.ppc_link_hash_entry** %17, align 8
  %221 = getelementptr inbounds %struct.ppc_link_hash_entry, %struct.ppc_link_hash_entry* %220, i32 0, i32 1
  %222 = load %struct.ppc_link_hash_entry*, %struct.ppc_link_hash_entry** %221, align 8
  %223 = getelementptr inbounds %struct.ppc_link_hash_entry, %struct.ppc_link_hash_entry* %222, i32 0, i32 0
  %224 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %223, i32 0, i32 0
  %225 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %224, i32 0, i32 0
  %226 = load i64, i64* %225, align 8
  %227 = icmp eq i64 %226, 129
  br i1 %227, label %237, label %228

228:                                              ; preds = %219
  %229 = load %struct.ppc_link_hash_entry*, %struct.ppc_link_hash_entry** %17, align 8
  %230 = getelementptr inbounds %struct.ppc_link_hash_entry, %struct.ppc_link_hash_entry* %229, i32 0, i32 1
  %231 = load %struct.ppc_link_hash_entry*, %struct.ppc_link_hash_entry** %230, align 8
  %232 = getelementptr inbounds %struct.ppc_link_hash_entry, %struct.ppc_link_hash_entry* %231, i32 0, i32 0
  %233 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %232, i32 0, i32 0
  %234 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %233, i32 0, i32 0
  %235 = load i64, i64* %234, align 8
  %236 = icmp eq i64 %235, 128
  br i1 %236, label %237, label %268

237:                                              ; preds = %228, %219
  %238 = load %struct.ppc_link_hash_entry*, %struct.ppc_link_hash_entry** %17, align 8
  %239 = getelementptr inbounds %struct.ppc_link_hash_entry, %struct.ppc_link_hash_entry* %238, i32 0, i32 0
  %240 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %239, i32 0, i32 0
  %241 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %240, i32 0, i32 1
  %242 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %241, i32 0, i32 0
  %243 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %242, i32 0, i32 0
  %244 = load %struct.TYPE_27__*, %struct.TYPE_27__** %243, align 8
  %245 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %244, i32 0, i32 0
  %246 = load i32, i32* %245, align 4
  %247 = icmp ne i32 %246, 0
  br i1 %247, label %258, label %248

248:                                              ; preds = %237
  %249 = load %struct.bfd_link_info*, %struct.bfd_link_info** %8, align 8
  %250 = load %struct.ppc_link_hash_entry*, %struct.ppc_link_hash_entry** %17, align 8
  %251 = getelementptr inbounds %struct.ppc_link_hash_entry, %struct.ppc_link_hash_entry* %250, i32 0, i32 0
  %252 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %251, i32 0, i32 0
  %253 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %252, i32 0, i32 1
  %254 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %253, i32 0, i32 0
  %255 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %254, i32 0, i32 0
  %256 = load %struct.TYPE_27__*, %struct.TYPE_27__** %255, align 8
  %257 = call i32 @_bfd_elf_gc_mark(%struct.bfd_link_info* %249, %struct.TYPE_27__* %256, %struct.TYPE_27__* (%struct.TYPE_27__*, %struct.bfd_link_info*, %struct.TYPE_29__*, %struct.elf_link_hash_entry*, %struct.TYPE_28__*)* @ppc64_elf_gc_mark_hook)
  br label %258

258:                                              ; preds = %248, %237
  %259 = load %struct.ppc_link_hash_entry*, %struct.ppc_link_hash_entry** %17, align 8
  %260 = getelementptr inbounds %struct.ppc_link_hash_entry, %struct.ppc_link_hash_entry* %259, i32 0, i32 1
  %261 = load %struct.ppc_link_hash_entry*, %struct.ppc_link_hash_entry** %260, align 8
  %262 = getelementptr inbounds %struct.ppc_link_hash_entry, %struct.ppc_link_hash_entry* %261, i32 0, i32 0
  %263 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %262, i32 0, i32 0
  %264 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %263, i32 0, i32 1
  %265 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %264, i32 0, i32 0
  %266 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %265, i32 0, i32 0
  %267 = load %struct.TYPE_27__*, %struct.TYPE_27__** %266, align 8
  store %struct.TYPE_27__* %267, %struct.TYPE_27__** %12, align 8
  br label %325

268:                                              ; preds = %228, %214
  %269 = load %struct.ppc_link_hash_entry*, %struct.ppc_link_hash_entry** %17, align 8
  %270 = getelementptr inbounds %struct.ppc_link_hash_entry, %struct.ppc_link_hash_entry* %269, i32 0, i32 0
  %271 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %270, i32 0, i32 0
  %272 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %271, i32 0, i32 1
  %273 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %272, i32 0, i32 0
  %274 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %273, i32 0, i32 0
  %275 = load %struct.TYPE_27__*, %struct.TYPE_27__** %274, align 8
  %276 = call %struct.TYPE_27__** @get_opd_info(%struct.TYPE_27__* %275)
  %277 = icmp ne %struct.TYPE_27__** %276, null
  br i1 %277, label %278, label %317

278:                                              ; preds = %268
  %279 = load %struct.ppc_link_hash_entry*, %struct.ppc_link_hash_entry** %17, align 8
  %280 = getelementptr inbounds %struct.ppc_link_hash_entry, %struct.ppc_link_hash_entry* %279, i32 0, i32 0
  %281 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %280, i32 0, i32 0
  %282 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %281, i32 0, i32 1
  %283 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %282, i32 0, i32 0
  %284 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %283, i32 0, i32 0
  %285 = load %struct.TYPE_27__*, %struct.TYPE_27__** %284, align 8
  %286 = load %struct.ppc_link_hash_entry*, %struct.ppc_link_hash_entry** %17, align 8
  %287 = getelementptr inbounds %struct.ppc_link_hash_entry, %struct.ppc_link_hash_entry* %286, i32 0, i32 0
  %288 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %287, i32 0, i32 0
  %289 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %288, i32 0, i32 1
  %290 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %289, i32 0, i32 0
  %291 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %290, i32 0, i32 1
  %292 = load i32, i32* %291, align 8
  %293 = call i64 @opd_entry_value(%struct.TYPE_27__* %285, i32 %292, %struct.TYPE_27__** %12, i32* null)
  %294 = icmp ne i64 %293, -1
  br i1 %294, label %295, label %317

295:                                              ; preds = %278
  %296 = load %struct.ppc_link_hash_entry*, %struct.ppc_link_hash_entry** %17, align 8
  %297 = getelementptr inbounds %struct.ppc_link_hash_entry, %struct.ppc_link_hash_entry* %296, i32 0, i32 0
  %298 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %297, i32 0, i32 0
  %299 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %298, i32 0, i32 1
  %300 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %299, i32 0, i32 0
  %301 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %300, i32 0, i32 0
  %302 = load %struct.TYPE_27__*, %struct.TYPE_27__** %301, align 8
  %303 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %302, i32 0, i32 0
  %304 = load i32, i32* %303, align 4
  %305 = icmp ne i32 %304, 0
  br i1 %305, label %316, label %306

306:                                              ; preds = %295
  %307 = load %struct.bfd_link_info*, %struct.bfd_link_info** %8, align 8
  %308 = load %struct.ppc_link_hash_entry*, %struct.ppc_link_hash_entry** %17, align 8
  %309 = getelementptr inbounds %struct.ppc_link_hash_entry, %struct.ppc_link_hash_entry* %308, i32 0, i32 0
  %310 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %309, i32 0, i32 0
  %311 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %310, i32 0, i32 1
  %312 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %311, i32 0, i32 0
  %313 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %312, i32 0, i32 0
  %314 = load %struct.TYPE_27__*, %struct.TYPE_27__** %313, align 8
  %315 = call i32 @_bfd_elf_gc_mark(%struct.bfd_link_info* %307, %struct.TYPE_27__* %314, %struct.TYPE_27__* (%struct.TYPE_27__*, %struct.bfd_link_info*, %struct.TYPE_29__*, %struct.elf_link_hash_entry*, %struct.TYPE_28__*)* @ppc64_elf_gc_mark_hook)
  br label %316

316:                                              ; preds = %306, %295
  br label %324

317:                                              ; preds = %278, %268
  %318 = load %struct.elf_link_hash_entry*, %struct.elf_link_hash_entry** %10, align 8
  %319 = getelementptr inbounds %struct.elf_link_hash_entry, %struct.elf_link_hash_entry* %318, i32 0, i32 0
  %320 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %319, i32 0, i32 0
  %321 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %320, i32 0, i32 1
  %322 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %321, i32 0, i32 0
  %323 = load %struct.TYPE_27__*, %struct.TYPE_27__** %322, align 8
  store %struct.TYPE_27__* %323, %struct.TYPE_27__** %12, align 8
  br label %324

324:                                              ; preds = %317, %316
  br label %325

325:                                              ; preds = %324, %258
  br label %336

326:                                              ; preds = %173
  %327 = load %struct.elf_link_hash_entry*, %struct.elf_link_hash_entry** %10, align 8
  %328 = getelementptr inbounds %struct.elf_link_hash_entry, %struct.elf_link_hash_entry* %327, i32 0, i32 0
  %329 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %328, i32 0, i32 0
  %330 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %329, i32 0, i32 0
  %331 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %330, i32 0, i32 0
  %332 = load %struct.TYPE_35__*, %struct.TYPE_35__** %331, align 8
  %333 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %332, i32 0, i32 0
  %334 = load %struct.TYPE_27__*, %struct.TYPE_27__** %333, align 8
  store %struct.TYPE_27__* %334, %struct.TYPE_27__** %12, align 8
  br label %336

335:                                              ; preds = %173
  br label %336

336:                                              ; preds = %335, %326, %325
  br label %337

337:                                              ; preds = %336, %172
  br label %373

338:                                              ; preds = %163
  %339 = load %struct.TYPE_27__*, %struct.TYPE_27__** %7, align 8
  %340 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %339, i32 0, i32 1
  %341 = load i32, i32* %340, align 4
  %342 = load %struct.TYPE_28__*, %struct.TYPE_28__** %11, align 8
  %343 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %342, i32 0, i32 1
  %344 = load i32, i32* %343, align 4
  %345 = call %struct.TYPE_27__* @bfd_section_from_elf_index(i32 %341, i32 %344)
  store %struct.TYPE_27__* %345, %struct.TYPE_27__** %12, align 8
  %346 = load %struct.TYPE_27__*, %struct.TYPE_27__** %12, align 8
  %347 = call %struct.TYPE_27__** @get_opd_info(%struct.TYPE_27__* %346)
  store %struct.TYPE_27__** %347, %struct.TYPE_27__*** %18, align 8
  %348 = load %struct.TYPE_27__**, %struct.TYPE_27__*** %18, align 8
  %349 = icmp ne %struct.TYPE_27__** %348, null
  br i1 %349, label %350, label %372

350:                                              ; preds = %338
  %351 = load %struct.TYPE_27__*, %struct.TYPE_27__** %12, align 8
  %352 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %351, i32 0, i32 0
  %353 = load i32, i32* %352, align 4
  %354 = icmp ne i32 %353, 0
  br i1 %354, label %359, label %355

355:                                              ; preds = %350
  %356 = load %struct.bfd_link_info*, %struct.bfd_link_info** %8, align 8
  %357 = load %struct.TYPE_27__*, %struct.TYPE_27__** %12, align 8
  %358 = call i32 @_bfd_elf_gc_mark(%struct.bfd_link_info* %356, %struct.TYPE_27__* %357, %struct.TYPE_27__* (%struct.TYPE_27__*, %struct.bfd_link_info*, %struct.TYPE_29__*, %struct.elf_link_hash_entry*, %struct.TYPE_28__*)* @ppc64_elf_gc_mark_hook)
  br label %359

359:                                              ; preds = %355, %350
  %360 = load %struct.TYPE_27__**, %struct.TYPE_27__*** %18, align 8
  %361 = load %struct.TYPE_28__*, %struct.TYPE_28__** %11, align 8
  %362 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %361, i32 0, i32 0
  %363 = load i32, i32* %362, align 4
  %364 = load %struct.TYPE_29__*, %struct.TYPE_29__** %9, align 8
  %365 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %364, i32 0, i32 0
  %366 = load i32, i32* %365, align 4
  %367 = add nsw i32 %363, %366
  %368 = sdiv i32 %367, 8
  %369 = sext i32 %368 to i64
  %370 = getelementptr inbounds %struct.TYPE_27__*, %struct.TYPE_27__** %360, i64 %369
  %371 = load %struct.TYPE_27__*, %struct.TYPE_27__** %370, align 8
  store %struct.TYPE_27__* %371, %struct.TYPE_27__** %12, align 8
  br label %372

372:                                              ; preds = %359, %338
  br label %373

373:                                              ; preds = %372, %337
  %374 = load %struct.TYPE_27__*, %struct.TYPE_27__** %12, align 8
  store %struct.TYPE_27__* %374, %struct.TYPE_27__** %6, align 8
  br label %375

375:                                              ; preds = %373, %161
  %376 = load %struct.TYPE_27__*, %struct.TYPE_27__** %6, align 8
  ret %struct.TYPE_27__* %376
}

declare dso_local %struct.ppc_link_hash_table* @ppc_hash_table(%struct.bfd_link_info*) #1

declare dso_local i64 @elf_link_hash_lookup(i32*, i32, i32, i32, i32) #1

declare dso_local %struct.TYPE_27__** @get_opd_info(%struct.TYPE_27__*) #1

declare dso_local i64 @opd_entry_value(%struct.TYPE_27__*, i32, %struct.TYPE_27__**, i32*) #1

declare dso_local i32 @_bfd_elf_gc_mark(%struct.bfd_link_info*, %struct.TYPE_27__*, %struct.TYPE_27__* (%struct.TYPE_27__*, %struct.bfd_link_info*, %struct.TYPE_29__*, %struct.elf_link_hash_entry*, %struct.TYPE_28__*)*) #1

declare dso_local i32 @ELF64_R_TYPE(i32) #1

declare dso_local %struct.TYPE_27__* @bfd_section_from_elf_index(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/bfd/extr_elfxx-sparc.c__bfd_sparc_elf_gc_sweep_hook.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/bfd/extr_elfxx-sparc.c__bfd_sparc_elf_gc_sweep_hook.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bfd_link_info = type { i32 }
%struct.TYPE_26__ = type { i32 }
%struct.TYPE_16__ = type { i32 }
%struct._bfd_sparc_elf_link_hash_table = type { %struct.TYPE_21__ }
%struct.TYPE_21__ = type { i32 }
%struct.TYPE_27__ = type { i64 }
%struct.elf_link_hash_entry = type { %struct.TYPE_25__, %struct.TYPE_24__, %struct.TYPE_22__ }
%struct.TYPE_25__ = type { i32 }
%struct.TYPE_24__ = type { i64, %struct.TYPE_23__, %struct.TYPE_20__ }
%struct.TYPE_23__ = type { i32 }
%struct.TYPE_20__ = type { %struct.TYPE_19__ }
%struct.TYPE_19__ = type { i64 }
%struct.TYPE_22__ = type { i32 }
%struct._bfd_sparc_elf_link_hash_entry = type { %struct._bfd_sparc_elf_dyn_relocs* }
%struct._bfd_sparc_elf_dyn_relocs = type { %struct._bfd_sparc_elf_dyn_relocs*, %struct.TYPE_26__* }
%struct.TYPE_18__ = type { i32* }
%struct.TYPE_17__ = type { %struct.TYPE_27__ }

@bfd_link_hash_indirect = common dso_local global i64 0, align 8
@bfd_link_hash_warning = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [22 x i8] c"_GLOBAL_OFFSET_TABLE_\00", align 1
@TRUE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @_bfd_sparc_elf_gc_sweep_hook(i32* %0, %struct.bfd_link_info* %1, %struct.TYPE_26__* %2, %struct.TYPE_16__* %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca %struct.bfd_link_info*, align 8
  %7 = alloca %struct.TYPE_26__*, align 8
  %8 = alloca %struct.TYPE_16__*, align 8
  %9 = alloca %struct._bfd_sparc_elf_link_hash_table*, align 8
  %10 = alloca %struct.TYPE_27__*, align 8
  %11 = alloca %struct.elf_link_hash_entry**, align 8
  %12 = alloca i32*, align 8
  %13 = alloca %struct.TYPE_16__*, align 8
  %14 = alloca %struct.TYPE_16__*, align 8
  %15 = alloca i64, align 8
  %16 = alloca i32, align 4
  %17 = alloca %struct.elf_link_hash_entry*, align 8
  %18 = alloca %struct._bfd_sparc_elf_link_hash_entry*, align 8
  %19 = alloca %struct._bfd_sparc_elf_dyn_relocs**, align 8
  %20 = alloca %struct._bfd_sparc_elf_dyn_relocs*, align 8
  store i32* %0, i32** %5, align 8
  store %struct.bfd_link_info* %1, %struct.bfd_link_info** %6, align 8
  store %struct.TYPE_26__* %2, %struct.TYPE_26__** %7, align 8
  store %struct.TYPE_16__* %3, %struct.TYPE_16__** %8, align 8
  %21 = load %struct.TYPE_26__*, %struct.TYPE_26__** %7, align 8
  %22 = call %struct.TYPE_18__* @elf_section_data(%struct.TYPE_26__* %21)
  %23 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %22, i32 0, i32 0
  store i32* null, i32** %23, align 8
  %24 = load %struct.bfd_link_info*, %struct.bfd_link_info** %6, align 8
  %25 = call %struct._bfd_sparc_elf_link_hash_table* @_bfd_sparc_elf_hash_table(%struct.bfd_link_info* %24)
  store %struct._bfd_sparc_elf_link_hash_table* %25, %struct._bfd_sparc_elf_link_hash_table** %9, align 8
  %26 = load i32*, i32** %5, align 8
  %27 = call %struct.TYPE_17__* @elf_tdata(i32* %26)
  %28 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %27, i32 0, i32 0
  store %struct.TYPE_27__* %28, %struct.TYPE_27__** %10, align 8
  %29 = load i32*, i32** %5, align 8
  %30 = call %struct.elf_link_hash_entry** @elf_sym_hashes(i32* %29)
  store %struct.elf_link_hash_entry** %30, %struct.elf_link_hash_entry*** %11, align 8
  %31 = load i32*, i32** %5, align 8
  %32 = call i32* @elf_local_got_refcounts(i32* %31)
  store i32* %32, i32** %12, align 8
  %33 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %34 = load %struct.TYPE_26__*, %struct.TYPE_26__** %7, align 8
  %35 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %33, i64 %37
  store %struct.TYPE_16__* %38, %struct.TYPE_16__** %14, align 8
  %39 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  store %struct.TYPE_16__* %39, %struct.TYPE_16__** %13, align 8
  br label %40

40:                                               ; preds = %210, %4
  %41 = load %struct.TYPE_16__*, %struct.TYPE_16__** %13, align 8
  %42 = load %struct.TYPE_16__*, %struct.TYPE_16__** %14, align 8
  %43 = icmp ult %struct.TYPE_16__* %41, %42
  br i1 %43, label %44, label %213

44:                                               ; preds = %40
  store %struct.elf_link_hash_entry* null, %struct.elf_link_hash_entry** %17, align 8
  %45 = load %struct._bfd_sparc_elf_link_hash_table*, %struct._bfd_sparc_elf_link_hash_table** %9, align 8
  %46 = load %struct.TYPE_16__*, %struct.TYPE_16__** %13, align 8
  %47 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = call i64 @SPARC_ELF_R_SYMNDX(%struct._bfd_sparc_elf_link_hash_table* %45, i32 %48)
  store i64 %49, i64* %15, align 8
  %50 = load i64, i64* %15, align 8
  %51 = load %struct.TYPE_27__*, %struct.TYPE_27__** %10, align 8
  %52 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = icmp uge i64 %50, %53
  br i1 %54, label %55, label %113

55:                                               ; preds = %44
  %56 = load %struct.elf_link_hash_entry**, %struct.elf_link_hash_entry*** %11, align 8
  %57 = load i64, i64* %15, align 8
  %58 = load %struct.TYPE_27__*, %struct.TYPE_27__** %10, align 8
  %59 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %58, i32 0, i32 0
  %60 = load i64, i64* %59, align 8
  %61 = sub i64 %57, %60
  %62 = getelementptr inbounds %struct.elf_link_hash_entry*, %struct.elf_link_hash_entry** %56, i64 %61
  %63 = load %struct.elf_link_hash_entry*, %struct.elf_link_hash_entry** %62, align 8
  store %struct.elf_link_hash_entry* %63, %struct.elf_link_hash_entry** %17, align 8
  br label %64

64:                                               ; preds = %80, %55
  %65 = load %struct.elf_link_hash_entry*, %struct.elf_link_hash_entry** %17, align 8
  %66 = getelementptr inbounds %struct.elf_link_hash_entry, %struct.elf_link_hash_entry* %65, i32 0, i32 1
  %67 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %66, i32 0, i32 0
  %68 = load i64, i64* %67, align 8
  %69 = load i64, i64* @bfd_link_hash_indirect, align 8
  %70 = icmp eq i64 %68, %69
  br i1 %70, label %78, label %71

71:                                               ; preds = %64
  %72 = load %struct.elf_link_hash_entry*, %struct.elf_link_hash_entry** %17, align 8
  %73 = getelementptr inbounds %struct.elf_link_hash_entry, %struct.elf_link_hash_entry* %72, i32 0, i32 1
  %74 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %73, i32 0, i32 0
  %75 = load i64, i64* %74, align 8
  %76 = load i64, i64* @bfd_link_hash_warning, align 8
  %77 = icmp eq i64 %75, %76
  br label %78

78:                                               ; preds = %71, %64
  %79 = phi i1 [ true, %64 ], [ %77, %71 ]
  br i1 %79, label %80, label %88

80:                                               ; preds = %78
  %81 = load %struct.elf_link_hash_entry*, %struct.elf_link_hash_entry** %17, align 8
  %82 = getelementptr inbounds %struct.elf_link_hash_entry, %struct.elf_link_hash_entry* %81, i32 0, i32 1
  %83 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %82, i32 0, i32 2
  %84 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %83, i32 0, i32 0
  %85 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %84, i32 0, i32 0
  %86 = load i64, i64* %85, align 8
  %87 = inttoptr i64 %86 to %struct.elf_link_hash_entry*
  store %struct.elf_link_hash_entry* %87, %struct.elf_link_hash_entry** %17, align 8
  br label %64

88:                                               ; preds = %78
  %89 = load %struct.elf_link_hash_entry*, %struct.elf_link_hash_entry** %17, align 8
  %90 = bitcast %struct.elf_link_hash_entry* %89 to %struct._bfd_sparc_elf_link_hash_entry*
  store %struct._bfd_sparc_elf_link_hash_entry* %90, %struct._bfd_sparc_elf_link_hash_entry** %18, align 8
  %91 = load %struct._bfd_sparc_elf_link_hash_entry*, %struct._bfd_sparc_elf_link_hash_entry** %18, align 8
  %92 = getelementptr inbounds %struct._bfd_sparc_elf_link_hash_entry, %struct._bfd_sparc_elf_link_hash_entry* %91, i32 0, i32 0
  store %struct._bfd_sparc_elf_dyn_relocs** %92, %struct._bfd_sparc_elf_dyn_relocs*** %19, align 8
  br label %93

93:                                               ; preds = %109, %88
  %94 = load %struct._bfd_sparc_elf_dyn_relocs**, %struct._bfd_sparc_elf_dyn_relocs*** %19, align 8
  %95 = load %struct._bfd_sparc_elf_dyn_relocs*, %struct._bfd_sparc_elf_dyn_relocs** %94, align 8
  store %struct._bfd_sparc_elf_dyn_relocs* %95, %struct._bfd_sparc_elf_dyn_relocs** %20, align 8
  %96 = icmp ne %struct._bfd_sparc_elf_dyn_relocs* %95, null
  br i1 %96, label %97, label %112

97:                                               ; preds = %93
  %98 = load %struct._bfd_sparc_elf_dyn_relocs*, %struct._bfd_sparc_elf_dyn_relocs** %20, align 8
  %99 = getelementptr inbounds %struct._bfd_sparc_elf_dyn_relocs, %struct._bfd_sparc_elf_dyn_relocs* %98, i32 0, i32 1
  %100 = load %struct.TYPE_26__*, %struct.TYPE_26__** %99, align 8
  %101 = load %struct.TYPE_26__*, %struct.TYPE_26__** %7, align 8
  %102 = icmp eq %struct.TYPE_26__* %100, %101
  br i1 %102, label %103, label %108

103:                                              ; preds = %97
  %104 = load %struct._bfd_sparc_elf_dyn_relocs*, %struct._bfd_sparc_elf_dyn_relocs** %20, align 8
  %105 = getelementptr inbounds %struct._bfd_sparc_elf_dyn_relocs, %struct._bfd_sparc_elf_dyn_relocs* %104, i32 0, i32 0
  %106 = load %struct._bfd_sparc_elf_dyn_relocs*, %struct._bfd_sparc_elf_dyn_relocs** %105, align 8
  %107 = load %struct._bfd_sparc_elf_dyn_relocs**, %struct._bfd_sparc_elf_dyn_relocs*** %19, align 8
  store %struct._bfd_sparc_elf_dyn_relocs* %106, %struct._bfd_sparc_elf_dyn_relocs** %107, align 8
  br label %112

108:                                              ; preds = %97
  br label %109

109:                                              ; preds = %108
  %110 = load %struct._bfd_sparc_elf_dyn_relocs*, %struct._bfd_sparc_elf_dyn_relocs** %20, align 8
  %111 = getelementptr inbounds %struct._bfd_sparc_elf_dyn_relocs, %struct._bfd_sparc_elf_dyn_relocs* %110, i32 0, i32 0
  store %struct._bfd_sparc_elf_dyn_relocs** %111, %struct._bfd_sparc_elf_dyn_relocs*** %19, align 8
  br label %93

112:                                              ; preds = %103, %93
  br label %113

113:                                              ; preds = %112, %44
  %114 = load %struct.TYPE_16__*, %struct.TYPE_16__** %13, align 8
  %115 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %114, i32 0, i32 0
  %116 = load i32, i32* %115, align 4
  %117 = call i32 @SPARC_ELF_R_TYPE(i32 %116)
  store i32 %117, i32* %16, align 4
  %118 = load %struct.bfd_link_info*, %struct.bfd_link_info** %6, align 8
  %119 = load i32*, i32** %5, align 8
  %120 = load i32, i32* %16, align 4
  %121 = load %struct.elf_link_hash_entry*, %struct.elf_link_hash_entry** %17, align 8
  %122 = icmp ne %struct.elf_link_hash_entry* %121, null
  %123 = zext i1 %122 to i32
  %124 = call i32 @sparc_elf_tls_transition(%struct.bfd_link_info* %118, i32* %119, i32 %120, i32 %123)
  store i32 %124, i32* %16, align 4
  %125 = load i32, i32* %16, align 4
  switch i32 %125, label %208 [
    i32 137, label %126
    i32 136, label %126
    i32 141, label %141
    i32 140, label %141
    i32 139, label %141
    i32 138, label %141
    i32 161, label %141
    i32 160, label %141
    i32 159, label %141
    i32 147, label %171
    i32 146, label %171
    i32 145, label %171
    i32 144, label %171
    i32 143, label %171
    i32 162, label %184
    i32 165, label %184
    i32 164, label %184
    i32 163, label %184
    i32 129, label %184
    i32 130, label %184
    i32 131, label %184
    i32 132, label %184
    i32 166, label %184
    i32 173, label %184
    i32 171, label %184
    i32 156, label %184
    i32 172, label %184
    i32 174, label %184
    i32 151, label %184
    i32 135, label %184
    i32 134, label %184
    i32 142, label %184
    i32 176, label %184
    i32 175, label %184
    i32 168, label %184
    i32 148, label %184
    i32 157, label %184
    i32 154, label %184
    i32 152, label %184
    i32 167, label %184
    i32 170, label %184
    i32 169, label %184
    i32 155, label %184
    i32 150, label %184
    i32 158, label %184
    i32 149, label %184
    i32 153, label %184
    i32 133, label %184
    i32 128, label %191
  ]

126:                                              ; preds = %113, %113
  %127 = load %struct.bfd_link_info*, %struct.bfd_link_info** %6, align 8
  %128 = call %struct._bfd_sparc_elf_link_hash_table* @_bfd_sparc_elf_hash_table(%struct.bfd_link_info* %127)
  %129 = getelementptr inbounds %struct._bfd_sparc_elf_link_hash_table, %struct._bfd_sparc_elf_link_hash_table* %128, i32 0, i32 0
  %130 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %129, i32 0, i32 0
  %131 = load i32, i32* %130, align 4
  %132 = icmp sgt i32 %131, 0
  br i1 %132, label %133, label %140

133:                                              ; preds = %126
  %134 = load %struct.bfd_link_info*, %struct.bfd_link_info** %6, align 8
  %135 = call %struct._bfd_sparc_elf_link_hash_table* @_bfd_sparc_elf_hash_table(%struct.bfd_link_info* %134)
  %136 = getelementptr inbounds %struct._bfd_sparc_elf_link_hash_table, %struct._bfd_sparc_elf_link_hash_table* %135, i32 0, i32 0
  %137 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %136, i32 0, i32 0
  %138 = load i32, i32* %137, align 4
  %139 = sub nsw i32 %138, 1
  store i32 %139, i32* %137, align 4
  br label %140

140:                                              ; preds = %133, %126
  br label %209

141:                                              ; preds = %113, %113, %113, %113, %113, %113, %113
  %142 = load %struct.elf_link_hash_entry*, %struct.elf_link_hash_entry** %17, align 8
  %143 = icmp ne %struct.elf_link_hash_entry* %142, null
  br i1 %143, label %144, label %157

144:                                              ; preds = %141
  %145 = load %struct.elf_link_hash_entry*, %struct.elf_link_hash_entry** %17, align 8
  %146 = getelementptr inbounds %struct.elf_link_hash_entry, %struct.elf_link_hash_entry* %145, i32 0, i32 2
  %147 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %146, i32 0, i32 0
  %148 = load i32, i32* %147, align 8
  %149 = icmp sgt i32 %148, 0
  br i1 %149, label %150, label %156

150:                                              ; preds = %144
  %151 = load %struct.elf_link_hash_entry*, %struct.elf_link_hash_entry** %17, align 8
  %152 = getelementptr inbounds %struct.elf_link_hash_entry, %struct.elf_link_hash_entry* %151, i32 0, i32 2
  %153 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %152, i32 0, i32 0
  %154 = load i32, i32* %153, align 8
  %155 = add nsw i32 %154, -1
  store i32 %155, i32* %153, align 8
  br label %156

156:                                              ; preds = %150, %144
  br label %170

157:                                              ; preds = %141
  %158 = load i32*, i32** %12, align 8
  %159 = load i64, i64* %15, align 8
  %160 = getelementptr inbounds i32, i32* %158, i64 %159
  %161 = load i32, i32* %160, align 4
  %162 = icmp sgt i32 %161, 0
  br i1 %162, label %163, label %169

163:                                              ; preds = %157
  %164 = load i32*, i32** %12, align 8
  %165 = load i64, i64* %15, align 8
  %166 = getelementptr inbounds i32, i32* %164, i64 %165
  %167 = load i32, i32* %166, align 4
  %168 = add nsw i32 %167, -1
  store i32 %168, i32* %166, align 4
  br label %169

169:                                              ; preds = %163, %157
  br label %170

170:                                              ; preds = %169, %156
  br label %209

171:                                              ; preds = %113, %113, %113, %113, %113
  %172 = load %struct.elf_link_hash_entry*, %struct.elf_link_hash_entry** %17, align 8
  %173 = icmp ne %struct.elf_link_hash_entry* %172, null
  br i1 %173, label %174, label %183

174:                                              ; preds = %171
  %175 = load %struct.elf_link_hash_entry*, %struct.elf_link_hash_entry** %17, align 8
  %176 = getelementptr inbounds %struct.elf_link_hash_entry, %struct.elf_link_hash_entry* %175, i32 0, i32 1
  %177 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %176, i32 0, i32 1
  %178 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %177, i32 0, i32 0
  %179 = load i32, i32* %178, align 8
  %180 = call i32 @strcmp(i32 %179, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0))
  %181 = icmp eq i32 %180, 0
  br i1 %181, label %182, label %183

182:                                              ; preds = %174
  br label %209

183:                                              ; preds = %174, %171
  br label %184

184:                                              ; preds = %113, %113, %113, %113, %113, %113, %113, %113, %113, %113, %113, %113, %113, %113, %113, %113, %113, %113, %113, %113, %113, %113, %113, %113, %113, %113, %113, %113, %113, %113, %113, %113, %113, %113, %183
  %185 = load %struct.bfd_link_info*, %struct.bfd_link_info** %6, align 8
  %186 = getelementptr inbounds %struct.bfd_link_info, %struct.bfd_link_info* %185, i32 0, i32 0
  %187 = load i32, i32* %186, align 4
  %188 = icmp ne i32 %187, 0
  br i1 %188, label %189, label %190

189:                                              ; preds = %184
  br label %209

190:                                              ; preds = %184
  br label %191

191:                                              ; preds = %113, %190
  %192 = load %struct.elf_link_hash_entry*, %struct.elf_link_hash_entry** %17, align 8
  %193 = icmp ne %struct.elf_link_hash_entry* %192, null
  br i1 %193, label %194, label %207

194:                                              ; preds = %191
  %195 = load %struct.elf_link_hash_entry*, %struct.elf_link_hash_entry** %17, align 8
  %196 = getelementptr inbounds %struct.elf_link_hash_entry, %struct.elf_link_hash_entry* %195, i32 0, i32 0
  %197 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %196, i32 0, i32 0
  %198 = load i32, i32* %197, align 8
  %199 = icmp sgt i32 %198, 0
  br i1 %199, label %200, label %206

200:                                              ; preds = %194
  %201 = load %struct.elf_link_hash_entry*, %struct.elf_link_hash_entry** %17, align 8
  %202 = getelementptr inbounds %struct.elf_link_hash_entry, %struct.elf_link_hash_entry* %201, i32 0, i32 0
  %203 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %202, i32 0, i32 0
  %204 = load i32, i32* %203, align 8
  %205 = add nsw i32 %204, -1
  store i32 %205, i32* %203, align 8
  br label %206

206:                                              ; preds = %200, %194
  br label %207

207:                                              ; preds = %206, %191
  br label %209

208:                                              ; preds = %113
  br label %209

209:                                              ; preds = %208, %207, %189, %182, %170, %140
  br label %210

210:                                              ; preds = %209
  %211 = load %struct.TYPE_16__*, %struct.TYPE_16__** %13, align 8
  %212 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %211, i32 1
  store %struct.TYPE_16__* %212, %struct.TYPE_16__** %13, align 8
  br label %40

213:                                              ; preds = %40
  %214 = load i32, i32* @TRUE, align 4
  ret i32 %214
}

declare dso_local %struct.TYPE_18__* @elf_section_data(%struct.TYPE_26__*) #1

declare dso_local %struct._bfd_sparc_elf_link_hash_table* @_bfd_sparc_elf_hash_table(%struct.bfd_link_info*) #1

declare dso_local %struct.TYPE_17__* @elf_tdata(i32*) #1

declare dso_local %struct.elf_link_hash_entry** @elf_sym_hashes(i32*) #1

declare dso_local i32* @elf_local_got_refcounts(i32*) #1

declare dso_local i64 @SPARC_ELF_R_SYMNDX(%struct._bfd_sparc_elf_link_hash_table*, i32) #1

declare dso_local i32 @SPARC_ELF_R_TYPE(i32) #1

declare dso_local i32 @sparc_elf_tls_transition(%struct.bfd_link_info*, i32*, i32, i32) #1

declare dso_local i32 @strcmp(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

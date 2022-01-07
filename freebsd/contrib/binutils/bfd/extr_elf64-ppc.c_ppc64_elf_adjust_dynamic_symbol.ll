; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/bfd/extr_elf64-ppc.c_ppc64_elf_adjust_dynamic_symbol.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/bfd/extr_elf64-ppc.c_ppc64_elf_adjust_dynamic_symbol.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bfd_link_info = type { i64 }
%struct.elf_link_hash_entry = type { i64, i64, i32, %struct.TYPE_20__, %struct.TYPE_30__, i64, i64, i32, i32, %struct.TYPE_28__, i64, i32 }
%struct.TYPE_20__ = type { i64, %struct.TYPE_19__, %struct.TYPE_31__ }
%struct.TYPE_19__ = type { %struct.TYPE_18__ }
%struct.TYPE_18__ = type { %struct.TYPE_17__*, i32 }
%struct.TYPE_17__ = type { i32 }
%struct.TYPE_31__ = type { i32 }
%struct.TYPE_30__ = type { %struct.plt_entry* }
%struct.plt_entry = type { %struct.TYPE_23__, %struct.plt_entry* }
%struct.TYPE_23__ = type { i64 }
%struct.TYPE_28__ = type { %struct.TYPE_27__* }
%struct.TYPE_27__ = type { i64, %struct.TYPE_26__ }
%struct.TYPE_26__ = type { i64, %struct.TYPE_25__ }
%struct.TYPE_25__ = type { %struct.TYPE_24__ }
%struct.TYPE_24__ = type { i32, %struct.TYPE_17__* }
%struct.ppc_link_hash_table = type { %struct.TYPE_22__*, %struct.TYPE_21__* }
%struct.TYPE_22__ = type { i32 }
%struct.TYPE_21__ = type { i32 }
%struct.ppc_link_hash_entry = type { %struct.ppc_dyn_relocs* }
%struct.ppc_dyn_relocs = type { %struct.TYPE_29__*, %struct.ppc_dyn_relocs* }
%struct.TYPE_29__ = type { %struct.TYPE_22__* }

@STT_FUNC = common dso_local global i64 0, align 8
@STV_DEFAULT = common dso_local global i64 0, align 8
@bfd_link_hash_undefweak = common dso_local global i64 0, align 8
@bfd_link_hash_defined = common dso_local global i64 0, align 8
@bfd_link_hash_defweak = common dso_local global i64 0, align 8
@ELIMINATE_COPY_RELOCS = common dso_local global i64 0, align 8
@TRUE = common dso_local global i32 0, align 4
@SEC_READONLY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [94 x i8] c"copy reloc against `%s' requires lazy plt linking; avoid setting LD_BIND_NOW=1 or upgrade gcc\00", align 1
@.str.1 = private unnamed_addr constant [35 x i8] c"dynamic variable `%s' is zero size\00", align 1
@SEC_ALLOC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bfd_link_info*, %struct.elf_link_hash_entry*)* @ppc64_elf_adjust_dynamic_symbol to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ppc64_elf_adjust_dynamic_symbol(%struct.bfd_link_info* %0, %struct.elf_link_hash_entry* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.bfd_link_info*, align 8
  %5 = alloca %struct.elf_link_hash_entry*, align 8
  %6 = alloca %struct.ppc_link_hash_table*, align 8
  %7 = alloca %struct.TYPE_22__*, align 8
  %8 = alloca %struct.plt_entry*, align 8
  %9 = alloca %struct.ppc_link_hash_entry*, align 8
  %10 = alloca %struct.ppc_dyn_relocs*, align 8
  store %struct.bfd_link_info* %0, %struct.bfd_link_info** %4, align 8
  store %struct.elf_link_hash_entry* %1, %struct.elf_link_hash_entry** %5, align 8
  %11 = load %struct.bfd_link_info*, %struct.bfd_link_info** %4, align 8
  %12 = call %struct.ppc_link_hash_table* @ppc_hash_table(%struct.bfd_link_info* %11)
  store %struct.ppc_link_hash_table* %12, %struct.ppc_link_hash_table** %6, align 8
  %13 = load %struct.elf_link_hash_entry*, %struct.elf_link_hash_entry** %5, align 8
  %14 = getelementptr inbounds %struct.elf_link_hash_entry, %struct.elf_link_hash_entry* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = load i64, i64* @STT_FUNC, align 8
  %17 = icmp eq i64 %15, %16
  br i1 %17, label %23, label %18

18:                                               ; preds = %2
  %19 = load %struct.elf_link_hash_entry*, %struct.elf_link_hash_entry** %5, align 8
  %20 = getelementptr inbounds %struct.elf_link_hash_entry, %struct.elf_link_hash_entry* %19, i32 0, i32 10
  %21 = load i64, i64* %20, align 8
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %72

23:                                               ; preds = %18, %2
  %24 = load %struct.elf_link_hash_entry*, %struct.elf_link_hash_entry** %5, align 8
  %25 = getelementptr inbounds %struct.elf_link_hash_entry, %struct.elf_link_hash_entry* %24, i32 0, i32 4
  %26 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %25, i32 0, i32 0
  %27 = load %struct.plt_entry*, %struct.plt_entry** %26, align 8
  store %struct.plt_entry* %27, %struct.plt_entry** %8, align 8
  br label %28

28:                                               ; preds = %39, %23
  %29 = load %struct.plt_entry*, %struct.plt_entry** %8, align 8
  %30 = icmp ne %struct.plt_entry* %29, null
  br i1 %30, label %31, label %43

31:                                               ; preds = %28
  %32 = load %struct.plt_entry*, %struct.plt_entry** %8, align 8
  %33 = getelementptr inbounds %struct.plt_entry, %struct.plt_entry* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = icmp sgt i64 %35, 0
  br i1 %36, label %37, label %38

37:                                               ; preds = %31
  br label %43

38:                                               ; preds = %31
  br label %39

39:                                               ; preds = %38
  %40 = load %struct.plt_entry*, %struct.plt_entry** %8, align 8
  %41 = getelementptr inbounds %struct.plt_entry, %struct.plt_entry* %40, i32 0, i32 1
  %42 = load %struct.plt_entry*, %struct.plt_entry** %41, align 8
  store %struct.plt_entry* %42, %struct.plt_entry** %8, align 8
  br label %28

43:                                               ; preds = %37, %28
  %44 = load %struct.plt_entry*, %struct.plt_entry** %8, align 8
  %45 = icmp eq %struct.plt_entry* %44, null
  br i1 %45, label %65, label %46

46:                                               ; preds = %43
  %47 = load %struct.bfd_link_info*, %struct.bfd_link_info** %4, align 8
  %48 = load %struct.elf_link_hash_entry*, %struct.elf_link_hash_entry** %5, align 8
  %49 = call i64 @SYMBOL_CALLS_LOCAL(%struct.bfd_link_info* %47, %struct.elf_link_hash_entry* %48)
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %65, label %51

51:                                               ; preds = %46
  %52 = load %struct.elf_link_hash_entry*, %struct.elf_link_hash_entry** %5, align 8
  %53 = getelementptr inbounds %struct.elf_link_hash_entry, %struct.elf_link_hash_entry* %52, i32 0, i32 11
  %54 = load i32, i32* %53, align 8
  %55 = call i64 @ELF_ST_VISIBILITY(i32 %54)
  %56 = load i64, i64* @STV_DEFAULT, align 8
  %57 = icmp ne i64 %55, %56
  br i1 %57, label %58, label %71

58:                                               ; preds = %51
  %59 = load %struct.elf_link_hash_entry*, %struct.elf_link_hash_entry** %5, align 8
  %60 = getelementptr inbounds %struct.elf_link_hash_entry, %struct.elf_link_hash_entry* %59, i32 0, i32 3
  %61 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %60, i32 0, i32 0
  %62 = load i64, i64* %61, align 8
  %63 = load i64, i64* @bfd_link_hash_undefweak, align 8
  %64 = icmp eq i64 %62, %63
  br i1 %64, label %65, label %71

65:                                               ; preds = %58, %46, %43
  %66 = load %struct.elf_link_hash_entry*, %struct.elf_link_hash_entry** %5, align 8
  %67 = getelementptr inbounds %struct.elf_link_hash_entry, %struct.elf_link_hash_entry* %66, i32 0, i32 4
  %68 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %67, i32 0, i32 0
  store %struct.plt_entry* null, %struct.plt_entry** %68, align 8
  %69 = load %struct.elf_link_hash_entry*, %struct.elf_link_hash_entry** %5, align 8
  %70 = getelementptr inbounds %struct.elf_link_hash_entry, %struct.elf_link_hash_entry* %69, i32 0, i32 10
  store i64 0, i64* %70, align 8
  br label %71

71:                                               ; preds = %65, %58, %51
  br label %76

72:                                               ; preds = %18
  %73 = load %struct.elf_link_hash_entry*, %struct.elf_link_hash_entry** %5, align 8
  %74 = getelementptr inbounds %struct.elf_link_hash_entry, %struct.elf_link_hash_entry* %73, i32 0, i32 4
  %75 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %74, i32 0, i32 0
  store %struct.plt_entry* null, %struct.plt_entry** %75, align 8
  br label %76

76:                                               ; preds = %72, %71
  %77 = load %struct.elf_link_hash_entry*, %struct.elf_link_hash_entry** %5, align 8
  %78 = getelementptr inbounds %struct.elf_link_hash_entry, %struct.elf_link_hash_entry* %77, i32 0, i32 9
  %79 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %78, i32 0, i32 0
  %80 = load %struct.TYPE_27__*, %struct.TYPE_27__** %79, align 8
  %81 = icmp ne %struct.TYPE_27__* %80, null
  br i1 %81, label %82, label %147

82:                                               ; preds = %76
  %83 = load %struct.elf_link_hash_entry*, %struct.elf_link_hash_entry** %5, align 8
  %84 = getelementptr inbounds %struct.elf_link_hash_entry, %struct.elf_link_hash_entry* %83, i32 0, i32 9
  %85 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %84, i32 0, i32 0
  %86 = load %struct.TYPE_27__*, %struct.TYPE_27__** %85, align 8
  %87 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %86, i32 0, i32 1
  %88 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %87, i32 0, i32 0
  %89 = load i64, i64* %88, align 8
  %90 = load i64, i64* @bfd_link_hash_defined, align 8
  %91 = icmp eq i64 %89, %90
  br i1 %91, label %102, label %92

92:                                               ; preds = %82
  %93 = load %struct.elf_link_hash_entry*, %struct.elf_link_hash_entry** %5, align 8
  %94 = getelementptr inbounds %struct.elf_link_hash_entry, %struct.elf_link_hash_entry* %93, i32 0, i32 9
  %95 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %94, i32 0, i32 0
  %96 = load %struct.TYPE_27__*, %struct.TYPE_27__** %95, align 8
  %97 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %96, i32 0, i32 1
  %98 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %97, i32 0, i32 0
  %99 = load i64, i64* %98, align 8
  %100 = load i64, i64* @bfd_link_hash_defweak, align 8
  %101 = icmp eq i64 %99, %100
  br label %102

102:                                              ; preds = %92, %82
  %103 = phi i1 [ true, %82 ], [ %101, %92 ]
  %104 = zext i1 %103 to i32
  %105 = call i32 @BFD_ASSERT(i32 %104)
  %106 = load %struct.elf_link_hash_entry*, %struct.elf_link_hash_entry** %5, align 8
  %107 = getelementptr inbounds %struct.elf_link_hash_entry, %struct.elf_link_hash_entry* %106, i32 0, i32 9
  %108 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %107, i32 0, i32 0
  %109 = load %struct.TYPE_27__*, %struct.TYPE_27__** %108, align 8
  %110 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %109, i32 0, i32 1
  %111 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %110, i32 0, i32 1
  %112 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %111, i32 0, i32 0
  %113 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %112, i32 0, i32 1
  %114 = load %struct.TYPE_17__*, %struct.TYPE_17__** %113, align 8
  %115 = load %struct.elf_link_hash_entry*, %struct.elf_link_hash_entry** %5, align 8
  %116 = getelementptr inbounds %struct.elf_link_hash_entry, %struct.elf_link_hash_entry* %115, i32 0, i32 3
  %117 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %116, i32 0, i32 1
  %118 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %117, i32 0, i32 0
  %119 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %118, i32 0, i32 0
  store %struct.TYPE_17__* %114, %struct.TYPE_17__** %119, align 8
  %120 = load %struct.elf_link_hash_entry*, %struct.elf_link_hash_entry** %5, align 8
  %121 = getelementptr inbounds %struct.elf_link_hash_entry, %struct.elf_link_hash_entry* %120, i32 0, i32 9
  %122 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %121, i32 0, i32 0
  %123 = load %struct.TYPE_27__*, %struct.TYPE_27__** %122, align 8
  %124 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %123, i32 0, i32 1
  %125 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %124, i32 0, i32 1
  %126 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %125, i32 0, i32 0
  %127 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %126, i32 0, i32 0
  %128 = load i32, i32* %127, align 8
  %129 = load %struct.elf_link_hash_entry*, %struct.elf_link_hash_entry** %5, align 8
  %130 = getelementptr inbounds %struct.elf_link_hash_entry, %struct.elf_link_hash_entry* %129, i32 0, i32 3
  %131 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %130, i32 0, i32 1
  %132 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %131, i32 0, i32 0
  %133 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %132, i32 0, i32 1
  store i32 %128, i32* %133, align 8
  %134 = load i64, i64* @ELIMINATE_COPY_RELOCS, align 8
  %135 = icmp ne i64 %134, 0
  br i1 %135, label %136, label %145

136:                                              ; preds = %102
  %137 = load %struct.elf_link_hash_entry*, %struct.elf_link_hash_entry** %5, align 8
  %138 = getelementptr inbounds %struct.elf_link_hash_entry, %struct.elf_link_hash_entry* %137, i32 0, i32 9
  %139 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %138, i32 0, i32 0
  %140 = load %struct.TYPE_27__*, %struct.TYPE_27__** %139, align 8
  %141 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %140, i32 0, i32 0
  %142 = load i64, i64* %141, align 8
  %143 = load %struct.elf_link_hash_entry*, %struct.elf_link_hash_entry** %5, align 8
  %144 = getelementptr inbounds %struct.elf_link_hash_entry, %struct.elf_link_hash_entry* %143, i32 0, i32 5
  store i64 %142, i64* %144, align 8
  br label %145

145:                                              ; preds = %136, %102
  %146 = load i32, i32* @TRUE, align 4
  store i32 %146, i32* %3, align 4
  br label %277

147:                                              ; preds = %76
  %148 = load %struct.bfd_link_info*, %struct.bfd_link_info** %4, align 8
  %149 = getelementptr inbounds %struct.bfd_link_info, %struct.bfd_link_info* %148, i32 0, i32 0
  %150 = load i64, i64* %149, align 8
  %151 = icmp ne i64 %150, 0
  br i1 %151, label %152, label %154

152:                                              ; preds = %147
  %153 = load i32, i32* @TRUE, align 4
  store i32 %153, i32* %3, align 4
  br label %277

154:                                              ; preds = %147
  %155 = load %struct.elf_link_hash_entry*, %struct.elf_link_hash_entry** %5, align 8
  %156 = getelementptr inbounds %struct.elf_link_hash_entry, %struct.elf_link_hash_entry* %155, i32 0, i32 5
  %157 = load i64, i64* %156, align 8
  %158 = icmp ne i64 %157, 0
  br i1 %158, label %161, label %159

159:                                              ; preds = %154
  %160 = load i32, i32* @TRUE, align 4
  store i32 %160, i32* %3, align 4
  br label %277

161:                                              ; preds = %154
  %162 = load %struct.elf_link_hash_entry*, %struct.elf_link_hash_entry** %5, align 8
  %163 = getelementptr inbounds %struct.elf_link_hash_entry, %struct.elf_link_hash_entry* %162, i32 0, i32 8
  %164 = load i32, i32* %163, align 4
  %165 = icmp ne i32 %164, 0
  br i1 %165, label %166, label %176

166:                                              ; preds = %161
  %167 = load %struct.elf_link_hash_entry*, %struct.elf_link_hash_entry** %5, align 8
  %168 = getelementptr inbounds %struct.elf_link_hash_entry, %struct.elf_link_hash_entry* %167, i32 0, i32 7
  %169 = load i32, i32* %168, align 8
  %170 = icmp ne i32 %169, 0
  br i1 %170, label %171, label %176

171:                                              ; preds = %166
  %172 = load %struct.elf_link_hash_entry*, %struct.elf_link_hash_entry** %5, align 8
  %173 = getelementptr inbounds %struct.elf_link_hash_entry, %struct.elf_link_hash_entry* %172, i32 0, i32 6
  %174 = load i64, i64* %173, align 8
  %175 = icmp ne i64 %174, 0
  br i1 %175, label %176, label %178

176:                                              ; preds = %171, %166, %161
  %177 = load i32, i32* @TRUE, align 4
  store i32 %177, i32* %3, align 4
  br label %277

178:                                              ; preds = %171
  %179 = load i64, i64* @ELIMINATE_COPY_RELOCS, align 8
  %180 = icmp ne i64 %179, 0
  br i1 %180, label %181, label %219

181:                                              ; preds = %178
  %182 = load %struct.elf_link_hash_entry*, %struct.elf_link_hash_entry** %5, align 8
  %183 = bitcast %struct.elf_link_hash_entry* %182 to %struct.ppc_link_hash_entry*
  store %struct.ppc_link_hash_entry* %183, %struct.ppc_link_hash_entry** %9, align 8
  %184 = load %struct.ppc_link_hash_entry*, %struct.ppc_link_hash_entry** %9, align 8
  %185 = getelementptr inbounds %struct.ppc_link_hash_entry, %struct.ppc_link_hash_entry* %184, i32 0, i32 0
  %186 = load %struct.ppc_dyn_relocs*, %struct.ppc_dyn_relocs** %185, align 8
  store %struct.ppc_dyn_relocs* %186, %struct.ppc_dyn_relocs** %10, align 8
  br label %187

187:                                              ; preds = %207, %181
  %188 = load %struct.ppc_dyn_relocs*, %struct.ppc_dyn_relocs** %10, align 8
  %189 = icmp ne %struct.ppc_dyn_relocs* %188, null
  br i1 %189, label %190, label %211

190:                                              ; preds = %187
  %191 = load %struct.ppc_dyn_relocs*, %struct.ppc_dyn_relocs** %10, align 8
  %192 = getelementptr inbounds %struct.ppc_dyn_relocs, %struct.ppc_dyn_relocs* %191, i32 0, i32 0
  %193 = load %struct.TYPE_29__*, %struct.TYPE_29__** %192, align 8
  %194 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %193, i32 0, i32 0
  %195 = load %struct.TYPE_22__*, %struct.TYPE_22__** %194, align 8
  store %struct.TYPE_22__* %195, %struct.TYPE_22__** %7, align 8
  %196 = load %struct.TYPE_22__*, %struct.TYPE_22__** %7, align 8
  %197 = icmp ne %struct.TYPE_22__* %196, null
  br i1 %197, label %198, label %206

198:                                              ; preds = %190
  %199 = load %struct.TYPE_22__*, %struct.TYPE_22__** %7, align 8
  %200 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %199, i32 0, i32 0
  %201 = load i32, i32* %200, align 4
  %202 = load i32, i32* @SEC_READONLY, align 4
  %203 = and i32 %201, %202
  %204 = icmp ne i32 %203, 0
  br i1 %204, label %205, label %206

205:                                              ; preds = %198
  br label %211

206:                                              ; preds = %198, %190
  br label %207

207:                                              ; preds = %206
  %208 = load %struct.ppc_dyn_relocs*, %struct.ppc_dyn_relocs** %10, align 8
  %209 = getelementptr inbounds %struct.ppc_dyn_relocs, %struct.ppc_dyn_relocs* %208, i32 0, i32 1
  %210 = load %struct.ppc_dyn_relocs*, %struct.ppc_dyn_relocs** %209, align 8
  store %struct.ppc_dyn_relocs* %210, %struct.ppc_dyn_relocs** %10, align 8
  br label %187

211:                                              ; preds = %205, %187
  %212 = load %struct.ppc_dyn_relocs*, %struct.ppc_dyn_relocs** %10, align 8
  %213 = icmp eq %struct.ppc_dyn_relocs* %212, null
  br i1 %213, label %214, label %218

214:                                              ; preds = %211
  %215 = load %struct.elf_link_hash_entry*, %struct.elf_link_hash_entry** %5, align 8
  %216 = getelementptr inbounds %struct.elf_link_hash_entry, %struct.elf_link_hash_entry* %215, i32 0, i32 5
  store i64 0, i64* %216, align 8
  %217 = load i32, i32* @TRUE, align 4
  store i32 %217, i32* %3, align 4
  br label %277

218:                                              ; preds = %211
  br label %219

219:                                              ; preds = %218, %178
  %220 = load %struct.elf_link_hash_entry*, %struct.elf_link_hash_entry** %5, align 8
  %221 = getelementptr inbounds %struct.elf_link_hash_entry, %struct.elf_link_hash_entry* %220, i32 0, i32 4
  %222 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %221, i32 0, i32 0
  %223 = load %struct.plt_entry*, %struct.plt_entry** %222, align 8
  %224 = icmp ne %struct.plt_entry* %223, null
  br i1 %224, label %225, label %233

225:                                              ; preds = %219
  %226 = call i32 @_(i8* getelementptr inbounds ([94 x i8], [94 x i8]* @.str, i64 0, i64 0))
  %227 = load %struct.elf_link_hash_entry*, %struct.elf_link_hash_entry** %5, align 8
  %228 = getelementptr inbounds %struct.elf_link_hash_entry, %struct.elf_link_hash_entry* %227, i32 0, i32 3
  %229 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %228, i32 0, i32 2
  %230 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %229, i32 0, i32 0
  %231 = load i32, i32* %230, align 8
  %232 = call i32 @_bfd_error_handler(i32 %226, i32 %231)
  br label %233

233:                                              ; preds = %225, %219
  %234 = load %struct.elf_link_hash_entry*, %struct.elf_link_hash_entry** %5, align 8
  %235 = getelementptr inbounds %struct.elf_link_hash_entry, %struct.elf_link_hash_entry* %234, i32 0, i32 1
  %236 = load i64, i64* %235, align 8
  %237 = icmp eq i64 %236, 0
  br i1 %237, label %238, label %247

238:                                              ; preds = %233
  %239 = call i32 @_(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0))
  %240 = load %struct.elf_link_hash_entry*, %struct.elf_link_hash_entry** %5, align 8
  %241 = getelementptr inbounds %struct.elf_link_hash_entry, %struct.elf_link_hash_entry* %240, i32 0, i32 3
  %242 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %241, i32 0, i32 2
  %243 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %242, i32 0, i32 0
  %244 = load i32, i32* %243, align 8
  %245 = call i32 @_bfd_error_handler(i32 %239, i32 %244)
  %246 = load i32, i32* @TRUE, align 4
  store i32 %246, i32* %3, align 4
  br label %277

247:                                              ; preds = %233
  %248 = load %struct.elf_link_hash_entry*, %struct.elf_link_hash_entry** %5, align 8
  %249 = getelementptr inbounds %struct.elf_link_hash_entry, %struct.elf_link_hash_entry* %248, i32 0, i32 3
  %250 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %249, i32 0, i32 1
  %251 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %250, i32 0, i32 0
  %252 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %251, i32 0, i32 0
  %253 = load %struct.TYPE_17__*, %struct.TYPE_17__** %252, align 8
  %254 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %253, i32 0, i32 0
  %255 = load i32, i32* %254, align 4
  %256 = load i32, i32* @SEC_ALLOC, align 4
  %257 = and i32 %255, %256
  %258 = icmp ne i32 %257, 0
  br i1 %258, label %259, label %270

259:                                              ; preds = %247
  %260 = load %struct.ppc_link_hash_table*, %struct.ppc_link_hash_table** %6, align 8
  %261 = getelementptr inbounds %struct.ppc_link_hash_table, %struct.ppc_link_hash_table* %260, i32 0, i32 1
  %262 = load %struct.TYPE_21__*, %struct.TYPE_21__** %261, align 8
  %263 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %262, i32 0, i32 0
  %264 = load i32, i32* %263, align 4
  %265 = sext i32 %264 to i64
  %266 = add i64 %265, 4
  %267 = trunc i64 %266 to i32
  store i32 %267, i32* %263, align 4
  %268 = load %struct.elf_link_hash_entry*, %struct.elf_link_hash_entry** %5, align 8
  %269 = getelementptr inbounds %struct.elf_link_hash_entry, %struct.elf_link_hash_entry* %268, i32 0, i32 2
  store i32 1, i32* %269, align 8
  br label %270

270:                                              ; preds = %259, %247
  %271 = load %struct.ppc_link_hash_table*, %struct.ppc_link_hash_table** %6, align 8
  %272 = getelementptr inbounds %struct.ppc_link_hash_table, %struct.ppc_link_hash_table* %271, i32 0, i32 0
  %273 = load %struct.TYPE_22__*, %struct.TYPE_22__** %272, align 8
  store %struct.TYPE_22__* %273, %struct.TYPE_22__** %7, align 8
  %274 = load %struct.elf_link_hash_entry*, %struct.elf_link_hash_entry** %5, align 8
  %275 = load %struct.TYPE_22__*, %struct.TYPE_22__** %7, align 8
  %276 = call i32 @_bfd_elf_adjust_dynamic_copy(%struct.elf_link_hash_entry* %274, %struct.TYPE_22__* %275)
  store i32 %276, i32* %3, align 4
  br label %277

277:                                              ; preds = %270, %238, %214, %176, %159, %152, %145
  %278 = load i32, i32* %3, align 4
  ret i32 %278
}

declare dso_local %struct.ppc_link_hash_table* @ppc_hash_table(%struct.bfd_link_info*) #1

declare dso_local i64 @SYMBOL_CALLS_LOCAL(%struct.bfd_link_info*, %struct.elf_link_hash_entry*) #1

declare dso_local i64 @ELF_ST_VISIBILITY(i32) #1

declare dso_local i32 @BFD_ASSERT(i32) #1

declare dso_local i32 @_bfd_error_handler(i32, i32) #1

declare dso_local i32 @_(i8*) #1

declare dso_local i32 @_bfd_elf_adjust_dynamic_copy(%struct.elf_link_hash_entry*, %struct.TYPE_22__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

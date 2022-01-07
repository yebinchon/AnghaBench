; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/bfd/extr_elf32-ppc.c_allocate_dynrelocs.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/bfd/extr_elf32-ppc.c_allocate_dynrelocs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.elf_link_hash_entry = type { i32, i32, i32, i64, i32, i32, %struct.TYPE_16__, %struct.TYPE_28__, i64, %struct.TYPE_18__ }
%struct.TYPE_16__ = type { i64, %struct.TYPE_30__ }
%struct.TYPE_30__ = type { %struct.TYPE_22__, %struct.TYPE_29__ }
%struct.TYPE_22__ = type { i64, %struct.TYPE_20__* }
%struct.TYPE_20__ = type { i64 }
%struct.TYPE_29__ = type { i64 }
%struct.TYPE_28__ = type { i64, i64 }
%struct.TYPE_18__ = type { %struct.plt_entry* }
%struct.plt_entry = type { %struct.TYPE_19__, i64, %struct.plt_entry* }
%struct.TYPE_19__ = type { i64, i64 }
%struct.bfd_link_info = type { i64, i64 }
%struct.ppc_elf_link_hash_entry = type { i32, %struct.ppc_elf_dyn_relocs*, %struct.elf_link_hash_entry }
%struct.ppc_elf_dyn_relocs = type { i32, i32, %struct.ppc_elf_dyn_relocs*, i64 }
%struct.ppc_elf_link_hash_table = type { i64, i64, i32, i32, %struct.TYPE_27__*, %struct.TYPE_17__, %struct.TYPE_26__, %struct.TYPE_25__*, %struct.TYPE_24__*, %struct.TYPE_23__*, i64, %struct.TYPE_20__*, %struct.TYPE_20__* }
%struct.TYPE_27__ = type { i32 }
%struct.TYPE_17__ = type { i32 }
%struct.TYPE_26__ = type { i32 }
%struct.TYPE_25__ = type { i32 }
%struct.TYPE_24__ = type { i32 }
%struct.TYPE_23__ = type { i32 }
%struct.TYPE_21__ = type { %struct.TYPE_20__* }

@bfd_link_hash_indirect = common dso_local global i64 0, align 8
@TRUE = common dso_local global i32 0, align 4
@bfd_link_hash_warning = common dso_local global i64 0, align 8
@FALSE = common dso_local global i32 0, align 4
@PLT_NEW = common dso_local global i64 0, align 8
@GLINK_ENTRY_SIZE = common dso_local global i64 0, align 8
@PLT_OLD = common dso_local global i64 0, align 8
@PLT_NUM_SINGLE_ENTRIES = common dso_local global i32 0, align 4
@PLT_VXWORKS = common dso_local global i64 0, align 8
@VXWORKS_PLTRESOLVE_RELOCS = common dso_local global i32 0, align 4
@VXWORKS_PLT_NON_JMP_SLOT_RELOCS = common dso_local global i32 0, align 4
@TLS_TLS = common dso_local global i32 0, align 4
@TLS_LD = common dso_local global i32 0, align 4
@TLS_GD = common dso_local global i32 0, align 4
@TLS_TPREL = common dso_local global i32 0, align 4
@TLS_TPRELGD = common dso_local global i32 0, align 4
@TLS_DTPREL = common dso_local global i32 0, align 4
@STV_DEFAULT = common dso_local global i64 0, align 8
@bfd_link_hash_undefweak = common dso_local global i64 0, align 8
@ELIMINATE_COPY_RELOCS = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.elf_link_hash_entry*, i8*)* @allocate_dynrelocs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @allocate_dynrelocs(%struct.elf_link_hash_entry* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.elf_link_hash_entry*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.bfd_link_info*, align 8
  %7 = alloca %struct.ppc_elf_link_hash_entry*, align 8
  %8 = alloca %struct.ppc_elf_link_hash_table*, align 8
  %9 = alloca %struct.ppc_elf_dyn_relocs*, align 8
  %10 = alloca %struct.plt_entry*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca %struct.TYPE_20__*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca %struct.ppc_elf_dyn_relocs**, align 8
  %18 = alloca %struct.TYPE_20__*, align 8
  store %struct.elf_link_hash_entry* %0, %struct.elf_link_hash_entry** %4, align 8
  store i8* %1, i8** %5, align 8
  %19 = load i8*, i8** %5, align 8
  %20 = bitcast i8* %19 to %struct.bfd_link_info*
  store %struct.bfd_link_info* %20, %struct.bfd_link_info** %6, align 8
  %21 = load %struct.elf_link_hash_entry*, %struct.elf_link_hash_entry** %4, align 8
  %22 = getelementptr inbounds %struct.elf_link_hash_entry, %struct.elf_link_hash_entry* %21, i32 0, i32 6
  %23 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = load i64, i64* @bfd_link_hash_indirect, align 8
  %26 = icmp eq i64 %24, %25
  br i1 %26, label %27, label %29

27:                                               ; preds = %2
  %28 = load i32, i32* @TRUE, align 4
  store i32 %28, i32* %3, align 4
  br label %730

29:                                               ; preds = %2
  %30 = load %struct.elf_link_hash_entry*, %struct.elf_link_hash_entry** %4, align 8
  %31 = getelementptr inbounds %struct.elf_link_hash_entry, %struct.elf_link_hash_entry* %30, i32 0, i32 6
  %32 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = load i64, i64* @bfd_link_hash_warning, align 8
  %35 = icmp eq i64 %33, %34
  br i1 %35, label %36, label %44

36:                                               ; preds = %29
  %37 = load %struct.elf_link_hash_entry*, %struct.elf_link_hash_entry** %4, align 8
  %38 = getelementptr inbounds %struct.elf_link_hash_entry, %struct.elf_link_hash_entry* %37, i32 0, i32 6
  %39 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %38, i32 0, i32 1
  %40 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %39, i32 0, i32 1
  %41 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = inttoptr i64 %42 to %struct.elf_link_hash_entry*
  store %struct.elf_link_hash_entry* %43, %struct.elf_link_hash_entry** %4, align 8
  br label %44

44:                                               ; preds = %36, %29
  %45 = load %struct.bfd_link_info*, %struct.bfd_link_info** %6, align 8
  %46 = call %struct.ppc_elf_link_hash_table* @ppc_elf_hash_table(%struct.bfd_link_info* %45)
  store %struct.ppc_elf_link_hash_table* %46, %struct.ppc_elf_link_hash_table** %8, align 8
  %47 = load %struct.ppc_elf_link_hash_table*, %struct.ppc_elf_link_hash_table** %8, align 8
  %48 = getelementptr inbounds %struct.ppc_elf_link_hash_table, %struct.ppc_elf_link_hash_table* %47, i32 0, i32 5
  %49 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %380

52:                                               ; preds = %44
  %53 = load i32, i32* @FALSE, align 4
  store i32 %53, i32* %11, align 4
  store i64 0, i64* %12, align 8
  store i64 0, i64* %13, align 8
  %54 = load %struct.elf_link_hash_entry*, %struct.elf_link_hash_entry** %4, align 8
  %55 = getelementptr inbounds %struct.elf_link_hash_entry, %struct.elf_link_hash_entry* %54, i32 0, i32 9
  %56 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %55, i32 0, i32 0
  %57 = load %struct.plt_entry*, %struct.plt_entry** %56, align 8
  store %struct.plt_entry* %57, %struct.plt_entry** %10, align 8
  br label %58

58:                                               ; preds = %366, %52
  %59 = load %struct.plt_entry*, %struct.plt_entry** %10, align 8
  %60 = icmp ne %struct.plt_entry* %59, null
  br i1 %60, label %61, label %370

61:                                               ; preds = %58
  %62 = load %struct.plt_entry*, %struct.plt_entry** %10, align 8
  %63 = getelementptr inbounds %struct.plt_entry, %struct.plt_entry* %62, i32 0, i32 0
  %64 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %63, i32 0, i32 0
  %65 = load i64, i64* %64, align 8
  %66 = icmp sgt i64 %65, 0
  br i1 %66, label %67, label %361

67:                                               ; preds = %61
  %68 = load %struct.elf_link_hash_entry*, %struct.elf_link_hash_entry** %4, align 8
  %69 = getelementptr inbounds %struct.elf_link_hash_entry, %struct.elf_link_hash_entry* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 8
  %71 = icmp eq i32 %70, -1
  br i1 %71, label %72, label %85

72:                                               ; preds = %67
  %73 = load %struct.elf_link_hash_entry*, %struct.elf_link_hash_entry** %4, align 8
  %74 = getelementptr inbounds %struct.elf_link_hash_entry, %struct.elf_link_hash_entry* %73, i32 0, i32 1
  %75 = load i32, i32* %74, align 4
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %85, label %77

77:                                               ; preds = %72
  %78 = load %struct.bfd_link_info*, %struct.bfd_link_info** %6, align 8
  %79 = load %struct.elf_link_hash_entry*, %struct.elf_link_hash_entry** %4, align 8
  %80 = call i32 @bfd_elf_link_record_dynamic_symbol(%struct.bfd_link_info* %78, %struct.elf_link_hash_entry* %79)
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %84, label %82

82:                                               ; preds = %77
  %83 = load i32, i32* @FALSE, align 4
  store i32 %83, i32* %3, align 4
  br label %730

84:                                               ; preds = %77
  br label %85

85:                                               ; preds = %84, %72, %67
  %86 = load %struct.bfd_link_info*, %struct.bfd_link_info** %6, align 8
  %87 = getelementptr inbounds %struct.bfd_link_info, %struct.bfd_link_info* %86, i32 0, i32 0
  %88 = load i64, i64* %87, align 8
  %89 = icmp ne i64 %88, 0
  br i1 %89, label %94, label %90

90:                                               ; preds = %85
  %91 = load %struct.elf_link_hash_entry*, %struct.elf_link_hash_entry** %4, align 8
  %92 = call i64 @WILL_CALL_FINISH_DYNAMIC_SYMBOL(i32 1, i32 0, %struct.elf_link_hash_entry* %91)
  %93 = icmp ne i64 %92, 0
  br i1 %93, label %94, label %356

94:                                               ; preds = %90, %85
  %95 = load %struct.ppc_elf_link_hash_table*, %struct.ppc_elf_link_hash_table** %8, align 8
  %96 = getelementptr inbounds %struct.ppc_elf_link_hash_table, %struct.ppc_elf_link_hash_table* %95, i32 0, i32 12
  %97 = load %struct.TYPE_20__*, %struct.TYPE_20__** %96, align 8
  store %struct.TYPE_20__* %97, %struct.TYPE_20__** %14, align 8
  %98 = load %struct.ppc_elf_link_hash_table*, %struct.ppc_elf_link_hash_table** %8, align 8
  %99 = getelementptr inbounds %struct.ppc_elf_link_hash_table, %struct.ppc_elf_link_hash_table* %98, i32 0, i32 0
  %100 = load i64, i64* %99, align 8
  %101 = load i64, i64* @PLT_NEW, align 8
  %102 = icmp eq i64 %100, %101
  br i1 %102, label %103, label %186

103:                                              ; preds = %94
  %104 = load i32, i32* %11, align 4
  %105 = icmp ne i32 %104, 0
  br i1 %105, label %114, label %106

106:                                              ; preds = %103
  %107 = load %struct.TYPE_20__*, %struct.TYPE_20__** %14, align 8
  %108 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %107, i32 0, i32 0
  %109 = load i64, i64* %108, align 8
  store i64 %109, i64* %12, align 8
  %110 = load %struct.TYPE_20__*, %struct.TYPE_20__** %14, align 8
  %111 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %110, i32 0, i32 0
  %112 = load i64, i64* %111, align 8
  %113 = add nsw i64 %112, 4
  store i64 %113, i64* %111, align 8
  br label %114

114:                                              ; preds = %106, %103
  %115 = load i64, i64* %12, align 8
  %116 = load %struct.plt_entry*, %struct.plt_entry** %10, align 8
  %117 = getelementptr inbounds %struct.plt_entry, %struct.plt_entry* %116, i32 0, i32 0
  %118 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %117, i32 0, i32 1
  store i64 %115, i64* %118, align 8
  %119 = load %struct.ppc_elf_link_hash_table*, %struct.ppc_elf_link_hash_table** %8, align 8
  %120 = getelementptr inbounds %struct.ppc_elf_link_hash_table, %struct.ppc_elf_link_hash_table* %119, i32 0, i32 11
  %121 = load %struct.TYPE_20__*, %struct.TYPE_20__** %120, align 8
  store %struct.TYPE_20__* %121, %struct.TYPE_20__** %14, align 8
  %122 = load i32, i32* %11, align 4
  %123 = icmp ne i32 %122, 0
  br i1 %123, label %124, label %134

124:                                              ; preds = %114
  %125 = load %struct.bfd_link_info*, %struct.bfd_link_info** %6, align 8
  %126 = getelementptr inbounds %struct.bfd_link_info, %struct.bfd_link_info* %125, i32 0, i32 0
  %127 = load i64, i64* %126, align 8
  %128 = icmp ne i64 %127, 0
  br i1 %128, label %134, label %129

129:                                              ; preds = %124
  %130 = load %struct.bfd_link_info*, %struct.bfd_link_info** %6, align 8
  %131 = getelementptr inbounds %struct.bfd_link_info, %struct.bfd_link_info* %130, i32 0, i32 1
  %132 = load i64, i64* %131, align 8
  %133 = icmp ne i64 %132, 0
  br i1 %133, label %134, label %143

134:                                              ; preds = %129, %124, %114
  %135 = load %struct.TYPE_20__*, %struct.TYPE_20__** %14, align 8
  %136 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %135, i32 0, i32 0
  %137 = load i64, i64* %136, align 8
  store i64 %137, i64* %13, align 8
  %138 = load i64, i64* @GLINK_ENTRY_SIZE, align 8
  %139 = load %struct.TYPE_20__*, %struct.TYPE_20__** %14, align 8
  %140 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %139, i32 0, i32 0
  %141 = load i64, i64* %140, align 8
  %142 = add nsw i64 %141, %138
  store i64 %142, i64* %140, align 8
  br label %143

143:                                              ; preds = %134, %129
  %144 = load i32, i32* %11, align 4
  %145 = icmp ne i32 %144, 0
  br i1 %145, label %169, label %146

146:                                              ; preds = %143
  %147 = load %struct.bfd_link_info*, %struct.bfd_link_info** %6, align 8
  %148 = getelementptr inbounds %struct.bfd_link_info, %struct.bfd_link_info* %147, i32 0, i32 0
  %149 = load i64, i64* %148, align 8
  %150 = icmp ne i64 %149, 0
  br i1 %150, label %169, label %151

151:                                              ; preds = %146
  %152 = load %struct.elf_link_hash_entry*, %struct.elf_link_hash_entry** %4, align 8
  %153 = getelementptr inbounds %struct.elf_link_hash_entry, %struct.elf_link_hash_entry* %152, i32 0, i32 2
  %154 = load i32, i32* %153, align 8
  %155 = icmp ne i32 %154, 0
  br i1 %155, label %169, label %156

156:                                              ; preds = %151
  %157 = load %struct.TYPE_20__*, %struct.TYPE_20__** %14, align 8
  %158 = load %struct.elf_link_hash_entry*, %struct.elf_link_hash_entry** %4, align 8
  %159 = getelementptr inbounds %struct.elf_link_hash_entry, %struct.elf_link_hash_entry* %158, i32 0, i32 6
  %160 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %159, i32 0, i32 1
  %161 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %160, i32 0, i32 0
  %162 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %161, i32 0, i32 1
  store %struct.TYPE_20__* %157, %struct.TYPE_20__** %162, align 8
  %163 = load i64, i64* %13, align 8
  %164 = load %struct.elf_link_hash_entry*, %struct.elf_link_hash_entry** %4, align 8
  %165 = getelementptr inbounds %struct.elf_link_hash_entry, %struct.elf_link_hash_entry* %164, i32 0, i32 6
  %166 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %165, i32 0, i32 1
  %167 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %166, i32 0, i32 0
  %168 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %167, i32 0, i32 0
  store i64 %163, i64* %168, align 8
  br label %169

169:                                              ; preds = %156, %151, %146, %143
  %170 = load i64, i64* %13, align 8
  %171 = load %struct.plt_entry*, %struct.plt_entry** %10, align 8
  %172 = getelementptr inbounds %struct.plt_entry, %struct.plt_entry* %171, i32 0, i32 1
  store i64 %170, i64* %172, align 8
  %173 = load %struct.ppc_elf_link_hash_table*, %struct.ppc_elf_link_hash_table** %8, align 8
  %174 = getelementptr inbounds %struct.ppc_elf_link_hash_table, %struct.ppc_elf_link_hash_table* %173, i32 0, i32 10
  %175 = load i64, i64* %174, align 8
  %176 = icmp ne i64 %175, 0
  br i1 %176, label %177, label %185

177:                                              ; preds = %169
  %178 = load %struct.plt_entry*, %struct.plt_entry** %10, align 8
  %179 = load %struct.elf_link_hash_entry*, %struct.elf_link_hash_entry** %4, align 8
  %180 = load %struct.bfd_link_info*, %struct.bfd_link_info** %6, align 8
  %181 = call i32 @add_stub_sym(%struct.plt_entry* %178, %struct.elf_link_hash_entry* %179, %struct.bfd_link_info* %180)
  %182 = icmp ne i32 %181, 0
  br i1 %182, label %185, label %183

183:                                              ; preds = %177
  %184 = load i32, i32* @FALSE, align 4
  store i32 %184, i32* %3, align 4
  br label %730

185:                                              ; preds = %177, %169
  br label %291

186:                                              ; preds = %94
  %187 = load i32, i32* %11, align 4
  %188 = icmp ne i32 %187, 0
  br i1 %188, label %286, label %189

189:                                              ; preds = %186
  %190 = load %struct.TYPE_20__*, %struct.TYPE_20__** %14, align 8
  %191 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %190, i32 0, i32 0
  %192 = load i64, i64* %191, align 8
  %193 = icmp eq i64 %192, 0
  br i1 %193, label %194, label %202

194:                                              ; preds = %189
  %195 = load %struct.ppc_elf_link_hash_table*, %struct.ppc_elf_link_hash_table** %8, align 8
  %196 = getelementptr inbounds %struct.ppc_elf_link_hash_table, %struct.ppc_elf_link_hash_table* %195, i32 0, i32 1
  %197 = load i64, i64* %196, align 8
  %198 = load %struct.TYPE_20__*, %struct.TYPE_20__** %14, align 8
  %199 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %198, i32 0, i32 0
  %200 = load i64, i64* %199, align 8
  %201 = add nsw i64 %200, %197
  store i64 %201, i64* %199, align 8
  br label %202

202:                                              ; preds = %194, %189
  %203 = load %struct.ppc_elf_link_hash_table*, %struct.ppc_elf_link_hash_table** %8, align 8
  %204 = getelementptr inbounds %struct.ppc_elf_link_hash_table, %struct.ppc_elf_link_hash_table* %203, i32 0, i32 1
  %205 = load i64, i64* %204, align 8
  %206 = load %struct.ppc_elf_link_hash_table*, %struct.ppc_elf_link_hash_table** %8, align 8
  %207 = getelementptr inbounds %struct.ppc_elf_link_hash_table, %struct.ppc_elf_link_hash_table* %206, i32 0, i32 2
  %208 = load i32, i32* %207, align 8
  %209 = sext i32 %208 to i64
  %210 = load %struct.TYPE_20__*, %struct.TYPE_20__** %14, align 8
  %211 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %210, i32 0, i32 0
  %212 = load i64, i64* %211, align 8
  %213 = load %struct.ppc_elf_link_hash_table*, %struct.ppc_elf_link_hash_table** %8, align 8
  %214 = getelementptr inbounds %struct.ppc_elf_link_hash_table, %struct.ppc_elf_link_hash_table* %213, i32 0, i32 1
  %215 = load i64, i64* %214, align 8
  %216 = sub nsw i64 %212, %215
  %217 = load %struct.ppc_elf_link_hash_table*, %struct.ppc_elf_link_hash_table** %8, align 8
  %218 = getelementptr inbounds %struct.ppc_elf_link_hash_table, %struct.ppc_elf_link_hash_table* %217, i32 0, i32 3
  %219 = load i32, i32* %218, align 4
  %220 = sext i32 %219 to i64
  %221 = sdiv i64 %216, %220
  %222 = mul nsw i64 %209, %221
  %223 = add nsw i64 %205, %222
  store i64 %223, i64* %12, align 8
  %224 = load %struct.bfd_link_info*, %struct.bfd_link_info** %6, align 8
  %225 = getelementptr inbounds %struct.bfd_link_info, %struct.bfd_link_info* %224, i32 0, i32 0
  %226 = load i64, i64* %225, align 8
  %227 = icmp ne i64 %226, 0
  br i1 %227, label %246, label %228

228:                                              ; preds = %202
  %229 = load %struct.elf_link_hash_entry*, %struct.elf_link_hash_entry** %4, align 8
  %230 = getelementptr inbounds %struct.elf_link_hash_entry, %struct.elf_link_hash_entry* %229, i32 0, i32 2
  %231 = load i32, i32* %230, align 8
  %232 = icmp ne i32 %231, 0
  br i1 %232, label %246, label %233

233:                                              ; preds = %228
  %234 = load %struct.TYPE_20__*, %struct.TYPE_20__** %14, align 8
  %235 = load %struct.elf_link_hash_entry*, %struct.elf_link_hash_entry** %4, align 8
  %236 = getelementptr inbounds %struct.elf_link_hash_entry, %struct.elf_link_hash_entry* %235, i32 0, i32 6
  %237 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %236, i32 0, i32 1
  %238 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %237, i32 0, i32 0
  %239 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %238, i32 0, i32 1
  store %struct.TYPE_20__* %234, %struct.TYPE_20__** %239, align 8
  %240 = load i64, i64* %12, align 8
  %241 = load %struct.elf_link_hash_entry*, %struct.elf_link_hash_entry** %4, align 8
  %242 = getelementptr inbounds %struct.elf_link_hash_entry, %struct.elf_link_hash_entry* %241, i32 0, i32 6
  %243 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %242, i32 0, i32 1
  %244 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %243, i32 0, i32 0
  %245 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %244, i32 0, i32 0
  store i64 %240, i64* %245, align 8
  br label %246

246:                                              ; preds = %233, %228, %202
  %247 = load %struct.ppc_elf_link_hash_table*, %struct.ppc_elf_link_hash_table** %8, align 8
  %248 = getelementptr inbounds %struct.ppc_elf_link_hash_table, %struct.ppc_elf_link_hash_table* %247, i32 0, i32 3
  %249 = load i32, i32* %248, align 4
  %250 = sext i32 %249 to i64
  %251 = load %struct.TYPE_20__*, %struct.TYPE_20__** %14, align 8
  %252 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %251, i32 0, i32 0
  %253 = load i64, i64* %252, align 8
  %254 = add nsw i64 %253, %250
  store i64 %254, i64* %252, align 8
  %255 = load %struct.ppc_elf_link_hash_table*, %struct.ppc_elf_link_hash_table** %8, align 8
  %256 = getelementptr inbounds %struct.ppc_elf_link_hash_table, %struct.ppc_elf_link_hash_table* %255, i32 0, i32 0
  %257 = load i64, i64* %256, align 8
  %258 = load i64, i64* @PLT_OLD, align 8
  %259 = icmp eq i64 %257, %258
  br i1 %259, label %260, label %285

260:                                              ; preds = %246
  %261 = load %struct.TYPE_20__*, %struct.TYPE_20__** %14, align 8
  %262 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %261, i32 0, i32 0
  %263 = load i64, i64* %262, align 8
  %264 = load %struct.ppc_elf_link_hash_table*, %struct.ppc_elf_link_hash_table** %8, align 8
  %265 = getelementptr inbounds %struct.ppc_elf_link_hash_table, %struct.ppc_elf_link_hash_table* %264, i32 0, i32 1
  %266 = load i64, i64* %265, align 8
  %267 = sub nsw i64 %263, %266
  %268 = load %struct.ppc_elf_link_hash_table*, %struct.ppc_elf_link_hash_table** %8, align 8
  %269 = getelementptr inbounds %struct.ppc_elf_link_hash_table, %struct.ppc_elf_link_hash_table* %268, i32 0, i32 3
  %270 = load i32, i32* %269, align 4
  %271 = sext i32 %270 to i64
  %272 = sdiv i64 %267, %271
  %273 = load i32, i32* @PLT_NUM_SINGLE_ENTRIES, align 4
  %274 = sext i32 %273 to i64
  %275 = icmp sgt i64 %272, %274
  br i1 %275, label %276, label %285

276:                                              ; preds = %260
  %277 = load %struct.ppc_elf_link_hash_table*, %struct.ppc_elf_link_hash_table** %8, align 8
  %278 = getelementptr inbounds %struct.ppc_elf_link_hash_table, %struct.ppc_elf_link_hash_table* %277, i32 0, i32 3
  %279 = load i32, i32* %278, align 4
  %280 = sext i32 %279 to i64
  %281 = load %struct.TYPE_20__*, %struct.TYPE_20__** %14, align 8
  %282 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %281, i32 0, i32 0
  %283 = load i64, i64* %282, align 8
  %284 = add nsw i64 %283, %280
  store i64 %284, i64* %282, align 8
  br label %285

285:                                              ; preds = %276, %260, %246
  br label %286

286:                                              ; preds = %285, %186
  %287 = load i64, i64* %12, align 8
  %288 = load %struct.plt_entry*, %struct.plt_entry** %10, align 8
  %289 = getelementptr inbounds %struct.plt_entry, %struct.plt_entry* %288, i32 0, i32 0
  %290 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %289, i32 0, i32 1
  store i64 %287, i64* %290, align 8
  br label %291

291:                                              ; preds = %286, %185
  %292 = load i32, i32* %11, align 4
  %293 = icmp ne i32 %292, 0
  br i1 %293, label %355, label %294

294:                                              ; preds = %291
  %295 = load %struct.ppc_elf_link_hash_table*, %struct.ppc_elf_link_hash_table** %8, align 8
  %296 = getelementptr inbounds %struct.ppc_elf_link_hash_table, %struct.ppc_elf_link_hash_table* %295, i32 0, i32 9
  %297 = load %struct.TYPE_23__*, %struct.TYPE_23__** %296, align 8
  %298 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %297, i32 0, i32 0
  %299 = load i32, i32* %298, align 4
  %300 = sext i32 %299 to i64
  %301 = add i64 %300, 4
  %302 = trunc i64 %301 to i32
  store i32 %302, i32* %298, align 4
  %303 = load %struct.ppc_elf_link_hash_table*, %struct.ppc_elf_link_hash_table** %8, align 8
  %304 = getelementptr inbounds %struct.ppc_elf_link_hash_table, %struct.ppc_elf_link_hash_table* %303, i32 0, i32 0
  %305 = load i64, i64* %304, align 8
  %306 = load i64, i64* @PLT_VXWORKS, align 8
  %307 = icmp eq i64 %305, %306
  br i1 %307, label %308, label %353

308:                                              ; preds = %294
  %309 = load %struct.bfd_link_info*, %struct.bfd_link_info** %6, align 8
  %310 = getelementptr inbounds %struct.bfd_link_info, %struct.bfd_link_info* %309, i32 0, i32 0
  %311 = load i64, i64* %310, align 8
  %312 = icmp ne i64 %311, 0
  br i1 %312, label %346, label %313

313:                                              ; preds = %308
  %314 = load %struct.plt_entry*, %struct.plt_entry** %10, align 8
  %315 = getelementptr inbounds %struct.plt_entry, %struct.plt_entry* %314, i32 0, i32 0
  %316 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %315, i32 0, i32 1
  %317 = load i64, i64* %316, align 8
  %318 = load %struct.ppc_elf_link_hash_table*, %struct.ppc_elf_link_hash_table** %8, align 8
  %319 = getelementptr inbounds %struct.ppc_elf_link_hash_table, %struct.ppc_elf_link_hash_table* %318, i32 0, i32 1
  %320 = load i64, i64* %319, align 8
  %321 = icmp eq i64 %317, %320
  br i1 %321, label %322, label %334

322:                                              ; preds = %313
  %323 = load i32, i32* @VXWORKS_PLTRESOLVE_RELOCS, align 4
  %324 = sext i32 %323 to i64
  %325 = mul i64 4, %324
  %326 = load %struct.ppc_elf_link_hash_table*, %struct.ppc_elf_link_hash_table** %8, align 8
  %327 = getelementptr inbounds %struct.ppc_elf_link_hash_table, %struct.ppc_elf_link_hash_table* %326, i32 0, i32 8
  %328 = load %struct.TYPE_24__*, %struct.TYPE_24__** %327, align 8
  %329 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %328, i32 0, i32 0
  %330 = load i32, i32* %329, align 4
  %331 = sext i32 %330 to i64
  %332 = add i64 %331, %325
  %333 = trunc i64 %332 to i32
  store i32 %333, i32* %329, align 4
  br label %334

334:                                              ; preds = %322, %313
  %335 = load i32, i32* @VXWORKS_PLT_NON_JMP_SLOT_RELOCS, align 4
  %336 = sext i32 %335 to i64
  %337 = mul i64 4, %336
  %338 = load %struct.ppc_elf_link_hash_table*, %struct.ppc_elf_link_hash_table** %8, align 8
  %339 = getelementptr inbounds %struct.ppc_elf_link_hash_table, %struct.ppc_elf_link_hash_table* %338, i32 0, i32 8
  %340 = load %struct.TYPE_24__*, %struct.TYPE_24__** %339, align 8
  %341 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %340, i32 0, i32 0
  %342 = load i32, i32* %341, align 4
  %343 = sext i32 %342 to i64
  %344 = add i64 %343, %337
  %345 = trunc i64 %344 to i32
  store i32 %345, i32* %341, align 4
  br label %346

346:                                              ; preds = %334, %308
  %347 = load %struct.ppc_elf_link_hash_table*, %struct.ppc_elf_link_hash_table** %8, align 8
  %348 = getelementptr inbounds %struct.ppc_elf_link_hash_table, %struct.ppc_elf_link_hash_table* %347, i32 0, i32 7
  %349 = load %struct.TYPE_25__*, %struct.TYPE_25__** %348, align 8
  %350 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %349, i32 0, i32 0
  %351 = load i32, i32* %350, align 4
  %352 = add nsw i32 %351, 4
  store i32 %352, i32* %350, align 4
  br label %353

353:                                              ; preds = %346, %294
  %354 = load i32, i32* @TRUE, align 4
  store i32 %354, i32* %11, align 4
  br label %355

355:                                              ; preds = %353, %291
  br label %360

356:                                              ; preds = %90
  %357 = load %struct.plt_entry*, %struct.plt_entry** %10, align 8
  %358 = getelementptr inbounds %struct.plt_entry, %struct.plt_entry* %357, i32 0, i32 0
  %359 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %358, i32 0, i32 1
  store i64 -1, i64* %359, align 8
  br label %360

360:                                              ; preds = %356, %355
  br label %365

361:                                              ; preds = %61
  %362 = load %struct.plt_entry*, %struct.plt_entry** %10, align 8
  %363 = getelementptr inbounds %struct.plt_entry, %struct.plt_entry* %362, i32 0, i32 0
  %364 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %363, i32 0, i32 1
  store i64 -1, i64* %364, align 8
  br label %365

365:                                              ; preds = %361, %360
  br label %366

366:                                              ; preds = %365
  %367 = load %struct.plt_entry*, %struct.plt_entry** %10, align 8
  %368 = getelementptr inbounds %struct.plt_entry, %struct.plt_entry* %367, i32 0, i32 2
  %369 = load %struct.plt_entry*, %struct.plt_entry** %368, align 8
  store %struct.plt_entry* %369, %struct.plt_entry** %10, align 8
  br label %58

370:                                              ; preds = %58
  %371 = load i32, i32* %11, align 4
  %372 = icmp ne i32 %371, 0
  br i1 %372, label %379, label %373

373:                                              ; preds = %370
  %374 = load %struct.elf_link_hash_entry*, %struct.elf_link_hash_entry** %4, align 8
  %375 = getelementptr inbounds %struct.elf_link_hash_entry, %struct.elf_link_hash_entry* %374, i32 0, i32 9
  %376 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %375, i32 0, i32 0
  store %struct.plt_entry* null, %struct.plt_entry** %376, align 8
  %377 = load %struct.elf_link_hash_entry*, %struct.elf_link_hash_entry** %4, align 8
  %378 = getelementptr inbounds %struct.elf_link_hash_entry, %struct.elf_link_hash_entry* %377, i32 0, i32 8
  store i64 0, i64* %378, align 8
  br label %379

379:                                              ; preds = %373, %370
  br label %386

380:                                              ; preds = %44
  %381 = load %struct.elf_link_hash_entry*, %struct.elf_link_hash_entry** %4, align 8
  %382 = getelementptr inbounds %struct.elf_link_hash_entry, %struct.elf_link_hash_entry* %381, i32 0, i32 9
  %383 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %382, i32 0, i32 0
  store %struct.plt_entry* null, %struct.plt_entry** %383, align 8
  %384 = load %struct.elf_link_hash_entry*, %struct.elf_link_hash_entry** %4, align 8
  %385 = getelementptr inbounds %struct.elf_link_hash_entry, %struct.elf_link_hash_entry* %384, i32 0, i32 8
  store i64 0, i64* %385, align 8
  br label %386

386:                                              ; preds = %380, %379
  %387 = load %struct.elf_link_hash_entry*, %struct.elf_link_hash_entry** %4, align 8
  %388 = bitcast %struct.elf_link_hash_entry* %387 to %struct.ppc_elf_link_hash_entry*
  store %struct.ppc_elf_link_hash_entry* %388, %struct.ppc_elf_link_hash_entry** %7, align 8
  %389 = load %struct.ppc_elf_link_hash_entry*, %struct.ppc_elf_link_hash_entry** %7, align 8
  %390 = getelementptr inbounds %struct.ppc_elf_link_hash_entry, %struct.ppc_elf_link_hash_entry* %389, i32 0, i32 2
  %391 = getelementptr inbounds %struct.elf_link_hash_entry, %struct.elf_link_hash_entry* %390, i32 0, i32 7
  %392 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %391, i32 0, i32 0
  %393 = load i64, i64* %392, align 8
  %394 = icmp sgt i64 %393, 0
  br i1 %394, label %395, label %555

395:                                              ; preds = %386
  %396 = load %struct.ppc_elf_link_hash_entry*, %struct.ppc_elf_link_hash_entry** %7, align 8
  %397 = getelementptr inbounds %struct.ppc_elf_link_hash_entry, %struct.ppc_elf_link_hash_entry* %396, i32 0, i32 2
  %398 = getelementptr inbounds %struct.elf_link_hash_entry, %struct.elf_link_hash_entry* %397, i32 0, i32 0
  %399 = load i32, i32* %398, align 8
  %400 = icmp eq i32 %399, -1
  br i1 %400, label %401, label %416

401:                                              ; preds = %395
  %402 = load %struct.ppc_elf_link_hash_entry*, %struct.ppc_elf_link_hash_entry** %7, align 8
  %403 = getelementptr inbounds %struct.ppc_elf_link_hash_entry, %struct.ppc_elf_link_hash_entry* %402, i32 0, i32 2
  %404 = getelementptr inbounds %struct.elf_link_hash_entry, %struct.elf_link_hash_entry* %403, i32 0, i32 1
  %405 = load i32, i32* %404, align 4
  %406 = icmp ne i32 %405, 0
  br i1 %406, label %416, label %407

407:                                              ; preds = %401
  %408 = load %struct.bfd_link_info*, %struct.bfd_link_info** %6, align 8
  %409 = load %struct.ppc_elf_link_hash_entry*, %struct.ppc_elf_link_hash_entry** %7, align 8
  %410 = getelementptr inbounds %struct.ppc_elf_link_hash_entry, %struct.ppc_elf_link_hash_entry* %409, i32 0, i32 2
  %411 = call i32 @bfd_elf_link_record_dynamic_symbol(%struct.bfd_link_info* %408, %struct.elf_link_hash_entry* %410)
  %412 = icmp ne i32 %411, 0
  br i1 %412, label %415, label %413

413:                                              ; preds = %407
  %414 = load i32, i32* @FALSE, align 4
  store i32 %414, i32* %3, align 4
  br label %730

415:                                              ; preds = %407
  br label %416

416:                                              ; preds = %415, %401, %395
  %417 = load %struct.ppc_elf_link_hash_entry*, %struct.ppc_elf_link_hash_entry** %7, align 8
  %418 = getelementptr inbounds %struct.ppc_elf_link_hash_entry, %struct.ppc_elf_link_hash_entry* %417, i32 0, i32 0
  %419 = load i32, i32* %418, align 8
  %420 = load i32, i32* @TLS_TLS, align 4
  %421 = load i32, i32* @TLS_LD, align 4
  %422 = or i32 %420, %421
  %423 = icmp eq i32 %419, %422
  br i1 %423, label %424, label %440

424:                                              ; preds = %416
  %425 = load %struct.ppc_elf_link_hash_entry*, %struct.ppc_elf_link_hash_entry** %7, align 8
  %426 = getelementptr inbounds %struct.ppc_elf_link_hash_entry, %struct.ppc_elf_link_hash_entry* %425, i32 0, i32 2
  %427 = getelementptr inbounds %struct.elf_link_hash_entry, %struct.elf_link_hash_entry* %426, i32 0, i32 3
  %428 = load i64, i64* %427, align 8
  %429 = icmp ne i64 %428, 0
  br i1 %429, label %440, label %430

430:                                              ; preds = %424
  %431 = load %struct.ppc_elf_link_hash_table*, %struct.ppc_elf_link_hash_table** %8, align 8
  %432 = getelementptr inbounds %struct.ppc_elf_link_hash_table, %struct.ppc_elf_link_hash_table* %431, i32 0, i32 6
  %433 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %432, i32 0, i32 0
  %434 = load i32, i32* %433, align 4
  %435 = add nsw i32 %434, 1
  store i32 %435, i32* %433, align 4
  %436 = load %struct.ppc_elf_link_hash_entry*, %struct.ppc_elf_link_hash_entry** %7, align 8
  %437 = getelementptr inbounds %struct.ppc_elf_link_hash_entry, %struct.ppc_elf_link_hash_entry* %436, i32 0, i32 2
  %438 = getelementptr inbounds %struct.elf_link_hash_entry, %struct.elf_link_hash_entry* %437, i32 0, i32 7
  %439 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %438, i32 0, i32 1
  store i64 -1, i64* %439, align 8
  br label %554

440:                                              ; preds = %424, %416
  store i32 0, i32* %16, align 4
  %441 = load %struct.ppc_elf_link_hash_entry*, %struct.ppc_elf_link_hash_entry** %7, align 8
  %442 = getelementptr inbounds %struct.ppc_elf_link_hash_entry, %struct.ppc_elf_link_hash_entry* %441, i32 0, i32 0
  %443 = load i32, i32* %442, align 8
  %444 = load i32, i32* @TLS_TLS, align 4
  %445 = and i32 %443, %444
  %446 = icmp ne i32 %445, 0
  br i1 %446, label %447, label %490

447:                                              ; preds = %440
  %448 = load %struct.ppc_elf_link_hash_entry*, %struct.ppc_elf_link_hash_entry** %7, align 8
  %449 = getelementptr inbounds %struct.ppc_elf_link_hash_entry, %struct.ppc_elf_link_hash_entry* %448, i32 0, i32 0
  %450 = load i32, i32* %449, align 8
  %451 = load i32, i32* @TLS_LD, align 4
  %452 = and i32 %450, %451
  %453 = icmp ne i32 %452, 0
  br i1 %453, label %454, label %457

454:                                              ; preds = %447
  %455 = load i32, i32* %16, align 4
  %456 = add i32 %455, 8
  store i32 %456, i32* %16, align 4
  br label %457

457:                                              ; preds = %454, %447
  %458 = load %struct.ppc_elf_link_hash_entry*, %struct.ppc_elf_link_hash_entry** %7, align 8
  %459 = getelementptr inbounds %struct.ppc_elf_link_hash_entry, %struct.ppc_elf_link_hash_entry* %458, i32 0, i32 0
  %460 = load i32, i32* %459, align 8
  %461 = load i32, i32* @TLS_GD, align 4
  %462 = and i32 %460, %461
  %463 = icmp ne i32 %462, 0
  br i1 %463, label %464, label %467

464:                                              ; preds = %457
  %465 = load i32, i32* %16, align 4
  %466 = add i32 %465, 8
  store i32 %466, i32* %16, align 4
  br label %467

467:                                              ; preds = %464, %457
  %468 = load %struct.ppc_elf_link_hash_entry*, %struct.ppc_elf_link_hash_entry** %7, align 8
  %469 = getelementptr inbounds %struct.ppc_elf_link_hash_entry, %struct.ppc_elf_link_hash_entry* %468, i32 0, i32 0
  %470 = load i32, i32* %469, align 8
  %471 = load i32, i32* @TLS_TPREL, align 4
  %472 = load i32, i32* @TLS_TPRELGD, align 4
  %473 = or i32 %471, %472
  %474 = and i32 %470, %473
  %475 = icmp ne i32 %474, 0
  br i1 %475, label %476, label %479

476:                                              ; preds = %467
  %477 = load i32, i32* %16, align 4
  %478 = add i32 %477, 4
  store i32 %478, i32* %16, align 4
  br label %479

479:                                              ; preds = %476, %467
  %480 = load %struct.ppc_elf_link_hash_entry*, %struct.ppc_elf_link_hash_entry** %7, align 8
  %481 = getelementptr inbounds %struct.ppc_elf_link_hash_entry, %struct.ppc_elf_link_hash_entry* %480, i32 0, i32 0
  %482 = load i32, i32* %481, align 8
  %483 = load i32, i32* @TLS_DTPREL, align 4
  %484 = and i32 %482, %483
  %485 = icmp ne i32 %484, 0
  br i1 %485, label %486, label %489

486:                                              ; preds = %479
  %487 = load i32, i32* %16, align 4
  %488 = add i32 %487, 4
  store i32 %488, i32* %16, align 4
  br label %489

489:                                              ; preds = %486, %479
  br label %493

490:                                              ; preds = %440
  %491 = load i32, i32* %16, align 4
  %492 = add i32 %491, 4
  store i32 %492, i32* %16, align 4
  br label %493

493:                                              ; preds = %490, %489
  %494 = load %struct.ppc_elf_link_hash_table*, %struct.ppc_elf_link_hash_table** %8, align 8
  %495 = load i32, i32* %16, align 4
  %496 = call i64 @allocate_got(%struct.ppc_elf_link_hash_table* %494, i32 %495)
  %497 = load %struct.ppc_elf_link_hash_entry*, %struct.ppc_elf_link_hash_entry** %7, align 8
  %498 = getelementptr inbounds %struct.ppc_elf_link_hash_entry, %struct.ppc_elf_link_hash_entry* %497, i32 0, i32 2
  %499 = getelementptr inbounds %struct.elf_link_hash_entry, %struct.elf_link_hash_entry* %498, i32 0, i32 7
  %500 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %499, i32 0, i32 1
  store i64 %496, i64* %500, align 8
  %501 = load %struct.ppc_elf_link_hash_table*, %struct.ppc_elf_link_hash_table** %8, align 8
  %502 = getelementptr inbounds %struct.ppc_elf_link_hash_table, %struct.ppc_elf_link_hash_table* %501, i32 0, i32 5
  %503 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %502, i32 0, i32 0
  %504 = load i32, i32* %503, align 8
  store i32 %504, i32* %15, align 4
  %505 = load %struct.bfd_link_info*, %struct.bfd_link_info** %6, align 8
  %506 = getelementptr inbounds %struct.bfd_link_info, %struct.bfd_link_info* %505, i32 0, i32 0
  %507 = load i64, i64* %506, align 8
  %508 = icmp ne i64 %507, 0
  br i1 %508, label %515, label %509

509:                                              ; preds = %493
  %510 = load i32, i32* %15, align 4
  %511 = load %struct.ppc_elf_link_hash_entry*, %struct.ppc_elf_link_hash_entry** %7, align 8
  %512 = getelementptr inbounds %struct.ppc_elf_link_hash_entry, %struct.ppc_elf_link_hash_entry* %511, i32 0, i32 2
  %513 = call i64 @WILL_CALL_FINISH_DYNAMIC_SYMBOL(i32 %510, i32 0, %struct.elf_link_hash_entry* %512)
  %514 = icmp ne i64 %513, 0
  br i1 %514, label %515, label %553

515:                                              ; preds = %509, %493
  %516 = load %struct.ppc_elf_link_hash_entry*, %struct.ppc_elf_link_hash_entry** %7, align 8
  %517 = getelementptr inbounds %struct.ppc_elf_link_hash_entry, %struct.ppc_elf_link_hash_entry* %516, i32 0, i32 2
  %518 = getelementptr inbounds %struct.elf_link_hash_entry, %struct.elf_link_hash_entry* %517, i32 0, i32 5
  %519 = load i32, i32* %518, align 4
  %520 = call i64 @ELF_ST_VISIBILITY(i32 %519)
  %521 = load i64, i64* @STV_DEFAULT, align 8
  %522 = icmp eq i64 %520, %521
  br i1 %522, label %531, label %523

523:                                              ; preds = %515
  %524 = load %struct.ppc_elf_link_hash_entry*, %struct.ppc_elf_link_hash_entry** %7, align 8
  %525 = getelementptr inbounds %struct.ppc_elf_link_hash_entry, %struct.ppc_elf_link_hash_entry* %524, i32 0, i32 2
  %526 = getelementptr inbounds %struct.elf_link_hash_entry, %struct.elf_link_hash_entry* %525, i32 0, i32 6
  %527 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %526, i32 0, i32 0
  %528 = load i64, i64* %527, align 8
  %529 = load i64, i64* @bfd_link_hash_undefweak, align 8
  %530 = icmp ne i64 %528, %529
  br i1 %530, label %531, label %553

531:                                              ; preds = %523, %515
  %532 = load %struct.ppc_elf_link_hash_entry*, %struct.ppc_elf_link_hash_entry** %7, align 8
  %533 = getelementptr inbounds %struct.ppc_elf_link_hash_entry, %struct.ppc_elf_link_hash_entry* %532, i32 0, i32 0
  %534 = load i32, i32* %533, align 8
  %535 = load i32, i32* @TLS_LD, align 4
  %536 = and i32 %534, %535
  %537 = icmp ne i32 %536, 0
  br i1 %537, label %538, label %541

538:                                              ; preds = %531
  %539 = load i32, i32* %16, align 4
  %540 = sub i32 %539, 4
  store i32 %540, i32* %16, align 4
  br label %541

541:                                              ; preds = %538, %531
  %542 = load i32, i32* %16, align 4
  %543 = zext i32 %542 to i64
  %544 = mul i64 %543, 1
  %545 = load %struct.ppc_elf_link_hash_table*, %struct.ppc_elf_link_hash_table** %8, align 8
  %546 = getelementptr inbounds %struct.ppc_elf_link_hash_table, %struct.ppc_elf_link_hash_table* %545, i32 0, i32 4
  %547 = load %struct.TYPE_27__*, %struct.TYPE_27__** %546, align 8
  %548 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %547, i32 0, i32 0
  %549 = load i32, i32* %548, align 4
  %550 = zext i32 %549 to i64
  %551 = add i64 %550, %544
  %552 = trunc i64 %551 to i32
  store i32 %552, i32* %548, align 4
  br label %553

553:                                              ; preds = %541, %523, %509
  br label %554

554:                                              ; preds = %553, %430
  br label %560

555:                                              ; preds = %386
  %556 = load %struct.ppc_elf_link_hash_entry*, %struct.ppc_elf_link_hash_entry** %7, align 8
  %557 = getelementptr inbounds %struct.ppc_elf_link_hash_entry, %struct.ppc_elf_link_hash_entry* %556, i32 0, i32 2
  %558 = getelementptr inbounds %struct.elf_link_hash_entry, %struct.elf_link_hash_entry* %557, i32 0, i32 7
  %559 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %558, i32 0, i32 1
  store i64 -1, i64* %559, align 8
  br label %560

560:                                              ; preds = %555, %554
  %561 = load %struct.ppc_elf_link_hash_entry*, %struct.ppc_elf_link_hash_entry** %7, align 8
  %562 = getelementptr inbounds %struct.ppc_elf_link_hash_entry, %struct.ppc_elf_link_hash_entry* %561, i32 0, i32 1
  %563 = load %struct.ppc_elf_dyn_relocs*, %struct.ppc_elf_dyn_relocs** %562, align 8
  %564 = icmp eq %struct.ppc_elf_dyn_relocs* %563, null
  br i1 %564, label %565, label %567

565:                                              ; preds = %560
  %566 = load i32, i32* @TRUE, align 4
  store i32 %566, i32* %3, align 4
  br label %730

567:                                              ; preds = %560
  %568 = load %struct.bfd_link_info*, %struct.bfd_link_info** %6, align 8
  %569 = getelementptr inbounds %struct.bfd_link_info, %struct.bfd_link_info* %568, i32 0, i32 0
  %570 = load i64, i64* %569, align 8
  %571 = icmp ne i64 %570, 0
  br i1 %571, label %572, label %653

572:                                              ; preds = %567
  %573 = load %struct.bfd_link_info*, %struct.bfd_link_info** %6, align 8
  %574 = load %struct.elf_link_hash_entry*, %struct.elf_link_hash_entry** %4, align 8
  %575 = call i64 @SYMBOL_CALLS_LOCAL(%struct.bfd_link_info* %573, %struct.elf_link_hash_entry* %574)
  %576 = icmp ne i64 %575, 0
  br i1 %576, label %577, label %610

577:                                              ; preds = %572
  %578 = load %struct.ppc_elf_link_hash_entry*, %struct.ppc_elf_link_hash_entry** %7, align 8
  %579 = getelementptr inbounds %struct.ppc_elf_link_hash_entry, %struct.ppc_elf_link_hash_entry* %578, i32 0, i32 1
  store %struct.ppc_elf_dyn_relocs** %579, %struct.ppc_elf_dyn_relocs*** %17, align 8
  br label %580

580:                                              ; preds = %608, %577
  %581 = load %struct.ppc_elf_dyn_relocs**, %struct.ppc_elf_dyn_relocs*** %17, align 8
  %582 = load %struct.ppc_elf_dyn_relocs*, %struct.ppc_elf_dyn_relocs** %581, align 8
  store %struct.ppc_elf_dyn_relocs* %582, %struct.ppc_elf_dyn_relocs** %9, align 8
  %583 = icmp ne %struct.ppc_elf_dyn_relocs* %582, null
  br i1 %583, label %584, label %609

584:                                              ; preds = %580
  %585 = load %struct.ppc_elf_dyn_relocs*, %struct.ppc_elf_dyn_relocs** %9, align 8
  %586 = getelementptr inbounds %struct.ppc_elf_dyn_relocs, %struct.ppc_elf_dyn_relocs* %585, i32 0, i32 3
  %587 = load i64, i64* %586, align 8
  %588 = load %struct.ppc_elf_dyn_relocs*, %struct.ppc_elf_dyn_relocs** %9, align 8
  %589 = getelementptr inbounds %struct.ppc_elf_dyn_relocs, %struct.ppc_elf_dyn_relocs* %588, i32 0, i32 0
  %590 = load i32, i32* %589, align 8
  %591 = sext i32 %590 to i64
  %592 = sub nsw i64 %591, %587
  %593 = trunc i64 %592 to i32
  store i32 %593, i32* %589, align 8
  %594 = load %struct.ppc_elf_dyn_relocs*, %struct.ppc_elf_dyn_relocs** %9, align 8
  %595 = getelementptr inbounds %struct.ppc_elf_dyn_relocs, %struct.ppc_elf_dyn_relocs* %594, i32 0, i32 3
  store i64 0, i64* %595, align 8
  %596 = load %struct.ppc_elf_dyn_relocs*, %struct.ppc_elf_dyn_relocs** %9, align 8
  %597 = getelementptr inbounds %struct.ppc_elf_dyn_relocs, %struct.ppc_elf_dyn_relocs* %596, i32 0, i32 0
  %598 = load i32, i32* %597, align 8
  %599 = icmp eq i32 %598, 0
  br i1 %599, label %600, label %605

600:                                              ; preds = %584
  %601 = load %struct.ppc_elf_dyn_relocs*, %struct.ppc_elf_dyn_relocs** %9, align 8
  %602 = getelementptr inbounds %struct.ppc_elf_dyn_relocs, %struct.ppc_elf_dyn_relocs* %601, i32 0, i32 2
  %603 = load %struct.ppc_elf_dyn_relocs*, %struct.ppc_elf_dyn_relocs** %602, align 8
  %604 = load %struct.ppc_elf_dyn_relocs**, %struct.ppc_elf_dyn_relocs*** %17, align 8
  store %struct.ppc_elf_dyn_relocs* %603, %struct.ppc_elf_dyn_relocs** %604, align 8
  br label %608

605:                                              ; preds = %584
  %606 = load %struct.ppc_elf_dyn_relocs*, %struct.ppc_elf_dyn_relocs** %9, align 8
  %607 = getelementptr inbounds %struct.ppc_elf_dyn_relocs, %struct.ppc_elf_dyn_relocs* %606, i32 0, i32 2
  store %struct.ppc_elf_dyn_relocs** %607, %struct.ppc_elf_dyn_relocs*** %17, align 8
  br label %608

608:                                              ; preds = %605, %600
  br label %580

609:                                              ; preds = %580
  br label %610

610:                                              ; preds = %609, %572
  %611 = load %struct.ppc_elf_link_hash_entry*, %struct.ppc_elf_link_hash_entry** %7, align 8
  %612 = getelementptr inbounds %struct.ppc_elf_link_hash_entry, %struct.ppc_elf_link_hash_entry* %611, i32 0, i32 1
  %613 = load %struct.ppc_elf_dyn_relocs*, %struct.ppc_elf_dyn_relocs** %612, align 8
  %614 = icmp ne %struct.ppc_elf_dyn_relocs* %613, null
  br i1 %614, label %615, label %652

615:                                              ; preds = %610
  %616 = load %struct.elf_link_hash_entry*, %struct.elf_link_hash_entry** %4, align 8
  %617 = getelementptr inbounds %struct.elf_link_hash_entry, %struct.elf_link_hash_entry* %616, i32 0, i32 6
  %618 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %617, i32 0, i32 0
  %619 = load i64, i64* %618, align 8
  %620 = load i64, i64* @bfd_link_hash_undefweak, align 8
  %621 = icmp eq i64 %619, %620
  br i1 %621, label %622, label %652

622:                                              ; preds = %615
  %623 = load %struct.elf_link_hash_entry*, %struct.elf_link_hash_entry** %4, align 8
  %624 = getelementptr inbounds %struct.elf_link_hash_entry, %struct.elf_link_hash_entry* %623, i32 0, i32 5
  %625 = load i32, i32* %624, align 4
  %626 = call i64 @ELF_ST_VISIBILITY(i32 %625)
  %627 = load i64, i64* @STV_DEFAULT, align 8
  %628 = icmp ne i64 %626, %627
  br i1 %628, label %629, label %632

629:                                              ; preds = %622
  %630 = load %struct.ppc_elf_link_hash_entry*, %struct.ppc_elf_link_hash_entry** %7, align 8
  %631 = getelementptr inbounds %struct.ppc_elf_link_hash_entry, %struct.ppc_elf_link_hash_entry* %630, i32 0, i32 1
  store %struct.ppc_elf_dyn_relocs* null, %struct.ppc_elf_dyn_relocs** %631, align 8
  br label %651

632:                                              ; preds = %622
  %633 = load %struct.elf_link_hash_entry*, %struct.elf_link_hash_entry** %4, align 8
  %634 = getelementptr inbounds %struct.elf_link_hash_entry, %struct.elf_link_hash_entry* %633, i32 0, i32 0
  %635 = load i32, i32* %634, align 8
  %636 = icmp eq i32 %635, -1
  br i1 %636, label %637, label %650

637:                                              ; preds = %632
  %638 = load %struct.elf_link_hash_entry*, %struct.elf_link_hash_entry** %4, align 8
  %639 = getelementptr inbounds %struct.elf_link_hash_entry, %struct.elf_link_hash_entry* %638, i32 0, i32 1
  %640 = load i32, i32* %639, align 4
  %641 = icmp ne i32 %640, 0
  br i1 %641, label %650, label %642

642:                                              ; preds = %637
  %643 = load %struct.bfd_link_info*, %struct.bfd_link_info** %6, align 8
  %644 = load %struct.elf_link_hash_entry*, %struct.elf_link_hash_entry** %4, align 8
  %645 = call i32 @bfd_elf_link_record_dynamic_symbol(%struct.bfd_link_info* %643, %struct.elf_link_hash_entry* %644)
  %646 = icmp ne i32 %645, 0
  br i1 %646, label %649, label %647

647:                                              ; preds = %642
  %648 = load i32, i32* @FALSE, align 4
  store i32 %648, i32* %3, align 4
  br label %730

649:                                              ; preds = %642
  br label %650

650:                                              ; preds = %649, %637, %632
  br label %651

651:                                              ; preds = %650, %629
  br label %652

652:                                              ; preds = %651, %615, %610
  br label %701

653:                                              ; preds = %567
  %654 = load i64, i64* @ELIMINATE_COPY_RELOCS, align 8
  %655 = icmp ne i64 %654, 0
  br i1 %655, label %656, label %700

656:                                              ; preds = %653
  %657 = load %struct.elf_link_hash_entry*, %struct.elf_link_hash_entry** %4, align 8
  %658 = getelementptr inbounds %struct.elf_link_hash_entry, %struct.elf_link_hash_entry* %657, i32 0, i32 4
  %659 = load i32, i32* %658, align 8
  %660 = icmp ne i32 %659, 0
  br i1 %660, label %696, label %661

661:                                              ; preds = %656
  %662 = load %struct.elf_link_hash_entry*, %struct.elf_link_hash_entry** %4, align 8
  %663 = getelementptr inbounds %struct.elf_link_hash_entry, %struct.elf_link_hash_entry* %662, i32 0, i32 3
  %664 = load i64, i64* %663, align 8
  %665 = icmp ne i64 %664, 0
  br i1 %665, label %666, label %696

666:                                              ; preds = %661
  %667 = load %struct.elf_link_hash_entry*, %struct.elf_link_hash_entry** %4, align 8
  %668 = getelementptr inbounds %struct.elf_link_hash_entry, %struct.elf_link_hash_entry* %667, i32 0, i32 2
  %669 = load i32, i32* %668, align 8
  %670 = icmp ne i32 %669, 0
  br i1 %670, label %696, label %671

671:                                              ; preds = %666
  %672 = load %struct.elf_link_hash_entry*, %struct.elf_link_hash_entry** %4, align 8
  %673 = getelementptr inbounds %struct.elf_link_hash_entry, %struct.elf_link_hash_entry* %672, i32 0, i32 0
  %674 = load i32, i32* %673, align 8
  %675 = icmp eq i32 %674, -1
  br i1 %675, label %676, label %689

676:                                              ; preds = %671
  %677 = load %struct.elf_link_hash_entry*, %struct.elf_link_hash_entry** %4, align 8
  %678 = getelementptr inbounds %struct.elf_link_hash_entry, %struct.elf_link_hash_entry* %677, i32 0, i32 1
  %679 = load i32, i32* %678, align 4
  %680 = icmp ne i32 %679, 0
  br i1 %680, label %689, label %681

681:                                              ; preds = %676
  %682 = load %struct.bfd_link_info*, %struct.bfd_link_info** %6, align 8
  %683 = load %struct.elf_link_hash_entry*, %struct.elf_link_hash_entry** %4, align 8
  %684 = call i32 @bfd_elf_link_record_dynamic_symbol(%struct.bfd_link_info* %682, %struct.elf_link_hash_entry* %683)
  %685 = icmp ne i32 %684, 0
  br i1 %685, label %688, label %686

686:                                              ; preds = %681
  %687 = load i32, i32* @FALSE, align 4
  store i32 %687, i32* %3, align 4
  br label %730

688:                                              ; preds = %681
  br label %689

689:                                              ; preds = %688, %676, %671
  %690 = load %struct.elf_link_hash_entry*, %struct.elf_link_hash_entry** %4, align 8
  %691 = getelementptr inbounds %struct.elf_link_hash_entry, %struct.elf_link_hash_entry* %690, i32 0, i32 0
  %692 = load i32, i32* %691, align 8
  %693 = icmp ne i32 %692, -1
  br i1 %693, label %694, label %695

694:                                              ; preds = %689
  br label %699

695:                                              ; preds = %689
  br label %696

696:                                              ; preds = %695, %666, %661, %656
  %697 = load %struct.ppc_elf_link_hash_entry*, %struct.ppc_elf_link_hash_entry** %7, align 8
  %698 = getelementptr inbounds %struct.ppc_elf_link_hash_entry, %struct.ppc_elf_link_hash_entry* %697, i32 0, i32 1
  store %struct.ppc_elf_dyn_relocs* null, %struct.ppc_elf_dyn_relocs** %698, align 8
  br label %699

699:                                              ; preds = %696, %694
  br label %700

700:                                              ; preds = %699, %653
  br label %701

701:                                              ; preds = %700, %652
  %702 = load %struct.ppc_elf_link_hash_entry*, %struct.ppc_elf_link_hash_entry** %7, align 8
  %703 = getelementptr inbounds %struct.ppc_elf_link_hash_entry, %struct.ppc_elf_link_hash_entry* %702, i32 0, i32 1
  %704 = load %struct.ppc_elf_dyn_relocs*, %struct.ppc_elf_dyn_relocs** %703, align 8
  store %struct.ppc_elf_dyn_relocs* %704, %struct.ppc_elf_dyn_relocs** %9, align 8
  br label %705

705:                                              ; preds = %724, %701
  %706 = load %struct.ppc_elf_dyn_relocs*, %struct.ppc_elf_dyn_relocs** %9, align 8
  %707 = icmp ne %struct.ppc_elf_dyn_relocs* %706, null
  br i1 %707, label %708, label %728

708:                                              ; preds = %705
  %709 = load %struct.ppc_elf_dyn_relocs*, %struct.ppc_elf_dyn_relocs** %9, align 8
  %710 = getelementptr inbounds %struct.ppc_elf_dyn_relocs, %struct.ppc_elf_dyn_relocs* %709, i32 0, i32 1
  %711 = load i32, i32* %710, align 4
  %712 = call %struct.TYPE_21__* @elf_section_data(i32 %711)
  %713 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %712, i32 0, i32 0
  %714 = load %struct.TYPE_20__*, %struct.TYPE_20__** %713, align 8
  store %struct.TYPE_20__* %714, %struct.TYPE_20__** %18, align 8
  %715 = load %struct.ppc_elf_dyn_relocs*, %struct.ppc_elf_dyn_relocs** %9, align 8
  %716 = getelementptr inbounds %struct.ppc_elf_dyn_relocs, %struct.ppc_elf_dyn_relocs* %715, i32 0, i32 0
  %717 = load i32, i32* %716, align 8
  %718 = sext i32 %717 to i64
  %719 = mul i64 %718, 4
  %720 = load %struct.TYPE_20__*, %struct.TYPE_20__** %18, align 8
  %721 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %720, i32 0, i32 0
  %722 = load i64, i64* %721, align 8
  %723 = add i64 %722, %719
  store i64 %723, i64* %721, align 8
  br label %724

724:                                              ; preds = %708
  %725 = load %struct.ppc_elf_dyn_relocs*, %struct.ppc_elf_dyn_relocs** %9, align 8
  %726 = getelementptr inbounds %struct.ppc_elf_dyn_relocs, %struct.ppc_elf_dyn_relocs* %725, i32 0, i32 2
  %727 = load %struct.ppc_elf_dyn_relocs*, %struct.ppc_elf_dyn_relocs** %726, align 8
  store %struct.ppc_elf_dyn_relocs* %727, %struct.ppc_elf_dyn_relocs** %9, align 8
  br label %705

728:                                              ; preds = %705
  %729 = load i32, i32* @TRUE, align 4
  store i32 %729, i32* %3, align 4
  br label %730

730:                                              ; preds = %728, %686, %647, %565, %413, %183, %82, %27
  %731 = load i32, i32* %3, align 4
  ret i32 %731
}

declare dso_local %struct.ppc_elf_link_hash_table* @ppc_elf_hash_table(%struct.bfd_link_info*) #1

declare dso_local i32 @bfd_elf_link_record_dynamic_symbol(%struct.bfd_link_info*, %struct.elf_link_hash_entry*) #1

declare dso_local i64 @WILL_CALL_FINISH_DYNAMIC_SYMBOL(i32, i32, %struct.elf_link_hash_entry*) #1

declare dso_local i32 @add_stub_sym(%struct.plt_entry*, %struct.elf_link_hash_entry*, %struct.bfd_link_info*) #1

declare dso_local i64 @allocate_got(%struct.ppc_elf_link_hash_table*, i32) #1

declare dso_local i64 @ELF_ST_VISIBILITY(i32) #1

declare dso_local i64 @SYMBOL_CALLS_LOCAL(%struct.bfd_link_info*, %struct.elf_link_hash_entry*) #1

declare dso_local %struct.TYPE_21__* @elf_section_data(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

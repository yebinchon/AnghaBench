; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/bfd/extr_elf64-ppc.c_allocate_dynrelocs.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/bfd/extr_elf64-ppc.c_allocate_dynrelocs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.elf_link_hash_entry = type { i32, i32, i32, i64, i32, i32, %struct.TYPE_21__, %struct.TYPE_25__, i64, %struct.TYPE_24__ }
%struct.TYPE_21__ = type { i64, %struct.TYPE_20__ }
%struct.TYPE_20__ = type { %struct.TYPE_19__ }
%struct.TYPE_19__ = type { i64 }
%struct.TYPE_25__ = type { %struct.got_entry* }
%struct.got_entry = type { i32, i64, i64, %struct.TYPE_26__, %struct.got_entry* }
%struct.TYPE_26__ = type { i64, i64 }
%struct.TYPE_24__ = type { %struct.plt_entry* }
%struct.plt_entry = type { %struct.TYPE_23__, %struct.plt_entry* }
%struct.TYPE_23__ = type { i64, i64 }
%struct.bfd_link_info = type { i64 }
%struct.ppc_link_hash_table = type { %struct.TYPE_22__, %struct.TYPE_14__*, %struct.TYPE_14__*, %struct.TYPE_14__* }
%struct.TYPE_22__ = type { i32 }
%struct.TYPE_14__ = type { i64 }
%struct.ppc_link_hash_entry = type { i32, %struct.ppc_dyn_relocs* }
%struct.ppc_dyn_relocs = type { i32, i32, %struct.ppc_dyn_relocs*, i64 }
%struct.TYPE_15__ = type { i32 }
%struct.TYPE_16__ = type { %struct.TYPE_18__*, %struct.TYPE_14__* }
%struct.TYPE_18__ = type { i32 }
%struct.TYPE_17__ = type { %struct.TYPE_14__* }

@bfd_link_hash_indirect = common dso_local global i64 0, align 8
@TRUE = common dso_local global i32 0, align 4
@bfd_link_hash_warning = common dso_local global i64 0, align 8
@FALSE = common dso_local global i32 0, align 4
@PLT_INITIAL_ENTRY_SIZE = common dso_local global i64 0, align 8
@PLT_ENTRY_SIZE = common dso_local global i64 0, align 8
@GLINK_CALL_STUB_SIZE = common dso_local global i64 0, align 8
@TLS_TPRELGD = common dso_local global i32 0, align 4
@TLS_GD = common dso_local global i32 0, align 4
@TLS_TPREL = common dso_local global i32 0, align 4
@TLS_TLS = common dso_local global i32 0, align 4
@TLS_LD = common dso_local global i32 0, align 4
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
  %7 = alloca %struct.ppc_link_hash_table*, align 8
  %8 = alloca %struct.TYPE_14__*, align 8
  %9 = alloca %struct.ppc_link_hash_entry*, align 8
  %10 = alloca %struct.ppc_dyn_relocs*, align 8
  %11 = alloca %struct.got_entry*, align 8
  %12 = alloca %struct.plt_entry*, align 8
  %13 = alloca i32, align 4
  %14 = alloca %struct.got_entry*, align 8
  %15 = alloca i32, align 4
  %16 = alloca %struct.ppc_dyn_relocs**, align 8
  %17 = alloca %struct.TYPE_14__*, align 8
  store %struct.elf_link_hash_entry* %0, %struct.elf_link_hash_entry** %4, align 8
  store i8* %1, i8** %5, align 8
  %18 = load %struct.elf_link_hash_entry*, %struct.elf_link_hash_entry** %4, align 8
  %19 = getelementptr inbounds %struct.elf_link_hash_entry, %struct.elf_link_hash_entry* %18, i32 0, i32 6
  %20 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = load i64, i64* @bfd_link_hash_indirect, align 8
  %23 = icmp eq i64 %21, %22
  br i1 %23, label %24, label %26

24:                                               ; preds = %2
  %25 = load i32, i32* @TRUE, align 4
  store i32 %25, i32* %3, align 4
  br label %580

26:                                               ; preds = %2
  %27 = load %struct.elf_link_hash_entry*, %struct.elf_link_hash_entry** %4, align 8
  %28 = getelementptr inbounds %struct.elf_link_hash_entry, %struct.elf_link_hash_entry* %27, i32 0, i32 6
  %29 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = load i64, i64* @bfd_link_hash_warning, align 8
  %32 = icmp eq i64 %30, %31
  br i1 %32, label %33, label %41

33:                                               ; preds = %26
  %34 = load %struct.elf_link_hash_entry*, %struct.elf_link_hash_entry** %4, align 8
  %35 = getelementptr inbounds %struct.elf_link_hash_entry, %struct.elf_link_hash_entry* %34, i32 0, i32 6
  %36 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %35, i32 0, i32 1
  %37 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = inttoptr i64 %39 to %struct.elf_link_hash_entry*
  store %struct.elf_link_hash_entry* %40, %struct.elf_link_hash_entry** %4, align 8
  br label %41

41:                                               ; preds = %33, %26
  %42 = load i8*, i8** %5, align 8
  %43 = bitcast i8* %42 to %struct.bfd_link_info*
  store %struct.bfd_link_info* %43, %struct.bfd_link_info** %6, align 8
  %44 = load %struct.bfd_link_info*, %struct.bfd_link_info** %6, align 8
  %45 = call %struct.ppc_link_hash_table* @ppc_hash_table(%struct.bfd_link_info* %44)
  store %struct.ppc_link_hash_table* %45, %struct.ppc_link_hash_table** %7, align 8
  %46 = load %struct.ppc_link_hash_table*, %struct.ppc_link_hash_table** %7, align 8
  %47 = getelementptr inbounds %struct.ppc_link_hash_table, %struct.ppc_link_hash_table* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %161

51:                                               ; preds = %41
  %52 = load %struct.elf_link_hash_entry*, %struct.elf_link_hash_entry** %4, align 8
  %53 = getelementptr inbounds %struct.elf_link_hash_entry, %struct.elf_link_hash_entry* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 8
  %55 = icmp ne i32 %54, -1
  br i1 %55, label %56, label %161

56:                                               ; preds = %51
  %57 = load %struct.bfd_link_info*, %struct.bfd_link_info** %6, align 8
  %58 = getelementptr inbounds %struct.bfd_link_info, %struct.bfd_link_info* %57, i32 0, i32 0
  %59 = load i64, i64* %58, align 8
  %60 = load %struct.elf_link_hash_entry*, %struct.elf_link_hash_entry** %4, align 8
  %61 = call i64 @WILL_CALL_FINISH_DYNAMIC_SYMBOL(i32 1, i64 %59, %struct.elf_link_hash_entry* %60)
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %161

63:                                               ; preds = %56
  %64 = load i32, i32* @FALSE, align 4
  store i32 %64, i32* %13, align 4
  %65 = load %struct.elf_link_hash_entry*, %struct.elf_link_hash_entry** %4, align 8
  %66 = getelementptr inbounds %struct.elf_link_hash_entry, %struct.elf_link_hash_entry* %65, i32 0, i32 9
  %67 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %66, i32 0, i32 0
  %68 = load %struct.plt_entry*, %struct.plt_entry** %67, align 8
  store %struct.plt_entry* %68, %struct.plt_entry** %12, align 8
  br label %69

69:                                               ; preds = %147, %63
  %70 = load %struct.plt_entry*, %struct.plt_entry** %12, align 8
  %71 = icmp ne %struct.plt_entry* %70, null
  br i1 %71, label %72, label %151

72:                                               ; preds = %69
  %73 = load %struct.plt_entry*, %struct.plt_entry** %12, align 8
  %74 = getelementptr inbounds %struct.plt_entry, %struct.plt_entry* %73, i32 0, i32 0
  %75 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %74, i32 0, i32 0
  %76 = load i64, i64* %75, align 8
  %77 = icmp sgt i64 %76, 0
  br i1 %77, label %78, label %142

78:                                               ; preds = %72
  %79 = load %struct.ppc_link_hash_table*, %struct.ppc_link_hash_table** %7, align 8
  %80 = getelementptr inbounds %struct.ppc_link_hash_table, %struct.ppc_link_hash_table* %79, i32 0, i32 3
  %81 = load %struct.TYPE_14__*, %struct.TYPE_14__** %80, align 8
  store %struct.TYPE_14__* %81, %struct.TYPE_14__** %8, align 8
  %82 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %83 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %82, i32 0, i32 0
  %84 = load i64, i64* %83, align 8
  %85 = icmp eq i64 %84, 0
  br i1 %85, label %86, label %92

86:                                               ; preds = %78
  %87 = load i64, i64* @PLT_INITIAL_ENTRY_SIZE, align 8
  %88 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %89 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %88, i32 0, i32 0
  %90 = load i64, i64* %89, align 8
  %91 = add nsw i64 %90, %87
  store i64 %91, i64* %89, align 8
  br label %92

92:                                               ; preds = %86, %78
  %93 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %94 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %93, i32 0, i32 0
  %95 = load i64, i64* %94, align 8
  %96 = load %struct.plt_entry*, %struct.plt_entry** %12, align 8
  %97 = getelementptr inbounds %struct.plt_entry, %struct.plt_entry* %96, i32 0, i32 0
  %98 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %97, i32 0, i32 1
  store i64 %95, i64* %98, align 8
  %99 = load i64, i64* @PLT_ENTRY_SIZE, align 8
  %100 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %101 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %100, i32 0, i32 0
  %102 = load i64, i64* %101, align 8
  %103 = add nsw i64 %102, %99
  store i64 %103, i64* %101, align 8
  %104 = load %struct.ppc_link_hash_table*, %struct.ppc_link_hash_table** %7, align 8
  %105 = getelementptr inbounds %struct.ppc_link_hash_table, %struct.ppc_link_hash_table* %104, i32 0, i32 2
  %106 = load %struct.TYPE_14__*, %struct.TYPE_14__** %105, align 8
  store %struct.TYPE_14__* %106, %struct.TYPE_14__** %8, align 8
  %107 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %108 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %107, i32 0, i32 0
  %109 = load i64, i64* %108, align 8
  %110 = icmp eq i64 %109, 0
  br i1 %110, label %111, label %117

111:                                              ; preds = %92
  %112 = load i64, i64* @GLINK_CALL_STUB_SIZE, align 8
  %113 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %114 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %113, i32 0, i32 0
  %115 = load i64, i64* %114, align 8
  %116 = add nsw i64 %115, %112
  store i64 %116, i64* %114, align 8
  br label %117

117:                                              ; preds = %111, %92
  %118 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %119 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %118, i32 0, i32 0
  %120 = load i64, i64* %119, align 8
  %121 = load i64, i64* @GLINK_CALL_STUB_SIZE, align 8
  %122 = add nsw i64 %121, 262144
  %123 = icmp sge i64 %120, %122
  br i1 %123, label %124, label %129

124:                                              ; preds = %117
  %125 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %126 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %125, i32 0, i32 0
  %127 = load i64, i64* %126, align 8
  %128 = add nsw i64 %127, 4
  store i64 %128, i64* %126, align 8
  br label %129

129:                                              ; preds = %124, %117
  %130 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %131 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %130, i32 0, i32 0
  %132 = load i64, i64* %131, align 8
  %133 = add nsw i64 %132, 8
  store i64 %133, i64* %131, align 8
  %134 = load %struct.ppc_link_hash_table*, %struct.ppc_link_hash_table** %7, align 8
  %135 = getelementptr inbounds %struct.ppc_link_hash_table, %struct.ppc_link_hash_table* %134, i32 0, i32 1
  %136 = load %struct.TYPE_14__*, %struct.TYPE_14__** %135, align 8
  store %struct.TYPE_14__* %136, %struct.TYPE_14__** %8, align 8
  %137 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %138 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %137, i32 0, i32 0
  %139 = load i64, i64* %138, align 8
  %140 = add i64 %139, 4
  store i64 %140, i64* %138, align 8
  %141 = load i32, i32* @TRUE, align 4
  store i32 %141, i32* %13, align 4
  br label %146

142:                                              ; preds = %72
  %143 = load %struct.plt_entry*, %struct.plt_entry** %12, align 8
  %144 = getelementptr inbounds %struct.plt_entry, %struct.plt_entry* %143, i32 0, i32 0
  %145 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %144, i32 0, i32 1
  store i64 -1, i64* %145, align 8
  br label %146

146:                                              ; preds = %142, %129
  br label %147

147:                                              ; preds = %146
  %148 = load %struct.plt_entry*, %struct.plt_entry** %12, align 8
  %149 = getelementptr inbounds %struct.plt_entry, %struct.plt_entry* %148, i32 0, i32 1
  %150 = load %struct.plt_entry*, %struct.plt_entry** %149, align 8
  store %struct.plt_entry* %150, %struct.plt_entry** %12, align 8
  br label %69

151:                                              ; preds = %69
  %152 = load i32, i32* %13, align 4
  %153 = icmp ne i32 %152, 0
  br i1 %153, label %160, label %154

154:                                              ; preds = %151
  %155 = load %struct.elf_link_hash_entry*, %struct.elf_link_hash_entry** %4, align 8
  %156 = getelementptr inbounds %struct.elf_link_hash_entry, %struct.elf_link_hash_entry* %155, i32 0, i32 9
  %157 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %156, i32 0, i32 0
  store %struct.plt_entry* null, %struct.plt_entry** %157, align 8
  %158 = load %struct.elf_link_hash_entry*, %struct.elf_link_hash_entry** %4, align 8
  %159 = getelementptr inbounds %struct.elf_link_hash_entry, %struct.elf_link_hash_entry* %158, i32 0, i32 8
  store i64 0, i64* %159, align 8
  br label %160

160:                                              ; preds = %154, %151
  br label %167

161:                                              ; preds = %56, %51, %41
  %162 = load %struct.elf_link_hash_entry*, %struct.elf_link_hash_entry** %4, align 8
  %163 = getelementptr inbounds %struct.elf_link_hash_entry, %struct.elf_link_hash_entry* %162, i32 0, i32 9
  %164 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %163, i32 0, i32 0
  store %struct.plt_entry* null, %struct.plt_entry** %164, align 8
  %165 = load %struct.elf_link_hash_entry*, %struct.elf_link_hash_entry** %4, align 8
  %166 = getelementptr inbounds %struct.elf_link_hash_entry, %struct.elf_link_hash_entry* %165, i32 0, i32 8
  store i64 0, i64* %166, align 8
  br label %167

167:                                              ; preds = %161, %160
  %168 = load %struct.elf_link_hash_entry*, %struct.elf_link_hash_entry** %4, align 8
  %169 = bitcast %struct.elf_link_hash_entry* %168 to %struct.ppc_link_hash_entry*
  store %struct.ppc_link_hash_entry* %169, %struct.ppc_link_hash_entry** %9, align 8
  %170 = load %struct.ppc_link_hash_entry*, %struct.ppc_link_hash_entry** %9, align 8
  %171 = getelementptr inbounds %struct.ppc_link_hash_entry, %struct.ppc_link_hash_entry* %170, i32 0, i32 0
  %172 = load i32, i32* %171, align 8
  %173 = load i32, i32* @TLS_TPRELGD, align 4
  %174 = and i32 %172, %173
  %175 = icmp ne i32 %174, 0
  br i1 %175, label %176, label %262

176:                                              ; preds = %167
  %177 = load %struct.elf_link_hash_entry*, %struct.elf_link_hash_entry** %4, align 8
  %178 = getelementptr inbounds %struct.elf_link_hash_entry, %struct.elf_link_hash_entry* %177, i32 0, i32 7
  %179 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %178, i32 0, i32 0
  %180 = load %struct.got_entry*, %struct.got_entry** %179, align 8
  store %struct.got_entry* %180, %struct.got_entry** %11, align 8
  br label %181

181:                                              ; preds = %257, %176
  %182 = load %struct.got_entry*, %struct.got_entry** %11, align 8
  %183 = icmp ne %struct.got_entry* %182, null
  br i1 %183, label %184, label %261

184:                                              ; preds = %181
  %185 = load %struct.got_entry*, %struct.got_entry** %11, align 8
  %186 = getelementptr inbounds %struct.got_entry, %struct.got_entry* %185, i32 0, i32 3
  %187 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %186, i32 0, i32 0
  %188 = load i64, i64* %187, align 8
  %189 = icmp sgt i64 %188, 0
  br i1 %189, label %190, label %256

190:                                              ; preds = %184
  %191 = load %struct.got_entry*, %struct.got_entry** %11, align 8
  %192 = getelementptr inbounds %struct.got_entry, %struct.got_entry* %191, i32 0, i32 0
  %193 = load i32, i32* %192, align 8
  %194 = load i32, i32* @TLS_GD, align 4
  %195 = and i32 %193, %194
  %196 = icmp ne i32 %195, 0
  br i1 %196, label %197, label %256

197:                                              ; preds = %190
  %198 = load %struct.elf_link_hash_entry*, %struct.elf_link_hash_entry** %4, align 8
  %199 = getelementptr inbounds %struct.elf_link_hash_entry, %struct.elf_link_hash_entry* %198, i32 0, i32 7
  %200 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %199, i32 0, i32 0
  %201 = load %struct.got_entry*, %struct.got_entry** %200, align 8
  store %struct.got_entry* %201, %struct.got_entry** %14, align 8
  br label %202

202:                                              ; preds = %239, %197
  %203 = load %struct.got_entry*, %struct.got_entry** %14, align 8
  %204 = icmp ne %struct.got_entry* %203, null
  br i1 %204, label %205, label %243

205:                                              ; preds = %202
  %206 = load %struct.got_entry*, %struct.got_entry** %14, align 8
  %207 = getelementptr inbounds %struct.got_entry, %struct.got_entry* %206, i32 0, i32 3
  %208 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %207, i32 0, i32 0
  %209 = load i64, i64* %208, align 8
  %210 = icmp sgt i64 %209, 0
  br i1 %210, label %211, label %238

211:                                              ; preds = %205
  %212 = load %struct.got_entry*, %struct.got_entry** %14, align 8
  %213 = getelementptr inbounds %struct.got_entry, %struct.got_entry* %212, i32 0, i32 0
  %214 = load i32, i32* %213, align 8
  %215 = load i32, i32* @TLS_TPREL, align 4
  %216 = and i32 %214, %215
  %217 = icmp ne i32 %216, 0
  br i1 %217, label %218, label %238

218:                                              ; preds = %211
  %219 = load %struct.got_entry*, %struct.got_entry** %14, align 8
  %220 = getelementptr inbounds %struct.got_entry, %struct.got_entry* %219, i32 0, i32 1
  %221 = load i64, i64* %220, align 8
  %222 = load %struct.got_entry*, %struct.got_entry** %11, align 8
  %223 = getelementptr inbounds %struct.got_entry, %struct.got_entry* %222, i32 0, i32 1
  %224 = load i64, i64* %223, align 8
  %225 = icmp eq i64 %221, %224
  br i1 %225, label %226, label %238

226:                                              ; preds = %218
  %227 = load %struct.got_entry*, %struct.got_entry** %14, align 8
  %228 = getelementptr inbounds %struct.got_entry, %struct.got_entry* %227, i32 0, i32 2
  %229 = load i64, i64* %228, align 8
  %230 = load %struct.got_entry*, %struct.got_entry** %11, align 8
  %231 = getelementptr inbounds %struct.got_entry, %struct.got_entry* %230, i32 0, i32 2
  %232 = load i64, i64* %231, align 8
  %233 = icmp eq i64 %229, %232
  br i1 %233, label %234, label %238

234:                                              ; preds = %226
  %235 = load %struct.got_entry*, %struct.got_entry** %11, align 8
  %236 = getelementptr inbounds %struct.got_entry, %struct.got_entry* %235, i32 0, i32 3
  %237 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %236, i32 0, i32 0
  store i64 0, i64* %237, align 8
  br label %243

238:                                              ; preds = %226, %218, %211, %205
  br label %239

239:                                              ; preds = %238
  %240 = load %struct.got_entry*, %struct.got_entry** %14, align 8
  %241 = getelementptr inbounds %struct.got_entry, %struct.got_entry* %240, i32 0, i32 4
  %242 = load %struct.got_entry*, %struct.got_entry** %241, align 8
  store %struct.got_entry* %242, %struct.got_entry** %14, align 8
  br label %202

243:                                              ; preds = %234, %202
  %244 = load %struct.got_entry*, %struct.got_entry** %11, align 8
  %245 = getelementptr inbounds %struct.got_entry, %struct.got_entry* %244, i32 0, i32 3
  %246 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %245, i32 0, i32 0
  %247 = load i64, i64* %246, align 8
  %248 = icmp ne i64 %247, 0
  br i1 %248, label %249, label %255

249:                                              ; preds = %243
  %250 = load i32, i32* @TLS_TLS, align 4
  %251 = load i32, i32* @TLS_TPREL, align 4
  %252 = or i32 %250, %251
  %253 = load %struct.got_entry*, %struct.got_entry** %11, align 8
  %254 = getelementptr inbounds %struct.got_entry, %struct.got_entry* %253, i32 0, i32 0
  store i32 %252, i32* %254, align 8
  br label %255

255:                                              ; preds = %249, %243
  br label %256

256:                                              ; preds = %255, %190, %184
  br label %257

257:                                              ; preds = %256
  %258 = load %struct.got_entry*, %struct.got_entry** %11, align 8
  %259 = getelementptr inbounds %struct.got_entry, %struct.got_entry* %258, i32 0, i32 4
  %260 = load %struct.got_entry*, %struct.got_entry** %259, align 8
  store %struct.got_entry* %260, %struct.got_entry** %11, align 8
  br label %181

261:                                              ; preds = %181
  br label %262

262:                                              ; preds = %261, %167
  %263 = load %struct.elf_link_hash_entry*, %struct.elf_link_hash_entry** %4, align 8
  %264 = getelementptr inbounds %struct.elf_link_hash_entry, %struct.elf_link_hash_entry* %263, i32 0, i32 7
  %265 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %264, i32 0, i32 0
  %266 = load %struct.got_entry*, %struct.got_entry** %265, align 8
  store %struct.got_entry* %266, %struct.got_entry** %11, align 8
  br label %267

267:                                              ; preds = %406, %262
  %268 = load %struct.got_entry*, %struct.got_entry** %11, align 8
  %269 = icmp ne %struct.got_entry* %268, null
  br i1 %269, label %270, label %410

270:                                              ; preds = %267
  %271 = load %struct.got_entry*, %struct.got_entry** %11, align 8
  %272 = getelementptr inbounds %struct.got_entry, %struct.got_entry* %271, i32 0, i32 3
  %273 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %272, i32 0, i32 0
  %274 = load i64, i64* %273, align 8
  %275 = icmp sgt i64 %274, 0
  br i1 %275, label %276, label %401

276:                                              ; preds = %270
  %277 = load %struct.elf_link_hash_entry*, %struct.elf_link_hash_entry** %4, align 8
  %278 = getelementptr inbounds %struct.elf_link_hash_entry, %struct.elf_link_hash_entry* %277, i32 0, i32 0
  %279 = load i32, i32* %278, align 8
  %280 = icmp eq i32 %279, -1
  br i1 %280, label %281, label %294

281:                                              ; preds = %276
  %282 = load %struct.elf_link_hash_entry*, %struct.elf_link_hash_entry** %4, align 8
  %283 = getelementptr inbounds %struct.elf_link_hash_entry, %struct.elf_link_hash_entry* %282, i32 0, i32 1
  %284 = load i32, i32* %283, align 4
  %285 = icmp ne i32 %284, 0
  br i1 %285, label %294, label %286

286:                                              ; preds = %281
  %287 = load %struct.bfd_link_info*, %struct.bfd_link_info** %6, align 8
  %288 = load %struct.elf_link_hash_entry*, %struct.elf_link_hash_entry** %4, align 8
  %289 = call i32 @bfd_elf_link_record_dynamic_symbol(%struct.bfd_link_info* %287, %struct.elf_link_hash_entry* %288)
  %290 = icmp ne i32 %289, 0
  br i1 %290, label %293, label %291

291:                                              ; preds = %286
  %292 = load i32, i32* @FALSE, align 4
  store i32 %292, i32* %3, align 4
  br label %580

293:                                              ; preds = %286
  br label %294

294:                                              ; preds = %293, %281, %276
  %295 = load %struct.got_entry*, %struct.got_entry** %11, align 8
  %296 = getelementptr inbounds %struct.got_entry, %struct.got_entry* %295, i32 0, i32 0
  %297 = load i32, i32* %296, align 8
  %298 = load i32, i32* @TLS_LD, align 4
  %299 = and i32 %297, %298
  %300 = icmp ne i32 %299, 0
  br i1 %300, label %301, label %317

301:                                              ; preds = %294
  %302 = load %struct.elf_link_hash_entry*, %struct.elf_link_hash_entry** %4, align 8
  %303 = getelementptr inbounds %struct.elf_link_hash_entry, %struct.elf_link_hash_entry* %302, i32 0, i32 3
  %304 = load i64, i64* %303, align 8
  %305 = icmp ne i64 %304, 0
  br i1 %305, label %317, label %306

306:                                              ; preds = %301
  %307 = load %struct.got_entry*, %struct.got_entry** %11, align 8
  %308 = getelementptr inbounds %struct.got_entry, %struct.got_entry* %307, i32 0, i32 2
  %309 = load i64, i64* %308, align 8
  %310 = call %struct.TYPE_15__* @ppc64_tlsld_got(i64 %309)
  %311 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %310, i32 0, i32 0
  %312 = load i32, i32* %311, align 4
  %313 = add nsw i32 %312, 1
  store i32 %313, i32* %311, align 4
  %314 = load %struct.got_entry*, %struct.got_entry** %11, align 8
  %315 = getelementptr inbounds %struct.got_entry, %struct.got_entry* %314, i32 0, i32 3
  %316 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %315, i32 0, i32 1
  store i64 -1, i64* %316, align 8
  br label %406

317:                                              ; preds = %301, %294
  %318 = load %struct.got_entry*, %struct.got_entry** %11, align 8
  %319 = getelementptr inbounds %struct.got_entry, %struct.got_entry* %318, i32 0, i32 2
  %320 = load i64, i64* %319, align 8
  %321 = call %struct.TYPE_16__* @ppc64_elf_tdata(i64 %320)
  %322 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %321, i32 0, i32 1
  %323 = load %struct.TYPE_14__*, %struct.TYPE_14__** %322, align 8
  store %struct.TYPE_14__* %323, %struct.TYPE_14__** %8, align 8
  %324 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %325 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %324, i32 0, i32 0
  %326 = load i64, i64* %325, align 8
  %327 = load %struct.got_entry*, %struct.got_entry** %11, align 8
  %328 = getelementptr inbounds %struct.got_entry, %struct.got_entry* %327, i32 0, i32 3
  %329 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %328, i32 0, i32 1
  store i64 %326, i64* %329, align 8
  %330 = load %struct.got_entry*, %struct.got_entry** %11, align 8
  %331 = getelementptr inbounds %struct.got_entry, %struct.got_entry* %330, i32 0, i32 0
  %332 = load i32, i32* %331, align 8
  %333 = load %struct.ppc_link_hash_entry*, %struct.ppc_link_hash_entry** %9, align 8
  %334 = getelementptr inbounds %struct.ppc_link_hash_entry, %struct.ppc_link_hash_entry* %333, i32 0, i32 0
  %335 = load i32, i32* %334, align 8
  %336 = and i32 %332, %335
  %337 = load i32, i32* @TLS_GD, align 4
  %338 = load i32, i32* @TLS_LD, align 4
  %339 = or i32 %337, %338
  %340 = and i32 %336, %339
  %341 = icmp ne i32 %340, 0
  %342 = zext i1 %341 to i64
  %343 = select i1 %341, i32 16, i32 8
  %344 = sext i32 %343 to i64
  %345 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %346 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %345, i32 0, i32 0
  %347 = load i64, i64* %346, align 8
  %348 = add nsw i64 %347, %344
  store i64 %348, i64* %346, align 8
  %349 = load %struct.ppc_link_hash_table*, %struct.ppc_link_hash_table** %7, align 8
  %350 = getelementptr inbounds %struct.ppc_link_hash_table, %struct.ppc_link_hash_table* %349, i32 0, i32 0
  %351 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %350, i32 0, i32 0
  %352 = load i32, i32* %351, align 8
  store i32 %352, i32* %15, align 4
  %353 = load %struct.bfd_link_info*, %struct.bfd_link_info** %6, align 8
  %354 = getelementptr inbounds %struct.bfd_link_info, %struct.bfd_link_info* %353, i32 0, i32 0
  %355 = load i64, i64* %354, align 8
  %356 = icmp ne i64 %355, 0
  br i1 %356, label %362, label %357

357:                                              ; preds = %317
  %358 = load i32, i32* %15, align 4
  %359 = load %struct.elf_link_hash_entry*, %struct.elf_link_hash_entry** %4, align 8
  %360 = call i64 @WILL_CALL_FINISH_DYNAMIC_SYMBOL(i32 %358, i64 0, %struct.elf_link_hash_entry* %359)
  %361 = icmp ne i64 %360, 0
  br i1 %361, label %362, label %400

362:                                              ; preds = %357, %317
  %363 = load %struct.elf_link_hash_entry*, %struct.elf_link_hash_entry** %4, align 8
  %364 = getelementptr inbounds %struct.elf_link_hash_entry, %struct.elf_link_hash_entry* %363, i32 0, i32 5
  %365 = load i32, i32* %364, align 4
  %366 = call i64 @ELF_ST_VISIBILITY(i32 %365)
  %367 = load i64, i64* @STV_DEFAULT, align 8
  %368 = icmp eq i64 %366, %367
  br i1 %368, label %376, label %369

369:                                              ; preds = %362
  %370 = load %struct.elf_link_hash_entry*, %struct.elf_link_hash_entry** %4, align 8
  %371 = getelementptr inbounds %struct.elf_link_hash_entry, %struct.elf_link_hash_entry* %370, i32 0, i32 6
  %372 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %371, i32 0, i32 0
  %373 = load i64, i64* %372, align 8
  %374 = load i64, i64* @bfd_link_hash_undefweak, align 8
  %375 = icmp ne i64 %373, %374
  br i1 %375, label %376, label %400

376:                                              ; preds = %369, %362
  %377 = load %struct.got_entry*, %struct.got_entry** %11, align 8
  %378 = getelementptr inbounds %struct.got_entry, %struct.got_entry* %377, i32 0, i32 0
  %379 = load i32, i32* %378, align 8
  %380 = load %struct.ppc_link_hash_entry*, %struct.ppc_link_hash_entry** %9, align 8
  %381 = getelementptr inbounds %struct.ppc_link_hash_entry, %struct.ppc_link_hash_entry* %380, i32 0, i32 0
  %382 = load i32, i32* %381, align 8
  %383 = and i32 %379, %382
  %384 = load i32, i32* @TLS_GD, align 4
  %385 = and i32 %383, %384
  %386 = icmp ne i32 %385, 0
  %387 = zext i1 %386 to i64
  %388 = select i1 %386, i64 8, i64 4
  %389 = load %struct.got_entry*, %struct.got_entry** %11, align 8
  %390 = getelementptr inbounds %struct.got_entry, %struct.got_entry* %389, i32 0, i32 2
  %391 = load i64, i64* %390, align 8
  %392 = call %struct.TYPE_16__* @ppc64_elf_tdata(i64 %391)
  %393 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %392, i32 0, i32 0
  %394 = load %struct.TYPE_18__*, %struct.TYPE_18__** %393, align 8
  %395 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %394, i32 0, i32 0
  %396 = load i32, i32* %395, align 4
  %397 = sext i32 %396 to i64
  %398 = add i64 %397, %388
  %399 = trunc i64 %398 to i32
  store i32 %399, i32* %395, align 4
  br label %400

400:                                              ; preds = %376, %369, %357
  br label %405

401:                                              ; preds = %270
  %402 = load %struct.got_entry*, %struct.got_entry** %11, align 8
  %403 = getelementptr inbounds %struct.got_entry, %struct.got_entry* %402, i32 0, i32 3
  %404 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %403, i32 0, i32 1
  store i64 -1, i64* %404, align 8
  br label %405

405:                                              ; preds = %401, %400
  br label %406

406:                                              ; preds = %405, %306
  %407 = load %struct.got_entry*, %struct.got_entry** %11, align 8
  %408 = getelementptr inbounds %struct.got_entry, %struct.got_entry* %407, i32 0, i32 4
  %409 = load %struct.got_entry*, %struct.got_entry** %408, align 8
  store %struct.got_entry* %409, %struct.got_entry** %11, align 8
  br label %267

410:                                              ; preds = %267
  %411 = load %struct.ppc_link_hash_entry*, %struct.ppc_link_hash_entry** %9, align 8
  %412 = getelementptr inbounds %struct.ppc_link_hash_entry, %struct.ppc_link_hash_entry* %411, i32 0, i32 1
  %413 = load %struct.ppc_dyn_relocs*, %struct.ppc_dyn_relocs** %412, align 8
  %414 = icmp eq %struct.ppc_dyn_relocs* %413, null
  br i1 %414, label %415, label %417

415:                                              ; preds = %410
  %416 = load i32, i32* @TRUE, align 4
  store i32 %416, i32* %3, align 4
  br label %580

417:                                              ; preds = %410
  %418 = load %struct.bfd_link_info*, %struct.bfd_link_info** %6, align 8
  %419 = getelementptr inbounds %struct.bfd_link_info, %struct.bfd_link_info* %418, i32 0, i32 0
  %420 = load i64, i64* %419, align 8
  %421 = icmp ne i64 %420, 0
  br i1 %421, label %422, label %503

422:                                              ; preds = %417
  %423 = load %struct.bfd_link_info*, %struct.bfd_link_info** %6, align 8
  %424 = load %struct.elf_link_hash_entry*, %struct.elf_link_hash_entry** %4, align 8
  %425 = call i64 @SYMBOL_CALLS_LOCAL(%struct.bfd_link_info* %423, %struct.elf_link_hash_entry* %424)
  %426 = icmp ne i64 %425, 0
  br i1 %426, label %427, label %460

427:                                              ; preds = %422
  %428 = load %struct.ppc_link_hash_entry*, %struct.ppc_link_hash_entry** %9, align 8
  %429 = getelementptr inbounds %struct.ppc_link_hash_entry, %struct.ppc_link_hash_entry* %428, i32 0, i32 1
  store %struct.ppc_dyn_relocs** %429, %struct.ppc_dyn_relocs*** %16, align 8
  br label %430

430:                                              ; preds = %458, %427
  %431 = load %struct.ppc_dyn_relocs**, %struct.ppc_dyn_relocs*** %16, align 8
  %432 = load %struct.ppc_dyn_relocs*, %struct.ppc_dyn_relocs** %431, align 8
  store %struct.ppc_dyn_relocs* %432, %struct.ppc_dyn_relocs** %10, align 8
  %433 = icmp ne %struct.ppc_dyn_relocs* %432, null
  br i1 %433, label %434, label %459

434:                                              ; preds = %430
  %435 = load %struct.ppc_dyn_relocs*, %struct.ppc_dyn_relocs** %10, align 8
  %436 = getelementptr inbounds %struct.ppc_dyn_relocs, %struct.ppc_dyn_relocs* %435, i32 0, i32 3
  %437 = load i64, i64* %436, align 8
  %438 = load %struct.ppc_dyn_relocs*, %struct.ppc_dyn_relocs** %10, align 8
  %439 = getelementptr inbounds %struct.ppc_dyn_relocs, %struct.ppc_dyn_relocs* %438, i32 0, i32 0
  %440 = load i32, i32* %439, align 8
  %441 = sext i32 %440 to i64
  %442 = sub nsw i64 %441, %437
  %443 = trunc i64 %442 to i32
  store i32 %443, i32* %439, align 8
  %444 = load %struct.ppc_dyn_relocs*, %struct.ppc_dyn_relocs** %10, align 8
  %445 = getelementptr inbounds %struct.ppc_dyn_relocs, %struct.ppc_dyn_relocs* %444, i32 0, i32 3
  store i64 0, i64* %445, align 8
  %446 = load %struct.ppc_dyn_relocs*, %struct.ppc_dyn_relocs** %10, align 8
  %447 = getelementptr inbounds %struct.ppc_dyn_relocs, %struct.ppc_dyn_relocs* %446, i32 0, i32 0
  %448 = load i32, i32* %447, align 8
  %449 = icmp eq i32 %448, 0
  br i1 %449, label %450, label %455

450:                                              ; preds = %434
  %451 = load %struct.ppc_dyn_relocs*, %struct.ppc_dyn_relocs** %10, align 8
  %452 = getelementptr inbounds %struct.ppc_dyn_relocs, %struct.ppc_dyn_relocs* %451, i32 0, i32 2
  %453 = load %struct.ppc_dyn_relocs*, %struct.ppc_dyn_relocs** %452, align 8
  %454 = load %struct.ppc_dyn_relocs**, %struct.ppc_dyn_relocs*** %16, align 8
  store %struct.ppc_dyn_relocs* %453, %struct.ppc_dyn_relocs** %454, align 8
  br label %458

455:                                              ; preds = %434
  %456 = load %struct.ppc_dyn_relocs*, %struct.ppc_dyn_relocs** %10, align 8
  %457 = getelementptr inbounds %struct.ppc_dyn_relocs, %struct.ppc_dyn_relocs* %456, i32 0, i32 2
  store %struct.ppc_dyn_relocs** %457, %struct.ppc_dyn_relocs*** %16, align 8
  br label %458

458:                                              ; preds = %455, %450
  br label %430

459:                                              ; preds = %430
  br label %460

460:                                              ; preds = %459, %422
  %461 = load %struct.ppc_link_hash_entry*, %struct.ppc_link_hash_entry** %9, align 8
  %462 = getelementptr inbounds %struct.ppc_link_hash_entry, %struct.ppc_link_hash_entry* %461, i32 0, i32 1
  %463 = load %struct.ppc_dyn_relocs*, %struct.ppc_dyn_relocs** %462, align 8
  %464 = icmp ne %struct.ppc_dyn_relocs* %463, null
  br i1 %464, label %465, label %502

465:                                              ; preds = %460
  %466 = load %struct.elf_link_hash_entry*, %struct.elf_link_hash_entry** %4, align 8
  %467 = getelementptr inbounds %struct.elf_link_hash_entry, %struct.elf_link_hash_entry* %466, i32 0, i32 6
  %468 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %467, i32 0, i32 0
  %469 = load i64, i64* %468, align 8
  %470 = load i64, i64* @bfd_link_hash_undefweak, align 8
  %471 = icmp eq i64 %469, %470
  br i1 %471, label %472, label %502

472:                                              ; preds = %465
  %473 = load %struct.elf_link_hash_entry*, %struct.elf_link_hash_entry** %4, align 8
  %474 = getelementptr inbounds %struct.elf_link_hash_entry, %struct.elf_link_hash_entry* %473, i32 0, i32 5
  %475 = load i32, i32* %474, align 4
  %476 = call i64 @ELF_ST_VISIBILITY(i32 %475)
  %477 = load i64, i64* @STV_DEFAULT, align 8
  %478 = icmp ne i64 %476, %477
  br i1 %478, label %479, label %482

479:                                              ; preds = %472
  %480 = load %struct.ppc_link_hash_entry*, %struct.ppc_link_hash_entry** %9, align 8
  %481 = getelementptr inbounds %struct.ppc_link_hash_entry, %struct.ppc_link_hash_entry* %480, i32 0, i32 1
  store %struct.ppc_dyn_relocs* null, %struct.ppc_dyn_relocs** %481, align 8
  br label %501

482:                                              ; preds = %472
  %483 = load %struct.elf_link_hash_entry*, %struct.elf_link_hash_entry** %4, align 8
  %484 = getelementptr inbounds %struct.elf_link_hash_entry, %struct.elf_link_hash_entry* %483, i32 0, i32 0
  %485 = load i32, i32* %484, align 8
  %486 = icmp eq i32 %485, -1
  br i1 %486, label %487, label %500

487:                                              ; preds = %482
  %488 = load %struct.elf_link_hash_entry*, %struct.elf_link_hash_entry** %4, align 8
  %489 = getelementptr inbounds %struct.elf_link_hash_entry, %struct.elf_link_hash_entry* %488, i32 0, i32 1
  %490 = load i32, i32* %489, align 4
  %491 = icmp ne i32 %490, 0
  br i1 %491, label %500, label %492

492:                                              ; preds = %487
  %493 = load %struct.bfd_link_info*, %struct.bfd_link_info** %6, align 8
  %494 = load %struct.elf_link_hash_entry*, %struct.elf_link_hash_entry** %4, align 8
  %495 = call i32 @bfd_elf_link_record_dynamic_symbol(%struct.bfd_link_info* %493, %struct.elf_link_hash_entry* %494)
  %496 = icmp ne i32 %495, 0
  br i1 %496, label %499, label %497

497:                                              ; preds = %492
  %498 = load i32, i32* @FALSE, align 4
  store i32 %498, i32* %3, align 4
  br label %580

499:                                              ; preds = %492
  br label %500

500:                                              ; preds = %499, %487, %482
  br label %501

501:                                              ; preds = %500, %479
  br label %502

502:                                              ; preds = %501, %465, %460
  br label %551

503:                                              ; preds = %417
  %504 = load i64, i64* @ELIMINATE_COPY_RELOCS, align 8
  %505 = icmp ne i64 %504, 0
  br i1 %505, label %506, label %550

506:                                              ; preds = %503
  %507 = load %struct.elf_link_hash_entry*, %struct.elf_link_hash_entry** %4, align 8
  %508 = getelementptr inbounds %struct.elf_link_hash_entry, %struct.elf_link_hash_entry* %507, i32 0, i32 4
  %509 = load i32, i32* %508, align 8
  %510 = icmp ne i32 %509, 0
  br i1 %510, label %546, label %511

511:                                              ; preds = %506
  %512 = load %struct.elf_link_hash_entry*, %struct.elf_link_hash_entry** %4, align 8
  %513 = getelementptr inbounds %struct.elf_link_hash_entry, %struct.elf_link_hash_entry* %512, i32 0, i32 3
  %514 = load i64, i64* %513, align 8
  %515 = icmp ne i64 %514, 0
  br i1 %515, label %516, label %546

516:                                              ; preds = %511
  %517 = load %struct.elf_link_hash_entry*, %struct.elf_link_hash_entry** %4, align 8
  %518 = getelementptr inbounds %struct.elf_link_hash_entry, %struct.elf_link_hash_entry* %517, i32 0, i32 2
  %519 = load i32, i32* %518, align 8
  %520 = icmp ne i32 %519, 0
  br i1 %520, label %546, label %521

521:                                              ; preds = %516
  %522 = load %struct.elf_link_hash_entry*, %struct.elf_link_hash_entry** %4, align 8
  %523 = getelementptr inbounds %struct.elf_link_hash_entry, %struct.elf_link_hash_entry* %522, i32 0, i32 0
  %524 = load i32, i32* %523, align 8
  %525 = icmp eq i32 %524, -1
  br i1 %525, label %526, label %539

526:                                              ; preds = %521
  %527 = load %struct.elf_link_hash_entry*, %struct.elf_link_hash_entry** %4, align 8
  %528 = getelementptr inbounds %struct.elf_link_hash_entry, %struct.elf_link_hash_entry* %527, i32 0, i32 1
  %529 = load i32, i32* %528, align 4
  %530 = icmp ne i32 %529, 0
  br i1 %530, label %539, label %531

531:                                              ; preds = %526
  %532 = load %struct.bfd_link_info*, %struct.bfd_link_info** %6, align 8
  %533 = load %struct.elf_link_hash_entry*, %struct.elf_link_hash_entry** %4, align 8
  %534 = call i32 @bfd_elf_link_record_dynamic_symbol(%struct.bfd_link_info* %532, %struct.elf_link_hash_entry* %533)
  %535 = icmp ne i32 %534, 0
  br i1 %535, label %538, label %536

536:                                              ; preds = %531
  %537 = load i32, i32* @FALSE, align 4
  store i32 %537, i32* %3, align 4
  br label %580

538:                                              ; preds = %531
  br label %539

539:                                              ; preds = %538, %526, %521
  %540 = load %struct.elf_link_hash_entry*, %struct.elf_link_hash_entry** %4, align 8
  %541 = getelementptr inbounds %struct.elf_link_hash_entry, %struct.elf_link_hash_entry* %540, i32 0, i32 0
  %542 = load i32, i32* %541, align 8
  %543 = icmp ne i32 %542, -1
  br i1 %543, label %544, label %545

544:                                              ; preds = %539
  br label %549

545:                                              ; preds = %539
  br label %546

546:                                              ; preds = %545, %516, %511, %506
  %547 = load %struct.ppc_link_hash_entry*, %struct.ppc_link_hash_entry** %9, align 8
  %548 = getelementptr inbounds %struct.ppc_link_hash_entry, %struct.ppc_link_hash_entry* %547, i32 0, i32 1
  store %struct.ppc_dyn_relocs* null, %struct.ppc_dyn_relocs** %548, align 8
  br label %549

549:                                              ; preds = %546, %544
  br label %550

550:                                              ; preds = %549, %503
  br label %551

551:                                              ; preds = %550, %502
  %552 = load %struct.ppc_link_hash_entry*, %struct.ppc_link_hash_entry** %9, align 8
  %553 = getelementptr inbounds %struct.ppc_link_hash_entry, %struct.ppc_link_hash_entry* %552, i32 0, i32 1
  %554 = load %struct.ppc_dyn_relocs*, %struct.ppc_dyn_relocs** %553, align 8
  store %struct.ppc_dyn_relocs* %554, %struct.ppc_dyn_relocs** %10, align 8
  br label %555

555:                                              ; preds = %574, %551
  %556 = load %struct.ppc_dyn_relocs*, %struct.ppc_dyn_relocs** %10, align 8
  %557 = icmp ne %struct.ppc_dyn_relocs* %556, null
  br i1 %557, label %558, label %578

558:                                              ; preds = %555
  %559 = load %struct.ppc_dyn_relocs*, %struct.ppc_dyn_relocs** %10, align 8
  %560 = getelementptr inbounds %struct.ppc_dyn_relocs, %struct.ppc_dyn_relocs* %559, i32 0, i32 1
  %561 = load i32, i32* %560, align 4
  %562 = call %struct.TYPE_17__* @elf_section_data(i32 %561)
  %563 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %562, i32 0, i32 0
  %564 = load %struct.TYPE_14__*, %struct.TYPE_14__** %563, align 8
  store %struct.TYPE_14__* %564, %struct.TYPE_14__** %17, align 8
  %565 = load %struct.ppc_dyn_relocs*, %struct.ppc_dyn_relocs** %10, align 8
  %566 = getelementptr inbounds %struct.ppc_dyn_relocs, %struct.ppc_dyn_relocs* %565, i32 0, i32 0
  %567 = load i32, i32* %566, align 8
  %568 = sext i32 %567 to i64
  %569 = mul i64 %568, 4
  %570 = load %struct.TYPE_14__*, %struct.TYPE_14__** %17, align 8
  %571 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %570, i32 0, i32 0
  %572 = load i64, i64* %571, align 8
  %573 = add i64 %572, %569
  store i64 %573, i64* %571, align 8
  br label %574

574:                                              ; preds = %558
  %575 = load %struct.ppc_dyn_relocs*, %struct.ppc_dyn_relocs** %10, align 8
  %576 = getelementptr inbounds %struct.ppc_dyn_relocs, %struct.ppc_dyn_relocs* %575, i32 0, i32 2
  %577 = load %struct.ppc_dyn_relocs*, %struct.ppc_dyn_relocs** %576, align 8
  store %struct.ppc_dyn_relocs* %577, %struct.ppc_dyn_relocs** %10, align 8
  br label %555

578:                                              ; preds = %555
  %579 = load i32, i32* @TRUE, align 4
  store i32 %579, i32* %3, align 4
  br label %580

580:                                              ; preds = %578, %536, %497, %415, %291, %24
  %581 = load i32, i32* %3, align 4
  ret i32 %581
}

declare dso_local %struct.ppc_link_hash_table* @ppc_hash_table(%struct.bfd_link_info*) #1

declare dso_local i64 @WILL_CALL_FINISH_DYNAMIC_SYMBOL(i32, i64, %struct.elf_link_hash_entry*) #1

declare dso_local i32 @bfd_elf_link_record_dynamic_symbol(%struct.bfd_link_info*, %struct.elf_link_hash_entry*) #1

declare dso_local %struct.TYPE_15__* @ppc64_tlsld_got(i64) #1

declare dso_local %struct.TYPE_16__* @ppc64_elf_tdata(i64) #1

declare dso_local i64 @ELF_ST_VISIBILITY(i32) #1

declare dso_local i64 @SYMBOL_CALLS_LOCAL(%struct.bfd_link_info*, %struct.elf_link_hash_entry*) #1

declare dso_local %struct.TYPE_17__* @elf_section_data(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

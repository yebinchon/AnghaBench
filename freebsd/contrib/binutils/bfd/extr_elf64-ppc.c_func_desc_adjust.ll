; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/bfd/extr_elf64-ppc.c_func_desc_adjust.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/bfd/extr_elf64-ppc.c_func_desc_adjust.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.elf_link_hash_entry = type { i32 }
%struct.bfd_link_info = type { i64 }
%struct.ppc_link_hash_table = type { %struct.TYPE_11__ }
%struct.TYPE_11__ = type { i32 }
%struct.plt_entry = type { %struct.TYPE_16__, %struct.plt_entry* }
%struct.TYPE_16__ = type { i64 }
%struct.ppc_link_hash_entry = type { i32, %struct.TYPE_19__, %struct.ppc_link_hash_entry*, i64, i32, i64 }
%struct.TYPE_19__ = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.TYPE_18__, i64, %struct.TYPE_15__ }
%struct.TYPE_18__ = type { i64, %struct.TYPE_14__, %struct.TYPE_17__ }
%struct.TYPE_14__ = type { %struct.TYPE_12__, %struct.TYPE_13__ }
%struct.TYPE_12__ = type { i64 }
%struct.TYPE_13__ = type { i32, i32 }
%struct.TYPE_17__ = type { i8* }
%struct.TYPE_15__ = type { %struct.plt_entry* }

@bfd_link_hash_indirect = common dso_local global i64 0, align 8
@TRUE = common dso_local global i32 0, align 4
@bfd_link_hash_warning = common dso_local global i64 0, align 8
@bfd_link_hash_undefweak = common dso_local global i64 0, align 8
@bfd_link_hash_defined = common dso_local global i64 0, align 8
@bfd_link_hash_defweak = common dso_local global i64 0, align 8
@bfd_link_hash_undefined = common dso_local global i64 0, align 8
@FALSE = common dso_local global i32 0, align 4
@STV_DEFAULT = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.elf_link_hash_entry*, i8*)* @func_desc_adjust to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @func_desc_adjust(%struct.elf_link_hash_entry* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.elf_link_hash_entry*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.bfd_link_info*, align 8
  %7 = alloca %struct.ppc_link_hash_table*, align 8
  %8 = alloca %struct.plt_entry*, align 8
  %9 = alloca %struct.ppc_link_hash_entry*, align 8
  %10 = alloca %struct.ppc_link_hash_entry*, align 8
  %11 = alloca i32, align 4
  store %struct.elf_link_hash_entry* %0, %struct.elf_link_hash_entry** %4, align 8
  store i8* %1, i8** %5, align 8
  %12 = load %struct.elf_link_hash_entry*, %struct.elf_link_hash_entry** %4, align 8
  %13 = bitcast %struct.elf_link_hash_entry* %12 to %struct.ppc_link_hash_entry*
  store %struct.ppc_link_hash_entry* %13, %struct.ppc_link_hash_entry** %9, align 8
  %14 = load %struct.ppc_link_hash_entry*, %struct.ppc_link_hash_entry** %9, align 8
  %15 = getelementptr inbounds %struct.ppc_link_hash_entry, %struct.ppc_link_hash_entry* %14, i32 0, i32 1
  %16 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %15, i32 0, i32 9
  %17 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = load i64, i64* @bfd_link_hash_indirect, align 8
  %20 = icmp eq i64 %18, %19
  br i1 %20, label %21, label %23

21:                                               ; preds = %2
  %22 = load i32, i32* @TRUE, align 4
  store i32 %22, i32* %3, align 4
  br label %486

23:                                               ; preds = %2
  %24 = load %struct.ppc_link_hash_entry*, %struct.ppc_link_hash_entry** %9, align 8
  %25 = getelementptr inbounds %struct.ppc_link_hash_entry, %struct.ppc_link_hash_entry* %24, i32 0, i32 1
  %26 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %25, i32 0, i32 9
  %27 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = load i64, i64* @bfd_link_hash_warning, align 8
  %30 = icmp eq i64 %28, %29
  br i1 %30, label %31, label %40

31:                                               ; preds = %23
  %32 = load %struct.ppc_link_hash_entry*, %struct.ppc_link_hash_entry** %9, align 8
  %33 = getelementptr inbounds %struct.ppc_link_hash_entry, %struct.ppc_link_hash_entry* %32, i32 0, i32 1
  %34 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %33, i32 0, i32 9
  %35 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %34, i32 0, i32 1
  %36 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = inttoptr i64 %38 to %struct.ppc_link_hash_entry*
  store %struct.ppc_link_hash_entry* %39, %struct.ppc_link_hash_entry** %9, align 8
  br label %40

40:                                               ; preds = %31, %23
  %41 = load i8*, i8** %5, align 8
  %42 = bitcast i8* %41 to %struct.bfd_link_info*
  store %struct.bfd_link_info* %42, %struct.bfd_link_info** %6, align 8
  %43 = load %struct.bfd_link_info*, %struct.bfd_link_info** %6, align 8
  %44 = call %struct.ppc_link_hash_table* @ppc_hash_table(%struct.bfd_link_info* %43)
  store %struct.ppc_link_hash_table* %44, %struct.ppc_link_hash_table** %7, align 8
  %45 = load %struct.ppc_link_hash_entry*, %struct.ppc_link_hash_entry** %9, align 8
  %46 = getelementptr inbounds %struct.ppc_link_hash_entry, %struct.ppc_link_hash_entry* %45, i32 0, i32 1
  %47 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %46, i32 0, i32 9
  %48 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = load i64, i64* @bfd_link_hash_undefweak, align 8
  %51 = icmp eq i64 %49, %50
  br i1 %51, label %52, label %155

52:                                               ; preds = %40
  %53 = load %struct.ppc_link_hash_entry*, %struct.ppc_link_hash_entry** %9, align 8
  %54 = getelementptr inbounds %struct.ppc_link_hash_entry, %struct.ppc_link_hash_entry* %53, i32 0, i32 5
  %55 = load i64, i64* %54, align 8
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %155

57:                                               ; preds = %52
  %58 = load %struct.ppc_link_hash_entry*, %struct.ppc_link_hash_entry** %9, align 8
  %59 = getelementptr inbounds %struct.ppc_link_hash_entry, %struct.ppc_link_hash_entry* %58, i32 0, i32 2
  %60 = load %struct.ppc_link_hash_entry*, %struct.ppc_link_hash_entry** %59, align 8
  %61 = getelementptr inbounds %struct.ppc_link_hash_entry, %struct.ppc_link_hash_entry* %60, i32 0, i32 1
  %62 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %61, i32 0, i32 9
  %63 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %62, i32 0, i32 0
  %64 = load i64, i64* %63, align 8
  %65 = load i64, i64* @bfd_link_hash_defined, align 8
  %66 = icmp eq i64 %64, %65
  br i1 %66, label %77, label %67

67:                                               ; preds = %57
  %68 = load %struct.ppc_link_hash_entry*, %struct.ppc_link_hash_entry** %9, align 8
  %69 = getelementptr inbounds %struct.ppc_link_hash_entry, %struct.ppc_link_hash_entry* %68, i32 0, i32 2
  %70 = load %struct.ppc_link_hash_entry*, %struct.ppc_link_hash_entry** %69, align 8
  %71 = getelementptr inbounds %struct.ppc_link_hash_entry, %struct.ppc_link_hash_entry* %70, i32 0, i32 1
  %72 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %71, i32 0, i32 9
  %73 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %72, i32 0, i32 0
  %74 = load i64, i64* %73, align 8
  %75 = load i64, i64* @bfd_link_hash_defweak, align 8
  %76 = icmp eq i64 %74, %75
  br i1 %76, label %77, label %155

77:                                               ; preds = %67, %57
  %78 = load %struct.ppc_link_hash_entry*, %struct.ppc_link_hash_entry** %9, align 8
  %79 = getelementptr inbounds %struct.ppc_link_hash_entry, %struct.ppc_link_hash_entry* %78, i32 0, i32 2
  %80 = load %struct.ppc_link_hash_entry*, %struct.ppc_link_hash_entry** %79, align 8
  %81 = getelementptr inbounds %struct.ppc_link_hash_entry, %struct.ppc_link_hash_entry* %80, i32 0, i32 1
  %82 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %81, i32 0, i32 9
  %83 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %82, i32 0, i32 1
  %84 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %83, i32 0, i32 1
  %85 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %84, i32 0, i32 1
  %86 = load i32, i32* %85, align 4
  %87 = call i32* @get_opd_info(i32 %86)
  %88 = icmp ne i32* %87, null
  br i1 %88, label %89, label %155

89:                                               ; preds = %77
  %90 = load %struct.ppc_link_hash_entry*, %struct.ppc_link_hash_entry** %9, align 8
  %91 = getelementptr inbounds %struct.ppc_link_hash_entry, %struct.ppc_link_hash_entry* %90, i32 0, i32 2
  %92 = load %struct.ppc_link_hash_entry*, %struct.ppc_link_hash_entry** %91, align 8
  %93 = getelementptr inbounds %struct.ppc_link_hash_entry, %struct.ppc_link_hash_entry* %92, i32 0, i32 1
  %94 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %93, i32 0, i32 9
  %95 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %94, i32 0, i32 1
  %96 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %95, i32 0, i32 1
  %97 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %96, i32 0, i32 1
  %98 = load i32, i32* %97, align 4
  %99 = load %struct.ppc_link_hash_entry*, %struct.ppc_link_hash_entry** %9, align 8
  %100 = getelementptr inbounds %struct.ppc_link_hash_entry, %struct.ppc_link_hash_entry* %99, i32 0, i32 2
  %101 = load %struct.ppc_link_hash_entry*, %struct.ppc_link_hash_entry** %100, align 8
  %102 = getelementptr inbounds %struct.ppc_link_hash_entry, %struct.ppc_link_hash_entry* %101, i32 0, i32 1
  %103 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %102, i32 0, i32 9
  %104 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %103, i32 0, i32 1
  %105 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %104, i32 0, i32 1
  %106 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %105, i32 0, i32 0
  %107 = load i32, i32* %106, align 8
  %108 = load %struct.ppc_link_hash_entry*, %struct.ppc_link_hash_entry** %9, align 8
  %109 = getelementptr inbounds %struct.ppc_link_hash_entry, %struct.ppc_link_hash_entry* %108, i32 0, i32 1
  %110 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %109, i32 0, i32 9
  %111 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %110, i32 0, i32 1
  %112 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %111, i32 0, i32 1
  %113 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %112, i32 0, i32 1
  %114 = load %struct.ppc_link_hash_entry*, %struct.ppc_link_hash_entry** %9, align 8
  %115 = getelementptr inbounds %struct.ppc_link_hash_entry, %struct.ppc_link_hash_entry* %114, i32 0, i32 1
  %116 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %115, i32 0, i32 9
  %117 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %116, i32 0, i32 1
  %118 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %117, i32 0, i32 1
  %119 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %118, i32 0, i32 0
  %120 = call i64 @opd_entry_value(i32 %98, i32 %107, i32* %113, i32* %119)
  %121 = icmp ne i64 %120, -1
  br i1 %121, label %122, label %155

122:                                              ; preds = %89
  %123 = load %struct.ppc_link_hash_entry*, %struct.ppc_link_hash_entry** %9, align 8
  %124 = getelementptr inbounds %struct.ppc_link_hash_entry, %struct.ppc_link_hash_entry* %123, i32 0, i32 2
  %125 = load %struct.ppc_link_hash_entry*, %struct.ppc_link_hash_entry** %124, align 8
  %126 = getelementptr inbounds %struct.ppc_link_hash_entry, %struct.ppc_link_hash_entry* %125, i32 0, i32 1
  %127 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %126, i32 0, i32 9
  %128 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %127, i32 0, i32 0
  %129 = load i64, i64* %128, align 8
  %130 = load %struct.ppc_link_hash_entry*, %struct.ppc_link_hash_entry** %9, align 8
  %131 = getelementptr inbounds %struct.ppc_link_hash_entry, %struct.ppc_link_hash_entry* %130, i32 0, i32 1
  %132 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %131, i32 0, i32 9
  %133 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %132, i32 0, i32 0
  store i64 %129, i64* %133, align 8
  %134 = load %struct.ppc_link_hash_entry*, %struct.ppc_link_hash_entry** %9, align 8
  %135 = getelementptr inbounds %struct.ppc_link_hash_entry, %struct.ppc_link_hash_entry* %134, i32 0, i32 1
  %136 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %135, i32 0, i32 0
  store i32 1, i32* %136, align 8
  %137 = load %struct.ppc_link_hash_entry*, %struct.ppc_link_hash_entry** %9, align 8
  %138 = getelementptr inbounds %struct.ppc_link_hash_entry, %struct.ppc_link_hash_entry* %137, i32 0, i32 2
  %139 = load %struct.ppc_link_hash_entry*, %struct.ppc_link_hash_entry** %138, align 8
  %140 = getelementptr inbounds %struct.ppc_link_hash_entry, %struct.ppc_link_hash_entry* %139, i32 0, i32 1
  %141 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %140, i32 0, i32 3
  %142 = load i32, i32* %141, align 4
  %143 = load %struct.ppc_link_hash_entry*, %struct.ppc_link_hash_entry** %9, align 8
  %144 = getelementptr inbounds %struct.ppc_link_hash_entry, %struct.ppc_link_hash_entry* %143, i32 0, i32 1
  %145 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %144, i32 0, i32 3
  store i32 %142, i32* %145, align 4
  %146 = load %struct.ppc_link_hash_entry*, %struct.ppc_link_hash_entry** %9, align 8
  %147 = getelementptr inbounds %struct.ppc_link_hash_entry, %struct.ppc_link_hash_entry* %146, i32 0, i32 2
  %148 = load %struct.ppc_link_hash_entry*, %struct.ppc_link_hash_entry** %147, align 8
  %149 = getelementptr inbounds %struct.ppc_link_hash_entry, %struct.ppc_link_hash_entry* %148, i32 0, i32 1
  %150 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %149, i32 0, i32 10
  %151 = load i64, i64* %150, align 8
  %152 = load %struct.ppc_link_hash_entry*, %struct.ppc_link_hash_entry** %9, align 8
  %153 = getelementptr inbounds %struct.ppc_link_hash_entry, %struct.ppc_link_hash_entry* %152, i32 0, i32 1
  %154 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %153, i32 0, i32 10
  store i64 %151, i64* %154, align 8
  br label %155

155:                                              ; preds = %122, %89, %77, %67, %52, %40
  %156 = load %struct.ppc_link_hash_entry*, %struct.ppc_link_hash_entry** %9, align 8
  %157 = getelementptr inbounds %struct.ppc_link_hash_entry, %struct.ppc_link_hash_entry* %156, i32 0, i32 4
  %158 = load i32, i32* %157, align 8
  %159 = icmp ne i32 %158, 0
  br i1 %159, label %162, label %160

160:                                              ; preds = %155
  %161 = load i32, i32* @TRUE, align 4
  store i32 %161, i32* %3, align 4
  br label %486

162:                                              ; preds = %155
  %163 = load %struct.ppc_link_hash_entry*, %struct.ppc_link_hash_entry** %9, align 8
  %164 = getelementptr inbounds %struct.ppc_link_hash_entry, %struct.ppc_link_hash_entry* %163, i32 0, i32 1
  %165 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %164, i32 0, i32 11
  %166 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %165, i32 0, i32 0
  %167 = load %struct.plt_entry*, %struct.plt_entry** %166, align 8
  store %struct.plt_entry* %167, %struct.plt_entry** %8, align 8
  br label %168

168:                                              ; preds = %179, %162
  %169 = load %struct.plt_entry*, %struct.plt_entry** %8, align 8
  %170 = icmp ne %struct.plt_entry* %169, null
  br i1 %170, label %171, label %183

171:                                              ; preds = %168
  %172 = load %struct.plt_entry*, %struct.plt_entry** %8, align 8
  %173 = getelementptr inbounds %struct.plt_entry, %struct.plt_entry* %172, i32 0, i32 0
  %174 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %173, i32 0, i32 0
  %175 = load i64, i64* %174, align 8
  %176 = icmp sgt i64 %175, 0
  br i1 %176, label %177, label %178

177:                                              ; preds = %171
  br label %183

178:                                              ; preds = %171
  br label %179

179:                                              ; preds = %178
  %180 = load %struct.plt_entry*, %struct.plt_entry** %8, align 8
  %181 = getelementptr inbounds %struct.plt_entry, %struct.plt_entry* %180, i32 0, i32 1
  %182 = load %struct.plt_entry*, %struct.plt_entry** %181, align 8
  store %struct.plt_entry* %182, %struct.plt_entry** %8, align 8
  br label %168

183:                                              ; preds = %177, %168
  %184 = load %struct.plt_entry*, %struct.plt_entry** %8, align 8
  %185 = icmp eq %struct.plt_entry* %184, null
  br i1 %185, label %208, label %186

186:                                              ; preds = %183
  %187 = load %struct.ppc_link_hash_entry*, %struct.ppc_link_hash_entry** %9, align 8
  %188 = getelementptr inbounds %struct.ppc_link_hash_entry, %struct.ppc_link_hash_entry* %187, i32 0, i32 1
  %189 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %188, i32 0, i32 9
  %190 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %189, i32 0, i32 2
  %191 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %190, i32 0, i32 0
  %192 = load i8*, i8** %191, align 8
  %193 = getelementptr inbounds i8, i8* %192, i64 0
  %194 = load i8, i8* %193, align 1
  %195 = sext i8 %194 to i32
  %196 = icmp ne i32 %195, 46
  br i1 %196, label %208, label %197

197:                                              ; preds = %186
  %198 = load %struct.ppc_link_hash_entry*, %struct.ppc_link_hash_entry** %9, align 8
  %199 = getelementptr inbounds %struct.ppc_link_hash_entry, %struct.ppc_link_hash_entry* %198, i32 0, i32 1
  %200 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %199, i32 0, i32 9
  %201 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %200, i32 0, i32 2
  %202 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %201, i32 0, i32 0
  %203 = load i8*, i8** %202, align 8
  %204 = getelementptr inbounds i8, i8* %203, i64 1
  %205 = load i8, i8* %204, align 1
  %206 = sext i8 %205 to i32
  %207 = icmp eq i32 %206, 0
  br i1 %207, label %208, label %210

208:                                              ; preds = %197, %186, %183
  %209 = load i32, i32* @TRUE, align 4
  store i32 %209, i32* %3, align 4
  br label %486

210:                                              ; preds = %197
  %211 = load %struct.ppc_link_hash_entry*, %struct.ppc_link_hash_entry** %9, align 8
  %212 = load %struct.ppc_link_hash_table*, %struct.ppc_link_hash_table** %7, align 8
  %213 = call %struct.ppc_link_hash_entry* @get_fdh(%struct.ppc_link_hash_entry* %211, %struct.ppc_link_hash_table* %212)
  store %struct.ppc_link_hash_entry* %213, %struct.ppc_link_hash_entry** %10, align 8
  %214 = load %struct.ppc_link_hash_entry*, %struct.ppc_link_hash_entry** %10, align 8
  %215 = icmp ne %struct.ppc_link_hash_entry* %214, null
  br i1 %215, label %216, label %245

216:                                              ; preds = %210
  br label %217

217:                                              ; preds = %235, %216
  %218 = load %struct.ppc_link_hash_entry*, %struct.ppc_link_hash_entry** %10, align 8
  %219 = getelementptr inbounds %struct.ppc_link_hash_entry, %struct.ppc_link_hash_entry* %218, i32 0, i32 1
  %220 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %219, i32 0, i32 9
  %221 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %220, i32 0, i32 0
  %222 = load i64, i64* %221, align 8
  %223 = load i64, i64* @bfd_link_hash_indirect, align 8
  %224 = icmp eq i64 %222, %223
  br i1 %224, label %233, label %225

225:                                              ; preds = %217
  %226 = load %struct.ppc_link_hash_entry*, %struct.ppc_link_hash_entry** %10, align 8
  %227 = getelementptr inbounds %struct.ppc_link_hash_entry, %struct.ppc_link_hash_entry* %226, i32 0, i32 1
  %228 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %227, i32 0, i32 9
  %229 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %228, i32 0, i32 0
  %230 = load i64, i64* %229, align 8
  %231 = load i64, i64* @bfd_link_hash_warning, align 8
  %232 = icmp eq i64 %230, %231
  br label %233

233:                                              ; preds = %225, %217
  %234 = phi i1 [ true, %217 ], [ %232, %225 ]
  br i1 %234, label %235, label %244

235:                                              ; preds = %233
  %236 = load %struct.ppc_link_hash_entry*, %struct.ppc_link_hash_entry** %10, align 8
  %237 = getelementptr inbounds %struct.ppc_link_hash_entry, %struct.ppc_link_hash_entry* %236, i32 0, i32 1
  %238 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %237, i32 0, i32 9
  %239 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %238, i32 0, i32 1
  %240 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %239, i32 0, i32 0
  %241 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %240, i32 0, i32 0
  %242 = load i64, i64* %241, align 8
  %243 = inttoptr i64 %242 to %struct.ppc_link_hash_entry*
  store %struct.ppc_link_hash_entry* %243, %struct.ppc_link_hash_entry** %10, align 8
  br label %217

244:                                              ; preds = %233
  br label %245

245:                                              ; preds = %244, %210
  %246 = load %struct.ppc_link_hash_entry*, %struct.ppc_link_hash_entry** %10, align 8
  %247 = icmp eq %struct.ppc_link_hash_entry* %246, null
  br i1 %247, label %248, label %278

248:                                              ; preds = %245
  %249 = load %struct.bfd_link_info*, %struct.bfd_link_info** %6, align 8
  %250 = getelementptr inbounds %struct.bfd_link_info, %struct.bfd_link_info* %249, i32 0, i32 0
  %251 = load i64, i64* %250, align 8
  %252 = icmp ne i64 %251, 0
  br i1 %252, label %253, label %278

253:                                              ; preds = %248
  %254 = load %struct.ppc_link_hash_entry*, %struct.ppc_link_hash_entry** %9, align 8
  %255 = getelementptr inbounds %struct.ppc_link_hash_entry, %struct.ppc_link_hash_entry* %254, i32 0, i32 1
  %256 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %255, i32 0, i32 9
  %257 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %256, i32 0, i32 0
  %258 = load i64, i64* %257, align 8
  %259 = load i64, i64* @bfd_link_hash_undefined, align 8
  %260 = icmp eq i64 %258, %259
  br i1 %260, label %269, label %261

261:                                              ; preds = %253
  %262 = load %struct.ppc_link_hash_entry*, %struct.ppc_link_hash_entry** %9, align 8
  %263 = getelementptr inbounds %struct.ppc_link_hash_entry, %struct.ppc_link_hash_entry* %262, i32 0, i32 1
  %264 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %263, i32 0, i32 9
  %265 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %264, i32 0, i32 0
  %266 = load i64, i64* %265, align 8
  %267 = load i64, i64* @bfd_link_hash_undefweak, align 8
  %268 = icmp eq i64 %266, %267
  br i1 %268, label %269, label %278

269:                                              ; preds = %261, %253
  %270 = load %struct.bfd_link_info*, %struct.bfd_link_info** %6, align 8
  %271 = load %struct.ppc_link_hash_entry*, %struct.ppc_link_hash_entry** %9, align 8
  %272 = call %struct.ppc_link_hash_entry* @make_fdh(%struct.bfd_link_info* %270, %struct.ppc_link_hash_entry* %271)
  store %struct.ppc_link_hash_entry* %272, %struct.ppc_link_hash_entry** %10, align 8
  %273 = load %struct.ppc_link_hash_entry*, %struct.ppc_link_hash_entry** %10, align 8
  %274 = icmp eq %struct.ppc_link_hash_entry* %273, null
  br i1 %274, label %275, label %277

275:                                              ; preds = %269
  %276 = load i32, i32* @FALSE, align 4
  store i32 %276, i32* %3, align 4
  br label %486

277:                                              ; preds = %269
  br label %278

278:                                              ; preds = %277, %261, %248, %245
  %279 = load %struct.ppc_link_hash_entry*, %struct.ppc_link_hash_entry** %10, align 8
  %280 = icmp ne %struct.ppc_link_hash_entry* %279, null
  br i1 %280, label %281, label %339

281:                                              ; preds = %278
  %282 = load %struct.ppc_link_hash_entry*, %struct.ppc_link_hash_entry** %10, align 8
  %283 = getelementptr inbounds %struct.ppc_link_hash_entry, %struct.ppc_link_hash_entry* %282, i32 0, i32 3
  %284 = load i64, i64* %283, align 8
  %285 = icmp ne i64 %284, 0
  br i1 %285, label %286, label %339

286:                                              ; preds = %281
  %287 = load %struct.ppc_link_hash_entry*, %struct.ppc_link_hash_entry** %10, align 8
  %288 = getelementptr inbounds %struct.ppc_link_hash_entry, %struct.ppc_link_hash_entry* %287, i32 0, i32 1
  %289 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %288, i32 0, i32 9
  %290 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %289, i32 0, i32 0
  %291 = load i64, i64* %290, align 8
  %292 = load i64, i64* @bfd_link_hash_undefweak, align 8
  %293 = icmp eq i64 %291, %292
  br i1 %293, label %294, label %339

294:                                              ; preds = %286
  %295 = load %struct.ppc_link_hash_entry*, %struct.ppc_link_hash_entry** %9, align 8
  %296 = getelementptr inbounds %struct.ppc_link_hash_entry, %struct.ppc_link_hash_entry* %295, i32 0, i32 1
  %297 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %296, i32 0, i32 9
  %298 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %297, i32 0, i32 0
  %299 = load i64, i64* %298, align 8
  %300 = load i64, i64* @bfd_link_hash_undefined, align 8
  %301 = icmp eq i64 %299, %300
  br i1 %301, label %302, label %315

302:                                              ; preds = %294
  %303 = load i64, i64* @bfd_link_hash_undefined, align 8
  %304 = load %struct.ppc_link_hash_entry*, %struct.ppc_link_hash_entry** %10, align 8
  %305 = getelementptr inbounds %struct.ppc_link_hash_entry, %struct.ppc_link_hash_entry* %304, i32 0, i32 1
  %306 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %305, i32 0, i32 9
  %307 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %306, i32 0, i32 0
  store i64 %303, i64* %307, align 8
  %308 = load %struct.ppc_link_hash_table*, %struct.ppc_link_hash_table** %7, align 8
  %309 = getelementptr inbounds %struct.ppc_link_hash_table, %struct.ppc_link_hash_table* %308, i32 0, i32 0
  %310 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %309, i32 0, i32 0
  %311 = load %struct.ppc_link_hash_entry*, %struct.ppc_link_hash_entry** %10, align 8
  %312 = getelementptr inbounds %struct.ppc_link_hash_entry, %struct.ppc_link_hash_entry* %311, i32 0, i32 1
  %313 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %312, i32 0, i32 9
  %314 = call i32 @bfd_link_add_undef(i32* %310, %struct.TYPE_18__* %313)
  br label %338

315:                                              ; preds = %294
  %316 = load %struct.ppc_link_hash_entry*, %struct.ppc_link_hash_entry** %9, align 8
  %317 = getelementptr inbounds %struct.ppc_link_hash_entry, %struct.ppc_link_hash_entry* %316, i32 0, i32 1
  %318 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %317, i32 0, i32 9
  %319 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %318, i32 0, i32 0
  %320 = load i64, i64* %319, align 8
  %321 = load i64, i64* @bfd_link_hash_defined, align 8
  %322 = icmp eq i64 %320, %321
  br i1 %322, label %331, label %323

323:                                              ; preds = %315
  %324 = load %struct.ppc_link_hash_entry*, %struct.ppc_link_hash_entry** %9, align 8
  %325 = getelementptr inbounds %struct.ppc_link_hash_entry, %struct.ppc_link_hash_entry* %324, i32 0, i32 1
  %326 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %325, i32 0, i32 9
  %327 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %326, i32 0, i32 0
  %328 = load i64, i64* %327, align 8
  %329 = load i64, i64* @bfd_link_hash_defweak, align 8
  %330 = icmp eq i64 %328, %329
  br i1 %330, label %331, label %337

331:                                              ; preds = %323, %315
  %332 = load %struct.bfd_link_info*, %struct.bfd_link_info** %6, align 8
  %333 = load %struct.ppc_link_hash_entry*, %struct.ppc_link_hash_entry** %10, align 8
  %334 = getelementptr inbounds %struct.ppc_link_hash_entry, %struct.ppc_link_hash_entry* %333, i32 0, i32 1
  %335 = load i32, i32* @TRUE, align 4
  %336 = call i32 @_bfd_elf_link_hash_hide_symbol(%struct.bfd_link_info* %332, %struct.TYPE_19__* %334, i32 %335)
  br label %337

337:                                              ; preds = %331, %323
  br label %338

338:                                              ; preds = %337, %302
  br label %339

339:                                              ; preds = %338, %286, %281, %278
  %340 = load %struct.ppc_link_hash_entry*, %struct.ppc_link_hash_entry** %10, align 8
  %341 = icmp ne %struct.ppc_link_hash_entry* %340, null
  br i1 %341, label %342, label %456

342:                                              ; preds = %339
  %343 = load %struct.ppc_link_hash_entry*, %struct.ppc_link_hash_entry** %10, align 8
  %344 = getelementptr inbounds %struct.ppc_link_hash_entry, %struct.ppc_link_hash_entry* %343, i32 0, i32 1
  %345 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %344, i32 0, i32 0
  %346 = load i32, i32* %345, align 8
  %347 = icmp ne i32 %346, 0
  br i1 %347, label %456, label %348

348:                                              ; preds = %342
  %349 = load %struct.bfd_link_info*, %struct.bfd_link_info** %6, align 8
  %350 = getelementptr inbounds %struct.bfd_link_info, %struct.bfd_link_info* %349, i32 0, i32 0
  %351 = load i64, i64* %350, align 8
  %352 = icmp ne i64 %351, 0
  br i1 %352, label %381, label %353

353:                                              ; preds = %348
  %354 = load %struct.ppc_link_hash_entry*, %struct.ppc_link_hash_entry** %10, align 8
  %355 = getelementptr inbounds %struct.ppc_link_hash_entry, %struct.ppc_link_hash_entry* %354, i32 0, i32 1
  %356 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %355, i32 0, i32 10
  %357 = load i64, i64* %356, align 8
  %358 = icmp ne i64 %357, 0
  br i1 %358, label %381, label %359

359:                                              ; preds = %353
  %360 = load %struct.ppc_link_hash_entry*, %struct.ppc_link_hash_entry** %10, align 8
  %361 = getelementptr inbounds %struct.ppc_link_hash_entry, %struct.ppc_link_hash_entry* %360, i32 0, i32 1
  %362 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %361, i32 0, i32 7
  %363 = load i32, i32* %362, align 4
  %364 = icmp ne i32 %363, 0
  br i1 %364, label %381, label %365

365:                                              ; preds = %359
  %366 = load %struct.ppc_link_hash_entry*, %struct.ppc_link_hash_entry** %10, align 8
  %367 = getelementptr inbounds %struct.ppc_link_hash_entry, %struct.ppc_link_hash_entry* %366, i32 0, i32 1
  %368 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %367, i32 0, i32 9
  %369 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %368, i32 0, i32 0
  %370 = load i64, i64* %369, align 8
  %371 = load i64, i64* @bfd_link_hash_undefweak, align 8
  %372 = icmp eq i64 %370, %371
  br i1 %372, label %373, label %456

373:                                              ; preds = %365
  %374 = load %struct.ppc_link_hash_entry*, %struct.ppc_link_hash_entry** %10, align 8
  %375 = getelementptr inbounds %struct.ppc_link_hash_entry, %struct.ppc_link_hash_entry* %374, i32 0, i32 1
  %376 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %375, i32 0, i32 4
  %377 = load i32, i32* %376, align 8
  %378 = call i64 @ELF_ST_VISIBILITY(i32 %377)
  %379 = load i64, i64* @STV_DEFAULT, align 8
  %380 = icmp eq i64 %378, %379
  br i1 %380, label %381, label %456

381:                                              ; preds = %373, %359, %353, %348
  %382 = load %struct.ppc_link_hash_entry*, %struct.ppc_link_hash_entry** %10, align 8
  %383 = getelementptr inbounds %struct.ppc_link_hash_entry, %struct.ppc_link_hash_entry* %382, i32 0, i32 1
  %384 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %383, i32 0, i32 1
  %385 = load i32, i32* %384, align 4
  %386 = icmp eq i32 %385, -1
  br i1 %386, label %387, label %396

387:                                              ; preds = %381
  %388 = load %struct.bfd_link_info*, %struct.bfd_link_info** %6, align 8
  %389 = load %struct.ppc_link_hash_entry*, %struct.ppc_link_hash_entry** %10, align 8
  %390 = getelementptr inbounds %struct.ppc_link_hash_entry, %struct.ppc_link_hash_entry* %389, i32 0, i32 1
  %391 = call i32 @bfd_elf_link_record_dynamic_symbol(%struct.bfd_link_info* %388, %struct.TYPE_19__* %390)
  %392 = icmp ne i32 %391, 0
  br i1 %392, label %395, label %393

393:                                              ; preds = %387
  %394 = load i32, i32* @FALSE, align 4
  store i32 %394, i32* %3, align 4
  br label %486

395:                                              ; preds = %387
  br label %396

396:                                              ; preds = %395, %381
  %397 = load %struct.ppc_link_hash_entry*, %struct.ppc_link_hash_entry** %9, align 8
  %398 = getelementptr inbounds %struct.ppc_link_hash_entry, %struct.ppc_link_hash_entry* %397, i32 0, i32 1
  %399 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %398, i32 0, i32 8
  %400 = load i32, i32* %399, align 8
  %401 = load %struct.ppc_link_hash_entry*, %struct.ppc_link_hash_entry** %10, align 8
  %402 = getelementptr inbounds %struct.ppc_link_hash_entry, %struct.ppc_link_hash_entry* %401, i32 0, i32 1
  %403 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %402, i32 0, i32 8
  %404 = load i32, i32* %403, align 8
  %405 = or i32 %404, %400
  store i32 %405, i32* %403, align 8
  %406 = load %struct.ppc_link_hash_entry*, %struct.ppc_link_hash_entry** %9, align 8
  %407 = getelementptr inbounds %struct.ppc_link_hash_entry, %struct.ppc_link_hash_entry* %406, i32 0, i32 1
  %408 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %407, i32 0, i32 7
  %409 = load i32, i32* %408, align 4
  %410 = load %struct.ppc_link_hash_entry*, %struct.ppc_link_hash_entry** %10, align 8
  %411 = getelementptr inbounds %struct.ppc_link_hash_entry, %struct.ppc_link_hash_entry* %410, i32 0, i32 1
  %412 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %411, i32 0, i32 7
  %413 = load i32, i32* %412, align 4
  %414 = or i32 %413, %409
  store i32 %414, i32* %412, align 4
  %415 = load %struct.ppc_link_hash_entry*, %struct.ppc_link_hash_entry** %9, align 8
  %416 = getelementptr inbounds %struct.ppc_link_hash_entry, %struct.ppc_link_hash_entry* %415, i32 0, i32 1
  %417 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %416, i32 0, i32 6
  %418 = load i32, i32* %417, align 8
  %419 = load %struct.ppc_link_hash_entry*, %struct.ppc_link_hash_entry** %10, align 8
  %420 = getelementptr inbounds %struct.ppc_link_hash_entry, %struct.ppc_link_hash_entry* %419, i32 0, i32 1
  %421 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %420, i32 0, i32 6
  %422 = load i32, i32* %421, align 8
  %423 = or i32 %422, %418
  store i32 %423, i32* %421, align 8
  %424 = load %struct.ppc_link_hash_entry*, %struct.ppc_link_hash_entry** %9, align 8
  %425 = getelementptr inbounds %struct.ppc_link_hash_entry, %struct.ppc_link_hash_entry* %424, i32 0, i32 1
  %426 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %425, i32 0, i32 5
  %427 = load i32, i32* %426, align 4
  %428 = load %struct.ppc_link_hash_entry*, %struct.ppc_link_hash_entry** %10, align 8
  %429 = getelementptr inbounds %struct.ppc_link_hash_entry, %struct.ppc_link_hash_entry* %428, i32 0, i32 1
  %430 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %429, i32 0, i32 5
  %431 = load i32, i32* %430, align 4
  %432 = or i32 %431, %427
  store i32 %432, i32* %430, align 4
  %433 = load %struct.ppc_link_hash_entry*, %struct.ppc_link_hash_entry** %9, align 8
  %434 = getelementptr inbounds %struct.ppc_link_hash_entry, %struct.ppc_link_hash_entry* %433, i32 0, i32 1
  %435 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %434, i32 0, i32 4
  %436 = load i32, i32* %435, align 8
  %437 = call i64 @ELF_ST_VISIBILITY(i32 %436)
  %438 = load i64, i64* @STV_DEFAULT, align 8
  %439 = icmp eq i64 %437, %438
  br i1 %439, label %440, label %447

440:                                              ; preds = %396
  %441 = load %struct.ppc_link_hash_entry*, %struct.ppc_link_hash_entry** %9, align 8
  %442 = load %struct.ppc_link_hash_entry*, %struct.ppc_link_hash_entry** %10, align 8
  %443 = call i32 @move_plt_plist(%struct.ppc_link_hash_entry* %441, %struct.ppc_link_hash_entry* %442)
  %444 = load %struct.ppc_link_hash_entry*, %struct.ppc_link_hash_entry** %10, align 8
  %445 = getelementptr inbounds %struct.ppc_link_hash_entry, %struct.ppc_link_hash_entry* %444, i32 0, i32 1
  %446 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %445, i32 0, i32 2
  store i32 1, i32* %446, align 8
  br label %447

447:                                              ; preds = %440, %396
  %448 = load %struct.ppc_link_hash_entry*, %struct.ppc_link_hash_entry** %10, align 8
  %449 = getelementptr inbounds %struct.ppc_link_hash_entry, %struct.ppc_link_hash_entry* %448, i32 0, i32 0
  store i32 1, i32* %449, align 8
  %450 = load %struct.ppc_link_hash_entry*, %struct.ppc_link_hash_entry** %9, align 8
  %451 = load %struct.ppc_link_hash_entry*, %struct.ppc_link_hash_entry** %10, align 8
  %452 = getelementptr inbounds %struct.ppc_link_hash_entry, %struct.ppc_link_hash_entry* %451, i32 0, i32 2
  store %struct.ppc_link_hash_entry* %450, %struct.ppc_link_hash_entry** %452, align 8
  %453 = load %struct.ppc_link_hash_entry*, %struct.ppc_link_hash_entry** %10, align 8
  %454 = load %struct.ppc_link_hash_entry*, %struct.ppc_link_hash_entry** %9, align 8
  %455 = getelementptr inbounds %struct.ppc_link_hash_entry, %struct.ppc_link_hash_entry* %454, i32 0, i32 2
  store %struct.ppc_link_hash_entry* %453, %struct.ppc_link_hash_entry** %455, align 8
  br label %456

456:                                              ; preds = %447, %373, %365, %342, %339
  %457 = load %struct.ppc_link_hash_entry*, %struct.ppc_link_hash_entry** %9, align 8
  %458 = getelementptr inbounds %struct.ppc_link_hash_entry, %struct.ppc_link_hash_entry* %457, i32 0, i32 1
  %459 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %458, i32 0, i32 3
  %460 = load i32, i32* %459, align 4
  %461 = icmp ne i32 %460, 0
  br i1 %461, label %462, label %477

462:                                              ; preds = %456
  %463 = load %struct.ppc_link_hash_entry*, %struct.ppc_link_hash_entry** %10, align 8
  %464 = icmp eq %struct.ppc_link_hash_entry* %463, null
  br i1 %464, label %477, label %465

465:                                              ; preds = %462
  %466 = load %struct.ppc_link_hash_entry*, %struct.ppc_link_hash_entry** %10, align 8
  %467 = getelementptr inbounds %struct.ppc_link_hash_entry, %struct.ppc_link_hash_entry* %466, i32 0, i32 1
  %468 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %467, i32 0, i32 3
  %469 = load i32, i32* %468, align 4
  %470 = icmp ne i32 %469, 0
  br i1 %470, label %471, label %477

471:                                              ; preds = %465
  %472 = load %struct.ppc_link_hash_entry*, %struct.ppc_link_hash_entry** %10, align 8
  %473 = getelementptr inbounds %struct.ppc_link_hash_entry, %struct.ppc_link_hash_entry* %472, i32 0, i32 1
  %474 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %473, i32 0, i32 0
  %475 = load i32, i32* %474, align 8
  %476 = icmp ne i32 %475, 0
  br label %477

477:                                              ; preds = %471, %465, %462, %456
  %478 = phi i1 [ true, %465 ], [ true, %462 ], [ true, %456 ], [ %476, %471 ]
  %479 = zext i1 %478 to i32
  store i32 %479, i32* %11, align 4
  %480 = load %struct.bfd_link_info*, %struct.bfd_link_info** %6, align 8
  %481 = load %struct.ppc_link_hash_entry*, %struct.ppc_link_hash_entry** %9, align 8
  %482 = getelementptr inbounds %struct.ppc_link_hash_entry, %struct.ppc_link_hash_entry* %481, i32 0, i32 1
  %483 = load i32, i32* %11, align 4
  %484 = call i32 @_bfd_elf_link_hash_hide_symbol(%struct.bfd_link_info* %480, %struct.TYPE_19__* %482, i32 %483)
  %485 = load i32, i32* @TRUE, align 4
  store i32 %485, i32* %3, align 4
  br label %486

486:                                              ; preds = %477, %393, %275, %208, %160, %21
  %487 = load i32, i32* %3, align 4
  ret i32 %487
}

declare dso_local %struct.ppc_link_hash_table* @ppc_hash_table(%struct.bfd_link_info*) #1

declare dso_local i32* @get_opd_info(i32) #1

declare dso_local i64 @opd_entry_value(i32, i32, i32*, i32*) #1

declare dso_local %struct.ppc_link_hash_entry* @get_fdh(%struct.ppc_link_hash_entry*, %struct.ppc_link_hash_table*) #1

declare dso_local %struct.ppc_link_hash_entry* @make_fdh(%struct.bfd_link_info*, %struct.ppc_link_hash_entry*) #1

declare dso_local i32 @bfd_link_add_undef(i32*, %struct.TYPE_18__*) #1

declare dso_local i32 @_bfd_elf_link_hash_hide_symbol(%struct.bfd_link_info*, %struct.TYPE_19__*, i32) #1

declare dso_local i64 @ELF_ST_VISIBILITY(i32) #1

declare dso_local i32 @bfd_elf_link_record_dynamic_symbol(%struct.bfd_link_info*, %struct.TYPE_19__*) #1

declare dso_local i32 @move_plt_plist(%struct.ppc_link_hash_entry*, %struct.ppc_link_hash_entry*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

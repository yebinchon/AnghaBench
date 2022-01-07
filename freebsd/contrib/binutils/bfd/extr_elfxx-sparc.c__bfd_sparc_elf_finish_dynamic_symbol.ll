; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/bfd/extr_elfxx-sparc.c__bfd_sparc_elf_finish_dynamic_symbol.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/bfd/extr_elfxx-sparc.c__bfd_sparc_elf_finish_dynamic_symbol.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bfd_link_info = type { i64, i64 }
%struct.elf_link_hash_entry = type { i32, %struct.TYPE_31__, i64, %struct.TYPE_23__, i64, i32, %struct.TYPE_35__ }
%struct.TYPE_31__ = type { %struct.TYPE_30__, %struct.TYPE_29__ }
%struct.TYPE_30__ = type { i32 }
%struct.TYPE_29__ = type { %struct.TYPE_28__ }
%struct.TYPE_28__ = type { i64, %struct.TYPE_24__* }
%struct.TYPE_24__ = type { i64, %struct.TYPE_22__*, i32, i32*, i32 }
%struct.TYPE_22__ = type { i64 }
%struct.TYPE_23__ = type { i64 }
%struct.TYPE_35__ = type { i64 }
%struct.TYPE_25__ = type { i32, i64 }
%struct._bfd_sparc_elf_link_hash_table = type { i32, i32, %struct.TYPE_32__, i64, %struct.TYPE_24__*, %struct.TYPE_24__*, %struct.TYPE_34__*, %struct.TYPE_24__*, %struct.TYPE_24__* }
%struct.TYPE_32__ = type { %struct.elf_link_hash_entry*, %struct.elf_link_hash_entry*, i32* }
%struct.TYPE_34__ = type { i64, %struct.TYPE_33__* }
%struct.TYPE_33__ = type { i64 }
%struct.elf_backend_data = type { %struct.TYPE_36__* }
%struct.TYPE_36__ = type { i32, i32 (i32*, %struct.TYPE_26__*, i32*)* }
%struct.TYPE_26__ = type { i64, i64, i8* }
%struct.TYPE_27__ = type { i64 }

@PLT64_LARGE_THRESHOLD = common dso_local global i32 0, align 4
@PLT64_ENTRY_SIZE = common dso_local global i32 0, align 4
@R_SPARC_JMP_SLOT = common dso_local global i32 0, align 4
@SHN_UNDEF = common dso_local global i32 0, align 4
@GOT_TLS_GD = common dso_local global i64 0, align 8
@GOT_TLS_IE = common dso_local global i64 0, align 8
@R_SPARC_RELATIVE = common dso_local global i32 0, align 4
@R_SPARC_GLOB_DAT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [10 x i8] c".rela.bss\00", align 1
@R_SPARC_COPY = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [9 x i8] c"_DYNAMIC\00", align 1
@SHN_ABS = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @_bfd_sparc_elf_finish_dynamic_symbol(i32* %0, %struct.bfd_link_info* %1, %struct.elf_link_hash_entry* %2, %struct.TYPE_25__* %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca %struct.bfd_link_info*, align 8
  %7 = alloca %struct.elf_link_hash_entry*, align 8
  %8 = alloca %struct.TYPE_25__*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca %struct._bfd_sparc_elf_link_hash_table*, align 8
  %11 = alloca %struct.elf_backend_data*, align 8
  %12 = alloca %struct.TYPE_24__*, align 8
  %13 = alloca %struct.TYPE_24__*, align 8
  %14 = alloca %struct.TYPE_26__, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  %18 = alloca i32, align 4
  %19 = alloca %struct.TYPE_24__*, align 8
  %20 = alloca %struct.TYPE_24__*, align 8
  %21 = alloca %struct.TYPE_26__, align 8
  %22 = alloca %struct.TYPE_24__*, align 8
  %23 = alloca %struct.TYPE_24__*, align 8
  %24 = alloca %struct.TYPE_26__, align 8
  store i32* %0, i32** %5, align 8
  store %struct.bfd_link_info* %1, %struct.bfd_link_info** %6, align 8
  store %struct.elf_link_hash_entry* %2, %struct.elf_link_hash_entry** %7, align 8
  store %struct.TYPE_25__* %3, %struct.TYPE_25__** %8, align 8
  %25 = load %struct.bfd_link_info*, %struct.bfd_link_info** %6, align 8
  %26 = call %struct._bfd_sparc_elf_link_hash_table* @_bfd_sparc_elf_hash_table(%struct.bfd_link_info* %25)
  store %struct._bfd_sparc_elf_link_hash_table* %26, %struct._bfd_sparc_elf_link_hash_table** %10, align 8
  %27 = load %struct._bfd_sparc_elf_link_hash_table*, %struct._bfd_sparc_elf_link_hash_table** %10, align 8
  %28 = getelementptr inbounds %struct._bfd_sparc_elf_link_hash_table, %struct._bfd_sparc_elf_link_hash_table* %27, i32 0, i32 2
  %29 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %28, i32 0, i32 2
  %30 = load i32*, i32** %29, align 8
  store i32* %30, i32** %9, align 8
  %31 = load i32*, i32** %5, align 8
  %32 = call %struct.elf_backend_data* @get_elf_backend_data(i32* %31)
  store %struct.elf_backend_data* %32, %struct.elf_backend_data** %11, align 8
  %33 = load %struct.elf_link_hash_entry*, %struct.elf_link_hash_entry** %7, align 8
  %34 = getelementptr inbounds %struct.elf_link_hash_entry, %struct.elf_link_hash_entry* %33, i32 0, i32 6
  %35 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = icmp ne i64 %36, -1
  br i1 %37, label %38, label %216

38:                                               ; preds = %4
  %39 = load %struct.elf_link_hash_entry*, %struct.elf_link_hash_entry** %7, align 8
  %40 = getelementptr inbounds %struct.elf_link_hash_entry, %struct.elf_link_hash_entry* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = icmp ne i32 %41, -1
  %43 = zext i1 %42 to i32
  %44 = call i32 @BFD_ASSERT(i32 %43)
  %45 = load %struct._bfd_sparc_elf_link_hash_table*, %struct._bfd_sparc_elf_link_hash_table** %10, align 8
  %46 = getelementptr inbounds %struct._bfd_sparc_elf_link_hash_table, %struct._bfd_sparc_elf_link_hash_table* %45, i32 0, i32 8
  %47 = load %struct.TYPE_24__*, %struct.TYPE_24__** %46, align 8
  store %struct.TYPE_24__* %47, %struct.TYPE_24__** %12, align 8
  %48 = load %struct._bfd_sparc_elf_link_hash_table*, %struct._bfd_sparc_elf_link_hash_table** %10, align 8
  %49 = getelementptr inbounds %struct._bfd_sparc_elf_link_hash_table, %struct._bfd_sparc_elf_link_hash_table* %48, i32 0, i32 7
  %50 = load %struct.TYPE_24__*, %struct.TYPE_24__** %49, align 8
  store %struct.TYPE_24__* %50, %struct.TYPE_24__** %13, align 8
  %51 = load %struct.TYPE_24__*, %struct.TYPE_24__** %12, align 8
  %52 = icmp ne %struct.TYPE_24__* %51, null
  br i1 %52, label %53, label %56

53:                                               ; preds = %38
  %54 = load %struct.TYPE_24__*, %struct.TYPE_24__** %13, align 8
  %55 = icmp ne %struct.TYPE_24__* %54, null
  br label %56

56:                                               ; preds = %53, %38
  %57 = phi i1 [ false, %38 ], [ %55, %53 ]
  %58 = zext i1 %57 to i32
  %59 = call i32 @BFD_ASSERT(i32 %58)
  %60 = load %struct._bfd_sparc_elf_link_hash_table*, %struct._bfd_sparc_elf_link_hash_table** %10, align 8
  %61 = getelementptr inbounds %struct._bfd_sparc_elf_link_hash_table, %struct._bfd_sparc_elf_link_hash_table* %60, i32 0, i32 3
  %62 = load i64, i64* %61, align 8
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %64, label %111

64:                                               ; preds = %56
  %65 = load %struct.elf_link_hash_entry*, %struct.elf_link_hash_entry** %7, align 8
  %66 = getelementptr inbounds %struct.elf_link_hash_entry, %struct.elf_link_hash_entry* %65, i32 0, i32 6
  %67 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %66, i32 0, i32 0
  %68 = load i64, i64* %67, align 8
  %69 = load %struct._bfd_sparc_elf_link_hash_table*, %struct._bfd_sparc_elf_link_hash_table** %10, align 8
  %70 = getelementptr inbounds %struct._bfd_sparc_elf_link_hash_table, %struct._bfd_sparc_elf_link_hash_table* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 8
  %72 = sext i32 %71 to i64
  %73 = sub nsw i64 %68, %72
  %74 = load %struct._bfd_sparc_elf_link_hash_table*, %struct._bfd_sparc_elf_link_hash_table** %10, align 8
  %75 = getelementptr inbounds %struct._bfd_sparc_elf_link_hash_table, %struct._bfd_sparc_elf_link_hash_table* %74, i32 0, i32 1
  %76 = load i32, i32* %75, align 4
  %77 = sext i32 %76 to i64
  %78 = sdiv i64 %73, %77
  %79 = trunc i64 %78 to i32
  store i32 %79, i32* %18, align 4
  %80 = load i32, i32* %18, align 4
  %81 = add nsw i32 %80, 3
  %82 = mul nsw i32 %81, 4
  %83 = sext i32 %82 to i64
  store i64 %83, i64* %17, align 8
  %84 = load i32*, i32** %5, align 8
  %85 = load %struct.bfd_link_info*, %struct.bfd_link_info** %6, align 8
  %86 = load %struct.elf_link_hash_entry*, %struct.elf_link_hash_entry** %7, align 8
  %87 = getelementptr inbounds %struct.elf_link_hash_entry, %struct.elf_link_hash_entry* %86, i32 0, i32 6
  %88 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %87, i32 0, i32 0
  %89 = load i64, i64* %88, align 8
  %90 = trunc i64 %89 to i32
  %91 = load i32, i32* %18, align 4
  %92 = load i64, i64* %17, align 8
  %93 = call i32 @sparc_vxworks_build_plt_entry(i32* %84, %struct.bfd_link_info* %85, i32 %90, i32 %91, i64 %92)
  %94 = load %struct._bfd_sparc_elf_link_hash_table*, %struct._bfd_sparc_elf_link_hash_table** %10, align 8
  %95 = getelementptr inbounds %struct._bfd_sparc_elf_link_hash_table, %struct._bfd_sparc_elf_link_hash_table* %94, i32 0, i32 6
  %96 = load %struct.TYPE_34__*, %struct.TYPE_34__** %95, align 8
  %97 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %96, i32 0, i32 1
  %98 = load %struct.TYPE_33__*, %struct.TYPE_33__** %97, align 8
  %99 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %98, i32 0, i32 0
  %100 = load i64, i64* %99, align 8
  %101 = load %struct._bfd_sparc_elf_link_hash_table*, %struct._bfd_sparc_elf_link_hash_table** %10, align 8
  %102 = getelementptr inbounds %struct._bfd_sparc_elf_link_hash_table, %struct._bfd_sparc_elf_link_hash_table* %101, i32 0, i32 6
  %103 = load %struct.TYPE_34__*, %struct.TYPE_34__** %102, align 8
  %104 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %103, i32 0, i32 0
  %105 = load i64, i64* %104, align 8
  %106 = add nsw i64 %100, %105
  %107 = load i64, i64* %17, align 8
  %108 = add nsw i64 %106, %107
  %109 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %14, i32 0, i32 0
  store i64 %108, i64* %109, align 8
  %110 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %14, i32 0, i32 1
  store i64 0, i64* %110, align 8
  br label %170

111:                                              ; preds = %56
  %112 = load %struct._bfd_sparc_elf_link_hash_table*, %struct._bfd_sparc_elf_link_hash_table** %10, align 8
  %113 = load i32*, i32** %5, align 8
  %114 = load %struct.TYPE_24__*, %struct.TYPE_24__** %12, align 8
  %115 = load %struct.elf_link_hash_entry*, %struct.elf_link_hash_entry** %7, align 8
  %116 = getelementptr inbounds %struct.elf_link_hash_entry, %struct.elf_link_hash_entry* %115, i32 0, i32 6
  %117 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %116, i32 0, i32 0
  %118 = load i64, i64* %117, align 8
  %119 = trunc i64 %118 to i32
  %120 = load %struct.TYPE_24__*, %struct.TYPE_24__** %12, align 8
  %121 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %120, i32 0, i32 4
  %122 = load i32, i32* %121, align 8
  %123 = call i32 @SPARC_ELF_BUILD_PLT_ENTRY(%struct._bfd_sparc_elf_link_hash_table* %112, i32* %113, %struct.TYPE_24__* %114, i32 %119, i32 %122, i64* %16)
  store i32 %123, i32* %18, align 4
  %124 = load i64, i64* %16, align 8
  %125 = load %struct.TYPE_24__*, %struct.TYPE_24__** %12, align 8
  %126 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %125, i32 0, i32 1
  %127 = load %struct.TYPE_22__*, %struct.TYPE_22__** %126, align 8
  %128 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %127, i32 0, i32 0
  %129 = load i64, i64* %128, align 8
  %130 = load %struct.TYPE_24__*, %struct.TYPE_24__** %12, align 8
  %131 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %130, i32 0, i32 0
  %132 = load i64, i64* %131, align 8
  %133 = add nsw i64 %129, %132
  %134 = add nsw i64 %124, %133
  %135 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %14, i32 0, i32 0
  store i64 %134, i64* %135, align 8
  %136 = load i32*, i32** %5, align 8
  %137 = call i32 @ABI_64_P(i32* %136)
  %138 = icmp ne i32 %137, 0
  br i1 %138, label %139, label %149

139:                                              ; preds = %111
  %140 = load %struct.elf_link_hash_entry*, %struct.elf_link_hash_entry** %7, align 8
  %141 = getelementptr inbounds %struct.elf_link_hash_entry, %struct.elf_link_hash_entry* %140, i32 0, i32 6
  %142 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %141, i32 0, i32 0
  %143 = load i64, i64* %142, align 8
  %144 = load i32, i32* @PLT64_LARGE_THRESHOLD, align 4
  %145 = load i32, i32* @PLT64_ENTRY_SIZE, align 4
  %146 = mul nsw i32 %144, %145
  %147 = sext i32 %146 to i64
  %148 = icmp slt i64 %143, %147
  br i1 %148, label %149, label %151

149:                                              ; preds = %139, %111
  %150 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %14, i32 0, i32 1
  store i64 0, i64* %150, align 8
  br label %169

151:                                              ; preds = %139
  %152 = load %struct.elf_link_hash_entry*, %struct.elf_link_hash_entry** %7, align 8
  %153 = getelementptr inbounds %struct.elf_link_hash_entry, %struct.elf_link_hash_entry* %152, i32 0, i32 6
  %154 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %153, i32 0, i32 0
  %155 = load i64, i64* %154, align 8
  %156 = add nsw i64 %155, 4
  %157 = sub nsw i64 0, %156
  %158 = load %struct.TYPE_24__*, %struct.TYPE_24__** %12, align 8
  %159 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %158, i32 0, i32 1
  %160 = load %struct.TYPE_22__*, %struct.TYPE_22__** %159, align 8
  %161 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %160, i32 0, i32 0
  %162 = load i64, i64* %161, align 8
  %163 = sub nsw i64 %157, %162
  %164 = load %struct.TYPE_24__*, %struct.TYPE_24__** %12, align 8
  %165 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %164, i32 0, i32 0
  %166 = load i64, i64* %165, align 8
  %167 = sub nsw i64 %163, %166
  %168 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %14, i32 0, i32 1
  store i64 %167, i64* %168, align 8
  br label %169

169:                                              ; preds = %151, %149
  br label %170

170:                                              ; preds = %169, %64
  %171 = load %struct._bfd_sparc_elf_link_hash_table*, %struct._bfd_sparc_elf_link_hash_table** %10, align 8
  %172 = load %struct.elf_link_hash_entry*, %struct.elf_link_hash_entry** %7, align 8
  %173 = getelementptr inbounds %struct.elf_link_hash_entry, %struct.elf_link_hash_entry* %172, i32 0, i32 0
  %174 = load i32, i32* %173, align 8
  %175 = load i32, i32* @R_SPARC_JMP_SLOT, align 4
  %176 = call i8* @SPARC_ELF_R_INFO(%struct._bfd_sparc_elf_link_hash_table* %171, i32* null, i32 %174, i32 %175)
  %177 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %14, i32 0, i32 2
  store i8* %176, i8** %177, align 8
  %178 = load %struct.TYPE_24__*, %struct.TYPE_24__** %13, align 8
  %179 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %178, i32 0, i32 3
  %180 = load i32*, i32** %179, align 8
  store i32* %180, i32** %15, align 8
  %181 = load i32, i32* %18, align 4
  %182 = load %struct.elf_backend_data*, %struct.elf_backend_data** %11, align 8
  %183 = getelementptr inbounds %struct.elf_backend_data, %struct.elf_backend_data* %182, i32 0, i32 0
  %184 = load %struct.TYPE_36__*, %struct.TYPE_36__** %183, align 8
  %185 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %184, i32 0, i32 0
  %186 = load i32, i32* %185, align 8
  %187 = mul nsw i32 %181, %186
  %188 = load i32*, i32** %15, align 8
  %189 = sext i32 %187 to i64
  %190 = getelementptr inbounds i32, i32* %188, i64 %189
  store i32* %190, i32** %15, align 8
  %191 = load %struct.elf_backend_data*, %struct.elf_backend_data** %11, align 8
  %192 = getelementptr inbounds %struct.elf_backend_data, %struct.elf_backend_data* %191, i32 0, i32 0
  %193 = load %struct.TYPE_36__*, %struct.TYPE_36__** %192, align 8
  %194 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %193, i32 0, i32 1
  %195 = load i32 (i32*, %struct.TYPE_26__*, i32*)*, i32 (i32*, %struct.TYPE_26__*, i32*)** %194, align 8
  %196 = load i32*, i32** %5, align 8
  %197 = load i32*, i32** %15, align 8
  %198 = call i32 %195(i32* %196, %struct.TYPE_26__* %14, i32* %197)
  %199 = load %struct.elf_link_hash_entry*, %struct.elf_link_hash_entry** %7, align 8
  %200 = getelementptr inbounds %struct.elf_link_hash_entry, %struct.elf_link_hash_entry* %199, i32 0, i32 4
  %201 = load i64, i64* %200, align 8
  %202 = icmp ne i64 %201, 0
  br i1 %202, label %215, label %203

203:                                              ; preds = %170
  %204 = load i32, i32* @SHN_UNDEF, align 4
  %205 = load %struct.TYPE_25__*, %struct.TYPE_25__** %8, align 8
  %206 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %205, i32 0, i32 0
  store i32 %204, i32* %206, align 8
  %207 = load %struct.elf_link_hash_entry*, %struct.elf_link_hash_entry** %7, align 8
  %208 = getelementptr inbounds %struct.elf_link_hash_entry, %struct.elf_link_hash_entry* %207, i32 0, i32 5
  %209 = load i32, i32* %208, align 8
  %210 = icmp ne i32 %209, 0
  br i1 %210, label %214, label %211

211:                                              ; preds = %203
  %212 = load %struct.TYPE_25__*, %struct.TYPE_25__** %8, align 8
  %213 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %212, i32 0, i32 1
  store i64 0, i64* %213, align 8
  br label %214

214:                                              ; preds = %211, %203
  br label %215

215:                                              ; preds = %214, %170
  br label %216

216:                                              ; preds = %215, %4
  %217 = load %struct.elf_link_hash_entry*, %struct.elf_link_hash_entry** %7, align 8
  %218 = getelementptr inbounds %struct.elf_link_hash_entry, %struct.elf_link_hash_entry* %217, i32 0, i32 3
  %219 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %218, i32 0, i32 0
  %220 = load i64, i64* %219, align 8
  %221 = icmp ne i64 %220, -1
  br i1 %221, label %222, label %340

222:                                              ; preds = %216
  %223 = load %struct.elf_link_hash_entry*, %struct.elf_link_hash_entry** %7, align 8
  %224 = call %struct.TYPE_27__* @_bfd_sparc_elf_hash_entry(%struct.elf_link_hash_entry* %223)
  %225 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %224, i32 0, i32 0
  %226 = load i64, i64* %225, align 8
  %227 = load i64, i64* @GOT_TLS_GD, align 8
  %228 = icmp ne i64 %226, %227
  br i1 %228, label %229, label %340

229:                                              ; preds = %222
  %230 = load %struct.elf_link_hash_entry*, %struct.elf_link_hash_entry** %7, align 8
  %231 = call %struct.TYPE_27__* @_bfd_sparc_elf_hash_entry(%struct.elf_link_hash_entry* %230)
  %232 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %231, i32 0, i32 0
  %233 = load i64, i64* %232, align 8
  %234 = load i64, i64* @GOT_TLS_IE, align 8
  %235 = icmp ne i64 %233, %234
  br i1 %235, label %236, label %340

236:                                              ; preds = %229
  %237 = load %struct._bfd_sparc_elf_link_hash_table*, %struct._bfd_sparc_elf_link_hash_table** %10, align 8
  %238 = getelementptr inbounds %struct._bfd_sparc_elf_link_hash_table, %struct._bfd_sparc_elf_link_hash_table* %237, i32 0, i32 5
  %239 = load %struct.TYPE_24__*, %struct.TYPE_24__** %238, align 8
  store %struct.TYPE_24__* %239, %struct.TYPE_24__** %19, align 8
  %240 = load %struct._bfd_sparc_elf_link_hash_table*, %struct._bfd_sparc_elf_link_hash_table** %10, align 8
  %241 = getelementptr inbounds %struct._bfd_sparc_elf_link_hash_table, %struct._bfd_sparc_elf_link_hash_table* %240, i32 0, i32 4
  %242 = load %struct.TYPE_24__*, %struct.TYPE_24__** %241, align 8
  store %struct.TYPE_24__* %242, %struct.TYPE_24__** %20, align 8
  %243 = load %struct.TYPE_24__*, %struct.TYPE_24__** %19, align 8
  %244 = icmp ne %struct.TYPE_24__* %243, null
  br i1 %244, label %245, label %248

245:                                              ; preds = %236
  %246 = load %struct.TYPE_24__*, %struct.TYPE_24__** %20, align 8
  %247 = icmp ne %struct.TYPE_24__* %246, null
  br label %248

248:                                              ; preds = %245, %236
  %249 = phi i1 [ false, %236 ], [ %247, %245 ]
  %250 = zext i1 %249 to i32
  %251 = call i32 @BFD_ASSERT(i32 %250)
  %252 = load %struct.TYPE_24__*, %struct.TYPE_24__** %19, align 8
  %253 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %252, i32 0, i32 1
  %254 = load %struct.TYPE_22__*, %struct.TYPE_22__** %253, align 8
  %255 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %254, i32 0, i32 0
  %256 = load i64, i64* %255, align 8
  %257 = load %struct.TYPE_24__*, %struct.TYPE_24__** %19, align 8
  %258 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %257, i32 0, i32 0
  %259 = load i64, i64* %258, align 8
  %260 = add nsw i64 %256, %259
  %261 = load %struct.elf_link_hash_entry*, %struct.elf_link_hash_entry** %7, align 8
  %262 = getelementptr inbounds %struct.elf_link_hash_entry, %struct.elf_link_hash_entry* %261, i32 0, i32 3
  %263 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %262, i32 0, i32 0
  %264 = load i64, i64* %263, align 8
  %265 = and i64 %264, -2
  %266 = add nsw i64 %260, %265
  %267 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %21, i32 0, i32 0
  store i64 %266, i64* %267, align 8
  %268 = load %struct.bfd_link_info*, %struct.bfd_link_info** %6, align 8
  %269 = getelementptr inbounds %struct.bfd_link_info, %struct.bfd_link_info* %268, i32 0, i32 1
  %270 = load i64, i64* %269, align 8
  %271 = icmp ne i64 %270, 0
  br i1 %271, label %272, label %315

272:                                              ; preds = %248
  %273 = load %struct.bfd_link_info*, %struct.bfd_link_info** %6, align 8
  %274 = getelementptr inbounds %struct.bfd_link_info, %struct.bfd_link_info* %273, i32 0, i32 0
  %275 = load i64, i64* %274, align 8
  %276 = icmp ne i64 %275, 0
  br i1 %276, label %282, label %277

277:                                              ; preds = %272
  %278 = load %struct.elf_link_hash_entry*, %struct.elf_link_hash_entry** %7, align 8
  %279 = getelementptr inbounds %struct.elf_link_hash_entry, %struct.elf_link_hash_entry* %278, i32 0, i32 0
  %280 = load i32, i32* %279, align 8
  %281 = icmp eq i32 %280, -1
  br i1 %281, label %282, label %315

282:                                              ; preds = %277, %272
  %283 = load %struct.elf_link_hash_entry*, %struct.elf_link_hash_entry** %7, align 8
  %284 = getelementptr inbounds %struct.elf_link_hash_entry, %struct.elf_link_hash_entry* %283, i32 0, i32 4
  %285 = load i64, i64* %284, align 8
  %286 = icmp ne i64 %285, 0
  br i1 %286, label %287, label %315

287:                                              ; preds = %282
  %288 = load %struct.elf_link_hash_entry*, %struct.elf_link_hash_entry** %7, align 8
  %289 = getelementptr inbounds %struct.elf_link_hash_entry, %struct.elf_link_hash_entry* %288, i32 0, i32 1
  %290 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %289, i32 0, i32 1
  %291 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %290, i32 0, i32 0
  %292 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %291, i32 0, i32 1
  %293 = load %struct.TYPE_24__*, %struct.TYPE_24__** %292, align 8
  store %struct.TYPE_24__* %293, %struct.TYPE_24__** %22, align 8
  %294 = load %struct._bfd_sparc_elf_link_hash_table*, %struct._bfd_sparc_elf_link_hash_table** %10, align 8
  %295 = load i32, i32* @R_SPARC_RELATIVE, align 4
  %296 = call i8* @SPARC_ELF_R_INFO(%struct._bfd_sparc_elf_link_hash_table* %294, i32* null, i32 0, i32 %295)
  %297 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %21, i32 0, i32 2
  store i8* %296, i8** %297, align 8
  %298 = load %struct.elf_link_hash_entry*, %struct.elf_link_hash_entry** %7, align 8
  %299 = getelementptr inbounds %struct.elf_link_hash_entry, %struct.elf_link_hash_entry* %298, i32 0, i32 1
  %300 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %299, i32 0, i32 1
  %301 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %300, i32 0, i32 0
  %302 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %301, i32 0, i32 0
  %303 = load i64, i64* %302, align 8
  %304 = load %struct.TYPE_24__*, %struct.TYPE_24__** %22, align 8
  %305 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %304, i32 0, i32 1
  %306 = load %struct.TYPE_22__*, %struct.TYPE_22__** %305, align 8
  %307 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %306, i32 0, i32 0
  %308 = load i64, i64* %307, align 8
  %309 = add nsw i64 %303, %308
  %310 = load %struct.TYPE_24__*, %struct.TYPE_24__** %22, align 8
  %311 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %310, i32 0, i32 0
  %312 = load i64, i64* %311, align 8
  %313 = add nsw i64 %309, %312
  %314 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %21, i32 0, i32 1
  store i64 %313, i64* %314, align 8
  br label %324

315:                                              ; preds = %282, %277, %248
  %316 = load %struct._bfd_sparc_elf_link_hash_table*, %struct._bfd_sparc_elf_link_hash_table** %10, align 8
  %317 = load %struct.elf_link_hash_entry*, %struct.elf_link_hash_entry** %7, align 8
  %318 = getelementptr inbounds %struct.elf_link_hash_entry, %struct.elf_link_hash_entry* %317, i32 0, i32 0
  %319 = load i32, i32* %318, align 8
  %320 = load i32, i32* @R_SPARC_GLOB_DAT, align 4
  %321 = call i8* @SPARC_ELF_R_INFO(%struct._bfd_sparc_elf_link_hash_table* %316, i32* null, i32 %319, i32 %320)
  %322 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %21, i32 0, i32 2
  store i8* %321, i8** %322, align 8
  %323 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %21, i32 0, i32 1
  store i64 0, i64* %323, align 8
  br label %324

324:                                              ; preds = %315, %287
  %325 = load %struct._bfd_sparc_elf_link_hash_table*, %struct._bfd_sparc_elf_link_hash_table** %10, align 8
  %326 = load i32*, i32** %5, align 8
  %327 = load %struct.TYPE_24__*, %struct.TYPE_24__** %19, align 8
  %328 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %327, i32 0, i32 3
  %329 = load i32*, i32** %328, align 8
  %330 = load %struct.elf_link_hash_entry*, %struct.elf_link_hash_entry** %7, align 8
  %331 = getelementptr inbounds %struct.elf_link_hash_entry, %struct.elf_link_hash_entry* %330, i32 0, i32 3
  %332 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %331, i32 0, i32 0
  %333 = load i64, i64* %332, align 8
  %334 = and i64 %333, -2
  %335 = getelementptr inbounds i32, i32* %329, i64 %334
  %336 = call i32 @SPARC_ELF_PUT_WORD(%struct._bfd_sparc_elf_link_hash_table* %325, i32* %326, i32 0, i32* %335)
  %337 = load i32*, i32** %5, align 8
  %338 = load %struct.TYPE_24__*, %struct.TYPE_24__** %20, align 8
  %339 = call i32 @sparc_elf_append_rela(i32* %337, %struct.TYPE_24__* %338, %struct.TYPE_26__* %21)
  br label %340

340:                                              ; preds = %324, %229, %222, %216
  %341 = load %struct.elf_link_hash_entry*, %struct.elf_link_hash_entry** %7, align 8
  %342 = getelementptr inbounds %struct.elf_link_hash_entry, %struct.elf_link_hash_entry* %341, i32 0, i32 2
  %343 = load i64, i64* %342, align 8
  %344 = icmp ne i64 %343, 0
  br i1 %344, label %345, label %403

345:                                              ; preds = %340
  %346 = load %struct.elf_link_hash_entry*, %struct.elf_link_hash_entry** %7, align 8
  %347 = getelementptr inbounds %struct.elf_link_hash_entry, %struct.elf_link_hash_entry* %346, i32 0, i32 0
  %348 = load i32, i32* %347, align 8
  %349 = icmp ne i32 %348, -1
  %350 = zext i1 %349 to i32
  %351 = call i32 @BFD_ASSERT(i32 %350)
  %352 = load %struct.elf_link_hash_entry*, %struct.elf_link_hash_entry** %7, align 8
  %353 = getelementptr inbounds %struct.elf_link_hash_entry, %struct.elf_link_hash_entry* %352, i32 0, i32 1
  %354 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %353, i32 0, i32 1
  %355 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %354, i32 0, i32 0
  %356 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %355, i32 0, i32 1
  %357 = load %struct.TYPE_24__*, %struct.TYPE_24__** %356, align 8
  %358 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %357, i32 0, i32 2
  %359 = load i32, i32* %358, align 8
  %360 = call %struct.TYPE_24__* @bfd_get_section_by_name(i32 %359, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0))
  store %struct.TYPE_24__* %360, %struct.TYPE_24__** %23, align 8
  %361 = load %struct.TYPE_24__*, %struct.TYPE_24__** %23, align 8
  %362 = icmp ne %struct.TYPE_24__* %361, null
  %363 = zext i1 %362 to i32
  %364 = call i32 @BFD_ASSERT(i32 %363)
  %365 = load %struct.elf_link_hash_entry*, %struct.elf_link_hash_entry** %7, align 8
  %366 = getelementptr inbounds %struct.elf_link_hash_entry, %struct.elf_link_hash_entry* %365, i32 0, i32 1
  %367 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %366, i32 0, i32 1
  %368 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %367, i32 0, i32 0
  %369 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %368, i32 0, i32 0
  %370 = load i64, i64* %369, align 8
  %371 = load %struct.elf_link_hash_entry*, %struct.elf_link_hash_entry** %7, align 8
  %372 = getelementptr inbounds %struct.elf_link_hash_entry, %struct.elf_link_hash_entry* %371, i32 0, i32 1
  %373 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %372, i32 0, i32 1
  %374 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %373, i32 0, i32 0
  %375 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %374, i32 0, i32 1
  %376 = load %struct.TYPE_24__*, %struct.TYPE_24__** %375, align 8
  %377 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %376, i32 0, i32 1
  %378 = load %struct.TYPE_22__*, %struct.TYPE_22__** %377, align 8
  %379 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %378, i32 0, i32 0
  %380 = load i64, i64* %379, align 8
  %381 = add nsw i64 %370, %380
  %382 = load %struct.elf_link_hash_entry*, %struct.elf_link_hash_entry** %7, align 8
  %383 = getelementptr inbounds %struct.elf_link_hash_entry, %struct.elf_link_hash_entry* %382, i32 0, i32 1
  %384 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %383, i32 0, i32 1
  %385 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %384, i32 0, i32 0
  %386 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %385, i32 0, i32 1
  %387 = load %struct.TYPE_24__*, %struct.TYPE_24__** %386, align 8
  %388 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %387, i32 0, i32 0
  %389 = load i64, i64* %388, align 8
  %390 = add nsw i64 %381, %389
  %391 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %24, i32 0, i32 0
  store i64 %390, i64* %391, align 8
  %392 = load %struct._bfd_sparc_elf_link_hash_table*, %struct._bfd_sparc_elf_link_hash_table** %10, align 8
  %393 = load %struct.elf_link_hash_entry*, %struct.elf_link_hash_entry** %7, align 8
  %394 = getelementptr inbounds %struct.elf_link_hash_entry, %struct.elf_link_hash_entry* %393, i32 0, i32 0
  %395 = load i32, i32* %394, align 8
  %396 = load i32, i32* @R_SPARC_COPY, align 4
  %397 = call i8* @SPARC_ELF_R_INFO(%struct._bfd_sparc_elf_link_hash_table* %392, i32* null, i32 %395, i32 %396)
  %398 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %24, i32 0, i32 2
  store i8* %397, i8** %398, align 8
  %399 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %24, i32 0, i32 1
  store i64 0, i64* %399, align 8
  %400 = load i32*, i32** %5, align 8
  %401 = load %struct.TYPE_24__*, %struct.TYPE_24__** %23, align 8
  %402 = call i32 @sparc_elf_append_rela(i32* %400, %struct.TYPE_24__* %401, %struct.TYPE_26__* %24)
  br label %403

403:                                              ; preds = %345, %340
  %404 = load %struct.elf_link_hash_entry*, %struct.elf_link_hash_entry** %7, align 8
  %405 = getelementptr inbounds %struct.elf_link_hash_entry, %struct.elf_link_hash_entry* %404, i32 0, i32 1
  %406 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %405, i32 0, i32 0
  %407 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %406, i32 0, i32 0
  %408 = load i32, i32* %407, align 8
  %409 = call i64 @strcmp(i32 %408, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0))
  %410 = icmp eq i64 %409, 0
  br i1 %410, label %430, label %411

411:                                              ; preds = %403
  %412 = load %struct._bfd_sparc_elf_link_hash_table*, %struct._bfd_sparc_elf_link_hash_table** %10, align 8
  %413 = getelementptr inbounds %struct._bfd_sparc_elf_link_hash_table, %struct._bfd_sparc_elf_link_hash_table* %412, i32 0, i32 3
  %414 = load i64, i64* %413, align 8
  %415 = icmp ne i64 %414, 0
  br i1 %415, label %434, label %416

416:                                              ; preds = %411
  %417 = load %struct.elf_link_hash_entry*, %struct.elf_link_hash_entry** %7, align 8
  %418 = load %struct._bfd_sparc_elf_link_hash_table*, %struct._bfd_sparc_elf_link_hash_table** %10, align 8
  %419 = getelementptr inbounds %struct._bfd_sparc_elf_link_hash_table, %struct._bfd_sparc_elf_link_hash_table* %418, i32 0, i32 2
  %420 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %419, i32 0, i32 1
  %421 = load %struct.elf_link_hash_entry*, %struct.elf_link_hash_entry** %420, align 8
  %422 = icmp eq %struct.elf_link_hash_entry* %417, %421
  br i1 %422, label %430, label %423

423:                                              ; preds = %416
  %424 = load %struct.elf_link_hash_entry*, %struct.elf_link_hash_entry** %7, align 8
  %425 = load %struct._bfd_sparc_elf_link_hash_table*, %struct._bfd_sparc_elf_link_hash_table** %10, align 8
  %426 = getelementptr inbounds %struct._bfd_sparc_elf_link_hash_table, %struct._bfd_sparc_elf_link_hash_table* %425, i32 0, i32 2
  %427 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %426, i32 0, i32 0
  %428 = load %struct.elf_link_hash_entry*, %struct.elf_link_hash_entry** %427, align 8
  %429 = icmp eq %struct.elf_link_hash_entry* %424, %428
  br i1 %429, label %430, label %434

430:                                              ; preds = %423, %416, %403
  %431 = load i32, i32* @SHN_ABS, align 4
  %432 = load %struct.TYPE_25__*, %struct.TYPE_25__** %8, align 8
  %433 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %432, i32 0, i32 0
  store i32 %431, i32* %433, align 8
  br label %434

434:                                              ; preds = %430, %423, %411
  %435 = load i32, i32* @TRUE, align 4
  ret i32 %435
}

declare dso_local %struct._bfd_sparc_elf_link_hash_table* @_bfd_sparc_elf_hash_table(%struct.bfd_link_info*) #1

declare dso_local %struct.elf_backend_data* @get_elf_backend_data(i32*) #1

declare dso_local i32 @BFD_ASSERT(i32) #1

declare dso_local i32 @sparc_vxworks_build_plt_entry(i32*, %struct.bfd_link_info*, i32, i32, i64) #1

declare dso_local i32 @SPARC_ELF_BUILD_PLT_ENTRY(%struct._bfd_sparc_elf_link_hash_table*, i32*, %struct.TYPE_24__*, i32, i32, i64*) #1

declare dso_local i32 @ABI_64_P(i32*) #1

declare dso_local i8* @SPARC_ELF_R_INFO(%struct._bfd_sparc_elf_link_hash_table*, i32*, i32, i32) #1

declare dso_local %struct.TYPE_27__* @_bfd_sparc_elf_hash_entry(%struct.elf_link_hash_entry*) #1

declare dso_local i32 @SPARC_ELF_PUT_WORD(%struct._bfd_sparc_elf_link_hash_table*, i32*, i32, i32*) #1

declare dso_local i32 @sparc_elf_append_rela(i32*, %struct.TYPE_24__*, %struct.TYPE_26__*) #1

declare dso_local %struct.TYPE_24__* @bfd_get_section_by_name(i32, i8*) #1

declare dso_local i64 @strcmp(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

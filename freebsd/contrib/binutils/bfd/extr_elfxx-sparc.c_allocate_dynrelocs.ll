; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/bfd/extr_elfxx-sparc.c_allocate_dynrelocs.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/bfd/extr_elfxx-sparc.c_allocate_dynrelocs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.elf_link_hash_entry = type { i32, i64, %struct.TYPE_26__, i64, i64, i32, i32, %struct.TYPE_21__, i64, %struct.TYPE_27__ }
%struct.TYPE_26__ = type { i64, %struct.TYPE_25__ }
%struct.TYPE_25__ = type { %struct.TYPE_24__, %struct.TYPE_22__ }
%struct.TYPE_24__ = type { i32, %struct.TYPE_17__* }
%struct.TYPE_17__ = type { i32 }
%struct.TYPE_22__ = type { i64 }
%struct.TYPE_21__ = type { i64, i32 }
%struct.TYPE_27__ = type { i64, i32 }
%struct.bfd_link_info = type { i64, i64 }
%struct._bfd_sparc_elf_link_hash_table = type { i32, %struct.TYPE_23__, %struct.TYPE_20__*, %struct.TYPE_17__*, %struct.TYPE_16__*, %struct.TYPE_15__*, i64, %struct.TYPE_28__*, i64, %struct.TYPE_17__* }
%struct.TYPE_23__ = type { i32 }
%struct.TYPE_20__ = type { i32 }
%struct.TYPE_16__ = type { i32 }
%struct.TYPE_15__ = type { i32 }
%struct.TYPE_28__ = type { i32 }
%struct._bfd_sparc_elf_link_hash_entry = type { %struct._bfd_sparc_elf_dyn_relocs* }
%struct._bfd_sparc_elf_dyn_relocs = type { i32, i32, %struct._bfd_sparc_elf_dyn_relocs*, i64 }
%struct.TYPE_19__ = type { i32 }
%struct.TYPE_18__ = type { %struct.TYPE_17__* }

@bfd_link_hash_indirect = common dso_local global i64 0, align 8
@TRUE = common dso_local global i32 0, align 4
@bfd_link_hash_warning = common dso_local global i64 0, align 8
@FALSE = common dso_local global i32 0, align 4
@bfd_error_bad_value = common dso_local global i32 0, align 4
@PLT64_LARGE_THRESHOLD = common dso_local global i32 0, align 4
@PLT64_ENTRY_SIZE = common dso_local global i32 0, align 4
@GOT_TLS_IE = common dso_local global i32 0, align 4
@GOT_TLS_GD = common dso_local global i32 0, align 4
@bfd_link_hash_undefweak = common dso_local global i64 0, align 8
@STV_DEFAULT = common dso_local global i64 0, align 8
@bfd_link_hash_undefined = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.elf_link_hash_entry*, i64)* @allocate_dynrelocs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @allocate_dynrelocs(%struct.elf_link_hash_entry* %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.elf_link_hash_entry*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.bfd_link_info*, align 8
  %7 = alloca %struct._bfd_sparc_elf_link_hash_table*, align 8
  %8 = alloca %struct._bfd_sparc_elf_link_hash_entry*, align 8
  %9 = alloca %struct._bfd_sparc_elf_dyn_relocs*, align 8
  %10 = alloca %struct.TYPE_17__*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.TYPE_17__*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca %struct._bfd_sparc_elf_dyn_relocs**, align 8
  %16 = alloca %struct.TYPE_17__*, align 8
  store %struct.elf_link_hash_entry* %0, %struct.elf_link_hash_entry** %4, align 8
  store i64 %1, i64* %5, align 8
  %17 = load %struct.elf_link_hash_entry*, %struct.elf_link_hash_entry** %4, align 8
  %18 = getelementptr inbounds %struct.elf_link_hash_entry, %struct.elf_link_hash_entry* %17, i32 0, i32 2
  %19 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = load i64, i64* @bfd_link_hash_indirect, align 8
  %22 = icmp eq i64 %20, %21
  br i1 %22, label %23, label %25

23:                                               ; preds = %2
  %24 = load i32, i32* @TRUE, align 4
  store i32 %24, i32* %3, align 4
  br label %594

25:                                               ; preds = %2
  %26 = load %struct.elf_link_hash_entry*, %struct.elf_link_hash_entry** %4, align 8
  %27 = getelementptr inbounds %struct.elf_link_hash_entry, %struct.elf_link_hash_entry* %26, i32 0, i32 2
  %28 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = load i64, i64* @bfd_link_hash_warning, align 8
  %31 = icmp eq i64 %29, %30
  br i1 %31, label %32, label %40

32:                                               ; preds = %25
  %33 = load %struct.elf_link_hash_entry*, %struct.elf_link_hash_entry** %4, align 8
  %34 = getelementptr inbounds %struct.elf_link_hash_entry, %struct.elf_link_hash_entry* %33, i32 0, i32 2
  %35 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %34, i32 0, i32 1
  %36 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %35, i32 0, i32 1
  %37 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = inttoptr i64 %38 to %struct.elf_link_hash_entry*
  store %struct.elf_link_hash_entry* %39, %struct.elf_link_hash_entry** %4, align 8
  br label %40

40:                                               ; preds = %32, %25
  %41 = load i64, i64* %5, align 8
  %42 = inttoptr i64 %41 to %struct.bfd_link_info*
  store %struct.bfd_link_info* %42, %struct.bfd_link_info** %6, align 8
  %43 = load %struct.bfd_link_info*, %struct.bfd_link_info** %6, align 8
  %44 = call %struct._bfd_sparc_elf_link_hash_table* @_bfd_sparc_elf_hash_table(%struct.bfd_link_info* %43)
  store %struct._bfd_sparc_elf_link_hash_table* %44, %struct._bfd_sparc_elf_link_hash_table** %7, align 8
  %45 = load %struct._bfd_sparc_elf_link_hash_table*, %struct._bfd_sparc_elf_link_hash_table** %7, align 8
  %46 = getelementptr inbounds %struct._bfd_sparc_elf_link_hash_table, %struct._bfd_sparc_elf_link_hash_table* %45, i32 0, i32 1
  %47 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %243

50:                                               ; preds = %40
  %51 = load %struct.elf_link_hash_entry*, %struct.elf_link_hash_entry** %4, align 8
  %52 = getelementptr inbounds %struct.elf_link_hash_entry, %struct.elf_link_hash_entry* %51, i32 0, i32 9
  %53 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = icmp sgt i64 %54, 0
  br i1 %55, label %56, label %243

56:                                               ; preds = %50
  %57 = load %struct.elf_link_hash_entry*, %struct.elf_link_hash_entry** %4, align 8
  %58 = getelementptr inbounds %struct.elf_link_hash_entry, %struct.elf_link_hash_entry* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 8
  %60 = icmp eq i32 %59, -1
  br i1 %60, label %61, label %74

61:                                               ; preds = %56
  %62 = load %struct.elf_link_hash_entry*, %struct.elf_link_hash_entry** %4, align 8
  %63 = getelementptr inbounds %struct.elf_link_hash_entry, %struct.elf_link_hash_entry* %62, i32 0, i32 1
  %64 = load i64, i64* %63, align 8
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %74, label %66

66:                                               ; preds = %61
  %67 = load %struct.bfd_link_info*, %struct.bfd_link_info** %6, align 8
  %68 = load %struct.elf_link_hash_entry*, %struct.elf_link_hash_entry** %4, align 8
  %69 = call i32 @bfd_elf_link_record_dynamic_symbol(%struct.bfd_link_info* %67, %struct.elf_link_hash_entry* %68)
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %73, label %71

71:                                               ; preds = %66
  %72 = load i32, i32* @FALSE, align 4
  store i32 %72, i32* %3, align 4
  br label %594

73:                                               ; preds = %66
  br label %74

74:                                               ; preds = %73, %61, %56
  %75 = load %struct.bfd_link_info*, %struct.bfd_link_info** %6, align 8
  %76 = getelementptr inbounds %struct.bfd_link_info, %struct.bfd_link_info* %75, i32 0, i32 1
  %77 = load i64, i64* %76, align 8
  %78 = load %struct.elf_link_hash_entry*, %struct.elf_link_hash_entry** %4, align 8
  %79 = call i64 @WILL_CALL_FINISH_DYNAMIC_SYMBOL(i32 1, i64 %77, %struct.elf_link_hash_entry* %78)
  %80 = icmp ne i64 %79, 0
  br i1 %80, label %81, label %236

81:                                               ; preds = %74
  %82 = load %struct._bfd_sparc_elf_link_hash_table*, %struct._bfd_sparc_elf_link_hash_table** %7, align 8
  %83 = getelementptr inbounds %struct._bfd_sparc_elf_link_hash_table, %struct._bfd_sparc_elf_link_hash_table* %82, i32 0, i32 9
  %84 = load %struct.TYPE_17__*, %struct.TYPE_17__** %83, align 8
  store %struct.TYPE_17__* %84, %struct.TYPE_17__** %10, align 8
  %85 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  %86 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 4
  %88 = icmp eq i32 %87, 0
  br i1 %88, label %89, label %110

89:                                               ; preds = %81
  %90 = load %struct._bfd_sparc_elf_link_hash_table*, %struct._bfd_sparc_elf_link_hash_table** %7, align 8
  %91 = getelementptr inbounds %struct._bfd_sparc_elf_link_hash_table, %struct._bfd_sparc_elf_link_hash_table* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 8
  %93 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  %94 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %93, i32 0, i32 0
  store i32 %92, i32* %94, align 4
  %95 = load %struct._bfd_sparc_elf_link_hash_table*, %struct._bfd_sparc_elf_link_hash_table** %7, align 8
  %96 = getelementptr inbounds %struct._bfd_sparc_elf_link_hash_table, %struct._bfd_sparc_elf_link_hash_table* %95, i32 0, i32 6
  %97 = load i64, i64* %96, align 8
  %98 = icmp ne i64 %97, 0
  br i1 %98, label %99, label %109

99:                                               ; preds = %89
  %100 = load %struct.bfd_link_info*, %struct.bfd_link_info** %6, align 8
  %101 = getelementptr inbounds %struct.bfd_link_info, %struct.bfd_link_info* %100, i32 0, i32 1
  %102 = load i64, i64* %101, align 8
  %103 = icmp ne i64 %102, 0
  br i1 %103, label %109, label %104

104:                                              ; preds = %99
  %105 = load %struct._bfd_sparc_elf_link_hash_table*, %struct._bfd_sparc_elf_link_hash_table** %7, align 8
  %106 = getelementptr inbounds %struct._bfd_sparc_elf_link_hash_table, %struct._bfd_sparc_elf_link_hash_table* %105, i32 0, i32 4
  %107 = load %struct.TYPE_16__*, %struct.TYPE_16__** %106, align 8
  %108 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %107, i32 0, i32 0
  store i32 8, i32* %108, align 4
  br label %109

109:                                              ; preds = %104, %99, %89
  br label %110

110:                                              ; preds = %109, %81
  %111 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  %112 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %111, i32 0, i32 0
  %113 = load i32, i32* %112, align 4
  %114 = load %struct._bfd_sparc_elf_link_hash_table*, %struct._bfd_sparc_elf_link_hash_table** %7, align 8
  %115 = call i32 @SPARC_ELF_WORD_BYTES(%struct._bfd_sparc_elf_link_hash_table* %114)
  %116 = icmp eq i32 %115, 8
  %117 = zext i1 %116 to i64
  %118 = select i1 %116, i32 0, i32 4194304
  %119 = icmp sge i32 %113, %118
  br i1 %119, label %120, label %124

120:                                              ; preds = %110
  %121 = load i32, i32* @bfd_error_bad_value, align 4
  %122 = call i32 @bfd_set_error(i32 %121)
  %123 = load i32, i32* @FALSE, align 4
  store i32 %123, i32* %3, align 4
  br label %594

124:                                              ; preds = %110
  %125 = load %struct._bfd_sparc_elf_link_hash_table*, %struct._bfd_sparc_elf_link_hash_table** %7, align 8
  %126 = call i32 @SPARC_ELF_WORD_BYTES(%struct._bfd_sparc_elf_link_hash_table* %125)
  %127 = icmp eq i32 %126, 8
  br i1 %127, label %128, label %159

128:                                              ; preds = %124
  %129 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  %130 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %129, i32 0, i32 0
  %131 = load i32, i32* %130, align 4
  %132 = load i32, i32* @PLT64_LARGE_THRESHOLD, align 4
  %133 = load i32, i32* @PLT64_ENTRY_SIZE, align 4
  %134 = mul nsw i32 %132, %133
  %135 = icmp sge i32 %131, %134
  br i1 %135, label %136, label %159

136:                                              ; preds = %128
  %137 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  %138 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %137, i32 0, i32 0
  %139 = load i32, i32* %138, align 4
  %140 = load i32, i32* @PLT64_LARGE_THRESHOLD, align 4
  %141 = load i32, i32* @PLT64_ENTRY_SIZE, align 4
  %142 = mul nsw i32 %140, %141
  %143 = sub nsw i32 %139, %142
  store i32 %143, i32* %11, align 4
  %144 = load i32, i32* %11, align 4
  %145 = load i32, i32* @PLT64_ENTRY_SIZE, align 4
  %146 = mul nsw i32 160, %145
  %147 = srem i32 %144, %146
  %148 = load i32, i32* @PLT64_ENTRY_SIZE, align 4
  %149 = sdiv i32 %147, %148
  store i32 %149, i32* %11, align 4
  %150 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  %151 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %150, i32 0, i32 0
  %152 = load i32, i32* %151, align 4
  %153 = load i32, i32* %11, align 4
  %154 = mul nsw i32 %153, 8
  %155 = sub nsw i32 %152, %154
  %156 = load %struct.elf_link_hash_entry*, %struct.elf_link_hash_entry** %4, align 8
  %157 = getelementptr inbounds %struct.elf_link_hash_entry, %struct.elf_link_hash_entry* %156, i32 0, i32 9
  %158 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %157, i32 0, i32 1
  store i32 %155, i32* %158, align 8
  br label %166

159:                                              ; preds = %128, %124
  %160 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  %161 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %160, i32 0, i32 0
  %162 = load i32, i32* %161, align 4
  %163 = load %struct.elf_link_hash_entry*, %struct.elf_link_hash_entry** %4, align 8
  %164 = getelementptr inbounds %struct.elf_link_hash_entry, %struct.elf_link_hash_entry* %163, i32 0, i32 9
  %165 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %164, i32 0, i32 1
  store i32 %162, i32* %165, align 8
  br label %166

166:                                              ; preds = %159, %136
  %167 = load %struct.bfd_link_info*, %struct.bfd_link_info** %6, align 8
  %168 = getelementptr inbounds %struct.bfd_link_info, %struct.bfd_link_info* %167, i32 0, i32 1
  %169 = load i64, i64* %168, align 8
  %170 = icmp ne i64 %169, 0
  br i1 %170, label %192, label %171

171:                                              ; preds = %166
  %172 = load %struct.elf_link_hash_entry*, %struct.elf_link_hash_entry** %4, align 8
  %173 = getelementptr inbounds %struct.elf_link_hash_entry, %struct.elf_link_hash_entry* %172, i32 0, i32 3
  %174 = load i64, i64* %173, align 8
  %175 = icmp ne i64 %174, 0
  br i1 %175, label %192, label %176

176:                                              ; preds = %171
  %177 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  %178 = load %struct.elf_link_hash_entry*, %struct.elf_link_hash_entry** %4, align 8
  %179 = getelementptr inbounds %struct.elf_link_hash_entry, %struct.elf_link_hash_entry* %178, i32 0, i32 2
  %180 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %179, i32 0, i32 1
  %181 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %180, i32 0, i32 0
  %182 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %181, i32 0, i32 1
  store %struct.TYPE_17__* %177, %struct.TYPE_17__** %182, align 8
  %183 = load %struct.elf_link_hash_entry*, %struct.elf_link_hash_entry** %4, align 8
  %184 = getelementptr inbounds %struct.elf_link_hash_entry, %struct.elf_link_hash_entry* %183, i32 0, i32 9
  %185 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %184, i32 0, i32 1
  %186 = load i32, i32* %185, align 8
  %187 = load %struct.elf_link_hash_entry*, %struct.elf_link_hash_entry** %4, align 8
  %188 = getelementptr inbounds %struct.elf_link_hash_entry, %struct.elf_link_hash_entry* %187, i32 0, i32 2
  %189 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %188, i32 0, i32 1
  %190 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %189, i32 0, i32 0
  %191 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %190, i32 0, i32 0
  store i32 %186, i32* %191, align 8
  br label %192

192:                                              ; preds = %176, %171, %166
  %193 = load %struct._bfd_sparc_elf_link_hash_table*, %struct._bfd_sparc_elf_link_hash_table** %7, align 8
  %194 = getelementptr inbounds %struct._bfd_sparc_elf_link_hash_table, %struct._bfd_sparc_elf_link_hash_table* %193, i32 0, i32 8
  %195 = load i64, i64* %194, align 8
  %196 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  %197 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %196, i32 0, i32 0
  %198 = load i32, i32* %197, align 4
  %199 = sext i32 %198 to i64
  %200 = add nsw i64 %199, %195
  %201 = trunc i64 %200 to i32
  store i32 %201, i32* %197, align 4
  %202 = load %struct._bfd_sparc_elf_link_hash_table*, %struct._bfd_sparc_elf_link_hash_table** %7, align 8
  %203 = call i32 @SPARC_ELF_RELA_BYTES(%struct._bfd_sparc_elf_link_hash_table* %202)
  %204 = load %struct._bfd_sparc_elf_link_hash_table*, %struct._bfd_sparc_elf_link_hash_table** %7, align 8
  %205 = getelementptr inbounds %struct._bfd_sparc_elf_link_hash_table, %struct._bfd_sparc_elf_link_hash_table* %204, i32 0, i32 7
  %206 = load %struct.TYPE_28__*, %struct.TYPE_28__** %205, align 8
  %207 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %206, i32 0, i32 0
  %208 = load i32, i32* %207, align 4
  %209 = add nsw i32 %208, %203
  store i32 %209, i32* %207, align 4
  %210 = load %struct._bfd_sparc_elf_link_hash_table*, %struct._bfd_sparc_elf_link_hash_table** %7, align 8
  %211 = getelementptr inbounds %struct._bfd_sparc_elf_link_hash_table, %struct._bfd_sparc_elf_link_hash_table* %210, i32 0, i32 6
  %212 = load i64, i64* %211, align 8
  %213 = icmp ne i64 %212, 0
  br i1 %213, label %214, label %235

214:                                              ; preds = %192
  %215 = load %struct._bfd_sparc_elf_link_hash_table*, %struct._bfd_sparc_elf_link_hash_table** %7, align 8
  %216 = getelementptr inbounds %struct._bfd_sparc_elf_link_hash_table, %struct._bfd_sparc_elf_link_hash_table* %215, i32 0, i32 5
  %217 = load %struct.TYPE_15__*, %struct.TYPE_15__** %216, align 8
  %218 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %217, i32 0, i32 0
  %219 = load i32, i32* %218, align 4
  %220 = add nsw i32 %219, 4
  store i32 %220, i32* %218, align 4
  %221 = load %struct.bfd_link_info*, %struct.bfd_link_info** %6, align 8
  %222 = getelementptr inbounds %struct.bfd_link_info, %struct.bfd_link_info* %221, i32 0, i32 1
  %223 = load i64, i64* %222, align 8
  %224 = icmp ne i64 %223, 0
  br i1 %224, label %234, label %225

225:                                              ; preds = %214
  %226 = load %struct._bfd_sparc_elf_link_hash_table*, %struct._bfd_sparc_elf_link_hash_table** %7, align 8
  %227 = getelementptr inbounds %struct._bfd_sparc_elf_link_hash_table, %struct._bfd_sparc_elf_link_hash_table* %226, i32 0, i32 4
  %228 = load %struct.TYPE_16__*, %struct.TYPE_16__** %227, align 8
  %229 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %228, i32 0, i32 0
  %230 = load i32, i32* %229, align 4
  %231 = sext i32 %230 to i64
  %232 = add i64 %231, 12
  %233 = trunc i64 %232 to i32
  store i32 %233, i32* %229, align 4
  br label %234

234:                                              ; preds = %225, %214
  br label %235

235:                                              ; preds = %234, %192
  br label %242

236:                                              ; preds = %74
  %237 = load %struct.elf_link_hash_entry*, %struct.elf_link_hash_entry** %4, align 8
  %238 = getelementptr inbounds %struct.elf_link_hash_entry, %struct.elf_link_hash_entry* %237, i32 0, i32 9
  %239 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %238, i32 0, i32 1
  store i32 -1, i32* %239, align 8
  %240 = load %struct.elf_link_hash_entry*, %struct.elf_link_hash_entry** %4, align 8
  %241 = getelementptr inbounds %struct.elf_link_hash_entry, %struct.elf_link_hash_entry* %240, i32 0, i32 8
  store i64 0, i64* %241, align 8
  br label %242

242:                                              ; preds = %236, %235
  br label %249

243:                                              ; preds = %50, %40
  %244 = load %struct.elf_link_hash_entry*, %struct.elf_link_hash_entry** %4, align 8
  %245 = getelementptr inbounds %struct.elf_link_hash_entry, %struct.elf_link_hash_entry* %244, i32 0, i32 9
  %246 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %245, i32 0, i32 1
  store i32 -1, i32* %246, align 8
  %247 = load %struct.elf_link_hash_entry*, %struct.elf_link_hash_entry** %4, align 8
  %248 = getelementptr inbounds %struct.elf_link_hash_entry, %struct.elf_link_hash_entry* %247, i32 0, i32 8
  store i64 0, i64* %248, align 8
  br label %249

249:                                              ; preds = %243, %242
  %250 = load %struct.elf_link_hash_entry*, %struct.elf_link_hash_entry** %4, align 8
  %251 = getelementptr inbounds %struct.elf_link_hash_entry, %struct.elf_link_hash_entry* %250, i32 0, i32 7
  %252 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %251, i32 0, i32 0
  %253 = load i64, i64* %252, align 8
  %254 = icmp sgt i64 %253, 0
  br i1 %254, label %255, label %276

255:                                              ; preds = %249
  %256 = load %struct.bfd_link_info*, %struct.bfd_link_info** %6, align 8
  %257 = getelementptr inbounds %struct.bfd_link_info, %struct.bfd_link_info* %256, i32 0, i32 1
  %258 = load i64, i64* %257, align 8
  %259 = icmp ne i64 %258, 0
  br i1 %259, label %276, label %260

260:                                              ; preds = %255
  %261 = load %struct.elf_link_hash_entry*, %struct.elf_link_hash_entry** %4, align 8
  %262 = getelementptr inbounds %struct.elf_link_hash_entry, %struct.elf_link_hash_entry* %261, i32 0, i32 0
  %263 = load i32, i32* %262, align 8
  %264 = icmp eq i32 %263, -1
  br i1 %264, label %265, label %276

265:                                              ; preds = %260
  %266 = load %struct.elf_link_hash_entry*, %struct.elf_link_hash_entry** %4, align 8
  %267 = call %struct.TYPE_19__* @_bfd_sparc_elf_hash_entry(%struct.elf_link_hash_entry* %266)
  %268 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %267, i32 0, i32 0
  %269 = load i32, i32* %268, align 4
  %270 = load i32, i32* @GOT_TLS_IE, align 4
  %271 = icmp eq i32 %269, %270
  br i1 %271, label %272, label %276

272:                                              ; preds = %265
  %273 = load %struct.elf_link_hash_entry*, %struct.elf_link_hash_entry** %4, align 8
  %274 = getelementptr inbounds %struct.elf_link_hash_entry, %struct.elf_link_hash_entry* %273, i32 0, i32 7
  %275 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %274, i32 0, i32 1
  store i32 -1, i32* %275, align 8
  br label %395

276:                                              ; preds = %265, %260, %255, %249
  %277 = load %struct.elf_link_hash_entry*, %struct.elf_link_hash_entry** %4, align 8
  %278 = getelementptr inbounds %struct.elf_link_hash_entry, %struct.elf_link_hash_entry* %277, i32 0, i32 7
  %279 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %278, i32 0, i32 0
  %280 = load i64, i64* %279, align 8
  %281 = icmp sgt i64 %280, 0
  br i1 %281, label %282, label %390

282:                                              ; preds = %276
  %283 = load %struct.elf_link_hash_entry*, %struct.elf_link_hash_entry** %4, align 8
  %284 = call %struct.TYPE_19__* @_bfd_sparc_elf_hash_entry(%struct.elf_link_hash_entry* %283)
  %285 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %284, i32 0, i32 0
  %286 = load i32, i32* %285, align 4
  store i32 %286, i32* %14, align 4
  %287 = load %struct.elf_link_hash_entry*, %struct.elf_link_hash_entry** %4, align 8
  %288 = getelementptr inbounds %struct.elf_link_hash_entry, %struct.elf_link_hash_entry* %287, i32 0, i32 0
  %289 = load i32, i32* %288, align 8
  %290 = icmp eq i32 %289, -1
  br i1 %290, label %291, label %304

291:                                              ; preds = %282
  %292 = load %struct.elf_link_hash_entry*, %struct.elf_link_hash_entry** %4, align 8
  %293 = getelementptr inbounds %struct.elf_link_hash_entry, %struct.elf_link_hash_entry* %292, i32 0, i32 1
  %294 = load i64, i64* %293, align 8
  %295 = icmp ne i64 %294, 0
  br i1 %295, label %304, label %296

296:                                              ; preds = %291
  %297 = load %struct.bfd_link_info*, %struct.bfd_link_info** %6, align 8
  %298 = load %struct.elf_link_hash_entry*, %struct.elf_link_hash_entry** %4, align 8
  %299 = call i32 @bfd_elf_link_record_dynamic_symbol(%struct.bfd_link_info* %297, %struct.elf_link_hash_entry* %298)
  %300 = icmp ne i32 %299, 0
  br i1 %300, label %303, label %301

301:                                              ; preds = %296
  %302 = load i32, i32* @FALSE, align 4
  store i32 %302, i32* %3, align 4
  br label %594

303:                                              ; preds = %296
  br label %304

304:                                              ; preds = %303, %291, %282
  %305 = load %struct._bfd_sparc_elf_link_hash_table*, %struct._bfd_sparc_elf_link_hash_table** %7, align 8
  %306 = getelementptr inbounds %struct._bfd_sparc_elf_link_hash_table, %struct._bfd_sparc_elf_link_hash_table* %305, i32 0, i32 3
  %307 = load %struct.TYPE_17__*, %struct.TYPE_17__** %306, align 8
  store %struct.TYPE_17__* %307, %struct.TYPE_17__** %12, align 8
  %308 = load %struct.TYPE_17__*, %struct.TYPE_17__** %12, align 8
  %309 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %308, i32 0, i32 0
  %310 = load i32, i32* %309, align 4
  %311 = load %struct.elf_link_hash_entry*, %struct.elf_link_hash_entry** %4, align 8
  %312 = getelementptr inbounds %struct.elf_link_hash_entry, %struct.elf_link_hash_entry* %311, i32 0, i32 7
  %313 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %312, i32 0, i32 1
  store i32 %310, i32* %313, align 8
  %314 = load %struct._bfd_sparc_elf_link_hash_table*, %struct._bfd_sparc_elf_link_hash_table** %7, align 8
  %315 = call i32 @SPARC_ELF_WORD_BYTES(%struct._bfd_sparc_elf_link_hash_table* %314)
  %316 = load %struct.TYPE_17__*, %struct.TYPE_17__** %12, align 8
  %317 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %316, i32 0, i32 0
  %318 = load i32, i32* %317, align 4
  %319 = add nsw i32 %318, %315
  store i32 %319, i32* %317, align 4
  %320 = load i32, i32* %14, align 4
  %321 = load i32, i32* @GOT_TLS_GD, align 4
  %322 = icmp eq i32 %320, %321
  br i1 %322, label %323, label %330

323:                                              ; preds = %304
  %324 = load %struct._bfd_sparc_elf_link_hash_table*, %struct._bfd_sparc_elf_link_hash_table** %7, align 8
  %325 = call i32 @SPARC_ELF_WORD_BYTES(%struct._bfd_sparc_elf_link_hash_table* %324)
  %326 = load %struct.TYPE_17__*, %struct.TYPE_17__** %12, align 8
  %327 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %326, i32 0, i32 0
  %328 = load i32, i32* %327, align 4
  %329 = add nsw i32 %328, %325
  store i32 %329, i32* %327, align 4
  br label %330

330:                                              ; preds = %323, %304
  %331 = load %struct._bfd_sparc_elf_link_hash_table*, %struct._bfd_sparc_elf_link_hash_table** %7, align 8
  %332 = getelementptr inbounds %struct._bfd_sparc_elf_link_hash_table, %struct._bfd_sparc_elf_link_hash_table* %331, i32 0, i32 1
  %333 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %332, i32 0, i32 0
  %334 = load i32, i32* %333, align 4
  store i32 %334, i32* %13, align 4
  %335 = load i32, i32* %14, align 4
  %336 = load i32, i32* @GOT_TLS_GD, align 4
  %337 = icmp eq i32 %335, %336
  br i1 %337, label %338, label %343

338:                                              ; preds = %330
  %339 = load %struct.elf_link_hash_entry*, %struct.elf_link_hash_entry** %4, align 8
  %340 = getelementptr inbounds %struct.elf_link_hash_entry, %struct.elf_link_hash_entry* %339, i32 0, i32 0
  %341 = load i32, i32* %340, align 8
  %342 = icmp eq i32 %341, -1
  br i1 %342, label %347, label %343

343:                                              ; preds = %338, %330
  %344 = load i32, i32* %14, align 4
  %345 = load i32, i32* @GOT_TLS_IE, align 4
  %346 = icmp eq i32 %344, %345
  br i1 %346, label %347, label %356

347:                                              ; preds = %343, %338
  %348 = load %struct._bfd_sparc_elf_link_hash_table*, %struct._bfd_sparc_elf_link_hash_table** %7, align 8
  %349 = call i32 @SPARC_ELF_RELA_BYTES(%struct._bfd_sparc_elf_link_hash_table* %348)
  %350 = load %struct._bfd_sparc_elf_link_hash_table*, %struct._bfd_sparc_elf_link_hash_table** %7, align 8
  %351 = getelementptr inbounds %struct._bfd_sparc_elf_link_hash_table, %struct._bfd_sparc_elf_link_hash_table* %350, i32 0, i32 2
  %352 = load %struct.TYPE_20__*, %struct.TYPE_20__** %351, align 8
  %353 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %352, i32 0, i32 0
  %354 = load i32, i32* %353, align 4
  %355 = add nsw i32 %354, %349
  store i32 %355, i32* %353, align 4
  br label %389

356:                                              ; preds = %343
  %357 = load i32, i32* %14, align 4
  %358 = load i32, i32* @GOT_TLS_GD, align 4
  %359 = icmp eq i32 %357, %358
  br i1 %359, label %360, label %370

360:                                              ; preds = %356
  %361 = load %struct._bfd_sparc_elf_link_hash_table*, %struct._bfd_sparc_elf_link_hash_table** %7, align 8
  %362 = call i32 @SPARC_ELF_RELA_BYTES(%struct._bfd_sparc_elf_link_hash_table* %361)
  %363 = mul nsw i32 2, %362
  %364 = load %struct._bfd_sparc_elf_link_hash_table*, %struct._bfd_sparc_elf_link_hash_table** %7, align 8
  %365 = getelementptr inbounds %struct._bfd_sparc_elf_link_hash_table, %struct._bfd_sparc_elf_link_hash_table* %364, i32 0, i32 2
  %366 = load %struct.TYPE_20__*, %struct.TYPE_20__** %365, align 8
  %367 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %366, i32 0, i32 0
  %368 = load i32, i32* %367, align 4
  %369 = add nsw i32 %368, %363
  store i32 %369, i32* %367, align 4
  br label %388

370:                                              ; preds = %356
  %371 = load i32, i32* %13, align 4
  %372 = load %struct.bfd_link_info*, %struct.bfd_link_info** %6, align 8
  %373 = getelementptr inbounds %struct.bfd_link_info, %struct.bfd_link_info* %372, i32 0, i32 1
  %374 = load i64, i64* %373, align 8
  %375 = load %struct.elf_link_hash_entry*, %struct.elf_link_hash_entry** %4, align 8
  %376 = call i64 @WILL_CALL_FINISH_DYNAMIC_SYMBOL(i32 %371, i64 %374, %struct.elf_link_hash_entry* %375)
  %377 = icmp ne i64 %376, 0
  br i1 %377, label %378, label %387

378:                                              ; preds = %370
  %379 = load %struct._bfd_sparc_elf_link_hash_table*, %struct._bfd_sparc_elf_link_hash_table** %7, align 8
  %380 = call i32 @SPARC_ELF_RELA_BYTES(%struct._bfd_sparc_elf_link_hash_table* %379)
  %381 = load %struct._bfd_sparc_elf_link_hash_table*, %struct._bfd_sparc_elf_link_hash_table** %7, align 8
  %382 = getelementptr inbounds %struct._bfd_sparc_elf_link_hash_table, %struct._bfd_sparc_elf_link_hash_table* %381, i32 0, i32 2
  %383 = load %struct.TYPE_20__*, %struct.TYPE_20__** %382, align 8
  %384 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %383, i32 0, i32 0
  %385 = load i32, i32* %384, align 4
  %386 = add nsw i32 %385, %380
  store i32 %386, i32* %384, align 4
  br label %387

387:                                              ; preds = %378, %370
  br label %388

388:                                              ; preds = %387, %360
  br label %389

389:                                              ; preds = %388, %347
  br label %394

390:                                              ; preds = %276
  %391 = load %struct.elf_link_hash_entry*, %struct.elf_link_hash_entry** %4, align 8
  %392 = getelementptr inbounds %struct.elf_link_hash_entry, %struct.elf_link_hash_entry* %391, i32 0, i32 7
  %393 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %392, i32 0, i32 1
  store i32 -1, i32* %393, align 8
  br label %394

394:                                              ; preds = %390, %389
  br label %395

395:                                              ; preds = %394, %272
  %396 = load %struct.elf_link_hash_entry*, %struct.elf_link_hash_entry** %4, align 8
  %397 = bitcast %struct.elf_link_hash_entry* %396 to %struct._bfd_sparc_elf_link_hash_entry*
  store %struct._bfd_sparc_elf_link_hash_entry* %397, %struct._bfd_sparc_elf_link_hash_entry** %8, align 8
  %398 = load %struct._bfd_sparc_elf_link_hash_entry*, %struct._bfd_sparc_elf_link_hash_entry** %8, align 8
  %399 = getelementptr inbounds %struct._bfd_sparc_elf_link_hash_entry, %struct._bfd_sparc_elf_link_hash_entry* %398, i32 0, i32 0
  %400 = load %struct._bfd_sparc_elf_dyn_relocs*, %struct._bfd_sparc_elf_dyn_relocs** %399, align 8
  %401 = icmp eq %struct._bfd_sparc_elf_dyn_relocs* %400, null
  br i1 %401, label %402, label %404

402:                                              ; preds = %395
  %403 = load i32, i32* @TRUE, align 4
  store i32 %403, i32* %3, align 4
  br label %594

404:                                              ; preds = %395
  %405 = load %struct.bfd_link_info*, %struct.bfd_link_info** %6, align 8
  %406 = getelementptr inbounds %struct.bfd_link_info, %struct.bfd_link_info* %405, i32 0, i32 1
  %407 = load i64, i64* %406, align 8
  %408 = icmp ne i64 %407, 0
  br i1 %408, label %409, label %500

409:                                              ; preds = %404
  %410 = load %struct.elf_link_hash_entry*, %struct.elf_link_hash_entry** %4, align 8
  %411 = getelementptr inbounds %struct.elf_link_hash_entry, %struct.elf_link_hash_entry* %410, i32 0, i32 3
  %412 = load i64, i64* %411, align 8
  %413 = icmp ne i64 %412, 0
  br i1 %413, label %414, label %457

414:                                              ; preds = %409
  %415 = load %struct.elf_link_hash_entry*, %struct.elf_link_hash_entry** %4, align 8
  %416 = getelementptr inbounds %struct.elf_link_hash_entry, %struct.elf_link_hash_entry* %415, i32 0, i32 1
  %417 = load i64, i64* %416, align 8
  %418 = icmp ne i64 %417, 0
  br i1 %418, label %424, label %419

419:                                              ; preds = %414
  %420 = load %struct.bfd_link_info*, %struct.bfd_link_info** %6, align 8
  %421 = getelementptr inbounds %struct.bfd_link_info, %struct.bfd_link_info* %420, i32 0, i32 0
  %422 = load i64, i64* %421, align 8
  %423 = icmp ne i64 %422, 0
  br i1 %423, label %424, label %457

424:                                              ; preds = %419, %414
  %425 = load %struct._bfd_sparc_elf_link_hash_entry*, %struct._bfd_sparc_elf_link_hash_entry** %8, align 8
  %426 = getelementptr inbounds %struct._bfd_sparc_elf_link_hash_entry, %struct._bfd_sparc_elf_link_hash_entry* %425, i32 0, i32 0
  store %struct._bfd_sparc_elf_dyn_relocs** %426, %struct._bfd_sparc_elf_dyn_relocs*** %15, align 8
  br label %427

427:                                              ; preds = %455, %424
  %428 = load %struct._bfd_sparc_elf_dyn_relocs**, %struct._bfd_sparc_elf_dyn_relocs*** %15, align 8
  %429 = load %struct._bfd_sparc_elf_dyn_relocs*, %struct._bfd_sparc_elf_dyn_relocs** %428, align 8
  store %struct._bfd_sparc_elf_dyn_relocs* %429, %struct._bfd_sparc_elf_dyn_relocs** %9, align 8
  %430 = icmp ne %struct._bfd_sparc_elf_dyn_relocs* %429, null
  br i1 %430, label %431, label %456

431:                                              ; preds = %427
  %432 = load %struct._bfd_sparc_elf_dyn_relocs*, %struct._bfd_sparc_elf_dyn_relocs** %9, align 8
  %433 = getelementptr inbounds %struct._bfd_sparc_elf_dyn_relocs, %struct._bfd_sparc_elf_dyn_relocs* %432, i32 0, i32 3
  %434 = load i64, i64* %433, align 8
  %435 = load %struct._bfd_sparc_elf_dyn_relocs*, %struct._bfd_sparc_elf_dyn_relocs** %9, align 8
  %436 = getelementptr inbounds %struct._bfd_sparc_elf_dyn_relocs, %struct._bfd_sparc_elf_dyn_relocs* %435, i32 0, i32 0
  %437 = load i32, i32* %436, align 8
  %438 = sext i32 %437 to i64
  %439 = sub nsw i64 %438, %434
  %440 = trunc i64 %439 to i32
  store i32 %440, i32* %436, align 8
  %441 = load %struct._bfd_sparc_elf_dyn_relocs*, %struct._bfd_sparc_elf_dyn_relocs** %9, align 8
  %442 = getelementptr inbounds %struct._bfd_sparc_elf_dyn_relocs, %struct._bfd_sparc_elf_dyn_relocs* %441, i32 0, i32 3
  store i64 0, i64* %442, align 8
  %443 = load %struct._bfd_sparc_elf_dyn_relocs*, %struct._bfd_sparc_elf_dyn_relocs** %9, align 8
  %444 = getelementptr inbounds %struct._bfd_sparc_elf_dyn_relocs, %struct._bfd_sparc_elf_dyn_relocs* %443, i32 0, i32 0
  %445 = load i32, i32* %444, align 8
  %446 = icmp eq i32 %445, 0
  br i1 %446, label %447, label %452

447:                                              ; preds = %431
  %448 = load %struct._bfd_sparc_elf_dyn_relocs*, %struct._bfd_sparc_elf_dyn_relocs** %9, align 8
  %449 = getelementptr inbounds %struct._bfd_sparc_elf_dyn_relocs, %struct._bfd_sparc_elf_dyn_relocs* %448, i32 0, i32 2
  %450 = load %struct._bfd_sparc_elf_dyn_relocs*, %struct._bfd_sparc_elf_dyn_relocs** %449, align 8
  %451 = load %struct._bfd_sparc_elf_dyn_relocs**, %struct._bfd_sparc_elf_dyn_relocs*** %15, align 8
  store %struct._bfd_sparc_elf_dyn_relocs* %450, %struct._bfd_sparc_elf_dyn_relocs** %451, align 8
  br label %455

452:                                              ; preds = %431
  %453 = load %struct._bfd_sparc_elf_dyn_relocs*, %struct._bfd_sparc_elf_dyn_relocs** %9, align 8
  %454 = getelementptr inbounds %struct._bfd_sparc_elf_dyn_relocs, %struct._bfd_sparc_elf_dyn_relocs* %453, i32 0, i32 2
  store %struct._bfd_sparc_elf_dyn_relocs** %454, %struct._bfd_sparc_elf_dyn_relocs*** %15, align 8
  br label %455

455:                                              ; preds = %452, %447
  br label %427

456:                                              ; preds = %427
  br label %457

457:                                              ; preds = %456, %419, %409
  %458 = load %struct._bfd_sparc_elf_link_hash_entry*, %struct._bfd_sparc_elf_link_hash_entry** %8, align 8
  %459 = getelementptr inbounds %struct._bfd_sparc_elf_link_hash_entry, %struct._bfd_sparc_elf_link_hash_entry* %458, i32 0, i32 0
  %460 = load %struct._bfd_sparc_elf_dyn_relocs*, %struct._bfd_sparc_elf_dyn_relocs** %459, align 8
  %461 = icmp ne %struct._bfd_sparc_elf_dyn_relocs* %460, null
  br i1 %461, label %462, label %499

462:                                              ; preds = %457
  %463 = load %struct.elf_link_hash_entry*, %struct.elf_link_hash_entry** %4, align 8
  %464 = getelementptr inbounds %struct.elf_link_hash_entry, %struct.elf_link_hash_entry* %463, i32 0, i32 2
  %465 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %464, i32 0, i32 0
  %466 = load i64, i64* %465, align 8
  %467 = load i64, i64* @bfd_link_hash_undefweak, align 8
  %468 = icmp eq i64 %466, %467
  br i1 %468, label %469, label %499

469:                                              ; preds = %462
  %470 = load %struct.elf_link_hash_entry*, %struct.elf_link_hash_entry** %4, align 8
  %471 = getelementptr inbounds %struct.elf_link_hash_entry, %struct.elf_link_hash_entry* %470, i32 0, i32 6
  %472 = load i32, i32* %471, align 4
  %473 = call i64 @ELF_ST_VISIBILITY(i32 %472)
  %474 = load i64, i64* @STV_DEFAULT, align 8
  %475 = icmp ne i64 %473, %474
  br i1 %475, label %476, label %479

476:                                              ; preds = %469
  %477 = load %struct._bfd_sparc_elf_link_hash_entry*, %struct._bfd_sparc_elf_link_hash_entry** %8, align 8
  %478 = getelementptr inbounds %struct._bfd_sparc_elf_link_hash_entry, %struct._bfd_sparc_elf_link_hash_entry* %477, i32 0, i32 0
  store %struct._bfd_sparc_elf_dyn_relocs* null, %struct._bfd_sparc_elf_dyn_relocs** %478, align 8
  br label %498

479:                                              ; preds = %469
  %480 = load %struct.elf_link_hash_entry*, %struct.elf_link_hash_entry** %4, align 8
  %481 = getelementptr inbounds %struct.elf_link_hash_entry, %struct.elf_link_hash_entry* %480, i32 0, i32 0
  %482 = load i32, i32* %481, align 8
  %483 = icmp eq i32 %482, -1
  br i1 %483, label %484, label %497

484:                                              ; preds = %479
  %485 = load %struct.elf_link_hash_entry*, %struct.elf_link_hash_entry** %4, align 8
  %486 = getelementptr inbounds %struct.elf_link_hash_entry, %struct.elf_link_hash_entry* %485, i32 0, i32 1
  %487 = load i64, i64* %486, align 8
  %488 = icmp ne i64 %487, 0
  br i1 %488, label %497, label %489

489:                                              ; preds = %484
  %490 = load %struct.bfd_link_info*, %struct.bfd_link_info** %6, align 8
  %491 = load %struct.elf_link_hash_entry*, %struct.elf_link_hash_entry** %4, align 8
  %492 = call i32 @bfd_elf_link_record_dynamic_symbol(%struct.bfd_link_info* %490, %struct.elf_link_hash_entry* %491)
  %493 = icmp ne i32 %492, 0
  br i1 %493, label %496, label %494

494:                                              ; preds = %489
  %495 = load i32, i32* @FALSE, align 4
  store i32 %495, i32* %3, align 4
  br label %594

496:                                              ; preds = %489
  br label %497

497:                                              ; preds = %496, %484, %479
  br label %498

498:                                              ; preds = %497, %476
  br label %499

499:                                              ; preds = %498, %462, %457
  br label %564

500:                                              ; preds = %404
  %501 = load %struct.elf_link_hash_entry*, %struct.elf_link_hash_entry** %4, align 8
  %502 = getelementptr inbounds %struct.elf_link_hash_entry, %struct.elf_link_hash_entry* %501, i32 0, i32 5
  %503 = load i32, i32* %502, align 8
  %504 = icmp ne i32 %503, 0
  br i1 %504, label %560, label %505

505:                                              ; preds = %500
  %506 = load %struct.elf_link_hash_entry*, %struct.elf_link_hash_entry** %4, align 8
  %507 = getelementptr inbounds %struct.elf_link_hash_entry, %struct.elf_link_hash_entry* %506, i32 0, i32 4
  %508 = load i64, i64* %507, align 8
  %509 = icmp ne i64 %508, 0
  br i1 %509, label %510, label %515

510:                                              ; preds = %505
  %511 = load %struct.elf_link_hash_entry*, %struct.elf_link_hash_entry** %4, align 8
  %512 = getelementptr inbounds %struct.elf_link_hash_entry, %struct.elf_link_hash_entry* %511, i32 0, i32 3
  %513 = load i64, i64* %512, align 8
  %514 = icmp ne i64 %513, 0
  br i1 %514, label %515, label %535

515:                                              ; preds = %510, %505
  %516 = load %struct._bfd_sparc_elf_link_hash_table*, %struct._bfd_sparc_elf_link_hash_table** %7, align 8
  %517 = getelementptr inbounds %struct._bfd_sparc_elf_link_hash_table, %struct._bfd_sparc_elf_link_hash_table* %516, i32 0, i32 1
  %518 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %517, i32 0, i32 0
  %519 = load i32, i32* %518, align 4
  %520 = icmp ne i32 %519, 0
  br i1 %520, label %521, label %560

521:                                              ; preds = %515
  %522 = load %struct.elf_link_hash_entry*, %struct.elf_link_hash_entry** %4, align 8
  %523 = getelementptr inbounds %struct.elf_link_hash_entry, %struct.elf_link_hash_entry* %522, i32 0, i32 2
  %524 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %523, i32 0, i32 0
  %525 = load i64, i64* %524, align 8
  %526 = load i64, i64* @bfd_link_hash_undefweak, align 8
  %527 = icmp eq i64 %525, %526
  br i1 %527, label %535, label %528

528:                                              ; preds = %521
  %529 = load %struct.elf_link_hash_entry*, %struct.elf_link_hash_entry** %4, align 8
  %530 = getelementptr inbounds %struct.elf_link_hash_entry, %struct.elf_link_hash_entry* %529, i32 0, i32 2
  %531 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %530, i32 0, i32 0
  %532 = load i64, i64* %531, align 8
  %533 = load i64, i64* @bfd_link_hash_undefined, align 8
  %534 = icmp eq i64 %532, %533
  br i1 %534, label %535, label %560

535:                                              ; preds = %528, %521, %510
  %536 = load %struct.elf_link_hash_entry*, %struct.elf_link_hash_entry** %4, align 8
  %537 = getelementptr inbounds %struct.elf_link_hash_entry, %struct.elf_link_hash_entry* %536, i32 0, i32 0
  %538 = load i32, i32* %537, align 8
  %539 = icmp eq i32 %538, -1
  br i1 %539, label %540, label %553

540:                                              ; preds = %535
  %541 = load %struct.elf_link_hash_entry*, %struct.elf_link_hash_entry** %4, align 8
  %542 = getelementptr inbounds %struct.elf_link_hash_entry, %struct.elf_link_hash_entry* %541, i32 0, i32 1
  %543 = load i64, i64* %542, align 8
  %544 = icmp ne i64 %543, 0
  br i1 %544, label %553, label %545

545:                                              ; preds = %540
  %546 = load %struct.bfd_link_info*, %struct.bfd_link_info** %6, align 8
  %547 = load %struct.elf_link_hash_entry*, %struct.elf_link_hash_entry** %4, align 8
  %548 = call i32 @bfd_elf_link_record_dynamic_symbol(%struct.bfd_link_info* %546, %struct.elf_link_hash_entry* %547)
  %549 = icmp ne i32 %548, 0
  br i1 %549, label %552, label %550

550:                                              ; preds = %545
  %551 = load i32, i32* @FALSE, align 4
  store i32 %551, i32* %3, align 4
  br label %594

552:                                              ; preds = %545
  br label %553

553:                                              ; preds = %552, %540, %535
  %554 = load %struct.elf_link_hash_entry*, %struct.elf_link_hash_entry** %4, align 8
  %555 = getelementptr inbounds %struct.elf_link_hash_entry, %struct.elf_link_hash_entry* %554, i32 0, i32 0
  %556 = load i32, i32* %555, align 8
  %557 = icmp ne i32 %556, -1
  br i1 %557, label %558, label %559

558:                                              ; preds = %553
  br label %563

559:                                              ; preds = %553
  br label %560

560:                                              ; preds = %559, %528, %515, %500
  %561 = load %struct._bfd_sparc_elf_link_hash_entry*, %struct._bfd_sparc_elf_link_hash_entry** %8, align 8
  %562 = getelementptr inbounds %struct._bfd_sparc_elf_link_hash_entry, %struct._bfd_sparc_elf_link_hash_entry* %561, i32 0, i32 0
  store %struct._bfd_sparc_elf_dyn_relocs* null, %struct._bfd_sparc_elf_dyn_relocs** %562, align 8
  br label %563

563:                                              ; preds = %560, %558
  br label %564

564:                                              ; preds = %563, %499
  %565 = load %struct._bfd_sparc_elf_link_hash_entry*, %struct._bfd_sparc_elf_link_hash_entry** %8, align 8
  %566 = getelementptr inbounds %struct._bfd_sparc_elf_link_hash_entry, %struct._bfd_sparc_elf_link_hash_entry* %565, i32 0, i32 0
  %567 = load %struct._bfd_sparc_elf_dyn_relocs*, %struct._bfd_sparc_elf_dyn_relocs** %566, align 8
  store %struct._bfd_sparc_elf_dyn_relocs* %567, %struct._bfd_sparc_elf_dyn_relocs** %9, align 8
  br label %568

568:                                              ; preds = %588, %564
  %569 = load %struct._bfd_sparc_elf_dyn_relocs*, %struct._bfd_sparc_elf_dyn_relocs** %9, align 8
  %570 = icmp ne %struct._bfd_sparc_elf_dyn_relocs* %569, null
  br i1 %570, label %571, label %592

571:                                              ; preds = %568
  %572 = load %struct._bfd_sparc_elf_dyn_relocs*, %struct._bfd_sparc_elf_dyn_relocs** %9, align 8
  %573 = getelementptr inbounds %struct._bfd_sparc_elf_dyn_relocs, %struct._bfd_sparc_elf_dyn_relocs* %572, i32 0, i32 1
  %574 = load i32, i32* %573, align 4
  %575 = call %struct.TYPE_18__* @elf_section_data(i32 %574)
  %576 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %575, i32 0, i32 0
  %577 = load %struct.TYPE_17__*, %struct.TYPE_17__** %576, align 8
  store %struct.TYPE_17__* %577, %struct.TYPE_17__** %16, align 8
  %578 = load %struct._bfd_sparc_elf_dyn_relocs*, %struct._bfd_sparc_elf_dyn_relocs** %9, align 8
  %579 = getelementptr inbounds %struct._bfd_sparc_elf_dyn_relocs, %struct._bfd_sparc_elf_dyn_relocs* %578, i32 0, i32 0
  %580 = load i32, i32* %579, align 8
  %581 = load %struct._bfd_sparc_elf_link_hash_table*, %struct._bfd_sparc_elf_link_hash_table** %7, align 8
  %582 = call i32 @SPARC_ELF_RELA_BYTES(%struct._bfd_sparc_elf_link_hash_table* %581)
  %583 = mul nsw i32 %580, %582
  %584 = load %struct.TYPE_17__*, %struct.TYPE_17__** %16, align 8
  %585 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %584, i32 0, i32 0
  %586 = load i32, i32* %585, align 4
  %587 = add nsw i32 %586, %583
  store i32 %587, i32* %585, align 4
  br label %588

588:                                              ; preds = %571
  %589 = load %struct._bfd_sparc_elf_dyn_relocs*, %struct._bfd_sparc_elf_dyn_relocs** %9, align 8
  %590 = getelementptr inbounds %struct._bfd_sparc_elf_dyn_relocs, %struct._bfd_sparc_elf_dyn_relocs* %589, i32 0, i32 2
  %591 = load %struct._bfd_sparc_elf_dyn_relocs*, %struct._bfd_sparc_elf_dyn_relocs** %590, align 8
  store %struct._bfd_sparc_elf_dyn_relocs* %591, %struct._bfd_sparc_elf_dyn_relocs** %9, align 8
  br label %568

592:                                              ; preds = %568
  %593 = load i32, i32* @TRUE, align 4
  store i32 %593, i32* %3, align 4
  br label %594

594:                                              ; preds = %592, %550, %494, %402, %301, %120, %71, %23
  %595 = load i32, i32* %3, align 4
  ret i32 %595
}

declare dso_local %struct._bfd_sparc_elf_link_hash_table* @_bfd_sparc_elf_hash_table(%struct.bfd_link_info*) #1

declare dso_local i32 @bfd_elf_link_record_dynamic_symbol(%struct.bfd_link_info*, %struct.elf_link_hash_entry*) #1

declare dso_local i64 @WILL_CALL_FINISH_DYNAMIC_SYMBOL(i32, i64, %struct.elf_link_hash_entry*) #1

declare dso_local i32 @SPARC_ELF_WORD_BYTES(%struct._bfd_sparc_elf_link_hash_table*) #1

declare dso_local i32 @bfd_set_error(i32) #1

declare dso_local i32 @SPARC_ELF_RELA_BYTES(%struct._bfd_sparc_elf_link_hash_table*) #1

declare dso_local %struct.TYPE_19__* @_bfd_sparc_elf_hash_entry(%struct.elf_link_hash_entry*) #1

declare dso_local i64 @ELF_ST_VISIBILITY(i32) #1

declare dso_local %struct.TYPE_18__* @elf_section_data(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

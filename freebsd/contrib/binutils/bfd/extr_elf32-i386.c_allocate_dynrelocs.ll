; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/bfd/extr_elf32-i386.c_allocate_dynrelocs.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/bfd/extr_elf32-i386.c_allocate_dynrelocs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.elf_link_hash_entry = type { i32, i32, %struct.TYPE_26__, i32, i64, i32, i32, %struct.TYPE_21__, i64, %struct.TYPE_16__ }
%struct.TYPE_26__ = type { i64, %struct.TYPE_25__ }
%struct.TYPE_25__ = type { %struct.TYPE_24__, %struct.TYPE_22__ }
%struct.TYPE_24__ = type { i64, %struct.TYPE_17__* }
%struct.TYPE_17__ = type { i64 }
%struct.TYPE_22__ = type { i64 }
%struct.TYPE_21__ = type { i64, i64 }
%struct.TYPE_16__ = type { i64, i64 }
%struct.bfd_link_info = type { i64 }
%struct.elf_i386_link_hash_table = type { %struct.TYPE_23__, %struct.TYPE_28__*, %struct.TYPE_20__*, %struct.TYPE_27__*, %struct.TYPE_17__*, %struct.TYPE_15__*, i64, i32, %struct.TYPE_17__* }
%struct.TYPE_23__ = type { i32 }
%struct.TYPE_28__ = type { i32 }
%struct.TYPE_20__ = type { i32 }
%struct.TYPE_27__ = type { i8* }
%struct.TYPE_15__ = type { i32 }
%struct.elf_i386_link_hash_entry = type { %struct.elf_i386_dyn_relocs*, i8* }
%struct.elf_i386_dyn_relocs = type { i32, i32, %struct.elf_i386_dyn_relocs*, i64 }
%struct.TYPE_19__ = type { i32 }
%struct.TYPE_18__ = type { %struct.TYPE_17__* }

@bfd_link_hash_indirect = common dso_local global i64 0, align 8
@TRUE = common dso_local global i32 0, align 4
@bfd_link_hash_warning = common dso_local global i64 0, align 8
@FALSE = common dso_local global i32 0, align 4
@PLT_ENTRY_SIZE = common dso_local global i64 0, align 8
@GOT_TLS_IE = common dso_local global i32 0, align 4
@GOT_TLS_IE_BOTH = common dso_local global i32 0, align 4
@STV_DEFAULT = common dso_local global i64 0, align 8
@bfd_link_hash_undefweak = common dso_local global i64 0, align 8
@ELIMINATE_COPY_RELOCS = common dso_local global i64 0, align 8
@bfd_link_hash_undefined = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.elf_link_hash_entry*, i8*)* @allocate_dynrelocs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @allocate_dynrelocs(%struct.elf_link_hash_entry* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.elf_link_hash_entry*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.bfd_link_info*, align 8
  %7 = alloca %struct.elf_i386_link_hash_table*, align 8
  %8 = alloca %struct.elf_i386_link_hash_entry*, align 8
  %9 = alloca %struct.elf_i386_dyn_relocs*, align 8
  %10 = alloca %struct.TYPE_17__*, align 8
  %11 = alloca %struct.TYPE_17__*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.elf_i386_dyn_relocs**, align 8
  %15 = alloca %struct.TYPE_17__*, align 8
  store %struct.elf_link_hash_entry* %0, %struct.elf_link_hash_entry** %4, align 8
  store i8* %1, i8** %5, align 8
  %16 = load %struct.elf_link_hash_entry*, %struct.elf_link_hash_entry** %4, align 8
  %17 = getelementptr inbounds %struct.elf_link_hash_entry, %struct.elf_link_hash_entry* %16, i32 0, i32 2
  %18 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = load i64, i64* @bfd_link_hash_indirect, align 8
  %21 = icmp eq i64 %19, %20
  br i1 %21, label %22, label %24

22:                                               ; preds = %2
  %23 = load i32, i32* @TRUE, align 4
  store i32 %23, i32* %3, align 4
  br label %624

24:                                               ; preds = %2
  %25 = load %struct.elf_link_hash_entry*, %struct.elf_link_hash_entry** %4, align 8
  %26 = getelementptr inbounds %struct.elf_link_hash_entry, %struct.elf_link_hash_entry* %25, i32 0, i32 2
  %27 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = load i64, i64* @bfd_link_hash_warning, align 8
  %30 = icmp eq i64 %28, %29
  br i1 %30, label %31, label %39

31:                                               ; preds = %24
  %32 = load %struct.elf_link_hash_entry*, %struct.elf_link_hash_entry** %4, align 8
  %33 = getelementptr inbounds %struct.elf_link_hash_entry, %struct.elf_link_hash_entry* %32, i32 0, i32 2
  %34 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %33, i32 0, i32 1
  %35 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %34, i32 0, i32 1
  %36 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = inttoptr i64 %37 to %struct.elf_link_hash_entry*
  store %struct.elf_link_hash_entry* %38, %struct.elf_link_hash_entry** %4, align 8
  br label %39

39:                                               ; preds = %31, %24
  %40 = load i8*, i8** %5, align 8
  %41 = bitcast i8* %40 to %struct.bfd_link_info*
  store %struct.bfd_link_info* %41, %struct.bfd_link_info** %6, align 8
  %42 = load %struct.bfd_link_info*, %struct.bfd_link_info** %6, align 8
  %43 = call %struct.elf_i386_link_hash_table* @elf_i386_hash_table(%struct.bfd_link_info* %42)
  store %struct.elf_i386_link_hash_table* %43, %struct.elf_i386_link_hash_table** %7, align 8
  %44 = load %struct.elf_i386_link_hash_table*, %struct.elf_i386_link_hash_table** %7, align 8
  %45 = getelementptr inbounds %struct.elf_i386_link_hash_table, %struct.elf_i386_link_hash_table* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %194

49:                                               ; preds = %39
  %50 = load %struct.elf_link_hash_entry*, %struct.elf_link_hash_entry** %4, align 8
  %51 = getelementptr inbounds %struct.elf_link_hash_entry, %struct.elf_link_hash_entry* %50, i32 0, i32 9
  %52 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = icmp sgt i64 %53, 0
  br i1 %54, label %55, label %194

55:                                               ; preds = %49
  %56 = load %struct.elf_link_hash_entry*, %struct.elf_link_hash_entry** %4, align 8
  %57 = getelementptr inbounds %struct.elf_link_hash_entry, %struct.elf_link_hash_entry* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 8
  %59 = icmp eq i32 %58, -1
  br i1 %59, label %60, label %73

60:                                               ; preds = %55
  %61 = load %struct.elf_link_hash_entry*, %struct.elf_link_hash_entry** %4, align 8
  %62 = getelementptr inbounds %struct.elf_link_hash_entry, %struct.elf_link_hash_entry* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 4
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %73, label %65

65:                                               ; preds = %60
  %66 = load %struct.bfd_link_info*, %struct.bfd_link_info** %6, align 8
  %67 = load %struct.elf_link_hash_entry*, %struct.elf_link_hash_entry** %4, align 8
  %68 = call i32 @bfd_elf_link_record_dynamic_symbol(%struct.bfd_link_info* %66, %struct.elf_link_hash_entry* %67)
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %72, label %70

70:                                               ; preds = %65
  %71 = load i32, i32* @FALSE, align 4
  store i32 %71, i32* %3, align 4
  br label %624

72:                                               ; preds = %65
  br label %73

73:                                               ; preds = %72, %60, %55
  %74 = load %struct.bfd_link_info*, %struct.bfd_link_info** %6, align 8
  %75 = getelementptr inbounds %struct.bfd_link_info, %struct.bfd_link_info* %74, i32 0, i32 0
  %76 = load i64, i64* %75, align 8
  %77 = icmp ne i64 %76, 0
  br i1 %77, label %82, label %78

78:                                               ; preds = %73
  %79 = load %struct.elf_link_hash_entry*, %struct.elf_link_hash_entry** %4, align 8
  %80 = call i64 @WILL_CALL_FINISH_DYNAMIC_SYMBOL(i32 1, i32 0, %struct.elf_link_hash_entry* %79)
  %81 = icmp ne i64 %80, 0
  br i1 %81, label %82, label %187

82:                                               ; preds = %78, %73
  %83 = load %struct.elf_i386_link_hash_table*, %struct.elf_i386_link_hash_table** %7, align 8
  %84 = getelementptr inbounds %struct.elf_i386_link_hash_table, %struct.elf_i386_link_hash_table* %83, i32 0, i32 8
  %85 = load %struct.TYPE_17__*, %struct.TYPE_17__** %84, align 8
  store %struct.TYPE_17__* %85, %struct.TYPE_17__** %10, align 8
  %86 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  %87 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %86, i32 0, i32 0
  %88 = load i64, i64* %87, align 8
  %89 = icmp eq i64 %88, 0
  br i1 %89, label %90, label %96

90:                                               ; preds = %82
  %91 = load i64, i64* @PLT_ENTRY_SIZE, align 8
  %92 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  %93 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %92, i32 0, i32 0
  %94 = load i64, i64* %93, align 8
  %95 = add nsw i64 %94, %91
  store i64 %95, i64* %93, align 8
  br label %96

96:                                               ; preds = %90, %82
  %97 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  %98 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %97, i32 0, i32 0
  %99 = load i64, i64* %98, align 8
  %100 = load %struct.elf_link_hash_entry*, %struct.elf_link_hash_entry** %4, align 8
  %101 = getelementptr inbounds %struct.elf_link_hash_entry, %struct.elf_link_hash_entry* %100, i32 0, i32 9
  %102 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %101, i32 0, i32 1
  store i64 %99, i64* %102, align 8
  %103 = load %struct.bfd_link_info*, %struct.bfd_link_info** %6, align 8
  %104 = getelementptr inbounds %struct.bfd_link_info, %struct.bfd_link_info* %103, i32 0, i32 0
  %105 = load i64, i64* %104, align 8
  %106 = icmp ne i64 %105, 0
  br i1 %106, label %128, label %107

107:                                              ; preds = %96
  %108 = load %struct.elf_link_hash_entry*, %struct.elf_link_hash_entry** %4, align 8
  %109 = getelementptr inbounds %struct.elf_link_hash_entry, %struct.elf_link_hash_entry* %108, i32 0, i32 3
  %110 = load i32, i32* %109, align 8
  %111 = icmp ne i32 %110, 0
  br i1 %111, label %128, label %112

112:                                              ; preds = %107
  %113 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  %114 = load %struct.elf_link_hash_entry*, %struct.elf_link_hash_entry** %4, align 8
  %115 = getelementptr inbounds %struct.elf_link_hash_entry, %struct.elf_link_hash_entry* %114, i32 0, i32 2
  %116 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %115, i32 0, i32 1
  %117 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %116, i32 0, i32 0
  %118 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %117, i32 0, i32 1
  store %struct.TYPE_17__* %113, %struct.TYPE_17__** %118, align 8
  %119 = load %struct.elf_link_hash_entry*, %struct.elf_link_hash_entry** %4, align 8
  %120 = getelementptr inbounds %struct.elf_link_hash_entry, %struct.elf_link_hash_entry* %119, i32 0, i32 9
  %121 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %120, i32 0, i32 1
  %122 = load i64, i64* %121, align 8
  %123 = load %struct.elf_link_hash_entry*, %struct.elf_link_hash_entry** %4, align 8
  %124 = getelementptr inbounds %struct.elf_link_hash_entry, %struct.elf_link_hash_entry* %123, i32 0, i32 2
  %125 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %124, i32 0, i32 1
  %126 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %125, i32 0, i32 0
  %127 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %126, i32 0, i32 0
  store i64 %122, i64* %127, align 8
  br label %128

128:                                              ; preds = %112, %107, %96
  %129 = load i64, i64* @PLT_ENTRY_SIZE, align 8
  %130 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  %131 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %130, i32 0, i32 0
  %132 = load i64, i64* %131, align 8
  %133 = add nsw i64 %132, %129
  store i64 %133, i64* %131, align 8
  %134 = load %struct.elf_i386_link_hash_table*, %struct.elf_i386_link_hash_table** %7, align 8
  %135 = getelementptr inbounds %struct.elf_i386_link_hash_table, %struct.elf_i386_link_hash_table* %134, i32 0, i32 3
  %136 = load %struct.TYPE_27__*, %struct.TYPE_27__** %135, align 8
  %137 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %136, i32 0, i32 0
  %138 = load i8*, i8** %137, align 8
  %139 = getelementptr i8, i8* %138, i64 4
  store i8* %139, i8** %137, align 8
  %140 = load %struct.elf_i386_link_hash_table*, %struct.elf_i386_link_hash_table** %7, align 8
  %141 = getelementptr inbounds %struct.elf_i386_link_hash_table, %struct.elf_i386_link_hash_table* %140, i32 0, i32 1
  %142 = load %struct.TYPE_28__*, %struct.TYPE_28__** %141, align 8
  %143 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %142, i32 0, i32 0
  %144 = load i32, i32* %143, align 4
  %145 = sext i32 %144 to i64
  %146 = add i64 %145, 4
  %147 = trunc i64 %146 to i32
  store i32 %147, i32* %143, align 4
  %148 = load %struct.elf_i386_link_hash_table*, %struct.elf_i386_link_hash_table** %7, align 8
  %149 = getelementptr inbounds %struct.elf_i386_link_hash_table, %struct.elf_i386_link_hash_table* %148, i32 0, i32 7
  %150 = load i32, i32* %149, align 8
  %151 = add nsw i32 %150, 1
  store i32 %151, i32* %149, align 8
  %152 = load %struct.elf_i386_link_hash_table*, %struct.elf_i386_link_hash_table** %7, align 8
  %153 = getelementptr inbounds %struct.elf_i386_link_hash_table, %struct.elf_i386_link_hash_table* %152, i32 0, i32 6
  %154 = load i64, i64* %153, align 8
  %155 = icmp ne i64 %154, 0
  br i1 %155, label %156, label %186

156:                                              ; preds = %128
  %157 = load %struct.bfd_link_info*, %struct.bfd_link_info** %6, align 8
  %158 = getelementptr inbounds %struct.bfd_link_info, %struct.bfd_link_info* %157, i32 0, i32 0
  %159 = load i64, i64* %158, align 8
  %160 = icmp ne i64 %159, 0
  br i1 %160, label %186, label %161

161:                                              ; preds = %156
  %162 = load %struct.elf_link_hash_entry*, %struct.elf_link_hash_entry** %4, align 8
  %163 = getelementptr inbounds %struct.elf_link_hash_entry, %struct.elf_link_hash_entry* %162, i32 0, i32 9
  %164 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %163, i32 0, i32 1
  %165 = load i64, i64* %164, align 8
  %166 = load i64, i64* @PLT_ENTRY_SIZE, align 8
  %167 = icmp eq i64 %165, %166
  br i1 %167, label %168, label %177

168:                                              ; preds = %161
  %169 = load %struct.elf_i386_link_hash_table*, %struct.elf_i386_link_hash_table** %7, align 8
  %170 = getelementptr inbounds %struct.elf_i386_link_hash_table, %struct.elf_i386_link_hash_table* %169, i32 0, i32 5
  %171 = load %struct.TYPE_15__*, %struct.TYPE_15__** %170, align 8
  %172 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %171, i32 0, i32 0
  %173 = load i32, i32* %172, align 4
  %174 = sext i32 %173 to i64
  %175 = add i64 %174, 8
  %176 = trunc i64 %175 to i32
  store i32 %176, i32* %172, align 4
  br label %177

177:                                              ; preds = %168, %161
  %178 = load %struct.elf_i386_link_hash_table*, %struct.elf_i386_link_hash_table** %7, align 8
  %179 = getelementptr inbounds %struct.elf_i386_link_hash_table, %struct.elf_i386_link_hash_table* %178, i32 0, i32 5
  %180 = load %struct.TYPE_15__*, %struct.TYPE_15__** %179, align 8
  %181 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %180, i32 0, i32 0
  %182 = load i32, i32* %181, align 4
  %183 = sext i32 %182 to i64
  %184 = add i64 %183, 8
  %185 = trunc i64 %184 to i32
  store i32 %185, i32* %181, align 4
  br label %186

186:                                              ; preds = %177, %156, %128
  br label %193

187:                                              ; preds = %78
  %188 = load %struct.elf_link_hash_entry*, %struct.elf_link_hash_entry** %4, align 8
  %189 = getelementptr inbounds %struct.elf_link_hash_entry, %struct.elf_link_hash_entry* %188, i32 0, i32 9
  %190 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %189, i32 0, i32 1
  store i64 -1, i64* %190, align 8
  %191 = load %struct.elf_link_hash_entry*, %struct.elf_link_hash_entry** %4, align 8
  %192 = getelementptr inbounds %struct.elf_link_hash_entry, %struct.elf_link_hash_entry* %191, i32 0, i32 8
  store i64 0, i64* %192, align 8
  br label %193

193:                                              ; preds = %187, %186
  br label %200

194:                                              ; preds = %49, %39
  %195 = load %struct.elf_link_hash_entry*, %struct.elf_link_hash_entry** %4, align 8
  %196 = getelementptr inbounds %struct.elf_link_hash_entry, %struct.elf_link_hash_entry* %195, i32 0, i32 9
  %197 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %196, i32 0, i32 1
  store i64 -1, i64* %197, align 8
  %198 = load %struct.elf_link_hash_entry*, %struct.elf_link_hash_entry** %4, align 8
  %199 = getelementptr inbounds %struct.elf_link_hash_entry, %struct.elf_link_hash_entry* %198, i32 0, i32 8
  store i64 0, i64* %199, align 8
  br label %200

200:                                              ; preds = %194, %193
  %201 = load %struct.elf_link_hash_entry*, %struct.elf_link_hash_entry** %4, align 8
  %202 = bitcast %struct.elf_link_hash_entry* %201 to %struct.elf_i386_link_hash_entry*
  store %struct.elf_i386_link_hash_entry* %202, %struct.elf_i386_link_hash_entry** %8, align 8
  %203 = load %struct.elf_i386_link_hash_entry*, %struct.elf_i386_link_hash_entry** %8, align 8
  %204 = getelementptr inbounds %struct.elf_i386_link_hash_entry, %struct.elf_i386_link_hash_entry* %203, i32 0, i32 1
  store i8* inttoptr (i64 -1 to i8*), i8** %204, align 8
  %205 = load %struct.elf_link_hash_entry*, %struct.elf_link_hash_entry** %4, align 8
  %206 = getelementptr inbounds %struct.elf_link_hash_entry, %struct.elf_link_hash_entry* %205, i32 0, i32 7
  %207 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %206, i32 0, i32 0
  %208 = load i64, i64* %207, align 8
  %209 = icmp sgt i64 %208, 0
  br i1 %209, label %210, label %232

210:                                              ; preds = %200
  %211 = load %struct.bfd_link_info*, %struct.bfd_link_info** %6, align 8
  %212 = getelementptr inbounds %struct.bfd_link_info, %struct.bfd_link_info* %211, i32 0, i32 0
  %213 = load i64, i64* %212, align 8
  %214 = icmp ne i64 %213, 0
  br i1 %214, label %232, label %215

215:                                              ; preds = %210
  %216 = load %struct.elf_link_hash_entry*, %struct.elf_link_hash_entry** %4, align 8
  %217 = getelementptr inbounds %struct.elf_link_hash_entry, %struct.elf_link_hash_entry* %216, i32 0, i32 0
  %218 = load i32, i32* %217, align 8
  %219 = icmp eq i32 %218, -1
  br i1 %219, label %220, label %232

220:                                              ; preds = %215
  %221 = load %struct.elf_link_hash_entry*, %struct.elf_link_hash_entry** %4, align 8
  %222 = call %struct.TYPE_19__* @elf_i386_hash_entry(%struct.elf_link_hash_entry* %221)
  %223 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %222, i32 0, i32 0
  %224 = load i32, i32* %223, align 4
  %225 = load i32, i32* @GOT_TLS_IE, align 4
  %226 = and i32 %224, %225
  %227 = icmp ne i32 %226, 0
  br i1 %227, label %228, label %232

228:                                              ; preds = %220
  %229 = load %struct.elf_link_hash_entry*, %struct.elf_link_hash_entry** %4, align 8
  %230 = getelementptr inbounds %struct.elf_link_hash_entry, %struct.elf_link_hash_entry* %229, i32 0, i32 7
  %231 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %230, i32 0, i32 1
  store i64 -1, i64* %231, align 8
  br label %434

232:                                              ; preds = %220, %215, %210, %200
  %233 = load %struct.elf_link_hash_entry*, %struct.elf_link_hash_entry** %4, align 8
  %234 = getelementptr inbounds %struct.elf_link_hash_entry, %struct.elf_link_hash_entry* %233, i32 0, i32 7
  %235 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %234, i32 0, i32 0
  %236 = load i64, i64* %235, align 8
  %237 = icmp sgt i64 %236, 0
  br i1 %237, label %238, label %429

238:                                              ; preds = %232
  %239 = load %struct.elf_link_hash_entry*, %struct.elf_link_hash_entry** %4, align 8
  %240 = call %struct.TYPE_19__* @elf_i386_hash_entry(%struct.elf_link_hash_entry* %239)
  %241 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %240, i32 0, i32 0
  %242 = load i32, i32* %241, align 4
  store i32 %242, i32* %13, align 4
  %243 = load %struct.elf_link_hash_entry*, %struct.elf_link_hash_entry** %4, align 8
  %244 = getelementptr inbounds %struct.elf_link_hash_entry, %struct.elf_link_hash_entry* %243, i32 0, i32 0
  %245 = load i32, i32* %244, align 8
  %246 = icmp eq i32 %245, -1
  br i1 %246, label %247, label %260

247:                                              ; preds = %238
  %248 = load %struct.elf_link_hash_entry*, %struct.elf_link_hash_entry** %4, align 8
  %249 = getelementptr inbounds %struct.elf_link_hash_entry, %struct.elf_link_hash_entry* %248, i32 0, i32 1
  %250 = load i32, i32* %249, align 4
  %251 = icmp ne i32 %250, 0
  br i1 %251, label %260, label %252

252:                                              ; preds = %247
  %253 = load %struct.bfd_link_info*, %struct.bfd_link_info** %6, align 8
  %254 = load %struct.elf_link_hash_entry*, %struct.elf_link_hash_entry** %4, align 8
  %255 = call i32 @bfd_elf_link_record_dynamic_symbol(%struct.bfd_link_info* %253, %struct.elf_link_hash_entry* %254)
  %256 = icmp ne i32 %255, 0
  br i1 %256, label %259, label %257

257:                                              ; preds = %252
  %258 = load i32, i32* @FALSE, align 4
  store i32 %258, i32* %3, align 4
  br label %624

259:                                              ; preds = %252
  br label %260

260:                                              ; preds = %259, %247, %238
  %261 = load %struct.elf_i386_link_hash_table*, %struct.elf_i386_link_hash_table** %7, align 8
  %262 = getelementptr inbounds %struct.elf_i386_link_hash_table, %struct.elf_i386_link_hash_table* %261, i32 0, i32 4
  %263 = load %struct.TYPE_17__*, %struct.TYPE_17__** %262, align 8
  store %struct.TYPE_17__* %263, %struct.TYPE_17__** %11, align 8
  %264 = load i32, i32* %13, align 4
  %265 = call i64 @GOT_TLS_GDESC_P(i32 %264)
  %266 = icmp ne i64 %265, 0
  br i1 %266, label %267, label %290

267:                                              ; preds = %260
  %268 = load %struct.elf_i386_link_hash_table*, %struct.elf_i386_link_hash_table** %7, align 8
  %269 = getelementptr inbounds %struct.elf_i386_link_hash_table, %struct.elf_i386_link_hash_table* %268, i32 0, i32 3
  %270 = load %struct.TYPE_27__*, %struct.TYPE_27__** %269, align 8
  %271 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %270, i32 0, i32 0
  %272 = load i8*, i8** %271, align 8
  %273 = load %struct.elf_i386_link_hash_table*, %struct.elf_i386_link_hash_table** %7, align 8
  %274 = call i8* @elf_i386_compute_jump_table_size(%struct.elf_i386_link_hash_table* %273)
  %275 = ptrtoint i8* %272 to i64
  %276 = ptrtoint i8* %274 to i64
  %277 = sub i64 %275, %276
  %278 = inttoptr i64 %277 to i8*
  %279 = load %struct.elf_i386_link_hash_entry*, %struct.elf_i386_link_hash_entry** %8, align 8
  %280 = getelementptr inbounds %struct.elf_i386_link_hash_entry, %struct.elf_i386_link_hash_entry* %279, i32 0, i32 1
  store i8* %278, i8** %280, align 8
  %281 = load %struct.elf_i386_link_hash_table*, %struct.elf_i386_link_hash_table** %7, align 8
  %282 = getelementptr inbounds %struct.elf_i386_link_hash_table, %struct.elf_i386_link_hash_table* %281, i32 0, i32 3
  %283 = load %struct.TYPE_27__*, %struct.TYPE_27__** %282, align 8
  %284 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %283, i32 0, i32 0
  %285 = load i8*, i8** %284, align 8
  %286 = getelementptr i8, i8* %285, i64 8
  store i8* %286, i8** %284, align 8
  %287 = load %struct.elf_link_hash_entry*, %struct.elf_link_hash_entry** %4, align 8
  %288 = getelementptr inbounds %struct.elf_link_hash_entry, %struct.elf_link_hash_entry* %287, i32 0, i32 7
  %289 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %288, i32 0, i32 1
  store i64 -2, i64* %289, align 8
  br label %290

290:                                              ; preds = %267, %260
  %291 = load i32, i32* %13, align 4
  %292 = call i64 @GOT_TLS_GDESC_P(i32 %291)
  %293 = icmp ne i64 %292, 0
  br i1 %293, label %294, label %298

294:                                              ; preds = %290
  %295 = load i32, i32* %13, align 4
  %296 = call i64 @GOT_TLS_GD_P(i32 %295)
  %297 = icmp ne i64 %296, 0
  br i1 %297, label %298, label %322

298:                                              ; preds = %294, %290
  %299 = load %struct.TYPE_17__*, %struct.TYPE_17__** %11, align 8
  %300 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %299, i32 0, i32 0
  %301 = load i64, i64* %300, align 8
  %302 = load %struct.elf_link_hash_entry*, %struct.elf_link_hash_entry** %4, align 8
  %303 = getelementptr inbounds %struct.elf_link_hash_entry, %struct.elf_link_hash_entry* %302, i32 0, i32 7
  %304 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %303, i32 0, i32 1
  store i64 %301, i64* %304, align 8
  %305 = load %struct.TYPE_17__*, %struct.TYPE_17__** %11, align 8
  %306 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %305, i32 0, i32 0
  %307 = load i64, i64* %306, align 8
  %308 = add nsw i64 %307, 4
  store i64 %308, i64* %306, align 8
  %309 = load i32, i32* %13, align 4
  %310 = call i64 @GOT_TLS_GD_P(i32 %309)
  %311 = icmp ne i64 %310, 0
  br i1 %311, label %316, label %312

312:                                              ; preds = %298
  %313 = load i32, i32* %13, align 4
  %314 = load i32, i32* @GOT_TLS_IE_BOTH, align 4
  %315 = icmp eq i32 %313, %314
  br i1 %315, label %316, label %321

316:                                              ; preds = %312, %298
  %317 = load %struct.TYPE_17__*, %struct.TYPE_17__** %11, align 8
  %318 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %317, i32 0, i32 0
  %319 = load i64, i64* %318, align 8
  %320 = add nsw i64 %319, 4
  store i64 %320, i64* %318, align 8
  br label %321

321:                                              ; preds = %316, %312
  br label %322

322:                                              ; preds = %321, %294
  %323 = load %struct.elf_i386_link_hash_table*, %struct.elf_i386_link_hash_table** %7, align 8
  %324 = getelementptr inbounds %struct.elf_i386_link_hash_table, %struct.elf_i386_link_hash_table* %323, i32 0, i32 0
  %325 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %324, i32 0, i32 0
  %326 = load i32, i32* %325, align 8
  store i32 %326, i32* %12, align 4
  %327 = load i32, i32* %13, align 4
  %328 = load i32, i32* @GOT_TLS_IE_BOTH, align 4
  %329 = icmp eq i32 %327, %328
  br i1 %329, label %330, label %339

330:                                              ; preds = %322
  %331 = load %struct.elf_i386_link_hash_table*, %struct.elf_i386_link_hash_table** %7, align 8
  %332 = getelementptr inbounds %struct.elf_i386_link_hash_table, %struct.elf_i386_link_hash_table* %331, i32 0, i32 2
  %333 = load %struct.TYPE_20__*, %struct.TYPE_20__** %332, align 8
  %334 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %333, i32 0, i32 0
  %335 = load i32, i32* %334, align 4
  %336 = sext i32 %335 to i64
  %337 = add i64 %336, 8
  %338 = trunc i64 %337 to i32
  store i32 %338, i32* %334, align 4
  br label %415

339:                                              ; preds = %322
  %340 = load i32, i32* %13, align 4
  %341 = call i64 @GOT_TLS_GD_P(i32 %340)
  %342 = icmp ne i64 %341, 0
  br i1 %342, label %343, label %348

343:                                              ; preds = %339
  %344 = load %struct.elf_link_hash_entry*, %struct.elf_link_hash_entry** %4, align 8
  %345 = getelementptr inbounds %struct.elf_link_hash_entry, %struct.elf_link_hash_entry* %344, i32 0, i32 0
  %346 = load i32, i32* %345, align 8
  %347 = icmp eq i32 %346, -1
  br i1 %347, label %353, label %348

348:                                              ; preds = %343, %339
  %349 = load i32, i32* %13, align 4
  %350 = load i32, i32* @GOT_TLS_IE, align 4
  %351 = and i32 %349, %350
  %352 = icmp ne i32 %351, 0
  br i1 %352, label %353, label %362

353:                                              ; preds = %348, %343
  %354 = load %struct.elf_i386_link_hash_table*, %struct.elf_i386_link_hash_table** %7, align 8
  %355 = getelementptr inbounds %struct.elf_i386_link_hash_table, %struct.elf_i386_link_hash_table* %354, i32 0, i32 2
  %356 = load %struct.TYPE_20__*, %struct.TYPE_20__** %355, align 8
  %357 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %356, i32 0, i32 0
  %358 = load i32, i32* %357, align 4
  %359 = sext i32 %358 to i64
  %360 = add i64 %359, 4
  %361 = trunc i64 %360 to i32
  store i32 %361, i32* %357, align 4
  br label %414

362:                                              ; preds = %348
  %363 = load i32, i32* %13, align 4
  %364 = call i64 @GOT_TLS_GD_P(i32 %363)
  %365 = icmp ne i64 %364, 0
  br i1 %365, label %366, label %375

366:                                              ; preds = %362
  %367 = load %struct.elf_i386_link_hash_table*, %struct.elf_i386_link_hash_table** %7, align 8
  %368 = getelementptr inbounds %struct.elf_i386_link_hash_table, %struct.elf_i386_link_hash_table* %367, i32 0, i32 2
  %369 = load %struct.TYPE_20__*, %struct.TYPE_20__** %368, align 8
  %370 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %369, i32 0, i32 0
  %371 = load i32, i32* %370, align 4
  %372 = sext i32 %371 to i64
  %373 = add i64 %372, 8
  %374 = trunc i64 %373 to i32
  store i32 %374, i32* %370, align 4
  br label %413

375:                                              ; preds = %362
  %376 = load i32, i32* %13, align 4
  %377 = call i64 @GOT_TLS_GDESC_P(i32 %376)
  %378 = icmp ne i64 %377, 0
  br i1 %378, label %412, label %379

379:                                              ; preds = %375
  %380 = load %struct.elf_link_hash_entry*, %struct.elf_link_hash_entry** %4, align 8
  %381 = getelementptr inbounds %struct.elf_link_hash_entry, %struct.elf_link_hash_entry* %380, i32 0, i32 6
  %382 = load i32, i32* %381, align 4
  %383 = call i64 @ELF_ST_VISIBILITY(i32 %382)
  %384 = load i64, i64* @STV_DEFAULT, align 8
  %385 = icmp eq i64 %383, %384
  br i1 %385, label %393, label %386

386:                                              ; preds = %379
  %387 = load %struct.elf_link_hash_entry*, %struct.elf_link_hash_entry** %4, align 8
  %388 = getelementptr inbounds %struct.elf_link_hash_entry, %struct.elf_link_hash_entry* %387, i32 0, i32 2
  %389 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %388, i32 0, i32 0
  %390 = load i64, i64* %389, align 8
  %391 = load i64, i64* @bfd_link_hash_undefweak, align 8
  %392 = icmp ne i64 %390, %391
  br i1 %392, label %393, label %412

393:                                              ; preds = %386, %379
  %394 = load %struct.bfd_link_info*, %struct.bfd_link_info** %6, align 8
  %395 = getelementptr inbounds %struct.bfd_link_info, %struct.bfd_link_info* %394, i32 0, i32 0
  %396 = load i64, i64* %395, align 8
  %397 = icmp ne i64 %396, 0
  br i1 %397, label %403, label %398

398:                                              ; preds = %393
  %399 = load i32, i32* %12, align 4
  %400 = load %struct.elf_link_hash_entry*, %struct.elf_link_hash_entry** %4, align 8
  %401 = call i64 @WILL_CALL_FINISH_DYNAMIC_SYMBOL(i32 %399, i32 0, %struct.elf_link_hash_entry* %400)
  %402 = icmp ne i64 %401, 0
  br i1 %402, label %403, label %412

403:                                              ; preds = %398, %393
  %404 = load %struct.elf_i386_link_hash_table*, %struct.elf_i386_link_hash_table** %7, align 8
  %405 = getelementptr inbounds %struct.elf_i386_link_hash_table, %struct.elf_i386_link_hash_table* %404, i32 0, i32 2
  %406 = load %struct.TYPE_20__*, %struct.TYPE_20__** %405, align 8
  %407 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %406, i32 0, i32 0
  %408 = load i32, i32* %407, align 4
  %409 = sext i32 %408 to i64
  %410 = add i64 %409, 4
  %411 = trunc i64 %410 to i32
  store i32 %411, i32* %407, align 4
  br label %412

412:                                              ; preds = %403, %398, %386, %375
  br label %413

413:                                              ; preds = %412, %366
  br label %414

414:                                              ; preds = %413, %353
  br label %415

415:                                              ; preds = %414, %330
  %416 = load i32, i32* %13, align 4
  %417 = call i64 @GOT_TLS_GDESC_P(i32 %416)
  %418 = icmp ne i64 %417, 0
  br i1 %418, label %419, label %428

419:                                              ; preds = %415
  %420 = load %struct.elf_i386_link_hash_table*, %struct.elf_i386_link_hash_table** %7, align 8
  %421 = getelementptr inbounds %struct.elf_i386_link_hash_table, %struct.elf_i386_link_hash_table* %420, i32 0, i32 1
  %422 = load %struct.TYPE_28__*, %struct.TYPE_28__** %421, align 8
  %423 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %422, i32 0, i32 0
  %424 = load i32, i32* %423, align 4
  %425 = sext i32 %424 to i64
  %426 = add i64 %425, 4
  %427 = trunc i64 %426 to i32
  store i32 %427, i32* %423, align 4
  br label %428

428:                                              ; preds = %419, %415
  br label %433

429:                                              ; preds = %232
  %430 = load %struct.elf_link_hash_entry*, %struct.elf_link_hash_entry** %4, align 8
  %431 = getelementptr inbounds %struct.elf_link_hash_entry, %struct.elf_link_hash_entry* %430, i32 0, i32 7
  %432 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %431, i32 0, i32 1
  store i64 -1, i64* %432, align 8
  br label %433

433:                                              ; preds = %429, %428
  br label %434

434:                                              ; preds = %433, %228
  %435 = load %struct.elf_i386_link_hash_entry*, %struct.elf_i386_link_hash_entry** %8, align 8
  %436 = getelementptr inbounds %struct.elf_i386_link_hash_entry, %struct.elf_i386_link_hash_entry* %435, i32 0, i32 0
  %437 = load %struct.elf_i386_dyn_relocs*, %struct.elf_i386_dyn_relocs** %436, align 8
  %438 = icmp eq %struct.elf_i386_dyn_relocs* %437, null
  br i1 %438, label %439, label %441

439:                                              ; preds = %434
  %440 = load i32, i32* @TRUE, align 4
  store i32 %440, i32* %3, align 4
  br label %624

441:                                              ; preds = %434
  %442 = load %struct.bfd_link_info*, %struct.bfd_link_info** %6, align 8
  %443 = getelementptr inbounds %struct.bfd_link_info, %struct.bfd_link_info* %442, i32 0, i32 0
  %444 = load i64, i64* %443, align 8
  %445 = icmp ne i64 %444, 0
  br i1 %445, label %446, label %527

446:                                              ; preds = %441
  %447 = load %struct.bfd_link_info*, %struct.bfd_link_info** %6, align 8
  %448 = load %struct.elf_link_hash_entry*, %struct.elf_link_hash_entry** %4, align 8
  %449 = call i64 @SYMBOL_CALLS_LOCAL(%struct.bfd_link_info* %447, %struct.elf_link_hash_entry* %448)
  %450 = icmp ne i64 %449, 0
  br i1 %450, label %451, label %484

451:                                              ; preds = %446
  %452 = load %struct.elf_i386_link_hash_entry*, %struct.elf_i386_link_hash_entry** %8, align 8
  %453 = getelementptr inbounds %struct.elf_i386_link_hash_entry, %struct.elf_i386_link_hash_entry* %452, i32 0, i32 0
  store %struct.elf_i386_dyn_relocs** %453, %struct.elf_i386_dyn_relocs*** %14, align 8
  br label %454

454:                                              ; preds = %482, %451
  %455 = load %struct.elf_i386_dyn_relocs**, %struct.elf_i386_dyn_relocs*** %14, align 8
  %456 = load %struct.elf_i386_dyn_relocs*, %struct.elf_i386_dyn_relocs** %455, align 8
  store %struct.elf_i386_dyn_relocs* %456, %struct.elf_i386_dyn_relocs** %9, align 8
  %457 = icmp ne %struct.elf_i386_dyn_relocs* %456, null
  br i1 %457, label %458, label %483

458:                                              ; preds = %454
  %459 = load %struct.elf_i386_dyn_relocs*, %struct.elf_i386_dyn_relocs** %9, align 8
  %460 = getelementptr inbounds %struct.elf_i386_dyn_relocs, %struct.elf_i386_dyn_relocs* %459, i32 0, i32 3
  %461 = load i64, i64* %460, align 8
  %462 = load %struct.elf_i386_dyn_relocs*, %struct.elf_i386_dyn_relocs** %9, align 8
  %463 = getelementptr inbounds %struct.elf_i386_dyn_relocs, %struct.elf_i386_dyn_relocs* %462, i32 0, i32 0
  %464 = load i32, i32* %463, align 8
  %465 = sext i32 %464 to i64
  %466 = sub nsw i64 %465, %461
  %467 = trunc i64 %466 to i32
  store i32 %467, i32* %463, align 8
  %468 = load %struct.elf_i386_dyn_relocs*, %struct.elf_i386_dyn_relocs** %9, align 8
  %469 = getelementptr inbounds %struct.elf_i386_dyn_relocs, %struct.elf_i386_dyn_relocs* %468, i32 0, i32 3
  store i64 0, i64* %469, align 8
  %470 = load %struct.elf_i386_dyn_relocs*, %struct.elf_i386_dyn_relocs** %9, align 8
  %471 = getelementptr inbounds %struct.elf_i386_dyn_relocs, %struct.elf_i386_dyn_relocs* %470, i32 0, i32 0
  %472 = load i32, i32* %471, align 8
  %473 = icmp eq i32 %472, 0
  br i1 %473, label %474, label %479

474:                                              ; preds = %458
  %475 = load %struct.elf_i386_dyn_relocs*, %struct.elf_i386_dyn_relocs** %9, align 8
  %476 = getelementptr inbounds %struct.elf_i386_dyn_relocs, %struct.elf_i386_dyn_relocs* %475, i32 0, i32 2
  %477 = load %struct.elf_i386_dyn_relocs*, %struct.elf_i386_dyn_relocs** %476, align 8
  %478 = load %struct.elf_i386_dyn_relocs**, %struct.elf_i386_dyn_relocs*** %14, align 8
  store %struct.elf_i386_dyn_relocs* %477, %struct.elf_i386_dyn_relocs** %478, align 8
  br label %482

479:                                              ; preds = %458
  %480 = load %struct.elf_i386_dyn_relocs*, %struct.elf_i386_dyn_relocs** %9, align 8
  %481 = getelementptr inbounds %struct.elf_i386_dyn_relocs, %struct.elf_i386_dyn_relocs* %480, i32 0, i32 2
  store %struct.elf_i386_dyn_relocs** %481, %struct.elf_i386_dyn_relocs*** %14, align 8
  br label %482

482:                                              ; preds = %479, %474
  br label %454

483:                                              ; preds = %454
  br label %484

484:                                              ; preds = %483, %446
  %485 = load %struct.elf_i386_link_hash_entry*, %struct.elf_i386_link_hash_entry** %8, align 8
  %486 = getelementptr inbounds %struct.elf_i386_link_hash_entry, %struct.elf_i386_link_hash_entry* %485, i32 0, i32 0
  %487 = load %struct.elf_i386_dyn_relocs*, %struct.elf_i386_dyn_relocs** %486, align 8
  %488 = icmp ne %struct.elf_i386_dyn_relocs* %487, null
  br i1 %488, label %489, label %526

489:                                              ; preds = %484
  %490 = load %struct.elf_link_hash_entry*, %struct.elf_link_hash_entry** %4, align 8
  %491 = getelementptr inbounds %struct.elf_link_hash_entry, %struct.elf_link_hash_entry* %490, i32 0, i32 2
  %492 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %491, i32 0, i32 0
  %493 = load i64, i64* %492, align 8
  %494 = load i64, i64* @bfd_link_hash_undefweak, align 8
  %495 = icmp eq i64 %493, %494
  br i1 %495, label %496, label %526

496:                                              ; preds = %489
  %497 = load %struct.elf_link_hash_entry*, %struct.elf_link_hash_entry** %4, align 8
  %498 = getelementptr inbounds %struct.elf_link_hash_entry, %struct.elf_link_hash_entry* %497, i32 0, i32 6
  %499 = load i32, i32* %498, align 4
  %500 = call i64 @ELF_ST_VISIBILITY(i32 %499)
  %501 = load i64, i64* @STV_DEFAULT, align 8
  %502 = icmp ne i64 %500, %501
  br i1 %502, label %503, label %506

503:                                              ; preds = %496
  %504 = load %struct.elf_i386_link_hash_entry*, %struct.elf_i386_link_hash_entry** %8, align 8
  %505 = getelementptr inbounds %struct.elf_i386_link_hash_entry, %struct.elf_i386_link_hash_entry* %504, i32 0, i32 0
  store %struct.elf_i386_dyn_relocs* null, %struct.elf_i386_dyn_relocs** %505, align 8
  br label %525

506:                                              ; preds = %496
  %507 = load %struct.elf_link_hash_entry*, %struct.elf_link_hash_entry** %4, align 8
  %508 = getelementptr inbounds %struct.elf_link_hash_entry, %struct.elf_link_hash_entry* %507, i32 0, i32 0
  %509 = load i32, i32* %508, align 8
  %510 = icmp eq i32 %509, -1
  br i1 %510, label %511, label %524

511:                                              ; preds = %506
  %512 = load %struct.elf_link_hash_entry*, %struct.elf_link_hash_entry** %4, align 8
  %513 = getelementptr inbounds %struct.elf_link_hash_entry, %struct.elf_link_hash_entry* %512, i32 0, i32 1
  %514 = load i32, i32* %513, align 4
  %515 = icmp ne i32 %514, 0
  br i1 %515, label %524, label %516

516:                                              ; preds = %511
  %517 = load %struct.bfd_link_info*, %struct.bfd_link_info** %6, align 8
  %518 = load %struct.elf_link_hash_entry*, %struct.elf_link_hash_entry** %4, align 8
  %519 = call i32 @bfd_elf_link_record_dynamic_symbol(%struct.bfd_link_info* %517, %struct.elf_link_hash_entry* %518)
  %520 = icmp ne i32 %519, 0
  br i1 %520, label %523, label %521

521:                                              ; preds = %516
  %522 = load i32, i32* @FALSE, align 4
  store i32 %522, i32* %3, align 4
  br label %624

523:                                              ; preds = %516
  br label %524

524:                                              ; preds = %523, %511, %506
  br label %525

525:                                              ; preds = %524, %503
  br label %526

526:                                              ; preds = %525, %489, %484
  br label %595

527:                                              ; preds = %441
  %528 = load i64, i64* @ELIMINATE_COPY_RELOCS, align 8
  %529 = icmp ne i64 %528, 0
  br i1 %529, label %530, label %594

530:                                              ; preds = %527
  %531 = load %struct.elf_link_hash_entry*, %struct.elf_link_hash_entry** %4, align 8
  %532 = getelementptr inbounds %struct.elf_link_hash_entry, %struct.elf_link_hash_entry* %531, i32 0, i32 5
  %533 = load i32, i32* %532, align 8
  %534 = icmp ne i32 %533, 0
  br i1 %534, label %590, label %535

535:                                              ; preds = %530
  %536 = load %struct.elf_link_hash_entry*, %struct.elf_link_hash_entry** %4, align 8
  %537 = getelementptr inbounds %struct.elf_link_hash_entry, %struct.elf_link_hash_entry* %536, i32 0, i32 4
  %538 = load i64, i64* %537, align 8
  %539 = icmp ne i64 %538, 0
  br i1 %539, label %540, label %545

540:                                              ; preds = %535
  %541 = load %struct.elf_link_hash_entry*, %struct.elf_link_hash_entry** %4, align 8
  %542 = getelementptr inbounds %struct.elf_link_hash_entry, %struct.elf_link_hash_entry* %541, i32 0, i32 3
  %543 = load i32, i32* %542, align 8
  %544 = icmp ne i32 %543, 0
  br i1 %544, label %545, label %565

545:                                              ; preds = %540, %535
  %546 = load %struct.elf_i386_link_hash_table*, %struct.elf_i386_link_hash_table** %7, align 8
  %547 = getelementptr inbounds %struct.elf_i386_link_hash_table, %struct.elf_i386_link_hash_table* %546, i32 0, i32 0
  %548 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %547, i32 0, i32 0
  %549 = load i32, i32* %548, align 8
  %550 = icmp ne i32 %549, 0
  br i1 %550, label %551, label %590

551:                                              ; preds = %545
  %552 = load %struct.elf_link_hash_entry*, %struct.elf_link_hash_entry** %4, align 8
  %553 = getelementptr inbounds %struct.elf_link_hash_entry, %struct.elf_link_hash_entry* %552, i32 0, i32 2
  %554 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %553, i32 0, i32 0
  %555 = load i64, i64* %554, align 8
  %556 = load i64, i64* @bfd_link_hash_undefweak, align 8
  %557 = icmp eq i64 %555, %556
  br i1 %557, label %565, label %558

558:                                              ; preds = %551
  %559 = load %struct.elf_link_hash_entry*, %struct.elf_link_hash_entry** %4, align 8
  %560 = getelementptr inbounds %struct.elf_link_hash_entry, %struct.elf_link_hash_entry* %559, i32 0, i32 2
  %561 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %560, i32 0, i32 0
  %562 = load i64, i64* %561, align 8
  %563 = load i64, i64* @bfd_link_hash_undefined, align 8
  %564 = icmp eq i64 %562, %563
  br i1 %564, label %565, label %590

565:                                              ; preds = %558, %551, %540
  %566 = load %struct.elf_link_hash_entry*, %struct.elf_link_hash_entry** %4, align 8
  %567 = getelementptr inbounds %struct.elf_link_hash_entry, %struct.elf_link_hash_entry* %566, i32 0, i32 0
  %568 = load i32, i32* %567, align 8
  %569 = icmp eq i32 %568, -1
  br i1 %569, label %570, label %583

570:                                              ; preds = %565
  %571 = load %struct.elf_link_hash_entry*, %struct.elf_link_hash_entry** %4, align 8
  %572 = getelementptr inbounds %struct.elf_link_hash_entry, %struct.elf_link_hash_entry* %571, i32 0, i32 1
  %573 = load i32, i32* %572, align 4
  %574 = icmp ne i32 %573, 0
  br i1 %574, label %583, label %575

575:                                              ; preds = %570
  %576 = load %struct.bfd_link_info*, %struct.bfd_link_info** %6, align 8
  %577 = load %struct.elf_link_hash_entry*, %struct.elf_link_hash_entry** %4, align 8
  %578 = call i32 @bfd_elf_link_record_dynamic_symbol(%struct.bfd_link_info* %576, %struct.elf_link_hash_entry* %577)
  %579 = icmp ne i32 %578, 0
  br i1 %579, label %582, label %580

580:                                              ; preds = %575
  %581 = load i32, i32* @FALSE, align 4
  store i32 %581, i32* %3, align 4
  br label %624

582:                                              ; preds = %575
  br label %583

583:                                              ; preds = %582, %570, %565
  %584 = load %struct.elf_link_hash_entry*, %struct.elf_link_hash_entry** %4, align 8
  %585 = getelementptr inbounds %struct.elf_link_hash_entry, %struct.elf_link_hash_entry* %584, i32 0, i32 0
  %586 = load i32, i32* %585, align 8
  %587 = icmp ne i32 %586, -1
  br i1 %587, label %588, label %589

588:                                              ; preds = %583
  br label %593

589:                                              ; preds = %583
  br label %590

590:                                              ; preds = %589, %558, %545, %530
  %591 = load %struct.elf_i386_link_hash_entry*, %struct.elf_i386_link_hash_entry** %8, align 8
  %592 = getelementptr inbounds %struct.elf_i386_link_hash_entry, %struct.elf_i386_link_hash_entry* %591, i32 0, i32 0
  store %struct.elf_i386_dyn_relocs* null, %struct.elf_i386_dyn_relocs** %592, align 8
  br label %593

593:                                              ; preds = %590, %588
  br label %594

594:                                              ; preds = %593, %527
  br label %595

595:                                              ; preds = %594, %526
  %596 = load %struct.elf_i386_link_hash_entry*, %struct.elf_i386_link_hash_entry** %8, align 8
  %597 = getelementptr inbounds %struct.elf_i386_link_hash_entry, %struct.elf_i386_link_hash_entry* %596, i32 0, i32 0
  %598 = load %struct.elf_i386_dyn_relocs*, %struct.elf_i386_dyn_relocs** %597, align 8
  store %struct.elf_i386_dyn_relocs* %598, %struct.elf_i386_dyn_relocs** %9, align 8
  br label %599

599:                                              ; preds = %618, %595
  %600 = load %struct.elf_i386_dyn_relocs*, %struct.elf_i386_dyn_relocs** %9, align 8
  %601 = icmp ne %struct.elf_i386_dyn_relocs* %600, null
  br i1 %601, label %602, label %622

602:                                              ; preds = %599
  %603 = load %struct.elf_i386_dyn_relocs*, %struct.elf_i386_dyn_relocs** %9, align 8
  %604 = getelementptr inbounds %struct.elf_i386_dyn_relocs, %struct.elf_i386_dyn_relocs* %603, i32 0, i32 1
  %605 = load i32, i32* %604, align 4
  %606 = call %struct.TYPE_18__* @elf_section_data(i32 %605)
  %607 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %606, i32 0, i32 0
  %608 = load %struct.TYPE_17__*, %struct.TYPE_17__** %607, align 8
  store %struct.TYPE_17__* %608, %struct.TYPE_17__** %15, align 8
  %609 = load %struct.elf_i386_dyn_relocs*, %struct.elf_i386_dyn_relocs** %9, align 8
  %610 = getelementptr inbounds %struct.elf_i386_dyn_relocs, %struct.elf_i386_dyn_relocs* %609, i32 0, i32 0
  %611 = load i32, i32* %610, align 8
  %612 = sext i32 %611 to i64
  %613 = mul i64 %612, 4
  %614 = load %struct.TYPE_17__*, %struct.TYPE_17__** %15, align 8
  %615 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %614, i32 0, i32 0
  %616 = load i64, i64* %615, align 8
  %617 = add i64 %616, %613
  store i64 %617, i64* %615, align 8
  br label %618

618:                                              ; preds = %602
  %619 = load %struct.elf_i386_dyn_relocs*, %struct.elf_i386_dyn_relocs** %9, align 8
  %620 = getelementptr inbounds %struct.elf_i386_dyn_relocs, %struct.elf_i386_dyn_relocs* %619, i32 0, i32 2
  %621 = load %struct.elf_i386_dyn_relocs*, %struct.elf_i386_dyn_relocs** %620, align 8
  store %struct.elf_i386_dyn_relocs* %621, %struct.elf_i386_dyn_relocs** %9, align 8
  br label %599

622:                                              ; preds = %599
  %623 = load i32, i32* @TRUE, align 4
  store i32 %623, i32* %3, align 4
  br label %624

624:                                              ; preds = %622, %580, %521, %439, %257, %70, %22
  %625 = load i32, i32* %3, align 4
  ret i32 %625
}

declare dso_local %struct.elf_i386_link_hash_table* @elf_i386_hash_table(%struct.bfd_link_info*) #1

declare dso_local i32 @bfd_elf_link_record_dynamic_symbol(%struct.bfd_link_info*, %struct.elf_link_hash_entry*) #1

declare dso_local i64 @WILL_CALL_FINISH_DYNAMIC_SYMBOL(i32, i32, %struct.elf_link_hash_entry*) #1

declare dso_local %struct.TYPE_19__* @elf_i386_hash_entry(%struct.elf_link_hash_entry*) #1

declare dso_local i64 @GOT_TLS_GDESC_P(i32) #1

declare dso_local i8* @elf_i386_compute_jump_table_size(%struct.elf_i386_link_hash_table*) #1

declare dso_local i64 @GOT_TLS_GD_P(i32) #1

declare dso_local i64 @ELF_ST_VISIBILITY(i32) #1

declare dso_local i64 @SYMBOL_CALLS_LOCAL(%struct.bfd_link_info*, %struct.elf_link_hash_entry*) #1

declare dso_local %struct.TYPE_18__* @elf_section_data(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

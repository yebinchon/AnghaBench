; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/bfd/extr_elf64-x86-64.c_allocate_dynrelocs.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/bfd/extr_elf64-x86-64.c_allocate_dynrelocs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.elf_link_hash_entry = type { i32, i32, %struct.TYPE_23__, i32, i64, i32, i32, %struct.TYPE_14__, i64, %struct.TYPE_26__ }
%struct.TYPE_23__ = type { i64, %struct.TYPE_22__ }
%struct.TYPE_22__ = type { %struct.TYPE_21__, %struct.TYPE_19__ }
%struct.TYPE_21__ = type { i64, %struct.TYPE_15__* }
%struct.TYPE_15__ = type { i64 }
%struct.TYPE_19__ = type { i64 }
%struct.TYPE_14__ = type { i64, i64 }
%struct.TYPE_26__ = type { i64, i64 }
%struct.bfd_link_info = type { i64 }
%struct.elf64_x86_64_link_hash_table = type { %struct.TYPE_20__, i8*, %struct.TYPE_25__*, %struct.TYPE_18__*, %struct.TYPE_15__*, %struct.TYPE_24__*, %struct.TYPE_15__* }
%struct.TYPE_20__ = type { i32 }
%struct.TYPE_25__ = type { i32, i32 }
%struct.TYPE_18__ = type { i32 }
%struct.TYPE_24__ = type { i8* }
%struct.elf64_x86_64_link_hash_entry = type { %struct.elf64_x86_64_dyn_relocs*, i8* }
%struct.elf64_x86_64_dyn_relocs = type { i32, i32, %struct.elf64_x86_64_dyn_relocs*, i64 }
%struct.TYPE_17__ = type { i32 }
%struct.TYPE_16__ = type { %struct.TYPE_15__* }

@bfd_link_hash_indirect = common dso_local global i64 0, align 8
@TRUE = common dso_local global i32 0, align 4
@bfd_link_hash_warning = common dso_local global i64 0, align 8
@FALSE = common dso_local global i32 0, align 4
@PLT_ENTRY_SIZE = common dso_local global i64 0, align 8
@GOT_ENTRY_SIZE = common dso_local global i32 0, align 4
@GOT_TLS_IE = common dso_local global i32 0, align 4
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
  %7 = alloca %struct.elf64_x86_64_link_hash_table*, align 8
  %8 = alloca %struct.elf64_x86_64_link_hash_entry*, align 8
  %9 = alloca %struct.elf64_x86_64_dyn_relocs*, align 8
  %10 = alloca %struct.TYPE_15__*, align 8
  %11 = alloca %struct.TYPE_15__*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.elf64_x86_64_dyn_relocs**, align 8
  %15 = alloca %struct.TYPE_15__*, align 8
  store %struct.elf_link_hash_entry* %0, %struct.elf_link_hash_entry** %4, align 8
  store i8* %1, i8** %5, align 8
  %16 = load %struct.elf_link_hash_entry*, %struct.elf_link_hash_entry** %4, align 8
  %17 = getelementptr inbounds %struct.elf_link_hash_entry, %struct.elf_link_hash_entry* %16, i32 0, i32 2
  %18 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = load i64, i64* @bfd_link_hash_indirect, align 8
  %21 = icmp eq i64 %19, %20
  br i1 %21, label %22, label %24

22:                                               ; preds = %2
  %23 = load i32, i32* @TRUE, align 4
  store i32 %23, i32* %3, align 4
  br label %582

24:                                               ; preds = %2
  %25 = load %struct.elf_link_hash_entry*, %struct.elf_link_hash_entry** %4, align 8
  %26 = getelementptr inbounds %struct.elf_link_hash_entry, %struct.elf_link_hash_entry* %25, i32 0, i32 2
  %27 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = load i64, i64* @bfd_link_hash_warning, align 8
  %30 = icmp eq i64 %28, %29
  br i1 %30, label %31, label %39

31:                                               ; preds = %24
  %32 = load %struct.elf_link_hash_entry*, %struct.elf_link_hash_entry** %4, align 8
  %33 = getelementptr inbounds %struct.elf_link_hash_entry, %struct.elf_link_hash_entry* %32, i32 0, i32 2
  %34 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %33, i32 0, i32 1
  %35 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %34, i32 0, i32 1
  %36 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = inttoptr i64 %37 to %struct.elf_link_hash_entry*
  store %struct.elf_link_hash_entry* %38, %struct.elf_link_hash_entry** %4, align 8
  br label %39

39:                                               ; preds = %31, %24
  %40 = load i8*, i8** %5, align 8
  %41 = bitcast i8* %40 to %struct.bfd_link_info*
  store %struct.bfd_link_info* %41, %struct.bfd_link_info** %6, align 8
  %42 = load %struct.bfd_link_info*, %struct.bfd_link_info** %6, align 8
  %43 = call %struct.elf64_x86_64_link_hash_table* @elf64_x86_64_hash_table(%struct.bfd_link_info* %42)
  store %struct.elf64_x86_64_link_hash_table* %43, %struct.elf64_x86_64_link_hash_table** %7, align 8
  %44 = load %struct.elf64_x86_64_link_hash_table*, %struct.elf64_x86_64_link_hash_table** %7, align 8
  %45 = getelementptr inbounds %struct.elf64_x86_64_link_hash_table, %struct.elf64_x86_64_link_hash_table* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %163

49:                                               ; preds = %39
  %50 = load %struct.elf_link_hash_entry*, %struct.elf_link_hash_entry** %4, align 8
  %51 = getelementptr inbounds %struct.elf_link_hash_entry, %struct.elf_link_hash_entry* %50, i32 0, i32 9
  %52 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = icmp sgt i64 %53, 0
  br i1 %54, label %55, label %163

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
  br label %582

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
  br i1 %81, label %82, label %156

82:                                               ; preds = %78, %73
  %83 = load %struct.elf64_x86_64_link_hash_table*, %struct.elf64_x86_64_link_hash_table** %7, align 8
  %84 = getelementptr inbounds %struct.elf64_x86_64_link_hash_table, %struct.elf64_x86_64_link_hash_table* %83, i32 0, i32 6
  %85 = load %struct.TYPE_15__*, %struct.TYPE_15__** %84, align 8
  store %struct.TYPE_15__* %85, %struct.TYPE_15__** %10, align 8
  %86 = load %struct.TYPE_15__*, %struct.TYPE_15__** %10, align 8
  %87 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %86, i32 0, i32 0
  %88 = load i64, i64* %87, align 8
  %89 = icmp eq i64 %88, 0
  br i1 %89, label %90, label %96

90:                                               ; preds = %82
  %91 = load i64, i64* @PLT_ENTRY_SIZE, align 8
  %92 = load %struct.TYPE_15__*, %struct.TYPE_15__** %10, align 8
  %93 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %92, i32 0, i32 0
  %94 = load i64, i64* %93, align 8
  %95 = add nsw i64 %94, %91
  store i64 %95, i64* %93, align 8
  br label %96

96:                                               ; preds = %90, %82
  %97 = load %struct.TYPE_15__*, %struct.TYPE_15__** %10, align 8
  %98 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %97, i32 0, i32 0
  %99 = load i64, i64* %98, align 8
  %100 = load %struct.elf_link_hash_entry*, %struct.elf_link_hash_entry** %4, align 8
  %101 = getelementptr inbounds %struct.elf_link_hash_entry, %struct.elf_link_hash_entry* %100, i32 0, i32 9
  %102 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %101, i32 0, i32 1
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
  %113 = load %struct.TYPE_15__*, %struct.TYPE_15__** %10, align 8
  %114 = load %struct.elf_link_hash_entry*, %struct.elf_link_hash_entry** %4, align 8
  %115 = getelementptr inbounds %struct.elf_link_hash_entry, %struct.elf_link_hash_entry* %114, i32 0, i32 2
  %116 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %115, i32 0, i32 1
  %117 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %116, i32 0, i32 0
  %118 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %117, i32 0, i32 1
  store %struct.TYPE_15__* %113, %struct.TYPE_15__** %118, align 8
  %119 = load %struct.elf_link_hash_entry*, %struct.elf_link_hash_entry** %4, align 8
  %120 = getelementptr inbounds %struct.elf_link_hash_entry, %struct.elf_link_hash_entry* %119, i32 0, i32 9
  %121 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %120, i32 0, i32 1
  %122 = load i64, i64* %121, align 8
  %123 = load %struct.elf_link_hash_entry*, %struct.elf_link_hash_entry** %4, align 8
  %124 = getelementptr inbounds %struct.elf_link_hash_entry, %struct.elf_link_hash_entry* %123, i32 0, i32 2
  %125 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %124, i32 0, i32 1
  %126 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %125, i32 0, i32 0
  %127 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %126, i32 0, i32 0
  store i64 %122, i64* %127, align 8
  br label %128

128:                                              ; preds = %112, %107, %96
  %129 = load i64, i64* @PLT_ENTRY_SIZE, align 8
  %130 = load %struct.TYPE_15__*, %struct.TYPE_15__** %10, align 8
  %131 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %130, i32 0, i32 0
  %132 = load i64, i64* %131, align 8
  %133 = add nsw i64 %132, %129
  store i64 %133, i64* %131, align 8
  %134 = load i32, i32* @GOT_ENTRY_SIZE, align 4
  %135 = load %struct.elf64_x86_64_link_hash_table*, %struct.elf64_x86_64_link_hash_table** %7, align 8
  %136 = getelementptr inbounds %struct.elf64_x86_64_link_hash_table, %struct.elf64_x86_64_link_hash_table* %135, i32 0, i32 5
  %137 = load %struct.TYPE_24__*, %struct.TYPE_24__** %136, align 8
  %138 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %137, i32 0, i32 0
  %139 = load i8*, i8** %138, align 8
  %140 = sext i32 %134 to i64
  %141 = getelementptr i8, i8* %139, i64 %140
  store i8* %141, i8** %138, align 8
  %142 = load %struct.elf64_x86_64_link_hash_table*, %struct.elf64_x86_64_link_hash_table** %7, align 8
  %143 = getelementptr inbounds %struct.elf64_x86_64_link_hash_table, %struct.elf64_x86_64_link_hash_table* %142, i32 0, i32 2
  %144 = load %struct.TYPE_25__*, %struct.TYPE_25__** %143, align 8
  %145 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %144, i32 0, i32 0
  %146 = load i32, i32* %145, align 4
  %147 = sext i32 %146 to i64
  %148 = add i64 %147, 4
  %149 = trunc i64 %148 to i32
  store i32 %149, i32* %145, align 4
  %150 = load %struct.elf64_x86_64_link_hash_table*, %struct.elf64_x86_64_link_hash_table** %7, align 8
  %151 = getelementptr inbounds %struct.elf64_x86_64_link_hash_table, %struct.elf64_x86_64_link_hash_table* %150, i32 0, i32 2
  %152 = load %struct.TYPE_25__*, %struct.TYPE_25__** %151, align 8
  %153 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %152, i32 0, i32 1
  %154 = load i32, i32* %153, align 4
  %155 = add nsw i32 %154, 1
  store i32 %155, i32* %153, align 4
  br label %162

156:                                              ; preds = %78
  %157 = load %struct.elf_link_hash_entry*, %struct.elf_link_hash_entry** %4, align 8
  %158 = getelementptr inbounds %struct.elf_link_hash_entry, %struct.elf_link_hash_entry* %157, i32 0, i32 9
  %159 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %158, i32 0, i32 1
  store i64 -1, i64* %159, align 8
  %160 = load %struct.elf_link_hash_entry*, %struct.elf_link_hash_entry** %4, align 8
  %161 = getelementptr inbounds %struct.elf_link_hash_entry, %struct.elf_link_hash_entry* %160, i32 0, i32 8
  store i64 0, i64* %161, align 8
  br label %162

162:                                              ; preds = %156, %128
  br label %169

163:                                              ; preds = %49, %39
  %164 = load %struct.elf_link_hash_entry*, %struct.elf_link_hash_entry** %4, align 8
  %165 = getelementptr inbounds %struct.elf_link_hash_entry, %struct.elf_link_hash_entry* %164, i32 0, i32 9
  %166 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %165, i32 0, i32 1
  store i64 -1, i64* %166, align 8
  %167 = load %struct.elf_link_hash_entry*, %struct.elf_link_hash_entry** %4, align 8
  %168 = getelementptr inbounds %struct.elf_link_hash_entry, %struct.elf_link_hash_entry* %167, i32 0, i32 8
  store i64 0, i64* %168, align 8
  br label %169

169:                                              ; preds = %163, %162
  %170 = load %struct.elf_link_hash_entry*, %struct.elf_link_hash_entry** %4, align 8
  %171 = bitcast %struct.elf_link_hash_entry* %170 to %struct.elf64_x86_64_link_hash_entry*
  store %struct.elf64_x86_64_link_hash_entry* %171, %struct.elf64_x86_64_link_hash_entry** %8, align 8
  %172 = load %struct.elf64_x86_64_link_hash_entry*, %struct.elf64_x86_64_link_hash_entry** %8, align 8
  %173 = getelementptr inbounds %struct.elf64_x86_64_link_hash_entry, %struct.elf64_x86_64_link_hash_entry* %172, i32 0, i32 1
  store i8* inttoptr (i64 -1 to i8*), i8** %173, align 8
  %174 = load %struct.elf_link_hash_entry*, %struct.elf_link_hash_entry** %4, align 8
  %175 = getelementptr inbounds %struct.elf_link_hash_entry, %struct.elf_link_hash_entry* %174, i32 0, i32 7
  %176 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %175, i32 0, i32 0
  %177 = load i64, i64* %176, align 8
  %178 = icmp sgt i64 %177, 0
  br i1 %178, label %179, label %200

179:                                              ; preds = %169
  %180 = load %struct.bfd_link_info*, %struct.bfd_link_info** %6, align 8
  %181 = getelementptr inbounds %struct.bfd_link_info, %struct.bfd_link_info* %180, i32 0, i32 0
  %182 = load i64, i64* %181, align 8
  %183 = icmp ne i64 %182, 0
  br i1 %183, label %200, label %184

184:                                              ; preds = %179
  %185 = load %struct.elf_link_hash_entry*, %struct.elf_link_hash_entry** %4, align 8
  %186 = getelementptr inbounds %struct.elf_link_hash_entry, %struct.elf_link_hash_entry* %185, i32 0, i32 0
  %187 = load i32, i32* %186, align 8
  %188 = icmp eq i32 %187, -1
  br i1 %188, label %189, label %200

189:                                              ; preds = %184
  %190 = load %struct.elf_link_hash_entry*, %struct.elf_link_hash_entry** %4, align 8
  %191 = call %struct.TYPE_17__* @elf64_x86_64_hash_entry(%struct.elf_link_hash_entry* %190)
  %192 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %191, i32 0, i32 0
  %193 = load i32, i32* %192, align 4
  %194 = load i32, i32* @GOT_TLS_IE, align 4
  %195 = icmp eq i32 %193, %194
  br i1 %195, label %196, label %200

196:                                              ; preds = %189
  %197 = load %struct.elf_link_hash_entry*, %struct.elf_link_hash_entry** %4, align 8
  %198 = getelementptr inbounds %struct.elf_link_hash_entry, %struct.elf_link_hash_entry* %197, i32 0, i32 7
  %199 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %198, i32 0, i32 1
  store i64 -1, i64* %199, align 8
  br label %392

200:                                              ; preds = %189, %184, %179, %169
  %201 = load %struct.elf_link_hash_entry*, %struct.elf_link_hash_entry** %4, align 8
  %202 = getelementptr inbounds %struct.elf_link_hash_entry, %struct.elf_link_hash_entry* %201, i32 0, i32 7
  %203 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %202, i32 0, i32 0
  %204 = load i64, i64* %203, align 8
  %205 = icmp sgt i64 %204, 0
  br i1 %205, label %206, label %387

206:                                              ; preds = %200
  %207 = load %struct.elf_link_hash_entry*, %struct.elf_link_hash_entry** %4, align 8
  %208 = call %struct.TYPE_17__* @elf64_x86_64_hash_entry(%struct.elf_link_hash_entry* %207)
  %209 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %208, i32 0, i32 0
  %210 = load i32, i32* %209, align 4
  store i32 %210, i32* %13, align 4
  %211 = load %struct.elf_link_hash_entry*, %struct.elf_link_hash_entry** %4, align 8
  %212 = getelementptr inbounds %struct.elf_link_hash_entry, %struct.elf_link_hash_entry* %211, i32 0, i32 0
  %213 = load i32, i32* %212, align 8
  %214 = icmp eq i32 %213, -1
  br i1 %214, label %215, label %228

215:                                              ; preds = %206
  %216 = load %struct.elf_link_hash_entry*, %struct.elf_link_hash_entry** %4, align 8
  %217 = getelementptr inbounds %struct.elf_link_hash_entry, %struct.elf_link_hash_entry* %216, i32 0, i32 1
  %218 = load i32, i32* %217, align 4
  %219 = icmp ne i32 %218, 0
  br i1 %219, label %228, label %220

220:                                              ; preds = %215
  %221 = load %struct.bfd_link_info*, %struct.bfd_link_info** %6, align 8
  %222 = load %struct.elf_link_hash_entry*, %struct.elf_link_hash_entry** %4, align 8
  %223 = call i32 @bfd_elf_link_record_dynamic_symbol(%struct.bfd_link_info* %221, %struct.elf_link_hash_entry* %222)
  %224 = icmp ne i32 %223, 0
  br i1 %224, label %227, label %225

225:                                              ; preds = %220
  %226 = load i32, i32* @FALSE, align 4
  store i32 %226, i32* %3, align 4
  br label %582

227:                                              ; preds = %220
  br label %228

228:                                              ; preds = %227, %215, %206
  %229 = load i32, i32* %13, align 4
  %230 = call i64 @GOT_TLS_GDESC_P(i32 %229)
  %231 = icmp ne i64 %230, 0
  br i1 %231, label %232, label %258

232:                                              ; preds = %228
  %233 = load %struct.elf64_x86_64_link_hash_table*, %struct.elf64_x86_64_link_hash_table** %7, align 8
  %234 = getelementptr inbounds %struct.elf64_x86_64_link_hash_table, %struct.elf64_x86_64_link_hash_table* %233, i32 0, i32 5
  %235 = load %struct.TYPE_24__*, %struct.TYPE_24__** %234, align 8
  %236 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %235, i32 0, i32 0
  %237 = load i8*, i8** %236, align 8
  %238 = load %struct.elf64_x86_64_link_hash_table*, %struct.elf64_x86_64_link_hash_table** %7, align 8
  %239 = call i8* @elf64_x86_64_compute_jump_table_size(%struct.elf64_x86_64_link_hash_table* %238)
  %240 = ptrtoint i8* %237 to i64
  %241 = ptrtoint i8* %239 to i64
  %242 = sub i64 %240, %241
  %243 = inttoptr i64 %242 to i8*
  %244 = load %struct.elf64_x86_64_link_hash_entry*, %struct.elf64_x86_64_link_hash_entry** %8, align 8
  %245 = getelementptr inbounds %struct.elf64_x86_64_link_hash_entry, %struct.elf64_x86_64_link_hash_entry* %244, i32 0, i32 1
  store i8* %243, i8** %245, align 8
  %246 = load i32, i32* @GOT_ENTRY_SIZE, align 4
  %247 = mul nsw i32 2, %246
  %248 = load %struct.elf64_x86_64_link_hash_table*, %struct.elf64_x86_64_link_hash_table** %7, align 8
  %249 = getelementptr inbounds %struct.elf64_x86_64_link_hash_table, %struct.elf64_x86_64_link_hash_table* %248, i32 0, i32 5
  %250 = load %struct.TYPE_24__*, %struct.TYPE_24__** %249, align 8
  %251 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %250, i32 0, i32 0
  %252 = load i8*, i8** %251, align 8
  %253 = sext i32 %247 to i64
  %254 = getelementptr i8, i8* %252, i64 %253
  store i8* %254, i8** %251, align 8
  %255 = load %struct.elf_link_hash_entry*, %struct.elf_link_hash_entry** %4, align 8
  %256 = getelementptr inbounds %struct.elf_link_hash_entry, %struct.elf_link_hash_entry* %255, i32 0, i32 7
  %257 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %256, i32 0, i32 1
  store i64 -2, i64* %257, align 8
  br label %258

258:                                              ; preds = %232, %228
  %259 = load i32, i32* %13, align 4
  %260 = call i64 @GOT_TLS_GDESC_P(i32 %259)
  %261 = icmp ne i64 %260, 0
  br i1 %261, label %262, label %266

262:                                              ; preds = %258
  %263 = load i32, i32* %13, align 4
  %264 = call i64 @GOT_TLS_GD_P(i32 %263)
  %265 = icmp ne i64 %264, 0
  br i1 %265, label %266, label %293

266:                                              ; preds = %262, %258
  %267 = load %struct.elf64_x86_64_link_hash_table*, %struct.elf64_x86_64_link_hash_table** %7, align 8
  %268 = getelementptr inbounds %struct.elf64_x86_64_link_hash_table, %struct.elf64_x86_64_link_hash_table* %267, i32 0, i32 4
  %269 = load %struct.TYPE_15__*, %struct.TYPE_15__** %268, align 8
  store %struct.TYPE_15__* %269, %struct.TYPE_15__** %11, align 8
  %270 = load %struct.TYPE_15__*, %struct.TYPE_15__** %11, align 8
  %271 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %270, i32 0, i32 0
  %272 = load i64, i64* %271, align 8
  %273 = load %struct.elf_link_hash_entry*, %struct.elf_link_hash_entry** %4, align 8
  %274 = getelementptr inbounds %struct.elf_link_hash_entry, %struct.elf_link_hash_entry* %273, i32 0, i32 7
  %275 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %274, i32 0, i32 1
  store i64 %272, i64* %275, align 8
  %276 = load i32, i32* @GOT_ENTRY_SIZE, align 4
  %277 = sext i32 %276 to i64
  %278 = load %struct.TYPE_15__*, %struct.TYPE_15__** %11, align 8
  %279 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %278, i32 0, i32 0
  %280 = load i64, i64* %279, align 8
  %281 = add nsw i64 %280, %277
  store i64 %281, i64* %279, align 8
  %282 = load i32, i32* %13, align 4
  %283 = call i64 @GOT_TLS_GD_P(i32 %282)
  %284 = icmp ne i64 %283, 0
  br i1 %284, label %285, label %292

285:                                              ; preds = %266
  %286 = load i32, i32* @GOT_ENTRY_SIZE, align 4
  %287 = sext i32 %286 to i64
  %288 = load %struct.TYPE_15__*, %struct.TYPE_15__** %11, align 8
  %289 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %288, i32 0, i32 0
  %290 = load i64, i64* %289, align 8
  %291 = add nsw i64 %290, %287
  store i64 %291, i64* %289, align 8
  br label %292

292:                                              ; preds = %285, %266
  br label %293

293:                                              ; preds = %292, %262
  %294 = load %struct.elf64_x86_64_link_hash_table*, %struct.elf64_x86_64_link_hash_table** %7, align 8
  %295 = getelementptr inbounds %struct.elf64_x86_64_link_hash_table, %struct.elf64_x86_64_link_hash_table* %294, i32 0, i32 0
  %296 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %295, i32 0, i32 0
  %297 = load i32, i32* %296, align 8
  store i32 %297, i32* %12, align 4
  %298 = load i32, i32* %13, align 4
  %299 = call i64 @GOT_TLS_GD_P(i32 %298)
  %300 = icmp ne i64 %299, 0
  br i1 %300, label %301, label %306

301:                                              ; preds = %293
  %302 = load %struct.elf_link_hash_entry*, %struct.elf_link_hash_entry** %4, align 8
  %303 = getelementptr inbounds %struct.elf_link_hash_entry, %struct.elf_link_hash_entry* %302, i32 0, i32 0
  %304 = load i32, i32* %303, align 8
  %305 = icmp eq i32 %304, -1
  br i1 %305, label %310, label %306

306:                                              ; preds = %301, %293
  %307 = load i32, i32* %13, align 4
  %308 = load i32, i32* @GOT_TLS_IE, align 4
  %309 = icmp eq i32 %307, %308
  br i1 %309, label %310, label %319

310:                                              ; preds = %306, %301
  %311 = load %struct.elf64_x86_64_link_hash_table*, %struct.elf64_x86_64_link_hash_table** %7, align 8
  %312 = getelementptr inbounds %struct.elf64_x86_64_link_hash_table, %struct.elf64_x86_64_link_hash_table* %311, i32 0, i32 3
  %313 = load %struct.TYPE_18__*, %struct.TYPE_18__** %312, align 8
  %314 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %313, i32 0, i32 0
  %315 = load i32, i32* %314, align 4
  %316 = sext i32 %315 to i64
  %317 = add i64 %316, 4
  %318 = trunc i64 %317 to i32
  store i32 %318, i32* %314, align 4
  br label %371

319:                                              ; preds = %306
  %320 = load i32, i32* %13, align 4
  %321 = call i64 @GOT_TLS_GD_P(i32 %320)
  %322 = icmp ne i64 %321, 0
  br i1 %322, label %323, label %332

323:                                              ; preds = %319
  %324 = load %struct.elf64_x86_64_link_hash_table*, %struct.elf64_x86_64_link_hash_table** %7, align 8
  %325 = getelementptr inbounds %struct.elf64_x86_64_link_hash_table, %struct.elf64_x86_64_link_hash_table* %324, i32 0, i32 3
  %326 = load %struct.TYPE_18__*, %struct.TYPE_18__** %325, align 8
  %327 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %326, i32 0, i32 0
  %328 = load i32, i32* %327, align 4
  %329 = sext i32 %328 to i64
  %330 = add i64 %329, 8
  %331 = trunc i64 %330 to i32
  store i32 %331, i32* %327, align 4
  br label %370

332:                                              ; preds = %319
  %333 = load i32, i32* %13, align 4
  %334 = call i64 @GOT_TLS_GDESC_P(i32 %333)
  %335 = icmp ne i64 %334, 0
  br i1 %335, label %369, label %336

336:                                              ; preds = %332
  %337 = load %struct.elf_link_hash_entry*, %struct.elf_link_hash_entry** %4, align 8
  %338 = getelementptr inbounds %struct.elf_link_hash_entry, %struct.elf_link_hash_entry* %337, i32 0, i32 6
  %339 = load i32, i32* %338, align 4
  %340 = call i64 @ELF_ST_VISIBILITY(i32 %339)
  %341 = load i64, i64* @STV_DEFAULT, align 8
  %342 = icmp eq i64 %340, %341
  br i1 %342, label %350, label %343

343:                                              ; preds = %336
  %344 = load %struct.elf_link_hash_entry*, %struct.elf_link_hash_entry** %4, align 8
  %345 = getelementptr inbounds %struct.elf_link_hash_entry, %struct.elf_link_hash_entry* %344, i32 0, i32 2
  %346 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %345, i32 0, i32 0
  %347 = load i64, i64* %346, align 8
  %348 = load i64, i64* @bfd_link_hash_undefweak, align 8
  %349 = icmp ne i64 %347, %348
  br i1 %349, label %350, label %369

350:                                              ; preds = %343, %336
  %351 = load %struct.bfd_link_info*, %struct.bfd_link_info** %6, align 8
  %352 = getelementptr inbounds %struct.bfd_link_info, %struct.bfd_link_info* %351, i32 0, i32 0
  %353 = load i64, i64* %352, align 8
  %354 = icmp ne i64 %353, 0
  br i1 %354, label %360, label %355

355:                                              ; preds = %350
  %356 = load i32, i32* %12, align 4
  %357 = load %struct.elf_link_hash_entry*, %struct.elf_link_hash_entry** %4, align 8
  %358 = call i64 @WILL_CALL_FINISH_DYNAMIC_SYMBOL(i32 %356, i32 0, %struct.elf_link_hash_entry* %357)
  %359 = icmp ne i64 %358, 0
  br i1 %359, label %360, label %369

360:                                              ; preds = %355, %350
  %361 = load %struct.elf64_x86_64_link_hash_table*, %struct.elf64_x86_64_link_hash_table** %7, align 8
  %362 = getelementptr inbounds %struct.elf64_x86_64_link_hash_table, %struct.elf64_x86_64_link_hash_table* %361, i32 0, i32 3
  %363 = load %struct.TYPE_18__*, %struct.TYPE_18__** %362, align 8
  %364 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %363, i32 0, i32 0
  %365 = load i32, i32* %364, align 4
  %366 = sext i32 %365 to i64
  %367 = add i64 %366, 4
  %368 = trunc i64 %367 to i32
  store i32 %368, i32* %364, align 4
  br label %369

369:                                              ; preds = %360, %355, %343, %332
  br label %370

370:                                              ; preds = %369, %323
  br label %371

371:                                              ; preds = %370, %310
  %372 = load i32, i32* %13, align 4
  %373 = call i64 @GOT_TLS_GDESC_P(i32 %372)
  %374 = icmp ne i64 %373, 0
  br i1 %374, label %375, label %386

375:                                              ; preds = %371
  %376 = load %struct.elf64_x86_64_link_hash_table*, %struct.elf64_x86_64_link_hash_table** %7, align 8
  %377 = getelementptr inbounds %struct.elf64_x86_64_link_hash_table, %struct.elf64_x86_64_link_hash_table* %376, i32 0, i32 2
  %378 = load %struct.TYPE_25__*, %struct.TYPE_25__** %377, align 8
  %379 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %378, i32 0, i32 0
  %380 = load i32, i32* %379, align 4
  %381 = sext i32 %380 to i64
  %382 = add i64 %381, 4
  %383 = trunc i64 %382 to i32
  store i32 %383, i32* %379, align 4
  %384 = load %struct.elf64_x86_64_link_hash_table*, %struct.elf64_x86_64_link_hash_table** %7, align 8
  %385 = getelementptr inbounds %struct.elf64_x86_64_link_hash_table, %struct.elf64_x86_64_link_hash_table* %384, i32 0, i32 1
  store i8* inttoptr (i64 -1 to i8*), i8** %385, align 8
  br label %386

386:                                              ; preds = %375, %371
  br label %391

387:                                              ; preds = %200
  %388 = load %struct.elf_link_hash_entry*, %struct.elf_link_hash_entry** %4, align 8
  %389 = getelementptr inbounds %struct.elf_link_hash_entry, %struct.elf_link_hash_entry* %388, i32 0, i32 7
  %390 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %389, i32 0, i32 1
  store i64 -1, i64* %390, align 8
  br label %391

391:                                              ; preds = %387, %386
  br label %392

392:                                              ; preds = %391, %196
  %393 = load %struct.elf64_x86_64_link_hash_entry*, %struct.elf64_x86_64_link_hash_entry** %8, align 8
  %394 = getelementptr inbounds %struct.elf64_x86_64_link_hash_entry, %struct.elf64_x86_64_link_hash_entry* %393, i32 0, i32 0
  %395 = load %struct.elf64_x86_64_dyn_relocs*, %struct.elf64_x86_64_dyn_relocs** %394, align 8
  %396 = icmp eq %struct.elf64_x86_64_dyn_relocs* %395, null
  br i1 %396, label %397, label %399

397:                                              ; preds = %392
  %398 = load i32, i32* @TRUE, align 4
  store i32 %398, i32* %3, align 4
  br label %582

399:                                              ; preds = %392
  %400 = load %struct.bfd_link_info*, %struct.bfd_link_info** %6, align 8
  %401 = getelementptr inbounds %struct.bfd_link_info, %struct.bfd_link_info* %400, i32 0, i32 0
  %402 = load i64, i64* %401, align 8
  %403 = icmp ne i64 %402, 0
  br i1 %403, label %404, label %485

404:                                              ; preds = %399
  %405 = load %struct.bfd_link_info*, %struct.bfd_link_info** %6, align 8
  %406 = load %struct.elf_link_hash_entry*, %struct.elf_link_hash_entry** %4, align 8
  %407 = call i64 @SYMBOL_CALLS_LOCAL(%struct.bfd_link_info* %405, %struct.elf_link_hash_entry* %406)
  %408 = icmp ne i64 %407, 0
  br i1 %408, label %409, label %442

409:                                              ; preds = %404
  %410 = load %struct.elf64_x86_64_link_hash_entry*, %struct.elf64_x86_64_link_hash_entry** %8, align 8
  %411 = getelementptr inbounds %struct.elf64_x86_64_link_hash_entry, %struct.elf64_x86_64_link_hash_entry* %410, i32 0, i32 0
  store %struct.elf64_x86_64_dyn_relocs** %411, %struct.elf64_x86_64_dyn_relocs*** %14, align 8
  br label %412

412:                                              ; preds = %440, %409
  %413 = load %struct.elf64_x86_64_dyn_relocs**, %struct.elf64_x86_64_dyn_relocs*** %14, align 8
  %414 = load %struct.elf64_x86_64_dyn_relocs*, %struct.elf64_x86_64_dyn_relocs** %413, align 8
  store %struct.elf64_x86_64_dyn_relocs* %414, %struct.elf64_x86_64_dyn_relocs** %9, align 8
  %415 = icmp ne %struct.elf64_x86_64_dyn_relocs* %414, null
  br i1 %415, label %416, label %441

416:                                              ; preds = %412
  %417 = load %struct.elf64_x86_64_dyn_relocs*, %struct.elf64_x86_64_dyn_relocs** %9, align 8
  %418 = getelementptr inbounds %struct.elf64_x86_64_dyn_relocs, %struct.elf64_x86_64_dyn_relocs* %417, i32 0, i32 3
  %419 = load i64, i64* %418, align 8
  %420 = load %struct.elf64_x86_64_dyn_relocs*, %struct.elf64_x86_64_dyn_relocs** %9, align 8
  %421 = getelementptr inbounds %struct.elf64_x86_64_dyn_relocs, %struct.elf64_x86_64_dyn_relocs* %420, i32 0, i32 0
  %422 = load i32, i32* %421, align 8
  %423 = sext i32 %422 to i64
  %424 = sub nsw i64 %423, %419
  %425 = trunc i64 %424 to i32
  store i32 %425, i32* %421, align 8
  %426 = load %struct.elf64_x86_64_dyn_relocs*, %struct.elf64_x86_64_dyn_relocs** %9, align 8
  %427 = getelementptr inbounds %struct.elf64_x86_64_dyn_relocs, %struct.elf64_x86_64_dyn_relocs* %426, i32 0, i32 3
  store i64 0, i64* %427, align 8
  %428 = load %struct.elf64_x86_64_dyn_relocs*, %struct.elf64_x86_64_dyn_relocs** %9, align 8
  %429 = getelementptr inbounds %struct.elf64_x86_64_dyn_relocs, %struct.elf64_x86_64_dyn_relocs* %428, i32 0, i32 0
  %430 = load i32, i32* %429, align 8
  %431 = icmp eq i32 %430, 0
  br i1 %431, label %432, label %437

432:                                              ; preds = %416
  %433 = load %struct.elf64_x86_64_dyn_relocs*, %struct.elf64_x86_64_dyn_relocs** %9, align 8
  %434 = getelementptr inbounds %struct.elf64_x86_64_dyn_relocs, %struct.elf64_x86_64_dyn_relocs* %433, i32 0, i32 2
  %435 = load %struct.elf64_x86_64_dyn_relocs*, %struct.elf64_x86_64_dyn_relocs** %434, align 8
  %436 = load %struct.elf64_x86_64_dyn_relocs**, %struct.elf64_x86_64_dyn_relocs*** %14, align 8
  store %struct.elf64_x86_64_dyn_relocs* %435, %struct.elf64_x86_64_dyn_relocs** %436, align 8
  br label %440

437:                                              ; preds = %416
  %438 = load %struct.elf64_x86_64_dyn_relocs*, %struct.elf64_x86_64_dyn_relocs** %9, align 8
  %439 = getelementptr inbounds %struct.elf64_x86_64_dyn_relocs, %struct.elf64_x86_64_dyn_relocs* %438, i32 0, i32 2
  store %struct.elf64_x86_64_dyn_relocs** %439, %struct.elf64_x86_64_dyn_relocs*** %14, align 8
  br label %440

440:                                              ; preds = %437, %432
  br label %412

441:                                              ; preds = %412
  br label %442

442:                                              ; preds = %441, %404
  %443 = load %struct.elf64_x86_64_link_hash_entry*, %struct.elf64_x86_64_link_hash_entry** %8, align 8
  %444 = getelementptr inbounds %struct.elf64_x86_64_link_hash_entry, %struct.elf64_x86_64_link_hash_entry* %443, i32 0, i32 0
  %445 = load %struct.elf64_x86_64_dyn_relocs*, %struct.elf64_x86_64_dyn_relocs** %444, align 8
  %446 = icmp ne %struct.elf64_x86_64_dyn_relocs* %445, null
  br i1 %446, label %447, label %484

447:                                              ; preds = %442
  %448 = load %struct.elf_link_hash_entry*, %struct.elf_link_hash_entry** %4, align 8
  %449 = getelementptr inbounds %struct.elf_link_hash_entry, %struct.elf_link_hash_entry* %448, i32 0, i32 2
  %450 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %449, i32 0, i32 0
  %451 = load i64, i64* %450, align 8
  %452 = load i64, i64* @bfd_link_hash_undefweak, align 8
  %453 = icmp eq i64 %451, %452
  br i1 %453, label %454, label %484

454:                                              ; preds = %447
  %455 = load %struct.elf_link_hash_entry*, %struct.elf_link_hash_entry** %4, align 8
  %456 = getelementptr inbounds %struct.elf_link_hash_entry, %struct.elf_link_hash_entry* %455, i32 0, i32 6
  %457 = load i32, i32* %456, align 4
  %458 = call i64 @ELF_ST_VISIBILITY(i32 %457)
  %459 = load i64, i64* @STV_DEFAULT, align 8
  %460 = icmp ne i64 %458, %459
  br i1 %460, label %461, label %464

461:                                              ; preds = %454
  %462 = load %struct.elf64_x86_64_link_hash_entry*, %struct.elf64_x86_64_link_hash_entry** %8, align 8
  %463 = getelementptr inbounds %struct.elf64_x86_64_link_hash_entry, %struct.elf64_x86_64_link_hash_entry* %462, i32 0, i32 0
  store %struct.elf64_x86_64_dyn_relocs* null, %struct.elf64_x86_64_dyn_relocs** %463, align 8
  br label %483

464:                                              ; preds = %454
  %465 = load %struct.elf_link_hash_entry*, %struct.elf_link_hash_entry** %4, align 8
  %466 = getelementptr inbounds %struct.elf_link_hash_entry, %struct.elf_link_hash_entry* %465, i32 0, i32 0
  %467 = load i32, i32* %466, align 8
  %468 = icmp eq i32 %467, -1
  br i1 %468, label %469, label %482

469:                                              ; preds = %464
  %470 = load %struct.elf_link_hash_entry*, %struct.elf_link_hash_entry** %4, align 8
  %471 = getelementptr inbounds %struct.elf_link_hash_entry, %struct.elf_link_hash_entry* %470, i32 0, i32 1
  %472 = load i32, i32* %471, align 4
  %473 = icmp ne i32 %472, 0
  br i1 %473, label %482, label %474

474:                                              ; preds = %469
  %475 = load %struct.bfd_link_info*, %struct.bfd_link_info** %6, align 8
  %476 = load %struct.elf_link_hash_entry*, %struct.elf_link_hash_entry** %4, align 8
  %477 = call i32 @bfd_elf_link_record_dynamic_symbol(%struct.bfd_link_info* %475, %struct.elf_link_hash_entry* %476)
  %478 = icmp ne i32 %477, 0
  br i1 %478, label %481, label %479

479:                                              ; preds = %474
  %480 = load i32, i32* @FALSE, align 4
  store i32 %480, i32* %3, align 4
  br label %582

481:                                              ; preds = %474
  br label %482

482:                                              ; preds = %481, %469, %464
  br label %483

483:                                              ; preds = %482, %461
  br label %484

484:                                              ; preds = %483, %447, %442
  br label %553

485:                                              ; preds = %399
  %486 = load i64, i64* @ELIMINATE_COPY_RELOCS, align 8
  %487 = icmp ne i64 %486, 0
  br i1 %487, label %488, label %552

488:                                              ; preds = %485
  %489 = load %struct.elf_link_hash_entry*, %struct.elf_link_hash_entry** %4, align 8
  %490 = getelementptr inbounds %struct.elf_link_hash_entry, %struct.elf_link_hash_entry* %489, i32 0, i32 5
  %491 = load i32, i32* %490, align 8
  %492 = icmp ne i32 %491, 0
  br i1 %492, label %548, label %493

493:                                              ; preds = %488
  %494 = load %struct.elf_link_hash_entry*, %struct.elf_link_hash_entry** %4, align 8
  %495 = getelementptr inbounds %struct.elf_link_hash_entry, %struct.elf_link_hash_entry* %494, i32 0, i32 4
  %496 = load i64, i64* %495, align 8
  %497 = icmp ne i64 %496, 0
  br i1 %497, label %498, label %503

498:                                              ; preds = %493
  %499 = load %struct.elf_link_hash_entry*, %struct.elf_link_hash_entry** %4, align 8
  %500 = getelementptr inbounds %struct.elf_link_hash_entry, %struct.elf_link_hash_entry* %499, i32 0, i32 3
  %501 = load i32, i32* %500, align 8
  %502 = icmp ne i32 %501, 0
  br i1 %502, label %503, label %523

503:                                              ; preds = %498, %493
  %504 = load %struct.elf64_x86_64_link_hash_table*, %struct.elf64_x86_64_link_hash_table** %7, align 8
  %505 = getelementptr inbounds %struct.elf64_x86_64_link_hash_table, %struct.elf64_x86_64_link_hash_table* %504, i32 0, i32 0
  %506 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %505, i32 0, i32 0
  %507 = load i32, i32* %506, align 8
  %508 = icmp ne i32 %507, 0
  br i1 %508, label %509, label %548

509:                                              ; preds = %503
  %510 = load %struct.elf_link_hash_entry*, %struct.elf_link_hash_entry** %4, align 8
  %511 = getelementptr inbounds %struct.elf_link_hash_entry, %struct.elf_link_hash_entry* %510, i32 0, i32 2
  %512 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %511, i32 0, i32 0
  %513 = load i64, i64* %512, align 8
  %514 = load i64, i64* @bfd_link_hash_undefweak, align 8
  %515 = icmp eq i64 %513, %514
  br i1 %515, label %523, label %516

516:                                              ; preds = %509
  %517 = load %struct.elf_link_hash_entry*, %struct.elf_link_hash_entry** %4, align 8
  %518 = getelementptr inbounds %struct.elf_link_hash_entry, %struct.elf_link_hash_entry* %517, i32 0, i32 2
  %519 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %518, i32 0, i32 0
  %520 = load i64, i64* %519, align 8
  %521 = load i64, i64* @bfd_link_hash_undefined, align 8
  %522 = icmp eq i64 %520, %521
  br i1 %522, label %523, label %548

523:                                              ; preds = %516, %509, %498
  %524 = load %struct.elf_link_hash_entry*, %struct.elf_link_hash_entry** %4, align 8
  %525 = getelementptr inbounds %struct.elf_link_hash_entry, %struct.elf_link_hash_entry* %524, i32 0, i32 0
  %526 = load i32, i32* %525, align 8
  %527 = icmp eq i32 %526, -1
  br i1 %527, label %528, label %541

528:                                              ; preds = %523
  %529 = load %struct.elf_link_hash_entry*, %struct.elf_link_hash_entry** %4, align 8
  %530 = getelementptr inbounds %struct.elf_link_hash_entry, %struct.elf_link_hash_entry* %529, i32 0, i32 1
  %531 = load i32, i32* %530, align 4
  %532 = icmp ne i32 %531, 0
  br i1 %532, label %541, label %533

533:                                              ; preds = %528
  %534 = load %struct.bfd_link_info*, %struct.bfd_link_info** %6, align 8
  %535 = load %struct.elf_link_hash_entry*, %struct.elf_link_hash_entry** %4, align 8
  %536 = call i32 @bfd_elf_link_record_dynamic_symbol(%struct.bfd_link_info* %534, %struct.elf_link_hash_entry* %535)
  %537 = icmp ne i32 %536, 0
  br i1 %537, label %540, label %538

538:                                              ; preds = %533
  %539 = load i32, i32* @FALSE, align 4
  store i32 %539, i32* %3, align 4
  br label %582

540:                                              ; preds = %533
  br label %541

541:                                              ; preds = %540, %528, %523
  %542 = load %struct.elf_link_hash_entry*, %struct.elf_link_hash_entry** %4, align 8
  %543 = getelementptr inbounds %struct.elf_link_hash_entry, %struct.elf_link_hash_entry* %542, i32 0, i32 0
  %544 = load i32, i32* %543, align 8
  %545 = icmp ne i32 %544, -1
  br i1 %545, label %546, label %547

546:                                              ; preds = %541
  br label %551

547:                                              ; preds = %541
  br label %548

548:                                              ; preds = %547, %516, %503, %488
  %549 = load %struct.elf64_x86_64_link_hash_entry*, %struct.elf64_x86_64_link_hash_entry** %8, align 8
  %550 = getelementptr inbounds %struct.elf64_x86_64_link_hash_entry, %struct.elf64_x86_64_link_hash_entry* %549, i32 0, i32 0
  store %struct.elf64_x86_64_dyn_relocs* null, %struct.elf64_x86_64_dyn_relocs** %550, align 8
  br label %551

551:                                              ; preds = %548, %546
  br label %552

552:                                              ; preds = %551, %485
  br label %553

553:                                              ; preds = %552, %484
  %554 = load %struct.elf64_x86_64_link_hash_entry*, %struct.elf64_x86_64_link_hash_entry** %8, align 8
  %555 = getelementptr inbounds %struct.elf64_x86_64_link_hash_entry, %struct.elf64_x86_64_link_hash_entry* %554, i32 0, i32 0
  %556 = load %struct.elf64_x86_64_dyn_relocs*, %struct.elf64_x86_64_dyn_relocs** %555, align 8
  store %struct.elf64_x86_64_dyn_relocs* %556, %struct.elf64_x86_64_dyn_relocs** %9, align 8
  br label %557

557:                                              ; preds = %576, %553
  %558 = load %struct.elf64_x86_64_dyn_relocs*, %struct.elf64_x86_64_dyn_relocs** %9, align 8
  %559 = icmp ne %struct.elf64_x86_64_dyn_relocs* %558, null
  br i1 %559, label %560, label %580

560:                                              ; preds = %557
  %561 = load %struct.elf64_x86_64_dyn_relocs*, %struct.elf64_x86_64_dyn_relocs** %9, align 8
  %562 = getelementptr inbounds %struct.elf64_x86_64_dyn_relocs, %struct.elf64_x86_64_dyn_relocs* %561, i32 0, i32 1
  %563 = load i32, i32* %562, align 4
  %564 = call %struct.TYPE_16__* @elf_section_data(i32 %563)
  %565 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %564, i32 0, i32 0
  %566 = load %struct.TYPE_15__*, %struct.TYPE_15__** %565, align 8
  store %struct.TYPE_15__* %566, %struct.TYPE_15__** %15, align 8
  %567 = load %struct.elf64_x86_64_dyn_relocs*, %struct.elf64_x86_64_dyn_relocs** %9, align 8
  %568 = getelementptr inbounds %struct.elf64_x86_64_dyn_relocs, %struct.elf64_x86_64_dyn_relocs* %567, i32 0, i32 0
  %569 = load i32, i32* %568, align 8
  %570 = sext i32 %569 to i64
  %571 = mul i64 %570, 4
  %572 = load %struct.TYPE_15__*, %struct.TYPE_15__** %15, align 8
  %573 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %572, i32 0, i32 0
  %574 = load i64, i64* %573, align 8
  %575 = add i64 %574, %571
  store i64 %575, i64* %573, align 8
  br label %576

576:                                              ; preds = %560
  %577 = load %struct.elf64_x86_64_dyn_relocs*, %struct.elf64_x86_64_dyn_relocs** %9, align 8
  %578 = getelementptr inbounds %struct.elf64_x86_64_dyn_relocs, %struct.elf64_x86_64_dyn_relocs* %577, i32 0, i32 2
  %579 = load %struct.elf64_x86_64_dyn_relocs*, %struct.elf64_x86_64_dyn_relocs** %578, align 8
  store %struct.elf64_x86_64_dyn_relocs* %579, %struct.elf64_x86_64_dyn_relocs** %9, align 8
  br label %557

580:                                              ; preds = %557
  %581 = load i32, i32* @TRUE, align 4
  store i32 %581, i32* %3, align 4
  br label %582

582:                                              ; preds = %580, %538, %479, %397, %225, %70, %22
  %583 = load i32, i32* %3, align 4
  ret i32 %583
}

declare dso_local %struct.elf64_x86_64_link_hash_table* @elf64_x86_64_hash_table(%struct.bfd_link_info*) #1

declare dso_local i32 @bfd_elf_link_record_dynamic_symbol(%struct.bfd_link_info*, %struct.elf_link_hash_entry*) #1

declare dso_local i64 @WILL_CALL_FINISH_DYNAMIC_SYMBOL(i32, i32, %struct.elf_link_hash_entry*) #1

declare dso_local %struct.TYPE_17__* @elf64_x86_64_hash_entry(%struct.elf_link_hash_entry*) #1

declare dso_local i64 @GOT_TLS_GDESC_P(i32) #1

declare dso_local i8* @elf64_x86_64_compute_jump_table_size(%struct.elf64_x86_64_link_hash_table*) #1

declare dso_local i64 @GOT_TLS_GD_P(i32) #1

declare dso_local i64 @ELF_ST_VISIBILITY(i32) #1

declare dso_local i64 @SYMBOL_CALLS_LOCAL(%struct.bfd_link_info*, %struct.elf_link_hash_entry*) #1

declare dso_local %struct.TYPE_16__* @elf_section_data(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

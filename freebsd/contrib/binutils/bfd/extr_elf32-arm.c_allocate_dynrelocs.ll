; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/bfd/extr_elf32-arm.c_allocate_dynrelocs.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/bfd/extr_elf32-arm.c_allocate_dynrelocs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.elf_link_hash_entry = type { i32, i32, %struct.TYPE_19__, i64, i64, i32, i32, i8*, %struct.TYPE_29__, i64, %struct.TYPE_27__ }
%struct.TYPE_19__ = type { i64, %struct.TYPE_17__, %struct.TYPE_30__ }
%struct.TYPE_17__ = type { %struct.TYPE_31__, %struct.TYPE_23__ }
%struct.TYPE_31__ = type { i64, %struct.TYPE_20__* }
%struct.TYPE_20__ = type { i64, i32 }
%struct.TYPE_23__ = type { i64 }
%struct.TYPE_30__ = type { i8* }
%struct.TYPE_29__ = type { i64, i64 }
%struct.TYPE_27__ = type { i64, i64 }
%struct.bfd_link_info = type { i64 }
%struct.elf32_arm_link_hash_table = type { i64, i64, %struct.TYPE_18__, i32, %struct.TYPE_28__*, %struct.TYPE_20__*, i32, %struct.TYPE_26__*, i64, %struct.TYPE_25__*, %struct.TYPE_24__*, %struct.TYPE_20__* }
%struct.TYPE_18__ = type { i32, i64 }
%struct.TYPE_28__ = type { i32 }
%struct.TYPE_26__ = type { i32 }
%struct.TYPE_25__ = type { i32 }
%struct.TYPE_24__ = type { i32 }
%struct.elf32_arm_link_hash_entry = type { i64, i32, %struct.elf32_arm_relocs_copied*, %struct.elf_link_hash_entry* }
%struct.elf32_arm_relocs_copied = type { i32, i32, %struct.elf32_arm_relocs_copied*, i64 }
%struct.bfd_link_hash_entry = type { i32 }
%struct.TYPE_22__ = type { i32 }
%struct.TYPE_21__ = type { %struct.TYPE_20__* }

@bfd_link_hash_indirect = common dso_local global i64 0, align 8
@TRUE = common dso_local global i32 0, align 4
@bfd_link_hash_warning = common dso_local global i64 0, align 8
@FALSE = common dso_local global i32 0, align 4
@PLT_THUMB_STUB_SIZE = common dso_local global i64 0, align 8
@STT_ARM_TFUNC = common dso_local global i64 0, align 8
@STT_FUNC = common dso_local global i64 0, align 8
@GOT_UNKNOWN = common dso_local global i32 0, align 4
@GOT_NORMAL = common dso_local global i32 0, align 4
@GOT_TLS_GD = common dso_local global i32 0, align 4
@GOT_TLS_IE = common dso_local global i32 0, align 4
@STV_DEFAULT = common dso_local global i64 0, align 8
@bfd_link_hash_undefweak = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [10 x i8] c"__real_%s\00", align 1
@BSF_GLOBAL = common dso_local global i32 0, align 4
@STB_LOCAL = common dso_local global i32 0, align 4
@bfd_link_hash_new = common dso_local global i64 0, align 8
@bfd_link_hash_undefined = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.elf_link_hash_entry*, i8*)* @allocate_dynrelocs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @allocate_dynrelocs(%struct.elf_link_hash_entry* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.elf_link_hash_entry*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.bfd_link_info*, align 8
  %7 = alloca %struct.elf32_arm_link_hash_table*, align 8
  %8 = alloca %struct.elf32_arm_link_hash_entry*, align 8
  %9 = alloca %struct.elf32_arm_relocs_copied*, align 8
  %10 = alloca %struct.TYPE_20__*, align 8
  %11 = alloca %struct.TYPE_20__*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca %struct.elf_link_hash_entry*, align 8
  %16 = alloca %struct.bfd_link_hash_entry*, align 8
  %17 = alloca %struct.elf_link_hash_entry*, align 8
  %18 = alloca [1024 x i8], align 16
  %19 = alloca %struct.TYPE_20__*, align 8
  %20 = alloca %struct.elf32_arm_relocs_copied**, align 8
  %21 = alloca %struct.TYPE_20__*, align 8
  store %struct.elf_link_hash_entry* %0, %struct.elf_link_hash_entry** %4, align 8
  store i8* %1, i8** %5, align 8
  %22 = load %struct.elf_link_hash_entry*, %struct.elf_link_hash_entry** %4, align 8
  %23 = bitcast %struct.elf_link_hash_entry* %22 to %struct.elf32_arm_link_hash_entry*
  store %struct.elf32_arm_link_hash_entry* %23, %struct.elf32_arm_link_hash_entry** %8, align 8
  %24 = load %struct.elf_link_hash_entry*, %struct.elf_link_hash_entry** %4, align 8
  %25 = getelementptr inbounds %struct.elf_link_hash_entry, %struct.elf_link_hash_entry* %24, i32 0, i32 2
  %26 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = load i64, i64* @bfd_link_hash_indirect, align 8
  %29 = icmp eq i64 %27, %28
  br i1 %29, label %30, label %32

30:                                               ; preds = %2
  %31 = load i32, i32* @TRUE, align 4
  store i32 %31, i32* %3, align 4
  br label %804

32:                                               ; preds = %2
  %33 = load %struct.elf_link_hash_entry*, %struct.elf_link_hash_entry** %4, align 8
  %34 = getelementptr inbounds %struct.elf_link_hash_entry, %struct.elf_link_hash_entry* %33, i32 0, i32 2
  %35 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = load i64, i64* @bfd_link_hash_warning, align 8
  %38 = icmp eq i64 %36, %37
  br i1 %38, label %39, label %47

39:                                               ; preds = %32
  %40 = load %struct.elf_link_hash_entry*, %struct.elf_link_hash_entry** %4, align 8
  %41 = getelementptr inbounds %struct.elf_link_hash_entry, %struct.elf_link_hash_entry* %40, i32 0, i32 2
  %42 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %41, i32 0, i32 1
  %43 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %42, i32 0, i32 1
  %44 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = inttoptr i64 %45 to %struct.elf_link_hash_entry*
  store %struct.elf_link_hash_entry* %46, %struct.elf_link_hash_entry** %4, align 8
  br label %47

47:                                               ; preds = %39, %32
  %48 = load i8*, i8** %5, align 8
  %49 = bitcast i8* %48 to %struct.bfd_link_info*
  store %struct.bfd_link_info* %49, %struct.bfd_link_info** %6, align 8
  %50 = load %struct.bfd_link_info*, %struct.bfd_link_info** %6, align 8
  %51 = call %struct.elf32_arm_link_hash_table* @elf32_arm_hash_table(%struct.bfd_link_info* %50)
  store %struct.elf32_arm_link_hash_table* %51, %struct.elf32_arm_link_hash_table** %7, align 8
  %52 = load %struct.elf32_arm_link_hash_table*, %struct.elf32_arm_link_hash_table** %7, align 8
  %53 = getelementptr inbounds %struct.elf32_arm_link_hash_table, %struct.elf32_arm_link_hash_table* %52, i32 0, i32 2
  %54 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 8
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %256

57:                                               ; preds = %47
  %58 = load %struct.elf_link_hash_entry*, %struct.elf_link_hash_entry** %4, align 8
  %59 = getelementptr inbounds %struct.elf_link_hash_entry, %struct.elf_link_hash_entry* %58, i32 0, i32 10
  %60 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %59, i32 0, i32 0
  %61 = load i64, i64* %60, align 8
  %62 = icmp sgt i64 %61, 0
  br i1 %62, label %63, label %256

63:                                               ; preds = %57
  %64 = load %struct.elf_link_hash_entry*, %struct.elf_link_hash_entry** %4, align 8
  %65 = getelementptr inbounds %struct.elf_link_hash_entry, %struct.elf_link_hash_entry* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 8
  %67 = icmp eq i32 %66, -1
  br i1 %67, label %68, label %81

68:                                               ; preds = %63
  %69 = load %struct.elf_link_hash_entry*, %struct.elf_link_hash_entry** %4, align 8
  %70 = getelementptr inbounds %struct.elf_link_hash_entry, %struct.elf_link_hash_entry* %69, i32 0, i32 1
  %71 = load i32, i32* %70, align 4
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %81, label %73

73:                                               ; preds = %68
  %74 = load %struct.bfd_link_info*, %struct.bfd_link_info** %6, align 8
  %75 = load %struct.elf_link_hash_entry*, %struct.elf_link_hash_entry** %4, align 8
  %76 = call i32 @bfd_elf_link_record_dynamic_symbol(%struct.bfd_link_info* %74, %struct.elf_link_hash_entry* %75)
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %80, label %78

78:                                               ; preds = %73
  %79 = load i32, i32* @FALSE, align 4
  store i32 %79, i32* %3, align 4
  br label %804

80:                                               ; preds = %73
  br label %81

81:                                               ; preds = %80, %68, %63
  %82 = load %struct.bfd_link_info*, %struct.bfd_link_info** %6, align 8
  %83 = getelementptr inbounds %struct.bfd_link_info, %struct.bfd_link_info* %82, i32 0, i32 0
  %84 = load i64, i64* %83, align 8
  %85 = icmp ne i64 %84, 0
  br i1 %85, label %90, label %86

86:                                               ; preds = %81
  %87 = load %struct.elf_link_hash_entry*, %struct.elf_link_hash_entry** %4, align 8
  %88 = call i64 @WILL_CALL_FINISH_DYNAMIC_SYMBOL(i32 1, i64 0, %struct.elf_link_hash_entry* %87)
  %89 = icmp ne i64 %88, 0
  br i1 %89, label %90, label %249

90:                                               ; preds = %86, %81
  %91 = load %struct.elf32_arm_link_hash_table*, %struct.elf32_arm_link_hash_table** %7, align 8
  %92 = getelementptr inbounds %struct.elf32_arm_link_hash_table, %struct.elf32_arm_link_hash_table* %91, i32 0, i32 11
  %93 = load %struct.TYPE_20__*, %struct.TYPE_20__** %92, align 8
  store %struct.TYPE_20__* %93, %struct.TYPE_20__** %10, align 8
  %94 = load %struct.TYPE_20__*, %struct.TYPE_20__** %10, align 8
  %95 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %94, i32 0, i32 0
  %96 = load i64, i64* %95, align 8
  %97 = icmp eq i64 %96, 0
  br i1 %97, label %98, label %106

98:                                               ; preds = %90
  %99 = load %struct.elf32_arm_link_hash_table*, %struct.elf32_arm_link_hash_table** %7, align 8
  %100 = getelementptr inbounds %struct.elf32_arm_link_hash_table, %struct.elf32_arm_link_hash_table* %99, i32 0, i32 0
  %101 = load i64, i64* %100, align 8
  %102 = load %struct.TYPE_20__*, %struct.TYPE_20__** %10, align 8
  %103 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %102, i32 0, i32 0
  %104 = load i64, i64* %103, align 8
  %105 = add nsw i64 %104, %101
  store i64 %105, i64* %103, align 8
  br label %106

106:                                              ; preds = %98, %90
  %107 = load %struct.TYPE_20__*, %struct.TYPE_20__** %10, align 8
  %108 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %107, i32 0, i32 0
  %109 = load i64, i64* %108, align 8
  %110 = load %struct.elf_link_hash_entry*, %struct.elf_link_hash_entry** %4, align 8
  %111 = getelementptr inbounds %struct.elf_link_hash_entry, %struct.elf_link_hash_entry* %110, i32 0, i32 10
  %112 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %111, i32 0, i32 1
  store i64 %109, i64* %112, align 8
  %113 = load %struct.elf32_arm_link_hash_table*, %struct.elf32_arm_link_hash_table** %7, align 8
  %114 = getelementptr inbounds %struct.elf32_arm_link_hash_table, %struct.elf32_arm_link_hash_table* %113, i32 0, i32 3
  %115 = load i32, i32* %114, align 8
  %116 = icmp ne i32 %115, 0
  br i1 %116, label %134, label %117

117:                                              ; preds = %106
  %118 = load %struct.elf32_arm_link_hash_entry*, %struct.elf32_arm_link_hash_entry** %8, align 8
  %119 = getelementptr inbounds %struct.elf32_arm_link_hash_entry, %struct.elf32_arm_link_hash_entry* %118, i32 0, i32 0
  %120 = load i64, i64* %119, align 8
  %121 = icmp sgt i64 %120, 0
  br i1 %121, label %122, label %134

122:                                              ; preds = %117
  %123 = load i64, i64* @PLT_THUMB_STUB_SIZE, align 8
  %124 = load %struct.elf_link_hash_entry*, %struct.elf_link_hash_entry** %4, align 8
  %125 = getelementptr inbounds %struct.elf_link_hash_entry, %struct.elf_link_hash_entry* %124, i32 0, i32 10
  %126 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %125, i32 0, i32 1
  %127 = load i64, i64* %126, align 8
  %128 = add nsw i64 %127, %123
  store i64 %128, i64* %126, align 8
  %129 = load i64, i64* @PLT_THUMB_STUB_SIZE, align 8
  %130 = load %struct.TYPE_20__*, %struct.TYPE_20__** %10, align 8
  %131 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %130, i32 0, i32 0
  %132 = load i64, i64* %131, align 8
  %133 = add nsw i64 %132, %129
  store i64 %133, i64* %131, align 8
  br label %134

134:                                              ; preds = %122, %117, %106
  %135 = load %struct.bfd_link_info*, %struct.bfd_link_info** %6, align 8
  %136 = getelementptr inbounds %struct.bfd_link_info, %struct.bfd_link_info* %135, i32 0, i32 0
  %137 = load i64, i64* %136, align 8
  %138 = icmp ne i64 %137, 0
  br i1 %138, label %176, label %139

139:                                              ; preds = %134
  %140 = load %struct.elf_link_hash_entry*, %struct.elf_link_hash_entry** %4, align 8
  %141 = getelementptr inbounds %struct.elf_link_hash_entry, %struct.elf_link_hash_entry* %140, i32 0, i32 3
  %142 = load i64, i64* %141, align 8
  %143 = icmp ne i64 %142, 0
  br i1 %143, label %176, label %144

144:                                              ; preds = %139
  %145 = load %struct.TYPE_20__*, %struct.TYPE_20__** %10, align 8
  %146 = load %struct.elf_link_hash_entry*, %struct.elf_link_hash_entry** %4, align 8
  %147 = getelementptr inbounds %struct.elf_link_hash_entry, %struct.elf_link_hash_entry* %146, i32 0, i32 2
  %148 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %147, i32 0, i32 1
  %149 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %148, i32 0, i32 0
  %150 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %149, i32 0, i32 1
  store %struct.TYPE_20__* %145, %struct.TYPE_20__** %150, align 8
  %151 = load %struct.elf_link_hash_entry*, %struct.elf_link_hash_entry** %4, align 8
  %152 = getelementptr inbounds %struct.elf_link_hash_entry, %struct.elf_link_hash_entry* %151, i32 0, i32 10
  %153 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %152, i32 0, i32 1
  %154 = load i64, i64* %153, align 8
  %155 = load %struct.elf_link_hash_entry*, %struct.elf_link_hash_entry** %4, align 8
  %156 = getelementptr inbounds %struct.elf_link_hash_entry, %struct.elf_link_hash_entry* %155, i32 0, i32 2
  %157 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %156, i32 0, i32 1
  %158 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %157, i32 0, i32 0
  %159 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %158, i32 0, i32 0
  store i64 %154, i64* %159, align 8
  %160 = load %struct.elf_link_hash_entry*, %struct.elf_link_hash_entry** %4, align 8
  %161 = getelementptr inbounds %struct.elf_link_hash_entry, %struct.elf_link_hash_entry* %160, i32 0, i32 7
  %162 = load i8*, i8** %161, align 8
  %163 = call i64 @ELF_ST_TYPE(i8* %162)
  %164 = load i64, i64* @STT_ARM_TFUNC, align 8
  %165 = icmp eq i64 %163, %164
  br i1 %165, label %166, label %175

166:                                              ; preds = %144
  %167 = load %struct.elf_link_hash_entry*, %struct.elf_link_hash_entry** %4, align 8
  %168 = getelementptr inbounds %struct.elf_link_hash_entry, %struct.elf_link_hash_entry* %167, i32 0, i32 7
  %169 = load i8*, i8** %168, align 8
  %170 = call i32 @ELF_ST_BIND(i8* %169)
  %171 = load i64, i64* @STT_FUNC, align 8
  %172 = call i8* @ELF_ST_INFO(i32 %170, i64 %171)
  %173 = load %struct.elf_link_hash_entry*, %struct.elf_link_hash_entry** %4, align 8
  %174 = getelementptr inbounds %struct.elf_link_hash_entry, %struct.elf_link_hash_entry* %173, i32 0, i32 7
  store i8* %172, i8** %174, align 8
  br label %175

175:                                              ; preds = %166, %144
  br label %176

176:                                              ; preds = %175, %139, %134
  %177 = load %struct.elf32_arm_link_hash_table*, %struct.elf32_arm_link_hash_table** %7, align 8
  %178 = getelementptr inbounds %struct.elf32_arm_link_hash_table, %struct.elf32_arm_link_hash_table* %177, i32 0, i32 1
  %179 = load i64, i64* %178, align 8
  %180 = load %struct.TYPE_20__*, %struct.TYPE_20__** %10, align 8
  %181 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %180, i32 0, i32 0
  %182 = load i64, i64* %181, align 8
  %183 = add nsw i64 %182, %179
  store i64 %183, i64* %181, align 8
  %184 = load %struct.elf32_arm_link_hash_table*, %struct.elf32_arm_link_hash_table** %7, align 8
  %185 = getelementptr inbounds %struct.elf32_arm_link_hash_table, %struct.elf32_arm_link_hash_table* %184, i32 0, i32 6
  %186 = load i32, i32* %185, align 8
  %187 = icmp ne i32 %186, 0
  br i1 %187, label %202, label %188

188:                                              ; preds = %176
  %189 = load %struct.elf32_arm_link_hash_table*, %struct.elf32_arm_link_hash_table** %7, align 8
  %190 = getelementptr inbounds %struct.elf32_arm_link_hash_table, %struct.elf32_arm_link_hash_table* %189, i32 0, i32 10
  %191 = load %struct.TYPE_24__*, %struct.TYPE_24__** %190, align 8
  %192 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %191, i32 0, i32 0
  %193 = load i32, i32* %192, align 4
  %194 = load %struct.elf32_arm_link_hash_entry*, %struct.elf32_arm_link_hash_entry** %8, align 8
  %195 = getelementptr inbounds %struct.elf32_arm_link_hash_entry, %struct.elf32_arm_link_hash_entry* %194, i32 0, i32 1
  store i32 %193, i32* %195, align 8
  %196 = load %struct.elf32_arm_link_hash_table*, %struct.elf32_arm_link_hash_table** %7, align 8
  %197 = getelementptr inbounds %struct.elf32_arm_link_hash_table, %struct.elf32_arm_link_hash_table* %196, i32 0, i32 10
  %198 = load %struct.TYPE_24__*, %struct.TYPE_24__** %197, align 8
  %199 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %198, i32 0, i32 0
  %200 = load i32, i32* %199, align 4
  %201 = add nsw i32 %200, 4
  store i32 %201, i32* %199, align 4
  br label %202

202:                                              ; preds = %188, %176
  %203 = load %struct.elf32_arm_link_hash_table*, %struct.elf32_arm_link_hash_table** %7, align 8
  %204 = call i32 @RELOC_SIZE(%struct.elf32_arm_link_hash_table* %203)
  %205 = load %struct.elf32_arm_link_hash_table*, %struct.elf32_arm_link_hash_table** %7, align 8
  %206 = getelementptr inbounds %struct.elf32_arm_link_hash_table, %struct.elf32_arm_link_hash_table* %205, i32 0, i32 9
  %207 = load %struct.TYPE_25__*, %struct.TYPE_25__** %206, align 8
  %208 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %207, i32 0, i32 0
  %209 = load i32, i32* %208, align 4
  %210 = add nsw i32 %209, %204
  store i32 %210, i32* %208, align 4
  %211 = load %struct.elf32_arm_link_hash_table*, %struct.elf32_arm_link_hash_table** %7, align 8
  %212 = getelementptr inbounds %struct.elf32_arm_link_hash_table, %struct.elf32_arm_link_hash_table* %211, i32 0, i32 8
  %213 = load i64, i64* %212, align 8
  %214 = icmp ne i64 %213, 0
  br i1 %214, label %215, label %248

215:                                              ; preds = %202
  %216 = load %struct.bfd_link_info*, %struct.bfd_link_info** %6, align 8
  %217 = getelementptr inbounds %struct.bfd_link_info, %struct.bfd_link_info* %216, i32 0, i32 0
  %218 = load i64, i64* %217, align 8
  %219 = icmp ne i64 %218, 0
  br i1 %219, label %248, label %220

220:                                              ; preds = %215
  %221 = load %struct.elf_link_hash_entry*, %struct.elf_link_hash_entry** %4, align 8
  %222 = getelementptr inbounds %struct.elf_link_hash_entry, %struct.elf_link_hash_entry* %221, i32 0, i32 10
  %223 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %222, i32 0, i32 1
  %224 = load i64, i64* %223, align 8
  %225 = load %struct.elf32_arm_link_hash_table*, %struct.elf32_arm_link_hash_table** %7, align 8
  %226 = getelementptr inbounds %struct.elf32_arm_link_hash_table, %struct.elf32_arm_link_hash_table* %225, i32 0, i32 0
  %227 = load i64, i64* %226, align 8
  %228 = icmp eq i64 %224, %227
  br i1 %228, label %229, label %238

229:                                              ; preds = %220
  %230 = load %struct.elf32_arm_link_hash_table*, %struct.elf32_arm_link_hash_table** %7, align 8
  %231 = call i32 @RELOC_SIZE(%struct.elf32_arm_link_hash_table* %230)
  %232 = load %struct.elf32_arm_link_hash_table*, %struct.elf32_arm_link_hash_table** %7, align 8
  %233 = getelementptr inbounds %struct.elf32_arm_link_hash_table, %struct.elf32_arm_link_hash_table* %232, i32 0, i32 7
  %234 = load %struct.TYPE_26__*, %struct.TYPE_26__** %233, align 8
  %235 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %234, i32 0, i32 0
  %236 = load i32, i32* %235, align 4
  %237 = add nsw i32 %236, %231
  store i32 %237, i32* %235, align 4
  br label %238

238:                                              ; preds = %229, %220
  %239 = load %struct.elf32_arm_link_hash_table*, %struct.elf32_arm_link_hash_table** %7, align 8
  %240 = call i32 @RELOC_SIZE(%struct.elf32_arm_link_hash_table* %239)
  %241 = mul nsw i32 %240, 2
  %242 = load %struct.elf32_arm_link_hash_table*, %struct.elf32_arm_link_hash_table** %7, align 8
  %243 = getelementptr inbounds %struct.elf32_arm_link_hash_table, %struct.elf32_arm_link_hash_table* %242, i32 0, i32 7
  %244 = load %struct.TYPE_26__*, %struct.TYPE_26__** %243, align 8
  %245 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %244, i32 0, i32 0
  %246 = load i32, i32* %245, align 4
  %247 = add nsw i32 %246, %241
  store i32 %247, i32* %245, align 4
  br label %248

248:                                              ; preds = %238, %215, %202
  br label %255

249:                                              ; preds = %86
  %250 = load %struct.elf_link_hash_entry*, %struct.elf_link_hash_entry** %4, align 8
  %251 = getelementptr inbounds %struct.elf_link_hash_entry, %struct.elf_link_hash_entry* %250, i32 0, i32 10
  %252 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %251, i32 0, i32 1
  store i64 -1, i64* %252, align 8
  %253 = load %struct.elf_link_hash_entry*, %struct.elf_link_hash_entry** %4, align 8
  %254 = getelementptr inbounds %struct.elf_link_hash_entry, %struct.elf_link_hash_entry* %253, i32 0, i32 9
  store i64 0, i64* %254, align 8
  br label %255

255:                                              ; preds = %249, %248
  br label %262

256:                                              ; preds = %57, %47
  %257 = load %struct.elf_link_hash_entry*, %struct.elf_link_hash_entry** %4, align 8
  %258 = getelementptr inbounds %struct.elf_link_hash_entry, %struct.elf_link_hash_entry* %257, i32 0, i32 10
  %259 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %258, i32 0, i32 1
  store i64 -1, i64* %259, align 8
  %260 = load %struct.elf_link_hash_entry*, %struct.elf_link_hash_entry** %4, align 8
  %261 = getelementptr inbounds %struct.elf_link_hash_entry, %struct.elf_link_hash_entry* %260, i32 0, i32 9
  store i64 0, i64* %261, align 8
  br label %262

262:                                              ; preds = %256, %255
  %263 = load %struct.elf_link_hash_entry*, %struct.elf_link_hash_entry** %4, align 8
  %264 = getelementptr inbounds %struct.elf_link_hash_entry, %struct.elf_link_hash_entry* %263, i32 0, i32 8
  %265 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %264, i32 0, i32 0
  %266 = load i64, i64* %265, align 8
  %267 = icmp sgt i64 %266, 0
  br i1 %267, label %268, label %474

268:                                              ; preds = %262
  %269 = load %struct.elf_link_hash_entry*, %struct.elf_link_hash_entry** %4, align 8
  %270 = call %struct.TYPE_22__* @elf32_arm_hash_entry(%struct.elf_link_hash_entry* %269)
  %271 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %270, i32 0, i32 0
  %272 = load i32, i32* %271, align 4
  store i32 %272, i32* %13, align 4
  %273 = load %struct.elf_link_hash_entry*, %struct.elf_link_hash_entry** %4, align 8
  %274 = getelementptr inbounds %struct.elf_link_hash_entry, %struct.elf_link_hash_entry* %273, i32 0, i32 0
  %275 = load i32, i32* %274, align 8
  %276 = icmp eq i32 %275, -1
  br i1 %276, label %277, label %290

277:                                              ; preds = %268
  %278 = load %struct.elf_link_hash_entry*, %struct.elf_link_hash_entry** %4, align 8
  %279 = getelementptr inbounds %struct.elf_link_hash_entry, %struct.elf_link_hash_entry* %278, i32 0, i32 1
  %280 = load i32, i32* %279, align 4
  %281 = icmp ne i32 %280, 0
  br i1 %281, label %290, label %282

282:                                              ; preds = %277
  %283 = load %struct.bfd_link_info*, %struct.bfd_link_info** %6, align 8
  %284 = load %struct.elf_link_hash_entry*, %struct.elf_link_hash_entry** %4, align 8
  %285 = call i32 @bfd_elf_link_record_dynamic_symbol(%struct.bfd_link_info* %283, %struct.elf_link_hash_entry* %284)
  %286 = icmp ne i32 %285, 0
  br i1 %286, label %289, label %287

287:                                              ; preds = %282
  %288 = load i32, i32* @FALSE, align 4
  store i32 %288, i32* %3, align 4
  br label %804

289:                                              ; preds = %282
  br label %290

290:                                              ; preds = %289, %277, %268
  %291 = load %struct.elf32_arm_link_hash_table*, %struct.elf32_arm_link_hash_table** %7, align 8
  %292 = getelementptr inbounds %struct.elf32_arm_link_hash_table, %struct.elf32_arm_link_hash_table* %291, i32 0, i32 6
  %293 = load i32, i32* %292, align 8
  %294 = icmp ne i32 %293, 0
  br i1 %294, label %473, label %295

295:                                              ; preds = %290
  %296 = load %struct.elf32_arm_link_hash_table*, %struct.elf32_arm_link_hash_table** %7, align 8
  %297 = getelementptr inbounds %struct.elf32_arm_link_hash_table, %struct.elf32_arm_link_hash_table* %296, i32 0, i32 5
  %298 = load %struct.TYPE_20__*, %struct.TYPE_20__** %297, align 8
  store %struct.TYPE_20__* %298, %struct.TYPE_20__** %11, align 8
  %299 = load %struct.TYPE_20__*, %struct.TYPE_20__** %11, align 8
  %300 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %299, i32 0, i32 0
  %301 = load i64, i64* %300, align 8
  %302 = load %struct.elf_link_hash_entry*, %struct.elf_link_hash_entry** %4, align 8
  %303 = getelementptr inbounds %struct.elf_link_hash_entry, %struct.elf_link_hash_entry* %302, i32 0, i32 8
  %304 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %303, i32 0, i32 1
  store i64 %301, i64* %304, align 8
  %305 = load i32, i32* %13, align 4
  %306 = load i32, i32* @GOT_UNKNOWN, align 4
  %307 = icmp eq i32 %305, %306
  br i1 %307, label %308, label %310

308:                                              ; preds = %295
  %309 = call i32 (...) @abort() #3
  unreachable

310:                                              ; preds = %295
  %311 = load i32, i32* %13, align 4
  %312 = load i32, i32* @GOT_NORMAL, align 4
  %313 = icmp eq i32 %311, %312
  br i1 %313, label %314, label %319

314:                                              ; preds = %310
  %315 = load %struct.TYPE_20__*, %struct.TYPE_20__** %11, align 8
  %316 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %315, i32 0, i32 0
  %317 = load i64, i64* %316, align 8
  %318 = add nsw i64 %317, 4
  store i64 %318, i64* %316, align 8
  br label %340

319:                                              ; preds = %310
  %320 = load i32, i32* %13, align 4
  %321 = load i32, i32* @GOT_TLS_GD, align 4
  %322 = and i32 %320, %321
  %323 = icmp ne i32 %322, 0
  br i1 %323, label %324, label %329

324:                                              ; preds = %319
  %325 = load %struct.TYPE_20__*, %struct.TYPE_20__** %11, align 8
  %326 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %325, i32 0, i32 0
  %327 = load i64, i64* %326, align 8
  %328 = add nsw i64 %327, 8
  store i64 %328, i64* %326, align 8
  br label %329

329:                                              ; preds = %324, %319
  %330 = load i32, i32* %13, align 4
  %331 = load i32, i32* @GOT_TLS_IE, align 4
  %332 = and i32 %330, %331
  %333 = icmp ne i32 %332, 0
  br i1 %333, label %334, label %339

334:                                              ; preds = %329
  %335 = load %struct.TYPE_20__*, %struct.TYPE_20__** %11, align 8
  %336 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %335, i32 0, i32 0
  %337 = load i64, i64* %336, align 8
  %338 = add nsw i64 %337, 4
  store i64 %338, i64* %336, align 8
  br label %339

339:                                              ; preds = %334, %329
  br label %340

340:                                              ; preds = %339, %314
  %341 = load %struct.elf32_arm_link_hash_table*, %struct.elf32_arm_link_hash_table** %7, align 8
  %342 = getelementptr inbounds %struct.elf32_arm_link_hash_table, %struct.elf32_arm_link_hash_table* %341, i32 0, i32 2
  %343 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %342, i32 0, i32 0
  %344 = load i32, i32* %343, align 8
  store i32 %344, i32* %12, align 4
  store i32 0, i32* %14, align 4
  %345 = load i32, i32* %12, align 4
  %346 = load %struct.bfd_link_info*, %struct.bfd_link_info** %6, align 8
  %347 = getelementptr inbounds %struct.bfd_link_info, %struct.bfd_link_info* %346, i32 0, i32 0
  %348 = load i64, i64* %347, align 8
  %349 = load %struct.elf_link_hash_entry*, %struct.elf_link_hash_entry** %4, align 8
  %350 = call i64 @WILL_CALL_FINISH_DYNAMIC_SYMBOL(i32 %345, i64 %348, %struct.elf_link_hash_entry* %349)
  %351 = icmp ne i64 %350, 0
  br i1 %351, label %352, label %366

352:                                              ; preds = %340
  %353 = load %struct.bfd_link_info*, %struct.bfd_link_info** %6, align 8
  %354 = getelementptr inbounds %struct.bfd_link_info, %struct.bfd_link_info* %353, i32 0, i32 0
  %355 = load i64, i64* %354, align 8
  %356 = icmp ne i64 %355, 0
  br i1 %356, label %357, label %362

357:                                              ; preds = %352
  %358 = load %struct.bfd_link_info*, %struct.bfd_link_info** %6, align 8
  %359 = load %struct.elf_link_hash_entry*, %struct.elf_link_hash_entry** %4, align 8
  %360 = call i32 @SYMBOL_REFERENCES_LOCAL(%struct.bfd_link_info* %358, %struct.elf_link_hash_entry* %359)
  %361 = icmp ne i32 %360, 0
  br i1 %361, label %366, label %362

362:                                              ; preds = %357, %352
  %363 = load %struct.elf_link_hash_entry*, %struct.elf_link_hash_entry** %4, align 8
  %364 = getelementptr inbounds %struct.elf_link_hash_entry, %struct.elf_link_hash_entry* %363, i32 0, i32 0
  %365 = load i32, i32* %364, align 8
  store i32 %365, i32* %14, align 4
  br label %366

366:                                              ; preds = %362, %357, %340
  %367 = load i32, i32* %13, align 4
  %368 = load i32, i32* @GOT_NORMAL, align 4
  %369 = icmp ne i32 %367, %368
  br i1 %369, label %370, label %438

370:                                              ; preds = %366
  %371 = load %struct.bfd_link_info*, %struct.bfd_link_info** %6, align 8
  %372 = getelementptr inbounds %struct.bfd_link_info, %struct.bfd_link_info* %371, i32 0, i32 0
  %373 = load i64, i64* %372, align 8
  %374 = icmp ne i64 %373, 0
  br i1 %374, label %378, label %375

375:                                              ; preds = %370
  %376 = load i32, i32* %14, align 4
  %377 = icmp ne i32 %376, 0
  br i1 %377, label %378, label %438

378:                                              ; preds = %375, %370
  %379 = load %struct.elf_link_hash_entry*, %struct.elf_link_hash_entry** %4, align 8
  %380 = getelementptr inbounds %struct.elf_link_hash_entry, %struct.elf_link_hash_entry* %379, i32 0, i32 6
  %381 = load i32, i32* %380, align 4
  %382 = call i64 @ELF_ST_VISIBILITY(i32 %381)
  %383 = load i64, i64* @STV_DEFAULT, align 8
  %384 = icmp eq i64 %382, %383
  br i1 %384, label %392, label %385

385:                                              ; preds = %378
  %386 = load %struct.elf_link_hash_entry*, %struct.elf_link_hash_entry** %4, align 8
  %387 = getelementptr inbounds %struct.elf_link_hash_entry, %struct.elf_link_hash_entry* %386, i32 0, i32 2
  %388 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %387, i32 0, i32 0
  %389 = load i64, i64* %388, align 8
  %390 = load i64, i64* @bfd_link_hash_undefweak, align 8
  %391 = icmp ne i64 %389, %390
  br i1 %391, label %392, label %438

392:                                              ; preds = %385, %378
  %393 = load i32, i32* %13, align 4
  %394 = load i32, i32* @GOT_TLS_IE, align 4
  %395 = and i32 %393, %394
  %396 = icmp ne i32 %395, 0
  br i1 %396, label %397, label %406

397:                                              ; preds = %392
  %398 = load %struct.elf32_arm_link_hash_table*, %struct.elf32_arm_link_hash_table** %7, align 8
  %399 = call i32 @RELOC_SIZE(%struct.elf32_arm_link_hash_table* %398)
  %400 = load %struct.elf32_arm_link_hash_table*, %struct.elf32_arm_link_hash_table** %7, align 8
  %401 = getelementptr inbounds %struct.elf32_arm_link_hash_table, %struct.elf32_arm_link_hash_table* %400, i32 0, i32 4
  %402 = load %struct.TYPE_28__*, %struct.TYPE_28__** %401, align 8
  %403 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %402, i32 0, i32 0
  %404 = load i32, i32* %403, align 4
  %405 = add nsw i32 %404, %399
  store i32 %405, i32* %403, align 4
  br label %406

406:                                              ; preds = %397, %392
  %407 = load i32, i32* %13, align 4
  %408 = load i32, i32* @GOT_TLS_GD, align 4
  %409 = and i32 %407, %408
  %410 = icmp ne i32 %409, 0
  br i1 %410, label %411, label %420

411:                                              ; preds = %406
  %412 = load %struct.elf32_arm_link_hash_table*, %struct.elf32_arm_link_hash_table** %7, align 8
  %413 = call i32 @RELOC_SIZE(%struct.elf32_arm_link_hash_table* %412)
  %414 = load %struct.elf32_arm_link_hash_table*, %struct.elf32_arm_link_hash_table** %7, align 8
  %415 = getelementptr inbounds %struct.elf32_arm_link_hash_table, %struct.elf32_arm_link_hash_table* %414, i32 0, i32 4
  %416 = load %struct.TYPE_28__*, %struct.TYPE_28__** %415, align 8
  %417 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %416, i32 0, i32 0
  %418 = load i32, i32* %417, align 4
  %419 = add nsw i32 %418, %413
  store i32 %419, i32* %417, align 4
  br label %420

420:                                              ; preds = %411, %406
  %421 = load i32, i32* %13, align 4
  %422 = load i32, i32* @GOT_TLS_GD, align 4
  %423 = and i32 %421, %422
  %424 = icmp ne i32 %423, 0
  br i1 %424, label %425, label %437

425:                                              ; preds = %420
  %426 = load i32, i32* %14, align 4
  %427 = icmp ne i32 %426, 0
  br i1 %427, label %428, label %437

428:                                              ; preds = %425
  %429 = load %struct.elf32_arm_link_hash_table*, %struct.elf32_arm_link_hash_table** %7, align 8
  %430 = call i32 @RELOC_SIZE(%struct.elf32_arm_link_hash_table* %429)
  %431 = load %struct.elf32_arm_link_hash_table*, %struct.elf32_arm_link_hash_table** %7, align 8
  %432 = getelementptr inbounds %struct.elf32_arm_link_hash_table, %struct.elf32_arm_link_hash_table* %431, i32 0, i32 4
  %433 = load %struct.TYPE_28__*, %struct.TYPE_28__** %432, align 8
  %434 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %433, i32 0, i32 0
  %435 = load i32, i32* %434, align 4
  %436 = add nsw i32 %435, %430
  store i32 %436, i32* %434, align 4
  br label %437

437:                                              ; preds = %428, %425, %420
  br label %472

438:                                              ; preds = %385, %375, %366
  %439 = load %struct.elf_link_hash_entry*, %struct.elf_link_hash_entry** %4, align 8
  %440 = getelementptr inbounds %struct.elf_link_hash_entry, %struct.elf_link_hash_entry* %439, i32 0, i32 6
  %441 = load i32, i32* %440, align 4
  %442 = call i64 @ELF_ST_VISIBILITY(i32 %441)
  %443 = load i64, i64* @STV_DEFAULT, align 8
  %444 = icmp eq i64 %442, %443
  br i1 %444, label %452, label %445

445:                                              ; preds = %438
  %446 = load %struct.elf_link_hash_entry*, %struct.elf_link_hash_entry** %4, align 8
  %447 = getelementptr inbounds %struct.elf_link_hash_entry, %struct.elf_link_hash_entry* %446, i32 0, i32 2
  %448 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %447, i32 0, i32 0
  %449 = load i64, i64* %448, align 8
  %450 = load i64, i64* @bfd_link_hash_undefweak, align 8
  %451 = icmp ne i64 %449, %450
  br i1 %451, label %452, label %471

452:                                              ; preds = %445, %438
  %453 = load %struct.bfd_link_info*, %struct.bfd_link_info** %6, align 8
  %454 = getelementptr inbounds %struct.bfd_link_info, %struct.bfd_link_info* %453, i32 0, i32 0
  %455 = load i64, i64* %454, align 8
  %456 = icmp ne i64 %455, 0
  br i1 %456, label %462, label %457

457:                                              ; preds = %452
  %458 = load i32, i32* %12, align 4
  %459 = load %struct.elf_link_hash_entry*, %struct.elf_link_hash_entry** %4, align 8
  %460 = call i64 @WILL_CALL_FINISH_DYNAMIC_SYMBOL(i32 %458, i64 0, %struct.elf_link_hash_entry* %459)
  %461 = icmp ne i64 %460, 0
  br i1 %461, label %462, label %471

462:                                              ; preds = %457, %452
  %463 = load %struct.elf32_arm_link_hash_table*, %struct.elf32_arm_link_hash_table** %7, align 8
  %464 = call i32 @RELOC_SIZE(%struct.elf32_arm_link_hash_table* %463)
  %465 = load %struct.elf32_arm_link_hash_table*, %struct.elf32_arm_link_hash_table** %7, align 8
  %466 = getelementptr inbounds %struct.elf32_arm_link_hash_table, %struct.elf32_arm_link_hash_table* %465, i32 0, i32 4
  %467 = load %struct.TYPE_28__*, %struct.TYPE_28__** %466, align 8
  %468 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %467, i32 0, i32 0
  %469 = load i32, i32* %468, align 4
  %470 = add nsw i32 %469, %464
  store i32 %470, i32* %468, align 4
  br label %471

471:                                              ; preds = %462, %457, %445
  br label %472

472:                                              ; preds = %471, %437
  br label %473

473:                                              ; preds = %472, %290
  br label %478

474:                                              ; preds = %262
  %475 = load %struct.elf_link_hash_entry*, %struct.elf_link_hash_entry** %4, align 8
  %476 = getelementptr inbounds %struct.elf_link_hash_entry, %struct.elf_link_hash_entry* %475, i32 0, i32 8
  %477 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %476, i32 0, i32 1
  store i64 -1, i64* %477, align 8
  br label %478

478:                                              ; preds = %474, %473
  %479 = load %struct.elf32_arm_link_hash_table*, %struct.elf32_arm_link_hash_table** %7, align 8
  %480 = getelementptr inbounds %struct.elf32_arm_link_hash_table, %struct.elf32_arm_link_hash_table* %479, i32 0, i32 3
  %481 = load i32, i32* %480, align 8
  %482 = icmp ne i32 %481, 0
  br i1 %482, label %583, label %483

483:                                              ; preds = %478
  %484 = load %struct.elf_link_hash_entry*, %struct.elf_link_hash_entry** %4, align 8
  %485 = getelementptr inbounds %struct.elf_link_hash_entry, %struct.elf_link_hash_entry* %484, i32 0, i32 0
  %486 = load i32, i32* %485, align 8
  %487 = icmp ne i32 %486, -1
  br i1 %487, label %488, label %583

488:                                              ; preds = %483
  %489 = load %struct.elf_link_hash_entry*, %struct.elf_link_hash_entry** %4, align 8
  %490 = getelementptr inbounds %struct.elf_link_hash_entry, %struct.elf_link_hash_entry* %489, i32 0, i32 3
  %491 = load i64, i64* %490, align 8
  %492 = icmp ne i64 %491, 0
  br i1 %492, label %493, label %583

493:                                              ; preds = %488
  %494 = load %struct.elf_link_hash_entry*, %struct.elf_link_hash_entry** %4, align 8
  %495 = getelementptr inbounds %struct.elf_link_hash_entry, %struct.elf_link_hash_entry* %494, i32 0, i32 7
  %496 = load i8*, i8** %495, align 8
  %497 = call i64 @ELF_ST_TYPE(i8* %496)
  %498 = load i64, i64* @STT_ARM_TFUNC, align 8
  %499 = icmp eq i64 %497, %498
  br i1 %499, label %500, label %583

500:                                              ; preds = %493
  %501 = load %struct.elf_link_hash_entry*, %struct.elf_link_hash_entry** %4, align 8
  %502 = getelementptr inbounds %struct.elf_link_hash_entry, %struct.elf_link_hash_entry* %501, i32 0, i32 6
  %503 = load i32, i32* %502, align 4
  %504 = call i64 @ELF_ST_VISIBILITY(i32 %503)
  %505 = load i64, i64* @STV_DEFAULT, align 8
  %506 = icmp eq i64 %504, %505
  br i1 %506, label %507, label %583

507:                                              ; preds = %500
  store %struct.bfd_link_hash_entry* null, %struct.bfd_link_hash_entry** %16, align 8
  %508 = load %struct.elf_link_hash_entry*, %struct.elf_link_hash_entry** %4, align 8
  %509 = getelementptr inbounds %struct.elf_link_hash_entry, %struct.elf_link_hash_entry* %508, i32 0, i32 2
  %510 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %509, i32 0, i32 1
  %511 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %510, i32 0, i32 0
  %512 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %511, i32 0, i32 1
  %513 = load %struct.TYPE_20__*, %struct.TYPE_20__** %512, align 8
  store %struct.TYPE_20__* %513, %struct.TYPE_20__** %19, align 8
  %514 = getelementptr inbounds [1024 x i8], [1024 x i8]* %18, i64 0, i64 0
  %515 = load %struct.elf_link_hash_entry*, %struct.elf_link_hash_entry** %4, align 8
  %516 = getelementptr inbounds %struct.elf_link_hash_entry, %struct.elf_link_hash_entry* %515, i32 0, i32 2
  %517 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %516, i32 0, i32 2
  %518 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %517, i32 0, i32 0
  %519 = load i8*, i8** %518, align 8
  %520 = call i32 @sprintf(i8* %514, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i8* %519)
  %521 = load %struct.bfd_link_info*, %struct.bfd_link_info** %6, align 8
  %522 = load %struct.TYPE_20__*, %struct.TYPE_20__** %19, align 8
  %523 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %522, i32 0, i32 1
  %524 = load i32, i32* %523, align 8
  %525 = getelementptr inbounds [1024 x i8], [1024 x i8]* %18, i64 0, i64 0
  %526 = load i32, i32* @BSF_GLOBAL, align 4
  %527 = load %struct.TYPE_20__*, %struct.TYPE_20__** %19, align 8
  %528 = load %struct.elf_link_hash_entry*, %struct.elf_link_hash_entry** %4, align 8
  %529 = getelementptr inbounds %struct.elf_link_hash_entry, %struct.elf_link_hash_entry* %528, i32 0, i32 2
  %530 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %529, i32 0, i32 1
  %531 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %530, i32 0, i32 0
  %532 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %531, i32 0, i32 0
  %533 = load i64, i64* %532, align 8
  %534 = load i32, i32* @TRUE, align 4
  %535 = load i32, i32* @FALSE, align 4
  %536 = call i32 @_bfd_generic_link_add_one_symbol(%struct.bfd_link_info* %521, i32 %524, i8* %525, i32 %526, %struct.TYPE_20__* %527, i64 %533, i32* null, i32 %534, i32 %535, %struct.bfd_link_hash_entry** %16)
  %537 = load %struct.bfd_link_hash_entry*, %struct.bfd_link_hash_entry** %16, align 8
  %538 = bitcast %struct.bfd_link_hash_entry* %537 to %struct.elf_link_hash_entry*
  store %struct.elf_link_hash_entry* %538, %struct.elf_link_hash_entry** %17, align 8
  %539 = load i32, i32* @STB_LOCAL, align 4
  %540 = load i64, i64* @STT_ARM_TFUNC, align 8
  %541 = call i8* @ELF_ST_INFO(i32 %539, i64 %540)
  %542 = load %struct.elf_link_hash_entry*, %struct.elf_link_hash_entry** %17, align 8
  %543 = getelementptr inbounds %struct.elf_link_hash_entry, %struct.elf_link_hash_entry* %542, i32 0, i32 7
  store i8* %541, i8** %543, align 8
  %544 = load %struct.elf_link_hash_entry*, %struct.elf_link_hash_entry** %17, align 8
  %545 = getelementptr inbounds %struct.elf_link_hash_entry, %struct.elf_link_hash_entry* %544, i32 0, i32 1
  store i32 1, i32* %545, align 4
  %546 = load %struct.elf_link_hash_entry*, %struct.elf_link_hash_entry** %17, align 8
  %547 = load %struct.elf32_arm_link_hash_entry*, %struct.elf32_arm_link_hash_entry** %8, align 8
  %548 = getelementptr inbounds %struct.elf32_arm_link_hash_entry, %struct.elf32_arm_link_hash_entry* %547, i32 0, i32 3
  store %struct.elf_link_hash_entry* %546, %struct.elf_link_hash_entry** %548, align 8
  %549 = load %struct.bfd_link_info*, %struct.bfd_link_info** %6, align 8
  %550 = load %struct.elf_link_hash_entry*, %struct.elf_link_hash_entry** %4, align 8
  %551 = call %struct.elf_link_hash_entry* @record_arm_to_thumb_glue(%struct.bfd_link_info* %549, %struct.elf_link_hash_entry* %550)
  store %struct.elf_link_hash_entry* %551, %struct.elf_link_hash_entry** %15, align 8
  %552 = load %struct.elf_link_hash_entry*, %struct.elf_link_hash_entry** %4, align 8
  %553 = getelementptr inbounds %struct.elf_link_hash_entry, %struct.elf_link_hash_entry* %552, i32 0, i32 7
  %554 = load i8*, i8** %553, align 8
  %555 = call i32 @ELF_ST_BIND(i8* %554)
  %556 = load i64, i64* @STT_FUNC, align 8
  %557 = call i8* @ELF_ST_INFO(i32 %555, i64 %556)
  %558 = load %struct.elf_link_hash_entry*, %struct.elf_link_hash_entry** %4, align 8
  %559 = getelementptr inbounds %struct.elf_link_hash_entry, %struct.elf_link_hash_entry* %558, i32 0, i32 7
  store i8* %557, i8** %559, align 8
  %560 = load %struct.elf_link_hash_entry*, %struct.elf_link_hash_entry** %15, align 8
  %561 = getelementptr inbounds %struct.elf_link_hash_entry, %struct.elf_link_hash_entry* %560, i32 0, i32 2
  %562 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %561, i32 0, i32 1
  %563 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %562, i32 0, i32 0
  %564 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %563, i32 0, i32 1
  %565 = load %struct.TYPE_20__*, %struct.TYPE_20__** %564, align 8
  %566 = load %struct.elf_link_hash_entry*, %struct.elf_link_hash_entry** %4, align 8
  %567 = getelementptr inbounds %struct.elf_link_hash_entry, %struct.elf_link_hash_entry* %566, i32 0, i32 2
  %568 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %567, i32 0, i32 1
  %569 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %568, i32 0, i32 0
  %570 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %569, i32 0, i32 1
  store %struct.TYPE_20__* %565, %struct.TYPE_20__** %570, align 8
  %571 = load %struct.elf_link_hash_entry*, %struct.elf_link_hash_entry** %15, align 8
  %572 = getelementptr inbounds %struct.elf_link_hash_entry, %struct.elf_link_hash_entry* %571, i32 0, i32 2
  %573 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %572, i32 0, i32 1
  %574 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %573, i32 0, i32 0
  %575 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %574, i32 0, i32 0
  %576 = load i64, i64* %575, align 8
  %577 = and i64 %576, -2
  %578 = load %struct.elf_link_hash_entry*, %struct.elf_link_hash_entry** %4, align 8
  %579 = getelementptr inbounds %struct.elf_link_hash_entry, %struct.elf_link_hash_entry* %578, i32 0, i32 2
  %580 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %579, i32 0, i32 1
  %581 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %580, i32 0, i32 0
  %582 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %581, i32 0, i32 0
  store i64 %577, i64* %582, align 8
  br label %583

583:                                              ; preds = %507, %500, %493, %488, %483, %478
  %584 = load %struct.elf32_arm_link_hash_entry*, %struct.elf32_arm_link_hash_entry** %8, align 8
  %585 = getelementptr inbounds %struct.elf32_arm_link_hash_entry, %struct.elf32_arm_link_hash_entry* %584, i32 0, i32 2
  %586 = load %struct.elf32_arm_relocs_copied*, %struct.elf32_arm_relocs_copied** %585, align 8
  %587 = icmp eq %struct.elf32_arm_relocs_copied* %586, null
  br i1 %587, label %588, label %590

588:                                              ; preds = %583
  %589 = load i32, i32* @TRUE, align 4
  store i32 %589, i32* %3, align 4
  br label %804

590:                                              ; preds = %583
  %591 = load %struct.bfd_link_info*, %struct.bfd_link_info** %6, align 8
  %592 = getelementptr inbounds %struct.bfd_link_info, %struct.bfd_link_info* %591, i32 0, i32 0
  %593 = load i64, i64* %592, align 8
  %594 = icmp ne i64 %593, 0
  br i1 %594, label %601, label %595

595:                                              ; preds = %590
  %596 = load %struct.elf32_arm_link_hash_table*, %struct.elf32_arm_link_hash_table** %7, align 8
  %597 = getelementptr inbounds %struct.elf32_arm_link_hash_table, %struct.elf32_arm_link_hash_table* %596, i32 0, i32 2
  %598 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %597, i32 0, i32 1
  %599 = load i64, i64* %598, align 8
  %600 = icmp ne i64 %599, 0
  br i1 %600, label %601, label %709

601:                                              ; preds = %595, %590
  %602 = load %struct.bfd_link_info*, %struct.bfd_link_info** %6, align 8
  %603 = load %struct.elf_link_hash_entry*, %struct.elf_link_hash_entry** %4, align 8
  %604 = call i64 @SYMBOL_CALLS_LOCAL(%struct.bfd_link_info* %602, %struct.elf_link_hash_entry* %603)
  %605 = icmp ne i64 %604, 0
  br i1 %605, label %606, label %639

606:                                              ; preds = %601
  %607 = load %struct.elf32_arm_link_hash_entry*, %struct.elf32_arm_link_hash_entry** %8, align 8
  %608 = getelementptr inbounds %struct.elf32_arm_link_hash_entry, %struct.elf32_arm_link_hash_entry* %607, i32 0, i32 2
  store %struct.elf32_arm_relocs_copied** %608, %struct.elf32_arm_relocs_copied*** %20, align 8
  br label %609

609:                                              ; preds = %637, %606
  %610 = load %struct.elf32_arm_relocs_copied**, %struct.elf32_arm_relocs_copied*** %20, align 8
  %611 = load %struct.elf32_arm_relocs_copied*, %struct.elf32_arm_relocs_copied** %610, align 8
  store %struct.elf32_arm_relocs_copied* %611, %struct.elf32_arm_relocs_copied** %9, align 8
  %612 = icmp ne %struct.elf32_arm_relocs_copied* %611, null
  br i1 %612, label %613, label %638

613:                                              ; preds = %609
  %614 = load %struct.elf32_arm_relocs_copied*, %struct.elf32_arm_relocs_copied** %9, align 8
  %615 = getelementptr inbounds %struct.elf32_arm_relocs_copied, %struct.elf32_arm_relocs_copied* %614, i32 0, i32 3
  %616 = load i64, i64* %615, align 8
  %617 = load %struct.elf32_arm_relocs_copied*, %struct.elf32_arm_relocs_copied** %9, align 8
  %618 = getelementptr inbounds %struct.elf32_arm_relocs_copied, %struct.elf32_arm_relocs_copied* %617, i32 0, i32 0
  %619 = load i32, i32* %618, align 8
  %620 = sext i32 %619 to i64
  %621 = sub nsw i64 %620, %616
  %622 = trunc i64 %621 to i32
  store i32 %622, i32* %618, align 8
  %623 = load %struct.elf32_arm_relocs_copied*, %struct.elf32_arm_relocs_copied** %9, align 8
  %624 = getelementptr inbounds %struct.elf32_arm_relocs_copied, %struct.elf32_arm_relocs_copied* %623, i32 0, i32 3
  store i64 0, i64* %624, align 8
  %625 = load %struct.elf32_arm_relocs_copied*, %struct.elf32_arm_relocs_copied** %9, align 8
  %626 = getelementptr inbounds %struct.elf32_arm_relocs_copied, %struct.elf32_arm_relocs_copied* %625, i32 0, i32 0
  %627 = load i32, i32* %626, align 8
  %628 = icmp eq i32 %627, 0
  br i1 %628, label %629, label %634

629:                                              ; preds = %613
  %630 = load %struct.elf32_arm_relocs_copied*, %struct.elf32_arm_relocs_copied** %9, align 8
  %631 = getelementptr inbounds %struct.elf32_arm_relocs_copied, %struct.elf32_arm_relocs_copied* %630, i32 0, i32 2
  %632 = load %struct.elf32_arm_relocs_copied*, %struct.elf32_arm_relocs_copied** %631, align 8
  %633 = load %struct.elf32_arm_relocs_copied**, %struct.elf32_arm_relocs_copied*** %20, align 8
  store %struct.elf32_arm_relocs_copied* %632, %struct.elf32_arm_relocs_copied** %633, align 8
  br label %637

634:                                              ; preds = %613
  %635 = load %struct.elf32_arm_relocs_copied*, %struct.elf32_arm_relocs_copied** %9, align 8
  %636 = getelementptr inbounds %struct.elf32_arm_relocs_copied, %struct.elf32_arm_relocs_copied* %635, i32 0, i32 2
  store %struct.elf32_arm_relocs_copied** %636, %struct.elf32_arm_relocs_copied*** %20, align 8
  br label %637

637:                                              ; preds = %634, %629
  br label %609

638:                                              ; preds = %609
  br label %639

639:                                              ; preds = %638, %601
  %640 = load %struct.elf32_arm_link_hash_entry*, %struct.elf32_arm_link_hash_entry** %8, align 8
  %641 = getelementptr inbounds %struct.elf32_arm_link_hash_entry, %struct.elf32_arm_link_hash_entry* %640, i32 0, i32 2
  %642 = load %struct.elf32_arm_relocs_copied*, %struct.elf32_arm_relocs_copied** %641, align 8
  %643 = icmp ne %struct.elf32_arm_relocs_copied* %642, null
  br i1 %643, label %644, label %681

644:                                              ; preds = %639
  %645 = load %struct.elf_link_hash_entry*, %struct.elf_link_hash_entry** %4, align 8
  %646 = getelementptr inbounds %struct.elf_link_hash_entry, %struct.elf_link_hash_entry* %645, i32 0, i32 2
  %647 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %646, i32 0, i32 0
  %648 = load i64, i64* %647, align 8
  %649 = load i64, i64* @bfd_link_hash_undefweak, align 8
  %650 = icmp eq i64 %648, %649
  br i1 %650, label %651, label %681

651:                                              ; preds = %644
  %652 = load %struct.elf_link_hash_entry*, %struct.elf_link_hash_entry** %4, align 8
  %653 = getelementptr inbounds %struct.elf_link_hash_entry, %struct.elf_link_hash_entry* %652, i32 0, i32 6
  %654 = load i32, i32* %653, align 4
  %655 = call i64 @ELF_ST_VISIBILITY(i32 %654)
  %656 = load i64, i64* @STV_DEFAULT, align 8
  %657 = icmp ne i64 %655, %656
  br i1 %657, label %658, label %661

658:                                              ; preds = %651
  %659 = load %struct.elf32_arm_link_hash_entry*, %struct.elf32_arm_link_hash_entry** %8, align 8
  %660 = getelementptr inbounds %struct.elf32_arm_link_hash_entry, %struct.elf32_arm_link_hash_entry* %659, i32 0, i32 2
  store %struct.elf32_arm_relocs_copied* null, %struct.elf32_arm_relocs_copied** %660, align 8
  br label %680

661:                                              ; preds = %651
  %662 = load %struct.elf_link_hash_entry*, %struct.elf_link_hash_entry** %4, align 8
  %663 = getelementptr inbounds %struct.elf_link_hash_entry, %struct.elf_link_hash_entry* %662, i32 0, i32 0
  %664 = load i32, i32* %663, align 8
  %665 = icmp eq i32 %664, -1
  br i1 %665, label %666, label %679

666:                                              ; preds = %661
  %667 = load %struct.elf_link_hash_entry*, %struct.elf_link_hash_entry** %4, align 8
  %668 = getelementptr inbounds %struct.elf_link_hash_entry, %struct.elf_link_hash_entry* %667, i32 0, i32 1
  %669 = load i32, i32* %668, align 4
  %670 = icmp ne i32 %669, 0
  br i1 %670, label %679, label %671

671:                                              ; preds = %666
  %672 = load %struct.bfd_link_info*, %struct.bfd_link_info** %6, align 8
  %673 = load %struct.elf_link_hash_entry*, %struct.elf_link_hash_entry** %4, align 8
  %674 = call i32 @bfd_elf_link_record_dynamic_symbol(%struct.bfd_link_info* %672, %struct.elf_link_hash_entry* %673)
  %675 = icmp ne i32 %674, 0
  br i1 %675, label %678, label %676

676:                                              ; preds = %671
  %677 = load i32, i32* @FALSE, align 4
  store i32 %677, i32* %3, align 4
  br label %804

678:                                              ; preds = %671
  br label %679

679:                                              ; preds = %678, %666, %661
  br label %680

680:                                              ; preds = %679, %658
  br label %708

681:                                              ; preds = %644, %639
  %682 = load %struct.elf32_arm_link_hash_table*, %struct.elf32_arm_link_hash_table** %7, align 8
  %683 = getelementptr inbounds %struct.elf32_arm_link_hash_table, %struct.elf32_arm_link_hash_table* %682, i32 0, i32 2
  %684 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %683, i32 0, i32 1
  %685 = load i64, i64* %684, align 8
  %686 = icmp ne i64 %685, 0
  br i1 %686, label %687, label %707

687:                                              ; preds = %681
  %688 = load %struct.elf_link_hash_entry*, %struct.elf_link_hash_entry** %4, align 8
  %689 = getelementptr inbounds %struct.elf_link_hash_entry, %struct.elf_link_hash_entry* %688, i32 0, i32 0
  %690 = load i32, i32* %689, align 8
  %691 = icmp eq i32 %690, -1
  br i1 %691, label %692, label %707

692:                                              ; preds = %687
  %693 = load %struct.elf_link_hash_entry*, %struct.elf_link_hash_entry** %4, align 8
  %694 = getelementptr inbounds %struct.elf_link_hash_entry, %struct.elf_link_hash_entry* %693, i32 0, i32 2
  %695 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %694, i32 0, i32 0
  %696 = load i64, i64* %695, align 8
  %697 = load i64, i64* @bfd_link_hash_new, align 8
  %698 = icmp eq i64 %696, %697
  br i1 %698, label %699, label %707

699:                                              ; preds = %692
  %700 = load %struct.bfd_link_info*, %struct.bfd_link_info** %6, align 8
  %701 = load %struct.elf_link_hash_entry*, %struct.elf_link_hash_entry** %4, align 8
  %702 = call i32 @bfd_elf_link_record_dynamic_symbol(%struct.bfd_link_info* %700, %struct.elf_link_hash_entry* %701)
  %703 = icmp ne i32 %702, 0
  br i1 %703, label %706, label %704

704:                                              ; preds = %699
  %705 = load i32, i32* @FALSE, align 4
  store i32 %705, i32* %3, align 4
  br label %804

706:                                              ; preds = %699
  br label %707

707:                                              ; preds = %706, %692, %687, %681
  br label %708

708:                                              ; preds = %707, %680
  br label %773

709:                                              ; preds = %595
  %710 = load %struct.elf_link_hash_entry*, %struct.elf_link_hash_entry** %4, align 8
  %711 = getelementptr inbounds %struct.elf_link_hash_entry, %struct.elf_link_hash_entry* %710, i32 0, i32 5
  %712 = load i32, i32* %711, align 8
  %713 = icmp ne i32 %712, 0
  br i1 %713, label %769, label %714

714:                                              ; preds = %709
  %715 = load %struct.elf_link_hash_entry*, %struct.elf_link_hash_entry** %4, align 8
  %716 = getelementptr inbounds %struct.elf_link_hash_entry, %struct.elf_link_hash_entry* %715, i32 0, i32 4
  %717 = load i64, i64* %716, align 8
  %718 = icmp ne i64 %717, 0
  br i1 %718, label %719, label %724

719:                                              ; preds = %714
  %720 = load %struct.elf_link_hash_entry*, %struct.elf_link_hash_entry** %4, align 8
  %721 = getelementptr inbounds %struct.elf_link_hash_entry, %struct.elf_link_hash_entry* %720, i32 0, i32 3
  %722 = load i64, i64* %721, align 8
  %723 = icmp ne i64 %722, 0
  br i1 %723, label %724, label %744

724:                                              ; preds = %719, %714
  %725 = load %struct.elf32_arm_link_hash_table*, %struct.elf32_arm_link_hash_table** %7, align 8
  %726 = getelementptr inbounds %struct.elf32_arm_link_hash_table, %struct.elf32_arm_link_hash_table* %725, i32 0, i32 2
  %727 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %726, i32 0, i32 0
  %728 = load i32, i32* %727, align 8
  %729 = icmp ne i32 %728, 0
  br i1 %729, label %730, label %769

730:                                              ; preds = %724
  %731 = load %struct.elf_link_hash_entry*, %struct.elf_link_hash_entry** %4, align 8
  %732 = getelementptr inbounds %struct.elf_link_hash_entry, %struct.elf_link_hash_entry* %731, i32 0, i32 2
  %733 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %732, i32 0, i32 0
  %734 = load i64, i64* %733, align 8
  %735 = load i64, i64* @bfd_link_hash_undefweak, align 8
  %736 = icmp eq i64 %734, %735
  br i1 %736, label %744, label %737

737:                                              ; preds = %730
  %738 = load %struct.elf_link_hash_entry*, %struct.elf_link_hash_entry** %4, align 8
  %739 = getelementptr inbounds %struct.elf_link_hash_entry, %struct.elf_link_hash_entry* %738, i32 0, i32 2
  %740 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %739, i32 0, i32 0
  %741 = load i64, i64* %740, align 8
  %742 = load i64, i64* @bfd_link_hash_undefined, align 8
  %743 = icmp eq i64 %741, %742
  br i1 %743, label %744, label %769

744:                                              ; preds = %737, %730, %719
  %745 = load %struct.elf_link_hash_entry*, %struct.elf_link_hash_entry** %4, align 8
  %746 = getelementptr inbounds %struct.elf_link_hash_entry, %struct.elf_link_hash_entry* %745, i32 0, i32 0
  %747 = load i32, i32* %746, align 8
  %748 = icmp eq i32 %747, -1
  br i1 %748, label %749, label %762

749:                                              ; preds = %744
  %750 = load %struct.elf_link_hash_entry*, %struct.elf_link_hash_entry** %4, align 8
  %751 = getelementptr inbounds %struct.elf_link_hash_entry, %struct.elf_link_hash_entry* %750, i32 0, i32 1
  %752 = load i32, i32* %751, align 4
  %753 = icmp ne i32 %752, 0
  br i1 %753, label %762, label %754

754:                                              ; preds = %749
  %755 = load %struct.bfd_link_info*, %struct.bfd_link_info** %6, align 8
  %756 = load %struct.elf_link_hash_entry*, %struct.elf_link_hash_entry** %4, align 8
  %757 = call i32 @bfd_elf_link_record_dynamic_symbol(%struct.bfd_link_info* %755, %struct.elf_link_hash_entry* %756)
  %758 = icmp ne i32 %757, 0
  br i1 %758, label %761, label %759

759:                                              ; preds = %754
  %760 = load i32, i32* @FALSE, align 4
  store i32 %760, i32* %3, align 4
  br label %804

761:                                              ; preds = %754
  br label %762

762:                                              ; preds = %761, %749, %744
  %763 = load %struct.elf_link_hash_entry*, %struct.elf_link_hash_entry** %4, align 8
  %764 = getelementptr inbounds %struct.elf_link_hash_entry, %struct.elf_link_hash_entry* %763, i32 0, i32 0
  %765 = load i32, i32* %764, align 8
  %766 = icmp ne i32 %765, -1
  br i1 %766, label %767, label %768

767:                                              ; preds = %762
  br label %772

768:                                              ; preds = %762
  br label %769

769:                                              ; preds = %768, %737, %724, %709
  %770 = load %struct.elf32_arm_link_hash_entry*, %struct.elf32_arm_link_hash_entry** %8, align 8
  %771 = getelementptr inbounds %struct.elf32_arm_link_hash_entry, %struct.elf32_arm_link_hash_entry* %770, i32 0, i32 2
  store %struct.elf32_arm_relocs_copied* null, %struct.elf32_arm_relocs_copied** %771, align 8
  br label %772

772:                                              ; preds = %769, %767
  br label %773

773:                                              ; preds = %772, %708
  %774 = load %struct.elf32_arm_link_hash_entry*, %struct.elf32_arm_link_hash_entry** %8, align 8
  %775 = getelementptr inbounds %struct.elf32_arm_link_hash_entry, %struct.elf32_arm_link_hash_entry* %774, i32 0, i32 2
  %776 = load %struct.elf32_arm_relocs_copied*, %struct.elf32_arm_relocs_copied** %775, align 8
  store %struct.elf32_arm_relocs_copied* %776, %struct.elf32_arm_relocs_copied** %9, align 8
  br label %777

777:                                              ; preds = %798, %773
  %778 = load %struct.elf32_arm_relocs_copied*, %struct.elf32_arm_relocs_copied** %9, align 8
  %779 = icmp ne %struct.elf32_arm_relocs_copied* %778, null
  br i1 %779, label %780, label %802

780:                                              ; preds = %777
  %781 = load %struct.elf32_arm_relocs_copied*, %struct.elf32_arm_relocs_copied** %9, align 8
  %782 = getelementptr inbounds %struct.elf32_arm_relocs_copied, %struct.elf32_arm_relocs_copied* %781, i32 0, i32 1
  %783 = load i32, i32* %782, align 4
  %784 = call %struct.TYPE_21__* @elf_section_data(i32 %783)
  %785 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %784, i32 0, i32 0
  %786 = load %struct.TYPE_20__*, %struct.TYPE_20__** %785, align 8
  store %struct.TYPE_20__* %786, %struct.TYPE_20__** %21, align 8
  %787 = load %struct.elf32_arm_relocs_copied*, %struct.elf32_arm_relocs_copied** %9, align 8
  %788 = getelementptr inbounds %struct.elf32_arm_relocs_copied, %struct.elf32_arm_relocs_copied* %787, i32 0, i32 0
  %789 = load i32, i32* %788, align 8
  %790 = load %struct.elf32_arm_link_hash_table*, %struct.elf32_arm_link_hash_table** %7, align 8
  %791 = call i32 @RELOC_SIZE(%struct.elf32_arm_link_hash_table* %790)
  %792 = mul nsw i32 %789, %791
  %793 = sext i32 %792 to i64
  %794 = load %struct.TYPE_20__*, %struct.TYPE_20__** %21, align 8
  %795 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %794, i32 0, i32 0
  %796 = load i64, i64* %795, align 8
  %797 = add nsw i64 %796, %793
  store i64 %797, i64* %795, align 8
  br label %798

798:                                              ; preds = %780
  %799 = load %struct.elf32_arm_relocs_copied*, %struct.elf32_arm_relocs_copied** %9, align 8
  %800 = getelementptr inbounds %struct.elf32_arm_relocs_copied, %struct.elf32_arm_relocs_copied* %799, i32 0, i32 2
  %801 = load %struct.elf32_arm_relocs_copied*, %struct.elf32_arm_relocs_copied** %800, align 8
  store %struct.elf32_arm_relocs_copied* %801, %struct.elf32_arm_relocs_copied** %9, align 8
  br label %777

802:                                              ; preds = %777
  %803 = load i32, i32* @TRUE, align 4
  store i32 %803, i32* %3, align 4
  br label %804

804:                                              ; preds = %802, %759, %704, %676, %588, %287, %78, %30
  %805 = load i32, i32* %3, align 4
  ret i32 %805
}

declare dso_local %struct.elf32_arm_link_hash_table* @elf32_arm_hash_table(%struct.bfd_link_info*) #1

declare dso_local i32 @bfd_elf_link_record_dynamic_symbol(%struct.bfd_link_info*, %struct.elf_link_hash_entry*) #1

declare dso_local i64 @WILL_CALL_FINISH_DYNAMIC_SYMBOL(i32, i64, %struct.elf_link_hash_entry*) #1

declare dso_local i64 @ELF_ST_TYPE(i8*) #1

declare dso_local i8* @ELF_ST_INFO(i32, i64) #1

declare dso_local i32 @ELF_ST_BIND(i8*) #1

declare dso_local i32 @RELOC_SIZE(%struct.elf32_arm_link_hash_table*) #1

declare dso_local %struct.TYPE_22__* @elf32_arm_hash_entry(%struct.elf_link_hash_entry*) #1

; Function Attrs: noreturn
declare dso_local i32 @abort(...) #2

declare dso_local i32 @SYMBOL_REFERENCES_LOCAL(%struct.bfd_link_info*, %struct.elf_link_hash_entry*) #1

declare dso_local i64 @ELF_ST_VISIBILITY(i32) #1

declare dso_local i32 @sprintf(i8*, i8*, i8*) #1

declare dso_local i32 @_bfd_generic_link_add_one_symbol(%struct.bfd_link_info*, i32, i8*, i32, %struct.TYPE_20__*, i64, i32*, i32, i32, %struct.bfd_link_hash_entry**) #1

declare dso_local %struct.elf_link_hash_entry* @record_arm_to_thumb_glue(%struct.bfd_link_info*, %struct.elf_link_hash_entry*) #1

declare dso_local i64 @SYMBOL_CALLS_LOCAL(%struct.bfd_link_info*, %struct.elf_link_hash_entry*) #1

declare dso_local %struct.TYPE_21__* @elf_section_data(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

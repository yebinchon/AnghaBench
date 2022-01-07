; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/bfd/extr_elfxx-mips.c__bfd_mips_elf_adjust_dynamic_symbol.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/bfd/extr_elfxx-mips.c__bfd_mips_elf_adjust_dynamic_symbol.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bfd_link_info = type { i32, i32 }
%struct.elf_link_hash_entry = type { i64, %struct.TYPE_23__, %struct.TYPE_18__, i64, %struct.TYPE_15__, i32, i64, i64 }
%struct.TYPE_23__ = type { %struct.TYPE_22__* }
%struct.TYPE_22__ = type { %struct.TYPE_21__ }
%struct.TYPE_21__ = type { i64, %struct.TYPE_20__ }
%struct.TYPE_20__ = type { %struct.TYPE_19__ }
%struct.TYPE_19__ = type { i32, %struct.TYPE_13__* }
%struct.TYPE_13__ = type { i32 }
%struct.TYPE_18__ = type { i64, %struct.TYPE_17__ }
%struct.TYPE_17__ = type { %struct.TYPE_16__ }
%struct.TYPE_16__ = type { i32, %struct.TYPE_13__* }
%struct.TYPE_15__ = type { i32 }
%struct.mips_elf_link_hash_entry = type { i64, i32, i64 }
%struct.mips_elf_link_hash_table = type { i64 }
%struct.TYPE_14__ = type { i32, i32* }

@bfd_link_hash_defweak = common dso_local global i64 0, align 8
@DF_TEXTREL = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@STT_FUNC = common dso_local global i64 0, align 8
@bfd_link_hash_defined = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @_bfd_mips_elf_adjust_dynamic_symbol(%struct.bfd_link_info* %0, %struct.elf_link_hash_entry* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.bfd_link_info*, align 8
  %5 = alloca %struct.elf_link_hash_entry*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct.mips_elf_link_hash_entry*, align 8
  %8 = alloca %struct.TYPE_13__*, align 8
  %9 = alloca %struct.mips_elf_link_hash_table*, align 8
  store %struct.bfd_link_info* %0, %struct.bfd_link_info** %4, align 8
  store %struct.elf_link_hash_entry* %1, %struct.elf_link_hash_entry** %5, align 8
  %10 = load %struct.bfd_link_info*, %struct.bfd_link_info** %4, align 8
  %11 = call %struct.mips_elf_link_hash_table* @mips_elf_hash_table(%struct.bfd_link_info* %10)
  store %struct.mips_elf_link_hash_table* %11, %struct.mips_elf_link_hash_table** %9, align 8
  %12 = load %struct.bfd_link_info*, %struct.bfd_link_info** %4, align 8
  %13 = call %struct.TYPE_14__* @elf_hash_table(%struct.bfd_link_info* %12)
  %14 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %13, i32 0, i32 1
  %15 = load i32*, i32** %14, align 8
  store i32* %15, i32** %6, align 8
  %16 = load i32*, i32** %6, align 8
  %17 = icmp ne i32* %16, null
  br i1 %17, label %18, label %49

18:                                               ; preds = %2
  %19 = load %struct.elf_link_hash_entry*, %struct.elf_link_hash_entry** %5, align 8
  %20 = getelementptr inbounds %struct.elf_link_hash_entry, %struct.elf_link_hash_entry* %19, i32 0, i32 3
  %21 = load i64, i64* %20, align 8
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %47, label %23

23:                                               ; preds = %18
  %24 = load %struct.elf_link_hash_entry*, %struct.elf_link_hash_entry** %5, align 8
  %25 = getelementptr inbounds %struct.elf_link_hash_entry, %struct.elf_link_hash_entry* %24, i32 0, i32 1
  %26 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %25, i32 0, i32 0
  %27 = load %struct.TYPE_22__*, %struct.TYPE_22__** %26, align 8
  %28 = icmp ne %struct.TYPE_22__* %27, null
  br i1 %28, label %47, label %29

29:                                               ; preds = %23
  %30 = load %struct.elf_link_hash_entry*, %struct.elf_link_hash_entry** %5, align 8
  %31 = getelementptr inbounds %struct.elf_link_hash_entry, %struct.elf_link_hash_entry* %30, i32 0, i32 7
  %32 = load i64, i64* %31, align 8
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %45

34:                                               ; preds = %29
  %35 = load %struct.elf_link_hash_entry*, %struct.elf_link_hash_entry** %5, align 8
  %36 = getelementptr inbounds %struct.elf_link_hash_entry, %struct.elf_link_hash_entry* %35, i32 0, i32 6
  %37 = load i64, i64* %36, align 8
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %45

39:                                               ; preds = %34
  %40 = load %struct.elf_link_hash_entry*, %struct.elf_link_hash_entry** %5, align 8
  %41 = getelementptr inbounds %struct.elf_link_hash_entry, %struct.elf_link_hash_entry* %40, i32 0, i32 5
  %42 = load i32, i32* %41, align 4
  %43 = icmp ne i32 %42, 0
  %44 = xor i1 %43, true
  br label %45

45:                                               ; preds = %39, %34, %29
  %46 = phi i1 [ false, %34 ], [ false, %29 ], [ %44, %39 ]
  br label %47

47:                                               ; preds = %45, %23, %18
  %48 = phi i1 [ true, %23 ], [ true, %18 ], [ %46, %45 ]
  br label %49

49:                                               ; preds = %47, %2
  %50 = phi i1 [ false, %2 ], [ %48, %47 ]
  %51 = zext i1 %50 to i32
  %52 = call i32 @BFD_ASSERT(i32 %51)
  %53 = load %struct.elf_link_hash_entry*, %struct.elf_link_hash_entry** %5, align 8
  %54 = bitcast %struct.elf_link_hash_entry* %53 to %struct.mips_elf_link_hash_entry*
  store %struct.mips_elf_link_hash_entry* %54, %struct.mips_elf_link_hash_entry** %7, align 8
  %55 = load %struct.bfd_link_info*, %struct.bfd_link_info** %4, align 8
  %56 = getelementptr inbounds %struct.bfd_link_info, %struct.bfd_link_info* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 4
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %94, label %59

59:                                               ; preds = %49
  %60 = load %struct.mips_elf_link_hash_entry*, %struct.mips_elf_link_hash_entry** %7, align 8
  %61 = getelementptr inbounds %struct.mips_elf_link_hash_entry, %struct.mips_elf_link_hash_entry* %60, i32 0, i32 0
  %62 = load i64, i64* %61, align 8
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %64, label %94

64:                                               ; preds = %59
  %65 = load %struct.elf_link_hash_entry*, %struct.elf_link_hash_entry** %5, align 8
  %66 = getelementptr inbounds %struct.elf_link_hash_entry, %struct.elf_link_hash_entry* %65, i32 0, i32 2
  %67 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %66, i32 0, i32 0
  %68 = load i64, i64* %67, align 8
  %69 = load i64, i64* @bfd_link_hash_defweak, align 8
  %70 = icmp eq i64 %68, %69
  br i1 %70, label %76, label %71

71:                                               ; preds = %64
  %72 = load %struct.elf_link_hash_entry*, %struct.elf_link_hash_entry** %5, align 8
  %73 = getelementptr inbounds %struct.elf_link_hash_entry, %struct.elf_link_hash_entry* %72, i32 0, i32 5
  %74 = load i32, i32* %73, align 4
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %94, label %76

76:                                               ; preds = %71, %64
  %77 = load i32*, i32** %6, align 8
  %78 = load %struct.bfd_link_info*, %struct.bfd_link_info** %4, align 8
  %79 = load %struct.mips_elf_link_hash_entry*, %struct.mips_elf_link_hash_entry** %7, align 8
  %80 = getelementptr inbounds %struct.mips_elf_link_hash_entry, %struct.mips_elf_link_hash_entry* %79, i32 0, i32 0
  %81 = load i64, i64* %80, align 8
  %82 = call i32 @mips_elf_allocate_dynamic_relocations(i32* %77, %struct.bfd_link_info* %78, i64 %81)
  %83 = load %struct.mips_elf_link_hash_entry*, %struct.mips_elf_link_hash_entry** %7, align 8
  %84 = getelementptr inbounds %struct.mips_elf_link_hash_entry, %struct.mips_elf_link_hash_entry* %83, i32 0, i32 2
  %85 = load i64, i64* %84, align 8
  %86 = icmp ne i64 %85, 0
  br i1 %86, label %87, label %93

87:                                               ; preds = %76
  %88 = load i32, i32* @DF_TEXTREL, align 4
  %89 = load %struct.bfd_link_info*, %struct.bfd_link_info** %4, align 8
  %90 = getelementptr inbounds %struct.bfd_link_info, %struct.bfd_link_info* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 4
  %92 = or i32 %91, %88
  store i32 %92, i32* %90, align 4
  br label %93

93:                                               ; preds = %87, %76
  br label %94

94:                                               ; preds = %93, %71, %59, %49
  %95 = load %struct.mips_elf_link_hash_entry*, %struct.mips_elf_link_hash_entry** %7, align 8
  %96 = getelementptr inbounds %struct.mips_elf_link_hash_entry, %struct.mips_elf_link_hash_entry* %95, i32 0, i32 1
  %97 = load i32, i32* %96, align 8
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %157, label %99

99:                                               ; preds = %94
  %100 = load %struct.elf_link_hash_entry*, %struct.elf_link_hash_entry** %5, align 8
  %101 = getelementptr inbounds %struct.elf_link_hash_entry, %struct.elf_link_hash_entry* %100, i32 0, i32 3
  %102 = load i64, i64* %101, align 8
  %103 = icmp ne i64 %102, 0
  br i1 %103, label %104, label %157

104:                                              ; preds = %99
  %105 = load %struct.bfd_link_info*, %struct.bfd_link_info** %4, align 8
  %106 = call %struct.TYPE_14__* @elf_hash_table(%struct.bfd_link_info* %105)
  %107 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %106, i32 0, i32 0
  %108 = load i32, i32* %107, align 8
  %109 = icmp ne i32 %108, 0
  br i1 %109, label %112, label %110

110:                                              ; preds = %104
  %111 = load i32, i32* @TRUE, align 4
  store i32 %111, i32* %3, align 4
  br label %237

112:                                              ; preds = %104
  %113 = load %struct.elf_link_hash_entry*, %struct.elf_link_hash_entry** %5, align 8
  %114 = getelementptr inbounds %struct.elf_link_hash_entry, %struct.elf_link_hash_entry* %113, i32 0, i32 5
  %115 = load i32, i32* %114, align 4
  %116 = icmp ne i32 %115, 0
  br i1 %116, label %156, label %117

117:                                              ; preds = %112
  %118 = load i32*, i32** %6, align 8
  %119 = load i32*, i32** %6, align 8
  %120 = call i32 @MIPS_ELF_STUB_SECTION_NAME(i32* %119)
  %121 = call %struct.TYPE_13__* @bfd_get_section_by_name(i32* %118, i32 %120)
  store %struct.TYPE_13__* %121, %struct.TYPE_13__** %8, align 8
  %122 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %123 = icmp ne %struct.TYPE_13__* %122, null
  %124 = zext i1 %123 to i32
  %125 = call i32 @BFD_ASSERT(i32 %124)
  %126 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %127 = load %struct.elf_link_hash_entry*, %struct.elf_link_hash_entry** %5, align 8
  %128 = getelementptr inbounds %struct.elf_link_hash_entry, %struct.elf_link_hash_entry* %127, i32 0, i32 2
  %129 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %128, i32 0, i32 1
  %130 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %129, i32 0, i32 0
  %131 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %130, i32 0, i32 1
  store %struct.TYPE_13__* %126, %struct.TYPE_13__** %131, align 8
  %132 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %133 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %132, i32 0, i32 0
  %134 = load i32, i32* %133, align 4
  %135 = load %struct.elf_link_hash_entry*, %struct.elf_link_hash_entry** %5, align 8
  %136 = getelementptr inbounds %struct.elf_link_hash_entry, %struct.elf_link_hash_entry* %135, i32 0, i32 2
  %137 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %136, i32 0, i32 1
  %138 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %137, i32 0, i32 0
  %139 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %138, i32 0, i32 0
  store i32 %134, i32* %139, align 8
  %140 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %141 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %140, i32 0, i32 0
  %142 = load i32, i32* %141, align 4
  %143 = load %struct.elf_link_hash_entry*, %struct.elf_link_hash_entry** %5, align 8
  %144 = getelementptr inbounds %struct.elf_link_hash_entry, %struct.elf_link_hash_entry* %143, i32 0, i32 4
  %145 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %144, i32 0, i32 0
  store i32 %142, i32* %145, align 8
  %146 = load %struct.mips_elf_link_hash_table*, %struct.mips_elf_link_hash_table** %9, align 8
  %147 = getelementptr inbounds %struct.mips_elf_link_hash_table, %struct.mips_elf_link_hash_table* %146, i32 0, i32 0
  %148 = load i64, i64* %147, align 8
  %149 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %150 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %149, i32 0, i32 0
  %151 = load i32, i32* %150, align 4
  %152 = sext i32 %151 to i64
  %153 = add nsw i64 %152, %148
  %154 = trunc i64 %153 to i32
  store i32 %154, i32* %150, align 4
  %155 = load i32, i32* @TRUE, align 4
  store i32 %155, i32* %3, align 4
  br label %237

156:                                              ; preds = %112
  br label %176

157:                                              ; preds = %99, %94
  %158 = load %struct.elf_link_hash_entry*, %struct.elf_link_hash_entry** %5, align 8
  %159 = getelementptr inbounds %struct.elf_link_hash_entry, %struct.elf_link_hash_entry* %158, i32 0, i32 0
  %160 = load i64, i64* %159, align 8
  %161 = load i64, i64* @STT_FUNC, align 8
  %162 = icmp eq i64 %160, %161
  br i1 %162, label %163, label %175

163:                                              ; preds = %157
  %164 = load %struct.elf_link_hash_entry*, %struct.elf_link_hash_entry** %5, align 8
  %165 = getelementptr inbounds %struct.elf_link_hash_entry, %struct.elf_link_hash_entry* %164, i32 0, i32 3
  %166 = load i64, i64* %165, align 8
  %167 = icmp ne i64 %166, 0
  br i1 %167, label %175, label %168

168:                                              ; preds = %163
  %169 = load %struct.elf_link_hash_entry*, %struct.elf_link_hash_entry** %5, align 8
  %170 = getelementptr inbounds %struct.elf_link_hash_entry, %struct.elf_link_hash_entry* %169, i32 0, i32 2
  %171 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %170, i32 0, i32 1
  %172 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %171, i32 0, i32 0
  %173 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %172, i32 0, i32 0
  store i32 0, i32* %173, align 8
  %174 = load i32, i32* @TRUE, align 4
  store i32 %174, i32* %3, align 4
  br label %237

175:                                              ; preds = %163, %157
  br label %176

176:                                              ; preds = %175, %156
  %177 = load %struct.elf_link_hash_entry*, %struct.elf_link_hash_entry** %5, align 8
  %178 = getelementptr inbounds %struct.elf_link_hash_entry, %struct.elf_link_hash_entry* %177, i32 0, i32 1
  %179 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %178, i32 0, i32 0
  %180 = load %struct.TYPE_22__*, %struct.TYPE_22__** %179, align 8
  %181 = icmp ne %struct.TYPE_22__* %180, null
  br i1 %181, label %182, label %235

182:                                              ; preds = %176
  %183 = load %struct.elf_link_hash_entry*, %struct.elf_link_hash_entry** %5, align 8
  %184 = getelementptr inbounds %struct.elf_link_hash_entry, %struct.elf_link_hash_entry* %183, i32 0, i32 1
  %185 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %184, i32 0, i32 0
  %186 = load %struct.TYPE_22__*, %struct.TYPE_22__** %185, align 8
  %187 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %186, i32 0, i32 0
  %188 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %187, i32 0, i32 0
  %189 = load i64, i64* %188, align 8
  %190 = load i64, i64* @bfd_link_hash_defined, align 8
  %191 = icmp eq i64 %189, %190
  br i1 %191, label %202, label %192

192:                                              ; preds = %182
  %193 = load %struct.elf_link_hash_entry*, %struct.elf_link_hash_entry** %5, align 8
  %194 = getelementptr inbounds %struct.elf_link_hash_entry, %struct.elf_link_hash_entry* %193, i32 0, i32 1
  %195 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %194, i32 0, i32 0
  %196 = load %struct.TYPE_22__*, %struct.TYPE_22__** %195, align 8
  %197 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %196, i32 0, i32 0
  %198 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %197, i32 0, i32 0
  %199 = load i64, i64* %198, align 8
  %200 = load i64, i64* @bfd_link_hash_defweak, align 8
  %201 = icmp eq i64 %199, %200
  br label %202

202:                                              ; preds = %192, %182
  %203 = phi i1 [ true, %182 ], [ %201, %192 ]
  %204 = zext i1 %203 to i32
  %205 = call i32 @BFD_ASSERT(i32 %204)
  %206 = load %struct.elf_link_hash_entry*, %struct.elf_link_hash_entry** %5, align 8
  %207 = getelementptr inbounds %struct.elf_link_hash_entry, %struct.elf_link_hash_entry* %206, i32 0, i32 1
  %208 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %207, i32 0, i32 0
  %209 = load %struct.TYPE_22__*, %struct.TYPE_22__** %208, align 8
  %210 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %209, i32 0, i32 0
  %211 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %210, i32 0, i32 1
  %212 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %211, i32 0, i32 0
  %213 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %212, i32 0, i32 1
  %214 = load %struct.TYPE_13__*, %struct.TYPE_13__** %213, align 8
  %215 = load %struct.elf_link_hash_entry*, %struct.elf_link_hash_entry** %5, align 8
  %216 = getelementptr inbounds %struct.elf_link_hash_entry, %struct.elf_link_hash_entry* %215, i32 0, i32 2
  %217 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %216, i32 0, i32 1
  %218 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %217, i32 0, i32 0
  %219 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %218, i32 0, i32 1
  store %struct.TYPE_13__* %214, %struct.TYPE_13__** %219, align 8
  %220 = load %struct.elf_link_hash_entry*, %struct.elf_link_hash_entry** %5, align 8
  %221 = getelementptr inbounds %struct.elf_link_hash_entry, %struct.elf_link_hash_entry* %220, i32 0, i32 1
  %222 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %221, i32 0, i32 0
  %223 = load %struct.TYPE_22__*, %struct.TYPE_22__** %222, align 8
  %224 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %223, i32 0, i32 0
  %225 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %224, i32 0, i32 1
  %226 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %225, i32 0, i32 0
  %227 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %226, i32 0, i32 0
  %228 = load i32, i32* %227, align 8
  %229 = load %struct.elf_link_hash_entry*, %struct.elf_link_hash_entry** %5, align 8
  %230 = getelementptr inbounds %struct.elf_link_hash_entry, %struct.elf_link_hash_entry* %229, i32 0, i32 2
  %231 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %230, i32 0, i32 1
  %232 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %231, i32 0, i32 0
  %233 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %232, i32 0, i32 0
  store i32 %228, i32* %233, align 8
  %234 = load i32, i32* @TRUE, align 4
  store i32 %234, i32* %3, align 4
  br label %237

235:                                              ; preds = %176
  %236 = load i32, i32* @TRUE, align 4
  store i32 %236, i32* %3, align 4
  br label %237

237:                                              ; preds = %235, %202, %168, %117, %110
  %238 = load i32, i32* %3, align 4
  ret i32 %238
}

declare dso_local %struct.mips_elf_link_hash_table* @mips_elf_hash_table(%struct.bfd_link_info*) #1

declare dso_local %struct.TYPE_14__* @elf_hash_table(%struct.bfd_link_info*) #1

declare dso_local i32 @BFD_ASSERT(i32) #1

declare dso_local i32 @mips_elf_allocate_dynamic_relocations(i32*, %struct.bfd_link_info*, i64) #1

declare dso_local %struct.TYPE_13__* @bfd_get_section_by_name(i32*, i32) #1

declare dso_local i32 @MIPS_ELF_STUB_SECTION_NAME(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

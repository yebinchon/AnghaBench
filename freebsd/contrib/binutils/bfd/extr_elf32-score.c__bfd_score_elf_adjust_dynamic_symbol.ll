; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/bfd/extr_elf32-score.c__bfd_score_elf_adjust_dynamic_symbol.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/bfd/extr_elf32-score.c__bfd_score_elf_adjust_dynamic_symbol.c"
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
%struct.score_elf_link_hash_entry = type { i64, i32, i64 }
%struct.TYPE_14__ = type { i32, i32* }

@bfd_link_hash_defweak = common dso_local global i64 0, align 8
@DF_TEXTREL = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@SCORE_ELF_STUB_SECTION_NAME = common dso_local global i32 0, align 4
@SCORE_FUNCTION_STUB_SIZE = common dso_local global i64 0, align 8
@STT_FUNC = common dso_local global i64 0, align 8
@bfd_link_hash_defined = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bfd_link_info*, %struct.elf_link_hash_entry*)* @_bfd_score_elf_adjust_dynamic_symbol to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @_bfd_score_elf_adjust_dynamic_symbol(%struct.bfd_link_info* %0, %struct.elf_link_hash_entry* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.bfd_link_info*, align 8
  %5 = alloca %struct.elf_link_hash_entry*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct.score_elf_link_hash_entry*, align 8
  %8 = alloca %struct.TYPE_13__*, align 8
  store %struct.bfd_link_info* %0, %struct.bfd_link_info** %4, align 8
  store %struct.elf_link_hash_entry* %1, %struct.elf_link_hash_entry** %5, align 8
  %9 = load %struct.bfd_link_info*, %struct.bfd_link_info** %4, align 8
  %10 = call %struct.TYPE_14__* @elf_hash_table(%struct.bfd_link_info* %9)
  %11 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %10, i32 0, i32 1
  %12 = load i32*, i32** %11, align 8
  store i32* %12, i32** %6, align 8
  %13 = load i32*, i32** %6, align 8
  %14 = icmp ne i32* %13, null
  br i1 %14, label %15, label %46

15:                                               ; preds = %2
  %16 = load %struct.elf_link_hash_entry*, %struct.elf_link_hash_entry** %5, align 8
  %17 = getelementptr inbounds %struct.elf_link_hash_entry, %struct.elf_link_hash_entry* %16, i32 0, i32 3
  %18 = load i64, i64* %17, align 8
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %44, label %20

20:                                               ; preds = %15
  %21 = load %struct.elf_link_hash_entry*, %struct.elf_link_hash_entry** %5, align 8
  %22 = getelementptr inbounds %struct.elf_link_hash_entry, %struct.elf_link_hash_entry* %21, i32 0, i32 1
  %23 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %22, i32 0, i32 0
  %24 = load %struct.TYPE_22__*, %struct.TYPE_22__** %23, align 8
  %25 = icmp ne %struct.TYPE_22__* %24, null
  br i1 %25, label %44, label %26

26:                                               ; preds = %20
  %27 = load %struct.elf_link_hash_entry*, %struct.elf_link_hash_entry** %5, align 8
  %28 = getelementptr inbounds %struct.elf_link_hash_entry, %struct.elf_link_hash_entry* %27, i32 0, i32 7
  %29 = load i64, i64* %28, align 8
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %42

31:                                               ; preds = %26
  %32 = load %struct.elf_link_hash_entry*, %struct.elf_link_hash_entry** %5, align 8
  %33 = getelementptr inbounds %struct.elf_link_hash_entry, %struct.elf_link_hash_entry* %32, i32 0, i32 6
  %34 = load i64, i64* %33, align 8
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %42

36:                                               ; preds = %31
  %37 = load %struct.elf_link_hash_entry*, %struct.elf_link_hash_entry** %5, align 8
  %38 = getelementptr inbounds %struct.elf_link_hash_entry, %struct.elf_link_hash_entry* %37, i32 0, i32 5
  %39 = load i32, i32* %38, align 4
  %40 = icmp ne i32 %39, 0
  %41 = xor i1 %40, true
  br label %42

42:                                               ; preds = %36, %31, %26
  %43 = phi i1 [ false, %31 ], [ false, %26 ], [ %41, %36 ]
  br label %44

44:                                               ; preds = %42, %20, %15
  %45 = phi i1 [ true, %20 ], [ true, %15 ], [ %43, %42 ]
  br label %46

46:                                               ; preds = %44, %2
  %47 = phi i1 [ false, %2 ], [ %45, %44 ]
  %48 = zext i1 %47 to i32
  %49 = call i32 @BFD_ASSERT(i32 %48)
  %50 = load %struct.elf_link_hash_entry*, %struct.elf_link_hash_entry** %5, align 8
  %51 = bitcast %struct.elf_link_hash_entry* %50 to %struct.score_elf_link_hash_entry*
  store %struct.score_elf_link_hash_entry* %51, %struct.score_elf_link_hash_entry** %7, align 8
  %52 = load %struct.bfd_link_info*, %struct.bfd_link_info** %4, align 8
  %53 = getelementptr inbounds %struct.bfd_link_info, %struct.bfd_link_info* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %90, label %56

56:                                               ; preds = %46
  %57 = load %struct.score_elf_link_hash_entry*, %struct.score_elf_link_hash_entry** %7, align 8
  %58 = getelementptr inbounds %struct.score_elf_link_hash_entry, %struct.score_elf_link_hash_entry* %57, i32 0, i32 0
  %59 = load i64, i64* %58, align 8
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %90

61:                                               ; preds = %56
  %62 = load %struct.elf_link_hash_entry*, %struct.elf_link_hash_entry** %5, align 8
  %63 = getelementptr inbounds %struct.elf_link_hash_entry, %struct.elf_link_hash_entry* %62, i32 0, i32 2
  %64 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %63, i32 0, i32 0
  %65 = load i64, i64* %64, align 8
  %66 = load i64, i64* @bfd_link_hash_defweak, align 8
  %67 = icmp eq i64 %65, %66
  br i1 %67, label %73, label %68

68:                                               ; preds = %61
  %69 = load %struct.elf_link_hash_entry*, %struct.elf_link_hash_entry** %5, align 8
  %70 = getelementptr inbounds %struct.elf_link_hash_entry, %struct.elf_link_hash_entry* %69, i32 0, i32 5
  %71 = load i32, i32* %70, align 4
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %90, label %73

73:                                               ; preds = %68, %61
  %74 = load i32*, i32** %6, align 8
  %75 = load %struct.score_elf_link_hash_entry*, %struct.score_elf_link_hash_entry** %7, align 8
  %76 = getelementptr inbounds %struct.score_elf_link_hash_entry, %struct.score_elf_link_hash_entry* %75, i32 0, i32 0
  %77 = load i64, i64* %76, align 8
  %78 = call i32 @score_elf_allocate_dynamic_relocations(i32* %74, i64 %77)
  %79 = load %struct.score_elf_link_hash_entry*, %struct.score_elf_link_hash_entry** %7, align 8
  %80 = getelementptr inbounds %struct.score_elf_link_hash_entry, %struct.score_elf_link_hash_entry* %79, i32 0, i32 2
  %81 = load i64, i64* %80, align 8
  %82 = icmp ne i64 %81, 0
  br i1 %82, label %83, label %89

83:                                               ; preds = %73
  %84 = load i32, i32* @DF_TEXTREL, align 4
  %85 = load %struct.bfd_link_info*, %struct.bfd_link_info** %4, align 8
  %86 = getelementptr inbounds %struct.bfd_link_info, %struct.bfd_link_info* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 4
  %88 = or i32 %87, %84
  store i32 %88, i32* %86, align 4
  br label %89

89:                                               ; preds = %83, %73
  br label %90

90:                                               ; preds = %89, %68, %56, %46
  %91 = load %struct.score_elf_link_hash_entry*, %struct.score_elf_link_hash_entry** %7, align 8
  %92 = getelementptr inbounds %struct.score_elf_link_hash_entry, %struct.score_elf_link_hash_entry* %91, i32 0, i32 1
  %93 = load i32, i32* %92, align 8
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %150, label %95

95:                                               ; preds = %90
  %96 = load %struct.elf_link_hash_entry*, %struct.elf_link_hash_entry** %5, align 8
  %97 = getelementptr inbounds %struct.elf_link_hash_entry, %struct.elf_link_hash_entry* %96, i32 0, i32 3
  %98 = load i64, i64* %97, align 8
  %99 = icmp ne i64 %98, 0
  br i1 %99, label %100, label %150

100:                                              ; preds = %95
  %101 = load %struct.bfd_link_info*, %struct.bfd_link_info** %4, align 8
  %102 = call %struct.TYPE_14__* @elf_hash_table(%struct.bfd_link_info* %101)
  %103 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %102, i32 0, i32 0
  %104 = load i32, i32* %103, align 8
  %105 = icmp ne i32 %104, 0
  br i1 %105, label %108, label %106

106:                                              ; preds = %100
  %107 = load i32, i32* @TRUE, align 4
  store i32 %107, i32* %3, align 4
  br label %230

108:                                              ; preds = %100
  %109 = load %struct.elf_link_hash_entry*, %struct.elf_link_hash_entry** %5, align 8
  %110 = getelementptr inbounds %struct.elf_link_hash_entry, %struct.elf_link_hash_entry* %109, i32 0, i32 5
  %111 = load i32, i32* %110, align 4
  %112 = icmp ne i32 %111, 0
  br i1 %112, label %149, label %113

113:                                              ; preds = %108
  %114 = load i32*, i32** %6, align 8
  %115 = load i32, i32* @SCORE_ELF_STUB_SECTION_NAME, align 4
  %116 = call %struct.TYPE_13__* @bfd_get_section_by_name(i32* %114, i32 %115)
  store %struct.TYPE_13__* %116, %struct.TYPE_13__** %8, align 8
  %117 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %118 = icmp ne %struct.TYPE_13__* %117, null
  %119 = zext i1 %118 to i32
  %120 = call i32 @BFD_ASSERT(i32 %119)
  %121 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %122 = load %struct.elf_link_hash_entry*, %struct.elf_link_hash_entry** %5, align 8
  %123 = getelementptr inbounds %struct.elf_link_hash_entry, %struct.elf_link_hash_entry* %122, i32 0, i32 2
  %124 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %123, i32 0, i32 1
  %125 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %124, i32 0, i32 0
  %126 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %125, i32 0, i32 1
  store %struct.TYPE_13__* %121, %struct.TYPE_13__** %126, align 8
  %127 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %128 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %127, i32 0, i32 0
  %129 = load i32, i32* %128, align 4
  %130 = load %struct.elf_link_hash_entry*, %struct.elf_link_hash_entry** %5, align 8
  %131 = getelementptr inbounds %struct.elf_link_hash_entry, %struct.elf_link_hash_entry* %130, i32 0, i32 2
  %132 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %131, i32 0, i32 1
  %133 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %132, i32 0, i32 0
  %134 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %133, i32 0, i32 0
  store i32 %129, i32* %134, align 8
  %135 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %136 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %135, i32 0, i32 0
  %137 = load i32, i32* %136, align 4
  %138 = load %struct.elf_link_hash_entry*, %struct.elf_link_hash_entry** %5, align 8
  %139 = getelementptr inbounds %struct.elf_link_hash_entry, %struct.elf_link_hash_entry* %138, i32 0, i32 4
  %140 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %139, i32 0, i32 0
  store i32 %137, i32* %140, align 8
  %141 = load i64, i64* @SCORE_FUNCTION_STUB_SIZE, align 8
  %142 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %143 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %142, i32 0, i32 0
  %144 = load i32, i32* %143, align 4
  %145 = sext i32 %144 to i64
  %146 = add nsw i64 %145, %141
  %147 = trunc i64 %146 to i32
  store i32 %147, i32* %143, align 4
  %148 = load i32, i32* @TRUE, align 4
  store i32 %148, i32* %3, align 4
  br label %230

149:                                              ; preds = %108
  br label %169

150:                                              ; preds = %95, %90
  %151 = load %struct.elf_link_hash_entry*, %struct.elf_link_hash_entry** %5, align 8
  %152 = getelementptr inbounds %struct.elf_link_hash_entry, %struct.elf_link_hash_entry* %151, i32 0, i32 0
  %153 = load i64, i64* %152, align 8
  %154 = load i64, i64* @STT_FUNC, align 8
  %155 = icmp eq i64 %153, %154
  br i1 %155, label %156, label %168

156:                                              ; preds = %150
  %157 = load %struct.elf_link_hash_entry*, %struct.elf_link_hash_entry** %5, align 8
  %158 = getelementptr inbounds %struct.elf_link_hash_entry, %struct.elf_link_hash_entry* %157, i32 0, i32 3
  %159 = load i64, i64* %158, align 8
  %160 = icmp ne i64 %159, 0
  br i1 %160, label %168, label %161

161:                                              ; preds = %156
  %162 = load %struct.elf_link_hash_entry*, %struct.elf_link_hash_entry** %5, align 8
  %163 = getelementptr inbounds %struct.elf_link_hash_entry, %struct.elf_link_hash_entry* %162, i32 0, i32 2
  %164 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %163, i32 0, i32 1
  %165 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %164, i32 0, i32 0
  %166 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %165, i32 0, i32 0
  store i32 0, i32* %166, align 8
  %167 = load i32, i32* @TRUE, align 4
  store i32 %167, i32* %3, align 4
  br label %230

168:                                              ; preds = %156, %150
  br label %169

169:                                              ; preds = %168, %149
  %170 = load %struct.elf_link_hash_entry*, %struct.elf_link_hash_entry** %5, align 8
  %171 = getelementptr inbounds %struct.elf_link_hash_entry, %struct.elf_link_hash_entry* %170, i32 0, i32 1
  %172 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %171, i32 0, i32 0
  %173 = load %struct.TYPE_22__*, %struct.TYPE_22__** %172, align 8
  %174 = icmp ne %struct.TYPE_22__* %173, null
  br i1 %174, label %175, label %228

175:                                              ; preds = %169
  %176 = load %struct.elf_link_hash_entry*, %struct.elf_link_hash_entry** %5, align 8
  %177 = getelementptr inbounds %struct.elf_link_hash_entry, %struct.elf_link_hash_entry* %176, i32 0, i32 1
  %178 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %177, i32 0, i32 0
  %179 = load %struct.TYPE_22__*, %struct.TYPE_22__** %178, align 8
  %180 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %179, i32 0, i32 0
  %181 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %180, i32 0, i32 0
  %182 = load i64, i64* %181, align 8
  %183 = load i64, i64* @bfd_link_hash_defined, align 8
  %184 = icmp eq i64 %182, %183
  br i1 %184, label %195, label %185

185:                                              ; preds = %175
  %186 = load %struct.elf_link_hash_entry*, %struct.elf_link_hash_entry** %5, align 8
  %187 = getelementptr inbounds %struct.elf_link_hash_entry, %struct.elf_link_hash_entry* %186, i32 0, i32 1
  %188 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %187, i32 0, i32 0
  %189 = load %struct.TYPE_22__*, %struct.TYPE_22__** %188, align 8
  %190 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %189, i32 0, i32 0
  %191 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %190, i32 0, i32 0
  %192 = load i64, i64* %191, align 8
  %193 = load i64, i64* @bfd_link_hash_defweak, align 8
  %194 = icmp eq i64 %192, %193
  br label %195

195:                                              ; preds = %185, %175
  %196 = phi i1 [ true, %175 ], [ %194, %185 ]
  %197 = zext i1 %196 to i32
  %198 = call i32 @BFD_ASSERT(i32 %197)
  %199 = load %struct.elf_link_hash_entry*, %struct.elf_link_hash_entry** %5, align 8
  %200 = getelementptr inbounds %struct.elf_link_hash_entry, %struct.elf_link_hash_entry* %199, i32 0, i32 1
  %201 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %200, i32 0, i32 0
  %202 = load %struct.TYPE_22__*, %struct.TYPE_22__** %201, align 8
  %203 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %202, i32 0, i32 0
  %204 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %203, i32 0, i32 1
  %205 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %204, i32 0, i32 0
  %206 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %205, i32 0, i32 1
  %207 = load %struct.TYPE_13__*, %struct.TYPE_13__** %206, align 8
  %208 = load %struct.elf_link_hash_entry*, %struct.elf_link_hash_entry** %5, align 8
  %209 = getelementptr inbounds %struct.elf_link_hash_entry, %struct.elf_link_hash_entry* %208, i32 0, i32 2
  %210 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %209, i32 0, i32 1
  %211 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %210, i32 0, i32 0
  %212 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %211, i32 0, i32 1
  store %struct.TYPE_13__* %207, %struct.TYPE_13__** %212, align 8
  %213 = load %struct.elf_link_hash_entry*, %struct.elf_link_hash_entry** %5, align 8
  %214 = getelementptr inbounds %struct.elf_link_hash_entry, %struct.elf_link_hash_entry* %213, i32 0, i32 1
  %215 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %214, i32 0, i32 0
  %216 = load %struct.TYPE_22__*, %struct.TYPE_22__** %215, align 8
  %217 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %216, i32 0, i32 0
  %218 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %217, i32 0, i32 1
  %219 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %218, i32 0, i32 0
  %220 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %219, i32 0, i32 0
  %221 = load i32, i32* %220, align 8
  %222 = load %struct.elf_link_hash_entry*, %struct.elf_link_hash_entry** %5, align 8
  %223 = getelementptr inbounds %struct.elf_link_hash_entry, %struct.elf_link_hash_entry* %222, i32 0, i32 2
  %224 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %223, i32 0, i32 1
  %225 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %224, i32 0, i32 0
  %226 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %225, i32 0, i32 0
  store i32 %221, i32* %226, align 8
  %227 = load i32, i32* @TRUE, align 4
  store i32 %227, i32* %3, align 4
  br label %230

228:                                              ; preds = %169
  %229 = load i32, i32* @TRUE, align 4
  store i32 %229, i32* %3, align 4
  br label %230

230:                                              ; preds = %228, %195, %161, %113, %106
  %231 = load i32, i32* %3, align 4
  ret i32 %231
}

declare dso_local %struct.TYPE_14__* @elf_hash_table(%struct.bfd_link_info*) #1

declare dso_local i32 @BFD_ASSERT(i32) #1

declare dso_local i32 @score_elf_allocate_dynamic_relocations(i32*, i64) #1

declare dso_local %struct.TYPE_13__* @bfd_get_section_by_name(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

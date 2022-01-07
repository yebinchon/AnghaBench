; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/bfd/extr_elf32-score.c_score_elf_create_dynamic_relocation.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/bfd/extr_elf32-score.c_score_elf_create_dynamic_relocation.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bfd_link_info = type { i32 }
%struct.TYPE_17__ = type { i64, i8* }
%struct.score_elf_link_hash_entry = type { %struct.TYPE_14__ }
%struct.TYPE_14__ = type { i32, i32 }
%struct.TYPE_16__ = type { i32, i32, i64, %struct.TYPE_19__*, i32* }
%struct.TYPE_19__ = type { i64 }
%struct.TYPE_13__ = type { i32* }
%struct.TYPE_18__ = type { %struct.TYPE_15__ }
%struct.TYPE_15__ = type { i32 }

@FALSE = common dso_local global i64 0, align 8
@MINUS_ONE = common dso_local global i64 0, align 8
@TRUE = common dso_local global i64 0, align 8
@MINUS_TWO = common dso_local global i64 0, align 8
@R_SCORE_REL32 = common dso_local global i32 0, align 4
@R_SCORE_NONE = common dso_local global i32 0, align 4
@SHF_WRITE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i32*, %struct.bfd_link_info*, %struct.TYPE_17__*, %struct.score_elf_link_hash_entry*, i64, i64*, %struct.TYPE_16__*)* @score_elf_create_dynamic_relocation to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @score_elf_create_dynamic_relocation(i32* %0, %struct.bfd_link_info* %1, %struct.TYPE_17__* %2, %struct.score_elf_link_hash_entry* %3, i64 %4, i64* %5, %struct.TYPE_16__* %6) #0 {
  %8 = alloca i64, align 8
  %9 = alloca i32*, align 8
  %10 = alloca %struct.bfd_link_info*, align 8
  %11 = alloca %struct.TYPE_17__*, align 8
  %12 = alloca %struct.score_elf_link_hash_entry*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64*, align 8
  %15 = alloca %struct.TYPE_16__*, align 8
  %16 = alloca [3 x %struct.TYPE_17__], align 16
  %17 = alloca %struct.TYPE_16__*, align 8
  %18 = alloca i32*, align 8
  %19 = alloca i32, align 4
  %20 = alloca i64, align 8
  %21 = alloca i64, align 8
  store i32* %0, i32** %9, align 8
  store %struct.bfd_link_info* %1, %struct.bfd_link_info** %10, align 8
  store %struct.TYPE_17__* %2, %struct.TYPE_17__** %11, align 8
  store %struct.score_elf_link_hash_entry* %3, %struct.score_elf_link_hash_entry** %12, align 8
  store i64 %4, i64* %13, align 8
  store i64* %5, i64** %14, align 8
  store %struct.TYPE_16__* %6, %struct.TYPE_16__** %15, align 8
  %22 = load %struct.TYPE_17__*, %struct.TYPE_17__** %11, align 8
  %23 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %22, i32 0, i32 1
  %24 = load i8*, i8** %23, align 8
  %25 = call i32 @ELF32_R_TYPE(i8* %24)
  store i32 %25, i32* %19, align 4
  %26 = load %struct.bfd_link_info*, %struct.bfd_link_info** %10, align 8
  %27 = call %struct.TYPE_13__* @elf_hash_table(%struct.bfd_link_info* %26)
  %28 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %27, i32 0, i32 0
  %29 = load i32*, i32** %28, align 8
  store i32* %29, i32** %18, align 8
  %30 = load i32*, i32** %18, align 8
  %31 = load i64, i64* @FALSE, align 8
  %32 = call %struct.TYPE_16__* @score_elf_rel_dyn_section(i32* %30, i64 %31)
  store %struct.TYPE_16__* %32, %struct.TYPE_16__** %17, align 8
  %33 = load %struct.TYPE_16__*, %struct.TYPE_16__** %17, align 8
  %34 = icmp ne %struct.TYPE_16__* %33, null
  %35 = zext i1 %34 to i32
  %36 = call i32 @BFD_ASSERT(i32 %35)
  %37 = load %struct.TYPE_16__*, %struct.TYPE_16__** %17, align 8
  %38 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %37, i32 0, i32 4
  %39 = load i32*, i32** %38, align 8
  %40 = icmp ne i32* %39, null
  %41 = zext i1 %40 to i32
  %42 = call i32 @BFD_ASSERT(i32 %41)
  %43 = load %struct.TYPE_16__*, %struct.TYPE_16__** %17, align 8
  %44 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = load i32*, i32** %9, align 8
  %47 = call i32 @SCORE_ELF_REL_SIZE(i32* %46)
  %48 = mul nsw i32 %45, %47
  %49 = load %struct.TYPE_16__*, %struct.TYPE_16__** %17, align 8
  %50 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 4
  %52 = icmp slt i32 %48, %51
  %53 = zext i1 %52 to i32
  %54 = call i32 @BFD_ASSERT(i32 %53)
  %55 = load i32*, i32** %9, align 8
  %56 = load %struct.bfd_link_info*, %struct.bfd_link_info** %10, align 8
  %57 = load %struct.TYPE_16__*, %struct.TYPE_16__** %15, align 8
  %58 = load %struct.TYPE_17__*, %struct.TYPE_17__** %11, align 8
  %59 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %58, i64 0
  %60 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %59, i32 0, i32 0
  %61 = load i64, i64* %60, align 8
  %62 = call i8* @_bfd_elf_section_offset(i32* %55, %struct.bfd_link_info* %56, %struct.TYPE_16__* %57, i64 %61)
  %63 = ptrtoint i8* %62 to i64
  %64 = getelementptr inbounds [3 x %struct.TYPE_17__], [3 x %struct.TYPE_17__]* %16, i64 0, i64 0
  %65 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %64, i32 0, i32 0
  store i64 %63, i64* %65, align 16
  %66 = load i32*, i32** %9, align 8
  %67 = load %struct.bfd_link_info*, %struct.bfd_link_info** %10, align 8
  %68 = load %struct.TYPE_16__*, %struct.TYPE_16__** %15, align 8
  %69 = load %struct.TYPE_17__*, %struct.TYPE_17__** %11, align 8
  %70 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %69, i64 1
  %71 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %70, i32 0, i32 0
  %72 = load i64, i64* %71, align 8
  %73 = call i8* @_bfd_elf_section_offset(i32* %66, %struct.bfd_link_info* %67, %struct.TYPE_16__* %68, i64 %72)
  %74 = ptrtoint i8* %73 to i64
  %75 = getelementptr inbounds [3 x %struct.TYPE_17__], [3 x %struct.TYPE_17__]* %16, i64 0, i64 1
  %76 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %75, i32 0, i32 0
  store i64 %74, i64* %76, align 16
  %77 = load i32*, i32** %9, align 8
  %78 = load %struct.bfd_link_info*, %struct.bfd_link_info** %10, align 8
  %79 = load %struct.TYPE_16__*, %struct.TYPE_16__** %15, align 8
  %80 = load %struct.TYPE_17__*, %struct.TYPE_17__** %11, align 8
  %81 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %80, i64 2
  %82 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %81, i32 0, i32 0
  %83 = load i64, i64* %82, align 8
  %84 = call i8* @_bfd_elf_section_offset(i32* %77, %struct.bfd_link_info* %78, %struct.TYPE_16__* %79, i64 %83)
  %85 = ptrtoint i8* %84 to i64
  %86 = getelementptr inbounds [3 x %struct.TYPE_17__], [3 x %struct.TYPE_17__]* %16, i64 0, i64 2
  %87 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %86, i32 0, i32 0
  store i64 %85, i64* %87, align 16
  %88 = getelementptr inbounds [3 x %struct.TYPE_17__], [3 x %struct.TYPE_17__]* %16, i64 0, i64 0
  %89 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %88, i32 0, i32 0
  %90 = load i64, i64* %89, align 16
  %91 = load i64, i64* @MINUS_ONE, align 8
  %92 = icmp eq i64 %90, %91
  br i1 %92, label %93, label %95

93:                                               ; preds = %7
  %94 = load i64, i64* @TRUE, align 8
  store i64 %94, i64* %8, align 8
  br label %227

95:                                               ; preds = %7
  %96 = getelementptr inbounds [3 x %struct.TYPE_17__], [3 x %struct.TYPE_17__]* %16, i64 0, i64 0
  %97 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %96, i32 0, i32 0
  %98 = load i64, i64* %97, align 16
  %99 = load i64, i64* @MINUS_TWO, align 8
  %100 = icmp eq i64 %98, %99
  br i1 %100, label %101, label %107

101:                                              ; preds = %95
  %102 = load i64, i64* %13, align 8
  %103 = load i64*, i64** %14, align 8
  %104 = load i64, i64* %103, align 8
  %105 = add nsw i64 %104, %102
  store i64 %105, i64* %103, align 8
  %106 = load i64, i64* @TRUE, align 8
  store i64 %106, i64* %8, align 8
  br label %227

107:                                              ; preds = %95
  %108 = load %struct.score_elf_link_hash_entry*, %struct.score_elf_link_hash_entry** %12, align 8
  %109 = icmp ne %struct.score_elf_link_hash_entry* %108, null
  br i1 %109, label %110, label %134

110:                                              ; preds = %107
  %111 = load %struct.bfd_link_info*, %struct.bfd_link_info** %10, align 8
  %112 = getelementptr inbounds %struct.bfd_link_info, %struct.bfd_link_info* %111, i32 0, i32 0
  %113 = load i32, i32* %112, align 4
  %114 = icmp ne i32 %113, 0
  br i1 %114, label %115, label %121

115:                                              ; preds = %110
  %116 = load %struct.score_elf_link_hash_entry*, %struct.score_elf_link_hash_entry** %12, align 8
  %117 = getelementptr inbounds %struct.score_elf_link_hash_entry, %struct.score_elf_link_hash_entry* %116, i32 0, i32 0
  %118 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %117, i32 0, i32 1
  %119 = load i32, i32* %118, align 4
  %120 = icmp ne i32 %119, 0
  br i1 %120, label %134, label %121

121:                                              ; preds = %115, %110
  %122 = load %struct.score_elf_link_hash_entry*, %struct.score_elf_link_hash_entry** %12, align 8
  %123 = getelementptr inbounds %struct.score_elf_link_hash_entry, %struct.score_elf_link_hash_entry* %122, i32 0, i32 0
  %124 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %123, i32 0, i32 0
  %125 = load i32, i32* %124, align 4
  %126 = icmp ne i32 %125, -1
  br i1 %126, label %127, label %134

127:                                              ; preds = %121
  %128 = load %struct.score_elf_link_hash_entry*, %struct.score_elf_link_hash_entry** %12, align 8
  %129 = getelementptr inbounds %struct.score_elf_link_hash_entry, %struct.score_elf_link_hash_entry* %128, i32 0, i32 0
  %130 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %129, i32 0, i32 0
  %131 = load i32, i32* %130, align 4
  %132 = sext i32 %131 to i64
  store i64 %132, i64* %20, align 8
  %133 = load i64, i64* @FALSE, align 8
  store i64 %133, i64* %21, align 8
  br label %136

134:                                              ; preds = %121, %115, %107
  store i64 0, i64* %20, align 8
  %135 = load i64, i64* @TRUE, align 8
  store i64 %135, i64* %21, align 8
  br label %136

136:                                              ; preds = %134, %127
  %137 = load i64, i64* %21, align 8
  %138 = icmp ne i64 %137, 0
  br i1 %138, label %139, label %148

139:                                              ; preds = %136
  %140 = load i32, i32* %19, align 4
  %141 = load i32, i32* @R_SCORE_REL32, align 4
  %142 = icmp ne i32 %140, %141
  br i1 %142, label %143, label %148

143:                                              ; preds = %139
  %144 = load i64, i64* %13, align 8
  %145 = load i64*, i64** %14, align 8
  %146 = load i64, i64* %145, align 8
  %147 = add nsw i64 %146, %144
  store i64 %147, i64* %145, align 8
  br label %148

148:                                              ; preds = %143, %139, %136
  %149 = load i64, i64* %20, align 8
  %150 = load i32, i32* @R_SCORE_REL32, align 4
  %151 = call i8* @ELF32_R_INFO(i64 %149, i32 %150)
  %152 = getelementptr inbounds [3 x %struct.TYPE_17__], [3 x %struct.TYPE_17__]* %16, i64 0, i64 0
  %153 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %152, i32 0, i32 1
  store i8* %151, i8** %153, align 8
  %154 = load i32, i32* @R_SCORE_NONE, align 4
  %155 = call i8* @ELF32_R_INFO(i64 0, i32 %154)
  %156 = getelementptr inbounds [3 x %struct.TYPE_17__], [3 x %struct.TYPE_17__]* %16, i64 0, i64 1
  %157 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %156, i32 0, i32 1
  store i8* %155, i8** %157, align 8
  %158 = load i32, i32* @R_SCORE_NONE, align 4
  %159 = call i8* @ELF32_R_INFO(i64 0, i32 %158)
  %160 = getelementptr inbounds [3 x %struct.TYPE_17__], [3 x %struct.TYPE_17__]* %16, i64 0, i64 2
  %161 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %160, i32 0, i32 1
  store i8* %159, i8** %161, align 8
  %162 = load %struct.TYPE_16__*, %struct.TYPE_16__** %15, align 8
  %163 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %162, i32 0, i32 3
  %164 = load %struct.TYPE_19__*, %struct.TYPE_19__** %163, align 8
  %165 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %164, i32 0, i32 0
  %166 = load i64, i64* %165, align 8
  %167 = load %struct.TYPE_16__*, %struct.TYPE_16__** %15, align 8
  %168 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %167, i32 0, i32 2
  %169 = load i64, i64* %168, align 8
  %170 = add nsw i64 %166, %169
  %171 = getelementptr inbounds [3 x %struct.TYPE_17__], [3 x %struct.TYPE_17__]* %16, i64 0, i64 0
  %172 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %171, i32 0, i32 0
  %173 = load i64, i64* %172, align 16
  %174 = add nsw i64 %173, %170
  store i64 %174, i64* %172, align 16
  %175 = load %struct.TYPE_16__*, %struct.TYPE_16__** %15, align 8
  %176 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %175, i32 0, i32 3
  %177 = load %struct.TYPE_19__*, %struct.TYPE_19__** %176, align 8
  %178 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %177, i32 0, i32 0
  %179 = load i64, i64* %178, align 8
  %180 = load %struct.TYPE_16__*, %struct.TYPE_16__** %15, align 8
  %181 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %180, i32 0, i32 2
  %182 = load i64, i64* %181, align 8
  %183 = add nsw i64 %179, %182
  %184 = getelementptr inbounds [3 x %struct.TYPE_17__], [3 x %struct.TYPE_17__]* %16, i64 0, i64 1
  %185 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %184, i32 0, i32 0
  %186 = load i64, i64* %185, align 16
  %187 = add nsw i64 %186, %183
  store i64 %187, i64* %185, align 16
  %188 = load %struct.TYPE_16__*, %struct.TYPE_16__** %15, align 8
  %189 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %188, i32 0, i32 3
  %190 = load %struct.TYPE_19__*, %struct.TYPE_19__** %189, align 8
  %191 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %190, i32 0, i32 0
  %192 = load i64, i64* %191, align 8
  %193 = load %struct.TYPE_16__*, %struct.TYPE_16__** %15, align 8
  %194 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %193, i32 0, i32 2
  %195 = load i64, i64* %194, align 8
  %196 = add nsw i64 %192, %195
  %197 = getelementptr inbounds [3 x %struct.TYPE_17__], [3 x %struct.TYPE_17__]* %16, i64 0, i64 2
  %198 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %197, i32 0, i32 0
  %199 = load i64, i64* %198, align 16
  %200 = add nsw i64 %199, %196
  store i64 %200, i64* %198, align 16
  %201 = load i32*, i32** %9, align 8
  %202 = getelementptr inbounds [3 x %struct.TYPE_17__], [3 x %struct.TYPE_17__]* %16, i64 0, i64 0
  %203 = load %struct.TYPE_16__*, %struct.TYPE_16__** %17, align 8
  %204 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %203, i32 0, i32 4
  %205 = load i32*, i32** %204, align 8
  %206 = load %struct.TYPE_16__*, %struct.TYPE_16__** %17, align 8
  %207 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %206, i32 0, i32 0
  %208 = load i32, i32* %207, align 8
  %209 = sext i32 %208 to i64
  %210 = mul i64 %209, 4
  %211 = getelementptr inbounds i32, i32* %205, i64 %210
  %212 = call i32 @bfd_elf32_swap_reloc_out(i32* %201, %struct.TYPE_17__* %202, i32* %211)
  %213 = load %struct.TYPE_16__*, %struct.TYPE_16__** %17, align 8
  %214 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %213, i32 0, i32 0
  %215 = load i32, i32* %214, align 8
  %216 = add nsw i32 %215, 1
  store i32 %216, i32* %214, align 8
  %217 = load i32, i32* @SHF_WRITE, align 4
  %218 = load %struct.TYPE_16__*, %struct.TYPE_16__** %15, align 8
  %219 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %218, i32 0, i32 3
  %220 = load %struct.TYPE_19__*, %struct.TYPE_19__** %219, align 8
  %221 = call %struct.TYPE_18__* @elf_section_data(%struct.TYPE_19__* %220)
  %222 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %221, i32 0, i32 0
  %223 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %222, i32 0, i32 0
  %224 = load i32, i32* %223, align 4
  %225 = or i32 %224, %217
  store i32 %225, i32* %223, align 4
  %226 = load i64, i64* @TRUE, align 8
  store i64 %226, i64* %8, align 8
  br label %227

227:                                              ; preds = %148, %101, %93
  %228 = load i64, i64* %8, align 8
  ret i64 %228
}

declare dso_local i32 @ELF32_R_TYPE(i8*) #1

declare dso_local %struct.TYPE_13__* @elf_hash_table(%struct.bfd_link_info*) #1

declare dso_local %struct.TYPE_16__* @score_elf_rel_dyn_section(i32*, i64) #1

declare dso_local i32 @BFD_ASSERT(i32) #1

declare dso_local i32 @SCORE_ELF_REL_SIZE(i32*) #1

declare dso_local i8* @_bfd_elf_section_offset(i32*, %struct.bfd_link_info*, %struct.TYPE_16__*, i64) #1

declare dso_local i8* @ELF32_R_INFO(i64, i32) #1

declare dso_local i32 @bfd_elf32_swap_reloc_out(i32*, %struct.TYPE_17__*, i32*) #1

declare dso_local %struct.TYPE_18__* @elf_section_data(%struct.TYPE_19__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

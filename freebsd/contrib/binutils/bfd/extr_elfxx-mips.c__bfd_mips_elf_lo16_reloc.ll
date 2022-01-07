; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/bfd/extr_elfxx-mips.c__bfd_mips_elf_lo16_reloc.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/bfd/extr_elfxx-mips.c__bfd_mips_elf_lo16_reloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mips_hi16 = type { i8*, %struct.mips_hi16*, i32*, %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32, i32, %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i64 }

@bfd_reloc_outofrange = common dso_local global i64 0, align 8
@FALSE = common dso_local global i32 0, align 4
@mips_hi16_list = common dso_local global %struct.mips_hi16* null, align 8
@R_MIPS_GOT16 = common dso_local global i64 0, align 8
@R_MIPS_HI16 = common dso_local global i32 0, align 4
@bfd_reloc_ok = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @_bfd_mips_elf_lo16_reloc(i32* %0, %struct.TYPE_5__* %1, i32* %2, i8* %3, i32* %4, i32* %5, i8** %6) #0 {
  %8 = alloca i64, align 8
  %9 = alloca i32*, align 8
  %10 = alloca %struct.TYPE_5__*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i8**, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32*, align 8
  %18 = alloca i64, align 8
  %19 = alloca %struct.mips_hi16*, align 8
  store i32* %0, i32** %9, align 8
  store %struct.TYPE_5__* %1, %struct.TYPE_5__** %10, align 8
  store i32* %2, i32** %11, align 8
  store i8* %3, i8** %12, align 8
  store i32* %4, i32** %13, align 8
  store i32* %5, i32** %14, align 8
  store i8** %6, i8*** %15, align 8
  %20 = load i8*, i8** %12, align 8
  %21 = bitcast i8* %20 to i32*
  %22 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %23 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds i32, i32* %21, i64 %25
  store i32* %26, i32** %17, align 8
  %27 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %28 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = sext i32 %29 to i64
  %31 = load i32*, i32** %9, align 8
  %32 = load i32*, i32** %13, align 8
  %33 = call i64 @bfd_get_section_limit(i32* %31, i32* %32)
  %34 = icmp sgt i64 %30, %33
  br i1 %34, label %35, label %37

35:                                               ; preds = %7
  %36 = load i64, i64* @bfd_reloc_outofrange, align 8
  store i64 %36, i64* %8, align 8
  br label %122

37:                                               ; preds = %7
  %38 = load i32*, i32** %9, align 8
  %39 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %40 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %39, i32 0, i32 2
  %41 = load %struct.TYPE_6__*, %struct.TYPE_6__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = load i32, i32* @FALSE, align 4
  %45 = load i32*, i32** %17, align 8
  %46 = call i32 @_bfd_mips16_elf_reloc_unshuffle(i32* %38, i64 %43, i32 %44, i32* %45)
  %47 = load i32*, i32** %9, align 8
  %48 = load i32*, i32** %17, align 8
  %49 = call i32 @bfd_get_32(i32* %47, i32* %48)
  store i32 %49, i32* %16, align 4
  %50 = load i32*, i32** %9, align 8
  %51 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %52 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %51, i32 0, i32 2
  %53 = load %struct.TYPE_6__*, %struct.TYPE_6__** %52, align 8
  %54 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %53, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  %56 = load i32, i32* @FALSE, align 4
  %57 = load i32*, i32** %17, align 8
  %58 = call i32 @_bfd_mips16_elf_reloc_shuffle(i32* %50, i64 %55, i32 %56, i32* %57)
  br label %59

59:                                               ; preds = %107, %37
  %60 = load %struct.mips_hi16*, %struct.mips_hi16** @mips_hi16_list, align 8
  %61 = icmp ne %struct.mips_hi16* %60, null
  br i1 %61, label %62, label %113

62:                                               ; preds = %59
  %63 = load %struct.mips_hi16*, %struct.mips_hi16** @mips_hi16_list, align 8
  store %struct.mips_hi16* %63, %struct.mips_hi16** %19, align 8
  %64 = load %struct.mips_hi16*, %struct.mips_hi16** %19, align 8
  %65 = getelementptr inbounds %struct.mips_hi16, %struct.mips_hi16* %64, i32 0, i32 3
  %66 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %65, i32 0, i32 2
  %67 = load %struct.TYPE_6__*, %struct.TYPE_6__** %66, align 8
  %68 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %67, i32 0, i32 0
  %69 = load i64, i64* %68, align 8
  %70 = load i64, i64* @R_MIPS_GOT16, align 8
  %71 = icmp eq i64 %69, %70
  br i1 %71, label %72, label %80

72:                                               ; preds = %62
  %73 = load i32*, i32** %9, align 8
  %74 = load i32, i32* @R_MIPS_HI16, align 4
  %75 = load i32, i32* @FALSE, align 4
  %76 = call %struct.TYPE_6__* @MIPS_ELF_RTYPE_TO_HOWTO(i32* %73, i32 %74, i32 %75)
  %77 = load %struct.mips_hi16*, %struct.mips_hi16** %19, align 8
  %78 = getelementptr inbounds %struct.mips_hi16, %struct.mips_hi16* %77, i32 0, i32 3
  %79 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %78, i32 0, i32 2
  store %struct.TYPE_6__* %76, %struct.TYPE_6__** %79, align 8
  br label %80

80:                                               ; preds = %72, %62
  %81 = load i32, i32* %16, align 4
  %82 = add nsw i32 %81, 32768
  %83 = and i32 %82, 65535
  %84 = load %struct.mips_hi16*, %struct.mips_hi16** %19, align 8
  %85 = getelementptr inbounds %struct.mips_hi16, %struct.mips_hi16* %84, i32 0, i32 3
  %86 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %85, i32 0, i32 1
  %87 = load i32, i32* %86, align 4
  %88 = add nsw i32 %87, %83
  store i32 %88, i32* %86, align 4
  %89 = load i32*, i32** %9, align 8
  %90 = load %struct.mips_hi16*, %struct.mips_hi16** %19, align 8
  %91 = getelementptr inbounds %struct.mips_hi16, %struct.mips_hi16* %90, i32 0, i32 3
  %92 = load i32*, i32** %11, align 8
  %93 = load %struct.mips_hi16*, %struct.mips_hi16** %19, align 8
  %94 = getelementptr inbounds %struct.mips_hi16, %struct.mips_hi16* %93, i32 0, i32 0
  %95 = load i8*, i8** %94, align 8
  %96 = load %struct.mips_hi16*, %struct.mips_hi16** %19, align 8
  %97 = getelementptr inbounds %struct.mips_hi16, %struct.mips_hi16* %96, i32 0, i32 2
  %98 = load i32*, i32** %97, align 8
  %99 = load i32*, i32** %14, align 8
  %100 = load i8**, i8*** %15, align 8
  %101 = call i64 @_bfd_mips_elf_generic_reloc(i32* %89, %struct.TYPE_5__* %91, i32* %92, i8* %95, i32* %98, i32* %99, i8** %100)
  store i64 %101, i64* %18, align 8
  %102 = load i64, i64* %18, align 8
  %103 = load i64, i64* @bfd_reloc_ok, align 8
  %104 = icmp ne i64 %102, %103
  br i1 %104, label %105, label %107

105:                                              ; preds = %80
  %106 = load i64, i64* %18, align 8
  store i64 %106, i64* %8, align 8
  br label %122

107:                                              ; preds = %80
  %108 = load %struct.mips_hi16*, %struct.mips_hi16** %19, align 8
  %109 = getelementptr inbounds %struct.mips_hi16, %struct.mips_hi16* %108, i32 0, i32 1
  %110 = load %struct.mips_hi16*, %struct.mips_hi16** %109, align 8
  store %struct.mips_hi16* %110, %struct.mips_hi16** @mips_hi16_list, align 8
  %111 = load %struct.mips_hi16*, %struct.mips_hi16** %19, align 8
  %112 = call i32 @free(%struct.mips_hi16* %111)
  br label %59

113:                                              ; preds = %59
  %114 = load i32*, i32** %9, align 8
  %115 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %116 = load i32*, i32** %11, align 8
  %117 = load i8*, i8** %12, align 8
  %118 = load i32*, i32** %13, align 8
  %119 = load i32*, i32** %14, align 8
  %120 = load i8**, i8*** %15, align 8
  %121 = call i64 @_bfd_mips_elf_generic_reloc(i32* %114, %struct.TYPE_5__* %115, i32* %116, i8* %117, i32* %118, i32* %119, i8** %120)
  store i64 %121, i64* %8, align 8
  br label %122

122:                                              ; preds = %113, %105, %35
  %123 = load i64, i64* %8, align 8
  ret i64 %123
}

declare dso_local i64 @bfd_get_section_limit(i32*, i32*) #1

declare dso_local i32 @_bfd_mips16_elf_reloc_unshuffle(i32*, i64, i32, i32*) #1

declare dso_local i32 @bfd_get_32(i32*, i32*) #1

declare dso_local i32 @_bfd_mips16_elf_reloc_shuffle(i32*, i64, i32, i32*) #1

declare dso_local %struct.TYPE_6__* @MIPS_ELF_RTYPE_TO_HOWTO(i32*, i32, i32) #1

declare dso_local i64 @_bfd_mips_elf_generic_reloc(i32*, %struct.TYPE_5__*, i32*, i8*, i32*, i32*, i8**) #1

declare dso_local i32 @free(%struct.mips_hi16*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

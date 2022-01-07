; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/bfd/extr_elfxx-mips.c__bfd_mips_elf_gprel16_with_gp.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/bfd/extr_elfxx-mips.c__bfd_mips_elf_gprel16_with_gp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { i32, %struct.TYPE_15__*, i64 }
%struct.TYPE_15__ = type { i64, %struct.TYPE_11__* }
%struct.TYPE_11__ = type { i64 }
%struct.TYPE_14__ = type { i64, i32, %struct.TYPE_16__* }
%struct.TYPE_16__ = type { i64 }
%struct.TYPE_13__ = type { i32 }

@bfd_reloc_outofrange = common dso_local global i64 0, align 8
@BSF_SECTION_SYM = common dso_local global i32 0, align 4
@bfd_reloc_ok = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @_bfd_mips_elf_gprel16_with_gp(i32* %0, %struct.TYPE_12__* %1, %struct.TYPE_14__* %2, %struct.TYPE_13__* %3, i64 %4, i8* %5, i64 %6) #0 {
  %8 = alloca i64, align 8
  %9 = alloca i32*, align 8
  %10 = alloca %struct.TYPE_12__*, align 8
  %11 = alloca %struct.TYPE_14__*, align 8
  %12 = alloca %struct.TYPE_13__*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i32, align 4
  %18 = alloca i64, align 8
  store i32* %0, i32** %9, align 8
  store %struct.TYPE_12__* %1, %struct.TYPE_12__** %10, align 8
  store %struct.TYPE_14__* %2, %struct.TYPE_14__** %11, align 8
  store %struct.TYPE_13__* %3, %struct.TYPE_13__** %12, align 8
  store i64 %4, i64* %13, align 8
  store i8* %5, i8** %14, align 8
  store i64 %6, i64* %15, align 8
  %19 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %20 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %19, i32 0, i32 1
  %21 = load %struct.TYPE_15__*, %struct.TYPE_15__** %20, align 8
  %22 = call i64 @bfd_is_com_section(%struct.TYPE_15__* %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %25

24:                                               ; preds = %7
  store i64 0, i64* %16, align 8
  br label %29

25:                                               ; preds = %7
  %26 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %27 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %26, i32 0, i32 2
  %28 = load i64, i64* %27, align 8
  store i64 %28, i64* %16, align 8
  br label %29

29:                                               ; preds = %25, %24
  %30 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %31 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %30, i32 0, i32 1
  %32 = load %struct.TYPE_15__*, %struct.TYPE_15__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %32, i32 0, i32 1
  %34 = load %struct.TYPE_11__*, %struct.TYPE_11__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = load i64, i64* %16, align 8
  %38 = add nsw i64 %37, %36
  store i64 %38, i64* %16, align 8
  %39 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %40 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %39, i32 0, i32 1
  %41 = load %struct.TYPE_15__*, %struct.TYPE_15__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = load i64, i64* %16, align 8
  %45 = add nsw i64 %44, %43
  store i64 %45, i64* %16, align 8
  %46 = load %struct.TYPE_14__*, %struct.TYPE_14__** %11, align 8
  %47 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = load i32*, i32** %9, align 8
  %50 = load %struct.TYPE_13__*, %struct.TYPE_13__** %12, align 8
  %51 = call i64 @bfd_get_section_limit(i32* %49, %struct.TYPE_13__* %50)
  %52 = icmp sgt i64 %48, %51
  br i1 %52, label %53, label %55

53:                                               ; preds = %29
  %54 = load i64, i64* @bfd_reloc_outofrange, align 8
  store i64 %54, i64* %8, align 8
  br label %122

55:                                               ; preds = %29
  %56 = load %struct.TYPE_14__*, %struct.TYPE_14__** %11, align 8
  %57 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 8
  store i32 %58, i32* %17, align 4
  %59 = load i32, i32* %17, align 4
  %60 = call i32 @_bfd_mips_elf_sign_extend(i32 %59, i32 16)
  %61 = load i64, i64* %13, align 8
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %70

63:                                               ; preds = %55
  %64 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %65 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 8
  %67 = load i32, i32* @BSF_SECTION_SYM, align 4
  %68 = and i32 %66, %67
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %78

70:                                               ; preds = %63, %55
  %71 = load i64, i64* %16, align 8
  %72 = load i64, i64* %15, align 8
  %73 = sub nsw i64 %71, %72
  %74 = load i32, i32* %17, align 4
  %75 = sext i32 %74 to i64
  %76 = add nsw i64 %75, %73
  %77 = trunc i64 %76 to i32
  store i32 %77, i32* %17, align 4
  br label %78

78:                                               ; preds = %70, %63
  %79 = load %struct.TYPE_14__*, %struct.TYPE_14__** %11, align 8
  %80 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %79, i32 0, i32 2
  %81 = load %struct.TYPE_16__*, %struct.TYPE_16__** %80, align 8
  %82 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %81, i32 0, i32 0
  %83 = load i64, i64* %82, align 8
  %84 = icmp ne i64 %83, 0
  br i1 %84, label %85, label %104

85:                                               ; preds = %78
  %86 = load %struct.TYPE_14__*, %struct.TYPE_14__** %11, align 8
  %87 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %86, i32 0, i32 2
  %88 = load %struct.TYPE_16__*, %struct.TYPE_16__** %87, align 8
  %89 = load i32*, i32** %9, align 8
  %90 = load i32, i32* %17, align 4
  %91 = load i8*, i8** %14, align 8
  %92 = bitcast i8* %91 to i32*
  %93 = load %struct.TYPE_14__*, %struct.TYPE_14__** %11, align 8
  %94 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %93, i32 0, i32 0
  %95 = load i64, i64* %94, align 8
  %96 = getelementptr inbounds i32, i32* %92, i64 %95
  %97 = call i64 @_bfd_relocate_contents(%struct.TYPE_16__* %88, i32* %89, i32 %90, i32* %96)
  store i64 %97, i64* %18, align 8
  %98 = load i64, i64* %18, align 8
  %99 = load i64, i64* @bfd_reloc_ok, align 8
  %100 = icmp ne i64 %98, %99
  br i1 %100, label %101, label %103

101:                                              ; preds = %85
  %102 = load i64, i64* %18, align 8
  store i64 %102, i64* %8, align 8
  br label %122

103:                                              ; preds = %85
  br label %108

104:                                              ; preds = %78
  %105 = load i32, i32* %17, align 4
  %106 = load %struct.TYPE_14__*, %struct.TYPE_14__** %11, align 8
  %107 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %106, i32 0, i32 1
  store i32 %105, i32* %107, align 8
  br label %108

108:                                              ; preds = %104, %103
  %109 = load i64, i64* %13, align 8
  %110 = icmp ne i64 %109, 0
  br i1 %110, label %111, label %120

111:                                              ; preds = %108
  %112 = load %struct.TYPE_13__*, %struct.TYPE_13__** %12, align 8
  %113 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %112, i32 0, i32 0
  %114 = load i32, i32* %113, align 4
  %115 = sext i32 %114 to i64
  %116 = load %struct.TYPE_14__*, %struct.TYPE_14__** %11, align 8
  %117 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %116, i32 0, i32 0
  %118 = load i64, i64* %117, align 8
  %119 = add nsw i64 %118, %115
  store i64 %119, i64* %117, align 8
  br label %120

120:                                              ; preds = %111, %108
  %121 = load i64, i64* @bfd_reloc_ok, align 8
  store i64 %121, i64* %8, align 8
  br label %122

122:                                              ; preds = %120, %101, %53
  %123 = load i64, i64* %8, align 8
  ret i64 %123
}

declare dso_local i64 @bfd_is_com_section(%struct.TYPE_15__*) #1

declare dso_local i64 @bfd_get_section_limit(i32*, %struct.TYPE_13__*) #1

declare dso_local i32 @_bfd_mips_elf_sign_extend(i32, i32) #1

declare dso_local i64 @_bfd_relocate_contents(%struct.TYPE_16__*, i32*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/bfd/extr_elf64-sparc.c_elf64_sparc_canonicalize_dynamic_reloc.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/bfd/extr_elf64-sparc.c_elf64_sparc_canonicalize_dynamic_reloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { %struct.TYPE_13__* }
%struct.TYPE_13__ = type { i32*, %struct.TYPE_13__* }
%struct.TYPE_14__ = type { %struct.TYPE_11__ }
%struct.TYPE_11__ = type { i64, i64 }

@bfd_error_invalid_operation = common dso_local global i32 0, align 4
@SHT_RELA = common dso_local global i64 0, align 8
@TRUE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.TYPE_12__*, i32**, i32**)* @elf64_sparc_canonicalize_dynamic_reloc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @elf64_sparc_canonicalize_dynamic_reloc(%struct.TYPE_12__* %0, i32** %1, i32** %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca %struct.TYPE_12__*, align 8
  %6 = alloca i32**, align 8
  %7 = alloca i32**, align 8
  %8 = alloca %struct.TYPE_13__*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  store %struct.TYPE_12__* %0, %struct.TYPE_12__** %5, align 8
  store i32** %1, i32*** %6, align 8
  store i32** %2, i32*** %7, align 8
  %13 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %14 = call i64 @elf_dynsymtab(%struct.TYPE_12__* %13)
  %15 = icmp eq i64 %14, 0
  br i1 %15, label %16, label %19

16:                                               ; preds = %3
  %17 = load i32, i32* @bfd_error_invalid_operation, align 4
  %18 = call i32 @bfd_set_error(i32 %17)
  store i64 -1, i64* %4, align 8
  br label %81

19:                                               ; preds = %3
  store i64 0, i64* %9, align 8
  %20 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %21 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %20, i32 0, i32 0
  %22 = load %struct.TYPE_13__*, %struct.TYPE_13__** %21, align 8
  store %struct.TYPE_13__* %22, %struct.TYPE_13__** %8, align 8
  br label %23

23:                                               ; preds = %74, %19
  %24 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %25 = icmp ne %struct.TYPE_13__* %24, null
  br i1 %25, label %26, label %78

26:                                               ; preds = %23
  %27 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %28 = call %struct.TYPE_14__* @elf_section_data(%struct.TYPE_13__* %27)
  %29 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %33 = call i64 @elf_dynsymtab(%struct.TYPE_12__* %32)
  %34 = icmp eq i64 %31, %33
  br i1 %34, label %35, label %73

35:                                               ; preds = %26
  %36 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %37 = call %struct.TYPE_14__* @elf_section_data(%struct.TYPE_13__* %36)
  %38 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %38, i32 0, i32 1
  %40 = load i64, i64* %39, align 8
  %41 = load i64, i64* @SHT_RELA, align 8
  %42 = icmp eq i64 %40, %41
  br i1 %42, label %43, label %73

43:                                               ; preds = %35
  %44 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %45 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %46 = load i32**, i32*** %7, align 8
  %47 = load i32, i32* @TRUE, align 4
  %48 = call i32 @elf64_sparc_slurp_reloc_table(%struct.TYPE_12__* %44, %struct.TYPE_13__* %45, i32** %46, i32 %47)
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %51, label %50

50:                                               ; preds = %43
  store i64 -1, i64* %4, align 8
  br label %81

51:                                               ; preds = %43
  %52 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %53 = call i64 @canon_reloc_count(%struct.TYPE_13__* %52)
  store i64 %53, i64* %11, align 8
  %54 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %55 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %54, i32 0, i32 0
  %56 = load i32*, i32** %55, align 8
  store i32* %56, i32** %10, align 8
  store i64 0, i64* %12, align 8
  br label %57

57:                                               ; preds = %66, %51
  %58 = load i64, i64* %12, align 8
  %59 = load i64, i64* %11, align 8
  %60 = icmp slt i64 %58, %59
  br i1 %60, label %61, label %69

61:                                               ; preds = %57
  %62 = load i32*, i32** %10, align 8
  %63 = getelementptr inbounds i32, i32* %62, i32 1
  store i32* %63, i32** %10, align 8
  %64 = load i32**, i32*** %6, align 8
  %65 = getelementptr inbounds i32*, i32** %64, i32 1
  store i32** %65, i32*** %6, align 8
  store i32* %62, i32** %64, align 8
  br label %66

66:                                               ; preds = %61
  %67 = load i64, i64* %12, align 8
  %68 = add nsw i64 %67, 1
  store i64 %68, i64* %12, align 8
  br label %57

69:                                               ; preds = %57
  %70 = load i64, i64* %11, align 8
  %71 = load i64, i64* %9, align 8
  %72 = add nsw i64 %71, %70
  store i64 %72, i64* %9, align 8
  br label %73

73:                                               ; preds = %69, %35, %26
  br label %74

74:                                               ; preds = %73
  %75 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %76 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %75, i32 0, i32 1
  %77 = load %struct.TYPE_13__*, %struct.TYPE_13__** %76, align 8
  store %struct.TYPE_13__* %77, %struct.TYPE_13__** %8, align 8
  br label %23

78:                                               ; preds = %23
  %79 = load i32**, i32*** %6, align 8
  store i32* null, i32** %79, align 8
  %80 = load i64, i64* %9, align 8
  store i64 %80, i64* %4, align 8
  br label %81

81:                                               ; preds = %78, %50, %16
  %82 = load i64, i64* %4, align 8
  ret i64 %82
}

declare dso_local i64 @elf_dynsymtab(%struct.TYPE_12__*) #1

declare dso_local i32 @bfd_set_error(i32) #1

declare dso_local %struct.TYPE_14__* @elf_section_data(%struct.TYPE_13__*) #1

declare dso_local i32 @elf64_sparc_slurp_reloc_table(%struct.TYPE_12__*, %struct.TYPE_13__*, i32**, i32) #1

declare dso_local i64 @canon_reloc_count(%struct.TYPE_13__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

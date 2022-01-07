; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/bfd/extr_dwarf2.c__bfd_dwarf2_cleanup_debug_info.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/bfd/extr_dwarf2.c__bfd_dwarf2_cleanup_debug_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.comp_unit = type { %struct.TYPE_3__*, %struct.abbrev_info**, %struct.comp_unit* }
%struct.TYPE_3__ = type { i32, i32 }
%struct.abbrev_info = type { %struct.abbrev_info*, i32 }
%struct.dwarf2_debug = type { i32, i32, i32, %struct.comp_unit* }
%struct.TYPE_4__ = type { %struct.dwarf2_debug* }

@ABBREV_HASH_SIZE = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @_bfd_dwarf2_cleanup_debug_info(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca %struct.comp_unit*, align 8
  %4 = alloca %struct.dwarf2_debug*, align 8
  %5 = alloca %struct.abbrev_info**, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.abbrev_info*, align 8
  store i32* %0, i32** %2, align 8
  %8 = load i32*, i32** %2, align 8
  %9 = icmp eq i32* %8, null
  br i1 %9, label %14, label %10

10:                                               ; preds = %1
  %11 = load i32*, i32** %2, align 8
  %12 = call %struct.TYPE_4__* @elf_tdata(i32* %11)
  %13 = icmp eq %struct.TYPE_4__* %12, null
  br i1 %13, label %14, label %15

14:                                               ; preds = %10, %1
  br label %94

15:                                               ; preds = %10
  %16 = load i32*, i32** %2, align 8
  %17 = call %struct.TYPE_4__* @elf_tdata(i32* %16)
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 0
  %19 = load %struct.dwarf2_debug*, %struct.dwarf2_debug** %18, align 8
  store %struct.dwarf2_debug* %19, %struct.dwarf2_debug** %4, align 8
  %20 = load %struct.dwarf2_debug*, %struct.dwarf2_debug** %4, align 8
  %21 = icmp eq %struct.dwarf2_debug* %20, null
  br i1 %21, label %22, label %23

22:                                               ; preds = %15
  br label %94

23:                                               ; preds = %15
  %24 = load %struct.dwarf2_debug*, %struct.dwarf2_debug** %4, align 8
  %25 = getelementptr inbounds %struct.dwarf2_debug, %struct.dwarf2_debug* %24, i32 0, i32 3
  %26 = load %struct.comp_unit*, %struct.comp_unit** %25, align 8
  store %struct.comp_unit* %26, %struct.comp_unit** %3, align 8
  br label %27

27:                                               ; preds = %77, %23
  %28 = load %struct.comp_unit*, %struct.comp_unit** %3, align 8
  %29 = icmp ne %struct.comp_unit* %28, null
  br i1 %29, label %30, label %81

30:                                               ; preds = %27
  %31 = load %struct.comp_unit*, %struct.comp_unit** %3, align 8
  %32 = getelementptr inbounds %struct.comp_unit, %struct.comp_unit* %31, i32 0, i32 1
  %33 = load %struct.abbrev_info**, %struct.abbrev_info*** %32, align 8
  store %struct.abbrev_info** %33, %struct.abbrev_info*** %5, align 8
  store i64 0, i64* %6, align 8
  br label %34

34:                                               ; preds = %55, %30
  %35 = load i64, i64* %6, align 8
  %36 = load i64, i64* @ABBREV_HASH_SIZE, align 8
  %37 = icmp ult i64 %35, %36
  br i1 %37, label %38, label %58

38:                                               ; preds = %34
  %39 = load %struct.abbrev_info**, %struct.abbrev_info*** %5, align 8
  %40 = load i64, i64* %6, align 8
  %41 = getelementptr inbounds %struct.abbrev_info*, %struct.abbrev_info** %39, i64 %40
  %42 = load %struct.abbrev_info*, %struct.abbrev_info** %41, align 8
  store %struct.abbrev_info* %42, %struct.abbrev_info** %7, align 8
  br label %43

43:                                               ; preds = %46, %38
  %44 = load %struct.abbrev_info*, %struct.abbrev_info** %7, align 8
  %45 = icmp ne %struct.abbrev_info* %44, null
  br i1 %45, label %46, label %54

46:                                               ; preds = %43
  %47 = load %struct.abbrev_info*, %struct.abbrev_info** %7, align 8
  %48 = getelementptr inbounds %struct.abbrev_info, %struct.abbrev_info* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 8
  %50 = call i32 @free(i32 %49)
  %51 = load %struct.abbrev_info*, %struct.abbrev_info** %7, align 8
  %52 = getelementptr inbounds %struct.abbrev_info, %struct.abbrev_info* %51, i32 0, i32 0
  %53 = load %struct.abbrev_info*, %struct.abbrev_info** %52, align 8
  store %struct.abbrev_info* %53, %struct.abbrev_info** %7, align 8
  br label %43

54:                                               ; preds = %43
  br label %55

55:                                               ; preds = %54
  %56 = load i64, i64* %6, align 8
  %57 = add i64 %56, 1
  store i64 %57, i64* %6, align 8
  br label %34

58:                                               ; preds = %34
  %59 = load %struct.comp_unit*, %struct.comp_unit** %3, align 8
  %60 = getelementptr inbounds %struct.comp_unit, %struct.comp_unit* %59, i32 0, i32 0
  %61 = load %struct.TYPE_3__*, %struct.TYPE_3__** %60, align 8
  %62 = icmp ne %struct.TYPE_3__* %61, null
  br i1 %62, label %63, label %76

63:                                               ; preds = %58
  %64 = load %struct.comp_unit*, %struct.comp_unit** %3, align 8
  %65 = getelementptr inbounds %struct.comp_unit, %struct.comp_unit* %64, i32 0, i32 0
  %66 = load %struct.TYPE_3__*, %struct.TYPE_3__** %65, align 8
  %67 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %66, i32 0, i32 1
  %68 = load i32, i32* %67, align 4
  %69 = call i32 @free(i32 %68)
  %70 = load %struct.comp_unit*, %struct.comp_unit** %3, align 8
  %71 = getelementptr inbounds %struct.comp_unit, %struct.comp_unit* %70, i32 0, i32 0
  %72 = load %struct.TYPE_3__*, %struct.TYPE_3__** %71, align 8
  %73 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 4
  %75 = call i32 @free(i32 %74)
  br label %76

76:                                               ; preds = %63, %58
  br label %77

77:                                               ; preds = %76
  %78 = load %struct.comp_unit*, %struct.comp_unit** %3, align 8
  %79 = getelementptr inbounds %struct.comp_unit, %struct.comp_unit* %78, i32 0, i32 2
  %80 = load %struct.comp_unit*, %struct.comp_unit** %79, align 8
  store %struct.comp_unit* %80, %struct.comp_unit** %3, align 8
  br label %27

81:                                               ; preds = %27
  %82 = load %struct.dwarf2_debug*, %struct.dwarf2_debug** %4, align 8
  %83 = getelementptr inbounds %struct.dwarf2_debug, %struct.dwarf2_debug* %82, i32 0, i32 2
  %84 = load i32, i32* %83, align 8
  %85 = call i32 @free(i32 %84)
  %86 = load %struct.dwarf2_debug*, %struct.dwarf2_debug** %4, align 8
  %87 = getelementptr inbounds %struct.dwarf2_debug, %struct.dwarf2_debug* %86, i32 0, i32 1
  %88 = load i32, i32* %87, align 4
  %89 = call i32 @free(i32 %88)
  %90 = load %struct.dwarf2_debug*, %struct.dwarf2_debug** %4, align 8
  %91 = getelementptr inbounds %struct.dwarf2_debug, %struct.dwarf2_debug* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 8
  %93 = call i32 @free(i32 %92)
  br label %94

94:                                               ; preds = %81, %22, %14
  ret void
}

declare dso_local %struct.TYPE_4__* @elf_tdata(i32*) #1

declare dso_local i32 @free(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

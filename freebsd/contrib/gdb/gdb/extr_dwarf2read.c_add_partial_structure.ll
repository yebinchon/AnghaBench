; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_dwarf2read.c_add_partial_structure.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_dwarf2read.c_add_partial_structure.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.partial_die_info = type { i8*, i64, i64 }
%struct.dwarf2_cu = type { i64, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32* }

@language_cplus = common dso_local global i64 0, align 8
@DW_TAG_subprogram = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (%struct.partial_die_info*, i8*, %struct.dwarf2_cu*, i8*)* @add_partial_structure to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @add_partial_structure(%struct.partial_die_info* %0, i8* %1, %struct.dwarf2_cu* %2, i8* %3) #0 {
  %5 = alloca %struct.partial_die_info*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.dwarf2_cu*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca %struct.partial_die_info, align 8
  store %struct.partial_die_info* %0, %struct.partial_die_info** %5, align 8
  store i8* %1, i8** %6, align 8
  store %struct.dwarf2_cu* %2, %struct.dwarf2_cu** %7, align 8
  store i8* %3, i8** %8, align 8
  %13 = load %struct.dwarf2_cu*, %struct.dwarf2_cu** %7, align 8
  %14 = getelementptr inbounds %struct.dwarf2_cu, %struct.dwarf2_cu* %13, i32 0, i32 1
  %15 = load %struct.TYPE_2__*, %struct.TYPE_2__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  %17 = load i32*, i32** %16, align 8
  store i32* %17, i32** %9, align 8
  store i8* null, i8** %10, align 8
  %18 = load %struct.dwarf2_cu*, %struct.dwarf2_cu** %7, align 8
  %19 = getelementptr inbounds %struct.dwarf2_cu, %struct.dwarf2_cu* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = load i64, i64* @language_cplus, align 8
  %22 = icmp eq i64 %20, %21
  br i1 %22, label %23, label %76

23:                                               ; preds = %4
  %24 = load i8*, i8** %8, align 8
  %25 = icmp eq i8* %24, null
  br i1 %25, label %32, label %26

26:                                               ; preds = %23
  %27 = load i8*, i8** %8, align 8
  %28 = getelementptr inbounds i8, i8* %27, i64 0
  %29 = load i8, i8* %28, align 1
  %30 = sext i8 %29 to i32
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %32, label %76

32:                                               ; preds = %26, %23
  %33 = load %struct.partial_die_info*, %struct.partial_die_info** %5, align 8
  %34 = getelementptr inbounds %struct.partial_die_info, %struct.partial_die_info* %33, i32 0, i32 0
  %35 = load i8*, i8** %34, align 8
  %36 = icmp ne i8* %35, null
  br i1 %36, label %37, label %76

37:                                               ; preds = %32
  %38 = load %struct.partial_die_info*, %struct.partial_die_info** %5, align 8
  %39 = getelementptr inbounds %struct.partial_die_info, %struct.partial_die_info* %38, i32 0, i32 2
  %40 = load i64, i64* %39, align 8
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %76

42:                                               ; preds = %37
  %43 = load i8*, i8** %6, align 8
  store i8* %43, i8** %11, align 8
  br label %44

44:                                               ; preds = %42, %74
  %45 = load i32*, i32** %9, align 8
  %46 = load i8*, i8** %11, align 8
  %47 = load %struct.dwarf2_cu*, %struct.dwarf2_cu** %7, align 8
  %48 = call i8* @read_partial_die(%struct.partial_die_info* %12, i32* %45, i8* %46, %struct.dwarf2_cu* %47)
  store i8* %48, i8** %11, align 8
  %49 = getelementptr inbounds %struct.partial_die_info, %struct.partial_die_info* %12, i32 0, i32 1
  %50 = load i64, i64* %49, align 8
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %53, label %52

52:                                               ; preds = %44
  br label %75

53:                                               ; preds = %44
  %54 = getelementptr inbounds %struct.partial_die_info, %struct.partial_die_info* %12, i32 0, i32 1
  %55 = load i64, i64* %54, align 8
  %56 = load i64, i64* @DW_TAG_subprogram, align 8
  %57 = icmp eq i64 %55, %56
  br i1 %57, label %58, label %69

58:                                               ; preds = %53
  %59 = getelementptr inbounds %struct.partial_die_info, %struct.partial_die_info* %12, i32 0, i32 0
  %60 = load i8*, i8** %59, align 8
  %61 = call i8* @class_name_from_physname(i8* %60)
  store i8* %61, i8** %10, align 8
  %62 = load i8*, i8** %10, align 8
  %63 = icmp ne i8* %62, null
  br i1 %63, label %64, label %68

64:                                               ; preds = %58
  %65 = load i8*, i8** %10, align 8
  %66 = load %struct.partial_die_info*, %struct.partial_die_info** %5, align 8
  %67 = getelementptr inbounds %struct.partial_die_info, %struct.partial_die_info* %66, i32 0, i32 0
  store i8* %65, i8** %67, align 8
  br label %68

68:                                               ; preds = %64, %58
  br label %75

69:                                               ; preds = %53
  %70 = load i8*, i8** %11, align 8
  %71 = load i32*, i32** %9, align 8
  %72 = load %struct.dwarf2_cu*, %struct.dwarf2_cu** %7, align 8
  %73 = call i8* @locate_pdi_sibling(%struct.partial_die_info* %12, i8* %70, i32* %71, %struct.dwarf2_cu* %72)
  store i8* %73, i8** %11, align 8
  br label %74

74:                                               ; preds = %69
  br label %44

75:                                               ; preds = %68, %52
  br label %76

76:                                               ; preds = %75, %37, %32, %26, %4
  %77 = load %struct.partial_die_info*, %struct.partial_die_info** %5, align 8
  %78 = load %struct.dwarf2_cu*, %struct.dwarf2_cu** %7, align 8
  %79 = load i8*, i8** %8, align 8
  %80 = call i32 @add_partial_symbol(%struct.partial_die_info* %77, %struct.dwarf2_cu* %78, i8* %79)
  %81 = load i8*, i8** %10, align 8
  %82 = call i32 @xfree(i8* %81)
  %83 = load %struct.partial_die_info*, %struct.partial_die_info** %5, align 8
  %84 = load i8*, i8** %6, align 8
  %85 = load i32*, i32** %9, align 8
  %86 = load %struct.dwarf2_cu*, %struct.dwarf2_cu** %7, align 8
  %87 = call i8* @locate_pdi_sibling(%struct.partial_die_info* %83, i8* %84, i32* %85, %struct.dwarf2_cu* %86)
  ret i8* %87
}

declare dso_local i8* @read_partial_die(%struct.partial_die_info*, i32*, i8*, %struct.dwarf2_cu*) #1

declare dso_local i8* @class_name_from_physname(i8*) #1

declare dso_local i8* @locate_pdi_sibling(%struct.partial_die_info*, i8*, i32*, %struct.dwarf2_cu*) #1

declare dso_local i32 @add_partial_symbol(%struct.partial_die_info*, %struct.dwarf2_cu*, i8*) #1

declare dso_local i32 @xfree(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

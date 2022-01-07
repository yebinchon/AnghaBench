; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/elftoolchain/readelf/extr_readelf.c_dump_dwarf_ranges.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/elftoolchain/readelf/extr_readelf.c_dump_dwarf_ranges.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.readelf = type { i64, i32 }

@DW_DLV_OK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [41 x i8] c"Contents of the .debug_ranges section:\0A\0A\00", align 1
@ELFCLASS32 = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [18 x i8] c"    %-8s %-8s %s\0A\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"Offset\00", align 1
@.str.3 = private unnamed_addr constant [6 x i8] c"Begin\00", align 1
@.str.4 = private unnamed_addr constant [4 x i8] c"End\00", align 1
@.str.5 = private unnamed_addr constant [19 x i8] c"    %-8s %-16s %s\0A\00", align 1
@.str.6 = private unnamed_addr constant [21 x i8] c"dwarf_tag failed: %s\00", align 1
@DW_TAG_compile_unit = common dso_local global i64 0, align 8
@DW_AT_low_pc = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.readelf*)* @dump_dwarf_ranges to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dump_dwarf_ranges(%struct.readelf* %0) #0 {
  %2 = alloca %struct.readelf*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  store %struct.readelf* %0, %struct.readelf** %2, align 8
  %11 = load %struct.readelf*, %struct.readelf** %2, align 8
  %12 = getelementptr inbounds %struct.readelf, %struct.readelf* %11, i32 0, i32 1
  %13 = load i32, i32* %12, align 8
  %14 = call i32 @dwarf_get_ranges(i32 %13, i32 0, i32** %3, i32* %5, i64* %6, i32* %8)
  %15 = load i32, i32* @DW_DLV_OK, align 4
  %16 = icmp ne i32 %14, %15
  br i1 %16, label %17, label %18

17:                                               ; preds = %1
  br label %75

18:                                               ; preds = %1
  %19 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0))
  %20 = load %struct.readelf*, %struct.readelf** %2, align 8
  %21 = getelementptr inbounds %struct.readelf, %struct.readelf* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = load i64, i64* @ELFCLASS32, align 8
  %24 = icmp eq i64 %22, %23
  br i1 %24, label %25, label %27

25:                                               ; preds = %18
  %26 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0))
  br label %29

27:                                               ; preds = %18
  %28 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.5, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0))
  br label %29

29:                                               ; preds = %27, %25
  br label %30

30:                                               ; preds = %67, %51, %45, %29
  %31 = load %struct.readelf*, %struct.readelf** %2, align 8
  %32 = getelementptr inbounds %struct.readelf, %struct.readelf* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 8
  %34 = call i32 @dwarf_next_cu_header(i32 %33, i32* null, i32* null, i32* null, i32* null, i32* null, i32* %8)
  store i32 %34, i32* %10, align 4
  %35 = load i32, i32* @DW_DLV_OK, align 4
  %36 = icmp eq i32 %34, %35
  br i1 %36, label %37, label %73

37:                                               ; preds = %30
  store i32* null, i32** %4, align 8
  %38 = load %struct.readelf*, %struct.readelf** %2, align 8
  %39 = getelementptr inbounds %struct.readelf, %struct.readelf* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 8
  %41 = load i32*, i32** %4, align 8
  %42 = call i32 @dwarf_siblingof(i32 %40, i32* %41, i32** %4, i32* %8)
  %43 = load i32, i32* @DW_DLV_OK, align 4
  %44 = icmp ne i32 %42, %43
  br i1 %44, label %45, label %46

45:                                               ; preds = %37
  br label %30

46:                                               ; preds = %37
  %47 = load i32*, i32** %4, align 8
  %48 = call i32 @dwarf_tag(i32* %47, i64* %7, i32* %8)
  %49 = load i32, i32* @DW_DLV_OK, align 4
  %50 = icmp ne i32 %48, %49
  br i1 %50, label %51, label %55

51:                                               ; preds = %46
  %52 = load i32, i32* %8, align 4
  %53 = call i32 @dwarf_errmsg(i32 %52)
  %54 = call i32 @warnx(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.6, i64 0, i64 0), i32 %53)
  br label %30

55:                                               ; preds = %46
  store i64 0, i64* %9, align 8
  %56 = load i64, i64* %7, align 8
  %57 = load i64, i64* @DW_TAG_compile_unit, align 8
  %58 = icmp eq i64 %56, %57
  br i1 %58, label %59, label %67

59:                                               ; preds = %55
  %60 = load i32*, i32** %4, align 8
  %61 = load i32, i32* @DW_AT_low_pc, align 4
  %62 = call i32 @dwarf_attrval_unsigned(i32* %60, i32 %61, i64* %9, i32* %8)
  %63 = load i32, i32* @DW_DLV_OK, align 4
  %64 = icmp ne i32 %62, %63
  br i1 %64, label %65, label %66

65:                                               ; preds = %59
  store i64 0, i64* %9, align 8
  br label %66

66:                                               ; preds = %65, %59
  br label %67

67:                                               ; preds = %66, %55
  %68 = load %struct.readelf*, %struct.readelf** %2, align 8
  %69 = load i32*, i32** %4, align 8
  %70 = load i64, i64* %9, align 8
  %71 = trunc i64 %70 to i32
  %72 = call i32 @dump_dwarf_ranges_foreach(%struct.readelf* %68, i32* %69, i32 %71)
  br label %30

73:                                               ; preds = %30
  %74 = call i32 @putchar(i8 signext 10)
  br label %75

75:                                               ; preds = %73, %17
  ret void
}

declare dso_local i32 @dwarf_get_ranges(i32, i32, i32**, i32*, i64*, i32*) #1

declare dso_local i32 @printf(i8*, ...) #1

declare dso_local i32 @dwarf_next_cu_header(i32, i32*, i32*, i32*, i32*, i32*, i32*) #1

declare dso_local i32 @dwarf_siblingof(i32, i32*, i32**, i32*) #1

declare dso_local i32 @dwarf_tag(i32*, i64*, i32*) #1

declare dso_local i32 @warnx(i8*, i32) #1

declare dso_local i32 @dwarf_errmsg(i32) #1

declare dso_local i32 @dwarf_attrval_unsigned(i32*, i32, i64*, i32*) #1

declare dso_local i32 @dump_dwarf_ranges_foreach(%struct.readelf*, i32*, i32) #1

declare dso_local i32 @putchar(i8 signext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

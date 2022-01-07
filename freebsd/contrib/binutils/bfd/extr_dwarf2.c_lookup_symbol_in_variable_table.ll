; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/bfd/extr_dwarf2.c_lookup_symbol_in_variable_table.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/bfd/extr_dwarf2.c_lookup_symbol_in_variable_table.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.comp_unit = type { %struct.varinfo* }
%struct.varinfo = type { i64, i8*, i64, i32, i32*, i32*, %struct.varinfo* }

@TRUE = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.comp_unit*, i32*, i64, i8**, i32*)* @lookup_symbol_in_variable_table to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lookup_symbol_in_variable_table(%struct.comp_unit* %0, i32* %1, i64 %2, i8** %3, i32* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.comp_unit*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i8**, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca %struct.varinfo*, align 8
  store %struct.comp_unit* %0, %struct.comp_unit** %7, align 8
  store i32* %1, i32** %8, align 8
  store i64 %2, i64* %9, align 8
  store i8** %3, i8*** %10, align 8
  store i32* %4, i32** %11, align 8
  %15 = load i32*, i32** %8, align 8
  %16 = call i8* @bfd_asymbol_name(i32* %15)
  store i8* %16, i8** %12, align 8
  %17 = load i32*, i32** %8, align 8
  %18 = call i32* @bfd_get_section(i32* %17)
  store i32* %18, i32** %13, align 8
  %19 = load %struct.comp_unit*, %struct.comp_unit** %7, align 8
  %20 = getelementptr inbounds %struct.comp_unit, %struct.comp_unit* %19, i32 0, i32 0
  %21 = load %struct.varinfo*, %struct.varinfo** %20, align 8
  store %struct.varinfo* %21, %struct.varinfo** %14, align 8
  br label %22

22:                                               ; preds = %66, %5
  %23 = load %struct.varinfo*, %struct.varinfo** %14, align 8
  %24 = icmp ne %struct.varinfo* %23, null
  br i1 %24, label %25, label %70

25:                                               ; preds = %22
  %26 = load %struct.varinfo*, %struct.varinfo** %14, align 8
  %27 = getelementptr inbounds %struct.varinfo, %struct.varinfo* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = icmp eq i64 %28, 0
  br i1 %29, label %30, label %65

30:                                               ; preds = %25
  %31 = load %struct.varinfo*, %struct.varinfo** %14, align 8
  %32 = getelementptr inbounds %struct.varinfo, %struct.varinfo* %31, i32 0, i32 1
  %33 = load i8*, i8** %32, align 8
  %34 = icmp ne i8* %33, null
  br i1 %34, label %35, label %65

35:                                               ; preds = %30
  %36 = load %struct.varinfo*, %struct.varinfo** %14, align 8
  %37 = getelementptr inbounds %struct.varinfo, %struct.varinfo* %36, i32 0, i32 5
  %38 = load i32*, i32** %37, align 8
  %39 = icmp ne i32* %38, null
  br i1 %39, label %40, label %65

40:                                               ; preds = %35
  %41 = load %struct.varinfo*, %struct.varinfo** %14, align 8
  %42 = getelementptr inbounds %struct.varinfo, %struct.varinfo* %41, i32 0, i32 2
  %43 = load i64, i64* %42, align 8
  %44 = load i64, i64* %9, align 8
  %45 = icmp eq i64 %43, %44
  br i1 %45, label %46, label %65

46:                                               ; preds = %40
  %47 = load %struct.varinfo*, %struct.varinfo** %14, align 8
  %48 = getelementptr inbounds %struct.varinfo, %struct.varinfo* %47, i32 0, i32 4
  %49 = load i32*, i32** %48, align 8
  %50 = icmp ne i32* %49, null
  br i1 %50, label %51, label %57

51:                                               ; preds = %46
  %52 = load %struct.varinfo*, %struct.varinfo** %14, align 8
  %53 = getelementptr inbounds %struct.varinfo, %struct.varinfo* %52, i32 0, i32 4
  %54 = load i32*, i32** %53, align 8
  %55 = load i32*, i32** %13, align 8
  %56 = icmp eq i32* %54, %55
  br i1 %56, label %57, label %65

57:                                               ; preds = %51, %46
  %58 = load i8*, i8** %12, align 8
  %59 = load %struct.varinfo*, %struct.varinfo** %14, align 8
  %60 = getelementptr inbounds %struct.varinfo, %struct.varinfo* %59, i32 0, i32 5
  %61 = load i32*, i32** %60, align 8
  %62 = call i64 @strcmp(i8* %58, i32* %61)
  %63 = icmp eq i64 %62, 0
  br i1 %63, label %64, label %65

64:                                               ; preds = %57
  br label %70

65:                                               ; preds = %57, %51, %40, %35, %30, %25
  br label %66

66:                                               ; preds = %65
  %67 = load %struct.varinfo*, %struct.varinfo** %14, align 8
  %68 = getelementptr inbounds %struct.varinfo, %struct.varinfo* %67, i32 0, i32 6
  %69 = load %struct.varinfo*, %struct.varinfo** %68, align 8
  store %struct.varinfo* %69, %struct.varinfo** %14, align 8
  br label %22

70:                                               ; preds = %64, %22
  %71 = load %struct.varinfo*, %struct.varinfo** %14, align 8
  %72 = icmp ne %struct.varinfo* %71, null
  br i1 %72, label %73, label %86

73:                                               ; preds = %70
  %74 = load i32*, i32** %13, align 8
  %75 = load %struct.varinfo*, %struct.varinfo** %14, align 8
  %76 = getelementptr inbounds %struct.varinfo, %struct.varinfo* %75, i32 0, i32 4
  store i32* %74, i32** %76, align 8
  %77 = load %struct.varinfo*, %struct.varinfo** %14, align 8
  %78 = getelementptr inbounds %struct.varinfo, %struct.varinfo* %77, i32 0, i32 1
  %79 = load i8*, i8** %78, align 8
  %80 = load i8**, i8*** %10, align 8
  store i8* %79, i8** %80, align 8
  %81 = load %struct.varinfo*, %struct.varinfo** %14, align 8
  %82 = getelementptr inbounds %struct.varinfo, %struct.varinfo* %81, i32 0, i32 3
  %83 = load i32, i32* %82, align 8
  %84 = load i32*, i32** %11, align 8
  store i32 %83, i32* %84, align 4
  %85 = load i32, i32* @TRUE, align 4
  store i32 %85, i32* %6, align 4
  br label %88

86:                                               ; preds = %70
  %87 = load i32, i32* @FALSE, align 4
  store i32 %87, i32* %6, align 4
  br label %88

88:                                               ; preds = %86, %73
  %89 = load i32, i32* %6, align 4
  ret i32 %89
}

declare dso_local i8* @bfd_asymbol_name(i32*) #1

declare dso_local i32* @bfd_get_section(i32*) #1

declare dso_local i64 @strcmp(i8*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

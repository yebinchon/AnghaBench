; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/elftoolchain/libdwarf/extr_libdwarf_abbrev.c__dwarf_abbrev_find.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/elftoolchain/libdwarf/extr_libdwarf_abbrev.c__dwarf_abbrev_find.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i32, i64, i32, i32 }
%struct.TYPE_12__ = type { i64 }
%struct.TYPE_10__ = type { i64 }

@DW_DLE_NO_ENTRY = common dso_local global i32 0, align 4
@ab_hh = common dso_local global i32 0, align 4
@DW_DLE_NONE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [14 x i8] c".debug_abbrev\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @_dwarf_abbrev_find(%struct.TYPE_11__* %0, i64 %1, %struct.TYPE_12__** %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_11__*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.TYPE_12__**, align 8
  %9 = alloca i32*, align 8
  %10 = alloca %struct.TYPE_12__*, align 8
  %11 = alloca %struct.TYPE_10__*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  store %struct.TYPE_11__* %0, %struct.TYPE_11__** %6, align 8
  store i64 %1, i64* %7, align 8
  store %struct.TYPE_12__** %2, %struct.TYPE_12__*** %8, align 8
  store i32* %3, i32** %9, align 8
  %14 = load i64, i64* %7, align 8
  %15 = icmp eq i64 %14, 0
  br i1 %15, label %16, label %18

16:                                               ; preds = %4
  %17 = load i32, i32* @DW_DLE_NO_ENTRY, align 4
  store i32 %17, i32* %5, align 4
  br label %96

18:                                               ; preds = %4
  %19 = load i32, i32* @ab_hh, align 4
  %20 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %21 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %20, i32 0, i32 3
  %22 = load i32, i32* %21, align 4
  %23 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %24 = call i32 @HASH_FIND(i32 %19, i32 %22, i64* %7, i32 8, %struct.TYPE_12__* %23)
  %25 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %26 = icmp ne %struct.TYPE_12__* %25, null
  br i1 %26, label %27, label %31

27:                                               ; preds = %18
  %28 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %29 = load %struct.TYPE_12__**, %struct.TYPE_12__*** %8, align 8
  store %struct.TYPE_12__* %28, %struct.TYPE_12__** %29, align 8
  %30 = load i32, i32* @DW_DLE_NONE, align 4
  store i32 %30, i32* %5, align 4
  br label %96

31:                                               ; preds = %18
  %32 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %33 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %38

36:                                               ; preds = %31
  %37 = load i32, i32* @DW_DLE_NO_ENTRY, align 4
  store i32 %37, i32* %5, align 4
  br label %96

38:                                               ; preds = %31
  %39 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %40 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %39, i32 0, i32 2
  %41 = load i32, i32* %40, align 8
  %42 = call %struct.TYPE_10__* @_dwarf_find_section(i32 %41, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0))
  store %struct.TYPE_10__* %42, %struct.TYPE_10__** %11, align 8
  %43 = load %struct.TYPE_10__*, %struct.TYPE_10__** %11, align 8
  %44 = icmp eq %struct.TYPE_10__* %43, null
  br i1 %44, label %45, label %47

45:                                               ; preds = %38
  %46 = load i32, i32* @DW_DLE_NO_ENTRY, align 4
  store i32 %46, i32* %5, align 4
  br label %96

47:                                               ; preds = %38
  %48 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %49 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %48, i32 0, i32 1
  %50 = load i64, i64* %49, align 8
  store i64 %50, i64* %12, align 8
  br label %51

51:                                               ; preds = %93, %47
  %52 = load i64, i64* %12, align 8
  %53 = load %struct.TYPE_10__*, %struct.TYPE_10__** %11, align 8
  %54 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %53, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  %56 = icmp slt i64 %52, %55
  br i1 %56, label %57, label %94

57:                                               ; preds = %51
  %58 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %59 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %58, i32 0, i32 2
  %60 = load i32, i32* %59, align 8
  %61 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %62 = load i32*, i32** %9, align 8
  %63 = call i32 @_dwarf_abbrev_parse(i32 %60, %struct.TYPE_11__* %61, i64* %12, %struct.TYPE_12__** %10, i32* %62)
  store i32 %63, i32* %13, align 4
  %64 = load i32, i32* %13, align 4
  %65 = load i32, i32* @DW_DLE_NONE, align 4
  %66 = icmp ne i32 %64, %65
  br i1 %66, label %67, label %69

67:                                               ; preds = %57
  %68 = load i32, i32* %13, align 4
  store i32 %68, i32* %5, align 4
  br label %96

69:                                               ; preds = %57
  %70 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %71 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %70, i32 0, i32 0
  %72 = load i64, i64* %71, align 8
  %73 = load i64, i64* %7, align 8
  %74 = icmp eq i64 %72, %73
  br i1 %74, label %75, label %82

75:                                               ; preds = %69
  %76 = load i64, i64* %12, align 8
  %77 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %78 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %77, i32 0, i32 1
  store i64 %76, i64* %78, align 8
  %79 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %80 = load %struct.TYPE_12__**, %struct.TYPE_12__*** %8, align 8
  store %struct.TYPE_12__* %79, %struct.TYPE_12__** %80, align 8
  %81 = load i32, i32* @DW_DLE_NONE, align 4
  store i32 %81, i32* %5, align 4
  br label %96

82:                                               ; preds = %69
  %83 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %84 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %83, i32 0, i32 0
  %85 = load i64, i64* %84, align 8
  %86 = icmp eq i64 %85, 0
  br i1 %86, label %87, label %93

87:                                               ; preds = %82
  %88 = load i64, i64* %12, align 8
  %89 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %90 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %89, i32 0, i32 1
  store i64 %88, i64* %90, align 8
  %91 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %92 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %91, i32 0, i32 0
  store i32 1, i32* %92, align 8
  br label %94

93:                                               ; preds = %82
  br label %51

94:                                               ; preds = %87, %51
  %95 = load i32, i32* @DW_DLE_NO_ENTRY, align 4
  store i32 %95, i32* %5, align 4
  br label %96

96:                                               ; preds = %94, %75, %67, %45, %36, %27, %16
  %97 = load i32, i32* %5, align 4
  ret i32 %97
}

declare dso_local i32 @HASH_FIND(i32, i32, i64*, i32, %struct.TYPE_12__*) #1

declare dso_local %struct.TYPE_10__* @_dwarf_find_section(i32, i8*) #1

declare dso_local i32 @_dwarf_abbrev_parse(i32, %struct.TYPE_11__*, i64*, %struct.TYPE_12__**, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/elftoolchain/libdwarf/extr_libdwarf_ranges.c__dwarf_ranges_parse.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/elftoolchain/libdwarf/extr_libdwarf_ranges.c__dwarf_ranges_parse.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i64 (i32, i64*, i32)* }
%struct.TYPE_12__ = type { i32 }
%struct.TYPE_9__ = type { i64, i32 }
%struct.TYPE_10__ = type { i32, i64, i64 }

@DW_RANGES_END = common dso_local global i32 0, align 4
@DW_RANGES_ADDRESS_SELECTION = common dso_local global i32 0, align 4
@DW_RANGES_ENTRY = common dso_local global i32 0, align 4
@DW_DLE_NONE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_11__*, %struct.TYPE_12__*, %struct.TYPE_9__*, i64, %struct.TYPE_10__*, i64*)* @_dwarf_ranges_parse to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @_dwarf_ranges_parse(%struct.TYPE_11__* %0, %struct.TYPE_12__* %1, %struct.TYPE_9__* %2, i64 %3, %struct.TYPE_10__* %4, i64* %5) #0 {
  %7 = alloca %struct.TYPE_11__*, align 8
  %8 = alloca %struct.TYPE_12__*, align 8
  %9 = alloca %struct.TYPE_9__*, align 8
  %10 = alloca i64, align 8
  %11 = alloca %struct.TYPE_10__*, align 8
  %12 = alloca i64*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  store %struct.TYPE_11__* %0, %struct.TYPE_11__** %7, align 8
  store %struct.TYPE_12__* %1, %struct.TYPE_12__** %8, align 8
  store %struct.TYPE_9__* %2, %struct.TYPE_9__** %9, align 8
  store i64 %3, i64* %10, align 8
  store %struct.TYPE_10__* %4, %struct.TYPE_10__** %11, align 8
  store i64* %5, i64** %12, align 8
  store i32 0, i32* %15, align 4
  br label %16

16:                                               ; preds = %111, %6
  %17 = load i64, i64* %10, align 8
  %18 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %19 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = icmp slt i64 %17, %20
  br i1 %21, label %22, label %112

22:                                               ; preds = %16
  %23 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %24 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %23, i32 0, i32 0
  %25 = load i64 (i32, i64*, i32)*, i64 (i32, i64*, i32)** %24, align 8
  %26 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %27 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 8
  %29 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %30 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = call i64 %25(i32 %28, i64* %10, i32 %31)
  store i64 %32, i64* %13, align 8
  %33 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %34 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %33, i32 0, i32 0
  %35 = load i64 (i32, i64*, i32)*, i64 (i32, i64*, i32)** %34, align 8
  %36 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %37 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 8
  %39 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %40 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = call i64 %35(i32 %38, i64* %10, i32 %41)
  store i64 %42, i64* %14, align 8
  %43 = load %struct.TYPE_10__*, %struct.TYPE_10__** %11, align 8
  %44 = icmp ne %struct.TYPE_10__* %43, null
  br i1 %44, label %45, label %102

45:                                               ; preds = %22
  %46 = load i64, i64* %13, align 8
  %47 = load %struct.TYPE_10__*, %struct.TYPE_10__** %11, align 8
  %48 = load i32, i32* %15, align 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %47, i64 %49
  %51 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %50, i32 0, i32 2
  store i64 %46, i64* %51, align 8
  %52 = load i64, i64* %14, align 8
  %53 = load %struct.TYPE_10__*, %struct.TYPE_10__** %11, align 8
  %54 = load i32, i32* %15, align 4
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %53, i64 %55
  %57 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %56, i32 0, i32 1
  store i64 %52, i64* %57, align 8
  %58 = load i64, i64* %13, align 8
  %59 = icmp eq i64 %58, 0
  br i1 %59, label %60, label %70

60:                                               ; preds = %45
  %61 = load i64, i64* %14, align 8
  %62 = icmp eq i64 %61, 0
  br i1 %62, label %63, label %70

63:                                               ; preds = %60
  %64 = load i32, i32* @DW_RANGES_END, align 4
  %65 = load %struct.TYPE_10__*, %struct.TYPE_10__** %11, align 8
  %66 = load i32, i32* %15, align 4
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %65, i64 %67
  %69 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %68, i32 0, i32 0
  store i32 %64, i32* %69, align 8
  br label %101

70:                                               ; preds = %60, %45
  %71 = load i64, i64* %13, align 8
  %72 = icmp eq i64 %71, 4294967295
  br i1 %72, label %73, label %78

73:                                               ; preds = %70
  %74 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %75 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 4
  %77 = icmp eq i32 %76, 4
  br i1 %77, label %86, label %78

78:                                               ; preds = %73, %70
  %79 = load i64, i64* %13, align 8
  %80 = icmp eq i64 %79, -1
  br i1 %80, label %81, label %93

81:                                               ; preds = %78
  %82 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %83 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 4
  %85 = icmp eq i32 %84, 8
  br i1 %85, label %86, label %93

86:                                               ; preds = %81, %73
  %87 = load i32, i32* @DW_RANGES_ADDRESS_SELECTION, align 4
  %88 = load %struct.TYPE_10__*, %struct.TYPE_10__** %11, align 8
  %89 = load i32, i32* %15, align 4
  %90 = sext i32 %89 to i64
  %91 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %88, i64 %90
  %92 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %91, i32 0, i32 0
  store i32 %87, i32* %92, align 8
  br label %100

93:                                               ; preds = %81, %78
  %94 = load i32, i32* @DW_RANGES_ENTRY, align 4
  %95 = load %struct.TYPE_10__*, %struct.TYPE_10__** %11, align 8
  %96 = load i32, i32* %15, align 4
  %97 = sext i32 %96 to i64
  %98 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %95, i64 %97
  %99 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %98, i32 0, i32 0
  store i32 %94, i32* %99, align 8
  br label %100

100:                                              ; preds = %93, %86
  br label %101

101:                                              ; preds = %100, %63
  br label %102

102:                                              ; preds = %101, %22
  %103 = load i32, i32* %15, align 4
  %104 = add nsw i32 %103, 1
  store i32 %104, i32* %15, align 4
  %105 = load i64, i64* %13, align 8
  %106 = icmp eq i64 %105, 0
  br i1 %106, label %107, label %111

107:                                              ; preds = %102
  %108 = load i64, i64* %14, align 8
  %109 = icmp eq i64 %108, 0
  br i1 %109, label %110, label %111

110:                                              ; preds = %107
  br label %112

111:                                              ; preds = %107, %102
  br label %16

112:                                              ; preds = %110, %16
  %113 = load i64*, i64** %12, align 8
  %114 = icmp ne i64* %113, null
  br i1 %114, label %115, label %119

115:                                              ; preds = %112
  %116 = load i32, i32* %15, align 4
  %117 = sext i32 %116 to i64
  %118 = load i64*, i64** %12, align 8
  store i64 %117, i64* %118, align 8
  br label %119

119:                                              ; preds = %115, %112
  %120 = load i32, i32* @DW_DLE_NONE, align 4
  ret i32 %120
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

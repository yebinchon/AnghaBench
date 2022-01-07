; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/elftoolchain/libdwarf/extr_libdwarf_frame.c__dwarf_frame_read_lsb_encoded.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/elftoolchain/libdwarf/extr_libdwarf_frame.c__dwarf_frame_read_lsb_encoded.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i64 (i32*, i64*, i32)* }
%struct.TYPE_7__ = type { i32 }

@DW_EH_PE_omit = common dso_local global i32 0, align 4
@DW_DLE_NONE = common dso_local global i32 0, align 4
@DW_DLE_FRAME_AUGMENTATION_UNKNOWN = common dso_local global i32 0, align 4
@DW_EH_PE_pcrel = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_6__*, %struct.TYPE_7__*, i64*, i32*, i64*, i32, i64, i32*)* @_dwarf_frame_read_lsb_encoded to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @_dwarf_frame_read_lsb_encoded(%struct.TYPE_6__* %0, %struct.TYPE_7__* %1, i64* %2, i32* %3, i64* %4, i32 %5, i64 %6, i32* %7) #0 {
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_6__*, align 8
  %11 = alloca %struct.TYPE_7__*, align 8
  %12 = alloca i64*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i64*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i64, align 8
  %17 = alloca i32*, align 8
  %18 = alloca i32, align 4
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %10, align 8
  store %struct.TYPE_7__* %1, %struct.TYPE_7__** %11, align 8
  store i64* %2, i64** %12, align 8
  store i32* %3, i32** %13, align 8
  store i64* %4, i64** %14, align 8
  store i32 %5, i32* %15, align 4
  store i64 %6, i64* %16, align 8
  store i32* %7, i32** %17, align 8
  %19 = load i32, i32* %15, align 4
  %20 = load i32, i32* @DW_EH_PE_omit, align 4
  %21 = icmp eq i32 %19, %20
  br i1 %21, label %22, label %24

22:                                               ; preds = %8
  %23 = load i32, i32* @DW_DLE_NONE, align 4
  store i32 %23, i32* %9, align 4
  br label %126

24:                                               ; preds = %8
  %25 = load i32, i32* %15, align 4
  %26 = and i32 %25, 240
  store i32 %26, i32* %18, align 4
  %27 = load i32, i32* %15, align 4
  %28 = and i32 %27, 15
  store i32 %28, i32* %15, align 4
  %29 = load i32, i32* %15, align 4
  switch i32 %29, label %99 [
    i32 136, label %30
    i32 128, label %41
    i32 131, label %46
    i32 130, label %54
    i32 129, label %62
    i32 132, label %70
    i32 135, label %75
    i32 134, label %83
    i32 133, label %91
  ]

30:                                               ; preds = %24
  %31 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %32 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %31, i32 0, i32 0
  %33 = load i64 (i32*, i64*, i32)*, i64 (i32*, i64*, i32)** %32, align 8
  %34 = load i32*, i32** %13, align 8
  %35 = load i64*, i64** %14, align 8
  %36 = load %struct.TYPE_7__*, %struct.TYPE_7__** %11, align 8
  %37 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = call i64 %33(i32* %34, i64* %35, i32 %38)
  %40 = load i64*, i64** %12, align 8
  store i64 %39, i64* %40, align 8
  br label %105

41:                                               ; preds = %24
  %42 = load i32*, i32** %13, align 8
  %43 = load i64*, i64** %14, align 8
  %44 = call i64 @_dwarf_read_uleb128(i32* %42, i64* %43)
  %45 = load i64*, i64** %12, align 8
  store i64 %44, i64* %45, align 8
  br label %105

46:                                               ; preds = %24
  %47 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %48 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %47, i32 0, i32 0
  %49 = load i64 (i32*, i64*, i32)*, i64 (i32*, i64*, i32)** %48, align 8
  %50 = load i32*, i32** %13, align 8
  %51 = load i64*, i64** %14, align 8
  %52 = call i64 %49(i32* %50, i64* %51, i32 2)
  %53 = load i64*, i64** %12, align 8
  store i64 %52, i64* %53, align 8
  br label %105

54:                                               ; preds = %24
  %55 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %56 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %55, i32 0, i32 0
  %57 = load i64 (i32*, i64*, i32)*, i64 (i32*, i64*, i32)** %56, align 8
  %58 = load i32*, i32** %13, align 8
  %59 = load i64*, i64** %14, align 8
  %60 = call i64 %57(i32* %58, i64* %59, i32 4)
  %61 = load i64*, i64** %12, align 8
  store i64 %60, i64* %61, align 8
  br label %105

62:                                               ; preds = %24
  %63 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %64 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %63, i32 0, i32 0
  %65 = load i64 (i32*, i64*, i32)*, i64 (i32*, i64*, i32)** %64, align 8
  %66 = load i32*, i32** %13, align 8
  %67 = load i64*, i64** %14, align 8
  %68 = call i64 %65(i32* %66, i64* %67, i32 8)
  %69 = load i64*, i64** %12, align 8
  store i64 %68, i64* %69, align 8
  br label %105

70:                                               ; preds = %24
  %71 = load i32*, i32** %13, align 8
  %72 = load i64*, i64** %14, align 8
  %73 = call i64 @_dwarf_read_sleb128(i32* %71, i64* %72)
  %74 = load i64*, i64** %12, align 8
  store i64 %73, i64* %74, align 8
  br label %105

75:                                               ; preds = %24
  %76 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %77 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %76, i32 0, i32 0
  %78 = load i64 (i32*, i64*, i32)*, i64 (i32*, i64*, i32)** %77, align 8
  %79 = load i32*, i32** %13, align 8
  %80 = load i64*, i64** %14, align 8
  %81 = call i64 %78(i32* %79, i64* %80, i32 2)
  %82 = load i64*, i64** %12, align 8
  store i64 %81, i64* %82, align 8
  br label %105

83:                                               ; preds = %24
  %84 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %85 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %84, i32 0, i32 0
  %86 = load i64 (i32*, i64*, i32)*, i64 (i32*, i64*, i32)** %85, align 8
  %87 = load i32*, i32** %13, align 8
  %88 = load i64*, i64** %14, align 8
  %89 = call i64 %86(i32* %87, i64* %88, i32 4)
  %90 = load i64*, i64** %12, align 8
  store i64 %89, i64* %90, align 8
  br label %105

91:                                               ; preds = %24
  %92 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %93 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %92, i32 0, i32 0
  %94 = load i64 (i32*, i64*, i32)*, i64 (i32*, i64*, i32)** %93, align 8
  %95 = load i32*, i32** %13, align 8
  %96 = load i64*, i64** %14, align 8
  %97 = call i64 %94(i32* %95, i64* %96, i32 8)
  %98 = load i64*, i64** %12, align 8
  store i64 %97, i64* %98, align 8
  br label %105

99:                                               ; preds = %24
  %100 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %101 = load i32*, i32** %17, align 8
  %102 = load i32, i32* @DW_DLE_FRAME_AUGMENTATION_UNKNOWN, align 4
  %103 = call i32 @DWARF_SET_ERROR(%struct.TYPE_6__* %100, i32* %101, i32 %102)
  %104 = load i32, i32* @DW_DLE_FRAME_AUGMENTATION_UNKNOWN, align 4
  store i32 %104, i32* %9, align 4
  br label %126

105:                                              ; preds = %91, %83, %75, %70, %62, %54, %46, %41, %30
  %106 = load i32, i32* %18, align 4
  %107 = load i32, i32* @DW_EH_PE_pcrel, align 4
  %108 = icmp eq i32 %106, %107
  br i1 %108, label %109, label %124

109:                                              ; preds = %105
  %110 = load i32, i32* %15, align 4
  switch i32 %110, label %122 [
    i32 128, label %111
    i32 131, label %111
    i32 130, label %111
    i32 129, label %111
    i32 132, label %116
    i32 135, label %116
    i32 134, label %116
    i32 133, label %116
  ]

111:                                              ; preds = %109, %109, %109, %109
  %112 = load i64, i64* %16, align 8
  %113 = load i64*, i64** %12, align 8
  %114 = load i64, i64* %113, align 8
  %115 = add nsw i64 %114, %112
  store i64 %115, i64* %113, align 8
  br label %123

116:                                              ; preds = %109, %109, %109, %109
  %117 = load i64, i64* %16, align 8
  %118 = load i64*, i64** %12, align 8
  %119 = load i64, i64* %118, align 8
  %120 = add nsw i64 %117, %119
  %121 = load i64*, i64** %12, align 8
  store i64 %120, i64* %121, align 8
  br label %123

122:                                              ; preds = %109
  br label %123

123:                                              ; preds = %122, %116, %111
  br label %124

124:                                              ; preds = %123, %105
  %125 = load i32, i32* @DW_DLE_NONE, align 4
  store i32 %125, i32* %9, align 4
  br label %126

126:                                              ; preds = %124, %99, %22
  %127 = load i32, i32* %9, align 4
  ret i32 %127
}

declare dso_local i64 @_dwarf_read_uleb128(i32*, i64*) #1

declare dso_local i64 @_dwarf_read_sleb128(i32*, i64*) #1

declare dso_local i32 @DWARF_SET_ERROR(%struct.TYPE_6__*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

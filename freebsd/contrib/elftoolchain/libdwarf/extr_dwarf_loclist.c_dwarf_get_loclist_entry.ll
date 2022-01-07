; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/elftoolchain/libdwarf/extr_dwarf_loclist.c_dwarf_get_loclist_entry.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/elftoolchain/libdwarf/extr_dwarf_loclist.c_dwarf_get_loclist_entry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { i32 }
%struct.TYPE_11__ = type { i64, i64 }
%struct.TYPE_10__ = type { i64 }

@DW_DLE_ARGUMENT = common dso_local global i32 0, align 4
@DW_DLV_ERROR = common dso_local global i32 0, align 4
@DW_DLE_NO_ENTRY = common dso_local global i32 0, align 4
@DW_DLV_NO_ENTRY = common dso_local global i32 0, align 4
@DW_DLE_NONE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [11 x i8] c".debug_loc\00", align 1
@DW_DLV_OK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @dwarf_get_loclist_entry(%struct.TYPE_12__* %0, i32 %1, i64* %2, i64* %3, i32** %4, i32* %5, i32* %6, i32* %7) #0 {
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_12__*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i64*, align 8
  %13 = alloca i64*, align 8
  %14 = alloca i32**, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i32*, align 8
  %17 = alloca i32*, align 8
  %18 = alloca %struct.TYPE_11__*, align 8
  %19 = alloca %struct.TYPE_11__**, align 8
  %20 = alloca %struct.TYPE_10__*, align 8
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  store %struct.TYPE_12__* %0, %struct.TYPE_12__** %10, align 8
  store i32 %1, i32* %11, align 4
  store i64* %2, i64** %12, align 8
  store i64* %3, i64** %13, align 8
  store i32** %4, i32*** %14, align 8
  store i32* %5, i32** %15, align 8
  store i32* %6, i32** %16, align 8
  store i32* %7, i32** %17, align 8
  %24 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %25 = icmp eq %struct.TYPE_12__* %24, null
  br i1 %25, label %41, label %26

26:                                               ; preds = %8
  %27 = load i64*, i64** %12, align 8
  %28 = icmp eq i64* %27, null
  br i1 %28, label %41, label %29

29:                                               ; preds = %26
  %30 = load i64*, i64** %13, align 8
  %31 = icmp eq i64* %30, null
  br i1 %31, label %41, label %32

32:                                               ; preds = %29
  %33 = load i32**, i32*** %14, align 8
  %34 = icmp eq i32** %33, null
  br i1 %34, label %41, label %35

35:                                               ; preds = %32
  %36 = load i32*, i32** %15, align 8
  %37 = icmp eq i32* %36, null
  br i1 %37, label %41, label %38

38:                                               ; preds = %35
  %39 = load i32*, i32** %16, align 8
  %40 = icmp eq i32* %39, null
  br i1 %40, label %41, label %47

41:                                               ; preds = %38, %35, %32, %29, %26, %8
  %42 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %43 = load i32*, i32** %17, align 8
  %44 = load i32, i32* @DW_DLE_ARGUMENT, align 4
  %45 = call i32 @DWARF_SET_ERROR(%struct.TYPE_12__* %42, i32* %43, i32 %44)
  %46 = load i32, i32* @DW_DLV_ERROR, align 4
  store i32 %46, i32* %9, align 4
  br label %146

47:                                               ; preds = %38
  %48 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %49 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %50 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %49, i32 0, i32 0
  %51 = call i32 @STAILQ_FIRST(i32* %50)
  %52 = load i32, i32* %11, align 4
  %53 = load i32*, i32** %15, align 8
  %54 = load i32*, i32** %17, align 8
  %55 = call i32 @_dwarf_loclist_find(%struct.TYPE_12__* %48, i32 %51, i32 %52, %struct.TYPE_11__*** %19, i32* %21, i32* %53, i32* %54)
  store i32 %55, i32* %23, align 4
  %56 = load i32, i32* %23, align 4
  %57 = load i32, i32* @DW_DLE_NO_ENTRY, align 4
  %58 = icmp eq i32 %56, %57
  br i1 %58, label %59, label %65

59:                                               ; preds = %47
  %60 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %61 = load i32*, i32** %17, align 8
  %62 = load i32, i32* @DW_DLV_NO_ENTRY, align 4
  %63 = call i32 @DWARF_SET_ERROR(%struct.TYPE_12__* %60, i32* %61, i32 %62)
  %64 = load i32, i32* @DW_DLV_NO_ENTRY, align 4
  store i32 %64, i32* %9, align 4
  br label %146

65:                                               ; preds = %47
  %66 = load i32, i32* %23, align 4
  %67 = load i32, i32* @DW_DLE_NONE, align 4
  %68 = icmp ne i32 %66, %67
  br i1 %68, label %69, label %71

69:                                               ; preds = %65
  %70 = load i32, i32* @DW_DLV_ERROR, align 4
  store i32 %70, i32* %9, align 4
  br label %146

71:                                               ; preds = %65
  br label %72

72:                                               ; preds = %71
  %73 = load i64*, i64** %13, align 8
  store i64 0, i64* %73, align 8
  %74 = load i64*, i64** %12, align 8
  store i64 0, i64* %74, align 8
  store i32 0, i32* %22, align 4
  br label %75

75:                                               ; preds = %122, %72
  %76 = load i32, i32* %22, align 4
  %77 = load i32, i32* %21, align 4
  %78 = icmp slt i32 %76, %77
  br i1 %78, label %79, label %125

79:                                               ; preds = %75
  %80 = load %struct.TYPE_11__**, %struct.TYPE_11__*** %19, align 8
  %81 = load i32, i32* %22, align 4
  %82 = sext i32 %81 to i64
  %83 = getelementptr inbounds %struct.TYPE_11__*, %struct.TYPE_11__** %80, i64 %82
  %84 = load %struct.TYPE_11__*, %struct.TYPE_11__** %83, align 8
  store %struct.TYPE_11__* %84, %struct.TYPE_11__** %18, align 8
  %85 = load i32, i32* %22, align 4
  %86 = icmp eq i32 %85, 0
  br i1 %86, label %87, label %96

87:                                               ; preds = %79
  %88 = load %struct.TYPE_11__*, %struct.TYPE_11__** %18, align 8
  %89 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %88, i32 0, i32 0
  %90 = load i64, i64* %89, align 8
  %91 = load i64*, i64** %12, align 8
  store i64 %90, i64* %91, align 8
  %92 = load %struct.TYPE_11__*, %struct.TYPE_11__** %18, align 8
  %93 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %92, i32 0, i32 1
  %94 = load i64, i64* %93, align 8
  %95 = load i64*, i64** %13, align 8
  store i64 %94, i64* %95, align 8
  br label %121

96:                                               ; preds = %79
  %97 = load %struct.TYPE_11__*, %struct.TYPE_11__** %18, align 8
  %98 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %97, i32 0, i32 1
  %99 = load i64, i64* %98, align 8
  %100 = load i64*, i64** %13, align 8
  %101 = load i64, i64* %100, align 8
  %102 = icmp slt i64 %99, %101
  br i1 %102, label %103, label %108

103:                                              ; preds = %96
  %104 = load %struct.TYPE_11__*, %struct.TYPE_11__** %18, align 8
  %105 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %104, i32 0, i32 1
  %106 = load i64, i64* %105, align 8
  %107 = load i64*, i64** %13, align 8
  store i64 %106, i64* %107, align 8
  br label %108

108:                                              ; preds = %103, %96
  %109 = load %struct.TYPE_11__*, %struct.TYPE_11__** %18, align 8
  %110 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %109, i32 0, i32 0
  %111 = load i64, i64* %110, align 8
  %112 = load i64*, i64** %12, align 8
  %113 = load i64, i64* %112, align 8
  %114 = icmp sgt i64 %111, %113
  br i1 %114, label %115, label %120

115:                                              ; preds = %108
  %116 = load %struct.TYPE_11__*, %struct.TYPE_11__** %18, align 8
  %117 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %116, i32 0, i32 0
  %118 = load i64, i64* %117, align 8
  %119 = load i64*, i64** %12, align 8
  store i64 %118, i64* %119, align 8
  br label %120

120:                                              ; preds = %115, %108
  br label %121

121:                                              ; preds = %120, %87
  br label %122

122:                                              ; preds = %121
  %123 = load i32, i32* %22, align 4
  %124 = add nsw i32 %123, 1
  store i32 %124, i32* %22, align 4
  br label %75

125:                                              ; preds = %75
  %126 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %127 = call %struct.TYPE_10__* @_dwarf_find_section(%struct.TYPE_12__* %126, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0))
  store %struct.TYPE_10__* %127, %struct.TYPE_10__** %20, align 8
  %128 = load %struct.TYPE_10__*, %struct.TYPE_10__** %20, align 8
  %129 = icmp ne %struct.TYPE_10__* %128, null
  %130 = zext i1 %129 to i32
  %131 = call i32 @assert(i32 %130)
  %132 = load %struct.TYPE_10__*, %struct.TYPE_10__** %20, align 8
  %133 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %132, i32 0, i32 0
  %134 = load i64, i64* %133, align 8
  %135 = inttoptr i64 %134 to i32*
  %136 = load i32, i32* %11, align 4
  %137 = sext i32 %136 to i64
  %138 = getelementptr inbounds i32, i32* %135, i64 %137
  %139 = load i32**, i32*** %14, align 8
  store i32* %138, i32** %139, align 8
  %140 = load i32, i32* %11, align 4
  %141 = load i32*, i32** %15, align 8
  %142 = load i32, i32* %141, align 4
  %143 = add nsw i32 %140, %142
  %144 = load i32*, i32** %16, align 8
  store i32 %143, i32* %144, align 4
  %145 = load i32, i32* @DW_DLV_OK, align 4
  store i32 %145, i32* %9, align 4
  br label %146

146:                                              ; preds = %125, %69, %59, %41
  %147 = load i32, i32* %9, align 4
  ret i32 %147
}

declare dso_local i32 @DWARF_SET_ERROR(%struct.TYPE_12__*, i32*, i32) #1

declare dso_local i32 @_dwarf_loclist_find(%struct.TYPE_12__*, i32, i32, %struct.TYPE_11__***, i32*, i32*, i32*) #1

declare dso_local i32 @STAILQ_FIRST(i32*) #1

declare dso_local %struct.TYPE_10__* @_dwarf_find_section(%struct.TYPE_12__*, i8*) #1

declare dso_local i32 @assert(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

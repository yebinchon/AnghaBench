; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/elftoolchain/libdwarf/extr_dwarf_attr.c_dwarf_attrlist.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/elftoolchain/libdwarf/extr_dwarf_attr.c_dwarf_attrlist.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32**, i32, %struct.TYPE_4__*, i32* }
%struct.TYPE_4__ = type { i64 }

@DW_DLE_ARGUMENT = common dso_local global i32 0, align 4
@DW_DLV_ERROR = common dso_local global i32 0, align 4
@DW_DLE_NO_ENTRY = common dso_local global i32 0, align 4
@DW_DLV_NO_ENTRY = common dso_local global i32 0, align 4
@DW_DLV_OK = common dso_local global i32 0, align 4
@DW_DLE_MEMORY = common dso_local global i32 0, align 4
@at_next = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @dwarf_attrlist(%struct.TYPE_5__* %0, i32*** %1, i32* %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_5__*, align 8
  %7 = alloca i32***, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %6, align 8
  store i32*** %1, i32**** %7, align 8
  store i32* %2, i32** %8, align 8
  store i32* %3, i32** %9, align 8
  %13 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %14 = icmp ne %struct.TYPE_5__* %13, null
  br i1 %14, label %15, label %19

15:                                               ; preds = %4
  %16 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %17 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %16, i32 0, i32 3
  %18 = load i32*, i32** %17, align 8
  br label %20

19:                                               ; preds = %4
  br label %20

20:                                               ; preds = %19, %15
  %21 = phi i32* [ %18, %15 ], [ null, %19 ]
  store i32* %21, i32** %11, align 8
  %22 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %23 = icmp eq %struct.TYPE_5__* %22, null
  br i1 %23, label %30, label %24

24:                                               ; preds = %20
  %25 = load i32***, i32**** %7, align 8
  %26 = icmp eq i32*** %25, null
  br i1 %26, label %30, label %27

27:                                               ; preds = %24
  %28 = load i32*, i32** %8, align 8
  %29 = icmp eq i32* %28, null
  br i1 %29, label %30, label %36

30:                                               ; preds = %27, %24, %20
  %31 = load i32*, i32** %11, align 8
  %32 = load i32*, i32** %9, align 8
  %33 = load i32, i32* @DW_DLE_ARGUMENT, align 4
  %34 = call i32 @DWARF_SET_ERROR(i32* %31, i32* %32, i32 %33)
  %35 = load i32, i32* @DW_DLV_ERROR, align 4
  store i32 %35, i32* %5, align 4
  br label %117

36:                                               ; preds = %27
  %37 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %38 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %37, i32 0, i32 2
  %39 = load %struct.TYPE_4__*, %struct.TYPE_4__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = icmp eq i64 %41, 0
  br i1 %42, label %43, label %49

43:                                               ; preds = %36
  %44 = load i32*, i32** %11, align 8
  %45 = load i32*, i32** %9, align 8
  %46 = load i32, i32* @DW_DLE_NO_ENTRY, align 4
  %47 = call i32 @DWARF_SET_ERROR(i32* %44, i32* %45, i32 %46)
  %48 = load i32, i32* @DW_DLV_NO_ENTRY, align 4
  store i32 %48, i32* %5, align 4
  br label %117

49:                                               ; preds = %36
  %50 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %51 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %50, i32 0, i32 2
  %52 = load %struct.TYPE_4__*, %struct.TYPE_4__** %51, align 8
  %53 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = trunc i64 %54 to i32
  %56 = load i32*, i32** %8, align 8
  store i32 %55, i32* %56, align 4
  %57 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %58 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %57, i32 0, i32 0
  %59 = load i32**, i32*** %58, align 8
  %60 = icmp ne i32** %59, null
  br i1 %60, label %61, label %67

61:                                               ; preds = %49
  %62 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %63 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %62, i32 0, i32 0
  %64 = load i32**, i32*** %63, align 8
  %65 = load i32***, i32**** %7, align 8
  store i32** %64, i32*** %65, align 8
  %66 = load i32, i32* @DW_DLV_OK, align 4
  store i32 %66, i32* %5, align 4
  br label %117

67:                                               ; preds = %49
  %68 = load i32*, i32** %8, align 8
  %69 = load i32, i32* %68, align 4
  %70 = sext i32 %69 to i64
  %71 = mul i64 %70, 8
  %72 = trunc i64 %71 to i32
  %73 = call i32** @malloc(i32 %72)
  %74 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %75 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %74, i32 0, i32 0
  store i32** %73, i32*** %75, align 8
  %76 = icmp eq i32** %73, null
  br i1 %76, label %77, label %83

77:                                               ; preds = %67
  %78 = load i32*, i32** %11, align 8
  %79 = load i32*, i32** %9, align 8
  %80 = load i32, i32* @DW_DLE_MEMORY, align 4
  %81 = call i32 @DWARF_SET_ERROR(i32* %78, i32* %79, i32 %80)
  %82 = load i32, i32* @DW_DLV_ERROR, align 4
  store i32 %82, i32* %5, align 4
  br label %117

83:                                               ; preds = %67
  store i32 0, i32* %12, align 4
  %84 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %85 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %84, i32 0, i32 1
  %86 = call i32* @STAILQ_FIRST(i32* %85)
  store i32* %86, i32** %10, align 8
  br label %87

87:                                               ; preds = %105, %83
  %88 = load i32, i32* %12, align 4
  %89 = load i32*, i32** %8, align 8
  %90 = load i32, i32* %89, align 4
  %91 = icmp slt i32 %88, %90
  br i1 %91, label %92, label %95

92:                                               ; preds = %87
  %93 = load i32*, i32** %10, align 8
  %94 = icmp ne i32* %93, null
  br label %95

95:                                               ; preds = %92, %87
  %96 = phi i1 [ false, %87 ], [ %94, %92 ]
  br i1 %96, label %97, label %111

97:                                               ; preds = %95
  %98 = load i32*, i32** %10, align 8
  %99 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %100 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %99, i32 0, i32 0
  %101 = load i32**, i32*** %100, align 8
  %102 = load i32, i32* %12, align 4
  %103 = sext i32 %102 to i64
  %104 = getelementptr inbounds i32*, i32** %101, i64 %103
  store i32* %98, i32** %104, align 8
  br label %105

105:                                              ; preds = %97
  %106 = load i32, i32* %12, align 4
  %107 = add nsw i32 %106, 1
  store i32 %107, i32* %12, align 4
  %108 = load i32*, i32** %10, align 8
  %109 = load i32, i32* @at_next, align 4
  %110 = call i32* @STAILQ_NEXT(i32* %108, i32 %109)
  store i32* %110, i32** %10, align 8
  br label %87

111:                                              ; preds = %95
  %112 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %113 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %112, i32 0, i32 0
  %114 = load i32**, i32*** %113, align 8
  %115 = load i32***, i32**** %7, align 8
  store i32** %114, i32*** %115, align 8
  %116 = load i32, i32* @DW_DLV_OK, align 4
  store i32 %116, i32* %5, align 4
  br label %117

117:                                              ; preds = %111, %77, %61, %43, %30
  %118 = load i32, i32* %5, align 4
  ret i32 %118
}

declare dso_local i32 @DWARF_SET_ERROR(i32*, i32*, i32) #1

declare dso_local i32** @malloc(i32) #1

declare dso_local i32* @STAILQ_FIRST(i32*) #1

declare dso_local i32* @STAILQ_NEXT(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

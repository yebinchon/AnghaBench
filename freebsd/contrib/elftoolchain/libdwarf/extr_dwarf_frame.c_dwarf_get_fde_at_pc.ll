; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/elftoolchain/libdwarf/extr_dwarf_frame.c_dwarf_get_fde_at_pc.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/elftoolchain/libdwarf/extr_dwarf_frame.c_dwarf_get_fde_at_pc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i64, i64, %struct.TYPE_5__*, i32* }
%struct.TYPE_5__ = type { i64 }

@DW_DLE_ARGUMENT = common dso_local global i32 0, align 4
@DW_DLV_ERROR = common dso_local global i32 0, align 4
@DW_DLV_OK = common dso_local global i32 0, align 4
@DW_DLE_NO_ENTRY = common dso_local global i32 0, align 4
@DW_DLV_NO_ENTRY = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @dwarf_get_fde_at_pc(%struct.TYPE_6__** %0, i64 %1, %struct.TYPE_6__** %2, i64* %3, i64* %4, i32* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_6__**, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.TYPE_6__**, align 8
  %11 = alloca i64*, align 8
  %12 = alloca i64*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca %struct.TYPE_5__*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca %struct.TYPE_6__*, align 8
  %17 = alloca i32, align 4
  store %struct.TYPE_6__** %0, %struct.TYPE_6__*** %8, align 8
  store i64 %1, i64* %9, align 8
  store %struct.TYPE_6__** %2, %struct.TYPE_6__*** %10, align 8
  store i64* %3, i64** %11, align 8
  store i64* %4, i64** %12, align 8
  store i32* %5, i32** %13, align 8
  %18 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %8, align 8
  %19 = icmp ne %struct.TYPE_6__** %18, null
  br i1 %19, label %20, label %25

20:                                               ; preds = %6
  %21 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %8, align 8
  %22 = load %struct.TYPE_6__*, %struct.TYPE_6__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %22, i32 0, i32 3
  %24 = load i32*, i32** %23, align 8
  br label %26

25:                                               ; preds = %6
  br label %26

26:                                               ; preds = %25, %20
  %27 = phi i32* [ %24, %20 ], [ null, %25 ]
  store i32* %27, i32** %15, align 8
  %28 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %8, align 8
  %29 = icmp eq %struct.TYPE_6__** %28, null
  br i1 %29, label %39, label %30

30:                                               ; preds = %26
  %31 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %10, align 8
  %32 = icmp eq %struct.TYPE_6__** %31, null
  br i1 %32, label %39, label %33

33:                                               ; preds = %30
  %34 = load i64*, i64** %11, align 8
  %35 = icmp eq i64* %34, null
  br i1 %35, label %39, label %36

36:                                               ; preds = %33
  %37 = load i64*, i64** %12, align 8
  %38 = icmp eq i64* %37, null
  br i1 %38, label %39, label %45

39:                                               ; preds = %36, %33, %30, %26
  %40 = load i32*, i32** %15, align 8
  %41 = load i32*, i32** %13, align 8
  %42 = load i32, i32* @DW_DLE_ARGUMENT, align 4
  %43 = call i32 @DWARF_SET_ERROR(i32* %40, i32* %41, i32 %42)
  %44 = load i32, i32* @DW_DLV_ERROR, align 4
  store i32 %44, i32* %7, align 4
  br label %110

45:                                               ; preds = %36
  %46 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %8, align 8
  %47 = getelementptr inbounds %struct.TYPE_6__*, %struct.TYPE_6__** %46, i64 0
  %48 = load %struct.TYPE_6__*, %struct.TYPE_6__** %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %48, i32 0, i32 2
  %50 = load %struct.TYPE_5__*, %struct.TYPE_5__** %49, align 8
  store %struct.TYPE_5__* %50, %struct.TYPE_5__** %14, align 8
  %51 = load %struct.TYPE_5__*, %struct.TYPE_5__** %14, align 8
  %52 = icmp ne %struct.TYPE_5__* %51, null
  %53 = zext i1 %52 to i32
  %54 = call i32 @assert(i32 %53)
  store i32 0, i32* %17, align 4
  br label %55

55:                                               ; preds = %101, %45
  %56 = load i32, i32* %17, align 4
  %57 = sext i32 %56 to i64
  %58 = load %struct.TYPE_5__*, %struct.TYPE_5__** %14, align 8
  %59 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %58, i32 0, i32 0
  %60 = load i64, i64* %59, align 8
  %61 = icmp slt i64 %57, %60
  br i1 %61, label %62, label %104

62:                                               ; preds = %55
  %63 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %8, align 8
  %64 = load i32, i32* %17, align 4
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds %struct.TYPE_6__*, %struct.TYPE_6__** %63, i64 %65
  %67 = load %struct.TYPE_6__*, %struct.TYPE_6__** %66, align 8
  store %struct.TYPE_6__* %67, %struct.TYPE_6__** %16, align 8
  %68 = load i64, i64* %9, align 8
  %69 = load %struct.TYPE_6__*, %struct.TYPE_6__** %16, align 8
  %70 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %69, i32 0, i32 0
  %71 = load i64, i64* %70, align 8
  %72 = icmp sge i64 %68, %71
  br i1 %72, label %73, label %100

73:                                               ; preds = %62
  %74 = load i64, i64* %9, align 8
  %75 = load %struct.TYPE_6__*, %struct.TYPE_6__** %16, align 8
  %76 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %75, i32 0, i32 0
  %77 = load i64, i64* %76, align 8
  %78 = load %struct.TYPE_6__*, %struct.TYPE_6__** %16, align 8
  %79 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %78, i32 0, i32 1
  %80 = load i64, i64* %79, align 8
  %81 = add nsw i64 %77, %80
  %82 = icmp slt i64 %74, %81
  br i1 %82, label %83, label %100

83:                                               ; preds = %73
  %84 = load %struct.TYPE_6__*, %struct.TYPE_6__** %16, align 8
  %85 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %10, align 8
  store %struct.TYPE_6__* %84, %struct.TYPE_6__** %85, align 8
  %86 = load %struct.TYPE_6__*, %struct.TYPE_6__** %16, align 8
  %87 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %86, i32 0, i32 0
  %88 = load i64, i64* %87, align 8
  %89 = load i64*, i64** %11, align 8
  store i64 %88, i64* %89, align 8
  %90 = load %struct.TYPE_6__*, %struct.TYPE_6__** %16, align 8
  %91 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %90, i32 0, i32 0
  %92 = load i64, i64* %91, align 8
  %93 = load %struct.TYPE_6__*, %struct.TYPE_6__** %16, align 8
  %94 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %93, i32 0, i32 1
  %95 = load i64, i64* %94, align 8
  %96 = add nsw i64 %92, %95
  %97 = sub nsw i64 %96, 1
  %98 = load i64*, i64** %12, align 8
  store i64 %97, i64* %98, align 8
  %99 = load i32, i32* @DW_DLV_OK, align 4
  store i32 %99, i32* %7, align 4
  br label %110

100:                                              ; preds = %73, %62
  br label %101

101:                                              ; preds = %100
  %102 = load i32, i32* %17, align 4
  %103 = add nsw i32 %102, 1
  store i32 %103, i32* %17, align 4
  br label %55

104:                                              ; preds = %55
  %105 = load i32*, i32** %15, align 8
  %106 = load i32*, i32** %13, align 8
  %107 = load i32, i32* @DW_DLE_NO_ENTRY, align 4
  %108 = call i32 @DWARF_SET_ERROR(i32* %105, i32* %106, i32 %107)
  %109 = load i32, i32* @DW_DLV_NO_ENTRY, align 4
  store i32 %109, i32* %7, align 4
  br label %110

110:                                              ; preds = %104, %83, %39
  %111 = load i32, i32* %7, align 4
  ret i32 %111
}

declare dso_local i32 @DWARF_SET_ERROR(i32*, i32*, i32) #1

declare dso_local i32 @assert(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

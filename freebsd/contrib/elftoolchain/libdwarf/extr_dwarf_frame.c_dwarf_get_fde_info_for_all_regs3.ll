; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/elftoolchain/libdwarf/extr_dwarf_frame.c_dwarf_get_fde_info_for_all_regs3.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/elftoolchain/libdwarf/extr_dwarf_frame.c_dwarf_get_fde_info_for_all_regs3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i64, i64, i32* }
%struct.TYPE_9__ = type { i32* }

@DW_DLE_ARGUMENT = common dso_local global i32 0, align 4
@DW_DLV_ERROR = common dso_local global i32 0, align 4
@DW_DLE_PC_NOT_IN_FDE_RANGE = common dso_local global i32 0, align 4
@DW_DLE_NONE = common dso_local global i32 0, align 4
@DW_DLV_OK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @dwarf_get_fde_info_for_all_regs3(%struct.TYPE_10__* %0, i64 %1, %struct.TYPE_9__* %2, i64* %3, i32* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_10__*, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.TYPE_9__*, align 8
  %10 = alloca i64*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca %struct.TYPE_9__*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  store %struct.TYPE_10__* %0, %struct.TYPE_10__** %7, align 8
  store i64 %1, i64* %8, align 8
  store %struct.TYPE_9__* %2, %struct.TYPE_9__** %9, align 8
  store i64* %3, i64** %10, align 8
  store i32* %4, i32** %11, align 8
  %16 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %17 = icmp ne %struct.TYPE_10__* %16, null
  br i1 %17, label %18, label %22

18:                                               ; preds = %5
  %19 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %20 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %19, i32 0, i32 2
  %21 = load i32*, i32** %20, align 8
  br label %23

22:                                               ; preds = %5
  br label %23

23:                                               ; preds = %22, %18
  %24 = phi i32* [ %21, %18 ], [ null, %22 ]
  store i32* %24, i32** %13, align 8
  %25 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %26 = icmp eq %struct.TYPE_10__* %25, null
  br i1 %26, label %38, label %27

27:                                               ; preds = %23
  %28 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %29 = icmp eq %struct.TYPE_9__* %28, null
  br i1 %29, label %38, label %30

30:                                               ; preds = %27
  %31 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %32 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %31, i32 0, i32 0
  %33 = load i32*, i32** %32, align 8
  %34 = icmp eq i32* %33, null
  br i1 %34, label %38, label %35

35:                                               ; preds = %30
  %36 = load i64*, i64** %10, align 8
  %37 = icmp eq i64* %36, null
  br i1 %37, label %38, label %44

38:                                               ; preds = %35, %30, %27, %23
  %39 = load i32*, i32** %13, align 8
  %40 = load i32*, i32** %11, align 8
  %41 = load i32, i32* @DW_DLE_ARGUMENT, align 4
  %42 = call i32 @DWARF_SET_ERROR(i32* %39, i32* %40, i32 %41)
  %43 = load i32, i32* @DW_DLV_ERROR, align 4
  store i32 %43, i32* %6, align 4
  br label %94

44:                                               ; preds = %35
  %45 = load i32*, i32** %13, align 8
  %46 = icmp ne i32* %45, null
  %47 = zext i1 %46 to i32
  %48 = call i32 @assert(i32 %47)
  %49 = load i64, i64* %8, align 8
  %50 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %51 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = icmp slt i64 %49, %52
  br i1 %53, label %64, label %54

54:                                               ; preds = %44
  %55 = load i64, i64* %8, align 8
  %56 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %57 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %56, i32 0, i32 0
  %58 = load i64, i64* %57, align 8
  %59 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %60 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %59, i32 0, i32 1
  %61 = load i64, i64* %60, align 8
  %62 = add nsw i64 %58, %61
  %63 = icmp sge i64 %55, %62
  br i1 %63, label %64, label %70

64:                                               ; preds = %54, %44
  %65 = load i32*, i32** %13, align 8
  %66 = load i32*, i32** %11, align 8
  %67 = load i32, i32* @DW_DLE_PC_NOT_IN_FDE_RANGE, align 4
  %68 = call i32 @DWARF_SET_ERROR(i32* %65, i32* %66, i32 %67)
  %69 = load i32, i32* @DW_DLV_ERROR, align 4
  store i32 %69, i32* %6, align 4
  br label %94

70:                                               ; preds = %54
  %71 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %72 = load i64, i64* %8, align 8
  %73 = load i32*, i32** %11, align 8
  %74 = call i32 @_dwarf_frame_get_internal_table(%struct.TYPE_10__* %71, i64 %72, %struct.TYPE_9__** %12, i64* %14, i32* %73)
  store i32 %74, i32* %15, align 4
  %75 = load i32, i32* %15, align 4
  %76 = load i32, i32* @DW_DLE_NONE, align 4
  %77 = icmp ne i32 %75, %76
  br i1 %77, label %78, label %80

78:                                               ; preds = %70
  %79 = load i32, i32* @DW_DLV_ERROR, align 4
  store i32 %79, i32* %6, align 4
  br label %94

80:                                               ; preds = %70
  %81 = load i32*, i32** %13, align 8
  %82 = load %struct.TYPE_9__*, %struct.TYPE_9__** %12, align 8
  %83 = load i32*, i32** %11, align 8
  %84 = call i32 @_dwarf_frame_regtable_copy(i32* %81, %struct.TYPE_9__** %9, %struct.TYPE_9__* %82, i32* %83)
  store i32 %84, i32* %15, align 4
  %85 = load i32, i32* %15, align 4
  %86 = load i32, i32* @DW_DLE_NONE, align 4
  %87 = icmp ne i32 %85, %86
  br i1 %87, label %88, label %90

88:                                               ; preds = %80
  %89 = load i32, i32* @DW_DLV_ERROR, align 4
  store i32 %89, i32* %6, align 4
  br label %94

90:                                               ; preds = %80
  %91 = load i64, i64* %14, align 8
  %92 = load i64*, i64** %10, align 8
  store i64 %91, i64* %92, align 8
  %93 = load i32, i32* @DW_DLV_OK, align 4
  store i32 %93, i32* %6, align 4
  br label %94

94:                                               ; preds = %90, %88, %78, %64, %38
  %95 = load i32, i32* %6, align 4
  ret i32 %95
}

declare dso_local i32 @DWARF_SET_ERROR(i32*, i32*, i32) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @_dwarf_frame_get_internal_table(%struct.TYPE_10__*, i64, %struct.TYPE_9__**, i64*, i32*) #1

declare dso_local i32 @_dwarf_frame_regtable_copy(i32*, %struct.TYPE_9__**, %struct.TYPE_9__*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

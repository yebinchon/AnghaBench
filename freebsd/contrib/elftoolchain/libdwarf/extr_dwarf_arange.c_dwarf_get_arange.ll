; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/elftoolchain/libdwarf/extr_dwarf_arange.c_dwarf_get_arange.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/elftoolchain/libdwarf/extr_dwarf_arange.c_dwarf_get_arange.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i64, i64, %struct.TYPE_7__* }
%struct.TYPE_7__ = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32* }

@DW_DLE_ARGUMENT = common dso_local global i32 0, align 4
@DW_DLV_ERROR = common dso_local global i32 0, align 4
@DW_DLV_OK = common dso_local global i32 0, align 4
@DW_DLE_NO_ENTRY = common dso_local global i32 0, align 4
@DW_DLV_NO_ENTRY = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @dwarf_get_arange(%struct.TYPE_8__** %0, i64 %1, i64 %2, %struct.TYPE_8__** %3, i32* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_8__**, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.TYPE_8__**, align 8
  %11 = alloca i32*, align 8
  %12 = alloca %struct.TYPE_8__*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32, align 4
  store %struct.TYPE_8__** %0, %struct.TYPE_8__*** %7, align 8
  store i64 %1, i64* %8, align 8
  store i64 %2, i64* %9, align 8
  store %struct.TYPE_8__** %3, %struct.TYPE_8__*** %10, align 8
  store i32* %4, i32** %11, align 8
  %15 = load %struct.TYPE_8__**, %struct.TYPE_8__*** %7, align 8
  %16 = icmp eq %struct.TYPE_8__** %15, null
  br i1 %16, label %17, label %22

17:                                               ; preds = %5
  %18 = load i32*, i32** %11, align 8
  %19 = load i32, i32* @DW_DLE_ARGUMENT, align 4
  %20 = call i32 @DWARF_SET_ERROR(i32* null, i32* %18, i32 %19)
  %21 = load i32, i32* @DW_DLV_ERROR, align 4
  store i32 %21, i32* %6, align 4
  br label %83

22:                                               ; preds = %5
  %23 = load %struct.TYPE_8__**, %struct.TYPE_8__*** %7, align 8
  %24 = load %struct.TYPE_8__*, %struct.TYPE_8__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %24, i32 0, i32 2
  %26 = load %struct.TYPE_7__*, %struct.TYPE_7__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %26, i32 0, i32 0
  %28 = load %struct.TYPE_6__*, %struct.TYPE_6__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %28, i32 0, i32 0
  %30 = load i32*, i32** %29, align 8
  store i32* %30, i32** %13, align 8
  %31 = load %struct.TYPE_8__**, %struct.TYPE_8__*** %10, align 8
  %32 = icmp eq %struct.TYPE_8__** %31, null
  br i1 %32, label %36, label %33

33:                                               ; preds = %22
  %34 = load i64, i64* %8, align 8
  %35 = icmp eq i64 %34, 0
  br i1 %35, label %36, label %42

36:                                               ; preds = %33, %22
  %37 = load i32*, i32** %13, align 8
  %38 = load i32*, i32** %11, align 8
  %39 = load i32, i32* @DW_DLE_ARGUMENT, align 4
  %40 = call i32 @DWARF_SET_ERROR(i32* %37, i32* %38, i32 %39)
  %41 = load i32, i32* @DW_DLV_ERROR, align 4
  store i32 %41, i32* %6, align 4
  br label %83

42:                                               ; preds = %33
  store i32 0, i32* %14, align 4
  br label %43

43:                                               ; preds = %74, %42
  %44 = load i32, i32* %14, align 4
  %45 = sext i32 %44 to i64
  %46 = load i64, i64* %8, align 8
  %47 = icmp slt i64 %45, %46
  br i1 %47, label %48, label %77

48:                                               ; preds = %43
  %49 = load %struct.TYPE_8__**, %struct.TYPE_8__*** %7, align 8
  %50 = load i32, i32* %14, align 4
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds %struct.TYPE_8__*, %struct.TYPE_8__** %49, i64 %51
  %53 = load %struct.TYPE_8__*, %struct.TYPE_8__** %52, align 8
  store %struct.TYPE_8__* %53, %struct.TYPE_8__** %12, align 8
  %54 = load i64, i64* %9, align 8
  %55 = load %struct.TYPE_8__*, %struct.TYPE_8__** %12, align 8
  %56 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %55, i32 0, i32 0
  %57 = load i64, i64* %56, align 8
  %58 = icmp sge i64 %54, %57
  br i1 %58, label %59, label %73

59:                                               ; preds = %48
  %60 = load i64, i64* %9, align 8
  %61 = load %struct.TYPE_8__*, %struct.TYPE_8__** %12, align 8
  %62 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %61, i32 0, i32 0
  %63 = load i64, i64* %62, align 8
  %64 = load %struct.TYPE_8__*, %struct.TYPE_8__** %12, align 8
  %65 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %64, i32 0, i32 1
  %66 = load i64, i64* %65, align 8
  %67 = add nsw i64 %63, %66
  %68 = icmp slt i64 %60, %67
  br i1 %68, label %69, label %73

69:                                               ; preds = %59
  %70 = load %struct.TYPE_8__*, %struct.TYPE_8__** %12, align 8
  %71 = load %struct.TYPE_8__**, %struct.TYPE_8__*** %10, align 8
  store %struct.TYPE_8__* %70, %struct.TYPE_8__** %71, align 8
  %72 = load i32, i32* @DW_DLV_OK, align 4
  store i32 %72, i32* %6, align 4
  br label %83

73:                                               ; preds = %59, %48
  br label %74

74:                                               ; preds = %73
  %75 = load i32, i32* %14, align 4
  %76 = add nsw i32 %75, 1
  store i32 %76, i32* %14, align 4
  br label %43

77:                                               ; preds = %43
  %78 = load i32*, i32** %13, align 8
  %79 = load i32*, i32** %11, align 8
  %80 = load i32, i32* @DW_DLE_NO_ENTRY, align 4
  %81 = call i32 @DWARF_SET_ERROR(i32* %78, i32* %79, i32 %80)
  %82 = load i32, i32* @DW_DLV_NO_ENTRY, align 4
  store i32 %82, i32* %6, align 4
  br label %83

83:                                               ; preds = %77, %69, %36, %17
  %84 = load i32, i32* %6, align 4
  ret i32 %84
}

declare dso_local i32 @DWARF_SET_ERROR(i32*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

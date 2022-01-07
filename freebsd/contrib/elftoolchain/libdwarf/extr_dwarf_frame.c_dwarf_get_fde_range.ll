; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/elftoolchain/libdwarf/extr_dwarf_frame.c_dwarf_get_fde_range.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/elftoolchain/libdwarf/extr_dwarf_frame.c_dwarf_get_fde_range.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, %struct.TYPE_4__*, i32, i32, i32, i32, i32, i32* }
%struct.TYPE_4__ = type { i32 }

@DW_DLE_ARGUMENT = common dso_local global i32 0, align 4
@DW_DLV_ERROR = common dso_local global i32 0, align 4
@DW_DLV_OK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @dwarf_get_fde_range(%struct.TYPE_5__* %0, i32* %1, i32* %2, i32* %3, i32* %4, i32* %5, i32* %6, i32* %7, i32* %8) #0 {
  %10 = alloca i32, align 4
  %11 = alloca %struct.TYPE_5__*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i32*, align 8
  %17 = alloca i32*, align 8
  %18 = alloca i32*, align 8
  %19 = alloca i32*, align 8
  %20 = alloca i32*, align 8
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %11, align 8
  store i32* %1, i32** %12, align 8
  store i32* %2, i32** %13, align 8
  store i32* %3, i32** %14, align 8
  store i32* %4, i32** %15, align 8
  store i32* %5, i32** %16, align 8
  store i32* %6, i32** %17, align 8
  store i32* %7, i32** %18, align 8
  store i32* %8, i32** %19, align 8
  %21 = load %struct.TYPE_5__*, %struct.TYPE_5__** %11, align 8
  %22 = icmp ne %struct.TYPE_5__* %21, null
  br i1 %22, label %23, label %27

23:                                               ; preds = %9
  %24 = load %struct.TYPE_5__*, %struct.TYPE_5__** %11, align 8
  %25 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %24, i32 0, i32 7
  %26 = load i32*, i32** %25, align 8
  br label %28

27:                                               ; preds = %9
  br label %28

28:                                               ; preds = %27, %23
  %29 = phi i32* [ %26, %23 ], [ null, %27 ]
  store i32* %29, i32** %20, align 8
  %30 = load %struct.TYPE_5__*, %struct.TYPE_5__** %11, align 8
  %31 = icmp eq %struct.TYPE_5__* %30, null
  br i1 %31, label %53, label %32

32:                                               ; preds = %28
  %33 = load i32*, i32** %12, align 8
  %34 = icmp eq i32* %33, null
  br i1 %34, label %53, label %35

35:                                               ; preds = %32
  %36 = load i32*, i32** %13, align 8
  %37 = icmp eq i32* %36, null
  br i1 %37, label %53, label %38

38:                                               ; preds = %35
  %39 = load i32*, i32** %14, align 8
  %40 = icmp eq i32* %39, null
  br i1 %40, label %53, label %41

41:                                               ; preds = %38
  %42 = load i32*, i32** %15, align 8
  %43 = icmp eq i32* %42, null
  br i1 %43, label %53, label %44

44:                                               ; preds = %41
  %45 = load i32*, i32** %16, align 8
  %46 = icmp eq i32* %45, null
  br i1 %46, label %53, label %47

47:                                               ; preds = %44
  %48 = load i32*, i32** %17, align 8
  %49 = icmp eq i32* %48, null
  br i1 %49, label %53, label %50

50:                                               ; preds = %47
  %51 = load i32*, i32** %18, align 8
  %52 = icmp eq i32* %51, null
  br i1 %52, label %53, label %59

53:                                               ; preds = %50, %47, %44, %41, %38, %35, %32, %28
  %54 = load i32*, i32** %20, align 8
  %55 = load i32*, i32** %19, align 8
  %56 = load i32, i32* @DW_DLE_ARGUMENT, align 4
  %57 = call i32 @DWARF_SET_ERROR(i32* %54, i32* %55, i32 %56)
  %58 = load i32, i32* @DW_DLV_ERROR, align 4
  store i32 %58, i32* %10, align 4
  br label %91

59:                                               ; preds = %50
  %60 = load %struct.TYPE_5__*, %struct.TYPE_5__** %11, align 8
  %61 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %60, i32 0, i32 6
  %62 = load i32, i32* %61, align 8
  %63 = load i32*, i32** %12, align 8
  store i32 %62, i32* %63, align 4
  %64 = load %struct.TYPE_5__*, %struct.TYPE_5__** %11, align 8
  %65 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %64, i32 0, i32 5
  %66 = load i32, i32* %65, align 4
  %67 = load i32*, i32** %13, align 8
  store i32 %66, i32* %67, align 4
  %68 = load %struct.TYPE_5__*, %struct.TYPE_5__** %11, align 8
  %69 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %68, i32 0, i32 4
  %70 = load i32, i32* %69, align 8
  %71 = load i32*, i32** %14, align 8
  store i32 %70, i32* %71, align 4
  %72 = load %struct.TYPE_5__*, %struct.TYPE_5__** %11, align 8
  %73 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %72, i32 0, i32 3
  %74 = load i32, i32* %73, align 4
  %75 = load i32*, i32** %15, align 8
  store i32 %74, i32* %75, align 4
  %76 = load %struct.TYPE_5__*, %struct.TYPE_5__** %11, align 8
  %77 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %76, i32 0, i32 2
  %78 = load i32, i32* %77, align 8
  %79 = load i32*, i32** %16, align 8
  store i32 %78, i32* %79, align 4
  %80 = load %struct.TYPE_5__*, %struct.TYPE_5__** %11, align 8
  %81 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %80, i32 0, i32 1
  %82 = load %struct.TYPE_4__*, %struct.TYPE_4__** %81, align 8
  %83 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 4
  %85 = load i32*, i32** %17, align 8
  store i32 %84, i32* %85, align 4
  %86 = load %struct.TYPE_5__*, %struct.TYPE_5__** %11, align 8
  %87 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 8
  %89 = load i32*, i32** %18, align 8
  store i32 %88, i32* %89, align 4
  %90 = load i32, i32* @DW_DLV_OK, align 4
  store i32 %90, i32* %10, align 4
  br label %91

91:                                               ; preds = %59, %53
  %92 = load i32, i32* %10, align 4
  ret i32 %92
}

declare dso_local i32 @DWARF_SET_ERROR(i32*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

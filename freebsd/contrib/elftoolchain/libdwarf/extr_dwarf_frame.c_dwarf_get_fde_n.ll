; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/elftoolchain/libdwarf/extr_dwarf_frame.c_dwarf_get_fde_n.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/elftoolchain/libdwarf/extr_dwarf_frame.c_dwarf_get_fde_n.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { %struct.TYPE_5__*, i32* }
%struct.TYPE_5__ = type { i64 }

@DW_DLE_ARGUMENT = common dso_local global i32 0, align 4
@DW_DLV_ERROR = common dso_local global i32 0, align 4
@DW_DLE_NO_ENTRY = common dso_local global i32 0, align 4
@DW_DLV_NO_ENTRY = common dso_local global i32 0, align 4
@DW_DLV_OK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @dwarf_get_fde_n(%struct.TYPE_6__** %0, i64 %1, %struct.TYPE_6__** %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_6__**, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.TYPE_6__**, align 8
  %9 = alloca i32*, align 8
  %10 = alloca %struct.TYPE_5__*, align 8
  %11 = alloca i32*, align 8
  store %struct.TYPE_6__** %0, %struct.TYPE_6__*** %6, align 8
  store i64 %1, i64* %7, align 8
  store %struct.TYPE_6__** %2, %struct.TYPE_6__*** %8, align 8
  store i32* %3, i32** %9, align 8
  %12 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %6, align 8
  %13 = icmp ne %struct.TYPE_6__** %12, null
  br i1 %13, label %14, label %19

14:                                               ; preds = %4
  %15 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %6, align 8
  %16 = load %struct.TYPE_6__*, %struct.TYPE_6__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %16, i32 0, i32 1
  %18 = load i32*, i32** %17, align 8
  br label %20

19:                                               ; preds = %4
  br label %20

20:                                               ; preds = %19, %14
  %21 = phi i32* [ %18, %14 ], [ null, %19 ]
  store i32* %21, i32** %11, align 8
  %22 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %6, align 8
  %23 = icmp eq %struct.TYPE_6__** %22, null
  br i1 %23, label %27, label %24

24:                                               ; preds = %20
  %25 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %8, align 8
  %26 = icmp eq %struct.TYPE_6__** %25, null
  br i1 %26, label %27, label %33

27:                                               ; preds = %24, %20
  %28 = load i32*, i32** %11, align 8
  %29 = load i32*, i32** %9, align 8
  %30 = load i32, i32* @DW_DLE_ARGUMENT, align 4
  %31 = call i32 @DWARF_SET_ERROR(i32* %28, i32* %29, i32 %30)
  %32 = load i32, i32* @DW_DLV_ERROR, align 4
  store i32 %32, i32* %5, align 4
  br label %61

33:                                               ; preds = %24
  %34 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %6, align 8
  %35 = getelementptr inbounds %struct.TYPE_6__*, %struct.TYPE_6__** %34, i64 0
  %36 = load %struct.TYPE_6__*, %struct.TYPE_6__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %36, i32 0, i32 0
  %38 = load %struct.TYPE_5__*, %struct.TYPE_5__** %37, align 8
  store %struct.TYPE_5__* %38, %struct.TYPE_5__** %10, align 8
  %39 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %40 = icmp ne %struct.TYPE_5__* %39, null
  %41 = zext i1 %40 to i32
  %42 = call i32 @assert(i32 %41)
  %43 = load i64, i64* %7, align 8
  %44 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %45 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = icmp sge i64 %43, %46
  br i1 %47, label %48, label %54

48:                                               ; preds = %33
  %49 = load i32*, i32** %11, align 8
  %50 = load i32*, i32** %9, align 8
  %51 = load i32, i32* @DW_DLE_NO_ENTRY, align 4
  %52 = call i32 @DWARF_SET_ERROR(i32* %49, i32* %50, i32 %51)
  %53 = load i32, i32* @DW_DLV_NO_ENTRY, align 4
  store i32 %53, i32* %5, align 4
  br label %61

54:                                               ; preds = %33
  %55 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %6, align 8
  %56 = load i64, i64* %7, align 8
  %57 = getelementptr inbounds %struct.TYPE_6__*, %struct.TYPE_6__** %55, i64 %56
  %58 = load %struct.TYPE_6__*, %struct.TYPE_6__** %57, align 8
  %59 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %8, align 8
  store %struct.TYPE_6__* %58, %struct.TYPE_6__** %59, align 8
  %60 = load i32, i32* @DW_DLV_OK, align 4
  store i32 %60, i32* %5, align 4
  br label %61

61:                                               ; preds = %54, %48, %27
  %62 = load i32, i32* %5, align 4
  ret i32 %62
}

declare dso_local i32 @DWARF_SET_ERROR(i32*, i32*, i32) #1

declare dso_local i32 @assert(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

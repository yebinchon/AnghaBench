; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/elftoolchain/libdwarf/extr_dwarf_init.c_dwarf_object_init.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/elftoolchain/libdwarf/extr_dwarf_init.c_dwarf_object_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32* }

@DW_DLE_ARGUMENT = common dso_local global i32 0, align 4
@DW_DLV_ERROR = common dso_local global i32 0, align 4
@DW_DLC_READ = common dso_local global i32 0, align 4
@DW_DLE_NONE = common dso_local global i64 0, align 8
@DW_DLV_OK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @dwarf_object_init(i32* %0, i32 %1, i32 %2, %struct.TYPE_6__** %3, i32* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_6__**, align 8
  %11 = alloca i32*, align 8
  %12 = alloca %struct.TYPE_6__*, align 8
  store i32* %0, i32** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store %struct.TYPE_6__** %3, %struct.TYPE_6__*** %10, align 8
  store i32* %4, i32** %11, align 8
  %13 = load i32*, i32** %7, align 8
  %14 = icmp eq i32* %13, null
  br i1 %14, label %18, label %15

15:                                               ; preds = %5
  %16 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %10, align 8
  %17 = icmp eq %struct.TYPE_6__** %16, null
  br i1 %17, label %18, label %23

18:                                               ; preds = %15, %5
  %19 = load i32*, i32** %11, align 8
  %20 = load i32, i32* @DW_DLE_ARGUMENT, align 4
  %21 = call i32 @DWARF_SET_ERROR(i32* null, i32* %19, i32 %20)
  %22 = load i32, i32* @DW_DLV_ERROR, align 4
  store i32 %22, i32* %6, align 4
  br label %50

23:                                               ; preds = %15
  %24 = load i32, i32* @DW_DLC_READ, align 4
  %25 = load i32*, i32** %11, align 8
  %26 = call i64 @_dwarf_alloc(%struct.TYPE_6__** %12, i32 %24, i32* %25)
  %27 = load i64, i64* @DW_DLE_NONE, align 8
  %28 = icmp ne i64 %26, %27
  br i1 %28, label %29, label %31

29:                                               ; preds = %23
  %30 = load i32, i32* @DW_DLV_ERROR, align 4
  store i32 %30, i32* %6, align 4
  br label %50

31:                                               ; preds = %23
  %32 = load i32*, i32** %7, align 8
  %33 = load %struct.TYPE_6__*, %struct.TYPE_6__** %12, align 8
  %34 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %33, i32 0, i32 0
  store i32* %32, i32** %34, align 8
  %35 = load %struct.TYPE_6__*, %struct.TYPE_6__** %12, align 8
  %36 = load i32, i32* %8, align 4
  %37 = load i32, i32* %9, align 4
  %38 = load i32*, i32** %11, align 8
  %39 = call i64 @_dwarf_init(%struct.TYPE_6__* %35, i32 0, i32 %36, i32 %37, i32* %38)
  %40 = load i64, i64* @DW_DLE_NONE, align 8
  %41 = icmp ne i64 %39, %40
  br i1 %41, label %42, label %46

42:                                               ; preds = %31
  %43 = load %struct.TYPE_6__*, %struct.TYPE_6__** %12, align 8
  %44 = call i32 @free(%struct.TYPE_6__* %43)
  %45 = load i32, i32* @DW_DLV_ERROR, align 4
  store i32 %45, i32* %6, align 4
  br label %50

46:                                               ; preds = %31
  %47 = load %struct.TYPE_6__*, %struct.TYPE_6__** %12, align 8
  %48 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %10, align 8
  store %struct.TYPE_6__* %47, %struct.TYPE_6__** %48, align 8
  %49 = load i32, i32* @DW_DLV_OK, align 4
  store i32 %49, i32* %6, align 4
  br label %50

50:                                               ; preds = %46, %42, %29, %18
  %51 = load i32, i32* %6, align 4
  ret i32 %51
}

declare dso_local i32 @DWARF_SET_ERROR(i32*, i32*, i32) #1

declare dso_local i64 @_dwarf_alloc(%struct.TYPE_6__**, i32, i32*) #1

declare dso_local i64 @_dwarf_init(%struct.TYPE_6__*, i32, i32, i32, i32*) #1

declare dso_local i32 @free(%struct.TYPE_6__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

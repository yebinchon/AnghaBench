; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/elftoolchain/libdwarf/extr_dwarf_abbrev.c_dwarf_get_abbrev.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/elftoolchain/libdwarf/extr_dwarf_abbrev.c_dwarf_get_abbrev.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32 }

@DW_DLE_ARGUMENT = common dso_local global i32 0, align 4
@DW_DLV_ERROR = common dso_local global i32 0, align 4
@DW_DLE_NONE = common dso_local global i32 0, align 4
@DW_DLE_NO_ENTRY = common dso_local global i32 0, align 4
@DW_DLV_NO_ENTRY = common dso_local global i32 0, align 4
@DW_DLV_OK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @dwarf_get_abbrev(i32* %0, i32 %1, %struct.TYPE_4__** %2, i32* %3, i32* %4, i32* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_4__**, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca %struct.TYPE_4__*, align 8
  %15 = alloca i32, align 4
  store i32* %0, i32** %8, align 8
  store i32 %1, i32* %9, align 4
  store %struct.TYPE_4__** %2, %struct.TYPE_4__*** %10, align 8
  store i32* %3, i32** %11, align 8
  store i32* %4, i32** %12, align 8
  store i32* %5, i32** %13, align 8
  %16 = load i32*, i32** %8, align 8
  %17 = icmp eq i32* %16, null
  br i1 %17, label %27, label %18

18:                                               ; preds = %6
  %19 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %10, align 8
  %20 = icmp eq %struct.TYPE_4__** %19, null
  br i1 %20, label %27, label %21

21:                                               ; preds = %18
  %22 = load i32*, i32** %11, align 8
  %23 = icmp eq i32* %22, null
  br i1 %23, label %27, label %24

24:                                               ; preds = %21
  %25 = load i32*, i32** %12, align 8
  %26 = icmp eq i32* %25, null
  br i1 %26, label %27, label %33

27:                                               ; preds = %24, %21, %18, %6
  %28 = load i32*, i32** %8, align 8
  %29 = load i32*, i32** %13, align 8
  %30 = load i32, i32* @DW_DLE_ARGUMENT, align 4
  %31 = call i32 @DWARF_SET_ERROR(i32* %28, i32* %29, i32 %30)
  %32 = load i32, i32* @DW_DLV_ERROR, align 4
  store i32 %32, i32* %7, align 4
  br label %64

33:                                               ; preds = %24
  %34 = load i32*, i32** %8, align 8
  %35 = load i32*, i32** %13, align 8
  %36 = call i32 @_dwarf_abbrev_parse(i32* %34, i32* null, i32* %9, %struct.TYPE_4__** %14, i32* %35)
  store i32 %36, i32* %15, align 4
  %37 = load i32, i32* %15, align 4
  %38 = load i32, i32* @DW_DLE_NONE, align 4
  %39 = icmp ne i32 %37, %38
  br i1 %39, label %40, label %52

40:                                               ; preds = %33
  %41 = load i32, i32* %15, align 4
  %42 = load i32, i32* @DW_DLE_NO_ENTRY, align 4
  %43 = icmp eq i32 %41, %42
  br i1 %43, label %44, label %50

44:                                               ; preds = %40
  %45 = load i32*, i32** %8, align 8
  %46 = load i32*, i32** %13, align 8
  %47 = load i32, i32* @DW_DLE_NO_ENTRY, align 4
  %48 = call i32 @DWARF_SET_ERROR(i32* %45, i32* %46, i32 %47)
  %49 = load i32, i32* @DW_DLV_NO_ENTRY, align 4
  store i32 %49, i32* %7, align 4
  br label %64

50:                                               ; preds = %40
  %51 = load i32, i32* @DW_DLV_ERROR, align 4
  store i32 %51, i32* %7, align 4
  br label %64

52:                                               ; preds = %33
  %53 = load %struct.TYPE_4__*, %struct.TYPE_4__** %14, align 8
  %54 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %10, align 8
  store %struct.TYPE_4__* %53, %struct.TYPE_4__** %54, align 8
  %55 = load %struct.TYPE_4__*, %struct.TYPE_4__** %14, align 8
  %56 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 4
  %58 = load i32*, i32** %11, align 8
  store i32 %57, i32* %58, align 4
  %59 = load %struct.TYPE_4__*, %struct.TYPE_4__** %14, align 8
  %60 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = load i32*, i32** %12, align 8
  store i32 %61, i32* %62, align 4
  %63 = load i32, i32* @DW_DLV_OK, align 4
  store i32 %63, i32* %7, align 4
  br label %64

64:                                               ; preds = %52, %50, %44, %27
  %65 = load i32, i32* %7, align 4
  ret i32 %65
}

declare dso_local i32 @DWARF_SET_ERROR(i32*, i32*, i32) #1

declare dso_local i32 @_dwarf_abbrev_parse(i32*, i32*, i32*, %struct.TYPE_4__**, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

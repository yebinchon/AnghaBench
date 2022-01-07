; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/elftoolchain/libdwarf/extr_dwarf_pro_die.c_dwarf_new_die.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/elftoolchain/libdwarf/extr_dwarf_pro_die.c_dwarf_new_die.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_23__ = type { i32, %struct.TYPE_24__* }
%struct.TYPE_24__ = type { i32 }

@DW_DLE_ARGUMENT = common dso_local global i32 0, align 4
@DW_DLV_BADADDR = common dso_local global %struct.TYPE_23__* null, align 8
@DW_DLE_NONE = common dso_local global i64 0, align 8
@die_pro_next = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_23__* @dwarf_new_die(%struct.TYPE_24__* %0, i32 %1, %struct.TYPE_23__* %2, %struct.TYPE_23__* %3, %struct.TYPE_23__* %4, %struct.TYPE_23__* %5, i32* %6) #0 {
  %8 = alloca %struct.TYPE_23__*, align 8
  %9 = alloca %struct.TYPE_24__*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.TYPE_23__*, align 8
  %12 = alloca %struct.TYPE_23__*, align 8
  %13 = alloca %struct.TYPE_23__*, align 8
  %14 = alloca %struct.TYPE_23__*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca %struct.TYPE_23__*, align 8
  %17 = alloca i32, align 4
  store %struct.TYPE_24__* %0, %struct.TYPE_24__** %9, align 8
  store i32 %1, i32* %10, align 4
  store %struct.TYPE_23__* %2, %struct.TYPE_23__** %11, align 8
  store %struct.TYPE_23__* %3, %struct.TYPE_23__** %12, align 8
  store %struct.TYPE_23__* %4, %struct.TYPE_23__** %13, align 8
  store %struct.TYPE_23__* %5, %struct.TYPE_23__** %14, align 8
  store i32* %6, i32** %15, align 8
  %18 = load %struct.TYPE_24__*, %struct.TYPE_24__** %9, align 8
  %19 = icmp eq %struct.TYPE_24__* %18, null
  br i1 %19, label %20, label %26

20:                                               ; preds = %7
  %21 = load %struct.TYPE_24__*, %struct.TYPE_24__** %9, align 8
  %22 = load i32*, i32** %15, align 8
  %23 = load i32, i32* @DW_DLE_ARGUMENT, align 4
  %24 = call i32 @DWARF_SET_ERROR(%struct.TYPE_24__* %21, i32* %22, i32 %23)
  %25 = load %struct.TYPE_23__*, %struct.TYPE_23__** @DW_DLV_BADADDR, align 8
  store %struct.TYPE_23__* %25, %struct.TYPE_23__** %8, align 8
  br label %72

26:                                               ; preds = %7
  %27 = load %struct.TYPE_23__*, %struct.TYPE_23__** %11, align 8
  %28 = load %struct.TYPE_23__*, %struct.TYPE_23__** %12, align 8
  %29 = load %struct.TYPE_23__*, %struct.TYPE_23__** %13, align 8
  %30 = load %struct.TYPE_23__*, %struct.TYPE_23__** %14, align 8
  %31 = call i32 @_dwarf_die_count_links(%struct.TYPE_23__* %27, %struct.TYPE_23__* %28, %struct.TYPE_23__* %29, %struct.TYPE_23__* %30)
  store i32 %31, i32* %17, align 4
  %32 = load i32, i32* %17, align 4
  %33 = icmp sgt i32 %32, 1
  br i1 %33, label %34, label %40

34:                                               ; preds = %26
  %35 = load %struct.TYPE_24__*, %struct.TYPE_24__** %9, align 8
  %36 = load i32*, i32** %15, align 8
  %37 = load i32, i32* @DW_DLE_ARGUMENT, align 4
  %38 = call i32 @DWARF_SET_ERROR(%struct.TYPE_24__* %35, i32* %36, i32 %37)
  %39 = load %struct.TYPE_23__*, %struct.TYPE_23__** @DW_DLV_BADADDR, align 8
  store %struct.TYPE_23__* %39, %struct.TYPE_23__** %8, align 8
  br label %72

40:                                               ; preds = %26
  %41 = load %struct.TYPE_24__*, %struct.TYPE_24__** %9, align 8
  %42 = load i32*, i32** %15, align 8
  %43 = call i64 @_dwarf_die_alloc(%struct.TYPE_24__* %41, %struct.TYPE_23__** %16, i32* %42)
  %44 = load i64, i64* @DW_DLE_NONE, align 8
  %45 = icmp ne i64 %43, %44
  br i1 %45, label %46, label %48

46:                                               ; preds = %40
  %47 = load %struct.TYPE_23__*, %struct.TYPE_23__** @DW_DLV_BADADDR, align 8
  store %struct.TYPE_23__* %47, %struct.TYPE_23__** %8, align 8
  br label %72

48:                                               ; preds = %40
  %49 = load %struct.TYPE_24__*, %struct.TYPE_24__** %9, align 8
  %50 = load %struct.TYPE_23__*, %struct.TYPE_23__** %16, align 8
  %51 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %50, i32 0, i32 1
  store %struct.TYPE_24__* %49, %struct.TYPE_24__** %51, align 8
  %52 = load i32, i32* %10, align 4
  %53 = load %struct.TYPE_23__*, %struct.TYPE_23__** %16, align 8
  %54 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %53, i32 0, i32 0
  store i32 %52, i32* %54, align 8
  %55 = load %struct.TYPE_24__*, %struct.TYPE_24__** %9, align 8
  %56 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %55, i32 0, i32 0
  %57 = load %struct.TYPE_23__*, %struct.TYPE_23__** %16, align 8
  %58 = load i32, i32* @die_pro_next, align 4
  %59 = call i32 @STAILQ_INSERT_TAIL(i32* %56, %struct.TYPE_23__* %57, i32 %58)
  %60 = load i32, i32* %17, align 4
  %61 = icmp eq i32 %60, 0
  br i1 %61, label %62, label %64

62:                                               ; preds = %48
  %63 = load %struct.TYPE_23__*, %struct.TYPE_23__** %16, align 8
  store %struct.TYPE_23__* %63, %struct.TYPE_23__** %8, align 8
  br label %72

64:                                               ; preds = %48
  %65 = load %struct.TYPE_23__*, %struct.TYPE_23__** %16, align 8
  %66 = load %struct.TYPE_23__*, %struct.TYPE_23__** %11, align 8
  %67 = load %struct.TYPE_23__*, %struct.TYPE_23__** %12, align 8
  %68 = load %struct.TYPE_23__*, %struct.TYPE_23__** %13, align 8
  %69 = load %struct.TYPE_23__*, %struct.TYPE_23__** %14, align 8
  %70 = call i32 @_dwarf_die_link(%struct.TYPE_23__* %65, %struct.TYPE_23__* %66, %struct.TYPE_23__* %67, %struct.TYPE_23__* %68, %struct.TYPE_23__* %69)
  %71 = load %struct.TYPE_23__*, %struct.TYPE_23__** %16, align 8
  store %struct.TYPE_23__* %71, %struct.TYPE_23__** %8, align 8
  br label %72

72:                                               ; preds = %64, %62, %46, %34, %20
  %73 = load %struct.TYPE_23__*, %struct.TYPE_23__** %8, align 8
  ret %struct.TYPE_23__* %73
}

declare dso_local i32 @DWARF_SET_ERROR(%struct.TYPE_24__*, i32*, i32) #1

declare dso_local i32 @_dwarf_die_count_links(%struct.TYPE_23__*, %struct.TYPE_23__*, %struct.TYPE_23__*, %struct.TYPE_23__*) #1

declare dso_local i64 @_dwarf_die_alloc(%struct.TYPE_24__*, %struct.TYPE_23__**, i32*) #1

declare dso_local i32 @STAILQ_INSERT_TAIL(i32*, %struct.TYPE_23__*, i32) #1

declare dso_local i32 @_dwarf_die_link(%struct.TYPE_23__*, %struct.TYPE_23__*, %struct.TYPE_23__*, %struct.TYPE_23__*, %struct.TYPE_23__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

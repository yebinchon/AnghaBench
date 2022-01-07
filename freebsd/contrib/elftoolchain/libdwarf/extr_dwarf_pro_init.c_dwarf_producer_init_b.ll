; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/elftoolchain/libdwarf/extr_dwarf_pro_init.c_dwarf_producer_init_b.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/elftoolchain/libdwarf/extr_dwarf_pro_init.c_dwarf_producer_init_b.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32, i32* }

@DW_DLC_READ = common dso_local global i32 0, align 4
@DW_DLC_RDWR = common dso_local global i32 0, align 4
@DW_DLE_ARGUMENT = common dso_local global i32 0, align 4
@DW_DLV_BADADDR = common dso_local global %struct.TYPE_7__* null, align 8
@DW_DLC_WRITE = common dso_local global i32 0, align 4
@DW_DLE_NONE = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_7__* @dwarf_producer_init_b(i32 %0, i32* %1, i32 %2, i32 %3, i32* %4) #0 {
  %6 = alloca %struct.TYPE_7__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca %struct.TYPE_7__*, align 8
  %13 = alloca i32, align 4
  store i32 %0, i32* %7, align 4
  store i32* %1, i32** %8, align 8
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32* %4, i32** %11, align 8
  %14 = load i32, i32* %7, align 4
  %15 = load i32, i32* @DW_DLC_READ, align 4
  %16 = and i32 %14, %15
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %23, label %18

18:                                               ; preds = %5
  %19 = load i32, i32* %7, align 4
  %20 = load i32, i32* @DW_DLC_RDWR, align 4
  %21 = and i32 %19, %20
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %28

23:                                               ; preds = %18, %5
  %24 = load i32*, i32** %11, align 8
  %25 = load i32, i32* @DW_DLE_ARGUMENT, align 4
  %26 = call i32 @DWARF_SET_ERROR(i32* null, i32* %24, i32 %25)
  %27 = load %struct.TYPE_7__*, %struct.TYPE_7__** @DW_DLV_BADADDR, align 8
  store %struct.TYPE_7__* %27, %struct.TYPE_7__** %6, align 8
  br label %77

28:                                               ; preds = %18
  %29 = load i32, i32* %7, align 4
  %30 = load i32, i32* @DW_DLC_WRITE, align 4
  %31 = and i32 %29, %30
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %35

33:                                               ; preds = %28
  %34 = load i32, i32* @DW_DLC_WRITE, align 4
  store i32 %34, i32* %13, align 4
  br label %40

35:                                               ; preds = %28
  %36 = load i32*, i32** %11, align 8
  %37 = load i32, i32* @DW_DLE_ARGUMENT, align 4
  %38 = call i32 @DWARF_SET_ERROR(i32* null, i32* %36, i32 %37)
  %39 = load %struct.TYPE_7__*, %struct.TYPE_7__** @DW_DLV_BADADDR, align 8
  store %struct.TYPE_7__* %39, %struct.TYPE_7__** %6, align 8
  br label %77

40:                                               ; preds = %33
  %41 = load i32*, i32** %8, align 8
  %42 = icmp eq i32* %41, null
  br i1 %42, label %43, label %48

43:                                               ; preds = %40
  %44 = load i32*, i32** %11, align 8
  %45 = load i32, i32* @DW_DLE_ARGUMENT, align 4
  %46 = call i32 @DWARF_SET_ERROR(i32* null, i32* %44, i32 %45)
  %47 = load %struct.TYPE_7__*, %struct.TYPE_7__** @DW_DLV_BADADDR, align 8
  store %struct.TYPE_7__* %47, %struct.TYPE_7__** %6, align 8
  br label %77

48:                                               ; preds = %40
  %49 = load i32, i32* @DW_DLC_WRITE, align 4
  %50 = load i32*, i32** %11, align 8
  %51 = call i64 @_dwarf_alloc(%struct.TYPE_7__** %12, i32 %49, i32* %50)
  %52 = load i64, i64* @DW_DLE_NONE, align 8
  %53 = icmp ne i64 %51, %52
  br i1 %53, label %54, label %56

54:                                               ; preds = %48
  %55 = load %struct.TYPE_7__*, %struct.TYPE_7__** @DW_DLV_BADADDR, align 8
  store %struct.TYPE_7__* %55, %struct.TYPE_7__** %6, align 8
  br label %77

56:                                               ; preds = %48
  %57 = load i32, i32* %13, align 4
  %58 = load %struct.TYPE_7__*, %struct.TYPE_7__** %12, align 8
  %59 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %58, i32 0, i32 0
  store i32 %57, i32* %59, align 8
  %60 = load %struct.TYPE_7__*, %struct.TYPE_7__** %12, align 8
  %61 = load i32, i32* %7, align 4
  %62 = load i32, i32* %9, align 4
  %63 = load i32, i32* %10, align 4
  %64 = load i32*, i32** %11, align 8
  %65 = call i64 @_dwarf_init(%struct.TYPE_7__* %60, i32 %61, i32 %62, i32 %63, i32* %64)
  %66 = load i64, i64* @DW_DLE_NONE, align 8
  %67 = icmp ne i64 %65, %66
  br i1 %67, label %68, label %72

68:                                               ; preds = %56
  %69 = load %struct.TYPE_7__*, %struct.TYPE_7__** %12, align 8
  %70 = call i32 @free(%struct.TYPE_7__* %69)
  %71 = load %struct.TYPE_7__*, %struct.TYPE_7__** @DW_DLV_BADADDR, align 8
  store %struct.TYPE_7__* %71, %struct.TYPE_7__** %6, align 8
  br label %77

72:                                               ; preds = %56
  %73 = load i32*, i32** %8, align 8
  %74 = load %struct.TYPE_7__*, %struct.TYPE_7__** %12, align 8
  %75 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %74, i32 0, i32 1
  store i32* %73, i32** %75, align 8
  %76 = load %struct.TYPE_7__*, %struct.TYPE_7__** %12, align 8
  store %struct.TYPE_7__* %76, %struct.TYPE_7__** %6, align 8
  br label %77

77:                                               ; preds = %72, %68, %54, %43, %35, %23
  %78 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  ret %struct.TYPE_7__* %78
}

declare dso_local i32 @DWARF_SET_ERROR(i32*, i32*, i32) #1

declare dso_local i64 @_dwarf_alloc(%struct.TYPE_7__**, i32, i32*) #1

declare dso_local i64 @_dwarf_init(%struct.TYPE_7__*, i32, i32, i32, i32*) #1

declare dso_local i32 @free(%struct.TYPE_7__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

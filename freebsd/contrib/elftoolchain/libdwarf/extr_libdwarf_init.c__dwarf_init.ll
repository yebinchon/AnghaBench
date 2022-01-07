; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/elftoolchain/libdwarf/extr_libdwarf_init.c__dwarf_init.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/elftoolchain/libdwarf/extr_libdwarf_init.c__dwarf_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i64, i32, i32, i32, i32, i32, i32, i32 }

@DW_DLE_NONE = common dso_local global i32 0, align 4
@DW_DLC_READ = common dso_local global i64 0, align 8
@DW_DLC_RDWR = common dso_local global i64 0, align 8
@DW_DLC_WRITE = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @_dwarf_init(%struct.TYPE_7__* %0, i32 %1, i32 %2, i32 %3, i32* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_7__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32* %4, i32** %11, align 8
  %13 = load i32, i32* @DW_DLE_NONE, align 4
  store i32 %13, i32* %12, align 4
  %14 = load i32, i32* %9, align 4
  %15 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %16 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %15, i32 0, i32 7
  store i32 %14, i32* %16, align 8
  %17 = load i32, i32* %10, align 4
  %18 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %19 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %18, i32 0, i32 6
  store i32 %17, i32* %19, align 4
  %20 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %21 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %20, i32 0, i32 5
  %22 = call i32 @STAILQ_INIT(i32* %21)
  %23 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %24 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %23, i32 0, i32 4
  %25 = call i32 @STAILQ_INIT(i32* %24)
  %26 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %27 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %26, i32 0, i32 3
  %28 = call i32 @STAILQ_INIT(i32* %27)
  %29 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %30 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %29, i32 0, i32 2
  %31 = call i32 @STAILQ_INIT(i32* %30)
  %32 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %33 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %32, i32 0, i32 1
  %34 = call i32 @STAILQ_INIT(i32* %33)
  %35 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %36 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = load i64, i64* @DW_DLC_READ, align 8
  %39 = icmp eq i64 %37, %38
  br i1 %39, label %46, label %40

40:                                               ; preds = %5
  %41 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %42 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = load i64, i64* @DW_DLC_RDWR, align 8
  %45 = icmp eq i64 %43, %44
  br i1 %45, label %46, label %58

46:                                               ; preds = %40, %5
  %47 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %48 = load i32*, i32** %11, align 8
  %49 = call i32 @_dwarf_consumer_init(%struct.TYPE_7__* %47, i32* %48)
  store i32 %49, i32* %12, align 4
  %50 = load i32, i32* %12, align 4
  %51 = load i32, i32* @DW_DLE_NONE, align 4
  %52 = icmp ne i32 %50, %51
  br i1 %52, label %53, label %57

53:                                               ; preds = %46
  %54 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %55 = call i32 @_dwarf_deinit(%struct.TYPE_7__* %54)
  %56 = load i32, i32* %12, align 4
  store i32 %56, i32* %6, align 4
  br label %87

57:                                               ; preds = %46
  br label %58

58:                                               ; preds = %57, %40
  %59 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %60 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %59, i32 0, i32 0
  %61 = load i64, i64* %60, align 8
  %62 = load i64, i64* @DW_DLC_WRITE, align 8
  %63 = icmp eq i64 %61, %62
  br i1 %63, label %64, label %77

64:                                               ; preds = %58
  %65 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %66 = load i32, i32* %8, align 4
  %67 = load i32*, i32** %11, align 8
  %68 = call i32 @_dwarf_producer_init(%struct.TYPE_7__* %65, i32 %66, i32* %67)
  store i32 %68, i32* %12, align 4
  %69 = load i32, i32* %12, align 4
  %70 = load i32, i32* @DW_DLE_NONE, align 4
  %71 = icmp ne i32 %69, %70
  br i1 %71, label %72, label %76

72:                                               ; preds = %64
  %73 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %74 = call i32 @_dwarf_deinit(%struct.TYPE_7__* %73)
  %75 = load i32, i32* %12, align 4
  store i32 %75, i32* %6, align 4
  br label %87

76:                                               ; preds = %64
  br label %77

77:                                               ; preds = %76, %58
  %78 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %79 = load i32*, i32** %11, align 8
  %80 = call i32 @_dwarf_strtab_init(%struct.TYPE_7__* %78, i32* %79)
  store i32 %80, i32* %12, align 4
  %81 = load i32, i32* @DW_DLE_NONE, align 4
  %82 = icmp ne i32 %80, %81
  br i1 %82, label %83, label %85

83:                                               ; preds = %77
  %84 = load i32, i32* %12, align 4
  store i32 %84, i32* %6, align 4
  br label %87

85:                                               ; preds = %77
  %86 = load i32, i32* @DW_DLE_NONE, align 4
  store i32 %86, i32* %6, align 4
  br label %87

87:                                               ; preds = %85, %83, %72, %53
  %88 = load i32, i32* %6, align 4
  ret i32 %88
}

declare dso_local i32 @STAILQ_INIT(i32*) #1

declare dso_local i32 @_dwarf_consumer_init(%struct.TYPE_7__*, i32*) #1

declare dso_local i32 @_dwarf_deinit(%struct.TYPE_7__*) #1

declare dso_local i32 @_dwarf_producer_init(%struct.TYPE_7__*, i32, i32*) #1

declare dso_local i32 @_dwarf_strtab_init(%struct.TYPE_7__*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

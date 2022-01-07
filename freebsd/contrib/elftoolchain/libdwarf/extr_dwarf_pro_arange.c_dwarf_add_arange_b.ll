; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/elftoolchain/libdwarf/extr_dwarf_pro_arange.c_dwarf_add_arange_b.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/elftoolchain/libdwarf/extr_dwarf_pro_arange.c_dwarf_add_arange_b.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32, %struct.TYPE_9__* }
%struct.TYPE_9__ = type { i32 }
%struct.TYPE_10__ = type { i8*, i64, i64, i64, i8*, %struct.TYPE_9__* }

@DW_DLE_ARGUMENT = common dso_local global i32 0, align 4
@DW_DLC_SYMBOLIC_RELOCATIONS = common dso_local global i32 0, align 4
@DW_DLE_MEMORY = common dso_local global i32 0, align 4
@ar_next = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @dwarf_add_arange_b(%struct.TYPE_8__* %0, i8* %1, i64 %2, i64 %3, i64 %4, i8* %5, i32* %6) #0 {
  %8 = alloca i64, align 8
  %9 = alloca %struct.TYPE_8__*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca %struct.TYPE_9__*, align 8
  %17 = alloca %struct.TYPE_10__*, align 8
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %9, align 8
  store i8* %1, i8** %10, align 8
  store i64 %2, i64* %11, align 8
  store i64 %3, i64* %12, align 8
  store i64 %4, i64* %13, align 8
  store i8* %5, i8** %14, align 8
  store i32* %6, i32** %15, align 8
  %18 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %19 = icmp eq %struct.TYPE_8__* %18, null
  br i1 %19, label %20, label %25

20:                                               ; preds = %7
  %21 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %22 = load i32*, i32** %15, align 8
  %23 = load i32, i32* @DW_DLE_ARGUMENT, align 4
  %24 = call i32 @DWARF_SET_ERROR(%struct.TYPE_8__* %21, i32* %22, i32 %23)
  store i64 0, i64* %8, align 8
  br label %75

25:                                               ; preds = %7
  %26 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %27 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %26, i32 0, i32 1
  %28 = load %struct.TYPE_9__*, %struct.TYPE_9__** %27, align 8
  store %struct.TYPE_9__* %28, %struct.TYPE_9__** %16, align 8
  %29 = load i64, i64* %13, align 8
  %30 = icmp sgt i64 %29, 0
  br i1 %30, label %31, label %43

31:                                               ; preds = %25
  %32 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %33 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = load i32, i32* @DW_DLC_SYMBOLIC_RELOCATIONS, align 4
  %36 = and i32 %34, %35
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %38, label %43

38:                                               ; preds = %31
  %39 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %40 = load i32*, i32** %15, align 8
  %41 = load i32, i32* @DW_DLE_ARGUMENT, align 4
  %42 = call i32 @DWARF_SET_ERROR(%struct.TYPE_8__* %39, i32* %40, i32 %41)
  store i64 0, i64* %8, align 8
  br label %75

43:                                               ; preds = %31, %25
  %44 = call %struct.TYPE_10__* @calloc(i32 1, i32 4)
  store %struct.TYPE_10__* %44, %struct.TYPE_10__** %17, align 8
  %45 = icmp eq %struct.TYPE_10__* %44, null
  br i1 %45, label %46, label %51

46:                                               ; preds = %43
  %47 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %48 = load i32*, i32** %15, align 8
  %49 = load i32, i32* @DW_DLE_MEMORY, align 4
  %50 = call i32 @DWARF_SET_ERROR(%struct.TYPE_8__* %47, i32* %48, i32 %49)
  store i64 0, i64* %8, align 8
  br label %75

51:                                               ; preds = %43
  %52 = load %struct.TYPE_9__*, %struct.TYPE_9__** %16, align 8
  %53 = load %struct.TYPE_10__*, %struct.TYPE_10__** %17, align 8
  %54 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %53, i32 0, i32 5
  store %struct.TYPE_9__* %52, %struct.TYPE_9__** %54, align 8
  %55 = load i8*, i8** %10, align 8
  %56 = load %struct.TYPE_10__*, %struct.TYPE_10__** %17, align 8
  %57 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %56, i32 0, i32 4
  store i8* %55, i8** %57, align 8
  %58 = load i64, i64* %11, align 8
  %59 = load %struct.TYPE_10__*, %struct.TYPE_10__** %17, align 8
  %60 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %59, i32 0, i32 3
  store i64 %58, i64* %60, align 8
  %61 = load i64, i64* %12, align 8
  %62 = load %struct.TYPE_10__*, %struct.TYPE_10__** %17, align 8
  %63 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %62, i32 0, i32 2
  store i64 %61, i64* %63, align 8
  %64 = load i64, i64* %13, align 8
  %65 = load %struct.TYPE_10__*, %struct.TYPE_10__** %17, align 8
  %66 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %65, i32 0, i32 1
  store i64 %64, i64* %66, align 8
  %67 = load i8*, i8** %14, align 8
  %68 = load %struct.TYPE_10__*, %struct.TYPE_10__** %17, align 8
  %69 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %68, i32 0, i32 0
  store i8* %67, i8** %69, align 8
  %70 = load %struct.TYPE_9__*, %struct.TYPE_9__** %16, align 8
  %71 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %70, i32 0, i32 0
  %72 = load %struct.TYPE_10__*, %struct.TYPE_10__** %17, align 8
  %73 = load i32, i32* @ar_next, align 4
  %74 = call i32 @STAILQ_INSERT_TAIL(i32* %71, %struct.TYPE_10__* %72, i32 %73)
  store i64 1, i64* %8, align 8
  br label %75

75:                                               ; preds = %51, %46, %38, %20
  %76 = load i64, i64* %8, align 8
  ret i64 %76
}

declare dso_local i32 @DWARF_SET_ERROR(%struct.TYPE_8__*, i32*, i32) #1

declare dso_local %struct.TYPE_10__* @calloc(i32, i32) #1

declare dso_local i32 @STAILQ_INSERT_TAIL(i32*, %struct.TYPE_10__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

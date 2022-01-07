; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/elftoolchain/libdwarf/extr_libdwarf_attr.c__dwarf_add_AT_dataref.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/elftoolchain/libdwarf/extr_libdwarf_attr.c__dwarf_add_AT_dataref.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_14__ = type { i32 }
%struct.TYPE_13__ = type { i32 }
%struct.TYPE_15__ = type { i8*, %struct.TYPE_12__*, i8*, i32, i32, %struct.TYPE_13__* }
%struct.TYPE_12__ = type { i8* }

@DW_DLE_NONE = common dso_local global i32 0, align 4
@DW_FORM_data4 = common dso_local global i32 0, align 4
@DW_FORM_data8 = common dso_local global i32 0, align 4
@at_next = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @_dwarf_add_AT_dataref(%struct.TYPE_14__* %0, %struct.TYPE_13__* %1, i32 %2, i8* %3, i8* %4, i8* %5, %struct.TYPE_15__** %6, i32* %7) #0 {
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_14__*, align 8
  %11 = alloca %struct.TYPE_13__*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i8*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca %struct.TYPE_15__**, align 8
  %17 = alloca i32*, align 8
  %18 = alloca %struct.TYPE_15__*, align 8
  %19 = alloca i32, align 4
  store %struct.TYPE_14__* %0, %struct.TYPE_14__** %10, align 8
  store %struct.TYPE_13__* %1, %struct.TYPE_13__** %11, align 8
  store i32 %2, i32* %12, align 4
  store i8* %3, i8** %13, align 8
  store i8* %4, i8** %14, align 8
  store i8* %5, i8** %15, align 8
  store %struct.TYPE_15__** %6, %struct.TYPE_15__*** %16, align 8
  store i32* %7, i32** %17, align 8
  %20 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %21 = icmp ne %struct.TYPE_14__* %20, null
  br i1 %21, label %22, label %25

22:                                               ; preds = %8
  %23 = load %struct.TYPE_13__*, %struct.TYPE_13__** %11, align 8
  %24 = icmp ne %struct.TYPE_13__* %23, null
  br label %25

25:                                               ; preds = %22, %8
  %26 = phi i1 [ false, %8 ], [ %24, %22 ]
  %27 = zext i1 %26 to i32
  %28 = call i32 @assert(i32 %27)
  %29 = load %struct.TYPE_13__*, %struct.TYPE_13__** %11, align 8
  %30 = load i32*, i32** %17, align 8
  %31 = call i32 @_dwarf_attr_alloc(%struct.TYPE_13__* %29, %struct.TYPE_15__** %18, i32* %30)
  store i32 %31, i32* %19, align 4
  %32 = load i32, i32* @DW_DLE_NONE, align 4
  %33 = icmp ne i32 %31, %32
  br i1 %33, label %34, label %36

34:                                               ; preds = %25
  %35 = load i32, i32* %19, align 4
  store i32 %35, i32* %9, align 4
  br label %80

36:                                               ; preds = %25
  %37 = load %struct.TYPE_13__*, %struct.TYPE_13__** %11, align 8
  %38 = load %struct.TYPE_15__*, %struct.TYPE_15__** %18, align 8
  %39 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %38, i32 0, i32 5
  store %struct.TYPE_13__* %37, %struct.TYPE_13__** %39, align 8
  %40 = load i32, i32* %12, align 4
  %41 = load %struct.TYPE_15__*, %struct.TYPE_15__** %18, align 8
  %42 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %41, i32 0, i32 4
  store i32 %40, i32* %42, align 4
  %43 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %44 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = icmp eq i32 %45, 4
  br i1 %46, label %47, label %51

47:                                               ; preds = %36
  %48 = load i32, i32* @DW_FORM_data4, align 4
  %49 = load %struct.TYPE_15__*, %struct.TYPE_15__** %18, align 8
  %50 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %49, i32 0, i32 3
  store i32 %48, i32* %50, align 8
  br label %55

51:                                               ; preds = %36
  %52 = load i32, i32* @DW_FORM_data8, align 4
  %53 = load %struct.TYPE_15__*, %struct.TYPE_15__** %18, align 8
  %54 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %53, i32 0, i32 3
  store i32 %52, i32* %54, align 8
  br label %55

55:                                               ; preds = %51, %47
  %56 = load i8*, i8** %14, align 8
  %57 = load %struct.TYPE_15__*, %struct.TYPE_15__** %18, align 8
  %58 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %57, i32 0, i32 2
  store i8* %56, i8** %58, align 8
  %59 = load i8*, i8** %15, align 8
  %60 = load %struct.TYPE_15__*, %struct.TYPE_15__** %18, align 8
  %61 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %60, i32 0, i32 0
  store i8* %59, i8** %61, align 8
  %62 = load i8*, i8** %13, align 8
  %63 = load %struct.TYPE_15__*, %struct.TYPE_15__** %18, align 8
  %64 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %63, i32 0, i32 1
  %65 = load %struct.TYPE_12__*, %struct.TYPE_12__** %64, align 8
  %66 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %65, i64 0
  %67 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %66, i32 0, i32 0
  store i8* %62, i8** %67, align 8
  %68 = load %struct.TYPE_13__*, %struct.TYPE_13__** %11, align 8
  %69 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %68, i32 0, i32 0
  %70 = load %struct.TYPE_15__*, %struct.TYPE_15__** %18, align 8
  %71 = load i32, i32* @at_next, align 4
  %72 = call i32 @STAILQ_INSERT_TAIL(i32* %69, %struct.TYPE_15__* %70, i32 %71)
  %73 = load %struct.TYPE_15__**, %struct.TYPE_15__*** %16, align 8
  %74 = icmp ne %struct.TYPE_15__** %73, null
  br i1 %74, label %75, label %78

75:                                               ; preds = %55
  %76 = load %struct.TYPE_15__*, %struct.TYPE_15__** %18, align 8
  %77 = load %struct.TYPE_15__**, %struct.TYPE_15__*** %16, align 8
  store %struct.TYPE_15__* %76, %struct.TYPE_15__** %77, align 8
  br label %78

78:                                               ; preds = %75, %55
  %79 = load i32, i32* @DW_DLE_NONE, align 4
  store i32 %79, i32* %9, align 4
  br label %80

80:                                               ; preds = %78, %34
  %81 = load i32, i32* %9, align 4
  ret i32 %81
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @_dwarf_attr_alloc(%struct.TYPE_13__*, %struct.TYPE_15__**, i32*) #1

declare dso_local i32 @STAILQ_INSERT_TAIL(i32*, %struct.TYPE_15__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/elftoolchain/libdwarf/extr_dwarf_abbrev.c_dwarf_get_abbrev_entry.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/elftoolchain/libdwarf/extr_dwarf_abbrev.c_dwarf_get_abbrev_entry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i64, i32 }
%struct.TYPE_7__ = type { i32, i32, i32 }

@DW_DLE_ARGUMENT = common dso_local global i32 0, align 4
@DW_DLV_ERROR = common dso_local global i32 0, align 4
@DW_DLE_NO_ENTRY = common dso_local global i32 0, align 4
@DW_DLV_NO_ENTRY = common dso_local global i32 0, align 4
@ad_next = common dso_local global i32 0, align 4
@DW_DLV_OK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @dwarf_get_abbrev_entry(%struct.TYPE_8__* %0, i32 %1, i32* %2, i32* %3, i32* %4, i32* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_8__*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca %struct.TYPE_7__*, align 8
  %15 = alloca i32, align 4
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %8, align 8
  store i32 %1, i32* %9, align 4
  store i32* %2, i32** %10, align 8
  store i32* %3, i32** %11, align 8
  store i32* %4, i32** %12, align 8
  store i32* %5, i32** %13, align 8
  %16 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %17 = icmp eq %struct.TYPE_8__* %16, null
  br i1 %17, label %27, label %18

18:                                               ; preds = %6
  %19 = load i32*, i32** %10, align 8
  %20 = icmp eq i32* %19, null
  br i1 %20, label %27, label %21

21:                                               ; preds = %18
  %22 = load i32*, i32** %11, align 8
  %23 = icmp eq i32* %22, null
  br i1 %23, label %27, label %24

24:                                               ; preds = %21
  %25 = load i32*, i32** %12, align 8
  %26 = icmp eq i32* %25, null
  br i1 %26, label %27, label %32

27:                                               ; preds = %24, %21, %18, %6
  %28 = load i32*, i32** %13, align 8
  %29 = load i32, i32* @DW_DLE_ARGUMENT, align 4
  %30 = call i32 @DWARF_SET_ERROR(i32* null, i32* %28, i32 %29)
  %31 = load i32, i32* @DW_DLV_ERROR, align 4
  store i32 %31, i32* %7, align 4
  br label %85

32:                                               ; preds = %24
  %33 = load i32, i32* %9, align 4
  %34 = icmp slt i32 %33, 0
  br i1 %34, label %42, label %35

35:                                               ; preds = %32
  %36 = load i32, i32* %9, align 4
  %37 = sext i32 %36 to i64
  %38 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %39 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = icmp sge i64 %37, %40
  br i1 %41, label %42, label %47

42:                                               ; preds = %35, %32
  %43 = load i32*, i32** %13, align 8
  %44 = load i32, i32* @DW_DLE_NO_ENTRY, align 4
  %45 = call i32 @DWARF_SET_ERROR(i32* null, i32* %43, i32 %44)
  %46 = load i32, i32* @DW_DLV_NO_ENTRY, align 4
  store i32 %46, i32* %7, align 4
  br label %85

47:                                               ; preds = %35
  %48 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %49 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %48, i32 0, i32 1
  %50 = call %struct.TYPE_7__* @STAILQ_FIRST(i32* %49)
  store %struct.TYPE_7__* %50, %struct.TYPE_7__** %14, align 8
  store i32 0, i32* %15, align 4
  br label %51

51:                                               ; preds = %64, %47
  %52 = load i32, i32* %15, align 4
  %53 = load i32, i32* %9, align 4
  %54 = icmp slt i32 %52, %53
  br i1 %54, label %55, label %58

55:                                               ; preds = %51
  %56 = load %struct.TYPE_7__*, %struct.TYPE_7__** %14, align 8
  %57 = icmp ne %struct.TYPE_7__* %56, null
  br label %58

58:                                               ; preds = %55, %51
  %59 = phi i1 [ false, %51 ], [ %57, %55 ]
  br i1 %59, label %60, label %67

60:                                               ; preds = %58
  %61 = load %struct.TYPE_7__*, %struct.TYPE_7__** %14, align 8
  %62 = load i32, i32* @ad_next, align 4
  %63 = call %struct.TYPE_7__* @STAILQ_NEXT(%struct.TYPE_7__* %61, i32 %62)
  store %struct.TYPE_7__* %63, %struct.TYPE_7__** %14, align 8
  br label %64

64:                                               ; preds = %60
  %65 = load i32, i32* %15, align 4
  %66 = add nsw i32 %65, 1
  store i32 %66, i32* %15, align 4
  br label %51

67:                                               ; preds = %58
  %68 = load %struct.TYPE_7__*, %struct.TYPE_7__** %14, align 8
  %69 = icmp ne %struct.TYPE_7__* %68, null
  %70 = zext i1 %69 to i32
  %71 = call i32 @assert(i32 %70)
  %72 = load %struct.TYPE_7__*, %struct.TYPE_7__** %14, align 8
  %73 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %72, i32 0, i32 2
  %74 = load i32, i32* %73, align 4
  %75 = load i32*, i32** %10, align 8
  store i32 %74, i32* %75, align 4
  %76 = load %struct.TYPE_7__*, %struct.TYPE_7__** %14, align 8
  %77 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 4
  %79 = load i32*, i32** %11, align 8
  store i32 %78, i32* %79, align 4
  %80 = load %struct.TYPE_7__*, %struct.TYPE_7__** %14, align 8
  %81 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %80, i32 0, i32 1
  %82 = load i32, i32* %81, align 4
  %83 = load i32*, i32** %12, align 8
  store i32 %82, i32* %83, align 4
  %84 = load i32, i32* @DW_DLV_OK, align 4
  store i32 %84, i32* %7, align 4
  br label %85

85:                                               ; preds = %67, %42, %27
  %86 = load i32, i32* %7, align 4
  ret i32 %86
}

declare dso_local i32 @DWARF_SET_ERROR(i32*, i32*, i32) #1

declare dso_local %struct.TYPE_7__* @STAILQ_FIRST(i32*) #1

declare dso_local %struct.TYPE_7__* @STAILQ_NEXT(%struct.TYPE_7__*, i32) #1

declare dso_local i32 @assert(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

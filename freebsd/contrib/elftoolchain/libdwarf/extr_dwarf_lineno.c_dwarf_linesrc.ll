; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/elftoolchain/libdwarf/extr_dwarf_lineno.c_dwarf_linesrc.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/elftoolchain/libdwarf/extr_dwarf_lineno.c_dwarf_linesrc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i64, %struct.TYPE_8__* }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_9__ = type { i8*, i64 }

@DW_DLE_ARGUMENT = common dso_local global i32 0, align 4
@DW_DLV_ERROR = common dso_local global i32 0, align 4
@lf_next = common dso_local global i32 0, align 4
@DW_DLE_LINE_FILE_NUM_BAD = common dso_local global i32 0, align 4
@DW_DLV_OK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @dwarf_linesrc(%struct.TYPE_10__* %0, i8** %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_10__*, align 8
  %6 = alloca i8**, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.TYPE_8__*, align 8
  %9 = alloca %struct.TYPE_9__*, align 8
  %10 = alloca i32, align 4
  store %struct.TYPE_10__* %0, %struct.TYPE_10__** %5, align 8
  store i8** %1, i8*** %6, align 8
  store i32* %2, i32** %7, align 8
  %11 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %12 = icmp eq %struct.TYPE_10__* %11, null
  br i1 %12, label %16, label %13

13:                                               ; preds = %3
  %14 = load i8**, i8*** %6, align 8
  %15 = icmp eq i8** %14, null
  br i1 %15, label %16, label %21

16:                                               ; preds = %13, %3
  %17 = load i32*, i32** %7, align 8
  %18 = load i32, i32* @DW_DLE_ARGUMENT, align 4
  %19 = call i32 @DWARF_SET_ERROR(i32* null, i32* %17, i32 %18)
  %20 = load i32, i32* @DW_DLV_ERROR, align 4
  store i32 %20, i32* %4, align 4
  br label %77

21:                                               ; preds = %13
  %22 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %23 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %22, i32 0, i32 1
  %24 = load %struct.TYPE_8__*, %struct.TYPE_8__** %23, align 8
  store %struct.TYPE_8__* %24, %struct.TYPE_8__** %8, align 8
  %25 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %26 = icmp ne %struct.TYPE_8__* %25, null
  %27 = zext i1 %26 to i32
  %28 = call i32 @assert(i32 %27)
  store i32 1, i32* %10, align 4
  %29 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %30 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %29, i32 0, i32 0
  %31 = call %struct.TYPE_9__* @STAILQ_FIRST(i32* %30)
  store %struct.TYPE_9__* %31, %struct.TYPE_9__** %9, align 8
  br label %32

32:                                               ; preds = %45, %21
  %33 = load i32, i32* %10, align 4
  %34 = sext i32 %33 to i64
  %35 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %36 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = icmp slt i64 %34, %37
  br i1 %38, label %39, label %42

39:                                               ; preds = %32
  %40 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %41 = icmp ne %struct.TYPE_9__* %40, null
  br label %42

42:                                               ; preds = %39, %32
  %43 = phi i1 [ false, %32 ], [ %41, %39 ]
  br i1 %43, label %44, label %51

44:                                               ; preds = %42
  br label %45

45:                                               ; preds = %44
  %46 = load i32, i32* %10, align 4
  %47 = add nsw i32 %46, 1
  store i32 %47, i32* %10, align 4
  %48 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %49 = load i32, i32* @lf_next, align 4
  %50 = call %struct.TYPE_9__* @STAILQ_NEXT(%struct.TYPE_9__* %48, i32 %49)
  store %struct.TYPE_9__* %50, %struct.TYPE_9__** %9, align 8
  br label %32

51:                                               ; preds = %42
  %52 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %53 = icmp eq %struct.TYPE_9__* %52, null
  br i1 %53, label %54, label %59

54:                                               ; preds = %51
  %55 = load i32*, i32** %7, align 8
  %56 = load i32, i32* @DW_DLE_LINE_FILE_NUM_BAD, align 4
  %57 = call i32 @DWARF_SET_ERROR(i32* null, i32* %55, i32 %56)
  %58 = load i32, i32* @DW_DLV_ERROR, align 4
  store i32 %58, i32* %4, align 4
  br label %77

59:                                               ; preds = %51
  %60 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %61 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %60, i32 0, i32 1
  %62 = load i64, i64* %61, align 8
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %64, label %71

64:                                               ; preds = %59
  %65 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %66 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %65, i32 0, i32 1
  %67 = load i64, i64* %66, align 8
  %68 = inttoptr i64 %67 to i8*
  %69 = load i8**, i8*** %6, align 8
  store i8* %68, i8** %69, align 8
  %70 = load i32, i32* @DW_DLV_OK, align 4
  store i32 %70, i32* %4, align 4
  br label %77

71:                                               ; preds = %59
  %72 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %73 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %72, i32 0, i32 0
  %74 = load i8*, i8** %73, align 8
  %75 = load i8**, i8*** %6, align 8
  store i8* %74, i8** %75, align 8
  %76 = load i32, i32* @DW_DLV_OK, align 4
  store i32 %76, i32* %4, align 4
  br label %77

77:                                               ; preds = %71, %64, %54, %16
  %78 = load i32, i32* %4, align 4
  ret i32 %78
}

declare dso_local i32 @DWARF_SET_ERROR(i32*, i32*, i32) #1

declare dso_local i32 @assert(i32) #1

declare dso_local %struct.TYPE_9__* @STAILQ_FIRST(i32*) #1

declare dso_local %struct.TYPE_9__* @STAILQ_NEXT(%struct.TYPE_9__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

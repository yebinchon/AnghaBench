; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/elftoolchain/libdwarf/extr_dwarf_str.c_dwarf_get_str.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/elftoolchain/libdwarf/extr_dwarf_str.c_dwarf_get_str.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i64, i64 }

@DW_DLE_ARGUMENT = common dso_local global i32 0, align 4
@DW_DLV_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [11 x i8] c".debug_str\00", align 1
@DW_DLE_NO_ENTRY = common dso_local global i32 0, align 4
@DW_DLV_NO_ENTRY = common dso_local global i32 0, align 4
@DW_DLV_OK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @dwarf_get_str(i32* %0, i64 %1, i8** %2, i32* %3, i32* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i8**, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca %struct.TYPE_3__*, align 8
  store i32* %0, i32** %7, align 8
  store i64 %1, i64* %8, align 8
  store i8** %2, i8*** %9, align 8
  store i32* %3, i32** %10, align 8
  store i32* %4, i32** %11, align 8
  %13 = load i32*, i32** %7, align 8
  %14 = icmp eq i32* %13, null
  br i1 %14, label %21, label %15

15:                                               ; preds = %5
  %16 = load i8**, i8*** %9, align 8
  %17 = icmp eq i8** %16, null
  br i1 %17, label %21, label %18

18:                                               ; preds = %15
  %19 = load i32*, i32** %10, align 8
  %20 = icmp eq i32* %19, null
  br i1 %20, label %21, label %27

21:                                               ; preds = %18, %15, %5
  %22 = load i32*, i32** %7, align 8
  %23 = load i32*, i32** %11, align 8
  %24 = load i32, i32* @DW_DLE_ARGUMENT, align 4
  %25 = call i32 @DWARF_SET_ERROR(i32* %22, i32* %23, i32 %24)
  %26 = load i32, i32* @DW_DLV_ERROR, align 4
  store i32 %26, i32* %6, align 4
  br label %75

27:                                               ; preds = %18
  %28 = load i32*, i32** %7, align 8
  %29 = call %struct.TYPE_3__* @_dwarf_find_section(i32* %28, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0))
  store %struct.TYPE_3__* %29, %struct.TYPE_3__** %12, align 8
  %30 = load %struct.TYPE_3__*, %struct.TYPE_3__** %12, align 8
  %31 = icmp eq %struct.TYPE_3__* %30, null
  br i1 %31, label %32, label %38

32:                                               ; preds = %27
  %33 = load i32*, i32** %7, align 8
  %34 = load i32*, i32** %11, align 8
  %35 = load i32, i32* @DW_DLE_NO_ENTRY, align 4
  %36 = call i32 @DWARF_SET_ERROR(i32* %33, i32* %34, i32 %35)
  %37 = load i32, i32* @DW_DLV_NO_ENTRY, align 4
  store i32 %37, i32* %6, align 4
  br label %75

38:                                               ; preds = %27
  %39 = load i64, i64* %8, align 8
  %40 = load %struct.TYPE_3__*, %struct.TYPE_3__** %12, align 8
  %41 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = icmp sgt i64 %39, %42
  br i1 %43, label %44, label %50

44:                                               ; preds = %38
  %45 = load i32*, i32** %7, align 8
  %46 = load i32*, i32** %11, align 8
  %47 = load i32, i32* @DW_DLE_ARGUMENT, align 4
  %48 = call i32 @DWARF_SET_ERROR(i32* %45, i32* %46, i32 %47)
  %49 = load i32, i32* @DW_DLV_ERROR, align 4
  store i32 %49, i32* %6, align 4
  br label %75

50:                                               ; preds = %38
  %51 = load i64, i64* %8, align 8
  %52 = load %struct.TYPE_3__*, %struct.TYPE_3__** %12, align 8
  %53 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = icmp eq i64 %51, %54
  br i1 %55, label %56, label %62

56:                                               ; preds = %50
  %57 = load i32*, i32** %7, align 8
  %58 = load i32*, i32** %11, align 8
  %59 = load i32, i32* @DW_DLE_NO_ENTRY, align 4
  %60 = call i32 @DWARF_SET_ERROR(i32* %57, i32* %58, i32 %59)
  %61 = load i32, i32* @DW_DLV_NO_ENTRY, align 4
  store i32 %61, i32* %6, align 4
  br label %75

62:                                               ; preds = %50
  %63 = load %struct.TYPE_3__*, %struct.TYPE_3__** %12, align 8
  %64 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %63, i32 0, i32 1
  %65 = load i64, i64* %64, align 8
  %66 = inttoptr i64 %65 to i8*
  %67 = load i64, i64* %8, align 8
  %68 = getelementptr inbounds i8, i8* %66, i64 %67
  %69 = load i8**, i8*** %9, align 8
  store i8* %68, i8** %69, align 8
  %70 = load i8**, i8*** %9, align 8
  %71 = load i8*, i8** %70, align 8
  %72 = call i32 @strlen(i8* %71)
  %73 = load i32*, i32** %10, align 8
  store i32 %72, i32* %73, align 4
  %74 = load i32, i32* @DW_DLV_OK, align 4
  store i32 %74, i32* %6, align 4
  br label %75

75:                                               ; preds = %62, %56, %44, %32, %21
  %76 = load i32, i32* %6, align 4
  ret i32 %76
}

declare dso_local i32 @DWARF_SET_ERROR(i32*, i32*, i32) #1

declare dso_local %struct.TYPE_3__* @_dwarf_find_section(i32*, i8*) #1

declare dso_local i32 @strlen(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

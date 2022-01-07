; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/elftoolchain/libdwarf/extr_dwarf_pro_lineno.c_dwarf_add_directory_decl.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/elftoolchain/libdwarf/extr_dwarf_pro_lineno.c_dwarf_add_directory_decl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32, i32** }

@DW_DLE_ARGUMENT = common dso_local global i32 0, align 4
@DW_DLV_NOCOUNT = common dso_local global i64 0, align 8
@DW_DLE_MEMORY = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @dwarf_add_directory_decl(%struct.TYPE_5__* %0, i8* %1, i32* %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca %struct.TYPE_5__*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.TYPE_6__*, align 8
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32* %2, i32** %7, align 8
  %9 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %10 = icmp eq %struct.TYPE_5__* %9, null
  br i1 %10, label %18, label %11

11:                                               ; preds = %3
  %12 = load i8*, i8** %6, align 8
  %13 = icmp eq i8* %12, null
  br i1 %13, label %18, label %14

14:                                               ; preds = %11
  %15 = load i8*, i8** %6, align 8
  %16 = call i64 @strlen(i8* %15)
  %17 = icmp eq i64 %16, 0
  br i1 %17, label %18, label %24

18:                                               ; preds = %14, %11, %3
  %19 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %20 = load i32*, i32** %7, align 8
  %21 = load i32, i32* @DW_DLE_ARGUMENT, align 4
  %22 = call i32 @DWARF_SET_ERROR(%struct.TYPE_5__* %19, i32* %20, i32 %21)
  %23 = load i64, i64* @DW_DLV_NOCOUNT, align 8
  store i64 %23, i64* %4, align 8
  br label %75

24:                                               ; preds = %14
  %25 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %26 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %25, i32 0, i32 0
  %27 = load %struct.TYPE_6__*, %struct.TYPE_6__** %26, align 8
  store %struct.TYPE_6__* %27, %struct.TYPE_6__** %8, align 8
  %28 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %29 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %28, i32 0, i32 1
  %30 = load i32**, i32*** %29, align 8
  %31 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %32 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = add nsw i32 %33, 1
  %35 = sext i32 %34 to i64
  %36 = mul i64 %35, 8
  %37 = trunc i64 %36 to i32
  %38 = call i32** @realloc(i32** %30, i32 %37)
  %39 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %40 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %39, i32 0, i32 1
  store i32** %38, i32*** %40, align 8
  %41 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %42 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %41, i32 0, i32 1
  %43 = load i32**, i32*** %42, align 8
  %44 = icmp eq i32** %43, null
  br i1 %44, label %45, label %51

45:                                               ; preds = %24
  %46 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %47 = load i32*, i32** %7, align 8
  %48 = load i32, i32* @DW_DLE_MEMORY, align 4
  %49 = call i32 @DWARF_SET_ERROR(%struct.TYPE_5__* %46, i32* %47, i32 %48)
  %50 = load i64, i64* @DW_DLV_NOCOUNT, align 8
  store i64 %50, i64* %4, align 8
  br label %75

51:                                               ; preds = %24
  %52 = load i8*, i8** %6, align 8
  %53 = call i32* @strdup(i8* %52)
  %54 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %55 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %54, i32 0, i32 1
  %56 = load i32**, i32*** %55, align 8
  %57 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %58 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 8
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds i32*, i32** %56, i64 %60
  store i32* %53, i32** %61, align 8
  %62 = icmp eq i32* %53, null
  br i1 %62, label %63, label %69

63:                                               ; preds = %51
  %64 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %65 = load i32*, i32** %7, align 8
  %66 = load i32, i32* @DW_DLE_MEMORY, align 4
  %67 = call i32 @DWARF_SET_ERROR(%struct.TYPE_5__* %64, i32* %65, i32 %66)
  %68 = load i64, i64* @DW_DLV_NOCOUNT, align 8
  store i64 %68, i64* %4, align 8
  br label %75

69:                                               ; preds = %51
  %70 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %71 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 8
  %73 = add nsw i32 %72, 1
  store i32 %73, i32* %71, align 8
  %74 = sext i32 %73 to i64
  store i64 %74, i64* %4, align 8
  br label %75

75:                                               ; preds = %69, %63, %45, %18
  %76 = load i64, i64* %4, align 8
  ret i64 %76
}

declare dso_local i64 @strlen(i8*) #1

declare dso_local i32 @DWARF_SET_ERROR(%struct.TYPE_5__*, i32*, i32) #1

declare dso_local i32** @realloc(i32**, i32) #1

declare dso_local i32* @strdup(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

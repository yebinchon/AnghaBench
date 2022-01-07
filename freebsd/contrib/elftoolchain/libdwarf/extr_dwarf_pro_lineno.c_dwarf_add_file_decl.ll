; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/elftoolchain/libdwarf/extr_dwarf_pro_lineno.c_dwarf_add_file_decl.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/elftoolchain/libdwarf/extr_dwarf_pro_lineno.c_dwarf_add_file_decl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { %struct.TYPE_10__* }
%struct.TYPE_10__ = type { i8*, i32 }
%struct.TYPE_11__ = type { i8*, i8*, i8*, i32* }

@DW_DLE_ARGUMENT = common dso_local global i8* null, align 8
@DW_DLV_NOCOUNT = common dso_local global i8* null, align 8
@DW_DLE_MEMORY = common dso_local global i8* null, align 8
@lf_next = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @dwarf_add_file_decl(%struct.TYPE_9__* %0, i8* %1, i8* %2, i8* %3, i8* %4, i32* %5) #0 {
  %7 = alloca i8*, align 8
  %8 = alloca %struct.TYPE_9__*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca %struct.TYPE_10__*, align 8
  %15 = alloca %struct.TYPE_11__*, align 8
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %8, align 8
  store i8* %1, i8** %9, align 8
  store i8* %2, i8** %10, align 8
  store i8* %3, i8** %11, align 8
  store i8* %4, i8** %12, align 8
  store i32* %5, i32** %13, align 8
  %16 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %17 = icmp eq %struct.TYPE_9__* %16, null
  br i1 %17, label %25, label %18

18:                                               ; preds = %6
  %19 = load i8*, i8** %9, align 8
  %20 = icmp eq i8* %19, null
  br i1 %20, label %25, label %21

21:                                               ; preds = %18
  %22 = load i8*, i8** %9, align 8
  %23 = call i64 @strlen(i8* %22)
  %24 = icmp eq i64 %23, 0
  br i1 %24, label %25, label %31

25:                                               ; preds = %21, %18, %6
  %26 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %27 = load i32*, i32** %13, align 8
  %28 = load i8*, i8** @DW_DLE_ARGUMENT, align 8
  %29 = call i32 @DWARF_SET_ERROR(%struct.TYPE_9__* %26, i32* %27, i8* %28)
  %30 = load i8*, i8** @DW_DLV_NOCOUNT, align 8
  store i8* %30, i8** %7, align 8
  br label %76

31:                                               ; preds = %21
  %32 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %33 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %32, i32 0, i32 0
  %34 = load %struct.TYPE_10__*, %struct.TYPE_10__** %33, align 8
  store %struct.TYPE_10__* %34, %struct.TYPE_10__** %14, align 8
  %35 = call %struct.TYPE_11__* @malloc(i32 4)
  store %struct.TYPE_11__* %35, %struct.TYPE_11__** %15, align 8
  %36 = icmp eq %struct.TYPE_11__* %35, null
  br i1 %36, label %37, label %43

37:                                               ; preds = %31
  %38 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %39 = load i32*, i32** %13, align 8
  %40 = load i8*, i8** @DW_DLE_MEMORY, align 8
  %41 = call i32 @DWARF_SET_ERROR(%struct.TYPE_9__* %38, i32* %39, i8* %40)
  %42 = load i8*, i8** @DW_DLE_MEMORY, align 8
  store i8* %42, i8** %7, align 8
  br label %76

43:                                               ; preds = %31
  %44 = load i8*, i8** %9, align 8
  %45 = call i32* @strdup(i8* %44)
  %46 = load %struct.TYPE_11__*, %struct.TYPE_11__** %15, align 8
  %47 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %46, i32 0, i32 3
  store i32* %45, i32** %47, align 8
  %48 = icmp eq i32* %45, null
  br i1 %48, label %49, label %57

49:                                               ; preds = %43
  %50 = load %struct.TYPE_11__*, %struct.TYPE_11__** %15, align 8
  %51 = call i32 @free(%struct.TYPE_11__* %50)
  %52 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %53 = load i32*, i32** %13, align 8
  %54 = load i8*, i8** @DW_DLE_MEMORY, align 8
  %55 = call i32 @DWARF_SET_ERROR(%struct.TYPE_9__* %52, i32* %53, i8* %54)
  %56 = load i8*, i8** @DW_DLE_MEMORY, align 8
  store i8* %56, i8** %7, align 8
  br label %76

57:                                               ; preds = %43
  %58 = load i8*, i8** %10, align 8
  %59 = load %struct.TYPE_11__*, %struct.TYPE_11__** %15, align 8
  %60 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %59, i32 0, i32 2
  store i8* %58, i8** %60, align 8
  %61 = load i8*, i8** %11, align 8
  %62 = load %struct.TYPE_11__*, %struct.TYPE_11__** %15, align 8
  %63 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %62, i32 0, i32 1
  store i8* %61, i8** %63, align 8
  %64 = load i8*, i8** %12, align 8
  %65 = load %struct.TYPE_11__*, %struct.TYPE_11__** %15, align 8
  %66 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %65, i32 0, i32 0
  store i8* %64, i8** %66, align 8
  %67 = load %struct.TYPE_10__*, %struct.TYPE_10__** %14, align 8
  %68 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %67, i32 0, i32 1
  %69 = load %struct.TYPE_11__*, %struct.TYPE_11__** %15, align 8
  %70 = load i32, i32* @lf_next, align 4
  %71 = call i32 @STAILQ_INSERT_TAIL(i32* %68, %struct.TYPE_11__* %69, i32 %70)
  %72 = load %struct.TYPE_10__*, %struct.TYPE_10__** %14, align 8
  %73 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %72, i32 0, i32 0
  %74 = load i8*, i8** %73, align 8
  %75 = getelementptr inbounds i8, i8* %74, i32 1
  store i8* %75, i8** %73, align 8
  store i8* %75, i8** %7, align 8
  br label %76

76:                                               ; preds = %57, %49, %37, %25
  %77 = load i8*, i8** %7, align 8
  ret i8* %77
}

declare dso_local i64 @strlen(i8*) #1

declare dso_local i32 @DWARF_SET_ERROR(%struct.TYPE_9__*, i32*, i8*) #1

declare dso_local %struct.TYPE_11__* @malloc(i32) #1

declare dso_local i32* @strdup(i8*) #1

declare dso_local i32 @free(%struct.TYPE_11__*) #1

declare dso_local i32 @STAILQ_INSERT_TAIL(i32*, %struct.TYPE_11__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

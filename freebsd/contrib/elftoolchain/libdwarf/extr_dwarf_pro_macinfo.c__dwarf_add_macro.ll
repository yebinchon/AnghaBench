; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/elftoolchain/libdwarf/extr_dwarf_pro_macinfo.c__dwarf_add_macro.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/elftoolchain/libdwarf/extr_dwarf_pro_macinfo.c__dwarf_add_macro.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i64, %struct.TYPE_8__* }
%struct.TYPE_8__ = type { i32, i32*, i32, i32, i64 }

@DW_DLE_MEMORY = common dso_local global i32 0, align 4
@DW_DLV_ERROR = common dso_local global i32 0, align 4
@DW_DLV_OK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [6 x i8] c"%s %s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_7__*, i32, i32, i32, i8*, i8*, i32*)* @_dwarf_add_macro to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @_dwarf_add_macro(%struct.TYPE_7__* %0, i32 %1, i32 %2, i32 %3, i8* %4, i8* %5, i32* %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_7__*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i8*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca %struct.TYPE_8__*, align 8
  %17 = alloca i32, align 4
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %9, align 8
  store i32 %1, i32* %10, align 4
  store i32 %2, i32* %11, align 4
  store i32 %3, i32* %12, align 4
  store i8* %4, i8** %13, align 8
  store i8* %5, i8** %14, align 8
  store i32* %6, i32** %15, align 8
  %18 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %19 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %18, i32 0, i32 1
  %20 = load %struct.TYPE_8__*, %struct.TYPE_8__** %19, align 8
  %21 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %22 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = add i64 %23, 1
  %25 = call %struct.TYPE_8__* @realloc(%struct.TYPE_8__* %20, i64 %24)
  %26 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %27 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %26, i32 0, i32 1
  store %struct.TYPE_8__* %25, %struct.TYPE_8__** %27, align 8
  %28 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %29 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %28, i32 0, i32 1
  %30 = load %struct.TYPE_8__*, %struct.TYPE_8__** %29, align 8
  %31 = icmp eq %struct.TYPE_8__* %30, null
  br i1 %31, label %32, label %38

32:                                               ; preds = %7
  %33 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %34 = load i32*, i32** %15, align 8
  %35 = load i32, i32* @DW_DLE_MEMORY, align 4
  %36 = call i32 @DWARF_SET_ERROR(%struct.TYPE_7__* %33, i32* %34, i32 %35)
  %37 = load i32, i32* @DW_DLV_ERROR, align 4
  store i32 %37, i32* %8, align 4
  br label %119

38:                                               ; preds = %7
  %39 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %40 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %39, i32 0, i32 1
  %41 = load %struct.TYPE_8__*, %struct.TYPE_8__** %40, align 8
  %42 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %43 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %41, i64 %44
  store %struct.TYPE_8__* %45, %struct.TYPE_8__** %16, align 8
  %46 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %47 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = add i64 %48, 1
  store i64 %49, i64* %47, align 8
  %50 = load %struct.TYPE_8__*, %struct.TYPE_8__** %16, align 8
  %51 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %50, i32 0, i32 4
  store i64 0, i64* %51, align 8
  %52 = load i32, i32* %10, align 4
  %53 = load %struct.TYPE_8__*, %struct.TYPE_8__** %16, align 8
  %54 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %53, i32 0, i32 0
  store i32 %52, i32* %54, align 8
  %55 = load i32, i32* %11, align 4
  %56 = load %struct.TYPE_8__*, %struct.TYPE_8__** %16, align 8
  %57 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %56, i32 0, i32 3
  store i32 %55, i32* %57, align 4
  %58 = load i32, i32* %12, align 4
  %59 = load %struct.TYPE_8__*, %struct.TYPE_8__** %16, align 8
  %60 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %59, i32 0, i32 2
  store i32 %58, i32* %60, align 8
  %61 = load %struct.TYPE_8__*, %struct.TYPE_8__** %16, align 8
  %62 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %61, i32 0, i32 1
  store i32* null, i32** %62, align 8
  %63 = load i8*, i8** %13, align 8
  %64 = icmp eq i8* %63, null
  br i1 %64, label %65, label %67

65:                                               ; preds = %38
  %66 = load i32, i32* @DW_DLV_OK, align 4
  store i32 %66, i32* %8, align 4
  br label %119

67:                                               ; preds = %38
  %68 = load i8*, i8** %14, align 8
  %69 = icmp eq i8* %68, null
  br i1 %69, label %70, label %88

70:                                               ; preds = %67
  %71 = load i8*, i8** %13, align 8
  %72 = call i32* @strdup(i8* %71)
  %73 = load %struct.TYPE_8__*, %struct.TYPE_8__** %16, align 8
  %74 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %73, i32 0, i32 1
  store i32* %72, i32** %74, align 8
  %75 = icmp eq i32* %72, null
  br i1 %75, label %76, label %86

76:                                               ; preds = %70
  %77 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %78 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %77, i32 0, i32 0
  %79 = load i64, i64* %78, align 8
  %80 = add i64 %79, -1
  store i64 %80, i64* %78, align 8
  %81 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %82 = load i32*, i32** %15, align 8
  %83 = load i32, i32* @DW_DLE_MEMORY, align 4
  %84 = call i32 @DWARF_SET_ERROR(%struct.TYPE_7__* %81, i32* %82, i32 %83)
  %85 = load i32, i32* @DW_DLV_ERROR, align 4
  store i32 %85, i32* %8, align 4
  br label %119

86:                                               ; preds = %70
  %87 = load i32, i32* @DW_DLV_OK, align 4
  store i32 %87, i32* %8, align 4
  br label %119

88:                                               ; preds = %67
  %89 = load i8*, i8** %13, align 8
  %90 = call i32 @strlen(i8* %89)
  %91 = load i8*, i8** %14, align 8
  %92 = call i32 @strlen(i8* %91)
  %93 = add nsw i32 %90, %92
  %94 = add nsw i32 %93, 2
  store i32 %94, i32* %17, align 4
  %95 = load i32, i32* %17, align 4
  %96 = call i32* @malloc(i32 %95)
  %97 = load %struct.TYPE_8__*, %struct.TYPE_8__** %16, align 8
  %98 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %97, i32 0, i32 1
  store i32* %96, i32** %98, align 8
  %99 = icmp eq i32* %96, null
  br i1 %99, label %100, label %110

100:                                              ; preds = %88
  %101 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %102 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %101, i32 0, i32 0
  %103 = load i64, i64* %102, align 8
  %104 = add i64 %103, -1
  store i64 %104, i64* %102, align 8
  %105 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %106 = load i32*, i32** %15, align 8
  %107 = load i32, i32* @DW_DLE_MEMORY, align 4
  %108 = call i32 @DWARF_SET_ERROR(%struct.TYPE_7__* %105, i32* %106, i32 %107)
  %109 = load i32, i32* @DW_DLV_ERROR, align 4
  store i32 %109, i32* %8, align 4
  br label %119

110:                                              ; preds = %88
  %111 = load %struct.TYPE_8__*, %struct.TYPE_8__** %16, align 8
  %112 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %111, i32 0, i32 1
  %113 = load i32*, i32** %112, align 8
  %114 = load i32, i32* %17, align 4
  %115 = load i8*, i8** %13, align 8
  %116 = load i8*, i8** %14, align 8
  %117 = call i32 @snprintf(i32* %113, i32 %114, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i8* %115, i8* %116)
  %118 = load i32, i32* @DW_DLV_OK, align 4
  store i32 %118, i32* %8, align 4
  br label %119

119:                                              ; preds = %110, %100, %86, %76, %65, %32
  %120 = load i32, i32* %8, align 4
  ret i32 %120
}

declare dso_local %struct.TYPE_8__* @realloc(%struct.TYPE_8__*, i64) #1

declare dso_local i32 @DWARF_SET_ERROR(%struct.TYPE_7__*, i32*, i32) #1

declare dso_local i32* @strdup(i8*) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32* @malloc(i32) #1

declare dso_local i32 @snprintf(i32*, i32, i8*, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/elftoolchain/libdwarf/extr_libdwarf_lineno.c__dwarf_lineno_add_file.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/elftoolchain/libdwarf/extr_libdwarf_lineno.c__dwarf_lineno_add_file.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32, i8**, i32, i32 }
%struct.TYPE_8__ = type { i8*, i32, i8*, i8*, i32* }

@DW_DLE_MEMORY = common dso_local global i32 0, align 4
@DW_DLE_DIR_INDEX_BAD = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [4 x i8] c"%s/\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@lf_next = common dso_local global i32 0, align 4
@DW_DLE_NONE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_7__*, i32**, i8*, i32*, i32)* @_dwarf_lineno_add_file to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @_dwarf_lineno_add_file(%struct.TYPE_7__* %0, i32** %1, i8* %2, i32* %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_7__*, align 8
  %8 = alloca i32**, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.TYPE_8__*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i64, align 8
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %7, align 8
  store i32** %1, i32*** %8, align 8
  store i8* %2, i8** %9, align 8
  store i32* %3, i32** %10, align 8
  store i32 %4, i32* %11, align 4
  %17 = load i32**, i32*** %8, align 8
  %18 = load i32*, i32** %17, align 8
  store i32* %18, i32** %15, align 8
  %19 = call %struct.TYPE_8__* @malloc(i32 4)
  store %struct.TYPE_8__* %19, %struct.TYPE_8__** %12, align 8
  %20 = icmp eq %struct.TYPE_8__* %19, null
  br i1 %20, label %21, label %27

21:                                               ; preds = %5
  %22 = load i32, i32* %11, align 4
  %23 = load i32*, i32** %10, align 8
  %24 = load i32, i32* @DW_DLE_MEMORY, align 4
  %25 = call i32 @DWARF_SET_ERROR(i32 %22, i32* %23, i32 %24)
  %26 = load i32, i32* @DW_DLE_MEMORY, align 4
  store i32 %26, i32* %6, align 4
  br label %154

27:                                               ; preds = %5
  %28 = load %struct.TYPE_8__*, %struct.TYPE_8__** %12, align 8
  %29 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %28, i32 0, i32 4
  store i32* null, i32** %29, align 8
  %30 = load i32*, i32** %15, align 8
  %31 = bitcast i32* %30 to i8*
  %32 = load %struct.TYPE_8__*, %struct.TYPE_8__** %12, align 8
  %33 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %32, i32 0, i32 0
  store i8* %31, i8** %33, align 8
  %34 = load %struct.TYPE_8__*, %struct.TYPE_8__** %12, align 8
  %35 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %34, i32 0, i32 0
  %36 = load i8*, i8** %35, align 8
  %37 = call i64 @strlen(i8* %36)
  %38 = add nsw i64 %37, 1
  %39 = load i32*, i32** %15, align 8
  %40 = getelementptr inbounds i32, i32* %39, i64 %38
  store i32* %40, i32** %15, align 8
  %41 = call i8* @_dwarf_decode_uleb128(i32** %15)
  %42 = ptrtoint i8* %41 to i32
  %43 = load %struct.TYPE_8__*, %struct.TYPE_8__** %12, align 8
  %44 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %43, i32 0, i32 1
  store i32 %42, i32* %44, align 8
  %45 = load %struct.TYPE_8__*, %struct.TYPE_8__** %12, align 8
  %46 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 8
  %48 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %49 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  %51 = icmp sgt i32 %47, %50
  br i1 %51, label %52, label %60

52:                                               ; preds = %27
  %53 = load %struct.TYPE_8__*, %struct.TYPE_8__** %12, align 8
  %54 = call i32 @free(%struct.TYPE_8__* %53)
  %55 = load i32, i32* %11, align 4
  %56 = load i32*, i32** %10, align 8
  %57 = load i32, i32* @DW_DLE_DIR_INDEX_BAD, align 4
  %58 = call i32 @DWARF_SET_ERROR(i32 %55, i32* %56, i32 %57)
  %59 = load i32, i32* @DW_DLE_DIR_INDEX_BAD, align 4
  store i32 %59, i32* %6, align 4
  br label %154

60:                                               ; preds = %27
  %61 = load %struct.TYPE_8__*, %struct.TYPE_8__** %12, align 8
  %62 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %61, i32 0, i32 0
  %63 = load i8*, i8** %62, align 8
  %64 = load i8, i8* %63, align 1
  %65 = sext i8 %64 to i32
  %66 = icmp ne i32 %65, 47
  br i1 %66, label %67, label %135

67:                                               ; preds = %60
  %68 = load %struct.TYPE_8__*, %struct.TYPE_8__** %12, align 8
  %69 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %68, i32 0, i32 4
  %70 = call i32* @open_memstream(i32** %69, i64* %16)
  store i32* %70, i32** %13, align 8
  %71 = load i32*, i32** %13, align 8
  %72 = icmp eq i32* %71, null
  br i1 %72, label %73, label %81

73:                                               ; preds = %67
  %74 = load %struct.TYPE_8__*, %struct.TYPE_8__** %12, align 8
  %75 = call i32 @free(%struct.TYPE_8__* %74)
  %76 = load i32, i32* %11, align 4
  %77 = load i32*, i32** %10, align 8
  %78 = load i32, i32* @DW_DLE_MEMORY, align 4
  %79 = call i32 @DWARF_SET_ERROR(i32 %76, i32* %77, i32 %78)
  %80 = load i32, i32* @DW_DLE_MEMORY, align 4
  store i32 %80, i32* %6, align 4
  br label %154

81:                                               ; preds = %67
  %82 = load %struct.TYPE_8__*, %struct.TYPE_8__** %12, align 8
  %83 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %82, i32 0, i32 1
  %84 = load i32, i32* %83, align 8
  %85 = icmp sgt i32 %84, 0
  br i1 %85, label %86, label %97

86:                                               ; preds = %81
  %87 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %88 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %87, i32 0, i32 1
  %89 = load i8**, i8*** %88, align 8
  %90 = load %struct.TYPE_8__*, %struct.TYPE_8__** %12, align 8
  %91 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %90, i32 0, i32 1
  %92 = load i32, i32* %91, align 8
  %93 = sub nsw i32 %92, 1
  %94 = sext i32 %93 to i64
  %95 = getelementptr inbounds i8*, i8** %89, i64 %94
  %96 = load i8*, i8** %95, align 8
  store i8* %96, i8** %14, align 8
  br label %98

97:                                               ; preds = %81
  store i8* null, i8** %14, align 8
  br label %98

98:                                               ; preds = %97, %86
  %99 = load i8*, i8** %14, align 8
  %100 = icmp eq i8* %99, null
  br i1 %100, label %106, label %101

101:                                              ; preds = %98
  %102 = load i8*, i8** %14, align 8
  %103 = load i8, i8* %102, align 1
  %104 = sext i8 %103 to i32
  %105 = icmp ne i32 %104, 47
  br i1 %105, label %106, label %110

106:                                              ; preds = %101, %98
  %107 = load i32*, i32** %13, align 8
  %108 = load i8*, i8** %9, align 8
  %109 = call i32 @fprintf(i32* %107, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i8* %108)
  br label %110

110:                                              ; preds = %106, %101
  %111 = load i8*, i8** %14, align 8
  %112 = icmp ne i8* %111, null
  br i1 %112, label %113, label %117

113:                                              ; preds = %110
  %114 = load i32*, i32** %13, align 8
  %115 = load i8*, i8** %14, align 8
  %116 = call i32 @fprintf(i32* %114, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i8* %115)
  br label %117

117:                                              ; preds = %113, %110
  %118 = load i32*, i32** %13, align 8
  %119 = load %struct.TYPE_8__*, %struct.TYPE_8__** %12, align 8
  %120 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %119, i32 0, i32 0
  %121 = load i8*, i8** %120, align 8
  %122 = call i32 @fprintf(i32* %118, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i8* %121)
  %123 = load i32*, i32** %13, align 8
  %124 = call i64 @fclose(i32* %123)
  %125 = icmp ne i64 %124, 0
  br i1 %125, label %126, label %134

126:                                              ; preds = %117
  %127 = load %struct.TYPE_8__*, %struct.TYPE_8__** %12, align 8
  %128 = call i32 @free(%struct.TYPE_8__* %127)
  %129 = load i32, i32* %11, align 4
  %130 = load i32*, i32** %10, align 8
  %131 = load i32, i32* @DW_DLE_MEMORY, align 4
  %132 = call i32 @DWARF_SET_ERROR(i32 %129, i32* %130, i32 %131)
  %133 = load i32, i32* @DW_DLE_MEMORY, align 4
  store i32 %133, i32* %6, align 4
  br label %154

134:                                              ; preds = %117
  br label %135

135:                                              ; preds = %134, %60
  %136 = call i8* @_dwarf_decode_uleb128(i32** %15)
  %137 = load %struct.TYPE_8__*, %struct.TYPE_8__** %12, align 8
  %138 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %137, i32 0, i32 3
  store i8* %136, i8** %138, align 8
  %139 = call i8* @_dwarf_decode_uleb128(i32** %15)
  %140 = load %struct.TYPE_8__*, %struct.TYPE_8__** %12, align 8
  %141 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %140, i32 0, i32 2
  store i8* %139, i8** %141, align 8
  %142 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %143 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %142, i32 0, i32 3
  %144 = load %struct.TYPE_8__*, %struct.TYPE_8__** %12, align 8
  %145 = load i32, i32* @lf_next, align 4
  %146 = call i32 @STAILQ_INSERT_TAIL(i32* %143, %struct.TYPE_8__* %144, i32 %145)
  %147 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %148 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %147, i32 0, i32 2
  %149 = load i32, i32* %148, align 8
  %150 = add nsw i32 %149, 1
  store i32 %150, i32* %148, align 8
  %151 = load i32*, i32** %15, align 8
  %152 = load i32**, i32*** %8, align 8
  store i32* %151, i32** %152, align 8
  %153 = load i32, i32* @DW_DLE_NONE, align 4
  store i32 %153, i32* %6, align 4
  br label %154

154:                                              ; preds = %135, %126, %73, %52, %21
  %155 = load i32, i32* %6, align 4
  ret i32 %155
}

declare dso_local %struct.TYPE_8__* @malloc(i32) #1

declare dso_local i32 @DWARF_SET_ERROR(i32, i32*, i32) #1

declare dso_local i64 @strlen(i8*) #1

declare dso_local i8* @_dwarf_decode_uleb128(i32**) #1

declare dso_local i32 @free(%struct.TYPE_8__*) #1

declare dso_local i32* @open_memstream(i32**, i64*) #1

declare dso_local i32 @fprintf(i32*, i8*, i8*) #1

declare dso_local i64 @fclose(i32*) #1

declare dso_local i32 @STAILQ_INSERT_TAIL(i32*, %struct.TYPE_8__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

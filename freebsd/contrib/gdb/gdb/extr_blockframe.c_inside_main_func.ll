; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_blockframe.c_inside_main_func.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_blockframe.c_inside_main_func.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i64, i64 }
%struct.minimal_symbol = type { i32 }
%struct.symbol = type { i32 }
%struct.obj_section = type { i64 }

@symfile_objfile = common dso_local global %struct.TYPE_5__* null, align 8
@INVALID_ENTRY_LOWPC = common dso_local global i64 0, align 8
@INVALID_ENTRY_HIGHPC = common dso_local global i64 0, align 8
@LOC_BLOCK = common dso_local global i64 0, align 8
@mst_text = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @inside_main_func(i64 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i64, align 8
  %4 = alloca %struct.minimal_symbol*, align 8
  %5 = alloca %struct.symbol*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.obj_section*, align 8
  %9 = alloca i32, align 4
  store i64 %0, i64* %3, align 8
  %10 = load %struct.TYPE_5__*, %struct.TYPE_5__** @symfile_objfile, align 8
  %11 = icmp eq %struct.TYPE_5__* %10, null
  br i1 %11, label %12, label %13

12:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %161

13:                                               ; preds = %1
  %14 = call i32 (...) @main_name()
  %15 = load %struct.TYPE_5__*, %struct.TYPE_5__** @symfile_objfile, align 8
  %16 = call %struct.minimal_symbol* @lookup_minimal_symbol(i32 %14, i32* null, %struct.TYPE_5__* %15)
  store %struct.minimal_symbol* %16, %struct.minimal_symbol** %4, align 8
  %17 = load %struct.minimal_symbol*, %struct.minimal_symbol** %4, align 8
  %18 = icmp ne %struct.minimal_symbol* %17, null
  br i1 %18, label %19, label %58

19:                                               ; preds = %13
  %20 = load %struct.TYPE_5__*, %struct.TYPE_5__** @symfile_objfile, align 8
  %21 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = load i64, i64* @INVALID_ENTRY_LOWPC, align 8
  %25 = icmp eq i64 %23, %24
  br i1 %25, label %26, label %58

26:                                               ; preds = %19
  %27 = load %struct.TYPE_5__*, %struct.TYPE_5__** @symfile_objfile, align 8
  %28 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %28, i32 0, i32 1
  %30 = load i64, i64* %29, align 8
  %31 = load i64, i64* @INVALID_ENTRY_HIGHPC, align 8
  %32 = icmp eq i64 %30, %31
  br i1 %32, label %33, label %58

33:                                               ; preds = %26
  %34 = load %struct.minimal_symbol*, %struct.minimal_symbol** %4, align 8
  %35 = call i64 @SYMBOL_VALUE_ADDRESS(%struct.minimal_symbol* %34)
  %36 = call %struct.symbol* @find_pc_function(i64 %35)
  store %struct.symbol* %36, %struct.symbol** %5, align 8
  %37 = load %struct.symbol*, %struct.symbol** %5, align 8
  %38 = icmp ne %struct.symbol* %37, null
  br i1 %38, label %39, label %57

39:                                               ; preds = %33
  %40 = load %struct.symbol*, %struct.symbol** %5, align 8
  %41 = call i64 @SYMBOL_CLASS(%struct.symbol* %40)
  %42 = load i64, i64* @LOC_BLOCK, align 8
  %43 = icmp eq i64 %41, %42
  br i1 %43, label %44, label %57

44:                                               ; preds = %39
  %45 = load %struct.symbol*, %struct.symbol** %5, align 8
  %46 = call i32 @SYMBOL_BLOCK_VALUE(%struct.symbol* %45)
  %47 = call i64 @BLOCK_START(i32 %46)
  %48 = load %struct.TYPE_5__*, %struct.TYPE_5__** @symfile_objfile, align 8
  %49 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %49, i32 0, i32 0
  store i64 %47, i64* %50, align 8
  %51 = load %struct.symbol*, %struct.symbol** %5, align 8
  %52 = call i32 @SYMBOL_BLOCK_VALUE(%struct.symbol* %51)
  %53 = call i64 @BLOCK_END(i32 %52)
  %54 = load %struct.TYPE_5__*, %struct.TYPE_5__** @symfile_objfile, align 8
  %55 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %54, i32 0, i32 0
  %56 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %55, i32 0, i32 1
  store i64 %53, i64* %56, align 8
  br label %57

57:                                               ; preds = %44, %39, %33
  br label %58

58:                                               ; preds = %57, %26, %19, %13
  %59 = load %struct.minimal_symbol*, %struct.minimal_symbol** %4, align 8
  %60 = icmp ne %struct.minimal_symbol* %59, null
  br i1 %60, label %61, label %144

61:                                               ; preds = %58
  %62 = load %struct.minimal_symbol*, %struct.minimal_symbol** %4, align 8
  %63 = call i64 @MSYMBOL_TYPE(%struct.minimal_symbol* %62)
  %64 = load i64, i64* @mst_text, align 8
  %65 = icmp eq i64 %63, %64
  br i1 %65, label %66, label %144

66:                                               ; preds = %61
  %67 = load %struct.minimal_symbol*, %struct.minimal_symbol** %4, align 8
  %68 = call i64 @SYMBOL_VALUE_ADDRESS(%struct.minimal_symbol* %67)
  store i64 %68, i64* %6, align 8
  %69 = load %struct.minimal_symbol*, %struct.minimal_symbol** %4, align 8
  %70 = call i32* @SYMBOL_BFD_SECTION(%struct.minimal_symbol* %69)
  store i32* %70, i32** %7, align 8
  %71 = load i64, i64* %6, align 8
  %72 = load i32*, i32** %7, align 8
  %73 = call %struct.obj_section* @find_pc_sect_section(i64 %71, i32* %72)
  store %struct.obj_section* %73, %struct.obj_section** %8, align 8
  %74 = load %struct.obj_section*, %struct.obj_section** %8, align 8
  %75 = icmp ne %struct.obj_section* %74, null
  br i1 %75, label %76, label %143

76:                                               ; preds = %66
  store i32 1, i32* %9, align 4
  br label %77

77:                                               ; preds = %102, %76
  %78 = load %struct.minimal_symbol*, %struct.minimal_symbol** %4, align 8
  %79 = load i32, i32* %9, align 4
  %80 = sext i32 %79 to i64
  %81 = getelementptr inbounds %struct.minimal_symbol, %struct.minimal_symbol* %78, i64 %80
  %82 = call i32* @SYMBOL_LINKAGE_NAME(%struct.minimal_symbol* %81)
  %83 = icmp ne i32* %82, null
  br i1 %83, label %84, label %105

84:                                               ; preds = %77
  %85 = load %struct.minimal_symbol*, %struct.minimal_symbol** %4, align 8
  %86 = load i32, i32* %9, align 4
  %87 = sext i32 %86 to i64
  %88 = getelementptr inbounds %struct.minimal_symbol, %struct.minimal_symbol* %85, i64 %87
  %89 = call i64 @SYMBOL_VALUE_ADDRESS(%struct.minimal_symbol* %88)
  %90 = load i64, i64* %6, align 8
  %91 = icmp ne i64 %89, %90
  br i1 %91, label %92, label %101

92:                                               ; preds = %84
  %93 = load %struct.minimal_symbol*, %struct.minimal_symbol** %4, align 8
  %94 = load i32, i32* %9, align 4
  %95 = sext i32 %94 to i64
  %96 = getelementptr inbounds %struct.minimal_symbol, %struct.minimal_symbol* %93, i64 %95
  %97 = call i32* @SYMBOL_BFD_SECTION(%struct.minimal_symbol* %96)
  %98 = load i32*, i32** %7, align 8
  %99 = icmp eq i32* %97, %98
  br i1 %99, label %100, label %101

100:                                              ; preds = %92
  br label %105

101:                                              ; preds = %92, %84
  br label %102

102:                                              ; preds = %101
  %103 = load i32, i32* %9, align 4
  %104 = add nsw i32 %103, 1
  store i32 %104, i32* %9, align 4
  br label %77

105:                                              ; preds = %100, %77
  %106 = load i64, i64* %6, align 8
  %107 = load %struct.TYPE_5__*, %struct.TYPE_5__** @symfile_objfile, align 8
  %108 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %107, i32 0, i32 0
  %109 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %108, i32 0, i32 0
  store i64 %106, i64* %109, align 8
  %110 = load %struct.minimal_symbol*, %struct.minimal_symbol** %4, align 8
  %111 = load i32, i32* %9, align 4
  %112 = sext i32 %111 to i64
  %113 = getelementptr inbounds %struct.minimal_symbol, %struct.minimal_symbol* %110, i64 %112
  %114 = call i32* @SYMBOL_LINKAGE_NAME(%struct.minimal_symbol* %113)
  %115 = icmp ne i32* %114, null
  br i1 %115, label %116, label %135

116:                                              ; preds = %105
  %117 = load %struct.minimal_symbol*, %struct.minimal_symbol** %4, align 8
  %118 = load i32, i32* %9, align 4
  %119 = sext i32 %118 to i64
  %120 = getelementptr inbounds %struct.minimal_symbol, %struct.minimal_symbol* %117, i64 %119
  %121 = call i64 @SYMBOL_VALUE_ADDRESS(%struct.minimal_symbol* %120)
  %122 = load %struct.obj_section*, %struct.obj_section** %8, align 8
  %123 = getelementptr inbounds %struct.obj_section, %struct.obj_section* %122, i32 0, i32 0
  %124 = load i64, i64* %123, align 8
  %125 = icmp slt i64 %121, %124
  br i1 %125, label %126, label %135

126:                                              ; preds = %116
  %127 = load %struct.minimal_symbol*, %struct.minimal_symbol** %4, align 8
  %128 = load i32, i32* %9, align 4
  %129 = sext i32 %128 to i64
  %130 = getelementptr inbounds %struct.minimal_symbol, %struct.minimal_symbol* %127, i64 %129
  %131 = call i64 @SYMBOL_VALUE_ADDRESS(%struct.minimal_symbol* %130)
  %132 = load %struct.TYPE_5__*, %struct.TYPE_5__** @symfile_objfile, align 8
  %133 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %132, i32 0, i32 0
  %134 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %133, i32 0, i32 1
  store i64 %131, i64* %134, align 8
  br label %142

135:                                              ; preds = %116, %105
  %136 = load %struct.obj_section*, %struct.obj_section** %8, align 8
  %137 = getelementptr inbounds %struct.obj_section, %struct.obj_section* %136, i32 0, i32 0
  %138 = load i64, i64* %137, align 8
  %139 = load %struct.TYPE_5__*, %struct.TYPE_5__** @symfile_objfile, align 8
  %140 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %139, i32 0, i32 0
  %141 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %140, i32 0, i32 1
  store i64 %138, i64* %141, align 8
  br label %142

142:                                              ; preds = %135, %126
  br label %143

143:                                              ; preds = %142, %66
  br label %144

144:                                              ; preds = %143, %61, %58
  %145 = load %struct.TYPE_5__*, %struct.TYPE_5__** @symfile_objfile, align 8
  %146 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %145, i32 0, i32 0
  %147 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %146, i32 0, i32 0
  %148 = load i64, i64* %147, align 8
  %149 = load i64, i64* %3, align 8
  %150 = icmp sle i64 %148, %149
  br i1 %150, label %151, label %158

151:                                              ; preds = %144
  %152 = load %struct.TYPE_5__*, %struct.TYPE_5__** @symfile_objfile, align 8
  %153 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %152, i32 0, i32 0
  %154 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %153, i32 0, i32 1
  %155 = load i64, i64* %154, align 8
  %156 = load i64, i64* %3, align 8
  %157 = icmp sgt i64 %155, %156
  br label %158

158:                                              ; preds = %151, %144
  %159 = phi i1 [ false, %144 ], [ %157, %151 ]
  %160 = zext i1 %159 to i32
  store i32 %160, i32* %2, align 4
  br label %161

161:                                              ; preds = %158, %12
  %162 = load i32, i32* %2, align 4
  ret i32 %162
}

declare dso_local %struct.minimal_symbol* @lookup_minimal_symbol(i32, i32*, %struct.TYPE_5__*) #1

declare dso_local i32 @main_name(...) #1

declare dso_local %struct.symbol* @find_pc_function(i64) #1

declare dso_local i64 @SYMBOL_VALUE_ADDRESS(%struct.minimal_symbol*) #1

declare dso_local i64 @SYMBOL_CLASS(%struct.symbol*) #1

declare dso_local i64 @BLOCK_START(i32) #1

declare dso_local i32 @SYMBOL_BLOCK_VALUE(%struct.symbol*) #1

declare dso_local i64 @BLOCK_END(i32) #1

declare dso_local i64 @MSYMBOL_TYPE(%struct.minimal_symbol*) #1

declare dso_local i32* @SYMBOL_BFD_SECTION(%struct.minimal_symbol*) #1

declare dso_local %struct.obj_section* @find_pc_sect_section(i64, i32*) #1

declare dso_local i32* @SYMBOL_LINKAGE_NAME(%struct.minimal_symbol*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

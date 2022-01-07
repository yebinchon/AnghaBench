; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_f-valprint.c_info_common_command.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_f-valprint.c_info_common_command.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.frame_info = type { i32 }
%struct.TYPE_4__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { %struct.TYPE_5__*, %struct.symbol* }
%struct.symbol = type { i32 }
%struct.minimal_symbol = type opaque
%struct.minimal_symbol.0 = type opaque

@deprecated_selected_frame = common dso_local global %struct.frame_info* null, align 8
@.str = private unnamed_addr constant [18 x i8] c"No frame selected\00", align 1
@BLANK_COMMON_NAME_LOCAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [33 x i8] c"Contents of blank COMMON block:\0A\00", align 1
@.str.2 = private unnamed_addr constant [36 x i8] c"Contents of F77 COMMON block '%s':\0A\00", align 1
@.str.3 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.4 = private unnamed_addr constant [6 x i8] c"%s = \00", align 1
@gdb_stdout = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [52 x i8] c"Cannot locate the common block %s in function '%s'\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i32)* @info_common_command to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @info_common_command(i8* %0, i32 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_4__*, align 8
  %6 = alloca %struct.TYPE_5__*, align 8
  %7 = alloca %struct.frame_info*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca %struct.symbol*, align 8
  %10 = alloca %struct.minimal_symbol*, align 8
  %11 = alloca %struct.minimal_symbol.0*, align 8
  store i8* %0, i8** %3, align 8
  store i32 %1, i32* %4, align 4
  store i8* null, i8** %8, align 8
  %12 = load %struct.frame_info*, %struct.frame_info** @deprecated_selected_frame, align 8
  store %struct.frame_info* %12, %struct.frame_info** %7, align 8
  %13 = load %struct.frame_info*, %struct.frame_info** %7, align 8
  %14 = icmp eq %struct.frame_info* %13, null
  br i1 %14, label %15, label %17

15:                                               ; preds = %2
  %16 = call i32 @error(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0))
  br label %17

17:                                               ; preds = %15, %2
  %18 = load %struct.frame_info*, %struct.frame_info** %7, align 8
  %19 = call i32 @get_frame_pc(%struct.frame_info* %18)
  %20 = call %struct.symbol* @find_pc_function(i32 %19)
  store %struct.symbol* %20, %struct.symbol** %9, align 8
  %21 = load %struct.symbol*, %struct.symbol** %9, align 8
  %22 = icmp ne %struct.symbol* %21, null
  br i1 %22, label %23, label %46

23:                                               ; preds = %17
  %24 = load %struct.frame_info*, %struct.frame_info** %7, align 8
  %25 = call i32 @get_frame_pc(%struct.frame_info* %24)
  %26 = call %struct.symbol* @lookup_minimal_symbol_by_pc(i32 %25)
  %27 = bitcast %struct.symbol* %26 to %struct.minimal_symbol*
  store %struct.minimal_symbol* %27, %struct.minimal_symbol** %10, align 8
  %28 = load %struct.minimal_symbol*, %struct.minimal_symbol** %10, align 8
  %29 = icmp ne %struct.minimal_symbol* %28, null
  br i1 %29, label %30, label %42

30:                                               ; preds = %23
  %31 = load %struct.minimal_symbol*, %struct.minimal_symbol** %10, align 8
  %32 = bitcast %struct.minimal_symbol* %31 to %struct.symbol*
  %33 = call i64 @SYMBOL_VALUE_ADDRESS(%struct.symbol* %32)
  %34 = load %struct.symbol*, %struct.symbol** %9, align 8
  %35 = call i32 @SYMBOL_BLOCK_VALUE(%struct.symbol* %34)
  %36 = call i64 @BLOCK_START(i32 %35)
  %37 = icmp sgt i64 %33, %36
  br i1 %37, label %38, label %42

38:                                               ; preds = %30
  %39 = load %struct.minimal_symbol*, %struct.minimal_symbol** %10, align 8
  %40 = bitcast %struct.minimal_symbol* %39 to %struct.symbol*
  %41 = call i8* @DEPRECATED_SYMBOL_NAME(%struct.symbol* %40)
  store i8* %41, i8** %8, align 8
  br label %45

42:                                               ; preds = %30, %23
  %43 = load %struct.symbol*, %struct.symbol** %9, align 8
  %44 = call i8* @DEPRECATED_SYMBOL_NAME(%struct.symbol* %43)
  store i8* %44, i8** %8, align 8
  br label %45

45:                                               ; preds = %42, %38
  br label %58

46:                                               ; preds = %17
  %47 = load %struct.frame_info*, %struct.frame_info** %7, align 8
  %48 = call i32 @get_frame_pc(%struct.frame_info* %47)
  %49 = call %struct.symbol* @lookup_minimal_symbol_by_pc(i32 %48)
  %50 = bitcast %struct.symbol* %49 to %struct.minimal_symbol.0*
  store %struct.minimal_symbol.0* %50, %struct.minimal_symbol.0** %11, align 8
  %51 = load %struct.minimal_symbol.0*, %struct.minimal_symbol.0** %11, align 8
  %52 = icmp ne %struct.minimal_symbol.0* %51, null
  br i1 %52, label %53, label %57

53:                                               ; preds = %46
  %54 = load %struct.minimal_symbol.0*, %struct.minimal_symbol.0** %11, align 8
  %55 = bitcast %struct.minimal_symbol.0* %54 to %struct.symbol*
  %56 = call i8* @DEPRECATED_SYMBOL_NAME(%struct.symbol* %55)
  store i8* %56, i8** %8, align 8
  br label %57

57:                                               ; preds = %53, %46
  br label %58

58:                                               ; preds = %57, %45
  %59 = load i8*, i8** %3, align 8
  %60 = icmp eq i8* %59, null
  br i1 %60, label %61, label %64

61:                                               ; preds = %58
  %62 = load i8*, i8** %8, align 8
  %63 = call i32 @list_all_visible_commons(i8* %62)
  br label %109

64:                                               ; preds = %58
  %65 = load i8*, i8** %3, align 8
  %66 = load i8*, i8** %8, align 8
  %67 = call %struct.TYPE_4__* @find_common_for_function(i8* %65, i8* %66)
  store %struct.TYPE_4__* %67, %struct.TYPE_4__** %5, align 8
  %68 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %69 = icmp ne %struct.TYPE_4__* %68, null
  br i1 %69, label %70, label %105

70:                                               ; preds = %64
  %71 = load i8*, i8** %3, align 8
  %72 = load i32, i32* @BLANK_COMMON_NAME_LOCAL, align 4
  %73 = call i64 @strcmp(i8* %71, i32 %72)
  %74 = icmp eq i64 %73, 0
  br i1 %74, label %75, label %77

75:                                               ; preds = %70
  %76 = call i32 (i8*, ...) @printf_filtered(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0))
  br label %80

77:                                               ; preds = %70
  %78 = load i8*, i8** %3, align 8
  %79 = call i32 (i8*, ...) @printf_filtered(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.2, i64 0, i64 0), i8* %78)
  br label %80

80:                                               ; preds = %77, %75
  %81 = call i32 (i8*, ...) @printf_filtered(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0))
  %82 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %83 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %82, i32 0, i32 0
  %84 = load %struct.TYPE_5__*, %struct.TYPE_5__** %83, align 8
  store %struct.TYPE_5__* %84, %struct.TYPE_5__** %6, align 8
  br label %85

85:                                               ; preds = %88, %80
  %86 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %87 = icmp ne %struct.TYPE_5__* %86, null
  br i1 %87, label %88, label %104

88:                                               ; preds = %85
  %89 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %90 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %89, i32 0, i32 1
  %91 = load %struct.symbol*, %struct.symbol** %90, align 8
  %92 = call i8* @DEPRECATED_SYMBOL_NAME(%struct.symbol* %91)
  %93 = call i32 (i8*, ...) @printf_filtered(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i64 0, i64 0), i8* %92)
  %94 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %95 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %94, i32 0, i32 1
  %96 = load %struct.symbol*, %struct.symbol** %95, align 8
  %97 = load %struct.frame_info*, %struct.frame_info** %7, align 8
  %98 = load i32, i32* @gdb_stdout, align 4
  %99 = call i32 @print_variable_value(%struct.symbol* %96, %struct.frame_info* %97, i32 %98)
  %100 = call i32 (i8*, ...) @printf_filtered(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0))
  %101 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %102 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %101, i32 0, i32 0
  %103 = load %struct.TYPE_5__*, %struct.TYPE_5__** %102, align 8
  store %struct.TYPE_5__* %103, %struct.TYPE_5__** %6, align 8
  br label %85

104:                                              ; preds = %85
  br label %109

105:                                              ; preds = %64
  %106 = load i8*, i8** %3, align 8
  %107 = load i8*, i8** %8, align 8
  %108 = call i32 (i8*, ...) @printf_filtered(i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.5, i64 0, i64 0), i8* %106, i8* %107)
  br label %109

109:                                              ; preds = %61, %105, %104
  ret void
}

declare dso_local i32 @error(i8*) #1

declare dso_local %struct.symbol* @find_pc_function(i32) #1

declare dso_local i32 @get_frame_pc(%struct.frame_info*) #1

declare dso_local %struct.symbol* @lookup_minimal_symbol_by_pc(i32) #1

declare dso_local i64 @SYMBOL_VALUE_ADDRESS(%struct.symbol*) #1

declare dso_local i64 @BLOCK_START(i32) #1

declare dso_local i32 @SYMBOL_BLOCK_VALUE(%struct.symbol*) #1

declare dso_local i8* @DEPRECATED_SYMBOL_NAME(%struct.symbol*) #1

declare dso_local i32 @list_all_visible_commons(i8*) #1

declare dso_local %struct.TYPE_4__* @find_common_for_function(i8*, i8*) #1

declare dso_local i64 @strcmp(i8*, i32) #1

declare dso_local i32 @printf_filtered(i8*, ...) #1

declare dso_local i32 @print_variable_value(%struct.symbol*, %struct.frame_info*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

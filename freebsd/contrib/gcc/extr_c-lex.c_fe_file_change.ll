; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_c-lex.c_fe_file_change.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_c-lex.c_fe_file_change.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 (i32)*, i32 (i32, i32)* }
%struct.line_map = type { i64, i32, i32, i32, i32 }

@LC_ENTER = common dso_local global i64 0, align 8
@input_line = common dso_local global i32 0, align 4
@debug_hooks = common dso_local global %struct.TYPE_2__* null, align 8
@c_header_level = common dso_local global i32 0, align 4
@pending_lang_change = common dso_local global i32 0, align 4
@LC_LEAVE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [41 x i8] c"badly nested C headers from preprocessor\00", align 1
@in_system_header = common dso_local global i32 0, align 4
@input_filename = common dso_local global i32 0, align 4
@input_location = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @fe_file_change(%struct.line_map* %0) #0 {
  %2 = alloca %struct.line_map*, align 8
  %3 = alloca i32, align 4
  store %struct.line_map* %0, %struct.line_map** %2, align 8
  %4 = load %struct.line_map*, %struct.line_map** %2, align 8
  %5 = icmp eq %struct.line_map* %4, null
  br i1 %5, label %6, label %7

6:                                                ; preds = %1
  br label %99

7:                                                ; preds = %1
  %8 = load %struct.line_map*, %struct.line_map** %2, align 8
  %9 = getelementptr inbounds %struct.line_map, %struct.line_map* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = load i64, i64* @LC_ENTER, align 8
  %12 = icmp eq i64 %10, %11
  br i1 %12, label %13, label %50

13:                                               ; preds = %7
  %14 = load %struct.line_map*, %struct.line_map** %2, align 8
  %15 = call i32 @MAIN_FILE_P(%struct.line_map* %14)
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %49, label %17

17:                                               ; preds = %13
  %18 = load %struct.line_map*, %struct.line_map** %2, align 8
  %19 = getelementptr inbounds %struct.line_map, %struct.line_map* %18, i64 -1
  %20 = call i32 @LAST_SOURCE_LINE(%struct.line_map* %19)
  store i32 %20, i32* %3, align 4
  %21 = load i32, i32* %3, align 4
  store i32 %21, i32* @input_line, align 4
  %22 = load %struct.line_map*, %struct.line_map** %2, align 8
  %23 = getelementptr inbounds %struct.line_map, %struct.line_map* %22, i32 0, i32 4
  %24 = load i32, i32* %23, align 4
  %25 = call i32 (i32, ...) @push_srcloc(i32 %24, i32 1)
  %26 = load %struct.TYPE_2__*, %struct.TYPE_2__** @debug_hooks, align 8
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 1
  %28 = load i32 (i32, i32)*, i32 (i32, i32)** %27, align 8
  %29 = load i32, i32* %3, align 4
  %30 = load %struct.line_map*, %struct.line_map** %2, align 8
  %31 = getelementptr inbounds %struct.line_map, %struct.line_map* %30, i32 0, i32 4
  %32 = load i32, i32* %31, align 4
  %33 = call i32 %28(i32 %29, i32 %32)
  %34 = load i32, i32* @c_header_level, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %39

36:                                               ; preds = %17
  %37 = load i32, i32* @c_header_level, align 4
  %38 = add nsw i32 %37, 1
  store i32 %38, i32* @c_header_level, align 4
  br label %48

39:                                               ; preds = %17
  %40 = load %struct.line_map*, %struct.line_map** %2, align 8
  %41 = getelementptr inbounds %struct.line_map, %struct.line_map* %40, i32 0, i32 2
  %42 = load i32, i32* %41, align 4
  %43 = icmp eq i32 %42, 2
  br i1 %43, label %44, label %47

44:                                               ; preds = %39
  store i32 1, i32* @c_header_level, align 4
  %45 = load i32, i32* @pending_lang_change, align 4
  %46 = add nsw i32 %45, 1
  store i32 %46, i32* @pending_lang_change, align 4
  br label %47

47:                                               ; preds = %44, %39
  br label %48

48:                                               ; preds = %47, %36
  br label %49

49:                                               ; preds = %48, %13
  br label %83

50:                                               ; preds = %7
  %51 = load %struct.line_map*, %struct.line_map** %2, align 8
  %52 = getelementptr inbounds %struct.line_map, %struct.line_map* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = load i64, i64* @LC_LEAVE, align 8
  %55 = icmp eq i64 %53, %54
  br i1 %55, label %56, label %82

56:                                               ; preds = %50
  %57 = load i32, i32* @c_header_level, align 4
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %73

59:                                               ; preds = %56
  %60 = load i32, i32* @c_header_level, align 4
  %61 = add nsw i32 %60, -1
  store i32 %61, i32* @c_header_level, align 4
  %62 = icmp eq i32 %61, 0
  br i1 %62, label %63, label %73

63:                                               ; preds = %59
  %64 = load %struct.line_map*, %struct.line_map** %2, align 8
  %65 = getelementptr inbounds %struct.line_map, %struct.line_map* %64, i32 0, i32 2
  %66 = load i32, i32* %65, align 4
  %67 = icmp eq i32 %66, 2
  br i1 %67, label %68, label %70

68:                                               ; preds = %63
  %69 = call i32 @warning(i32 0, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0))
  br label %70

70:                                               ; preds = %68, %63
  %71 = load i32, i32* @pending_lang_change, align 4
  %72 = add nsw i32 %71, -1
  store i32 %72, i32* @pending_lang_change, align 4
  br label %73

73:                                               ; preds = %70, %59, %56
  %74 = call i32 (...) @pop_srcloc()
  %75 = load %struct.TYPE_2__*, %struct.TYPE_2__** @debug_hooks, align 8
  %76 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %75, i32 0, i32 0
  %77 = load i32 (i32)*, i32 (i32)** %76, align 8
  %78 = load %struct.line_map*, %struct.line_map** %2, align 8
  %79 = getelementptr inbounds %struct.line_map, %struct.line_map* %78, i32 0, i32 3
  %80 = load i32, i32* %79, align 8
  %81 = call i32 %77(i32 %80)
  br label %82

82:                                               ; preds = %73, %50
  br label %83

83:                                               ; preds = %82, %49
  %84 = load %struct.line_map*, %struct.line_map** %2, align 8
  %85 = getelementptr inbounds %struct.line_map, %struct.line_map* %84, i32 0, i32 4
  %86 = load i32, i32* %85, align 4
  %87 = call i32 @update_header_times(i32 %86)
  %88 = load %struct.line_map*, %struct.line_map** %2, align 8
  %89 = getelementptr inbounds %struct.line_map, %struct.line_map* %88, i32 0, i32 2
  %90 = load i32, i32* %89, align 4
  %91 = icmp ne i32 %90, 0
  %92 = zext i1 %91 to i32
  store i32 %92, i32* @in_system_header, align 4
  %93 = load %struct.line_map*, %struct.line_map** %2, align 8
  %94 = getelementptr inbounds %struct.line_map, %struct.line_map* %93, i32 0, i32 4
  %95 = load i32, i32* %94, align 4
  store i32 %95, i32* @input_filename, align 4
  %96 = load %struct.line_map*, %struct.line_map** %2, align 8
  %97 = getelementptr inbounds %struct.line_map, %struct.line_map* %96, i32 0, i32 3
  %98 = load i32, i32* %97, align 8
  store i32 %98, i32* @input_line, align 4
  br label %99

99:                                               ; preds = %83, %6
  ret void
}

declare dso_local i32 @MAIN_FILE_P(%struct.line_map*) #1

declare dso_local i32 @LAST_SOURCE_LINE(%struct.line_map*) #1

declare dso_local i32 @push_srcloc(i32, ...) #1

declare dso_local i32 @warning(i32, i8*) #1

declare dso_local i32 @pop_srcloc(...) #1

declare dso_local i32 @update_header_times(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/cli/extr_cli-decode.c_apropos_cmd.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/cli/extr_cli-decode.c_apropos_cmd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ui_file = type { i32 }
%struct.cmd_list_element = type { i8*, %struct.cmd_list_element**, i32*, i32*, %struct.cmd_list_element* }
%struct.re_pattern_buffer = type { i32 }

@.str = private unnamed_addr constant [9 x i8] c"%s%s -- \00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @apropos_cmd(%struct.ui_file* %0, %struct.cmd_list_element* %1, %struct.re_pattern_buffer* %2, i8* %3) #0 {
  %5 = alloca %struct.ui_file*, align 8
  %6 = alloca %struct.cmd_list_element*, align 8
  %7 = alloca %struct.re_pattern_buffer*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca %struct.cmd_list_element*, align 8
  %10 = alloca i32, align 4
  store %struct.ui_file* %0, %struct.ui_file** %5, align 8
  store %struct.cmd_list_element* %1, %struct.cmd_list_element** %6, align 8
  store %struct.re_pattern_buffer* %2, %struct.re_pattern_buffer** %7, align 8
  store i8* %3, i8** %8, align 8
  store i32 1, i32* %10, align 4
  %11 = load %struct.cmd_list_element*, %struct.cmd_list_element** %6, align 8
  store %struct.cmd_list_element* %11, %struct.cmd_list_element** %9, align 8
  br label %12

12:                                               ; preds = %105, %4
  %13 = load %struct.cmd_list_element*, %struct.cmd_list_element** %9, align 8
  %14 = icmp ne %struct.cmd_list_element* %13, null
  br i1 %14, label %15, label %109

15:                                               ; preds = %12
  %16 = load %struct.cmd_list_element*, %struct.cmd_list_element** %9, align 8
  %17 = getelementptr inbounds %struct.cmd_list_element, %struct.cmd_list_element* %16, i32 0, i32 3
  %18 = load i32*, i32** %17, align 8
  %19 = icmp ne i32* %18, null
  br i1 %19, label %20, label %51

20:                                               ; preds = %15
  %21 = load %struct.re_pattern_buffer*, %struct.re_pattern_buffer** %7, align 8
  %22 = load %struct.cmd_list_element*, %struct.cmd_list_element** %9, align 8
  %23 = getelementptr inbounds %struct.cmd_list_element, %struct.cmd_list_element* %22, i32 0, i32 3
  %24 = load i32*, i32** %23, align 8
  %25 = load %struct.cmd_list_element*, %struct.cmd_list_element** %9, align 8
  %26 = getelementptr inbounds %struct.cmd_list_element, %struct.cmd_list_element* %25, i32 0, i32 3
  %27 = load i32*, i32** %26, align 8
  %28 = call i32 @strlen(i32* %27)
  %29 = load %struct.cmd_list_element*, %struct.cmd_list_element** %9, align 8
  %30 = getelementptr inbounds %struct.cmd_list_element, %struct.cmd_list_element* %29, i32 0, i32 3
  %31 = load i32*, i32** %30, align 8
  %32 = call i32 @strlen(i32* %31)
  %33 = call i32 @re_search(%struct.re_pattern_buffer* %21, i32* %24, i32 %28, i32 0, i32 %32, i32* null)
  store i32 %33, i32* %10, align 4
  %34 = load i32, i32* %10, align 4
  %35 = icmp sge i32 %34, 0
  br i1 %35, label %36, label %50

36:                                               ; preds = %20
  %37 = load %struct.ui_file*, %struct.ui_file** %5, align 8
  %38 = load i8*, i8** %8, align 8
  %39 = load %struct.cmd_list_element*, %struct.cmd_list_element** %9, align 8
  %40 = getelementptr inbounds %struct.cmd_list_element, %struct.cmd_list_element* %39, i32 0, i32 3
  %41 = load i32*, i32** %40, align 8
  %42 = call i32 @fprintf_filtered(%struct.ui_file* %37, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i8* %38, i32* %41)
  %43 = load %struct.ui_file*, %struct.ui_file** %5, align 8
  %44 = load %struct.cmd_list_element*, %struct.cmd_list_element** %9, align 8
  %45 = getelementptr inbounds %struct.cmd_list_element, %struct.cmd_list_element* %44, i32 0, i32 2
  %46 = load i32*, i32** %45, align 8
  %47 = call i32 @print_doc_line(%struct.ui_file* %43, i32* %46)
  %48 = load %struct.ui_file*, %struct.ui_file** %5, align 8
  %49 = call i32 @fputs_filtered(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0), %struct.ui_file* %48)
  store i32 0, i32* %10, align 4
  br label %50

50:                                               ; preds = %36, %20
  br label %51

51:                                               ; preds = %50, %15
  %52 = load %struct.cmd_list_element*, %struct.cmd_list_element** %9, align 8
  %53 = getelementptr inbounds %struct.cmd_list_element, %struct.cmd_list_element* %52, i32 0, i32 2
  %54 = load i32*, i32** %53, align 8
  %55 = icmp ne i32* %54, null
  br i1 %55, label %56, label %89

56:                                               ; preds = %51
  %57 = load i32, i32* %10, align 4
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %89

59:                                               ; preds = %56
  %60 = load %struct.re_pattern_buffer*, %struct.re_pattern_buffer** %7, align 8
  %61 = load %struct.cmd_list_element*, %struct.cmd_list_element** %9, align 8
  %62 = getelementptr inbounds %struct.cmd_list_element, %struct.cmd_list_element* %61, i32 0, i32 2
  %63 = load i32*, i32** %62, align 8
  %64 = load %struct.cmd_list_element*, %struct.cmd_list_element** %9, align 8
  %65 = getelementptr inbounds %struct.cmd_list_element, %struct.cmd_list_element* %64, i32 0, i32 2
  %66 = load i32*, i32** %65, align 8
  %67 = call i32 @strlen(i32* %66)
  %68 = load %struct.cmd_list_element*, %struct.cmd_list_element** %9, align 8
  %69 = getelementptr inbounds %struct.cmd_list_element, %struct.cmd_list_element* %68, i32 0, i32 2
  %70 = load i32*, i32** %69, align 8
  %71 = call i32 @strlen(i32* %70)
  %72 = call i32 @re_search(%struct.re_pattern_buffer* %60, i32* %63, i32 %67, i32 0, i32 %71, i32* null)
  %73 = icmp sge i32 %72, 0
  br i1 %73, label %74, label %88

74:                                               ; preds = %59
  %75 = load %struct.ui_file*, %struct.ui_file** %5, align 8
  %76 = load i8*, i8** %8, align 8
  %77 = load %struct.cmd_list_element*, %struct.cmd_list_element** %9, align 8
  %78 = getelementptr inbounds %struct.cmd_list_element, %struct.cmd_list_element* %77, i32 0, i32 3
  %79 = load i32*, i32** %78, align 8
  %80 = call i32 @fprintf_filtered(%struct.ui_file* %75, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i8* %76, i32* %79)
  %81 = load %struct.ui_file*, %struct.ui_file** %5, align 8
  %82 = load %struct.cmd_list_element*, %struct.cmd_list_element** %9, align 8
  %83 = getelementptr inbounds %struct.cmd_list_element, %struct.cmd_list_element* %82, i32 0, i32 2
  %84 = load i32*, i32** %83, align 8
  %85 = call i32 @print_doc_line(%struct.ui_file* %81, i32* %84)
  %86 = load %struct.ui_file*, %struct.ui_file** %5, align 8
  %87 = call i32 @fputs_filtered(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0), %struct.ui_file* %86)
  br label %88

88:                                               ; preds = %74, %59
  br label %89

89:                                               ; preds = %88, %56, %51
  %90 = load %struct.cmd_list_element*, %struct.cmd_list_element** %9, align 8
  %91 = getelementptr inbounds %struct.cmd_list_element, %struct.cmd_list_element* %90, i32 0, i32 1
  %92 = load %struct.cmd_list_element**, %struct.cmd_list_element*** %91, align 8
  %93 = icmp ne %struct.cmd_list_element** %92, null
  br i1 %93, label %94, label %104

94:                                               ; preds = %89
  %95 = load %struct.ui_file*, %struct.ui_file** %5, align 8
  %96 = load %struct.cmd_list_element*, %struct.cmd_list_element** %9, align 8
  %97 = getelementptr inbounds %struct.cmd_list_element, %struct.cmd_list_element* %96, i32 0, i32 1
  %98 = load %struct.cmd_list_element**, %struct.cmd_list_element*** %97, align 8
  %99 = load %struct.cmd_list_element*, %struct.cmd_list_element** %98, align 8
  %100 = load %struct.re_pattern_buffer*, %struct.re_pattern_buffer** %7, align 8
  %101 = load %struct.cmd_list_element*, %struct.cmd_list_element** %9, align 8
  %102 = getelementptr inbounds %struct.cmd_list_element, %struct.cmd_list_element* %101, i32 0, i32 0
  %103 = load i8*, i8** %102, align 8
  call void @apropos_cmd(%struct.ui_file* %95, %struct.cmd_list_element* %99, %struct.re_pattern_buffer* %100, i8* %103)
  br label %104

104:                                              ; preds = %94, %89
  br label %105

105:                                              ; preds = %104
  %106 = load %struct.cmd_list_element*, %struct.cmd_list_element** %9, align 8
  %107 = getelementptr inbounds %struct.cmd_list_element, %struct.cmd_list_element* %106, i32 0, i32 4
  %108 = load %struct.cmd_list_element*, %struct.cmd_list_element** %107, align 8
  store %struct.cmd_list_element* %108, %struct.cmd_list_element** %9, align 8
  br label %12

109:                                              ; preds = %12
  ret void
}

declare dso_local i32 @re_search(%struct.re_pattern_buffer*, i32*, i32, i32, i32, i32*) #1

declare dso_local i32 @strlen(i32*) #1

declare dso_local i32 @fprintf_filtered(%struct.ui_file*, i8*, i8*, i32*) #1

declare dso_local i32 @print_doc_line(%struct.ui_file*, i32*) #1

declare dso_local i32 @fputs_filtered(i8*, %struct.ui_file*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

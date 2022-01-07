; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/cli/extr_cli-decode.c_help_cmd_list.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/cli/extr_cli-decode.c_help_cmd_list.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cmd_list_element = type { i64, i32, i8*, %struct.cmd_list_element**, i32, i32, i32*, %struct.cmd_list_element* }
%struct.ui_file = type { i32 }

@all_commands = common dso_local global i32 0, align 4
@all_classes = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [9 x i8] c"%s%s -- \00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @help_cmd_list(%struct.cmd_list_element* %0, i32 %1, i8* %2, i32 %3, %struct.ui_file* %4) #0 {
  %6 = alloca %struct.cmd_list_element*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.ui_file*, align 8
  %11 = alloca %struct.cmd_list_element*, align 8
  store %struct.cmd_list_element* %0, %struct.cmd_list_element** %6, align 8
  store i32 %1, i32* %7, align 4
  store i8* %2, i8** %8, align 8
  store i32 %3, i32* %9, align 4
  store %struct.ui_file* %4, %struct.ui_file** %10, align 8
  %12 = load %struct.cmd_list_element*, %struct.cmd_list_element** %6, align 8
  store %struct.cmd_list_element* %12, %struct.cmd_list_element** %11, align 8
  br label %13

13:                                               ; preds = %83, %5
  %14 = load %struct.cmd_list_element*, %struct.cmd_list_element** %11, align 8
  %15 = icmp ne %struct.cmd_list_element* %14, null
  br i1 %15, label %16, label %87

16:                                               ; preds = %13
  %17 = load %struct.cmd_list_element*, %struct.cmd_list_element** %11, align 8
  %18 = getelementptr inbounds %struct.cmd_list_element, %struct.cmd_list_element* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = icmp eq i64 %19, 0
  br i1 %20, label %21, label %59

21:                                               ; preds = %16
  %22 = load i32, i32* %7, align 4
  %23 = load i32, i32* @all_commands, align 4
  %24 = icmp eq i32 %22, %23
  br i1 %24, label %45, label %25

25:                                               ; preds = %21
  %26 = load i32, i32* %7, align 4
  %27 = load i32, i32* @all_classes, align 4
  %28 = icmp eq i32 %26, %27
  br i1 %28, label %29, label %34

29:                                               ; preds = %25
  %30 = load %struct.cmd_list_element*, %struct.cmd_list_element** %11, align 8
  %31 = getelementptr inbounds %struct.cmd_list_element, %struct.cmd_list_element* %30, i32 0, i32 6
  %32 = load i32*, i32** %31, align 8
  %33 = icmp eq i32* %32, null
  br i1 %33, label %45, label %34

34:                                               ; preds = %29, %25
  %35 = load i32, i32* %7, align 4
  %36 = load %struct.cmd_list_element*, %struct.cmd_list_element** %11, align 8
  %37 = getelementptr inbounds %struct.cmd_list_element, %struct.cmd_list_element* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 8
  %39 = icmp eq i32 %35, %38
  br i1 %39, label %40, label %59

40:                                               ; preds = %34
  %41 = load %struct.cmd_list_element*, %struct.cmd_list_element** %11, align 8
  %42 = getelementptr inbounds %struct.cmd_list_element, %struct.cmd_list_element* %41, i32 0, i32 6
  %43 = load i32*, i32** %42, align 8
  %44 = icmp ne i32* %43, null
  br i1 %44, label %45, label %59

45:                                               ; preds = %40, %29, %21
  %46 = load %struct.ui_file*, %struct.ui_file** %10, align 8
  %47 = load i8*, i8** %8, align 8
  %48 = load %struct.cmd_list_element*, %struct.cmd_list_element** %11, align 8
  %49 = getelementptr inbounds %struct.cmd_list_element, %struct.cmd_list_element* %48, i32 0, i32 5
  %50 = load i32, i32* %49, align 4
  %51 = call i32 @fprintf_filtered(%struct.ui_file* %46, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i8* %47, i32 %50)
  %52 = load %struct.ui_file*, %struct.ui_file** %10, align 8
  %53 = load %struct.cmd_list_element*, %struct.cmd_list_element** %11, align 8
  %54 = getelementptr inbounds %struct.cmd_list_element, %struct.cmd_list_element* %53, i32 0, i32 4
  %55 = load i32, i32* %54, align 8
  %56 = call i32 @print_doc_line(%struct.ui_file* %52, i32 %55)
  %57 = load %struct.ui_file*, %struct.ui_file** %10, align 8
  %58 = call i32 @fputs_filtered(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0), %struct.ui_file* %57)
  br label %59

59:                                               ; preds = %45, %40, %34, %16
  %60 = load i32, i32* %9, align 4
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %82

62:                                               ; preds = %59
  %63 = load %struct.cmd_list_element*, %struct.cmd_list_element** %11, align 8
  %64 = getelementptr inbounds %struct.cmd_list_element, %struct.cmd_list_element* %63, i32 0, i32 3
  %65 = load %struct.cmd_list_element**, %struct.cmd_list_element*** %64, align 8
  %66 = icmp ne %struct.cmd_list_element** %65, null
  br i1 %66, label %67, label %82

67:                                               ; preds = %62
  %68 = load %struct.cmd_list_element*, %struct.cmd_list_element** %11, align 8
  %69 = getelementptr inbounds %struct.cmd_list_element, %struct.cmd_list_element* %68, i32 0, i32 0
  %70 = load i64, i64* %69, align 8
  %71 = icmp eq i64 %70, 0
  br i1 %71, label %72, label %82

72:                                               ; preds = %67
  %73 = load %struct.cmd_list_element*, %struct.cmd_list_element** %11, align 8
  %74 = getelementptr inbounds %struct.cmd_list_element, %struct.cmd_list_element* %73, i32 0, i32 3
  %75 = load %struct.cmd_list_element**, %struct.cmd_list_element*** %74, align 8
  %76 = load %struct.cmd_list_element*, %struct.cmd_list_element** %75, align 8
  %77 = load i32, i32* %7, align 4
  %78 = load %struct.cmd_list_element*, %struct.cmd_list_element** %11, align 8
  %79 = getelementptr inbounds %struct.cmd_list_element, %struct.cmd_list_element* %78, i32 0, i32 2
  %80 = load i8*, i8** %79, align 8
  %81 = load %struct.ui_file*, %struct.ui_file** %10, align 8
  call void @help_cmd_list(%struct.cmd_list_element* %76, i32 %77, i8* %80, i32 1, %struct.ui_file* %81)
  br label %82

82:                                               ; preds = %72, %67, %62, %59
  br label %83

83:                                               ; preds = %82
  %84 = load %struct.cmd_list_element*, %struct.cmd_list_element** %11, align 8
  %85 = getelementptr inbounds %struct.cmd_list_element, %struct.cmd_list_element* %84, i32 0, i32 7
  %86 = load %struct.cmd_list_element*, %struct.cmd_list_element** %85, align 8
  store %struct.cmd_list_element* %86, %struct.cmd_list_element** %11, align 8
  br label %13

87:                                               ; preds = %13
  ret void
}

declare dso_local i32 @fprintf_filtered(%struct.ui_file*, i8*, i8*, i32) #1

declare dso_local i32 @print_doc_line(%struct.ui_file*, i32) #1

declare dso_local i32 @fputs_filtered(i8*, %struct.ui_file*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

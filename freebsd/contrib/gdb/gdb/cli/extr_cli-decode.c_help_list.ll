; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/cli/extr_cli-decode.c_help_list.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/cli/extr_cli-decode.c_help_list.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cmd_list_element = type { i32 }
%struct.ui_file = type { i32 }

@.str = private unnamed_addr constant [5 x i8] c" sub\00", align 1
@all_classes = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [33 x i8] c"List of classes of %scommands:\0A\0A\00", align 1
@.str.2 = private unnamed_addr constant [22 x i8] c"List of %scommands:\0A\0A\00", align 1
@.str.3 = private unnamed_addr constant [67 x i8] c"\0AType \22help%s\22 followed by a class name for a list of commands in \00", align 1
@.str.4 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.5 = private unnamed_addr constant [12 x i8] c"that class.\00", align 1
@.str.6 = private unnamed_addr constant [43 x i8] c"\0AType \22help%s\22 followed by %scommand name \00", align 1
@.str.7 = private unnamed_addr constant [5 x i8] c"for \00", align 1
@.str.8 = private unnamed_addr constant [6 x i8] c"full \00", align 1
@.str.9 = private unnamed_addr constant [16 x i8] c"documentation.\0A\00", align 1
@.str.10 = private unnamed_addr constant [56 x i8] c"Command name abbreviations are allowed if unambiguous.\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @help_list(%struct.cmd_list_element* %0, i8* %1, i32 %2, %struct.ui_file* %3) #0 {
  %5 = alloca %struct.cmd_list_element*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.ui_file*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  store %struct.cmd_list_element* %0, %struct.cmd_list_element** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  store %struct.ui_file* %3, %struct.ui_file** %8, align 8
  %12 = load i8*, i8** %6, align 8
  %13 = call i32 @strlen(i8* %12)
  store i32 %13, i32* %9, align 4
  %14 = load i32, i32* %9, align 4
  %15 = add nsw i32 %14, 1
  %16 = call i64 @alloca(i32 %15)
  %17 = inttoptr i64 %16 to i8*
  store i8* %17, i8** %10, align 8
  %18 = load i8*, i8** %10, align 8
  %19 = getelementptr inbounds i8, i8* %18, i64 0
  store i8 0, i8* %19, align 1
  %20 = load i32, i32* %9, align 4
  %21 = add nsw i32 %20, 4
  %22 = call i64 @alloca(i32 %21)
  %23 = inttoptr i64 %22 to i8*
  store i8* %23, i8** %11, align 8
  %24 = load i8*, i8** %11, align 8
  %25 = getelementptr inbounds i8, i8* %24, i64 0
  store i8 0, i8* %25, align 1
  %26 = load i32, i32* %9, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %52

28:                                               ; preds = %4
  %29 = load i8*, i8** %10, align 8
  %30 = getelementptr inbounds i8, i8* %29, i64 0
  store i8 32, i8* %30, align 1
  %31 = load i8*, i8** %10, align 8
  %32 = getelementptr inbounds i8, i8* %31, i64 1
  %33 = load i8*, i8** %6, align 8
  %34 = load i32, i32* %9, align 4
  %35 = sub nsw i32 %34, 1
  %36 = call i32 @strncpy(i8* %32, i8* %33, i32 %35)
  %37 = load i8*, i8** %10, align 8
  %38 = load i32, i32* %9, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds i8, i8* %37, i64 %39
  store i8 0, i8* %40, align 1
  %41 = load i8*, i8** %11, align 8
  %42 = load i8*, i8** %6, align 8
  %43 = load i32, i32* %9, align 4
  %44 = sub nsw i32 %43, 1
  %45 = call i32 @strncpy(i8* %41, i8* %42, i32 %44)
  %46 = load i8*, i8** %11, align 8
  %47 = load i32, i32* %9, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds i8, i8* %46, i64 %48
  %50 = getelementptr inbounds i8, i8* %49, i64 -1
  %51 = call i32 @strcpy(i8* %50, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  br label %52

52:                                               ; preds = %28, %4
  %53 = load i32, i32* %7, align 4
  %54 = load i32, i32* @all_classes, align 4
  %55 = icmp eq i32 %53, %54
  br i1 %55, label %56, label %60

56:                                               ; preds = %52
  %57 = load %struct.ui_file*, %struct.ui_file** %8, align 8
  %58 = load i8*, i8** %11, align 8
  %59 = call i32 (%struct.ui_file*, i8*, ...) @fprintf_filtered(%struct.ui_file* %57, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0), i8* %58)
  br label %64

60:                                               ; preds = %52
  %61 = load %struct.ui_file*, %struct.ui_file** %8, align 8
  %62 = load i8*, i8** %11, align 8
  %63 = call i32 (%struct.ui_file*, i8*, ...) @fprintf_filtered(%struct.ui_file* %61, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.2, i64 0, i64 0), i8* %62)
  br label %64

64:                                               ; preds = %60, %56
  %65 = load %struct.cmd_list_element*, %struct.cmd_list_element** %5, align 8
  %66 = load i32, i32* %7, align 4
  %67 = load i8*, i8** %6, align 8
  %68 = load i32, i32* %7, align 4
  %69 = icmp sge i32 %68, 0
  %70 = zext i1 %69 to i32
  %71 = load %struct.ui_file*, %struct.ui_file** %8, align 8
  %72 = call i32 @help_cmd_list(%struct.cmd_list_element* %65, i32 %66, i8* %67, i32 %70, %struct.ui_file* %71)
  %73 = load i32, i32* %7, align 4
  %74 = load i32, i32* @all_classes, align 4
  %75 = icmp eq i32 %73, %74
  br i1 %75, label %76, label %83

76:                                               ; preds = %64
  %77 = load %struct.ui_file*, %struct.ui_file** %8, align 8
  %78 = load i8*, i8** %10, align 8
  %79 = call i32 (%struct.ui_file*, i8*, ...) @fprintf_filtered(%struct.ui_file* %77, i8* getelementptr inbounds ([67 x i8], [67 x i8]* @.str.3, i64 0, i64 0), i8* %78)
  %80 = call i32 @wrap_here(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.4, i64 0, i64 0))
  %81 = load %struct.ui_file*, %struct.ui_file** %8, align 8
  %82 = call i32 (%struct.ui_file*, i8*, ...) @fprintf_filtered(%struct.ui_file* %81, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.5, i64 0, i64 0))
  br label %83

83:                                               ; preds = %76, %64
  %84 = load %struct.ui_file*, %struct.ui_file** %8, align 8
  %85 = load i8*, i8** %10, align 8
  %86 = load i8*, i8** %11, align 8
  %87 = call i32 (%struct.ui_file*, i8*, ...) @fprintf_filtered(%struct.ui_file* %84, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.6, i64 0, i64 0), i8* %85, i8* %86)
  %88 = call i32 @wrap_here(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.4, i64 0, i64 0))
  %89 = load %struct.ui_file*, %struct.ui_file** %8, align 8
  %90 = call i32 @fputs_filtered(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i64 0, i64 0), %struct.ui_file* %89)
  %91 = call i32 @wrap_here(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.4, i64 0, i64 0))
  %92 = load %struct.ui_file*, %struct.ui_file** %8, align 8
  %93 = call i32 @fputs_filtered(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.8, i64 0, i64 0), %struct.ui_file* %92)
  %94 = call i32 @wrap_here(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.4, i64 0, i64 0))
  %95 = load %struct.ui_file*, %struct.ui_file** %8, align 8
  %96 = call i32 @fputs_filtered(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.9, i64 0, i64 0), %struct.ui_file* %95)
  %97 = load %struct.ui_file*, %struct.ui_file** %8, align 8
  %98 = call i32 @fputs_filtered(i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.10, i64 0, i64 0), %struct.ui_file* %97)
  ret void
}

declare dso_local i32 @strlen(i8*) #1

declare dso_local i64 @alloca(i32) #1

declare dso_local i32 @strncpy(i8*, i8*, i32) #1

declare dso_local i32 @strcpy(i8*, i8*) #1

declare dso_local i32 @fprintf_filtered(%struct.ui_file*, i8*, ...) #1

declare dso_local i32 @help_cmd_list(%struct.cmd_list_element*, i32, i8*, i32, %struct.ui_file*) #1

declare dso_local i32 @wrap_here(i8*) #1

declare dso_local i32 @fputs_filtered(i8*, %struct.ui_file*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

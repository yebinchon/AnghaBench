; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/cli/extr_cli-script.c_document_command.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/cli/extr_cli-script.c_document_command.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.command_line = type { i8*, %struct.command_line* }
%struct.cmd_list_element = type { i64, i8* }

@cmdlist = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@class_user = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [26 x i8] c"Command \22%s\22 is built-in.\00", align 1
@.str.2 = private unnamed_addr constant [29 x i8] c"Type documentation for \22%s\22.\00", align 1
@.str.3 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @document_command(i8* %0, i32 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.command_line*, align 8
  %6 = alloca %struct.cmd_list_element*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca [128 x i8], align 16
  %9 = alloca %struct.command_line*, align 8
  %10 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  store i32 %1, i32* %4, align 4
  %11 = load i8*, i8** %3, align 8
  store i8* %11, i8** %7, align 8
  %12 = load i8*, i8** %3, align 8
  %13 = call i32 @validate_comname(i8* %12)
  %14 = load i32, i32* @cmdlist, align 4
  %15 = call %struct.cmd_list_element* @lookup_cmd(i8** %7, i32 %14, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0), i32 0, i32 1)
  store %struct.cmd_list_element* %15, %struct.cmd_list_element** %6, align 8
  %16 = load %struct.cmd_list_element*, %struct.cmd_list_element** %6, align 8
  %17 = getelementptr inbounds %struct.cmd_list_element, %struct.cmd_list_element* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = load i64, i64* @class_user, align 8
  %20 = icmp ne i64 %18, %19
  br i1 %20, label %21, label %24

21:                                               ; preds = %2
  %22 = load i8*, i8** %3, align 8
  %23 = call i32 @error(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0), i8* %22)
  br label %24

24:                                               ; preds = %21, %2
  %25 = getelementptr inbounds [128 x i8], [128 x i8]* %8, i64 0, i64 0
  %26 = load i8*, i8** %3, align 8
  %27 = call i32 @sprintf(i8* %25, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i64 0, i64 0), i8* %26)
  %28 = getelementptr inbounds [128 x i8], [128 x i8]* %8, i64 0, i64 0
  %29 = load i32, i32* %4, align 4
  %30 = call %struct.command_line* @read_command_lines(i8* %28, i32 %29)
  store %struct.command_line* %30, %struct.command_line** %5, align 8
  %31 = load %struct.cmd_list_element*, %struct.cmd_list_element** %6, align 8
  %32 = getelementptr inbounds %struct.cmd_list_element, %struct.cmd_list_element* %31, i32 0, i32 1
  %33 = load i8*, i8** %32, align 8
  %34 = icmp ne i8* %33, null
  br i1 %34, label %35, label %40

35:                                               ; preds = %24
  %36 = load %struct.cmd_list_element*, %struct.cmd_list_element** %6, align 8
  %37 = getelementptr inbounds %struct.cmd_list_element, %struct.cmd_list_element* %36, i32 0, i32 1
  %38 = load i8*, i8** %37, align 8
  %39 = call i32 @xfree(i8* %38)
  br label %40

40:                                               ; preds = %35, %24
  store i32 0, i32* %10, align 4
  %41 = load %struct.command_line*, %struct.command_line** %5, align 8
  store %struct.command_line* %41, %struct.command_line** %9, align 8
  br label %42

42:                                               ; preds = %55, %40
  %43 = load %struct.command_line*, %struct.command_line** %9, align 8
  %44 = icmp ne %struct.command_line* %43, null
  br i1 %44, label %45, label %59

45:                                               ; preds = %42
  %46 = load %struct.command_line*, %struct.command_line** %9, align 8
  %47 = getelementptr inbounds %struct.command_line, %struct.command_line* %46, i32 0, i32 0
  %48 = load i8*, i8** %47, align 8
  %49 = call i64 @strlen(i8* %48)
  %50 = add nsw i64 %49, 1
  %51 = load i32, i32* %10, align 4
  %52 = sext i32 %51 to i64
  %53 = add nsw i64 %52, %50
  %54 = trunc i64 %53 to i32
  store i32 %54, i32* %10, align 4
  br label %55

55:                                               ; preds = %45
  %56 = load %struct.command_line*, %struct.command_line** %9, align 8
  %57 = getelementptr inbounds %struct.command_line, %struct.command_line* %56, i32 0, i32 1
  %58 = load %struct.command_line*, %struct.command_line** %57, align 8
  store %struct.command_line* %58, %struct.command_line** %9, align 8
  br label %42

59:                                               ; preds = %42
  %60 = load i32, i32* %10, align 4
  %61 = add nsw i32 %60, 1
  %62 = call i64 @xmalloc(i32 %61)
  %63 = inttoptr i64 %62 to i8*
  %64 = load %struct.cmd_list_element*, %struct.cmd_list_element** %6, align 8
  %65 = getelementptr inbounds %struct.cmd_list_element, %struct.cmd_list_element* %64, i32 0, i32 1
  store i8* %63, i8** %65, align 8
  %66 = load %struct.cmd_list_element*, %struct.cmd_list_element** %6, align 8
  %67 = getelementptr inbounds %struct.cmd_list_element, %struct.cmd_list_element* %66, i32 0, i32 1
  %68 = load i8*, i8** %67, align 8
  store i8 0, i8* %68, align 1
  %69 = load %struct.command_line*, %struct.command_line** %5, align 8
  store %struct.command_line* %69, %struct.command_line** %9, align 8
  br label %70

70:                                               ; preds = %91, %59
  %71 = load %struct.command_line*, %struct.command_line** %9, align 8
  %72 = icmp ne %struct.command_line* %71, null
  br i1 %72, label %73, label %95

73:                                               ; preds = %70
  %74 = load %struct.cmd_list_element*, %struct.cmd_list_element** %6, align 8
  %75 = getelementptr inbounds %struct.cmd_list_element, %struct.cmd_list_element* %74, i32 0, i32 1
  %76 = load i8*, i8** %75, align 8
  %77 = load %struct.command_line*, %struct.command_line** %9, align 8
  %78 = getelementptr inbounds %struct.command_line, %struct.command_line* %77, i32 0, i32 0
  %79 = load i8*, i8** %78, align 8
  %80 = call i32 @strcat(i8* %76, i8* %79)
  %81 = load %struct.command_line*, %struct.command_line** %9, align 8
  %82 = getelementptr inbounds %struct.command_line, %struct.command_line* %81, i32 0, i32 1
  %83 = load %struct.command_line*, %struct.command_line** %82, align 8
  %84 = icmp ne %struct.command_line* %83, null
  br i1 %84, label %85, label %90

85:                                               ; preds = %73
  %86 = load %struct.cmd_list_element*, %struct.cmd_list_element** %6, align 8
  %87 = getelementptr inbounds %struct.cmd_list_element, %struct.cmd_list_element* %86, i32 0, i32 1
  %88 = load i8*, i8** %87, align 8
  %89 = call i32 @strcat(i8* %88, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0))
  br label %90

90:                                               ; preds = %85, %73
  br label %91

91:                                               ; preds = %90
  %92 = load %struct.command_line*, %struct.command_line** %9, align 8
  %93 = getelementptr inbounds %struct.command_line, %struct.command_line* %92, i32 0, i32 1
  %94 = load %struct.command_line*, %struct.command_line** %93, align 8
  store %struct.command_line* %94, %struct.command_line** %9, align 8
  br label %70

95:                                               ; preds = %70
  %96 = call i32 @free_command_lines(%struct.command_line** %5)
  ret void
}

declare dso_local i32 @validate_comname(i8*) #1

declare dso_local %struct.cmd_list_element* @lookup_cmd(i8**, i32, i8*, i32, i32) #1

declare dso_local i32 @error(i8*, i8*) #1

declare dso_local i32 @sprintf(i8*, i8*, i8*) #1

declare dso_local %struct.command_line* @read_command_lines(i8*, i32) #1

declare dso_local i32 @xfree(i8*) #1

declare dso_local i64 @strlen(i8*) #1

declare dso_local i64 @xmalloc(i32) #1

declare dso_local i32 @strcat(i8*, i8*) #1

declare dso_local i32 @free_command_lines(%struct.command_line**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

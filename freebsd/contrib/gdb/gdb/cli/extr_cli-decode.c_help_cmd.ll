; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/cli/extr_cli-decode.c_help_cmd.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/cli/extr_cli-decode.c_help_cmd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cmd_list_element = type { i8*, i8*, %struct.TYPE_4__*, %struct.TYPE_3__*, i32, i32*, %struct.cmd_list_element** }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i32 }
%struct.ui_file = type { i32 }

@cmdlist = external dso_local global %struct.cmd_list_element*, align 8
@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@all_classes = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [4 x i8] c"all\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@all_commands = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [46 x i8] c"\0AThis command has a hook (or hooks) defined:\0A\00", align 1
@.str.4 = private unnamed_addr constant [45 x i8] c"\09This command is run after  : %s (pre hook)\0A\00", align 1
@.str.5 = private unnamed_addr constant [46 x i8] c"\09This command is run before : %s (post hook)\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @help_cmd(i8* %0, %struct.ui_file* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca %struct.ui_file*, align 8
  %5 = alloca %struct.cmd_list_element*, align 8
  store i8* %0, i8** %3, align 8
  store %struct.ui_file* %1, %struct.ui_file** %4, align 8
  %6 = load i8*, i8** %3, align 8
  %7 = icmp ne i8* %6, null
  br i1 %7, label %13, label %8

8:                                                ; preds = %2
  %9 = load %struct.cmd_list_element*, %struct.cmd_list_element** @cmdlist, align 8
  %10 = load i32, i32* @all_classes, align 4
  %11 = load %struct.ui_file*, %struct.ui_file** %4, align 8
  %12 = call i32 @help_list(%struct.cmd_list_element* %9, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0), i32 %10, %struct.ui_file* %11)
  br label %113

13:                                               ; preds = %2
  %14 = load i8*, i8** %3, align 8
  %15 = call i64 @strcmp(i8* %14, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0))
  %16 = icmp eq i64 %15, 0
  br i1 %16, label %17, label %20

17:                                               ; preds = %13
  %18 = load %struct.ui_file*, %struct.ui_file** %4, align 8
  %19 = call i32 @help_all(%struct.ui_file* %18)
  br label %113

20:                                               ; preds = %13
  %21 = load %struct.cmd_list_element*, %struct.cmd_list_element** @cmdlist, align 8
  %22 = call %struct.cmd_list_element* @lookup_cmd(i8** %3, %struct.cmd_list_element* %21, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0), i32 0, i32 0)
  store %struct.cmd_list_element* %22, %struct.cmd_list_element** %5, align 8
  %23 = load %struct.cmd_list_element*, %struct.cmd_list_element** %5, align 8
  %24 = icmp eq %struct.cmd_list_element* %23, null
  br i1 %24, label %25, label %26

25:                                               ; preds = %20
  br label %113

26:                                               ; preds = %20
  %27 = load %struct.cmd_list_element*, %struct.cmd_list_element** %5, align 8
  %28 = getelementptr inbounds %struct.cmd_list_element, %struct.cmd_list_element* %27, i32 0, i32 0
  %29 = load i8*, i8** %28, align 8
  %30 = load %struct.ui_file*, %struct.ui_file** %4, align 8
  %31 = call i32 @fputs_filtered(i8* %29, %struct.ui_file* %30)
  %32 = load %struct.ui_file*, %struct.ui_file** %4, align 8
  %33 = call i32 @fputs_filtered(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0), %struct.ui_file* %32)
  %34 = load %struct.cmd_list_element*, %struct.cmd_list_element** %5, align 8
  %35 = getelementptr inbounds %struct.cmd_list_element, %struct.cmd_list_element* %34, i32 0, i32 6
  %36 = load %struct.cmd_list_element**, %struct.cmd_list_element*** %35, align 8
  %37 = icmp eq %struct.cmd_list_element** %36, null
  br i1 %37, label %38, label %44

38:                                               ; preds = %26
  %39 = load %struct.cmd_list_element*, %struct.cmd_list_element** %5, align 8
  %40 = getelementptr inbounds %struct.cmd_list_element, %struct.cmd_list_element* %39, i32 0, i32 5
  %41 = load i32*, i32** %40, align 8
  %42 = icmp ne i32* %41, null
  br i1 %42, label %43, label %44

43:                                               ; preds = %38
  br label %113

44:                                               ; preds = %38, %26
  %45 = load %struct.ui_file*, %struct.ui_file** %4, align 8
  %46 = call i32 (%struct.ui_file*, i8*, ...) @fprintf_filtered(%struct.ui_file* %45, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0))
  %47 = load %struct.cmd_list_element*, %struct.cmd_list_element** %5, align 8
  %48 = getelementptr inbounds %struct.cmd_list_element, %struct.cmd_list_element* %47, i32 0, i32 6
  %49 = load %struct.cmd_list_element**, %struct.cmd_list_element*** %48, align 8
  %50 = icmp ne %struct.cmd_list_element** %49, null
  br i1 %50, label %51, label %62

51:                                               ; preds = %44
  %52 = load %struct.cmd_list_element*, %struct.cmd_list_element** %5, align 8
  %53 = getelementptr inbounds %struct.cmd_list_element, %struct.cmd_list_element* %52, i32 0, i32 6
  %54 = load %struct.cmd_list_element**, %struct.cmd_list_element*** %53, align 8
  %55 = load %struct.cmd_list_element*, %struct.cmd_list_element** %54, align 8
  %56 = load %struct.cmd_list_element*, %struct.cmd_list_element** %5, align 8
  %57 = getelementptr inbounds %struct.cmd_list_element, %struct.cmd_list_element* %56, i32 0, i32 1
  %58 = load i8*, i8** %57, align 8
  %59 = load i32, i32* @all_commands, align 4
  %60 = load %struct.ui_file*, %struct.ui_file** %4, align 8
  %61 = call i32 @help_list(%struct.cmd_list_element* %55, i8* %58, i32 %59, %struct.ui_file* %60)
  br label %62

62:                                               ; preds = %51, %44
  %63 = load %struct.cmd_list_element*, %struct.cmd_list_element** %5, align 8
  %64 = getelementptr inbounds %struct.cmd_list_element, %struct.cmd_list_element* %63, i32 0, i32 5
  %65 = load i32*, i32** %64, align 8
  %66 = icmp eq i32* %65, null
  br i1 %66, label %67, label %74

67:                                               ; preds = %62
  %68 = load %struct.cmd_list_element*, %struct.cmd_list_element** @cmdlist, align 8
  %69 = load %struct.cmd_list_element*, %struct.cmd_list_element** %5, align 8
  %70 = getelementptr inbounds %struct.cmd_list_element, %struct.cmd_list_element* %69, i32 0, i32 4
  %71 = load i32, i32* %70, align 8
  %72 = load %struct.ui_file*, %struct.ui_file** %4, align 8
  %73 = call i32 @help_list(%struct.cmd_list_element* %68, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0), i32 %71, %struct.ui_file* %72)
  br label %74

74:                                               ; preds = %67, %62
  %75 = load %struct.cmd_list_element*, %struct.cmd_list_element** %5, align 8
  %76 = getelementptr inbounds %struct.cmd_list_element, %struct.cmd_list_element* %75, i32 0, i32 3
  %77 = load %struct.TYPE_3__*, %struct.TYPE_3__** %76, align 8
  %78 = icmp ne %struct.TYPE_3__* %77, null
  br i1 %78, label %84, label %79

79:                                               ; preds = %74
  %80 = load %struct.cmd_list_element*, %struct.cmd_list_element** %5, align 8
  %81 = getelementptr inbounds %struct.cmd_list_element, %struct.cmd_list_element* %80, i32 0, i32 2
  %82 = load %struct.TYPE_4__*, %struct.TYPE_4__** %81, align 8
  %83 = icmp ne %struct.TYPE_4__* %82, null
  br i1 %83, label %84, label %87

84:                                               ; preds = %79, %74
  %85 = load %struct.ui_file*, %struct.ui_file** %4, align 8
  %86 = call i32 (%struct.ui_file*, i8*, ...) @fprintf_filtered(%struct.ui_file* %85, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.3, i64 0, i64 0))
  br label %87

87:                                               ; preds = %84, %79
  %88 = load %struct.cmd_list_element*, %struct.cmd_list_element** %5, align 8
  %89 = getelementptr inbounds %struct.cmd_list_element, %struct.cmd_list_element* %88, i32 0, i32 3
  %90 = load %struct.TYPE_3__*, %struct.TYPE_3__** %89, align 8
  %91 = icmp ne %struct.TYPE_3__* %90, null
  br i1 %91, label %92, label %100

92:                                               ; preds = %87
  %93 = load %struct.ui_file*, %struct.ui_file** %4, align 8
  %94 = load %struct.cmd_list_element*, %struct.cmd_list_element** %5, align 8
  %95 = getelementptr inbounds %struct.cmd_list_element, %struct.cmd_list_element* %94, i32 0, i32 3
  %96 = load %struct.TYPE_3__*, %struct.TYPE_3__** %95, align 8
  %97 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 4
  %99 = call i32 (%struct.ui_file*, i8*, ...) @fprintf_filtered(%struct.ui_file* %93, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.4, i64 0, i64 0), i32 %98)
  br label %100

100:                                              ; preds = %92, %87
  %101 = load %struct.cmd_list_element*, %struct.cmd_list_element** %5, align 8
  %102 = getelementptr inbounds %struct.cmd_list_element, %struct.cmd_list_element* %101, i32 0, i32 2
  %103 = load %struct.TYPE_4__*, %struct.TYPE_4__** %102, align 8
  %104 = icmp ne %struct.TYPE_4__* %103, null
  br i1 %104, label %105, label %113

105:                                              ; preds = %100
  %106 = load %struct.ui_file*, %struct.ui_file** %4, align 8
  %107 = load %struct.cmd_list_element*, %struct.cmd_list_element** %5, align 8
  %108 = getelementptr inbounds %struct.cmd_list_element, %struct.cmd_list_element* %107, i32 0, i32 2
  %109 = load %struct.TYPE_4__*, %struct.TYPE_4__** %108, align 8
  %110 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %109, i32 0, i32 0
  %111 = load i32, i32* %110, align 4
  %112 = call i32 (%struct.ui_file*, i8*, ...) @fprintf_filtered(%struct.ui_file* %106, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.5, i64 0, i64 0), i32 %111)
  br label %113

113:                                              ; preds = %8, %17, %25, %43, %105, %100
  ret void
}

declare dso_local i32 @help_list(%struct.cmd_list_element*, i8*, i32, %struct.ui_file*) #1

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i32 @help_all(%struct.ui_file*) #1

declare dso_local %struct.cmd_list_element* @lookup_cmd(i8**, %struct.cmd_list_element*, i8*, i32, i32) #1

declare dso_local i32 @fputs_filtered(i8*, %struct.ui_file*) #1

declare dso_local i32 @fprintf_filtered(%struct.ui_file*, i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

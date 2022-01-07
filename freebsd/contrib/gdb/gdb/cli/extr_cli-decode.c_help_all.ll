; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/cli/extr_cli-decode.c_help_all.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/cli/extr_cli-decode.c_help_all.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cmd_list_element = type { i8*, i32, i32*, %struct.cmd_list_element**, i64, %struct.cmd_list_element* }
%struct.ui_file = type { i32 }

@cmdlist = external dso_local global %struct.cmd_list_element*, align 8
@all_commands = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ui_file*)* @help_all to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @help_all(%struct.ui_file* %0) #0 {
  %2 = alloca %struct.ui_file*, align 8
  %3 = alloca %struct.cmd_list_element*, align 8
  store %struct.ui_file* %0, %struct.ui_file** %2, align 8
  %4 = load %struct.cmd_list_element*, %struct.cmd_list_element** @cmdlist, align 8
  store %struct.cmd_list_element* %4, %struct.cmd_list_element** %3, align 8
  br label %5

5:                                                ; preds = %44, %1
  %6 = load %struct.cmd_list_element*, %struct.cmd_list_element** %3, align 8
  %7 = icmp ne %struct.cmd_list_element* %6, null
  br i1 %7, label %8, label %48

8:                                                ; preds = %5
  %9 = load %struct.cmd_list_element*, %struct.cmd_list_element** %3, align 8
  %10 = getelementptr inbounds %struct.cmd_list_element, %struct.cmd_list_element* %9, i32 0, i32 4
  %11 = load i64, i64* %10, align 8
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %14

13:                                               ; preds = %8
  br label %44

14:                                               ; preds = %8
  %15 = load %struct.cmd_list_element*, %struct.cmd_list_element** %3, align 8
  %16 = getelementptr inbounds %struct.cmd_list_element, %struct.cmd_list_element* %15, i32 0, i32 3
  %17 = load %struct.cmd_list_element**, %struct.cmd_list_element*** %16, align 8
  %18 = icmp ne %struct.cmd_list_element** %17, null
  br i1 %18, label %19, label %30

19:                                               ; preds = %14
  %20 = load %struct.cmd_list_element*, %struct.cmd_list_element** %3, align 8
  %21 = getelementptr inbounds %struct.cmd_list_element, %struct.cmd_list_element* %20, i32 0, i32 3
  %22 = load %struct.cmd_list_element**, %struct.cmd_list_element*** %21, align 8
  %23 = load %struct.cmd_list_element*, %struct.cmd_list_element** %22, align 8
  %24 = load i32, i32* @all_commands, align 4
  %25 = load %struct.cmd_list_element*, %struct.cmd_list_element** %3, align 8
  %26 = getelementptr inbounds %struct.cmd_list_element, %struct.cmd_list_element* %25, i32 0, i32 0
  %27 = load i8*, i8** %26, align 8
  %28 = load %struct.ui_file*, %struct.ui_file** %2, align 8
  %29 = call i32 @help_cmd_list(%struct.cmd_list_element* %23, i32 %24, i8* %27, i32 0, %struct.ui_file* %28)
  br label %43

30:                                               ; preds = %14
  %31 = load %struct.cmd_list_element*, %struct.cmd_list_element** %3, align 8
  %32 = getelementptr inbounds %struct.cmd_list_element, %struct.cmd_list_element* %31, i32 0, i32 2
  %33 = load i32*, i32** %32, align 8
  %34 = icmp eq i32* %33, null
  br i1 %34, label %35, label %42

35:                                               ; preds = %30
  %36 = load %struct.cmd_list_element*, %struct.cmd_list_element** @cmdlist, align 8
  %37 = load %struct.cmd_list_element*, %struct.cmd_list_element** %3, align 8
  %38 = getelementptr inbounds %struct.cmd_list_element, %struct.cmd_list_element* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 8
  %40 = load %struct.ui_file*, %struct.ui_file** %2, align 8
  %41 = call i32 @help_cmd_list(%struct.cmd_list_element* %36, i32 %39, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0), i32 0, %struct.ui_file* %40)
  br label %42

42:                                               ; preds = %35, %30
  br label %43

43:                                               ; preds = %42, %19
  br label %44

44:                                               ; preds = %43, %13
  %45 = load %struct.cmd_list_element*, %struct.cmd_list_element** %3, align 8
  %46 = getelementptr inbounds %struct.cmd_list_element, %struct.cmd_list_element* %45, i32 0, i32 5
  %47 = load %struct.cmd_list_element*, %struct.cmd_list_element** %46, align 8
  store %struct.cmd_list_element* %47, %struct.cmd_list_element** %3, align 8
  br label %5

48:                                               ; preds = %5
  ret void
}

declare dso_local i32 @help_cmd_list(%struct.cmd_list_element*, i32, i8*, i32, %struct.ui_file*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

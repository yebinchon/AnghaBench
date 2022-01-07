; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/cli/extr_cli-cmds.c_show_user.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/cli/extr_cli-cmds.c_show_user.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cmd_list_element = type { i64, %struct.cmd_list_element* }

@cmdlist = external dso_local global %struct.cmd_list_element*, align 8
@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@class_user = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [20 x i8] c"Not a user command.\00", align 1
@gdb_stdout = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i32)* @show_user to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @show_user(i8* %0, i32 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.cmd_list_element*, align 8
  store i8* %0, i8** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load i8*, i8** %3, align 8
  %7 = icmp ne i8* %6, null
  br i1 %7, label %8, label %22

8:                                                ; preds = %2
  %9 = load %struct.cmd_list_element*, %struct.cmd_list_element** @cmdlist, align 8
  %10 = call %struct.cmd_list_element* @lookup_cmd(i8** %3, %struct.cmd_list_element* %9, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0), i32 0, i32 1)
  store %struct.cmd_list_element* %10, %struct.cmd_list_element** %5, align 8
  %11 = load %struct.cmd_list_element*, %struct.cmd_list_element** %5, align 8
  %12 = getelementptr inbounds %struct.cmd_list_element, %struct.cmd_list_element* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = load i64, i64* @class_user, align 8
  %15 = icmp ne i64 %13, %14
  br i1 %15, label %16, label %18

16:                                               ; preds = %8
  %17 = call i32 @error(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0))
  br label %18

18:                                               ; preds = %16, %8
  %19 = load %struct.cmd_list_element*, %struct.cmd_list_element** %5, align 8
  %20 = load i32, i32* @gdb_stdout, align 4
  %21 = call i32 @show_user_1(%struct.cmd_list_element* %19, i32 %20)
  br label %43

22:                                               ; preds = %2
  %23 = load %struct.cmd_list_element*, %struct.cmd_list_element** @cmdlist, align 8
  store %struct.cmd_list_element* %23, %struct.cmd_list_element** %5, align 8
  br label %24

24:                                               ; preds = %38, %22
  %25 = load %struct.cmd_list_element*, %struct.cmd_list_element** %5, align 8
  %26 = icmp ne %struct.cmd_list_element* %25, null
  br i1 %26, label %27, label %42

27:                                               ; preds = %24
  %28 = load %struct.cmd_list_element*, %struct.cmd_list_element** %5, align 8
  %29 = getelementptr inbounds %struct.cmd_list_element, %struct.cmd_list_element* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = load i64, i64* @class_user, align 8
  %32 = icmp eq i64 %30, %31
  br i1 %32, label %33, label %37

33:                                               ; preds = %27
  %34 = load %struct.cmd_list_element*, %struct.cmd_list_element** %5, align 8
  %35 = load i32, i32* @gdb_stdout, align 4
  %36 = call i32 @show_user_1(%struct.cmd_list_element* %34, i32 %35)
  br label %37

37:                                               ; preds = %33, %27
  br label %38

38:                                               ; preds = %37
  %39 = load %struct.cmd_list_element*, %struct.cmd_list_element** %5, align 8
  %40 = getelementptr inbounds %struct.cmd_list_element, %struct.cmd_list_element* %39, i32 0, i32 1
  %41 = load %struct.cmd_list_element*, %struct.cmd_list_element** %40, align 8
  store %struct.cmd_list_element* %41, %struct.cmd_list_element** %5, align 8
  br label %24

42:                                               ; preds = %24
  br label %43

43:                                               ; preds = %42, %18
  ret void
}

declare dso_local %struct.cmd_list_element* @lookup_cmd(i8**, %struct.cmd_list_element*, i8*, i32, i32) #1

declare dso_local i32 @error(i8*) #1

declare dso_local i32 @show_user_1(%struct.cmd_list_element*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/cli/extr_cli-cmds.c_apropos_command.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/cli/extr_cli-cmds.c_apropos_command.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cmd_list_element = type { i32 }
%struct.TYPE_5__ = type { i8* }

@.str = private unnamed_addr constant [23 x i8] c"REGEXP string is empty\00", align 1
@REG_ICASE = common dso_local global i32 0, align 4
@gdb_stdout = common dso_local global i32 0, align 4
@cmdlist = external dso_local global %struct.cmd_list_element*, align 8
@.str.1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.2 = private unnamed_addr constant [31 x i8] c"Error in regular expression:%s\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @apropos_command(i8* %0, i32 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_5__, align 8
  %6 = alloca i8*, align 8
  %7 = alloca [512 x i8], align 16
  store i8* %0, i8** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = call i8* @xcalloc(i32 256, i32 1)
  store i8* %8, i8** %6, align 8
  %9 = load i8*, i8** %3, align 8
  %10 = icmp eq i8* %9, null
  br i1 %10, label %11, label %13

11:                                               ; preds = %2
  %12 = call i32 (i8*, ...) @error(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  br label %13

13:                                               ; preds = %11, %2
  %14 = load i8*, i8** %3, align 8
  %15 = load i32, i32* @REG_ICASE, align 4
  %16 = call i64 @regcomp(%struct.TYPE_5__* %5, i8* %14, i32 %15)
  %17 = icmp eq i64 %16, 0
  br i1 %17, label %18, label %25

18:                                               ; preds = %13
  %19 = load i8*, i8** %6, align 8
  %20 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %5, i32 0, i32 0
  store i8* %19, i8** %20, align 8
  %21 = call i32 @re_compile_fastmap(%struct.TYPE_5__* %5)
  %22 = load i32, i32* @gdb_stdout, align 4
  %23 = load %struct.cmd_list_element*, %struct.cmd_list_element** @cmdlist, align 8
  %24 = call i32 @apropos_cmd(i32 %22, %struct.cmd_list_element* %23, %struct.TYPE_5__* %5, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0))
  br label %33

25:                                               ; preds = %13
  %26 = load i8*, i8** %3, align 8
  %27 = load i32, i32* @REG_ICASE, align 4
  %28 = call i64 @regcomp(%struct.TYPE_5__* %5, i8* %26, i32 %27)
  %29 = getelementptr inbounds [512 x i8], [512 x i8]* %7, i64 0, i64 0
  %30 = call i32 @regerror(i64 %28, i32* null, i8* %29, i32 512)
  %31 = getelementptr inbounds [512 x i8], [512 x i8]* %7, i64 0, i64 0
  %32 = call i32 (i8*, ...) @error(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.2, i64 0, i64 0), i8* %31)
  br label %33

33:                                               ; preds = %25, %18
  %34 = load i8*, i8** %6, align 8
  %35 = call i32 @xfree(i8* %34)
  ret void
}

declare dso_local i8* @xcalloc(i32, i32) #1

declare dso_local i32 @error(i8*, ...) #1

declare dso_local i64 @regcomp(%struct.TYPE_5__*, i8*, i32) #1

declare dso_local i32 @re_compile_fastmap(%struct.TYPE_5__*) #1

declare dso_local i32 @apropos_cmd(i32, %struct.cmd_list_element*, %struct.TYPE_5__*, i8*) #1

declare dso_local i32 @regerror(i64, i32*, i8*, i32) #1

declare dso_local i32 @xfree(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

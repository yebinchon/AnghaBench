; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_macrocmd.c__initialize_macrocmd.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_macrocmd.c__initialize_macrocmd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cmd_list_element = type { i32 }

@.str = private unnamed_addr constant [6 x i8] c"macro\00", align 1
@class_info = common dso_local global i32 0, align 4
@macro_command = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [56 x i8] c"Prefix for commands dealing with C preprocessor macros.\00", align 1
@macrolist = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [7 x i8] c"macro \00", align 1
@cmdlist = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [7 x i8] c"expand\00", align 1
@no_class = common dso_local global i32 0, align 4
@macro_expand_command = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [99 x i8] c"Fully expand any C/C++ preprocessor macro invocations in EXPRESSION.\0AShow the expanded expression.\00", align 1
@.str.5 = private unnamed_addr constant [4 x i8] c"exp\00", align 1
@.str.6 = private unnamed_addr constant [12 x i8] c"expand-once\00", align 1
@macro_expand_once_command = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [510 x i8] c"Expand C/C++ preprocessor macro invocations appearing directly in EXPRESSION.\0AShow the expanded expression.\0A\0AThis command differs from `macro expand' in that it only expands macro\0Ainvocations that appear directly in EXPRESSION; if expanding a macro\0Aintroduces further macro invocations, those are left unexpanded.\0A\0A`macro expand-once' helps you see how a particular macro expands,\0Awhereas `macro expand' shows you how all the macros involved in an\0Aexpression work together to yield a pre-processed expression.\00", align 1
@.str.8 = private unnamed_addr constant [5 x i8] c"exp1\00", align 1
@info_macro_command = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [55 x i8] c"Show the definition of MACRO, and its source location.\00", align 1
@infolist = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [7 x i8] c"define\00", align 1
@macro_define_command = common dso_local global i32 0, align 4
@.str.11 = private unnamed_addr constant [339 x i8] c"Define a new C/C++ preprocessor macro.\0AThe GDB command `macro define DEFINITION' is equivalent to placing a\0Apreprocessor directive of the form `#define DEFINITION' such that the\0Adefinition is visible in all the inferior's source files.\0AFor example:\0A  (gdb) macro define PI (3.1415926)\0A  (gdb) macro define MIN(x,y) ((x) < (y) ? (x) : (y))\00", align 1
@.str.12 = private unnamed_addr constant [6 x i8] c"undef\00", align 1
@macro_undef_command = common dso_local global i32 0, align 4
@.str.13 = private unnamed_addr constant [75 x i8] c"Remove the definition of the C/C++ preprocessor macro with the given name.\00", align 1
@.str.14 = private unnamed_addr constant [5 x i8] c"list\00", align 1
@macro_list_command = common dso_local global i32 0, align 4
@.str.15 = private unnamed_addr constant [62 x i8] c"List all the macros defined using the `macro define' command.\00", align 1
@user_macros = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @_initialize_macrocmd() #0 {
  %1 = alloca %struct.cmd_list_element*, align 8
  %2 = load i32, i32* @class_info, align 4
  %3 = load i32, i32* @macro_command, align 4
  %4 = call i32 @add_prefix_cmd(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i32 %2, i32 %3, i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.1, i64 0, i64 0), i32* @macrolist, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0), i32 0, i32* @cmdlist)
  %5 = load i32, i32* @no_class, align 4
  %6 = load i32, i32* @macro_expand_command, align 4
  %7 = call i32 @add_cmd(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0), i32 %5, i32 %6, i8* getelementptr inbounds ([99 x i8], [99 x i8]* @.str.4, i64 0, i64 0), i32* @macrolist)
  %8 = load i32, i32* @no_class, align 4
  %9 = call i32 @add_alias_cmd(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0), i32 %8, i32 1, i32* @macrolist)
  %10 = load i32, i32* @no_class, align 4
  %11 = load i32, i32* @macro_expand_once_command, align 4
  %12 = call i32 @add_cmd(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.6, i64 0, i64 0), i32 %10, i32 %11, i8* getelementptr inbounds ([510 x i8], [510 x i8]* @.str.7, i64 0, i64 0), i32* @macrolist)
  %13 = load i32, i32* @no_class, align 4
  %14 = call i32 @add_alias_cmd(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.8, i64 0, i64 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.6, i64 0, i64 0), i32 %13, i32 1, i32* @macrolist)
  %15 = load i32, i32* @no_class, align 4
  %16 = load i32, i32* @info_macro_command, align 4
  %17 = call i32 @add_cmd(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i32 %15, i32 %16, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.9, i64 0, i64 0), i32* @infolist)
  %18 = load i32, i32* @no_class, align 4
  %19 = load i32, i32* @macro_define_command, align 4
  %20 = call i32 @add_cmd(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.10, i64 0, i64 0), i32 %18, i32 %19, i8* getelementptr inbounds ([339 x i8], [339 x i8]* @.str.11, i64 0, i64 0), i32* @macrolist)
  %21 = load i32, i32* @no_class, align 4
  %22 = load i32, i32* @macro_undef_command, align 4
  %23 = call i32 @add_cmd(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.12, i64 0, i64 0), i32 %21, i32 %22, i8* getelementptr inbounds ([75 x i8], [75 x i8]* @.str.13, i64 0, i64 0), i32* @macrolist)
  %24 = load i32, i32* @no_class, align 4
  %25 = load i32, i32* @macro_list_command, align 4
  %26 = call i32 @add_cmd(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.14, i64 0, i64 0), i32 %24, i32 %25, i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str.15, i64 0, i64 0), i32* @macrolist)
  %27 = call i32 @new_macro_table(i32 0, i32 0)
  store i32 %27, i32* @user_macros, align 4
  ret void
}

declare dso_local i32 @add_prefix_cmd(i8*, i32, i32, i8*, i32*, i8*, i32, i32*) #1

declare dso_local i32 @add_cmd(i8*, i32, i32, i8*, i32*) #1

declare dso_local i32 @add_alias_cmd(i8*, i8*, i32, i32, i32*) #1

declare dso_local i32 @new_macro_table(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

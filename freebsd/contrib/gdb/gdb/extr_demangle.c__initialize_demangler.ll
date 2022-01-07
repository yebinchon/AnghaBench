; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_demangle.c__initialize_demangler.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_demangle.c__initialize_demangler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64, i32 }
%struct.cmd_list_element = type { i32 }

@libiberty_demanglers = common dso_local global %struct.TYPE_2__* null, align 8
@unknown_demangling = common dso_local global i64 0, align 8
@demangling_style_names = common dso_local global i32* null, align 8
@.str = private unnamed_addr constant [15 x i8] c"demangle-style\00", align 1
@class_support = common dso_local global i32 0, align 4
@current_demangling_style_string = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [114 x i8] c"Set the current C++ demangling style.\0AUse `set demangle-style' without arguments for a list of demangling styles.\00", align 1
@setlist = common dso_local global i32 0, align 4
@showlist = common dso_local global i32 0, align 4
@set_demangling_command = common dso_local global i32 0, align 4
@DEFAULT_DEMANGLING_STYLE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @_initialize_demangler() #0 {
  %1 = alloca %struct.cmd_list_element*, align 8
  %2 = alloca %struct.cmd_list_element*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i32 0, i32* %4, align 4
  br label %5

5:                                                ; preds = %15, %0
  %6 = load %struct.TYPE_2__*, %struct.TYPE_2__** @libiberty_demanglers, align 8
  %7 = load i32, i32* %4, align 4
  %8 = sext i32 %7 to i64
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %6, i64 %8
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = load i64, i64* @unknown_demangling, align 8
  %13 = icmp ne i64 %11, %12
  br i1 %13, label %14, label %18

14:                                               ; preds = %5
  br label %15

15:                                               ; preds = %14
  %16 = load i32, i32* %4, align 4
  %17 = add nsw i32 %16, 1
  store i32 %17, i32* %4, align 4
  br label %5

18:                                               ; preds = %5
  %19 = load i32, i32* %4, align 4
  %20 = add nsw i32 %19, 1
  %21 = call i32* @xcalloc(i32 %20, i32 8)
  store i32* %21, i32** @demangling_style_names, align 8
  store i32 0, i32* %3, align 4
  br label %22

22:                                               ; preds = %43, %18
  %23 = load %struct.TYPE_2__*, %struct.TYPE_2__** @libiberty_demanglers, align 8
  %24 = load i32, i32* %3, align 4
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i64 %25
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = load i64, i64* @unknown_demangling, align 8
  %30 = icmp ne i64 %28, %29
  br i1 %30, label %31, label %46

31:                                               ; preds = %22
  %32 = load %struct.TYPE_2__*, %struct.TYPE_2__** @libiberty_demanglers, align 8
  %33 = load i32, i32* %3, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i64 %34
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 8
  %38 = call i32 @xstrdup(i32 %37)
  %39 = load i32*, i32** @demangling_style_names, align 8
  %40 = load i32, i32* %3, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds i32, i32* %39, i64 %41
  store i32 %38, i32* %42, align 4
  br label %43

43:                                               ; preds = %31
  %44 = load i32, i32* %3, align 4
  %45 = add nsw i32 %44, 1
  store i32 %45, i32* %3, align 4
  br label %22

46:                                               ; preds = %22
  %47 = load i32, i32* @class_support, align 4
  %48 = load i32*, i32** @demangling_style_names, align 8
  %49 = call %struct.cmd_list_element* @add_set_enum_cmd(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i32 %47, i32* %48, i8** bitcast (i32* @current_demangling_style_string to i8**), i8* getelementptr inbounds ([114 x i8], [114 x i8]* @.str.1, i64 0, i64 0), i32* @setlist)
  store %struct.cmd_list_element* %49, %struct.cmd_list_element** %1, align 8
  %50 = load %struct.cmd_list_element*, %struct.cmd_list_element** %1, align 8
  %51 = call %struct.cmd_list_element* @add_show_from_set(%struct.cmd_list_element* %50, i32* @showlist)
  store %struct.cmd_list_element* %51, %struct.cmd_list_element** %2, align 8
  %52 = load %struct.cmd_list_element*, %struct.cmd_list_element** %1, align 8
  %53 = load i32, i32* @set_demangling_command, align 4
  %54 = call i32 @set_cmd_sfunc(%struct.cmd_list_element* %52, i32 %53)
  %55 = load i32, i32* @DEFAULT_DEMANGLING_STYLE, align 4
  %56 = call i32 @set_demangling_style(i32 %55)
  ret void
}

declare dso_local i32* @xcalloc(i32, i32) #1

declare dso_local i32 @xstrdup(i32) #1

declare dso_local %struct.cmd_list_element* @add_set_enum_cmd(i8*, i32, i32*, i8**, i8*, i32*) #1

declare dso_local %struct.cmd_list_element* @add_show_from_set(%struct.cmd_list_element*, i32*) #1

declare dso_local i32 @set_cmd_sfunc(%struct.cmd_list_element*, i32) #1

declare dso_local i32 @set_demangling_style(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

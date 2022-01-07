; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_language.c__initialize_language.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_language.c__initialize_language.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cmd_list_element = type { i32 }

@.str = private unnamed_addr constant [9 x i8] c"language\00", align 1
@class_support = common dso_local global i32 0, align 4
@var_string_noescape = common dso_local global i32 0, align 4
@language = common dso_local global i8* null, align 8
@.str.1 = private unnamed_addr constant [33 x i8] c"Set the current source language.\00", align 1
@setlist = common dso_local global i32 0, align 4
@showlist = common dso_local global i32 0, align 4
@set_language_command = common dso_local global i32 0, align 4
@show_language_command = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [6 x i8] c"check\00", align 1
@no_class = common dso_local global i32 0, align 4
@set_check = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [42 x i8] c"Set the status of the type/range checker.\00", align 1
@setchecklist = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [11 x i8] c"set check \00", align 1
@.str.5 = private unnamed_addr constant [2 x i8] c"c\00", align 1
@.str.6 = private unnamed_addr constant [3 x i8] c"ch\00", align 1
@show_check = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [43 x i8] c"Show the status of the type/range checker.\00", align 1
@showchecklist = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [12 x i8] c"show check \00", align 1
@.str.9 = private unnamed_addr constant [5 x i8] c"type\00", align 1
@type = common dso_local global i8* null, align 8
@.str.10 = private unnamed_addr constant [39 x i8] c"Set type checking.  (on/warn/off/auto)\00", align 1
@set_type_command = common dso_local global i32 0, align 4
@show_type_command = common dso_local global i32 0, align 4
@.str.11 = private unnamed_addr constant [6 x i8] c"range\00", align 1
@range = common dso_local global i8* null, align 8
@.str.12 = private unnamed_addr constant [40 x i8] c"Set range checking.  (on/warn/off/auto)\00", align 1
@set_range_command = common dso_local global i32 0, align 4
@show_range_command = common dso_local global i32 0, align 4
@.str.13 = private unnamed_addr constant [15 x i8] c"case-sensitive\00", align 1
@case_sensitive = common dso_local global i8* null, align 8
@.str.14 = private unnamed_addr constant [123 x i8] c"Set case sensitivity in name search.  (on/off/auto)\0AFor Fortran the default is off; for other languages the default is on.\00", align 1
@set_case_command = common dso_local global i32 0, align 4
@show_case_command = common dso_local global i32 0, align 4
@unknown_language_defn = common dso_local global i32 0, align 4
@local_language_defn = common dso_local global i32 0, align 4
@auto_language_defn = common dso_local global i32 0, align 4
@.str.15 = private unnamed_addr constant [5 x i8] c"auto\00", align 1
@language_auto = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @_initialize_language() #0 {
  %1 = alloca %struct.cmd_list_element*, align 8
  %2 = alloca %struct.cmd_list_element*, align 8
  %3 = load i32, i32* @class_support, align 4
  %4 = load i32, i32* @var_string_noescape, align 4
  %5 = call %struct.cmd_list_element* @add_set_cmd(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i32 %3, i32 %4, i8* bitcast (i8** @language to i8*), i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0), i32* @setlist)
  store %struct.cmd_list_element* %5, %struct.cmd_list_element** %1, align 8
  %6 = load %struct.cmd_list_element*, %struct.cmd_list_element** %1, align 8
  %7 = call %struct.cmd_list_element* @add_show_from_set(%struct.cmd_list_element* %6, i32* @showlist)
  store %struct.cmd_list_element* %7, %struct.cmd_list_element** %2, align 8
  %8 = load %struct.cmd_list_element*, %struct.cmd_list_element** %1, align 8
  %9 = load i32, i32* @set_language_command, align 4
  %10 = call i32 @set_cmd_cfunc(%struct.cmd_list_element* %8, i32 %9)
  %11 = load %struct.cmd_list_element*, %struct.cmd_list_element** %2, align 8
  %12 = load i32, i32* @show_language_command, align 4
  %13 = call i32 @set_cmd_cfunc(%struct.cmd_list_element* %11, i32 %12)
  %14 = load i32, i32* @no_class, align 4
  %15 = load i32, i32* @set_check, align 4
  %16 = call i32 @add_prefix_cmd(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0), i32 %14, i32 %15, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.3, i64 0, i64 0), i32* @setchecklist, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.4, i64 0, i64 0), i32 0, i32* @setlist)
  %17 = load i32, i32* @no_class, align 4
  %18 = call i32 @add_alias_cmd(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0), i32 %17, i32 1, i32* @setlist)
  %19 = load i32, i32* @no_class, align 4
  %20 = call i32 @add_alias_cmd(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.6, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0), i32 %19, i32 1, i32* @setlist)
  %21 = load i32, i32* @no_class, align 4
  %22 = load i32, i32* @show_check, align 4
  %23 = call i32 @add_prefix_cmd(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0), i32 %21, i32 %22, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.7, i64 0, i64 0), i32* @showchecklist, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.8, i64 0, i64 0), i32 0, i32* @showlist)
  %24 = load i32, i32* @no_class, align 4
  %25 = call i32 @add_alias_cmd(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0), i32 %24, i32 1, i32* @showlist)
  %26 = load i32, i32* @no_class, align 4
  %27 = call i32 @add_alias_cmd(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.6, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0), i32 %26, i32 1, i32* @showlist)
  %28 = load i32, i32* @class_support, align 4
  %29 = load i32, i32* @var_string_noescape, align 4
  %30 = call %struct.cmd_list_element* @add_set_cmd(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.9, i64 0, i64 0), i32 %28, i32 %29, i8* bitcast (i8** @type to i8*), i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.10, i64 0, i64 0), i32* @setchecklist)
  store %struct.cmd_list_element* %30, %struct.cmd_list_element** %1, align 8
  %31 = load %struct.cmd_list_element*, %struct.cmd_list_element** %1, align 8
  %32 = call %struct.cmd_list_element* @add_show_from_set(%struct.cmd_list_element* %31, i32* @showchecklist)
  store %struct.cmd_list_element* %32, %struct.cmd_list_element** %2, align 8
  %33 = load %struct.cmd_list_element*, %struct.cmd_list_element** %1, align 8
  %34 = load i32, i32* @set_type_command, align 4
  %35 = call i32 @set_cmd_cfunc(%struct.cmd_list_element* %33, i32 %34)
  %36 = load %struct.cmd_list_element*, %struct.cmd_list_element** %2, align 8
  %37 = load i32, i32* @show_type_command, align 4
  %38 = call i32 @set_cmd_cfunc(%struct.cmd_list_element* %36, i32 %37)
  %39 = load i32, i32* @class_support, align 4
  %40 = load i32, i32* @var_string_noescape, align 4
  %41 = call %struct.cmd_list_element* @add_set_cmd(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.11, i64 0, i64 0), i32 %39, i32 %40, i8* bitcast (i8** @range to i8*), i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.12, i64 0, i64 0), i32* @setchecklist)
  store %struct.cmd_list_element* %41, %struct.cmd_list_element** %1, align 8
  %42 = load %struct.cmd_list_element*, %struct.cmd_list_element** %1, align 8
  %43 = call %struct.cmd_list_element* @add_show_from_set(%struct.cmd_list_element* %42, i32* @showchecklist)
  store %struct.cmd_list_element* %43, %struct.cmd_list_element** %2, align 8
  %44 = load %struct.cmd_list_element*, %struct.cmd_list_element** %1, align 8
  %45 = load i32, i32* @set_range_command, align 4
  %46 = call i32 @set_cmd_cfunc(%struct.cmd_list_element* %44, i32 %45)
  %47 = load %struct.cmd_list_element*, %struct.cmd_list_element** %2, align 8
  %48 = load i32, i32* @show_range_command, align 4
  %49 = call i32 @set_cmd_cfunc(%struct.cmd_list_element* %47, i32 %48)
  %50 = load i32, i32* @class_support, align 4
  %51 = load i32, i32* @var_string_noescape, align 4
  %52 = call %struct.cmd_list_element* @add_set_cmd(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.13, i64 0, i64 0), i32 %50, i32 %51, i8* bitcast (i8** @case_sensitive to i8*), i8* getelementptr inbounds ([123 x i8], [123 x i8]* @.str.14, i64 0, i64 0), i32* @setlist)
  store %struct.cmd_list_element* %52, %struct.cmd_list_element** %1, align 8
  %53 = load %struct.cmd_list_element*, %struct.cmd_list_element** %1, align 8
  %54 = call %struct.cmd_list_element* @add_show_from_set(%struct.cmd_list_element* %53, i32* @showlist)
  store %struct.cmd_list_element* %54, %struct.cmd_list_element** %2, align 8
  %55 = load %struct.cmd_list_element*, %struct.cmd_list_element** %1, align 8
  %56 = load i32, i32* @set_case_command, align 4
  %57 = call i32 @set_cmd_cfunc(%struct.cmd_list_element* %55, i32 %56)
  %58 = load %struct.cmd_list_element*, %struct.cmd_list_element** %2, align 8
  %59 = load i32, i32* @show_case_command, align 4
  %60 = call i32 @set_cmd_cfunc(%struct.cmd_list_element* %58, i32 %59)
  %61 = call i32 @add_language(i32* @unknown_language_defn)
  %62 = call i32 @add_language(i32* @local_language_defn)
  %63 = call i32 @add_language(i32* @auto_language_defn)
  %64 = call i32 @strlen(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.15, i64 0, i64 0))
  %65 = call i8* @savestring(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.15, i64 0, i64 0), i32 %64)
  store i8* %65, i8** @language, align 8
  %66 = call i32 @strlen(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.15, i64 0, i64 0))
  %67 = call i8* @savestring(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.15, i64 0, i64 0), i32 %66)
  store i8* %67, i8** @type, align 8
  %68 = call i32 @strlen(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.15, i64 0, i64 0))
  %69 = call i8* @savestring(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.15, i64 0, i64 0), i32 %68)
  store i8* %69, i8** @range, align 8
  %70 = call i32 @strlen(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.15, i64 0, i64 0))
  %71 = call i8* @savestring(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.15, i64 0, i64 0), i32 %70)
  store i8* %71, i8** @case_sensitive, align 8
  %72 = load i32, i32* @language_auto, align 4
  %73 = call i32 @set_language(i32 %72)
  ret void
}

declare dso_local %struct.cmd_list_element* @add_set_cmd(i8*, i32, i32, i8*, i8*, i32*) #1

declare dso_local %struct.cmd_list_element* @add_show_from_set(%struct.cmd_list_element*, i32*) #1

declare dso_local i32 @set_cmd_cfunc(%struct.cmd_list_element*, i32) #1

declare dso_local i32 @add_prefix_cmd(i8*, i32, i32, i8*, i32*, i8*, i32, i32*) #1

declare dso_local i32 @add_alias_cmd(i8*, i8*, i32, i32, i32*) #1

declare dso_local i32 @add_language(i32*) #1

declare dso_local i8* @savestring(i8*, i32) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @set_language(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

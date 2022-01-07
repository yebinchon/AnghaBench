; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_kod.c__initialize_kod.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_kod.c__initialize_kod.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cmd_list_element = type { i32 }

@.str = private unnamed_addr constant [3 x i8] c"os\00", align 1
@no_class = common dso_local global i32 0, align 4
@var_string = common dso_local global i32 0, align 4
@operating_system = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [21 x i8] c"Set operating system\00", align 1
@setlist = common dso_local global i32 0, align 4
@kod_set_os = common dso_local global i32 0, align 4
@showlist = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @_initialize_kod() #0 {
  %1 = alloca %struct.cmd_list_element*, align 8
  %2 = load i32, i32* @no_class, align 4
  %3 = load i32, i32* @var_string, align 4
  %4 = call %struct.cmd_list_element* @add_set_cmd(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32 %2, i32 %3, i8* bitcast (i32* @operating_system to i8*), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0), i32* @setlist)
  store %struct.cmd_list_element* %4, %struct.cmd_list_element** %1, align 8
  %5 = load %struct.cmd_list_element*, %struct.cmd_list_element** %1, align 8
  %6 = load i32, i32* @kod_set_os, align 4
  %7 = call i32 @set_cmd_sfunc(%struct.cmd_list_element* %5, i32 %6)
  %8 = load %struct.cmd_list_element*, %struct.cmd_list_element** %1, align 8
  %9 = call i32 @add_show_from_set(%struct.cmd_list_element* %8, i32* @showlist)
  ret void
}

declare dso_local %struct.cmd_list_element* @add_set_cmd(i8*, i32, i32, i8*, i8*, i32*) #1

declare dso_local i32 @set_cmd_sfunc(%struct.cmd_list_element*, i32) #1

declare dso_local i32 @add_show_from_set(%struct.cmd_list_element*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

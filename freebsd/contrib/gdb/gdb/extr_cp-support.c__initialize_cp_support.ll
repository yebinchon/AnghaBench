; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_cp-support.c__initialize_cp_support.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_cp-support.c__initialize_cp_support.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [6 x i8] c"cplus\00", align 1
@class_maintenance = common dso_local global i32 0, align 4
@maint_cplus_command = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [26 x i8] c"C++ maintenance commands.\00", align 1
@maint_cplus_cmd_list = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [19 x i8] c"maintenance cplus \00", align 1
@maintenancelist = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [3 x i8] c"cp\00", align 1
@.str.4 = private unnamed_addr constant [16 x i8] c"first_component\00", align 1
@first_component_command = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [51 x i8] c"Print the first class/namespace component of NAME.\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @_initialize_cp_support() #0 {
  %1 = load i32, i32* @class_maintenance, align 4
  %2 = load i32, i32* @maint_cplus_command, align 4
  %3 = call i32 @add_prefix_cmd(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i32 %1, i32 %2, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0), i32* @maint_cplus_cmd_list, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.2, i64 0, i64 0), i32 0, i32* @maintenancelist)
  %4 = load i32, i32* @class_maintenance, align 4
  %5 = call i32 @add_alias_cmd(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i32 %4, i32 1, i32* @maintenancelist)
  %6 = load i32, i32* @class_maintenance, align 4
  %7 = load i32, i32* @first_component_command, align 4
  %8 = call i32 @add_cmd(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.4, i64 0, i64 0), i32 %6, i32 %7, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.5, i64 0, i64 0), i32* @maint_cplus_cmd_list)
  ret void
}

declare dso_local i32 @add_prefix_cmd(i8*, i32, i32, i8*, i32*, i8*, i32, i32*) #1

declare dso_local i32 @add_alias_cmd(i8*, i8*, i32, i32, i32*) #1

declare dso_local i32 @add_cmd(i8*, i32, i32, i8*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

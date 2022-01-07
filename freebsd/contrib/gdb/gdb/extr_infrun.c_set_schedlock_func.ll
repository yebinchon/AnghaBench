; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_infrun.c_set_schedlock_func.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_infrun.c_set_schedlock_func.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cmd_list_element = type { i32 }

@set_cmd = common dso_local global i64 0, align 8
@target_can_lock_scheduler = common dso_local global i32 0, align 4
@schedlock_off = common dso_local global i32 0, align 4
@scheduler_mode = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [41 x i8] c"Target '%s' cannot support this command.\00", align 1
@target_shortname = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i32, %struct.cmd_list_element*)* @set_schedlock_func to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @set_schedlock_func(i8* %0, i32 %1, %struct.cmd_list_element* %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.cmd_list_element*, align 8
  store i8* %0, i8** %4, align 8
  store i32 %1, i32* %5, align 4
  store %struct.cmd_list_element* %2, %struct.cmd_list_element** %6, align 8
  %7 = load %struct.cmd_list_element*, %struct.cmd_list_element** %6, align 8
  %8 = call i64 @cmd_type(%struct.cmd_list_element* %7)
  %9 = load i64, i64* @set_cmd, align 8
  %10 = icmp eq i64 %8, %9
  br i1 %10, label %11, label %19

11:                                               ; preds = %3
  %12 = load i32, i32* @target_can_lock_scheduler, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %18, label %14

14:                                               ; preds = %11
  %15 = load i32, i32* @schedlock_off, align 4
  store i32 %15, i32* @scheduler_mode, align 4
  %16 = load i32, i32* @target_shortname, align 4
  %17 = call i32 @error(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0), i32 %16)
  br label %18

18:                                               ; preds = %14, %11
  br label %19

19:                                               ; preds = %18, %3
  ret void
}

declare dso_local i64 @cmd_type(%struct.cmd_list_element*) #1

declare dso_local i32 @error(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

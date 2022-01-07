; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/cli/extr_cli-script.c_execute_cmd_post_hook.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/cli/extr_cli-script.c_execute_cmd_post_hook.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cmd_list_element = type { i32, i64 }
%struct.cleanup = type { i32 }

@clear_hook_in_cleanup = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @execute_cmd_post_hook(%struct.cmd_list_element* %0) #0 {
  %2 = alloca %struct.cmd_list_element*, align 8
  %3 = alloca %struct.cleanup*, align 8
  store %struct.cmd_list_element* %0, %struct.cmd_list_element** %2, align 8
  %4 = load %struct.cmd_list_element*, %struct.cmd_list_element** %2, align 8
  %5 = getelementptr inbounds %struct.cmd_list_element, %struct.cmd_list_element* %4, i32 0, i32 1
  %6 = load i64, i64* %5, align 8
  %7 = icmp ne i64 %6, 0
  br i1 %7, label %8, label %25

8:                                                ; preds = %1
  %9 = load %struct.cmd_list_element*, %struct.cmd_list_element** %2, align 8
  %10 = getelementptr inbounds %struct.cmd_list_element, %struct.cmd_list_element* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %25, label %13

13:                                               ; preds = %8
  %14 = load i32, i32* @clear_hook_in_cleanup, align 4
  %15 = load %struct.cmd_list_element*, %struct.cmd_list_element** %2, align 8
  %16 = call %struct.cleanup* @make_cleanup(i32 %14, %struct.cmd_list_element* %15)
  store %struct.cleanup* %16, %struct.cleanup** %3, align 8
  %17 = load %struct.cmd_list_element*, %struct.cmd_list_element** %2, align 8
  %18 = getelementptr inbounds %struct.cmd_list_element, %struct.cmd_list_element* %17, i32 0, i32 0
  store i32 1, i32* %18, align 8
  %19 = load %struct.cmd_list_element*, %struct.cmd_list_element** %2, align 8
  %20 = getelementptr inbounds %struct.cmd_list_element, %struct.cmd_list_element* %19, i32 0, i32 1
  %21 = load i64, i64* %20, align 8
  %22 = call i32 @execute_user_command(i64 %21, i8* null)
  %23 = load %struct.cleanup*, %struct.cleanup** %3, align 8
  %24 = call i32 @do_cleanups(%struct.cleanup* %23)
  br label %25

25:                                               ; preds = %13, %8, %1
  ret void
}

declare dso_local %struct.cleanup* @make_cleanup(i32, %struct.cmd_list_element*) #1

declare dso_local i32 @execute_user_command(i64, i8*) #1

declare dso_local i32 @do_cleanups(%struct.cleanup*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

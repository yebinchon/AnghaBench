; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_go32-nat.c_go32_terminal_ours.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_go32-nat.c_go32_terminal_ours.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@terminal_is_ours = common dso_local global i32 0, align 4
@inf_terminal_mode = common dso_local global i32 0, align 4
@inf_mode_valid = common dso_local global i32 0, align 4
@errno = common dso_local global i64 0, align 8
@child_cmd = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [51 x i8] c"Cannot redirect standard handles for debugger: %s.\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @go32_terminal_ours to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @go32_terminal_ours() #0 {
  %1 = load i32, i32* @terminal_is_ours, align 4
  %2 = icmp ne i32 %1, 0
  br i1 %2, label %18, label %3

3:                                                ; preds = %0
  %4 = call i32 @device_mode(i32 0, i32 0)
  store i32 %4, i32* @inf_terminal_mode, align 4
  %5 = load i32, i32* @inf_terminal_mode, align 4
  %6 = icmp ne i32 %5, -1
  br i1 %6, label %7, label %8

7:                                                ; preds = %3
  store i32 1, i32* @inf_mode_valid, align 4
  br label %9

8:                                                ; preds = %3
  store i32 0, i32* @inf_mode_valid, align 4
  br label %9

9:                                                ; preds = %8, %7
  store i32 1, i32* @terminal_is_ours, align 4
  store i64 0, i64* @errno, align 8
  %10 = call i32 @redir_to_debugger(i32* @child_cmd)
  %11 = icmp eq i32 %10, -1
  br i1 %11, label %12, label %17

12:                                               ; preds = %9
  %13 = call i32 @redir_to_child(i32* @child_cmd)
  %14 = load i64, i64* @errno, align 8
  %15 = call i32 @safe_strerror(i64 %14)
  %16 = call i32 @error(i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str, i64 0, i64 0), i32 %15)
  br label %17

17:                                               ; preds = %12, %9
  br label %18

18:                                               ; preds = %17, %0
  ret void
}

declare dso_local i32 @device_mode(i32, i32) #1

declare dso_local i32 @redir_to_debugger(i32*) #1

declare dso_local i32 @redir_to_child(i32*) #1

declare dso_local i32 @error(i8*, i32) #1

declare dso_local i32 @safe_strerror(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

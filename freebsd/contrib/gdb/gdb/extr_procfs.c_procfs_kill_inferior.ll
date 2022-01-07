; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_procfs.c_procfs_kill_inferior.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_procfs.c_procfs_kill_inferior.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@inferior_ptid = common dso_local global i32 0, align 4
@null_ptid = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @procfs_kill_inferior to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @procfs_kill_inferior() #0 {
  %1 = alloca i32*, align 8
  %2 = load i32, i32* @inferior_ptid, align 4
  %3 = load i32, i32* @null_ptid, align 4
  %4 = call i32 @ptid_equal(i32 %2, i32 %3)
  %5 = icmp ne i32 %4, 0
  br i1 %5, label %17, label %6

6:                                                ; preds = %0
  %7 = load i32, i32* @inferior_ptid, align 4
  %8 = call i32 @PIDGET(i32 %7)
  %9 = call i32* @find_procinfo(i32 %8, i32 0)
  store i32* %9, i32** %1, align 8
  %10 = load i32*, i32** %1, align 8
  %11 = icmp ne i32* %10, null
  br i1 %11, label %12, label %15

12:                                               ; preds = %6
  %13 = load i32*, i32** %1, align 8
  %14 = call i32 @unconditionally_kill_inferior(i32* %13)
  br label %15

15:                                               ; preds = %12, %6
  %16 = call i32 (...) @target_mourn_inferior()
  br label %17

17:                                               ; preds = %15, %0
  ret void
}

declare dso_local i32 @ptid_equal(i32, i32) #1

declare dso_local i32* @find_procinfo(i32, i32) #1

declare dso_local i32 @PIDGET(i32) #1

declare dso_local i32 @unconditionally_kill_inferior(i32*) #1

declare dso_local i32 @target_mourn_inferior(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

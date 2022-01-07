; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/proc/extr_proc_tty.c_proc_tty_unregister_driver.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/proc/extr_proc_tty.c_proc_tty_unregister_driver.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tty_driver = type { %struct.proc_dir_entry*, i32 }
%struct.proc_dir_entry = type { i32 }

@proc_tty_driver = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @proc_tty_unregister_driver(%struct.tty_driver* %0) #0 {
  %2 = alloca %struct.tty_driver*, align 8
  %3 = alloca %struct.proc_dir_entry*, align 8
  store %struct.tty_driver* %0, %struct.tty_driver** %2, align 8
  %4 = load %struct.tty_driver*, %struct.tty_driver** %2, align 8
  %5 = getelementptr inbounds %struct.tty_driver, %struct.tty_driver* %4, i32 0, i32 0
  %6 = load %struct.proc_dir_entry*, %struct.proc_dir_entry** %5, align 8
  store %struct.proc_dir_entry* %6, %struct.proc_dir_entry** %3, align 8
  %7 = load %struct.proc_dir_entry*, %struct.proc_dir_entry** %3, align 8
  %8 = icmp ne %struct.proc_dir_entry* %7, null
  br i1 %8, label %10, label %9

9:                                                ; preds = %1
  br label %18

10:                                               ; preds = %1
  %11 = load %struct.tty_driver*, %struct.tty_driver** %2, align 8
  %12 = getelementptr inbounds %struct.tty_driver, %struct.tty_driver* %11, i32 0, i32 1
  %13 = load i32, i32* %12, align 8
  %14 = load i32, i32* @proc_tty_driver, align 4
  %15 = call i32 @remove_proc_entry(i32 %13, i32 %14)
  %16 = load %struct.tty_driver*, %struct.tty_driver** %2, align 8
  %17 = getelementptr inbounds %struct.tty_driver, %struct.tty_driver* %16, i32 0, i32 0
  store %struct.proc_dir_entry* null, %struct.proc_dir_entry** %17, align 8
  br label %18

18:                                               ; preds = %10, %9
  ret void
}

declare dso_local i32 @remove_proc_entry(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

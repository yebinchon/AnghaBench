; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/proc/extr_proc_devtree.c_proc_device_tree_add_prop.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/proc/extr_proc_devtree.c_proc_device_tree_add_prop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.proc_dir_entry = type { i32 }
%struct.property = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @proc_device_tree_add_prop(%struct.proc_dir_entry* %0, %struct.property* %1) #0 {
  %3 = alloca %struct.proc_dir_entry*, align 8
  %4 = alloca %struct.property*, align 8
  store %struct.proc_dir_entry* %0, %struct.proc_dir_entry** %3, align 8
  store %struct.property* %1, %struct.property** %4, align 8
  %5 = load %struct.proc_dir_entry*, %struct.proc_dir_entry** %3, align 8
  %6 = load %struct.property*, %struct.property** %4, align 8
  %7 = load %struct.property*, %struct.property** %4, align 8
  %8 = getelementptr inbounds %struct.property, %struct.property* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = call i32 @__proc_device_tree_add_prop(%struct.proc_dir_entry* %5, %struct.property* %6, i32 %9)
  ret void
}

declare dso_local i32 @__proc_device_tree_add_prop(%struct.proc_dir_entry*, %struct.property*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

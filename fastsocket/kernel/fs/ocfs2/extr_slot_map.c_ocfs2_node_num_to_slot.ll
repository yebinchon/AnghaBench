; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/ocfs2/extr_slot_map.c_ocfs2_node_num_to_slot.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/ocfs2/extr_slot_map.c_ocfs2_node_num_to_slot.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ocfs2_super = type { i32, %struct.ocfs2_slot_info* }
%struct.ocfs2_slot_info = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ocfs2_node_num_to_slot(%struct.ocfs2_super* %0, i32 %1) #0 {
  %3 = alloca %struct.ocfs2_super*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.ocfs2_slot_info*, align 8
  store %struct.ocfs2_super* %0, %struct.ocfs2_super** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.ocfs2_super*, %struct.ocfs2_super** %3, align 8
  %8 = getelementptr inbounds %struct.ocfs2_super, %struct.ocfs2_super* %7, i32 0, i32 1
  %9 = load %struct.ocfs2_slot_info*, %struct.ocfs2_slot_info** %8, align 8
  store %struct.ocfs2_slot_info* %9, %struct.ocfs2_slot_info** %6, align 8
  %10 = load %struct.ocfs2_super*, %struct.ocfs2_super** %3, align 8
  %11 = getelementptr inbounds %struct.ocfs2_super, %struct.ocfs2_super* %10, i32 0, i32 0
  %12 = call i32 @spin_lock(i32* %11)
  %13 = load %struct.ocfs2_slot_info*, %struct.ocfs2_slot_info** %6, align 8
  %14 = load i32, i32* %4, align 4
  %15 = call i32 @__ocfs2_node_num_to_slot(%struct.ocfs2_slot_info* %13, i32 %14)
  store i32 %15, i32* %5, align 4
  %16 = load %struct.ocfs2_super*, %struct.ocfs2_super** %3, align 8
  %17 = getelementptr inbounds %struct.ocfs2_super, %struct.ocfs2_super* %16, i32 0, i32 0
  %18 = call i32 @spin_unlock(i32* %17)
  %19 = load i32, i32* %5, align 4
  ret i32 %19
}

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @__ocfs2_node_num_to_slot(%struct.ocfs2_slot_info*, i32) #1

declare dso_local i32 @spin_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

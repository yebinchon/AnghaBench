; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/ocfs2/extr_slot_map.c_ocfs2_clear_slot.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/ocfs2/extr_slot_map.c_ocfs2_clear_slot.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ocfs2_super = type { %struct.ocfs2_slot_info*, i32 }
%struct.ocfs2_slot_info = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ocfs2_clear_slot(%struct.ocfs2_super* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ocfs2_super*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.ocfs2_slot_info*, align 8
  store %struct.ocfs2_super* %0, %struct.ocfs2_super** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load %struct.ocfs2_super*, %struct.ocfs2_super** %4, align 8
  %8 = getelementptr inbounds %struct.ocfs2_super, %struct.ocfs2_super* %7, i32 0, i32 0
  %9 = load %struct.ocfs2_slot_info*, %struct.ocfs2_slot_info** %8, align 8
  store %struct.ocfs2_slot_info* %9, %struct.ocfs2_slot_info** %6, align 8
  %10 = load %struct.ocfs2_slot_info*, %struct.ocfs2_slot_info** %6, align 8
  %11 = icmp eq %struct.ocfs2_slot_info* %10, null
  br i1 %11, label %12, label %13

12:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %29

13:                                               ; preds = %2
  %14 = load %struct.ocfs2_super*, %struct.ocfs2_super** %4, align 8
  %15 = getelementptr inbounds %struct.ocfs2_super, %struct.ocfs2_super* %14, i32 0, i32 1
  %16 = call i32 @spin_lock(i32* %15)
  %17 = load %struct.ocfs2_slot_info*, %struct.ocfs2_slot_info** %6, align 8
  %18 = load i32, i32* %5, align 4
  %19 = call i32 @ocfs2_invalidate_slot(%struct.ocfs2_slot_info* %17, i32 %18)
  %20 = load %struct.ocfs2_super*, %struct.ocfs2_super** %4, align 8
  %21 = getelementptr inbounds %struct.ocfs2_super, %struct.ocfs2_super* %20, i32 0, i32 1
  %22 = call i32 @spin_unlock(i32* %21)
  %23 = load %struct.ocfs2_super*, %struct.ocfs2_super** %4, align 8
  %24 = load %struct.ocfs2_super*, %struct.ocfs2_super** %4, align 8
  %25 = getelementptr inbounds %struct.ocfs2_super, %struct.ocfs2_super* %24, i32 0, i32 0
  %26 = load %struct.ocfs2_slot_info*, %struct.ocfs2_slot_info** %25, align 8
  %27 = load i32, i32* %5, align 4
  %28 = call i32 @ocfs2_update_disk_slot(%struct.ocfs2_super* %23, %struct.ocfs2_slot_info* %26, i32 %27)
  store i32 %28, i32* %3, align 4
  br label %29

29:                                               ; preds = %13, %12
  %30 = load i32, i32* %3, align 4
  ret i32 %30
}

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @ocfs2_invalidate_slot(%struct.ocfs2_slot_info*, i32) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @ocfs2_update_disk_slot(%struct.ocfs2_super*, %struct.ocfs2_slot_info*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

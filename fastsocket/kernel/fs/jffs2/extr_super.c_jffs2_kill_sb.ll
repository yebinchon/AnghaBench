; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/jffs2/extr_super.c_jffs2_kill_sb.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/jffs2/extr_super.c_jffs2_kill_sb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.super_block = type { i32 }
%struct.jffs2_sb_info = type { i32 }

@MS_RDONLY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.super_block*)* @jffs2_kill_sb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @jffs2_kill_sb(%struct.super_block* %0) #0 {
  %2 = alloca %struct.super_block*, align 8
  %3 = alloca %struct.jffs2_sb_info*, align 8
  store %struct.super_block* %0, %struct.super_block** %2, align 8
  %4 = load %struct.super_block*, %struct.super_block** %2, align 8
  %5 = call %struct.jffs2_sb_info* @JFFS2_SB_INFO(%struct.super_block* %4)
  store %struct.jffs2_sb_info* %5, %struct.jffs2_sb_info** %3, align 8
  %6 = load %struct.super_block*, %struct.super_block** %2, align 8
  %7 = getelementptr inbounds %struct.super_block, %struct.super_block* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  %9 = load i32, i32* @MS_RDONLY, align 4
  %10 = and i32 %8, %9
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %15, label %12

12:                                               ; preds = %1
  %13 = load %struct.jffs2_sb_info*, %struct.jffs2_sb_info** %3, align 8
  %14 = call i32 @jffs2_stop_garbage_collect_thread(%struct.jffs2_sb_info* %13)
  br label %15

15:                                               ; preds = %12, %1
  %16 = load %struct.super_block*, %struct.super_block** %2, align 8
  %17 = call i32 @kill_mtd_super(%struct.super_block* %16)
  %18 = load %struct.jffs2_sb_info*, %struct.jffs2_sb_info** %3, align 8
  %19 = call i32 @kfree(%struct.jffs2_sb_info* %18)
  ret void
}

declare dso_local %struct.jffs2_sb_info* @JFFS2_SB_INFO(%struct.super_block*) #1

declare dso_local i32 @jffs2_stop_garbage_collect_thread(%struct.jffs2_sb_info*) #1

declare dso_local i32 @kill_mtd_super(%struct.super_block*) #1

declare dso_local i32 @kfree(%struct.jffs2_sb_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

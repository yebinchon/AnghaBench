; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/jffs2/extr_readinode.c_jffs2_kill_tn.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/jffs2/extr_readinode.c_jffs2_kill_tn.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.jffs2_sb_info = type { i32 }
%struct.jffs2_tmp_dnode_info = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.jffs2_sb_info*, %struct.jffs2_tmp_dnode_info*)* @jffs2_kill_tn to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @jffs2_kill_tn(%struct.jffs2_sb_info* %0, %struct.jffs2_tmp_dnode_info* %1) #0 {
  %3 = alloca %struct.jffs2_sb_info*, align 8
  %4 = alloca %struct.jffs2_tmp_dnode_info*, align 8
  store %struct.jffs2_sb_info* %0, %struct.jffs2_sb_info** %3, align 8
  store %struct.jffs2_tmp_dnode_info* %1, %struct.jffs2_tmp_dnode_info** %4, align 8
  %5 = load %struct.jffs2_sb_info*, %struct.jffs2_sb_info** %3, align 8
  %6 = load %struct.jffs2_tmp_dnode_info*, %struct.jffs2_tmp_dnode_info** %4, align 8
  %7 = getelementptr inbounds %struct.jffs2_tmp_dnode_info, %struct.jffs2_tmp_dnode_info* %6, i32 0, i32 0
  %8 = load %struct.TYPE_2__*, %struct.TYPE_2__** %7, align 8
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = call i32 @jffs2_mark_node_obsolete(%struct.jffs2_sb_info* %5, i32 %10)
  %12 = load %struct.jffs2_tmp_dnode_info*, %struct.jffs2_tmp_dnode_info** %4, align 8
  %13 = getelementptr inbounds %struct.jffs2_tmp_dnode_info, %struct.jffs2_tmp_dnode_info* %12, i32 0, i32 0
  %14 = load %struct.TYPE_2__*, %struct.TYPE_2__** %13, align 8
  %15 = call i32 @jffs2_free_full_dnode(%struct.TYPE_2__* %14)
  %16 = load %struct.jffs2_tmp_dnode_info*, %struct.jffs2_tmp_dnode_info** %4, align 8
  %17 = call i32 @jffs2_free_tmp_dnode_info(%struct.jffs2_tmp_dnode_info* %16)
  ret void
}

declare dso_local i32 @jffs2_mark_node_obsolete(%struct.jffs2_sb_info*, i32) #1

declare dso_local i32 @jffs2_free_full_dnode(%struct.TYPE_2__*) #1

declare dso_local i32 @jffs2_free_tmp_dnode_info(%struct.jffs2_tmp_dnode_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

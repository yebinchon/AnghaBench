; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/ocfs2/extr_journal.h_ocfs2_set_ci_lock_trans.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/ocfs2/extr_journal.h_ocfs2_set_ci_lock_trans.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ocfs2_journal = type { i32 }
%struct.ocfs2_caching_info = type { i32 }

@trans_inc_lock = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ocfs2_journal*, %struct.ocfs2_caching_info*)* @ocfs2_set_ci_lock_trans to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ocfs2_set_ci_lock_trans(%struct.ocfs2_journal* %0, %struct.ocfs2_caching_info* %1) #0 {
  %3 = alloca %struct.ocfs2_journal*, align 8
  %4 = alloca %struct.ocfs2_caching_info*, align 8
  store %struct.ocfs2_journal* %0, %struct.ocfs2_journal** %3, align 8
  store %struct.ocfs2_caching_info* %1, %struct.ocfs2_caching_info** %4, align 8
  %5 = call i32 @spin_lock(i32* @trans_inc_lock)
  %6 = load %struct.ocfs2_journal*, %struct.ocfs2_journal** %3, align 8
  %7 = getelementptr inbounds %struct.ocfs2_journal, %struct.ocfs2_journal* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  %9 = load %struct.ocfs2_caching_info*, %struct.ocfs2_caching_info** %4, align 8
  %10 = getelementptr inbounds %struct.ocfs2_caching_info, %struct.ocfs2_caching_info* %9, i32 0, i32 0
  store i32 %8, i32* %10, align 4
  %11 = call i32 @spin_unlock(i32* @trans_inc_lock)
  ret void
}

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

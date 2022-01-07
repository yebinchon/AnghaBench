; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/ocfs2/extr_journal.h_ocfs2_inc_trans_id.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/ocfs2/extr_journal.h_ocfs2_inc_trans_id.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ocfs2_journal = type { i32 }

@trans_inc_lock = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.ocfs2_journal*)* @ocfs2_inc_trans_id to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @ocfs2_inc_trans_id(%struct.ocfs2_journal* %0) #0 {
  %2 = alloca %struct.ocfs2_journal*, align 8
  %3 = alloca i64, align 8
  store %struct.ocfs2_journal* %0, %struct.ocfs2_journal** %2, align 8
  %4 = call i32 @spin_lock(i32* @trans_inc_lock)
  %5 = load %struct.ocfs2_journal*, %struct.ocfs2_journal** %2, align 8
  %6 = getelementptr inbounds %struct.ocfs2_journal, %struct.ocfs2_journal* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 4
  %8 = add nsw i32 %7, 1
  store i32 %8, i32* %6, align 4
  %9 = sext i32 %7 to i64
  store i64 %9, i64* %3, align 8
  %10 = load %struct.ocfs2_journal*, %struct.ocfs2_journal** %2, align 8
  %11 = getelementptr inbounds %struct.ocfs2_journal, %struct.ocfs2_journal* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = icmp ne i32 %12, 0
  %14 = xor i1 %13, true
  %15 = zext i1 %14 to i32
  %16 = call i64 @unlikely(i32 %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %21

18:                                               ; preds = %1
  %19 = load %struct.ocfs2_journal*, %struct.ocfs2_journal** %2, align 8
  %20 = getelementptr inbounds %struct.ocfs2_journal, %struct.ocfs2_journal* %19, i32 0, i32 0
  store i32 1, i32* %20, align 4
  br label %21

21:                                               ; preds = %18, %1
  %22 = call i32 @spin_unlock(i32* @trans_inc_lock)
  %23 = load i64, i64* %3, align 8
  ret i64 %23
}

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @spin_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

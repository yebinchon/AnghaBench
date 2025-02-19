; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/ocfs2/extr_dlmglue.c_ocfs2_inc_holders.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/ocfs2/extr_dlmglue.c_ocfs2_inc_holders.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ocfs2_lock_res = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ocfs2_lock_res*, i32)* @ocfs2_inc_holders to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ocfs2_inc_holders(%struct.ocfs2_lock_res* %0, i32 %1) #0 {
  %3 = alloca %struct.ocfs2_lock_res*, align 8
  %4 = alloca i32, align 4
  store %struct.ocfs2_lock_res* %0, %struct.ocfs2_lock_res** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = call i32 (...) @mlog_entry_void()
  %6 = load %struct.ocfs2_lock_res*, %struct.ocfs2_lock_res** %3, align 8
  %7 = icmp ne %struct.ocfs2_lock_res* %6, null
  %8 = xor i1 %7, true
  %9 = zext i1 %8 to i32
  %10 = call i32 @BUG_ON(i32 %9)
  %11 = load i32, i32* %4, align 4
  switch i32 %11, label %22 [
    i32 129, label %12
    i32 128, label %17
  ]

12:                                               ; preds = %2
  %13 = load %struct.ocfs2_lock_res*, %struct.ocfs2_lock_res** %3, align 8
  %14 = getelementptr inbounds %struct.ocfs2_lock_res, %struct.ocfs2_lock_res* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 4
  %16 = add nsw i32 %15, 1
  store i32 %16, i32* %14, align 4
  br label %24

17:                                               ; preds = %2
  %18 = load %struct.ocfs2_lock_res*, %struct.ocfs2_lock_res** %3, align 8
  %19 = getelementptr inbounds %struct.ocfs2_lock_res, %struct.ocfs2_lock_res* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = add nsw i32 %20, 1
  store i32 %21, i32* %19, align 4
  br label %24

22:                                               ; preds = %2
  %23 = call i32 (...) @BUG()
  br label %24

24:                                               ; preds = %22, %17, %12
  %25 = call i32 (...) @mlog_exit_void()
  ret void
}

declare dso_local i32 @mlog_entry_void(...) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @BUG(...) #1

declare dso_local i32 @mlog_exit_void(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

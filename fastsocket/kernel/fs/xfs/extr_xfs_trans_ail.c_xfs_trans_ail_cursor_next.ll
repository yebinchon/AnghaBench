; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/xfs/extr_xfs_trans_ail.c_xfs_trans_ail_cursor_next.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/xfs/extr_xfs_trans_ail.c_xfs_trans_ail_cursor_next.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xfs_log_item = type { i32 }
%struct.xfs_ail = type { i32 }
%struct.xfs_ail_cursor = type { %struct.xfs_log_item* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.xfs_log_item* @xfs_trans_ail_cursor_next(%struct.xfs_ail* %0, %struct.xfs_ail_cursor* %1) #0 {
  %3 = alloca %struct.xfs_ail*, align 8
  %4 = alloca %struct.xfs_ail_cursor*, align 8
  %5 = alloca %struct.xfs_log_item*, align 8
  store %struct.xfs_ail* %0, %struct.xfs_ail** %3, align 8
  store %struct.xfs_ail_cursor* %1, %struct.xfs_ail_cursor** %4, align 8
  %6 = load %struct.xfs_ail_cursor*, %struct.xfs_ail_cursor** %4, align 8
  %7 = getelementptr inbounds %struct.xfs_ail_cursor, %struct.xfs_ail_cursor* %6, i32 0, i32 0
  %8 = load %struct.xfs_log_item*, %struct.xfs_log_item** %7, align 8
  store %struct.xfs_log_item* %8, %struct.xfs_log_item** %5, align 8
  %9 = load %struct.xfs_log_item*, %struct.xfs_log_item** %5, align 8
  %10 = ptrtoint %struct.xfs_log_item* %9 to i32
  %11 = and i32 %10, 1
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %16

13:                                               ; preds = %2
  %14 = load %struct.xfs_ail*, %struct.xfs_ail** %3, align 8
  %15 = call %struct.xfs_log_item* @xfs_ail_min(%struct.xfs_ail* %14)
  store %struct.xfs_log_item* %15, %struct.xfs_log_item** %5, align 8
  br label %16

16:                                               ; preds = %13, %2
  %17 = load %struct.xfs_ail*, %struct.xfs_ail** %3, align 8
  %18 = load %struct.xfs_ail_cursor*, %struct.xfs_ail_cursor** %4, align 8
  %19 = load %struct.xfs_log_item*, %struct.xfs_log_item** %5, align 8
  %20 = call i32 @xfs_trans_ail_cursor_set(%struct.xfs_ail* %17, %struct.xfs_ail_cursor* %18, %struct.xfs_log_item* %19)
  %21 = load %struct.xfs_log_item*, %struct.xfs_log_item** %5, align 8
  ret %struct.xfs_log_item* %21
}

declare dso_local %struct.xfs_log_item* @xfs_ail_min(%struct.xfs_ail*) #1

declare dso_local i32 @xfs_trans_ail_cursor_set(%struct.xfs_ail*, %struct.xfs_ail_cursor*, %struct.xfs_log_item*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/xfs/extr_xfs_trans_ail.c_xfs_trans_ail_cursor_last.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/xfs/extr_xfs_trans_ail.c_xfs_trans_ail_cursor_last.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xfs_log_item = type { i32 }
%struct.xfs_ail = type { i32 }
%struct.xfs_ail_cursor = type { %struct.xfs_log_item* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.xfs_log_item* @xfs_trans_ail_cursor_last(%struct.xfs_ail* %0, %struct.xfs_ail_cursor* %1, i32 %2) #0 {
  %4 = alloca %struct.xfs_ail*, align 8
  %5 = alloca %struct.xfs_ail_cursor*, align 8
  %6 = alloca i32, align 4
  store %struct.xfs_ail* %0, %struct.xfs_ail** %4, align 8
  store %struct.xfs_ail_cursor* %1, %struct.xfs_ail_cursor** %5, align 8
  store i32 %2, i32* %6, align 4
  %7 = load %struct.xfs_ail*, %struct.xfs_ail** %4, align 8
  %8 = load %struct.xfs_ail_cursor*, %struct.xfs_ail_cursor** %5, align 8
  %9 = call i32 @xfs_trans_ail_cursor_init(%struct.xfs_ail* %7, %struct.xfs_ail_cursor* %8)
  %10 = load %struct.xfs_ail*, %struct.xfs_ail** %4, align 8
  %11 = load i32, i32* %6, align 4
  %12 = call %struct.xfs_log_item* @__xfs_trans_ail_cursor_last(%struct.xfs_ail* %10, i32 %11)
  %13 = load %struct.xfs_ail_cursor*, %struct.xfs_ail_cursor** %5, align 8
  %14 = getelementptr inbounds %struct.xfs_ail_cursor, %struct.xfs_ail_cursor* %13, i32 0, i32 0
  store %struct.xfs_log_item* %12, %struct.xfs_log_item** %14, align 8
  %15 = load %struct.xfs_ail_cursor*, %struct.xfs_ail_cursor** %5, align 8
  %16 = getelementptr inbounds %struct.xfs_ail_cursor, %struct.xfs_ail_cursor* %15, i32 0, i32 0
  %17 = load %struct.xfs_log_item*, %struct.xfs_log_item** %16, align 8
  ret %struct.xfs_log_item* %17
}

declare dso_local i32 @xfs_trans_ail_cursor_init(%struct.xfs_ail*, %struct.xfs_ail_cursor*) #1

declare dso_local %struct.xfs_log_item* @__xfs_trans_ail_cursor_last(%struct.xfs_ail*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/ubifs/extr_budget.c_ubifs_release_dirty_inode_budget.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/ubifs/extr_budget.c_ubifs_release_dirty_inode_budget.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ubifs_info = type { i64 }
%struct.ubifs_inode = type { i32 }
%struct.ubifs_budget_req = type { i64 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ubifs_release_dirty_inode_budget(%struct.ubifs_info* %0, %struct.ubifs_inode* %1) #0 {
  %3 = alloca %struct.ubifs_info*, align 8
  %4 = alloca %struct.ubifs_inode*, align 8
  %5 = alloca %struct.ubifs_budget_req, align 8
  store %struct.ubifs_info* %0, %struct.ubifs_info** %3, align 8
  store %struct.ubifs_inode* %1, %struct.ubifs_inode** %4, align 8
  %6 = call i32 @memset(%struct.ubifs_budget_req* %5, i32 0, i32 8)
  %7 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %8 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = load %struct.ubifs_inode*, %struct.ubifs_inode** %4, align 8
  %11 = getelementptr inbounds %struct.ubifs_inode, %struct.ubifs_inode* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = call i64 @ALIGN(i32 %12, i32 8)
  %14 = add nsw i64 %9, %13
  %15 = getelementptr inbounds %struct.ubifs_budget_req, %struct.ubifs_budget_req* %5, i32 0, i32 0
  store i64 %14, i64* %15, align 8
  %16 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %17 = call i32 @ubifs_release_budget(%struct.ubifs_info* %16, %struct.ubifs_budget_req* %5)
  ret void
}

declare dso_local i32 @memset(%struct.ubifs_budget_req*, i32, i32) #1

declare dso_local i64 @ALIGN(i32, i32) #1

declare dso_local i32 @ubifs_release_budget(%struct.ubifs_info*, %struct.ubifs_budget_req*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

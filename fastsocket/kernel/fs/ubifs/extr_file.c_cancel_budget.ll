; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/ubifs/extr_file.c_cancel_budget.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/ubifs/extr_file.c_cancel_budget.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ubifs_info = type { i32 }
%struct.page = type { i32 }
%struct.ubifs_inode = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ubifs_info*, %struct.page*, %struct.ubifs_inode*, i32)* @cancel_budget to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cancel_budget(%struct.ubifs_info* %0, %struct.page* %1, %struct.ubifs_inode* %2, i32 %3) #0 {
  %5 = alloca %struct.ubifs_info*, align 8
  %6 = alloca %struct.page*, align 8
  %7 = alloca %struct.ubifs_inode*, align 8
  %8 = alloca i32, align 4
  store %struct.ubifs_info* %0, %struct.ubifs_info** %5, align 8
  store %struct.page* %1, %struct.page** %6, align 8
  store %struct.ubifs_inode* %2, %struct.ubifs_inode** %7, align 8
  store i32 %3, i32* %8, align 4
  %9 = load i32, i32* %8, align 4
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %11, label %24

11:                                               ; preds = %4
  %12 = load %struct.ubifs_inode*, %struct.ubifs_inode** %7, align 8
  %13 = getelementptr inbounds %struct.ubifs_inode, %struct.ubifs_inode* %12, i32 0, i32 1
  %14 = load i32, i32* %13, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %20, label %16

16:                                               ; preds = %11
  %17 = load %struct.ubifs_info*, %struct.ubifs_info** %5, align 8
  %18 = load %struct.ubifs_inode*, %struct.ubifs_inode** %7, align 8
  %19 = call i32 @ubifs_release_dirty_inode_budget(%struct.ubifs_info* %17, %struct.ubifs_inode* %18)
  br label %20

20:                                               ; preds = %16, %11
  %21 = load %struct.ubifs_inode*, %struct.ubifs_inode** %7, align 8
  %22 = getelementptr inbounds %struct.ubifs_inode, %struct.ubifs_inode* %21, i32 0, i32 0
  %23 = call i32 @mutex_unlock(i32* %22)
  br label %24

24:                                               ; preds = %20, %4
  %25 = load %struct.page*, %struct.page** %6, align 8
  %26 = call i32 @PagePrivate(%struct.page* %25)
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %39, label %28

28:                                               ; preds = %24
  %29 = load %struct.page*, %struct.page** %6, align 8
  %30 = call i64 @PageChecked(%struct.page* %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %35

32:                                               ; preds = %28
  %33 = load %struct.ubifs_info*, %struct.ubifs_info** %5, align 8
  %34 = call i32 @release_new_page_budget(%struct.ubifs_info* %33)
  br label %38

35:                                               ; preds = %28
  %36 = load %struct.ubifs_info*, %struct.ubifs_info** %5, align 8
  %37 = call i32 @release_existing_page_budget(%struct.ubifs_info* %36)
  br label %38

38:                                               ; preds = %35, %32
  br label %39

39:                                               ; preds = %38, %24
  ret void
}

declare dso_local i32 @ubifs_release_dirty_inode_budget(%struct.ubifs_info*, %struct.ubifs_inode*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @PagePrivate(%struct.page*) #1

declare dso_local i64 @PageChecked(%struct.page*) #1

declare dso_local i32 @release_new_page_budget(%struct.ubifs_info*) #1

declare dso_local i32 @release_existing_page_budget(%struct.ubifs_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/nfs/extr_write.c_nfs_setup_write_request.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/nfs/extr_write.c_nfs_setup_write_request.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nfs_page = type { i32 }
%struct.nfs_open_context = type { i32 }
%struct.page = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.inode* }
%struct.inode = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.nfs_page* (%struct.nfs_open_context*, %struct.page*, i32, i32)* @nfs_setup_write_request to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.nfs_page* @nfs_setup_write_request(%struct.nfs_open_context* %0, %struct.page* %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.nfs_open_context*, align 8
  %6 = alloca %struct.page*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.inode*, align 8
  %10 = alloca %struct.nfs_page*, align 8
  store %struct.nfs_open_context* %0, %struct.nfs_open_context** %5, align 8
  store %struct.page* %1, %struct.page** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %11 = load %struct.page*, %struct.page** %6, align 8
  %12 = getelementptr inbounds %struct.page, %struct.page* %11, i32 0, i32 0
  %13 = load %struct.TYPE_2__*, %struct.TYPE_2__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  %15 = load %struct.inode*, %struct.inode** %14, align 8
  store %struct.inode* %15, %struct.inode** %9, align 8
  %16 = load %struct.inode*, %struct.inode** %9, align 8
  %17 = load %struct.page*, %struct.page** %6, align 8
  %18 = load i32, i32* %7, align 4
  %19 = load i32, i32* %8, align 4
  %20 = call %struct.nfs_page* @nfs_try_to_update_request(%struct.inode* %16, %struct.page* %17, i32 %18, i32 %19)
  store %struct.nfs_page* %20, %struct.nfs_page** %10, align 8
  %21 = load %struct.nfs_page*, %struct.nfs_page** %10, align 8
  %22 = icmp ne %struct.nfs_page* %21, null
  br i1 %22, label %23, label %24

23:                                               ; preds = %4
  br label %39

24:                                               ; preds = %4
  %25 = load %struct.nfs_open_context*, %struct.nfs_open_context** %5, align 8
  %26 = load %struct.inode*, %struct.inode** %9, align 8
  %27 = load %struct.page*, %struct.page** %6, align 8
  %28 = load i32, i32* %7, align 4
  %29 = load i32, i32* %8, align 4
  %30 = call %struct.nfs_page* @nfs_create_request(%struct.nfs_open_context* %25, %struct.inode* %26, %struct.page* %27, i32 %28, i32 %29)
  store %struct.nfs_page* %30, %struct.nfs_page** %10, align 8
  %31 = load %struct.nfs_page*, %struct.nfs_page** %10, align 8
  %32 = call i64 @IS_ERR(%struct.nfs_page* %31)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %35

34:                                               ; preds = %24
  br label %39

35:                                               ; preds = %24
  %36 = load %struct.inode*, %struct.inode** %9, align 8
  %37 = load %struct.nfs_page*, %struct.nfs_page** %10, align 8
  %38 = call i32 @nfs_inode_add_request(%struct.inode* %36, %struct.nfs_page* %37)
  br label %39

39:                                               ; preds = %35, %34, %23
  %40 = load %struct.nfs_page*, %struct.nfs_page** %10, align 8
  ret %struct.nfs_page* %40
}

declare dso_local %struct.nfs_page* @nfs_try_to_update_request(%struct.inode*, %struct.page*, i32, i32) #1

declare dso_local %struct.nfs_page* @nfs_create_request(%struct.nfs_open_context*, %struct.inode*, %struct.page*, i32, i32) #1

declare dso_local i64 @IS_ERR(%struct.nfs_page*) #1

declare dso_local i32 @nfs_inode_add_request(%struct.inode*, %struct.nfs_page*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

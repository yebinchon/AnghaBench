; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/nfs/extr_pnfs.c_pnfs_read_done_resend_to_mds.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/nfs/extr_pnfs.c_pnfs_read_done_resend_to_mds.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.list_head = type { i32 }
%struct.inode = type { i32 }
%struct.nfs_pgio_completion_ops = type { i32 }
%struct.nfs_pageio_descriptor = type { i32 }
%struct.nfs_page = type { i32 }

@failed = common dso_local global %struct.list_head zeroinitializer, align 4
@EIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inode*, %struct.list_head*, %struct.nfs_pgio_completion_ops*)* @pnfs_read_done_resend_to_mds to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pnfs_read_done_resend_to_mds(%struct.inode* %0, %struct.list_head* %1, %struct.nfs_pgio_completion_ops* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.inode*, align 8
  %6 = alloca %struct.list_head*, align 8
  %7 = alloca %struct.nfs_pgio_completion_ops*, align 8
  %8 = alloca %struct.nfs_pageio_descriptor, align 4
  %9 = alloca %struct.nfs_page*, align 8
  store %struct.inode* %0, %struct.inode** %5, align 8
  store %struct.list_head* %1, %struct.list_head** %6, align 8
  store %struct.nfs_pgio_completion_ops* %2, %struct.nfs_pgio_completion_ops** %7, align 8
  %10 = load i32, i32* getelementptr inbounds (%struct.list_head, %struct.list_head* @failed, i32 0, i32 0), align 4
  %11 = call i32 @LIST_HEAD(i32 %10)
  %12 = load %struct.inode*, %struct.inode** %5, align 8
  %13 = load %struct.nfs_pgio_completion_ops*, %struct.nfs_pgio_completion_ops** %7, align 8
  %14 = call i32 @nfs_pageio_init_read(%struct.nfs_pageio_descriptor* %8, %struct.inode* %12, %struct.nfs_pgio_completion_ops* %13)
  br label %15

15:                                               ; preds = %33, %3
  %16 = load %struct.list_head*, %struct.list_head** %6, align 8
  %17 = call i32 @list_empty(%struct.list_head* %16)
  %18 = icmp ne i32 %17, 0
  %19 = xor i1 %18, true
  br i1 %19, label %20, label %34

20:                                               ; preds = %15
  %21 = load %struct.list_head*, %struct.list_head** %6, align 8
  %22 = getelementptr inbounds %struct.list_head, %struct.list_head* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = call %struct.nfs_page* @nfs_list_entry(i32 %23)
  store %struct.nfs_page* %24, %struct.nfs_page** %9, align 8
  %25 = load %struct.nfs_page*, %struct.nfs_page** %9, align 8
  %26 = call i32 @nfs_list_remove_request(%struct.nfs_page* %25)
  %27 = load %struct.nfs_page*, %struct.nfs_page** %9, align 8
  %28 = call i32 @nfs_pageio_add_request(%struct.nfs_pageio_descriptor* %8, %struct.nfs_page* %27)
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %33, label %30

30:                                               ; preds = %20
  %31 = load %struct.nfs_page*, %struct.nfs_page** %9, align 8
  %32 = call i32 @nfs_list_add_request(%struct.nfs_page* %31, %struct.list_head* @failed)
  br label %33

33:                                               ; preds = %30, %20
  br label %15

34:                                               ; preds = %15
  %35 = call i32 @nfs_pageio_complete(%struct.nfs_pageio_descriptor* %8)
  %36 = call i32 @list_empty(%struct.list_head* @failed)
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %43, label %38

38:                                               ; preds = %34
  %39 = load %struct.list_head*, %struct.list_head** %6, align 8
  %40 = call i32 @list_move(%struct.list_head* @failed, %struct.list_head* %39)
  %41 = load i32, i32* @EIO, align 4
  %42 = sub nsw i32 0, %41
  store i32 %42, i32* %4, align 4
  br label %44

43:                                               ; preds = %34
  store i32 0, i32* %4, align 4
  br label %44

44:                                               ; preds = %43, %38
  %45 = load i32, i32* %4, align 4
  ret i32 %45
}

declare dso_local i32 @LIST_HEAD(i32) #1

declare dso_local i32 @nfs_pageio_init_read(%struct.nfs_pageio_descriptor*, %struct.inode*, %struct.nfs_pgio_completion_ops*) #1

declare dso_local i32 @list_empty(%struct.list_head*) #1

declare dso_local %struct.nfs_page* @nfs_list_entry(i32) #1

declare dso_local i32 @nfs_list_remove_request(%struct.nfs_page*) #1

declare dso_local i32 @nfs_pageio_add_request(%struct.nfs_pageio_descriptor*, %struct.nfs_page*) #1

declare dso_local i32 @nfs_list_add_request(%struct.nfs_page*, %struct.list_head*) #1

declare dso_local i32 @nfs_pageio_complete(%struct.nfs_pageio_descriptor*) #1

declare dso_local i32 @list_move(%struct.list_head*, %struct.list_head*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

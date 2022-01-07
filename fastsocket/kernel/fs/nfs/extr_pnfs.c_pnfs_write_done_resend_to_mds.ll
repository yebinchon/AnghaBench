; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/nfs/extr_pnfs.c_pnfs_write_done_resend_to_mds.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/nfs/extr_pnfs.c_pnfs_write_done_resend_to_mds.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.list_head = type { i32 }
%struct.inode = type { i32 }
%struct.nfs_pgio_completion_ops = type { i32 }
%struct.nfs_pageio_descriptor = type { i32 }
%struct.nfs_page = type { i32 }

@failed = common dso_local global %struct.list_head zeroinitializer, align 4
@FLUSH_STABLE = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inode*, %struct.list_head*, %struct.nfs_pgio_completion_ops*)* @pnfs_write_done_resend_to_mds to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pnfs_write_done_resend_to_mds(%struct.inode* %0, %struct.list_head* %1, %struct.nfs_pgio_completion_ops* %2) #0 {
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
  %13 = load i32, i32* @FLUSH_STABLE, align 4
  %14 = load %struct.nfs_pgio_completion_ops*, %struct.nfs_pgio_completion_ops** %7, align 8
  %15 = call i32 @nfs_pageio_init_write(%struct.nfs_pageio_descriptor* %8, %struct.inode* %12, i32 %13, %struct.nfs_pgio_completion_ops* %14)
  br label %16

16:                                               ; preds = %34, %3
  %17 = load %struct.list_head*, %struct.list_head** %6, align 8
  %18 = call i32 @list_empty(%struct.list_head* %17)
  %19 = icmp ne i32 %18, 0
  %20 = xor i1 %19, true
  br i1 %20, label %21, label %35

21:                                               ; preds = %16
  %22 = load %struct.list_head*, %struct.list_head** %6, align 8
  %23 = getelementptr inbounds %struct.list_head, %struct.list_head* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = call %struct.nfs_page* @nfs_list_entry(i32 %24)
  store %struct.nfs_page* %25, %struct.nfs_page** %9, align 8
  %26 = load %struct.nfs_page*, %struct.nfs_page** %9, align 8
  %27 = call i32 @nfs_list_remove_request(%struct.nfs_page* %26)
  %28 = load %struct.nfs_page*, %struct.nfs_page** %9, align 8
  %29 = call i32 @nfs_pageio_add_request(%struct.nfs_pageio_descriptor* %8, %struct.nfs_page* %28)
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %34, label %31

31:                                               ; preds = %21
  %32 = load %struct.nfs_page*, %struct.nfs_page** %9, align 8
  %33 = call i32 @nfs_list_add_request(%struct.nfs_page* %32, %struct.list_head* @failed)
  br label %34

34:                                               ; preds = %31, %21
  br label %16

35:                                               ; preds = %16
  %36 = call i32 @nfs_pageio_complete(%struct.nfs_pageio_descriptor* %8)
  %37 = call i32 @list_empty(%struct.list_head* @failed)
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %44, label %39

39:                                               ; preds = %35
  %40 = load %struct.list_head*, %struct.list_head** %6, align 8
  %41 = call i32 @list_move(%struct.list_head* @failed, %struct.list_head* %40)
  %42 = load i32, i32* @EIO, align 4
  %43 = sub nsw i32 0, %42
  store i32 %43, i32* %4, align 4
  br label %45

44:                                               ; preds = %35
  store i32 0, i32* %4, align 4
  br label %45

45:                                               ; preds = %44, %39
  %46 = load i32, i32* %4, align 4
  ret i32 %46
}

declare dso_local i32 @LIST_HEAD(i32) #1

declare dso_local i32 @nfs_pageio_init_write(%struct.nfs_pageio_descriptor*, %struct.inode*, i32, %struct.nfs_pgio_completion_ops*) #1

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

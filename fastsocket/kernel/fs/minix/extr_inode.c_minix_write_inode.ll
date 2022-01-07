; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/minix/extr_inode.c_minix_write_inode.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/minix/extr_inode.c_minix_write_inode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.writeback_control = type { i64 }
%struct.buffer_head = type { i32 }

@MINIX_V1 = common dso_local global i64 0, align 8
@EIO = common dso_local global i32 0, align 4
@WB_SYNC_ALL = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [41 x i8] c"IO error syncing minix inode [%s:%08lx]\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inode*, %struct.writeback_control*)* @minix_write_inode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @minix_write_inode(%struct.inode* %0, %struct.writeback_control* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.inode*, align 8
  %5 = alloca %struct.writeback_control*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.buffer_head*, align 8
  store %struct.inode* %0, %struct.inode** %4, align 8
  store %struct.writeback_control* %1, %struct.writeback_control** %5, align 8
  store i32 0, i32* %6, align 4
  %8 = load %struct.inode*, %struct.inode** %4, align 8
  %9 = call i64 @INODE_VERSION(%struct.inode* %8)
  %10 = load i64, i64* @MINIX_V1, align 8
  %11 = icmp eq i64 %9, %10
  br i1 %11, label %12, label %15

12:                                               ; preds = %2
  %13 = load %struct.inode*, %struct.inode** %4, align 8
  %14 = call %struct.buffer_head* @V1_minix_update_inode(%struct.inode* %13)
  store %struct.buffer_head* %14, %struct.buffer_head** %7, align 8
  br label %18

15:                                               ; preds = %2
  %16 = load %struct.inode*, %struct.inode** %4, align 8
  %17 = call %struct.buffer_head* @V2_minix_update_inode(%struct.inode* %16)
  store %struct.buffer_head* %17, %struct.buffer_head** %7, align 8
  br label %18

18:                                               ; preds = %15, %12
  %19 = load %struct.buffer_head*, %struct.buffer_head** %7, align 8
  %20 = icmp ne %struct.buffer_head* %19, null
  br i1 %20, label %24, label %21

21:                                               ; preds = %18
  %22 = load i32, i32* @EIO, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %3, align 4
  br label %61

24:                                               ; preds = %18
  %25 = load %struct.writeback_control*, %struct.writeback_control** %5, align 8
  %26 = getelementptr inbounds %struct.writeback_control, %struct.writeback_control* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = load i64, i64* @WB_SYNC_ALL, align 8
  %29 = icmp eq i64 %27, %28
  br i1 %29, label %30, label %57

30:                                               ; preds = %24
  %31 = load %struct.buffer_head*, %struct.buffer_head** %7, align 8
  %32 = call i64 @buffer_dirty(%struct.buffer_head* %31)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %57

34:                                               ; preds = %30
  %35 = load %struct.buffer_head*, %struct.buffer_head** %7, align 8
  %36 = call i32 @sync_dirty_buffer(%struct.buffer_head* %35)
  %37 = load %struct.buffer_head*, %struct.buffer_head** %7, align 8
  %38 = call i64 @buffer_req(%struct.buffer_head* %37)
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %56

40:                                               ; preds = %34
  %41 = load %struct.buffer_head*, %struct.buffer_head** %7, align 8
  %42 = call i32 @buffer_uptodate(%struct.buffer_head* %41)
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %56, label %44

44:                                               ; preds = %40
  %45 = load %struct.inode*, %struct.inode** %4, align 8
  %46 = getelementptr inbounds %struct.inode, %struct.inode* %45, i32 0, i32 1
  %47 = load %struct.TYPE_2__*, %struct.TYPE_2__** %46, align 8
  %48 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = load %struct.inode*, %struct.inode** %4, align 8
  %51 = getelementptr inbounds %struct.inode, %struct.inode* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 8
  %53 = call i32 @printk(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0), i32 %49, i32 %52)
  %54 = load i32, i32* @EIO, align 4
  %55 = sub nsw i32 0, %54
  store i32 %55, i32* %6, align 4
  br label %56

56:                                               ; preds = %44, %40, %34
  br label %57

57:                                               ; preds = %56, %30, %24
  %58 = load %struct.buffer_head*, %struct.buffer_head** %7, align 8
  %59 = call i32 @brelse(%struct.buffer_head* %58)
  %60 = load i32, i32* %6, align 4
  store i32 %60, i32* %3, align 4
  br label %61

61:                                               ; preds = %57, %21
  %62 = load i32, i32* %3, align 4
  ret i32 %62
}

declare dso_local i64 @INODE_VERSION(%struct.inode*) #1

declare dso_local %struct.buffer_head* @V1_minix_update_inode(%struct.inode*) #1

declare dso_local %struct.buffer_head* @V2_minix_update_inode(%struct.inode*) #1

declare dso_local i64 @buffer_dirty(%struct.buffer_head*) #1

declare dso_local i32 @sync_dirty_buffer(%struct.buffer_head*) #1

declare dso_local i64 @buffer_req(%struct.buffer_head*) #1

declare dso_local i32 @buffer_uptodate(%struct.buffer_head*) #1

declare dso_local i32 @printk(i8*, i32, i32) #1

declare dso_local i32 @brelse(%struct.buffer_head*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

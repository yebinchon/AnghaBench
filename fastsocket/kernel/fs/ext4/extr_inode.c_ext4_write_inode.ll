; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/ext4/extr_inode.c_ext4_write_inode.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/ext4/extr_inode.c_ext4_write_inode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32 }
%struct.inode = type { i32, i32 }
%struct.writeback_control = type { i64 }
%struct.ext4_iloc = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i64 }
%struct.TYPE_8__ = type { i64 }

@current = common dso_local global %struct.TYPE_7__* null, align 8
@PF_MEMALLOC = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [38 x i8] c"called recursively, non-PF_MEMALLOC!\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@WB_SYNC_ALL = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [46 x i8] c"IO error syncing inode, inode=%lu, block=%llu\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ext4_write_inode(%struct.inode* %0, %struct.writeback_control* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.inode*, align 8
  %5 = alloca %struct.writeback_control*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.ext4_iloc, align 8
  store %struct.inode* %0, %struct.inode** %4, align 8
  store %struct.writeback_control* %1, %struct.writeback_control** %5, align 8
  %8 = load %struct.TYPE_7__*, %struct.TYPE_7__** @current, align 8
  %9 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = load i32, i32* @PF_MEMALLOC, align 4
  %12 = and i32 %10, %11
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %15

14:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %87

15:                                               ; preds = %2
  %16 = load %struct.inode*, %struct.inode** %4, align 8
  %17 = getelementptr inbounds %struct.inode, %struct.inode* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  %19 = call %struct.TYPE_8__* @EXT4_SB(i32 %18)
  %20 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %43

23:                                               ; preds = %15
  %24 = call i64 (...) @ext4_journal_current_handle()
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %31

26:                                               ; preds = %23
  %27 = call i32 @jbd_debug(i32 1, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0))
  %28 = call i32 (...) @dump_stack()
  %29 = load i32, i32* @EIO, align 4
  %30 = sub nsw i32 0, %29
  store i32 %30, i32* %3, align 4
  br label %87

31:                                               ; preds = %23
  %32 = load %struct.writeback_control*, %struct.writeback_control** %5, align 8
  %33 = getelementptr inbounds %struct.writeback_control, %struct.writeback_control* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = load i64, i64* @WB_SYNC_ALL, align 8
  %36 = icmp ne i64 %34, %35
  br i1 %36, label %37, label %38

37:                                               ; preds = %31
  store i32 0, i32* %3, align 4
  br label %87

38:                                               ; preds = %31
  %39 = load %struct.inode*, %struct.inode** %4, align 8
  %40 = getelementptr inbounds %struct.inode, %struct.inode* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  %42 = call i32 @ext4_force_commit(i32 %41)
  store i32 %42, i32* %6, align 4
  br label %85

43:                                               ; preds = %15
  %44 = load %struct.inode*, %struct.inode** %4, align 8
  %45 = call i32 @__ext4_get_inode_loc(%struct.inode* %44, %struct.ext4_iloc* %7, i32 0)
  store i32 %45, i32* %6, align 4
  %46 = load i32, i32* %6, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %50

48:                                               ; preds = %43
  %49 = load i32, i32* %6, align 4
  store i32 %49, i32* %3, align 4
  br label %87

50:                                               ; preds = %43
  %51 = load %struct.writeback_control*, %struct.writeback_control** %5, align 8
  %52 = getelementptr inbounds %struct.writeback_control, %struct.writeback_control* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = load i64, i64* @WB_SYNC_ALL, align 8
  %55 = icmp eq i64 %53, %54
  br i1 %55, label %56, label %60

56:                                               ; preds = %50
  %57 = getelementptr inbounds %struct.ext4_iloc, %struct.ext4_iloc* %7, i32 0, i32 0
  %58 = load %struct.TYPE_6__*, %struct.TYPE_6__** %57, align 8
  %59 = call i32 @sync_dirty_buffer(%struct.TYPE_6__* %58)
  br label %60

60:                                               ; preds = %56, %50
  %61 = getelementptr inbounds %struct.ext4_iloc, %struct.ext4_iloc* %7, i32 0, i32 0
  %62 = load %struct.TYPE_6__*, %struct.TYPE_6__** %61, align 8
  %63 = call i64 @buffer_req(%struct.TYPE_6__* %62)
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %65, label %84

65:                                               ; preds = %60
  %66 = getelementptr inbounds %struct.ext4_iloc, %struct.ext4_iloc* %7, i32 0, i32 0
  %67 = load %struct.TYPE_6__*, %struct.TYPE_6__** %66, align 8
  %68 = call i32 @buffer_uptodate(%struct.TYPE_6__* %67)
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %84, label %70

70:                                               ; preds = %65
  %71 = load %struct.inode*, %struct.inode** %4, align 8
  %72 = getelementptr inbounds %struct.inode, %struct.inode* %71, i32 0, i32 1
  %73 = load i32, i32* %72, align 4
  %74 = load %struct.inode*, %struct.inode** %4, align 8
  %75 = getelementptr inbounds %struct.inode, %struct.inode* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 4
  %77 = getelementptr inbounds %struct.ext4_iloc, %struct.ext4_iloc* %7, i32 0, i32 0
  %78 = load %struct.TYPE_6__*, %struct.TYPE_6__** %77, align 8
  %79 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %78, i32 0, i32 0
  %80 = load i64, i64* %79, align 8
  %81 = call i32 @ext4_error(i32 %73, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.1, i64 0, i64 0), i32 %76, i64 %80)
  %82 = load i32, i32* @EIO, align 4
  %83 = sub nsw i32 0, %82
  store i32 %83, i32* %6, align 4
  br label %84

84:                                               ; preds = %70, %65, %60
  br label %85

85:                                               ; preds = %84, %38
  %86 = load i32, i32* %6, align 4
  store i32 %86, i32* %3, align 4
  br label %87

87:                                               ; preds = %85, %48, %37, %26, %14
  %88 = load i32, i32* %3, align 4
  ret i32 %88
}

declare dso_local %struct.TYPE_8__* @EXT4_SB(i32) #1

declare dso_local i64 @ext4_journal_current_handle(...) #1

declare dso_local i32 @jbd_debug(i32, i8*) #1

declare dso_local i32 @dump_stack(...) #1

declare dso_local i32 @ext4_force_commit(i32) #1

declare dso_local i32 @__ext4_get_inode_loc(%struct.inode*, %struct.ext4_iloc*, i32) #1

declare dso_local i32 @sync_dirty_buffer(%struct.TYPE_6__*) #1

declare dso_local i64 @buffer_req(%struct.TYPE_6__*) #1

declare dso_local i32 @buffer_uptodate(%struct.TYPE_6__*) #1

declare dso_local i32 @ext4_error(i32, i8*, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

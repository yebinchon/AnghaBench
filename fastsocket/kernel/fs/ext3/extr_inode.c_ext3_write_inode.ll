; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/ext3/extr_inode.c_ext3_write_inode.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/ext3/extr_inode.c_ext3_write_inode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }
%struct.inode = type { i32 }
%struct.writeback_control = type { i64 }

@current = common dso_local global %struct.TYPE_2__* null, align 8
@PF_MEMALLOC = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [38 x i8] c"called recursively, non-PF_MEMALLOC!\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@WB_SYNC_ALL = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ext3_write_inode(%struct.inode* %0, %struct.writeback_control* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.inode*, align 8
  %5 = alloca %struct.writeback_control*, align 8
  store %struct.inode* %0, %struct.inode** %4, align 8
  store %struct.writeback_control* %1, %struct.writeback_control** %5, align 8
  %6 = load %struct.TYPE_2__*, %struct.TYPE_2__** @current, align 8
  %7 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  %9 = load i32, i32* @PF_MEMALLOC, align 4
  %10 = and i32 %8, %9
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %13

12:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %33

13:                                               ; preds = %2
  %14 = call i64 (...) @ext3_journal_current_handle()
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %21

16:                                               ; preds = %13
  %17 = call i32 @jbd_debug(i32 1, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0))
  %18 = call i32 (...) @dump_stack()
  %19 = load i32, i32* @EIO, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %3, align 4
  br label %33

21:                                               ; preds = %13
  %22 = load %struct.writeback_control*, %struct.writeback_control** %5, align 8
  %23 = getelementptr inbounds %struct.writeback_control, %struct.writeback_control* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = load i64, i64* @WB_SYNC_ALL, align 8
  %26 = icmp ne i64 %24, %25
  br i1 %26, label %27, label %28

27:                                               ; preds = %21
  store i32 0, i32* %3, align 4
  br label %33

28:                                               ; preds = %21
  %29 = load %struct.inode*, %struct.inode** %4, align 8
  %30 = getelementptr inbounds %struct.inode, %struct.inode* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = call i32 @ext3_force_commit(i32 %31)
  store i32 %32, i32* %3, align 4
  br label %33

33:                                               ; preds = %28, %27, %16, %12
  %34 = load i32, i32* %3, align 4
  ret i32 %34
}

declare dso_local i64 @ext3_journal_current_handle(...) #1

declare dso_local i32 @jbd_debug(i32, i8*) #1

declare dso_local i32 @dump_stack(...) #1

declare dso_local i32 @ext3_force_commit(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/afs/extr_write.c_afs_writepage.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/afs/extr_write.c_afs_writepage.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.page = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.backing_dev_info* }
%struct.backing_dev_info = type { i32 }
%struct.writeback_control = type { i32, i32, i64 }
%struct.afs_writeback = type { i32 }

@.str = private unnamed_addr constant [7 x i8] c"{%lx},\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c" = %d\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c" = 0\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @afs_writepage(%struct.page* %0, %struct.writeback_control* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.page*, align 8
  %5 = alloca %struct.writeback_control*, align 8
  %6 = alloca %struct.backing_dev_info*, align 8
  %7 = alloca %struct.afs_writeback*, align 8
  %8 = alloca i32, align 4
  store %struct.page* %0, %struct.page** %4, align 8
  store %struct.writeback_control* %1, %struct.writeback_control** %5, align 8
  %9 = load %struct.page*, %struct.page** %4, align 8
  %10 = getelementptr inbounds %struct.page, %struct.page* %9, i32 0, i32 1
  %11 = load %struct.TYPE_2__*, %struct.TYPE_2__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  %13 = load %struct.backing_dev_info*, %struct.backing_dev_info** %12, align 8
  store %struct.backing_dev_info* %13, %struct.backing_dev_info** %6, align 8
  %14 = load %struct.page*, %struct.page** %4, align 8
  %15 = getelementptr inbounds %struct.page, %struct.page* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = call i32 @_enter(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i32 %16)
  %18 = load %struct.page*, %struct.page** %4, align 8
  %19 = call i64 @page_private(%struct.page* %18)
  %20 = inttoptr i64 %19 to %struct.afs_writeback*
  store %struct.afs_writeback* %20, %struct.afs_writeback** %7, align 8
  %21 = load %struct.afs_writeback*, %struct.afs_writeback** %7, align 8
  %22 = icmp ne %struct.afs_writeback* %21, null
  %23 = zext i1 %22 to i32
  %24 = call i32 @ASSERT(i32 %23)
  %25 = load %struct.afs_writeback*, %struct.afs_writeback** %7, align 8
  %26 = load %struct.page*, %struct.page** %4, align 8
  %27 = call i32 @afs_write_back_from_locked_page(%struct.afs_writeback* %25, %struct.page* %26)
  store i32 %27, i32* %8, align 4
  %28 = load %struct.page*, %struct.page** %4, align 8
  %29 = call i32 @unlock_page(%struct.page* %28)
  %30 = load i32, i32* %8, align 4
  %31 = icmp slt i32 %30, 0
  br i1 %31, label %32, label %35

32:                                               ; preds = %2
  %33 = load i32, i32* %8, align 4
  %34 = call i32 (i8*, ...) @_leave(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i32 %33)
  store i32 0, i32* %3, align 4
  br label %54

35:                                               ; preds = %2
  %36 = load i32, i32* %8, align 4
  %37 = load %struct.writeback_control*, %struct.writeback_control** %5, align 8
  %38 = getelementptr inbounds %struct.writeback_control, %struct.writeback_control* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = sub nsw i32 %39, %36
  store i32 %40, i32* %38, align 8
  %41 = load %struct.writeback_control*, %struct.writeback_control** %5, align 8
  %42 = getelementptr inbounds %struct.writeback_control, %struct.writeback_control* %41, i32 0, i32 2
  %43 = load i64, i64* %42, align 8
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %52

45:                                               ; preds = %35
  %46 = load %struct.backing_dev_info*, %struct.backing_dev_info** %6, align 8
  %47 = call i64 @bdi_write_congested(%struct.backing_dev_info* %46)
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %52

49:                                               ; preds = %45
  %50 = load %struct.writeback_control*, %struct.writeback_control** %5, align 8
  %51 = getelementptr inbounds %struct.writeback_control, %struct.writeback_control* %50, i32 0, i32 1
  store i32 1, i32* %51, align 4
  br label %52

52:                                               ; preds = %49, %45, %35
  %53 = call i32 (i8*, ...) @_leave(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0))
  store i32 0, i32* %3, align 4
  br label %54

54:                                               ; preds = %52, %32
  %55 = load i32, i32* %3, align 4
  ret i32 %55
}

declare dso_local i32 @_enter(i8*, i32) #1

declare dso_local i64 @page_private(%struct.page*) #1

declare dso_local i32 @ASSERT(i32) #1

declare dso_local i32 @afs_write_back_from_locked_page(%struct.afs_writeback*, %struct.page*) #1

declare dso_local i32 @unlock_page(%struct.page*) #1

declare dso_local i32 @_leave(i8*, ...) #1

declare dso_local i64 @bdi_write_congested(%struct.backing_dev_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

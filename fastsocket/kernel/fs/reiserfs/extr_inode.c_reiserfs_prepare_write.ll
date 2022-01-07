; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/reiserfs/extr_inode.c_reiserfs_prepare_write.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/reiserfs/extr_inode.c_reiserfs_prepare_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { %struct.reiserfs_transaction_handle* }
%struct.reiserfs_transaction_handle = type { i32, i32 }
%struct.file = type { i32 }
%struct.page = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { %struct.inode* }
%struct.inode = type { i32 }

@current = common dso_local global %struct.TYPE_4__* null, align 8
@reiserfs_get_block = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @reiserfs_prepare_write(%struct.file* %0, %struct.page* %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.file*, align 8
  %6 = alloca %struct.page*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.inode*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.reiserfs_transaction_handle*, align 8
  %13 = alloca %struct.reiserfs_transaction_handle*, align 8
  %14 = alloca i32, align 4
  store %struct.file* %0, %struct.file** %5, align 8
  store %struct.page* %1, %struct.page** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %15 = load %struct.page*, %struct.page** %6, align 8
  %16 = getelementptr inbounds %struct.page, %struct.page* %15, i32 0, i32 0
  %17 = load %struct.TYPE_3__*, %struct.TYPE_3__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %17, i32 0, i32 0
  %19 = load %struct.inode*, %struct.inode** %18, align 8
  store %struct.inode* %19, %struct.inode** %9, align 8
  store i32 0, i32* %11, align 4
  %20 = load %struct.inode*, %struct.inode** %9, align 8
  %21 = getelementptr inbounds %struct.inode, %struct.inode* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = call i32 @reiserfs_wait_on_write_block(i32 %22)
  %24 = load %struct.page*, %struct.page** %6, align 8
  %25 = call i32 @fix_tail_page_for_writing(%struct.page* %24)
  %26 = load %struct.inode*, %struct.inode** %9, align 8
  %27 = getelementptr inbounds %struct.inode, %struct.inode* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = call i64 @reiserfs_transaction_running(i32 %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %56

31:                                               ; preds = %4
  %32 = load %struct.TYPE_4__*, %struct.TYPE_4__** @current, align 8
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i32 0, i32 0
  %34 = load %struct.reiserfs_transaction_handle*, %struct.reiserfs_transaction_handle** %33, align 8
  store %struct.reiserfs_transaction_handle* %34, %struct.reiserfs_transaction_handle** %12, align 8
  %35 = load %struct.reiserfs_transaction_handle*, %struct.reiserfs_transaction_handle** %12, align 8
  %36 = getelementptr inbounds %struct.reiserfs_transaction_handle, %struct.reiserfs_transaction_handle* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = icmp ne i32 %37, 0
  %39 = xor i1 %38, true
  %40 = zext i1 %39 to i32
  %41 = call i32 @BUG_ON(i32 %40)
  %42 = load %struct.reiserfs_transaction_handle*, %struct.reiserfs_transaction_handle** %12, align 8
  %43 = getelementptr inbounds %struct.reiserfs_transaction_handle, %struct.reiserfs_transaction_handle* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 4
  %45 = icmp ne i32 %44, 0
  %46 = xor i1 %45, true
  %47 = zext i1 %46 to i32
  %48 = call i32 @BUG_ON(i32 %47)
  %49 = load %struct.reiserfs_transaction_handle*, %struct.reiserfs_transaction_handle** %12, align 8
  %50 = getelementptr inbounds %struct.reiserfs_transaction_handle, %struct.reiserfs_transaction_handle* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  store i32 %51, i32* %11, align 4
  %52 = load %struct.reiserfs_transaction_handle*, %struct.reiserfs_transaction_handle** %12, align 8
  %53 = getelementptr inbounds %struct.reiserfs_transaction_handle, %struct.reiserfs_transaction_handle* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = add nsw i32 %54, 1
  store i32 %55, i32* %53, align 4
  br label %56

56:                                               ; preds = %31, %4
  %57 = load %struct.page*, %struct.page** %6, align 8
  %58 = load i32, i32* %7, align 4
  %59 = load i32, i32* %8, align 4
  %60 = load i32, i32* @reiserfs_get_block, align 4
  %61 = call i32 @block_prepare_write(%struct.page* %57, i32 %58, i32 %59, i32 %60)
  store i32 %61, i32* %10, align 4
  %62 = load i32, i32* %10, align 4
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %105

64:                                               ; preds = %56
  %65 = load %struct.inode*, %struct.inode** %9, align 8
  %66 = getelementptr inbounds %struct.inode, %struct.inode* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  %68 = call i64 @reiserfs_transaction_running(i32 %67)
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %70, label %105

70:                                               ; preds = %64
  %71 = load %struct.TYPE_4__*, %struct.TYPE_4__** @current, align 8
  %72 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %71, i32 0, i32 0
  %73 = load %struct.reiserfs_transaction_handle*, %struct.reiserfs_transaction_handle** %72, align 8
  store %struct.reiserfs_transaction_handle* %73, %struct.reiserfs_transaction_handle** %13, align 8
  %74 = load %struct.reiserfs_transaction_handle*, %struct.reiserfs_transaction_handle** %13, align 8
  %75 = getelementptr inbounds %struct.reiserfs_transaction_handle, %struct.reiserfs_transaction_handle* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 4
  %77 = load i32, i32* %11, align 4
  %78 = icmp sgt i32 %76, %77
  br i1 %78, label %79, label %104

79:                                               ; preds = %70
  %80 = load i32, i32* %11, align 4
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %82, label %87

82:                                               ; preds = %79
  %83 = load %struct.reiserfs_transaction_handle*, %struct.reiserfs_transaction_handle** %13, align 8
  %84 = getelementptr inbounds %struct.reiserfs_transaction_handle, %struct.reiserfs_transaction_handle* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 4
  %86 = add nsw i32 %85, -1
  store i32 %86, i32* %84, align 4
  br label %103

87:                                               ; preds = %79
  %88 = load %struct.inode*, %struct.inode** %9, align 8
  %89 = getelementptr inbounds %struct.inode, %struct.inode* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 4
  %91 = call i32 @reiserfs_write_lock(i32 %90)
  %92 = load %struct.reiserfs_transaction_handle*, %struct.reiserfs_transaction_handle** %13, align 8
  %93 = call i32 @reiserfs_end_persistent_transaction(%struct.reiserfs_transaction_handle* %92)
  store i32 %93, i32* %14, align 4
  %94 = load %struct.inode*, %struct.inode** %9, align 8
  %95 = getelementptr inbounds %struct.inode, %struct.inode* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 4
  %97 = call i32 @reiserfs_write_unlock(i32 %96)
  %98 = load i32, i32* %14, align 4
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %100, label %102

100:                                              ; preds = %87
  %101 = load i32, i32* %14, align 4
  store i32 %101, i32* %10, align 4
  br label %102

102:                                              ; preds = %100, %87
  br label %103

103:                                              ; preds = %102, %82
  br label %104

104:                                              ; preds = %103, %70
  br label %105

105:                                              ; preds = %104, %64, %56
  %106 = load i32, i32* %10, align 4
  ret i32 %106
}

declare dso_local i32 @reiserfs_wait_on_write_block(i32) #1

declare dso_local i32 @fix_tail_page_for_writing(%struct.page*) #1

declare dso_local i64 @reiserfs_transaction_running(i32) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @block_prepare_write(%struct.page*, i32, i32, i32) #1

declare dso_local i32 @reiserfs_write_lock(i32) #1

declare dso_local i32 @reiserfs_end_persistent_transaction(%struct.reiserfs_transaction_handle*) #1

declare dso_local i32 @reiserfs_write_unlock(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

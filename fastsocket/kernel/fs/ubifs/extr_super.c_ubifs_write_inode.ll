; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/ubifs/extr_super.c_ubifs_write_inode.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/ubifs/extr_super.c_ubifs_write_inode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32, i64, i64, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.ubifs_info* }
%struct.ubifs_info = type { i32 }
%struct.writeback_control = type { i32 }
%struct.ubifs_inode = type { i32, i64, i32, i32 }

@.str = private unnamed_addr constant [30 x i8] c"inode %lu, mode %#x, nlink %u\00", align 1
@.str.1 = private unnamed_addr constant [32 x i8] c"can't write inode %lu, error %d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inode*, %struct.writeback_control*)* @ubifs_write_inode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ubifs_write_inode(%struct.inode* %0, %struct.writeback_control* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.inode*, align 8
  %5 = alloca %struct.writeback_control*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.ubifs_info*, align 8
  %8 = alloca %struct.ubifs_inode*, align 8
  store %struct.inode* %0, %struct.inode** %4, align 8
  store %struct.writeback_control* %1, %struct.writeback_control** %5, align 8
  store i32 0, i32* %6, align 4
  %9 = load %struct.inode*, %struct.inode** %4, align 8
  %10 = getelementptr inbounds %struct.inode, %struct.inode* %9, i32 0, i32 3
  %11 = load %struct.TYPE_2__*, %struct.TYPE_2__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  %13 = load %struct.ubifs_info*, %struct.ubifs_info** %12, align 8
  store %struct.ubifs_info* %13, %struct.ubifs_info** %7, align 8
  %14 = load %struct.inode*, %struct.inode** %4, align 8
  %15 = call %struct.ubifs_inode* @ubifs_inode(%struct.inode* %14)
  store %struct.ubifs_inode* %15, %struct.ubifs_inode** %8, align 8
  %16 = load %struct.ubifs_inode*, %struct.ubifs_inode** %8, align 8
  %17 = getelementptr inbounds %struct.ubifs_inode, %struct.ubifs_inode* %16, i32 0, i32 3
  %18 = load i32, i32* %17, align 4
  %19 = icmp ne i32 %18, 0
  %20 = xor i1 %19, true
  %21 = zext i1 %20 to i32
  %22 = call i32 @ubifs_assert(i32 %21)
  %23 = load %struct.inode*, %struct.inode** %4, align 8
  %24 = call i64 @is_bad_inode(%struct.inode* %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %27

26:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %85

27:                                               ; preds = %2
  %28 = load %struct.ubifs_inode*, %struct.ubifs_inode** %8, align 8
  %29 = getelementptr inbounds %struct.ubifs_inode, %struct.ubifs_inode* %28, i32 0, i32 0
  %30 = call i32 @mutex_lock(i32* %29)
  %31 = load %struct.ubifs_inode*, %struct.ubifs_inode** %8, align 8
  %32 = getelementptr inbounds %struct.ubifs_inode, %struct.ubifs_inode* %31, i32 0, i32 1
  %33 = load i64, i64* %32, align 8
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %39, label %35

35:                                               ; preds = %27
  %36 = load %struct.ubifs_inode*, %struct.ubifs_inode** %8, align 8
  %37 = getelementptr inbounds %struct.ubifs_inode, %struct.ubifs_inode* %36, i32 0, i32 0
  %38 = call i32 @mutex_unlock(i32* %37)
  store i32 0, i32* %3, align 4
  br label %85

39:                                               ; preds = %27
  %40 = load %struct.inode*, %struct.inode** %4, align 8
  %41 = getelementptr inbounds %struct.inode, %struct.inode* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = load %struct.inode*, %struct.inode** %4, align 8
  %44 = getelementptr inbounds %struct.inode, %struct.inode* %43, i32 0, i32 2
  %45 = load i64, i64* %44, align 8
  %46 = trunc i64 %45 to i32
  %47 = load %struct.inode*, %struct.inode** %4, align 8
  %48 = getelementptr inbounds %struct.inode, %struct.inode* %47, i32 0, i32 1
  %49 = load i64, i64* %48, align 8
  %50 = call i32 @dbg_gen(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i32 %42, i32 %46, i64 %49)
  %51 = load %struct.inode*, %struct.inode** %4, align 8
  %52 = getelementptr inbounds %struct.inode, %struct.inode* %51, i32 0, i32 1
  %53 = load i64, i64* %52, align 8
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %75

55:                                               ; preds = %39
  %56 = load %struct.ubifs_info*, %struct.ubifs_info** %7, align 8
  %57 = load %struct.inode*, %struct.inode** %4, align 8
  %58 = call i32 @ubifs_jnl_write_inode(%struct.ubifs_info* %56, %struct.inode* %57)
  store i32 %58, i32* %6, align 4
  %59 = load i32, i32* %6, align 4
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %67

61:                                               ; preds = %55
  %62 = load %struct.inode*, %struct.inode** %4, align 8
  %63 = getelementptr inbounds %struct.inode, %struct.inode* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 8
  %65 = load i32, i32* %6, align 4
  %66 = call i32 @ubifs_err(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0), i32 %64, i32 %65)
  br label %74

67:                                               ; preds = %55
  %68 = load %struct.ubifs_info*, %struct.ubifs_info** %7, align 8
  %69 = load %struct.inode*, %struct.inode** %4, align 8
  %70 = load %struct.ubifs_inode*, %struct.ubifs_inode** %8, align 8
  %71 = getelementptr inbounds %struct.ubifs_inode, %struct.ubifs_inode* %70, i32 0, i32 2
  %72 = load i32, i32* %71, align 8
  %73 = call i32 @dbg_check_inode_size(%struct.ubifs_info* %68, %struct.inode* %69, i32 %72)
  store i32 %73, i32* %6, align 4
  br label %74

74:                                               ; preds = %67, %61
  br label %75

75:                                               ; preds = %74, %39
  %76 = load %struct.ubifs_inode*, %struct.ubifs_inode** %8, align 8
  %77 = getelementptr inbounds %struct.ubifs_inode, %struct.ubifs_inode* %76, i32 0, i32 1
  store i64 0, i64* %77, align 8
  %78 = load %struct.ubifs_inode*, %struct.ubifs_inode** %8, align 8
  %79 = getelementptr inbounds %struct.ubifs_inode, %struct.ubifs_inode* %78, i32 0, i32 0
  %80 = call i32 @mutex_unlock(i32* %79)
  %81 = load %struct.ubifs_info*, %struct.ubifs_info** %7, align 8
  %82 = load %struct.ubifs_inode*, %struct.ubifs_inode** %8, align 8
  %83 = call i32 @ubifs_release_dirty_inode_budget(%struct.ubifs_info* %81, %struct.ubifs_inode* %82)
  %84 = load i32, i32* %6, align 4
  store i32 %84, i32* %3, align 4
  br label %85

85:                                               ; preds = %75, %35, %26
  %86 = load i32, i32* %3, align 4
  ret i32 %86
}

declare dso_local %struct.ubifs_inode* @ubifs_inode(%struct.inode*) #1

declare dso_local i32 @ubifs_assert(i32) #1

declare dso_local i64 @is_bad_inode(%struct.inode*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @dbg_gen(i8*, i32, i32, i64) #1

declare dso_local i32 @ubifs_jnl_write_inode(%struct.ubifs_info*, %struct.inode*) #1

declare dso_local i32 @ubifs_err(i8*, i32, i32) #1

declare dso_local i32 @dbg_check_inode_size(%struct.ubifs_info*, %struct.inode*, i32) #1

declare dso_local i32 @ubifs_release_dirty_inode_budget(%struct.ubifs_info*, %struct.ubifs_inode*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/hpfs/extr_inode.c_hpfs_write_inode.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/hpfs/extr_inode.c_hpfs_write_inode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i64, i32, i32, i32, i32 }
%struct.hpfs_inode_info = type { i32, i32, i64, i32, i64* }
%struct.TYPE_2__ = type { i64 }

@.str = private unnamed_addr constant [46 x i8] c"HPFS: write_inode: some position still there\0A\00", align 1
@I_NEW = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @hpfs_write_inode(%struct.inode* %0) #0 {
  %2 = alloca %struct.inode*, align 8
  %3 = alloca %struct.hpfs_inode_info*, align 8
  %4 = alloca %struct.inode*, align 8
  store %struct.inode* %0, %struct.inode** %2, align 8
  %5 = load %struct.inode*, %struct.inode** %2, align 8
  %6 = call %struct.hpfs_inode_info* @hpfs_i(%struct.inode* %5)
  store %struct.hpfs_inode_info* %6, %struct.hpfs_inode_info** %3, align 8
  %7 = load %struct.inode*, %struct.inode** %2, align 8
  %8 = getelementptr inbounds %struct.inode, %struct.inode* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = load %struct.inode*, %struct.inode** %2, align 8
  %11 = getelementptr inbounds %struct.inode, %struct.inode* %10, i32 0, i32 2
  %12 = load i32, i32* %11, align 4
  %13 = call %struct.TYPE_2__* @hpfs_sb(i32 %12)
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = icmp eq i64 %9, %15
  br i1 %16, label %17, label %18

17:                                               ; preds = %1
  br label %99

18:                                               ; preds = %1
  %19 = load %struct.hpfs_inode_info*, %struct.hpfs_inode_info** %3, align 8
  %20 = getelementptr inbounds %struct.hpfs_inode_info, %struct.hpfs_inode_info* %19, i32 0, i32 4
  %21 = load i64*, i64** %20, align 8
  %22 = icmp ne i64* %21, null
  br i1 %22, label %23, label %43

23:                                               ; preds = %18
  %24 = load %struct.inode*, %struct.inode** %2, align 8
  %25 = getelementptr inbounds %struct.inode, %struct.inode* %24, i32 0, i32 4
  %26 = call i32 @atomic_read(i32* %25)
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %43, label %28

28:                                               ; preds = %23
  %29 = load %struct.hpfs_inode_info*, %struct.hpfs_inode_info** %3, align 8
  %30 = getelementptr inbounds %struct.hpfs_inode_info, %struct.hpfs_inode_info* %29, i32 0, i32 4
  %31 = load i64*, i64** %30, align 8
  %32 = load i64, i64* %31, align 8
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %36

34:                                               ; preds = %28
  %35 = call i32 @printk(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str, i64 0, i64 0))
  br label %36

36:                                               ; preds = %34, %28
  %37 = load %struct.hpfs_inode_info*, %struct.hpfs_inode_info** %3, align 8
  %38 = getelementptr inbounds %struct.hpfs_inode_info, %struct.hpfs_inode_info* %37, i32 0, i32 4
  %39 = load i64*, i64** %38, align 8
  %40 = call i32 @kfree(i64* %39)
  %41 = load %struct.hpfs_inode_info*, %struct.hpfs_inode_info** %3, align 8
  %42 = getelementptr inbounds %struct.hpfs_inode_info, %struct.hpfs_inode_info* %41, i32 0, i32 4
  store i64* null, i64** %42, align 8
  br label %43

43:                                               ; preds = %36, %23, %18
  %44 = load %struct.hpfs_inode_info*, %struct.hpfs_inode_info** %3, align 8
  %45 = getelementptr inbounds %struct.hpfs_inode_info, %struct.hpfs_inode_info* %44, i32 0, i32 0
  %46 = call i32 @mutex_lock(i32* %45)
  %47 = load %struct.inode*, %struct.inode** %2, align 8
  %48 = getelementptr inbounds %struct.inode, %struct.inode* %47, i32 0, i32 3
  %49 = load i32, i32* %48, align 8
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %55, label %51

51:                                               ; preds = %43
  %52 = load %struct.hpfs_inode_info*, %struct.hpfs_inode_info** %3, align 8
  %53 = getelementptr inbounds %struct.hpfs_inode_info, %struct.hpfs_inode_info* %52, i32 0, i32 0
  %54 = call i32 @mutex_unlock(i32* %53)
  br label %99

55:                                               ; preds = %43
  %56 = load %struct.inode*, %struct.inode** %2, align 8
  %57 = getelementptr inbounds %struct.inode, %struct.inode* %56, i32 0, i32 2
  %58 = load i32, i32* %57, align 4
  %59 = load %struct.hpfs_inode_info*, %struct.hpfs_inode_info** %3, align 8
  %60 = getelementptr inbounds %struct.hpfs_inode_info, %struct.hpfs_inode_info* %59, i32 0, i32 3
  %61 = load i32, i32* %60, align 8
  %62 = call %struct.inode* @iget_locked(i32 %58, i32 %61)
  store %struct.inode* %62, %struct.inode** %4, align 8
  %63 = load %struct.inode*, %struct.inode** %4, align 8
  %64 = icmp ne %struct.inode* %63, null
  br i1 %64, label %65, label %92

65:                                               ; preds = %55
  %66 = load %struct.hpfs_inode_info*, %struct.hpfs_inode_info** %3, align 8
  %67 = getelementptr inbounds %struct.hpfs_inode_info, %struct.hpfs_inode_info* %66, i32 0, i32 2
  store i64 0, i64* %67, align 8
  %68 = load %struct.inode*, %struct.inode** %4, align 8
  %69 = getelementptr inbounds %struct.inode, %struct.inode* %68, i32 0, i32 1
  %70 = load i32, i32* %69, align 8
  %71 = load i32, i32* @I_NEW, align 4
  %72 = and i32 %70, %71
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %81

74:                                               ; preds = %65
  %75 = load %struct.inode*, %struct.inode** %4, align 8
  %76 = call i32 @hpfs_init_inode(%struct.inode* %75)
  %77 = load %struct.inode*, %struct.inode** %4, align 8
  %78 = call i32 @hpfs_read_inode(%struct.inode* %77)
  %79 = load %struct.inode*, %struct.inode** %4, align 8
  %80 = call i32 @unlock_new_inode(%struct.inode* %79)
  br label %81

81:                                               ; preds = %74, %65
  %82 = load %struct.hpfs_inode_info*, %struct.hpfs_inode_info** %3, align 8
  %83 = getelementptr inbounds %struct.hpfs_inode_info, %struct.hpfs_inode_info* %82, i32 0, i32 1
  %84 = call i32 @mutex_lock(i32* %83)
  %85 = load %struct.inode*, %struct.inode** %2, align 8
  %86 = call i32 @hpfs_write_inode_nolock(%struct.inode* %85)
  %87 = load %struct.hpfs_inode_info*, %struct.hpfs_inode_info** %3, align 8
  %88 = getelementptr inbounds %struct.hpfs_inode_info, %struct.hpfs_inode_info* %87, i32 0, i32 1
  %89 = call i32 @mutex_unlock(i32* %88)
  %90 = load %struct.inode*, %struct.inode** %4, align 8
  %91 = call i32 @iput(%struct.inode* %90)
  br label %95

92:                                               ; preds = %55
  %93 = load %struct.inode*, %struct.inode** %2, align 8
  %94 = call i32 @mark_inode_dirty(%struct.inode* %93)
  br label %95

95:                                               ; preds = %92, %81
  %96 = load %struct.hpfs_inode_info*, %struct.hpfs_inode_info** %3, align 8
  %97 = getelementptr inbounds %struct.hpfs_inode_info, %struct.hpfs_inode_info* %96, i32 0, i32 0
  %98 = call i32 @mutex_unlock(i32* %97)
  br label %99

99:                                               ; preds = %95, %51, %17
  ret void
}

declare dso_local %struct.hpfs_inode_info* @hpfs_i(%struct.inode*) #1

declare dso_local %struct.TYPE_2__* @hpfs_sb(i32) #1

declare dso_local i32 @atomic_read(i32*) #1

declare dso_local i32 @printk(i8*) #1

declare dso_local i32 @kfree(i64*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local %struct.inode* @iget_locked(i32, i32) #1

declare dso_local i32 @hpfs_init_inode(%struct.inode*) #1

declare dso_local i32 @hpfs_read_inode(%struct.inode*) #1

declare dso_local i32 @unlock_new_inode(%struct.inode*) #1

declare dso_local i32 @hpfs_write_inode_nolock(%struct.inode*) #1

declare dso_local i32 @iput(%struct.inode*) #1

declare dso_local i32 @mark_inode_dirty(%struct.inode*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

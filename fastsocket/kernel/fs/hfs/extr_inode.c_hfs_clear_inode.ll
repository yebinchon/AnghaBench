; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/hfs/extr_inode.c_hfs_clear_inode.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/hfs/extr_inode.c_hfs_clear_inode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.TYPE_2__ = type { %struct.inode* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @hfs_clear_inode(%struct.inode* %0) #0 {
  %2 = alloca %struct.inode*, align 8
  store %struct.inode* %0, %struct.inode** %2, align 8
  %3 = load %struct.inode*, %struct.inode** %2, align 8
  %4 = call i64 @HFS_IS_RSRC(%struct.inode* %3)
  %5 = icmp ne i64 %4, 0
  br i1 %5, label %6, label %24

6:                                                ; preds = %1
  %7 = load %struct.inode*, %struct.inode** %2, align 8
  %8 = call %struct.TYPE_2__* @HFS_I(%struct.inode* %7)
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 0
  %10 = load %struct.inode*, %struct.inode** %9, align 8
  %11 = icmp ne %struct.inode* %10, null
  br i1 %11, label %12, label %24

12:                                               ; preds = %6
  %13 = load %struct.inode*, %struct.inode** %2, align 8
  %14 = call %struct.TYPE_2__* @HFS_I(%struct.inode* %13)
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  %16 = load %struct.inode*, %struct.inode** %15, align 8
  %17 = call %struct.TYPE_2__* @HFS_I(%struct.inode* %16)
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  store %struct.inode* null, %struct.inode** %18, align 8
  %19 = load %struct.inode*, %struct.inode** %2, align 8
  %20 = call %struct.TYPE_2__* @HFS_I(%struct.inode* %19)
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 0
  %22 = load %struct.inode*, %struct.inode** %21, align 8
  %23 = call i32 @iput(%struct.inode* %22)
  br label %24

24:                                               ; preds = %12, %6, %1
  ret void
}

declare dso_local i64 @HFS_IS_RSRC(%struct.inode*) #1

declare dso_local %struct.TYPE_2__* @HFS_I(%struct.inode*) #1

declare dso_local i32 @iput(%struct.inode*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

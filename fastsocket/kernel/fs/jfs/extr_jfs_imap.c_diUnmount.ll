; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/jfs/extr_jfs_imap.c_diUnmount.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/jfs/extr_jfs_imap.c_diUnmount.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.inomap = type { i32 }
%struct.TYPE_2__ = type { %struct.inomap* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @diUnmount(%struct.inode* %0, i32 %1) #0 {
  %3 = alloca %struct.inode*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.inomap*, align 8
  store %struct.inode* %0, %struct.inode** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.inode*, %struct.inode** %3, align 8
  %7 = call %struct.TYPE_2__* @JFS_IP(%struct.inode* %6)
  %8 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %7, i32 0, i32 0
  %9 = load %struct.inomap*, %struct.inomap** %8, align 8
  store %struct.inomap* %9, %struct.inomap** %5, align 8
  %10 = load i32, i32* %4, align 4
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %19, label %12

12:                                               ; preds = %2
  %13 = load %struct.inode*, %struct.inode** %3, align 8
  %14 = call i64 @isReadOnly(%struct.inode* %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %19, label %16

16:                                               ; preds = %12
  %17 = load %struct.inode*, %struct.inode** %3, align 8
  %18 = call i32 @diSync(%struct.inode* %17)
  br label %19

19:                                               ; preds = %16, %12, %2
  %20 = load %struct.inode*, %struct.inode** %3, align 8
  %21 = getelementptr inbounds %struct.inode, %struct.inode* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = call i32 @truncate_inode_pages(i32 %22, i32 0)
  %24 = load %struct.inomap*, %struct.inomap** %5, align 8
  %25 = call i32 @kfree(%struct.inomap* %24)
  ret i32 0
}

declare dso_local %struct.TYPE_2__* @JFS_IP(%struct.inode*) #1

declare dso_local i64 @isReadOnly(%struct.inode*) #1

declare dso_local i32 @diSync(%struct.inode*) #1

declare dso_local i32 @truncate_inode_pages(i32, i32) #1

declare dso_local i32 @kfree(%struct.inomap*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

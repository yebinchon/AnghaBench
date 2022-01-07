; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/minix/extr_namei.c_minix_link.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/minix/extr_namei.c_minix_link.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i64, i32, i32, i32 }
%struct.dentry = type { %struct.inode* }
%struct.TYPE_2__ = type { i64 }

@EMLINK = common dso_local global i32 0, align 4
@CURRENT_TIME_SEC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dentry*, %struct.inode*, %struct.dentry*)* @minix_link to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @minix_link(%struct.dentry* %0, %struct.inode* %1, %struct.dentry* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.dentry*, align 8
  %6 = alloca %struct.inode*, align 8
  %7 = alloca %struct.dentry*, align 8
  %8 = alloca %struct.inode*, align 8
  store %struct.dentry* %0, %struct.dentry** %5, align 8
  store %struct.inode* %1, %struct.inode** %6, align 8
  store %struct.dentry* %2, %struct.dentry** %7, align 8
  %9 = load %struct.dentry*, %struct.dentry** %5, align 8
  %10 = getelementptr inbounds %struct.dentry, %struct.dentry* %9, i32 0, i32 0
  %11 = load %struct.inode*, %struct.inode** %10, align 8
  store %struct.inode* %11, %struct.inode** %8, align 8
  %12 = load %struct.inode*, %struct.inode** %8, align 8
  %13 = getelementptr inbounds %struct.inode, %struct.inode* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = load %struct.inode*, %struct.inode** %8, align 8
  %16 = getelementptr inbounds %struct.inode, %struct.inode* %15, i32 0, i32 3
  %17 = load i32, i32* %16, align 8
  %18 = call %struct.TYPE_2__* @minix_sb(i32 %17)
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = icmp sge i64 %14, %20
  br i1 %21, label %22, label %25

22:                                               ; preds = %3
  %23 = load i32, i32* @EMLINK, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %4, align 4
  br label %37

25:                                               ; preds = %3
  %26 = load i32, i32* @CURRENT_TIME_SEC, align 4
  %27 = load %struct.inode*, %struct.inode** %8, align 8
  %28 = getelementptr inbounds %struct.inode, %struct.inode* %27, i32 0, i32 2
  store i32 %26, i32* %28, align 4
  %29 = load %struct.inode*, %struct.inode** %8, align 8
  %30 = call i32 @inode_inc_link_count(%struct.inode* %29)
  %31 = load %struct.inode*, %struct.inode** %8, align 8
  %32 = getelementptr inbounds %struct.inode, %struct.inode* %31, i32 0, i32 1
  %33 = call i32 @atomic_inc(i32* %32)
  %34 = load %struct.dentry*, %struct.dentry** %7, align 8
  %35 = load %struct.inode*, %struct.inode** %8, align 8
  %36 = call i32 @add_nondir(%struct.dentry* %34, %struct.inode* %35)
  store i32 %36, i32* %4, align 4
  br label %37

37:                                               ; preds = %25, %22
  %38 = load i32, i32* %4, align 4
  ret i32 %38
}

declare dso_local %struct.TYPE_2__* @minix_sb(i32) #1

declare dso_local i32 @inode_inc_link_count(%struct.inode*) #1

declare dso_local i32 @atomic_inc(i32*) #1

declare dso_local i32 @add_nondir(%struct.dentry*, %struct.inode*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/ext3/extr_namei.c_ext3_add_nondir.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/ext3/extr_namei.c_ext3_add_nondir.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dentry = type { i32 }
%struct.inode = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, %struct.dentry*, %struct.inode*)* @ext3_add_nondir to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ext3_add_nondir(i32* %0, %struct.dentry* %1, %struct.inode* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca %struct.dentry*, align 8
  %7 = alloca %struct.inode*, align 8
  %8 = alloca i32, align 4
  store i32* %0, i32** %5, align 8
  store %struct.dentry* %1, %struct.dentry** %6, align 8
  store %struct.inode* %2, %struct.inode** %7, align 8
  %9 = load i32*, i32** %5, align 8
  %10 = load %struct.dentry*, %struct.dentry** %6, align 8
  %11 = load %struct.inode*, %struct.inode** %7, align 8
  %12 = call i32 @ext3_add_entry(i32* %9, %struct.dentry* %10, %struct.inode* %11)
  store i32 %12, i32* %8, align 4
  %13 = load i32, i32* %8, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %24, label %15

15:                                               ; preds = %3
  %16 = load i32*, i32** %5, align 8
  %17 = load %struct.inode*, %struct.inode** %7, align 8
  %18 = call i32 @ext3_mark_inode_dirty(i32* %16, %struct.inode* %17)
  %19 = load %struct.dentry*, %struct.dentry** %6, align 8
  %20 = load %struct.inode*, %struct.inode** %7, align 8
  %21 = call i32 @d_instantiate(%struct.dentry* %19, %struct.inode* %20)
  %22 = load %struct.inode*, %struct.inode** %7, align 8
  %23 = call i32 @unlock_new_inode(%struct.inode* %22)
  store i32 0, i32* %4, align 4
  br label %32

24:                                               ; preds = %3
  %25 = load %struct.inode*, %struct.inode** %7, align 8
  %26 = call i32 @drop_nlink(%struct.inode* %25)
  %27 = load %struct.inode*, %struct.inode** %7, align 8
  %28 = call i32 @unlock_new_inode(%struct.inode* %27)
  %29 = load %struct.inode*, %struct.inode** %7, align 8
  %30 = call i32 @iput(%struct.inode* %29)
  %31 = load i32, i32* %8, align 4
  store i32 %31, i32* %4, align 4
  br label %32

32:                                               ; preds = %24, %15
  %33 = load i32, i32* %4, align 4
  ret i32 %33
}

declare dso_local i32 @ext3_add_entry(i32*, %struct.dentry*, %struct.inode*) #1

declare dso_local i32 @ext3_mark_inode_dirty(i32*, %struct.inode*) #1

declare dso_local i32 @d_instantiate(%struct.dentry*, %struct.inode*) #1

declare dso_local i32 @unlock_new_inode(%struct.inode*) #1

declare dso_local i32 @drop_nlink(%struct.inode*) #1

declare dso_local i32 @iput(%struct.inode*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

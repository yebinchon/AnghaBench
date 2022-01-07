; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/fuse/extr_inode.c_fuse_reverse_inval_inode.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/fuse/extr_inode.c_fuse_reverse_inval_inode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.super_block = type { i32 }
%struct.inode = type { i32 }

@fuse_inode_eq = common dso_local global i32 0, align 4
@ENOENT = common dso_local global i32 0, align 4
@PAGE_CACHE_SHIFT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @fuse_reverse_inval_inode(%struct.super_block* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.super_block*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.inode*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.super_block* %0, %struct.super_block** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %13 = load %struct.super_block*, %struct.super_block** %6, align 8
  %14 = load i32, i32* %7, align 4
  %15 = load i32, i32* @fuse_inode_eq, align 4
  %16 = call %struct.inode* @ilookup5(%struct.super_block* %13, i32 %14, i32 %15, i32* %7)
  store %struct.inode* %16, %struct.inode** %10, align 8
  %17 = load %struct.inode*, %struct.inode** %10, align 8
  %18 = icmp ne %struct.inode* %17, null
  br i1 %18, label %22, label %19

19:                                               ; preds = %4
  %20 = load i32, i32* @ENOENT, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %5, align 4
  br label %51

22:                                               ; preds = %4
  %23 = load %struct.inode*, %struct.inode** %10, align 8
  %24 = call i32 @fuse_invalidate_attr(%struct.inode* %23)
  %25 = load i32, i32* %8, align 4
  %26 = icmp sge i32 %25, 0
  br i1 %26, label %27, label %48

27:                                               ; preds = %22
  %28 = load i32, i32* %8, align 4
  %29 = load i32, i32* @PAGE_CACHE_SHIFT, align 4
  %30 = ashr i32 %28, %29
  store i32 %30, i32* %11, align 4
  %31 = load i32, i32* %9, align 4
  %32 = icmp sle i32 %31, 0
  br i1 %32, label %33, label %34

33:                                               ; preds = %27
  store i32 -1, i32* %12, align 4
  br label %41

34:                                               ; preds = %27
  %35 = load i32, i32* %8, align 4
  %36 = load i32, i32* %9, align 4
  %37 = add nsw i32 %35, %36
  %38 = sub nsw i32 %37, 1
  %39 = load i32, i32* @PAGE_CACHE_SHIFT, align 4
  %40 = ashr i32 %38, %39
  store i32 %40, i32* %12, align 4
  br label %41

41:                                               ; preds = %34, %33
  %42 = load %struct.inode*, %struct.inode** %10, align 8
  %43 = getelementptr inbounds %struct.inode, %struct.inode* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = load i32, i32* %11, align 4
  %46 = load i32, i32* %12, align 4
  %47 = call i32 @invalidate_inode_pages2_range(i32 %44, i32 %45, i32 %46)
  br label %48

48:                                               ; preds = %41, %22
  %49 = load %struct.inode*, %struct.inode** %10, align 8
  %50 = call i32 @iput(%struct.inode* %49)
  store i32 0, i32* %5, align 4
  br label %51

51:                                               ; preds = %48, %19
  %52 = load i32, i32* %5, align 4
  ret i32 %52
}

declare dso_local %struct.inode* @ilookup5(%struct.super_block*, i32, i32, i32*) #1

declare dso_local i32 @fuse_invalidate_attr(%struct.inode*) #1

declare dso_local i32 @invalidate_inode_pages2_range(i32, i32, i32) #1

declare dso_local i32 @iput(%struct.inode*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/hpfs/extr_dnode.c_hpfs_del_pos.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/hpfs/extr_dnode.c_hpfs_del_pos.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.hpfs_inode_info = type { i32** }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @hpfs_del_pos(%struct.inode* %0, i32* %1) #0 {
  %3 = alloca %struct.inode*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca %struct.hpfs_inode_info*, align 8
  %6 = alloca i32**, align 8
  %7 = alloca i32**, align 8
  store %struct.inode* %0, %struct.inode** %3, align 8
  store i32* %1, i32** %4, align 8
  %8 = load %struct.inode*, %struct.inode** %3, align 8
  %9 = call %struct.hpfs_inode_info* @hpfs_i(%struct.inode* %8)
  store %struct.hpfs_inode_info* %9, %struct.hpfs_inode_info** %5, align 8
  %10 = load %struct.hpfs_inode_info*, %struct.hpfs_inode_info** %5, align 8
  %11 = getelementptr inbounds %struct.hpfs_inode_info, %struct.hpfs_inode_info* %10, i32 0, i32 0
  %12 = load i32**, i32*** %11, align 8
  %13 = icmp ne i32** %12, null
  br i1 %13, label %15, label %14

14:                                               ; preds = %2
  br label %66

15:                                               ; preds = %2
  %16 = load %struct.hpfs_inode_info*, %struct.hpfs_inode_info** %5, align 8
  %17 = getelementptr inbounds %struct.hpfs_inode_info, %struct.hpfs_inode_info* %16, i32 0, i32 0
  %18 = load i32**, i32*** %17, align 8
  store i32** %18, i32*** %6, align 8
  br label %19

19:                                               ; preds = %30, %15
  %20 = load i32**, i32*** %6, align 8
  %21 = load i32*, i32** %20, align 8
  %22 = icmp ne i32* %21, null
  br i1 %22, label %23, label %33

23:                                               ; preds = %19
  %24 = load i32**, i32*** %6, align 8
  %25 = load i32*, i32** %24, align 8
  %26 = load i32*, i32** %4, align 8
  %27 = icmp eq i32* %25, %26
  br i1 %27, label %28, label %29

28:                                               ; preds = %23
  br label %34

29:                                               ; preds = %23
  br label %30

30:                                               ; preds = %29
  %31 = load i32**, i32*** %6, align 8
  %32 = getelementptr inbounds i32*, i32** %31, i32 1
  store i32** %32, i32*** %6, align 8
  br label %19

33:                                               ; preds = %19
  br label %66

34:                                               ; preds = %28
  %35 = load i32**, i32*** %6, align 8
  %36 = getelementptr inbounds i32*, i32** %35, i64 1
  store i32** %36, i32*** %7, align 8
  br label %37

37:                                               ; preds = %42, %34
  %38 = load i32**, i32*** %7, align 8
  %39 = load i32*, i32** %38, align 8
  %40 = icmp ne i32* %39, null
  br i1 %40, label %41, label %45

41:                                               ; preds = %37
  br label %42

42:                                               ; preds = %41
  %43 = load i32**, i32*** %7, align 8
  %44 = getelementptr inbounds i32*, i32** %43, i32 1
  store i32** %44, i32*** %7, align 8
  br label %37

45:                                               ; preds = %37
  %46 = load i32**, i32*** %7, align 8
  %47 = getelementptr inbounds i32*, i32** %46, i64 -1
  %48 = load i32*, i32** %47, align 8
  %49 = load i32**, i32*** %6, align 8
  store i32* %48, i32** %49, align 8
  %50 = load i32**, i32*** %7, align 8
  %51 = getelementptr inbounds i32*, i32** %50, i64 -1
  store i32* null, i32** %51, align 8
  %52 = load i32**, i32*** %7, align 8
  %53 = getelementptr inbounds i32*, i32** %52, i64 -1
  %54 = load %struct.hpfs_inode_info*, %struct.hpfs_inode_info** %5, align 8
  %55 = getelementptr inbounds %struct.hpfs_inode_info, %struct.hpfs_inode_info* %54, i32 0, i32 0
  %56 = load i32**, i32*** %55, align 8
  %57 = icmp eq i32** %53, %56
  br i1 %57, label %58, label %65

58:                                               ; preds = %45
  %59 = load %struct.hpfs_inode_info*, %struct.hpfs_inode_info** %5, align 8
  %60 = getelementptr inbounds %struct.hpfs_inode_info, %struct.hpfs_inode_info* %59, i32 0, i32 0
  %61 = load i32**, i32*** %60, align 8
  %62 = call i32 @kfree(i32** %61)
  %63 = load %struct.hpfs_inode_info*, %struct.hpfs_inode_info** %5, align 8
  %64 = getelementptr inbounds %struct.hpfs_inode_info, %struct.hpfs_inode_info* %63, i32 0, i32 0
  store i32** null, i32*** %64, align 8
  br label %65

65:                                               ; preds = %58, %45
  br label %67

66:                                               ; preds = %33, %14
  br label %67

67:                                               ; preds = %66, %65
  ret void
}

declare dso_local %struct.hpfs_inode_info* @hpfs_i(%struct.inode*) #1

declare dso_local i32 @kfree(i32**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

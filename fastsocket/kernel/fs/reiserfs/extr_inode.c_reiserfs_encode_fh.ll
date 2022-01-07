; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/reiserfs/extr_inode.c_reiserfs_encode_fh.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/reiserfs/extr_inode.c_reiserfs_encode_fh.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dentry = type { i32, %struct.TYPE_3__*, %struct.inode* }
%struct.TYPE_3__ = type { %struct.inode* }
%struct.inode = type { i32, i32 }
%struct.TYPE_4__ = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @reiserfs_encode_fh(%struct.dentry* %0, i32* %1, i32* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.dentry*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.inode*, align 8
  %11 = alloca i32, align 4
  store %struct.dentry* %0, %struct.dentry** %6, align 8
  store i32* %1, i32** %7, align 8
  store i32* %2, i32** %8, align 8
  store i32 %3, i32* %9, align 4
  %12 = load %struct.dentry*, %struct.dentry** %6, align 8
  %13 = getelementptr inbounds %struct.dentry, %struct.dentry* %12, i32 0, i32 2
  %14 = load %struct.inode*, %struct.inode** %13, align 8
  store %struct.inode* %14, %struct.inode** %10, align 8
  %15 = load i32*, i32** %8, align 8
  %16 = load i32, i32* %15, align 4
  store i32 %16, i32* %11, align 4
  %17 = load i32, i32* %11, align 4
  %18 = icmp slt i32 %17, 3
  br i1 %18, label %19, label %20

19:                                               ; preds = %4
  store i32 255, i32* %5, align 4
  br label %82

20:                                               ; preds = %4
  %21 = load %struct.inode*, %struct.inode** %10, align 8
  %22 = getelementptr inbounds %struct.inode, %struct.inode* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = load i32*, i32** %7, align 8
  %25 = getelementptr inbounds i32, i32* %24, i64 0
  store i32 %23, i32* %25, align 4
  %26 = load %struct.inode*, %struct.inode** %10, align 8
  %27 = call %struct.TYPE_4__* @INODE_PKEY(%struct.inode* %26)
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @le32_to_cpu(i32 %29)
  %31 = load i32*, i32** %7, align 8
  %32 = getelementptr inbounds i32, i32* %31, i64 1
  store i32 %30, i32* %32, align 4
  %33 = load %struct.inode*, %struct.inode** %10, align 8
  %34 = getelementptr inbounds %struct.inode, %struct.inode* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = load i32*, i32** %7, align 8
  %37 = getelementptr inbounds i32, i32* %36, i64 2
  store i32 %35, i32* %37, align 4
  %38 = load i32*, i32** %8, align 8
  store i32 3, i32* %38, align 4
  %39 = load i32, i32* %11, align 4
  %40 = icmp slt i32 %39, 5
  br i1 %40, label %44, label %41

41:                                               ; preds = %20
  %42 = load i32, i32* %9, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %45, label %44

44:                                               ; preds = %41, %20
  store i32 3, i32* %5, align 4
  br label %82

45:                                               ; preds = %41
  %46 = load %struct.dentry*, %struct.dentry** %6, align 8
  %47 = getelementptr inbounds %struct.dentry, %struct.dentry* %46, i32 0, i32 0
  %48 = call i32 @spin_lock(i32* %47)
  %49 = load %struct.dentry*, %struct.dentry** %6, align 8
  %50 = getelementptr inbounds %struct.dentry, %struct.dentry* %49, i32 0, i32 1
  %51 = load %struct.TYPE_3__*, %struct.TYPE_3__** %50, align 8
  %52 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %51, i32 0, i32 0
  %53 = load %struct.inode*, %struct.inode** %52, align 8
  store %struct.inode* %53, %struct.inode** %10, align 8
  %54 = load %struct.inode*, %struct.inode** %10, align 8
  %55 = getelementptr inbounds %struct.inode, %struct.inode* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 4
  %57 = load i32*, i32** %7, align 8
  %58 = getelementptr inbounds i32, i32* %57, i64 3
  store i32 %56, i32* %58, align 4
  %59 = load %struct.inode*, %struct.inode** %10, align 8
  %60 = call %struct.TYPE_4__* @INODE_PKEY(%struct.inode* %59)
  %61 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = call i32 @le32_to_cpu(i32 %62)
  %64 = load i32*, i32** %7, align 8
  %65 = getelementptr inbounds i32, i32* %64, i64 4
  store i32 %63, i32* %65, align 4
  %66 = load i32*, i32** %8, align 8
  store i32 5, i32* %66, align 4
  %67 = load i32, i32* %11, align 4
  %68 = icmp sge i32 %67, 6
  br i1 %68, label %69, label %76

69:                                               ; preds = %45
  %70 = load %struct.inode*, %struct.inode** %10, align 8
  %71 = getelementptr inbounds %struct.inode, %struct.inode* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 4
  %73 = load i32*, i32** %7, align 8
  %74 = getelementptr inbounds i32, i32* %73, i64 5
  store i32 %72, i32* %74, align 4
  %75 = load i32*, i32** %8, align 8
  store i32 6, i32* %75, align 4
  br label %76

76:                                               ; preds = %69, %45
  %77 = load %struct.dentry*, %struct.dentry** %6, align 8
  %78 = getelementptr inbounds %struct.dentry, %struct.dentry* %77, i32 0, i32 0
  %79 = call i32 @spin_unlock(i32* %78)
  %80 = load i32*, i32** %8, align 8
  %81 = load i32, i32* %80, align 4
  store i32 %81, i32* %5, align 4
  br label %82

82:                                               ; preds = %76, %44, %19
  %83 = load i32, i32* %5, align 4
  ret i32 %83
}

declare dso_local i32 @le32_to_cpu(i32) #1

declare dso_local %struct.TYPE_4__* @INODE_PKEY(%struct.inode*) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

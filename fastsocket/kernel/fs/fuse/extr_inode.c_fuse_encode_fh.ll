; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/fuse/extr_inode.c_fuse_encode_fh.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/fuse/extr_inode.c_fuse_encode_fh.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dentry = type { i32, %struct.TYPE_3__*, %struct.inode* }
%struct.TYPE_3__ = type { %struct.inode* }
%struct.inode = type { i64, i32 }
%struct.TYPE_4__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dentry*, i64*, i32*, i32)* @fuse_encode_fh to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fuse_encode_fh(%struct.dentry* %0, i64* %1, i32* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.dentry*, align 8
  %7 = alloca i64*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.inode*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i64, align 8
  %15 = alloca %struct.inode*, align 8
  store %struct.dentry* %0, %struct.dentry** %6, align 8
  store i64* %1, i64** %7, align 8
  store i32* %2, i32** %8, align 8
  store i32 %3, i32* %9, align 4
  %16 = load %struct.dentry*, %struct.dentry** %6, align 8
  %17 = getelementptr inbounds %struct.dentry, %struct.dentry* %16, i32 0, i32 2
  %18 = load %struct.inode*, %struct.inode** %17, align 8
  store %struct.inode* %18, %struct.inode** %10, align 8
  %19 = load i32, i32* %9, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %28

21:                                               ; preds = %4
  %22 = load %struct.inode*, %struct.inode** %10, align 8
  %23 = getelementptr inbounds %struct.inode, %struct.inode* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 8
  %25 = call i32 @S_ISDIR(i32 %24)
  %26 = icmp ne i32 %25, 0
  %27 = xor i1 %26, true
  br label %28

28:                                               ; preds = %21, %4
  %29 = phi i1 [ false, %4 ], [ %27, %21 ]
  %30 = zext i1 %29 to i32
  store i32 %30, i32* %11, align 4
  %31 = load i32, i32* %11, align 4
  %32 = icmp ne i32 %31, 0
  %33 = zext i1 %32 to i64
  %34 = select i1 %32, i32 6, i32 3
  store i32 %34, i32* %12, align 4
  %35 = load i32*, i32** %8, align 8
  %36 = load i32, i32* %35, align 4
  %37 = load i32, i32* %12, align 4
  %38 = icmp slt i32 %36, %37
  br i1 %38, label %39, label %40

39:                                               ; preds = %28
  store i32 255, i32* %5, align 4
  br label %100

40:                                               ; preds = %28
  %41 = load %struct.inode*, %struct.inode** %10, align 8
  %42 = call %struct.TYPE_4__* @get_fuse_inode(%struct.inode* %41)
  %43 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  store i32 %44, i32* %13, align 4
  %45 = load %struct.inode*, %struct.inode** %10, align 8
  %46 = getelementptr inbounds %struct.inode, %struct.inode* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  store i64 %47, i64* %14, align 8
  %48 = load i32, i32* %13, align 4
  %49 = ashr i32 %48, 32
  %50 = sext i32 %49 to i64
  %51 = load i64*, i64** %7, align 8
  %52 = getelementptr inbounds i64, i64* %51, i64 0
  store i64 %50, i64* %52, align 8
  %53 = load i32, i32* %13, align 4
  %54 = zext i32 %53 to i64
  %55 = load i64*, i64** %7, align 8
  %56 = getelementptr inbounds i64, i64* %55, i64 1
  store i64 %54, i64* %56, align 8
  %57 = load i64, i64* %14, align 8
  %58 = load i64*, i64** %7, align 8
  %59 = getelementptr inbounds i64, i64* %58, i64 2
  store i64 %57, i64* %59, align 8
  %60 = load i32, i32* %11, align 4
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %93

62:                                               ; preds = %40
  %63 = load %struct.dentry*, %struct.dentry** %6, align 8
  %64 = getelementptr inbounds %struct.dentry, %struct.dentry* %63, i32 0, i32 0
  %65 = call i32 @spin_lock(i32* %64)
  %66 = load %struct.dentry*, %struct.dentry** %6, align 8
  %67 = getelementptr inbounds %struct.dentry, %struct.dentry* %66, i32 0, i32 1
  %68 = load %struct.TYPE_3__*, %struct.TYPE_3__** %67, align 8
  %69 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %68, i32 0, i32 0
  %70 = load %struct.inode*, %struct.inode** %69, align 8
  store %struct.inode* %70, %struct.inode** %15, align 8
  %71 = load %struct.inode*, %struct.inode** %15, align 8
  %72 = call %struct.TYPE_4__* @get_fuse_inode(%struct.inode* %71)
  %73 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 4
  store i32 %74, i32* %13, align 4
  %75 = load %struct.inode*, %struct.inode** %15, align 8
  %76 = getelementptr inbounds %struct.inode, %struct.inode* %75, i32 0, i32 0
  %77 = load i64, i64* %76, align 8
  store i64 %77, i64* %14, align 8
  %78 = load %struct.dentry*, %struct.dentry** %6, align 8
  %79 = getelementptr inbounds %struct.dentry, %struct.dentry* %78, i32 0, i32 0
  %80 = call i32 @spin_unlock(i32* %79)
  %81 = load i32, i32* %13, align 4
  %82 = ashr i32 %81, 32
  %83 = sext i32 %82 to i64
  %84 = load i64*, i64** %7, align 8
  %85 = getelementptr inbounds i64, i64* %84, i64 3
  store i64 %83, i64* %85, align 8
  %86 = load i32, i32* %13, align 4
  %87 = zext i32 %86 to i64
  %88 = load i64*, i64** %7, align 8
  %89 = getelementptr inbounds i64, i64* %88, i64 4
  store i64 %87, i64* %89, align 8
  %90 = load i64, i64* %14, align 8
  %91 = load i64*, i64** %7, align 8
  %92 = getelementptr inbounds i64, i64* %91, i64 5
  store i64 %90, i64* %92, align 8
  br label %93

93:                                               ; preds = %62, %40
  %94 = load i32, i32* %12, align 4
  %95 = load i32*, i32** %8, align 8
  store i32 %94, i32* %95, align 4
  %96 = load i32, i32* %11, align 4
  %97 = icmp ne i32 %96, 0
  %98 = zext i1 %97 to i64
  %99 = select i1 %97, i32 130, i32 129
  store i32 %99, i32* %5, align 4
  br label %100

100:                                              ; preds = %93, %39
  %101 = load i32, i32* %5, align 4
  ret i32 %101
}

declare dso_local i32 @S_ISDIR(i32) #1

declare dso_local %struct.TYPE_4__* @get_fuse_inode(%struct.inode*) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

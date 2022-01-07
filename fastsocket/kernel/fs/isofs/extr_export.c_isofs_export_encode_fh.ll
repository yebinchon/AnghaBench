; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/isofs/extr_export.c_isofs_export_encode_fh.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/isofs/extr_export.c_isofs_export_encode_fh.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dentry = type { i32, %struct.TYPE_2__*, %struct.inode* }
%struct.TYPE_2__ = type { %struct.inode* }
%struct.inode = type { i32, i32 }
%struct.iso_inode_info = type { i64, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dentry*, i32*, i32*, i32)* @isofs_export_encode_fh to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @isofs_export_encode_fh(%struct.dentry* %0, i32* %1, i32* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.dentry*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.inode*, align 8
  %11 = alloca %struct.iso_inode_info*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i64*, align 8
  %15 = alloca %struct.inode*, align 8
  %16 = alloca %struct.iso_inode_info*, align 8
  store %struct.dentry* %0, %struct.dentry** %6, align 8
  store i32* %1, i32** %7, align 8
  store i32* %2, i32** %8, align 8
  store i32 %3, i32* %9, align 4
  %17 = load %struct.dentry*, %struct.dentry** %6, align 8
  %18 = getelementptr inbounds %struct.dentry, %struct.dentry* %17, i32 0, i32 2
  %19 = load %struct.inode*, %struct.inode** %18, align 8
  store %struct.inode* %19, %struct.inode** %10, align 8
  %20 = load %struct.inode*, %struct.inode** %10, align 8
  %21 = call %struct.iso_inode_info* @ISOFS_I(%struct.inode* %20)
  store %struct.iso_inode_info* %21, %struct.iso_inode_info** %11, align 8
  %22 = load i32*, i32** %8, align 8
  %23 = load i32, i32* %22, align 4
  store i32 %23, i32* %12, align 4
  store i32 1, i32* %13, align 4
  %24 = load i32*, i32** %7, align 8
  %25 = bitcast i32* %24 to i64*
  store i64* %25, i64** %14, align 8
  %26 = load i32, i32* %12, align 4
  %27 = icmp slt i32 %26, 3
  br i1 %27, label %34, label %28

28:                                               ; preds = %4
  %29 = load i32, i32* %9, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %35

31:                                               ; preds = %28
  %32 = load i32, i32* %12, align 4
  %33 = icmp slt i32 %32, 5
  br i1 %33, label %34, label %35

34:                                               ; preds = %31, %4
  store i32 255, i32* %5, align 4
  br label %92

35:                                               ; preds = %31, %28
  store i32 3, i32* %12, align 4
  %36 = load %struct.iso_inode_info*, %struct.iso_inode_info** %11, align 8
  %37 = getelementptr inbounds %struct.iso_inode_info, %struct.iso_inode_info* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 8
  %39 = load i32*, i32** %7, align 8
  %40 = getelementptr inbounds i32, i32* %39, i64 0
  store i32 %38, i32* %40, align 4
  %41 = load %struct.iso_inode_info*, %struct.iso_inode_info** %11, align 8
  %42 = getelementptr inbounds %struct.iso_inode_info, %struct.iso_inode_info* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = load i64*, i64** %14, align 8
  %45 = getelementptr inbounds i64, i64* %44, i64 2
  store i64 %43, i64* %45, align 8
  %46 = load %struct.inode*, %struct.inode** %10, align 8
  %47 = getelementptr inbounds %struct.inode, %struct.inode* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = load i32*, i32** %7, align 8
  %50 = getelementptr inbounds i32, i32* %49, i64 2
  store i32 %48, i32* %50, align 4
  %51 = load i32, i32* %9, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %88

53:                                               ; preds = %35
  %54 = load %struct.inode*, %struct.inode** %10, align 8
  %55 = getelementptr inbounds %struct.inode, %struct.inode* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 4
  %57 = call i32 @S_ISDIR(i32 %56)
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %88, label %59

59:                                               ; preds = %53
  %60 = load %struct.dentry*, %struct.dentry** %6, align 8
  %61 = getelementptr inbounds %struct.dentry, %struct.dentry* %60, i32 0, i32 0
  %62 = call i32 @spin_lock(i32* %61)
  %63 = load %struct.dentry*, %struct.dentry** %6, align 8
  %64 = getelementptr inbounds %struct.dentry, %struct.dentry* %63, i32 0, i32 1
  %65 = load %struct.TYPE_2__*, %struct.TYPE_2__** %64, align 8
  %66 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %65, i32 0, i32 0
  %67 = load %struct.inode*, %struct.inode** %66, align 8
  store %struct.inode* %67, %struct.inode** %15, align 8
  %68 = load %struct.inode*, %struct.inode** %15, align 8
  %69 = call %struct.iso_inode_info* @ISOFS_I(%struct.inode* %68)
  store %struct.iso_inode_info* %69, %struct.iso_inode_info** %16, align 8
  %70 = load %struct.iso_inode_info*, %struct.iso_inode_info** %16, align 8
  %71 = getelementptr inbounds %struct.iso_inode_info, %struct.iso_inode_info* %70, i32 0, i32 1
  %72 = load i32, i32* %71, align 8
  %73 = load i32*, i32** %7, align 8
  %74 = getelementptr inbounds i32, i32* %73, i64 3
  store i32 %72, i32* %74, align 4
  %75 = load %struct.iso_inode_info*, %struct.iso_inode_info** %16, align 8
  %76 = getelementptr inbounds %struct.iso_inode_info, %struct.iso_inode_info* %75, i32 0, i32 0
  %77 = load i64, i64* %76, align 8
  %78 = load i64*, i64** %14, align 8
  %79 = getelementptr inbounds i64, i64* %78, i64 3
  store i64 %77, i64* %79, align 8
  %80 = load %struct.inode*, %struct.inode** %15, align 8
  %81 = getelementptr inbounds %struct.inode, %struct.inode* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 4
  %83 = load i32*, i32** %7, align 8
  %84 = getelementptr inbounds i32, i32* %83, i64 4
  store i32 %82, i32* %84, align 4
  %85 = load %struct.dentry*, %struct.dentry** %6, align 8
  %86 = getelementptr inbounds %struct.dentry, %struct.dentry* %85, i32 0, i32 0
  %87 = call i32 @spin_unlock(i32* %86)
  store i32 5, i32* %12, align 4
  store i32 2, i32* %13, align 4
  br label %88

88:                                               ; preds = %59, %53, %35
  %89 = load i32, i32* %12, align 4
  %90 = load i32*, i32** %8, align 8
  store i32 %89, i32* %90, align 4
  %91 = load i32, i32* %13, align 4
  store i32 %91, i32* %5, align 4
  br label %92

92:                                               ; preds = %88, %34
  %93 = load i32, i32* %5, align 4
  ret i32 %93
}

declare dso_local %struct.iso_inode_info* @ISOFS_I(%struct.inode*) #1

declare dso_local i32 @S_ISDIR(i32) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

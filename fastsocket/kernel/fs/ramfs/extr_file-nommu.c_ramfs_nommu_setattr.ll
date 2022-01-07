; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/ramfs/extr_file-nommu.c_ramfs_nommu_setattr.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/ramfs/extr_file-nommu.c_ramfs_nommu_setattr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dentry = type { %struct.inode* }
%struct.inode = type { i32 }
%struct.iattr = type { i32, i64 }

@ATTR_SIZE = common dso_local global i32 0, align 4
@ATTR_MTIME = common dso_local global i32 0, align 4
@ATTR_CTIME = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dentry*, %struct.iattr*)* @ramfs_nommu_setattr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ramfs_nommu_setattr(%struct.dentry* %0, %struct.iattr* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.dentry*, align 8
  %5 = alloca %struct.iattr*, align 8
  %6 = alloca %struct.inode*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  store %struct.dentry* %0, %struct.dentry** %4, align 8
  store %struct.iattr* %1, %struct.iattr** %5, align 8
  %10 = load %struct.dentry*, %struct.dentry** %4, align 8
  %11 = getelementptr inbounds %struct.dentry, %struct.dentry* %10, i32 0, i32 0
  %12 = load %struct.inode*, %struct.inode** %11, align 8
  store %struct.inode* %12, %struct.inode** %6, align 8
  %13 = load %struct.iattr*, %struct.iattr** %5, align 8
  %14 = getelementptr inbounds %struct.iattr, %struct.iattr* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  store i32 %15, i32* %7, align 4
  store i32 0, i32* %8, align 4
  %16 = load %struct.inode*, %struct.inode** %6, align 8
  %17 = load %struct.iattr*, %struct.iattr** %5, align 8
  %18 = call i32 @inode_change_ok(%struct.inode* %16, %struct.iattr* %17)
  store i32 %18, i32* %8, align 4
  %19 = load i32, i32* %8, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %23

21:                                               ; preds = %2
  %22 = load i32, i32* %8, align 4
  store i32 %22, i32* %3, align 4
  br label %73

23:                                               ; preds = %2
  %24 = load %struct.iattr*, %struct.iattr** %5, align 8
  %25 = getelementptr inbounds %struct.iattr, %struct.iattr* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = load i32, i32* @ATTR_SIZE, align 4
  %28 = and i32 %26, %27
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %64

30:                                               ; preds = %23
  %31 = load %struct.inode*, %struct.inode** %6, align 8
  %32 = call i64 @i_size_read(%struct.inode* %31)
  store i64 %32, i64* %9, align 8
  %33 = load %struct.iattr*, %struct.iattr** %5, align 8
  %34 = getelementptr inbounds %struct.iattr, %struct.iattr* %33, i32 0, i32 1
  %35 = load i64, i64* %34, align 8
  %36 = load i64, i64* %9, align 8
  %37 = icmp ne i64 %35, %36
  br i1 %37, label %38, label %55

38:                                               ; preds = %30
  %39 = load %struct.inode*, %struct.inode** %6, align 8
  %40 = load %struct.iattr*, %struct.iattr** %5, align 8
  %41 = getelementptr inbounds %struct.iattr, %struct.iattr* %40, i32 0, i32 1
  %42 = load i64, i64* %41, align 8
  %43 = load i64, i64* %9, align 8
  %44 = call i32 @ramfs_nommu_resize(%struct.inode* %39, i64 %42, i64 %43)
  store i32 %44, i32* %8, align 4
  %45 = load i32, i32* %8, align 4
  %46 = icmp slt i32 %45, 0
  br i1 %46, label %53, label %47

47:                                               ; preds = %38
  %48 = load %struct.iattr*, %struct.iattr** %5, align 8
  %49 = getelementptr inbounds %struct.iattr, %struct.iattr* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  %51 = load i32, i32* @ATTR_SIZE, align 4
  %52 = icmp eq i32 %50, %51
  br i1 %52, label %53, label %54

53:                                               ; preds = %47, %38
  br label %68

54:                                               ; preds = %47
  br label %63

55:                                               ; preds = %30
  %56 = load i32, i32* @ATTR_MTIME, align 4
  %57 = load i32, i32* @ATTR_CTIME, align 4
  %58 = or i32 %56, %57
  %59 = load %struct.iattr*, %struct.iattr** %5, align 8
  %60 = getelementptr inbounds %struct.iattr, %struct.iattr* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 8
  %62 = or i32 %61, %58
  store i32 %62, i32* %60, align 8
  br label %63

63:                                               ; preds = %55, %54
  br label %64

64:                                               ; preds = %63, %23
  %65 = load %struct.inode*, %struct.inode** %6, align 8
  %66 = load %struct.iattr*, %struct.iattr** %5, align 8
  %67 = call i32 @inode_setattr(%struct.inode* %65, %struct.iattr* %66)
  store i32 %67, i32* %8, align 4
  br label %68

68:                                               ; preds = %64, %53
  %69 = load i32, i32* %7, align 4
  %70 = load %struct.iattr*, %struct.iattr** %5, align 8
  %71 = getelementptr inbounds %struct.iattr, %struct.iattr* %70, i32 0, i32 0
  store i32 %69, i32* %71, align 8
  %72 = load i32, i32* %8, align 4
  store i32 %72, i32* %3, align 4
  br label %73

73:                                               ; preds = %68, %21
  %74 = load i32, i32* %3, align 4
  ret i32 %74
}

declare dso_local i32 @inode_change_ok(%struct.inode*, %struct.iattr*) #1

declare dso_local i64 @i_size_read(%struct.inode*) #1

declare dso_local i32 @ramfs_nommu_resize(%struct.inode*, i64, i64) #1

declare dso_local i32 @inode_setattr(%struct.inode*, %struct.iattr*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

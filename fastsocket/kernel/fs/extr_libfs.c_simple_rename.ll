; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/extr_libfs.c_simple_rename.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/extr_libfs.c_simple_rename.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32, i32, i32 }
%struct.dentry = type { %struct.inode* }

@ENOTEMPTY = common dso_local global i32 0, align 4
@CURRENT_TIME = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @simple_rename(%struct.inode* %0, %struct.dentry* %1, %struct.inode* %2, %struct.dentry* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.inode*, align 8
  %7 = alloca %struct.dentry*, align 8
  %8 = alloca %struct.inode*, align 8
  %9 = alloca %struct.dentry*, align 8
  %10 = alloca %struct.inode*, align 8
  %11 = alloca i32, align 4
  store %struct.inode* %0, %struct.inode** %6, align 8
  store %struct.dentry* %1, %struct.dentry** %7, align 8
  store %struct.inode* %2, %struct.inode** %8, align 8
  store %struct.dentry* %3, %struct.dentry** %9, align 8
  %12 = load %struct.dentry*, %struct.dentry** %7, align 8
  %13 = getelementptr inbounds %struct.dentry, %struct.dentry* %12, i32 0, i32 0
  %14 = load %struct.inode*, %struct.inode** %13, align 8
  store %struct.inode* %14, %struct.inode** %10, align 8
  %15 = load %struct.dentry*, %struct.dentry** %7, align 8
  %16 = getelementptr inbounds %struct.dentry, %struct.dentry* %15, i32 0, i32 0
  %17 = load %struct.inode*, %struct.inode** %16, align 8
  %18 = getelementptr inbounds %struct.inode, %struct.inode* %17, i32 0, i32 2
  %19 = load i32, i32* %18, align 4
  %20 = call i32 @S_ISDIR(i32 %19)
  store i32 %20, i32* %11, align 4
  %21 = load %struct.dentry*, %struct.dentry** %9, align 8
  %22 = call i32 @simple_empty(%struct.dentry* %21)
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %27, label %24

24:                                               ; preds = %4
  %25 = load i32, i32* @ENOTEMPTY, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %5, align 4
  br label %63

27:                                               ; preds = %4
  %28 = load %struct.dentry*, %struct.dentry** %9, align 8
  %29 = getelementptr inbounds %struct.dentry, %struct.dentry* %28, i32 0, i32 0
  %30 = load %struct.inode*, %struct.inode** %29, align 8
  %31 = icmp ne %struct.inode* %30, null
  br i1 %31, label %32, label %42

32:                                               ; preds = %27
  %33 = load %struct.inode*, %struct.inode** %8, align 8
  %34 = load %struct.dentry*, %struct.dentry** %9, align 8
  %35 = call i32 @simple_unlink(%struct.inode* %33, %struct.dentry* %34)
  %36 = load i32, i32* %11, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %41

38:                                               ; preds = %32
  %39 = load %struct.inode*, %struct.inode** %6, align 8
  %40 = call i32 @drop_nlink(%struct.inode* %39)
  br label %41

41:                                               ; preds = %38, %32
  br label %51

42:                                               ; preds = %27
  %43 = load i32, i32* %11, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %50

45:                                               ; preds = %42
  %46 = load %struct.inode*, %struct.inode** %6, align 8
  %47 = call i32 @drop_nlink(%struct.inode* %46)
  %48 = load %struct.inode*, %struct.inode** %8, align 8
  %49 = call i32 @inc_nlink(%struct.inode* %48)
  br label %50

50:                                               ; preds = %45, %42
  br label %51

51:                                               ; preds = %50, %41
  %52 = load i32, i32* @CURRENT_TIME, align 4
  %53 = load %struct.inode*, %struct.inode** %10, align 8
  %54 = getelementptr inbounds %struct.inode, %struct.inode* %53, i32 0, i32 0
  store i32 %52, i32* %54, align 4
  %55 = load %struct.inode*, %struct.inode** %8, align 8
  %56 = getelementptr inbounds %struct.inode, %struct.inode* %55, i32 0, i32 1
  store i32 %52, i32* %56, align 4
  %57 = load %struct.inode*, %struct.inode** %8, align 8
  %58 = getelementptr inbounds %struct.inode, %struct.inode* %57, i32 0, i32 0
  store i32 %52, i32* %58, align 4
  %59 = load %struct.inode*, %struct.inode** %6, align 8
  %60 = getelementptr inbounds %struct.inode, %struct.inode* %59, i32 0, i32 1
  store i32 %52, i32* %60, align 4
  %61 = load %struct.inode*, %struct.inode** %6, align 8
  %62 = getelementptr inbounds %struct.inode, %struct.inode* %61, i32 0, i32 0
  store i32 %52, i32* %62, align 4
  store i32 0, i32* %5, align 4
  br label %63

63:                                               ; preds = %51, %24
  %64 = load i32, i32* %5, align 4
  ret i32 %64
}

declare dso_local i32 @S_ISDIR(i32) #1

declare dso_local i32 @simple_empty(%struct.dentry*) #1

declare dso_local i32 @simple_unlink(%struct.inode*, %struct.dentry*) #1

declare dso_local i32 @drop_nlink(%struct.inode*) #1

declare dso_local i32 @inc_nlink(%struct.inode*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

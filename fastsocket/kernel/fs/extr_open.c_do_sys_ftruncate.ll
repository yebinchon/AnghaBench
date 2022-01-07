; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/extr_open.c_do_sys_ftruncate.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/extr_open.c_do_sys_ftruncate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32, i32 }
%struct.dentry = type { %struct.inode* }
%struct.file = type { i32, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.dentry* }

@EINVAL = common dso_local global i32 0, align 4
@EBADF = common dso_local global i32 0, align 4
@O_LARGEFILE = common dso_local global i32 0, align 4
@FMODE_WRITE = common dso_local global i32 0, align 4
@MAX_NON_LFS = common dso_local global i32 0, align 4
@EPERM = common dso_local global i32 0, align 4
@ATTR_MTIME = common dso_local global i32 0, align 4
@ATTR_CTIME = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i32, i32, i32)* @do_sys_ftruncate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @do_sys_ftruncate(i32 %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.inode*, align 8
  %8 = alloca %struct.dentry*, align 8
  %9 = alloca %struct.file*, align 8
  %10 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %11 = load i32, i32* @EINVAL, align 4
  %12 = sub nsw i32 0, %11
  store i32 %12, i32* %10, align 4
  %13 = load i32, i32* %5, align 4
  %14 = icmp slt i32 %13, 0
  br i1 %14, label %15, label %16

15:                                               ; preds = %3
  br label %110

16:                                               ; preds = %3
  %17 = load i32, i32* @EBADF, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %10, align 4
  %19 = load i32, i32* %4, align 4
  %20 = call %struct.file* @fget(i32 %19)
  store %struct.file* %20, %struct.file** %9, align 8
  %21 = load %struct.file*, %struct.file** %9, align 8
  %22 = icmp ne %struct.file* %21, null
  br i1 %22, label %24, label %23

23:                                               ; preds = %16
  br label %110

24:                                               ; preds = %16
  %25 = load %struct.file*, %struct.file** %9, align 8
  %26 = getelementptr inbounds %struct.file, %struct.file* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = load i32, i32* @O_LARGEFILE, align 4
  %29 = and i32 %27, %28
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %32

31:                                               ; preds = %24
  store i32 0, i32* %6, align 4
  br label %32

32:                                               ; preds = %31, %24
  %33 = load %struct.file*, %struct.file** %9, align 8
  %34 = getelementptr inbounds %struct.file, %struct.file* %33, i32 0, i32 2
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 0
  %36 = load %struct.dentry*, %struct.dentry** %35, align 8
  store %struct.dentry* %36, %struct.dentry** %8, align 8
  %37 = load %struct.dentry*, %struct.dentry** %8, align 8
  %38 = getelementptr inbounds %struct.dentry, %struct.dentry* %37, i32 0, i32 0
  %39 = load %struct.inode*, %struct.inode** %38, align 8
  store %struct.inode* %39, %struct.inode** %7, align 8
  %40 = load i32, i32* @EINVAL, align 4
  %41 = sub nsw i32 0, %40
  store i32 %41, i32* %10, align 4
  %42 = load %struct.inode*, %struct.inode** %7, align 8
  %43 = getelementptr inbounds %struct.inode, %struct.inode* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 4
  %45 = call i32 @S_ISREG(i32 %44)
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %54

47:                                               ; preds = %32
  %48 = load %struct.file*, %struct.file** %9, align 8
  %49 = getelementptr inbounds %struct.file, %struct.file* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 4
  %51 = load i32, i32* @FMODE_WRITE, align 4
  %52 = and i32 %50, %51
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %55, label %54

54:                                               ; preds = %47, %32
  br label %107

55:                                               ; preds = %47
  %56 = load i32, i32* @EINVAL, align 4
  %57 = sub nsw i32 0, %56
  store i32 %57, i32* %10, align 4
  %58 = load i32, i32* %6, align 4
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %65

60:                                               ; preds = %55
  %61 = load i32, i32* %5, align 4
  %62 = load i32, i32* @MAX_NON_LFS, align 4
  %63 = icmp sgt i32 %61, %62
  br i1 %63, label %64, label %65

64:                                               ; preds = %60
  br label %107

65:                                               ; preds = %60, %55
  %66 = load i32, i32* @EPERM, align 4
  %67 = sub nsw i32 0, %66
  store i32 %67, i32* %10, align 4
  %68 = load %struct.inode*, %struct.inode** %7, align 8
  %69 = call i64 @IS_APPEND(%struct.inode* %68)
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %71, label %72

71:                                               ; preds = %65
  br label %107

72:                                               ; preds = %65
  %73 = load %struct.inode*, %struct.inode** %7, align 8
  %74 = getelementptr inbounds %struct.inode, %struct.inode* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 4
  %76 = call i32 @sb_start_write(i32 %75)
  %77 = load %struct.inode*, %struct.inode** %7, align 8
  %78 = load %struct.file*, %struct.file** %9, align 8
  %79 = load i32, i32* %5, align 4
  %80 = call i32 @locks_verify_truncate(%struct.inode* %77, %struct.file* %78, i32 %79)
  store i32 %80, i32* %10, align 4
  %81 = load i32, i32* %10, align 4
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %91, label %83

83:                                               ; preds = %72
  %84 = load %struct.file*, %struct.file** %9, align 8
  %85 = getelementptr inbounds %struct.file, %struct.file* %84, i32 0, i32 2
  %86 = load i32, i32* %5, align 4
  %87 = load i32, i32* @ATTR_MTIME, align 4
  %88 = load i32, i32* @ATTR_CTIME, align 4
  %89 = or i32 %87, %88
  %90 = call i32 @security_path_truncate(%struct.TYPE_2__* %85, i32 %86, i32 %89)
  store i32 %90, i32* %10, align 4
  br label %91

91:                                               ; preds = %83, %72
  %92 = load i32, i32* %10, align 4
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %102, label %94

94:                                               ; preds = %91
  %95 = load %struct.dentry*, %struct.dentry** %8, align 8
  %96 = load i32, i32* %5, align 4
  %97 = load i32, i32* @ATTR_MTIME, align 4
  %98 = load i32, i32* @ATTR_CTIME, align 4
  %99 = or i32 %97, %98
  %100 = load %struct.file*, %struct.file** %9, align 8
  %101 = call i32 @do_truncate(%struct.dentry* %95, i32 %96, i32 %99, %struct.file* %100)
  store i32 %101, i32* %10, align 4
  br label %102

102:                                              ; preds = %94, %91
  %103 = load %struct.inode*, %struct.inode** %7, align 8
  %104 = getelementptr inbounds %struct.inode, %struct.inode* %103, i32 0, i32 0
  %105 = load i32, i32* %104, align 4
  %106 = call i32 @sb_end_write(i32 %105)
  br label %107

107:                                              ; preds = %102, %71, %64, %54
  %108 = load %struct.file*, %struct.file** %9, align 8
  %109 = call i32 @fput(%struct.file* %108)
  br label %110

110:                                              ; preds = %107, %23, %15
  %111 = load i32, i32* %10, align 4
  %112 = sext i32 %111 to i64
  ret i64 %112
}

declare dso_local %struct.file* @fget(i32) #1

declare dso_local i32 @S_ISREG(i32) #1

declare dso_local i64 @IS_APPEND(%struct.inode*) #1

declare dso_local i32 @sb_start_write(i32) #1

declare dso_local i32 @locks_verify_truncate(%struct.inode*, %struct.file*, i32) #1

declare dso_local i32 @security_path_truncate(%struct.TYPE_2__*, i32, i32) #1

declare dso_local i32 @do_truncate(%struct.dentry*, i32, i32, %struct.file*) #1

declare dso_local i32 @sb_end_write(i32) #1

declare dso_local i32 @fput(%struct.file*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

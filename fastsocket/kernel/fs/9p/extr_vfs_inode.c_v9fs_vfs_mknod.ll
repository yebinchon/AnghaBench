; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/9p/extr_vfs_inode.c_v9fs_vfs_mknod.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/9p/extr_vfs_inode.c_v9fs_vfs_mknod.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.dentry = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@P9_DEBUG_VFS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [38 x i8] c" %lu,%s mode: %x MAJOR: %u MINOR: %u\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [8 x i8] c"b %u %u\00", align 1
@.str.2 = private unnamed_addr constant [8 x i8] c"c %u %u\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inode*, %struct.dentry*, i32, i32)* @v9fs_vfs_mknod to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @v9fs_vfs_mknod(%struct.inode* %0, %struct.dentry* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.inode*, align 8
  %7 = alloca %struct.dentry*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  store %struct.inode* %0, %struct.inode** %6, align 8
  store %struct.dentry* %1, %struct.dentry** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %12 = load i32, i32* @P9_DEBUG_VFS, align 4
  %13 = load %struct.inode*, %struct.inode** %6, align 8
  %14 = getelementptr inbounds %struct.inode, %struct.inode* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = load %struct.dentry*, %struct.dentry** %7, align 8
  %17 = getelementptr inbounds %struct.dentry, %struct.dentry* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = load i32, i32* %8, align 4
  %21 = load i32, i32* %9, align 4
  %22 = call i32 @MAJOR(i32 %21)
  %23 = load i32, i32* %9, align 4
  %24 = call i32 @MINOR(i32 %23)
  %25 = call i32 @P9_DPRINTK(i32 %12, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0), i32 %15, i32 %19, i32 %20, i32 %22, i32 %24)
  %26 = load i32, i32* %9, align 4
  %27 = call i32 @new_valid_dev(i32 %26)
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %32, label %29

29:                                               ; preds = %4
  %30 = load i32, i32* @EINVAL, align 4
  %31 = sub nsw i32 0, %30
  store i32 %31, i32* %5, align 4
  br label %83

32:                                               ; preds = %4
  %33 = call i8* (...) @__getname()
  store i8* %33, i8** %11, align 8
  %34 = load i8*, i8** %11, align 8
  %35 = icmp ne i8* %34, null
  br i1 %35, label %39, label %36

36:                                               ; preds = %32
  %37 = load i32, i32* @ENOMEM, align 4
  %38 = sub nsw i32 0, %37
  store i32 %38, i32* %5, align 4
  br label %83

39:                                               ; preds = %32
  %40 = load i32, i32* %8, align 4
  %41 = call i64 @S_ISBLK(i32 %40)
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %50

43:                                               ; preds = %39
  %44 = load i8*, i8** %11, align 8
  %45 = load i32, i32* %9, align 4
  %46 = call i32 @MAJOR(i32 %45)
  %47 = load i32, i32* %9, align 4
  %48 = call i32 @MINOR(i32 %47)
  %49 = call i32 @sprintf(i8* %44, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i32 %46, i32 %48)
  br label %74

50:                                               ; preds = %39
  %51 = load i32, i32* %8, align 4
  %52 = call i64 @S_ISCHR(i32 %51)
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %61

54:                                               ; preds = %50
  %55 = load i8*, i8** %11, align 8
  %56 = load i32, i32* %9, align 4
  %57 = call i32 @MAJOR(i32 %56)
  %58 = load i32, i32* %9, align 4
  %59 = call i32 @MINOR(i32 %58)
  %60 = call i32 @sprintf(i8* %55, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0), i32 %57, i32 %59)
  br label %73

61:                                               ; preds = %50
  %62 = load i32, i32* %8, align 4
  %63 = call i64 @S_ISFIFO(i32 %62)
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %65, label %67

65:                                               ; preds = %61
  %66 = load i8*, i8** %11, align 8
  store i8 0, i8* %66, align 1
  br label %72

67:                                               ; preds = %61
  %68 = load i8*, i8** %11, align 8
  %69 = call i32 @__putname(i8* %68)
  %70 = load i32, i32* @EINVAL, align 4
  %71 = sub nsw i32 0, %70
  store i32 %71, i32* %5, align 4
  br label %83

72:                                               ; preds = %65
  br label %73

73:                                               ; preds = %72, %54
  br label %74

74:                                               ; preds = %73, %43
  %75 = load %struct.inode*, %struct.inode** %6, align 8
  %76 = load %struct.dentry*, %struct.dentry** %7, align 8
  %77 = load i32, i32* %8, align 4
  %78 = load i8*, i8** %11, align 8
  %79 = call i32 @v9fs_vfs_mkspecial(%struct.inode* %75, %struct.dentry* %76, i32 %77, i8* %78)
  store i32 %79, i32* %10, align 4
  %80 = load i8*, i8** %11, align 8
  %81 = call i32 @__putname(i8* %80)
  %82 = load i32, i32* %10, align 4
  store i32 %82, i32* %5, align 4
  br label %83

83:                                               ; preds = %74, %67, %36, %29
  %84 = load i32, i32* %5, align 4
  ret i32 %84
}

declare dso_local i32 @P9_DPRINTK(i32, i8*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @MAJOR(i32) #1

declare dso_local i32 @MINOR(i32) #1

declare dso_local i32 @new_valid_dev(i32) #1

declare dso_local i8* @__getname(...) #1

declare dso_local i64 @S_ISBLK(i32) #1

declare dso_local i32 @sprintf(i8*, i8*, i32, i32) #1

declare dso_local i64 @S_ISCHR(i32) #1

declare dso_local i64 @S_ISFIFO(i32) #1

declare dso_local i32 @__putname(i8*) #1

declare dso_local i32 @v9fs_vfs_mkspecial(%struct.inode*, %struct.dentry*, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

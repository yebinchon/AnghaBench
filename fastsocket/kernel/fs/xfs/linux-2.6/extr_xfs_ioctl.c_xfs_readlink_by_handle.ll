; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/xfs/linux-2.6/extr_xfs_ioctl.c_xfs_readlink_by_handle.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/xfs/linux-2.6/extr_xfs_ioctl.c_xfs_readlink_by_handle.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { i32 }
%struct.TYPE_5__ = type { i32, i32 }
%struct.dentry = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32 }

@CAP_SYS_ADMIN = common dso_local global i32 0, align 4
@EPERM = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@EFAULT = common dso_local global i32 0, align 4
@MAXPATHLEN = common dso_local global i64 0, align 8
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @xfs_readlink_by_handle(%struct.file* %0, %struct.TYPE_5__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.file*, align 8
  %5 = alloca %struct.TYPE_5__*, align 8
  %6 = alloca %struct.dentry*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  store %struct.file* %0, %struct.file** %4, align 8
  store %struct.TYPE_5__* %1, %struct.TYPE_5__** %5, align 8
  %10 = load i32, i32* @CAP_SYS_ADMIN, align 4
  %11 = call i32 @capable(i32 %10)
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %17, label %13

13:                                               ; preds = %2
  %14 = load i32, i32* @EPERM, align 4
  %15 = call i32 @XFS_ERROR(i32 %14)
  %16 = sub nsw i32 0, %15
  store i32 %16, i32* %3, align 4
  br label %89

17:                                               ; preds = %2
  %18 = load %struct.file*, %struct.file** %4, align 8
  %19 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %20 = call %struct.dentry* @xfs_handlereq_to_dentry(%struct.file* %18, %struct.TYPE_5__* %19)
  store %struct.dentry* %20, %struct.dentry** %6, align 8
  %21 = load %struct.dentry*, %struct.dentry** %6, align 8
  %22 = call i64 @IS_ERR(%struct.dentry* %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %27

24:                                               ; preds = %17
  %25 = load %struct.dentry*, %struct.dentry** %6, align 8
  %26 = call i32 @PTR_ERR(%struct.dentry* %25)
  store i32 %26, i32* %3, align 4
  br label %89

27:                                               ; preds = %17
  %28 = load %struct.dentry*, %struct.dentry** %6, align 8
  %29 = getelementptr inbounds %struct.dentry, %struct.dentry* %28, i32 0, i32 0
  %30 = load %struct.TYPE_6__*, %struct.TYPE_6__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = call i32 @S_ISLNK(i32 %32)
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %39, label %35

35:                                               ; preds = %27
  %36 = load i32, i32* @EINVAL, align 4
  %37 = call i32 @XFS_ERROR(i32 %36)
  %38 = sub nsw i32 0, %37
  store i32 %38, i32* %9, align 4
  br label %85

39:                                               ; preds = %27
  %40 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %41 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 4
  %43 = call i64 @copy_from_user(i32* %7, i32 %42, i32 4)
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %49

45:                                               ; preds = %39
  %46 = load i32, i32* @EFAULT, align 4
  %47 = call i32 @XFS_ERROR(i32 %46)
  %48 = sub nsw i32 0, %47
  store i32 %48, i32* %9, align 4
  br label %85

49:                                               ; preds = %39
  %50 = load i64, i64* @MAXPATHLEN, align 8
  %51 = add nsw i64 %50, 1
  %52 = load i32, i32* @GFP_KERNEL, align 4
  %53 = call i8* @kmalloc(i64 %51, i32 %52)
  store i8* %53, i8** %8, align 8
  %54 = load i8*, i8** %8, align 8
  %55 = icmp ne i8* %54, null
  br i1 %55, label %60, label %56

56:                                               ; preds = %49
  %57 = load i32, i32* @ENOMEM, align 4
  %58 = call i32 @XFS_ERROR(i32 %57)
  %59 = sub nsw i32 0, %58
  store i32 %59, i32* %9, align 4
  br label %85

60:                                               ; preds = %49
  %61 = load %struct.dentry*, %struct.dentry** %6, align 8
  %62 = getelementptr inbounds %struct.dentry, %struct.dentry* %61, i32 0, i32 0
  %63 = load %struct.TYPE_6__*, %struct.TYPE_6__** %62, align 8
  %64 = call i32 @XFS_I(%struct.TYPE_6__* %63)
  %65 = load i8*, i8** %8, align 8
  %66 = call i32 @xfs_readlink(i32 %64, i8* %65)
  %67 = sub nsw i32 0, %66
  store i32 %67, i32* %9, align 4
  %68 = load i32, i32* %9, align 4
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %71

70:                                               ; preds = %60
  br label %82

71:                                               ; preds = %60
  %72 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %73 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 4
  %75 = load i32, i32* %7, align 4
  %76 = load i8*, i8** %8, align 8
  %77 = call i32 @do_readlink(i32 %74, i32 %75, i8* %76)
  store i32 %77, i32* %9, align 4
  %78 = load i32, i32* %9, align 4
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %80, label %81

80:                                               ; preds = %71
  br label %82

81:                                               ; preds = %71
  br label %82

82:                                               ; preds = %81, %80, %70
  %83 = load i8*, i8** %8, align 8
  %84 = call i32 @kfree(i8* %83)
  br label %85

85:                                               ; preds = %82, %56, %45, %35
  %86 = load %struct.dentry*, %struct.dentry** %6, align 8
  %87 = call i32 @dput(%struct.dentry* %86)
  %88 = load i32, i32* %9, align 4
  store i32 %88, i32* %3, align 4
  br label %89

89:                                               ; preds = %85, %24, %13
  %90 = load i32, i32* %3, align 4
  ret i32 %90
}

declare dso_local i32 @capable(i32) #1

declare dso_local i32 @XFS_ERROR(i32) #1

declare dso_local %struct.dentry* @xfs_handlereq_to_dentry(%struct.file*, %struct.TYPE_5__*) #1

declare dso_local i64 @IS_ERR(%struct.dentry*) #1

declare dso_local i32 @PTR_ERR(%struct.dentry*) #1

declare dso_local i32 @S_ISLNK(i32) #1

declare dso_local i64 @copy_from_user(i32*, i32, i32) #1

declare dso_local i8* @kmalloc(i64, i32) #1

declare dso_local i32 @xfs_readlink(i32, i8*) #1

declare dso_local i32 @XFS_I(%struct.TYPE_6__*) #1

declare dso_local i32 @do_readlink(i32, i32, i8*) #1

declare dso_local i32 @kfree(i8*) #1

declare dso_local i32 @dput(%struct.dentry*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

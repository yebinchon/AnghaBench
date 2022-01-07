; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/core/extr_inode.c_fs_create_by_name.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/core/extr_inode.c_fs_create_by_name.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { %struct.dentry* }
%struct.dentry = type { %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i32 }

@usbfs_mount = common dso_local global %struct.TYPE_6__* null, align 8
@.str = private unnamed_addr constant [27 x i8] c"Ah! can not find a parent!\00", align 1
@EFAULT = common dso_local global i32 0, align 4
@S_IFMT = common dso_local global i32 0, align 4
@S_IFDIR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i32, %struct.dentry*, %struct.dentry**)* @fs_create_by_name to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fs_create_by_name(i8* %0, i32 %1, %struct.dentry* %2, %struct.dentry** %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.dentry*, align 8
  %9 = alloca %struct.dentry**, align 8
  %10 = alloca i32, align 4
  store i8* %0, i8** %6, align 8
  store i32 %1, i32* %7, align 4
  store %struct.dentry* %2, %struct.dentry** %8, align 8
  store %struct.dentry** %3, %struct.dentry*** %9, align 8
  store i32 0, i32* %10, align 4
  %11 = load %struct.dentry*, %struct.dentry** %8, align 8
  %12 = icmp ne %struct.dentry* %11, null
  br i1 %12, label %28, label %13

13:                                               ; preds = %4
  %14 = load %struct.TYPE_6__*, %struct.TYPE_6__** @usbfs_mount, align 8
  %15 = icmp ne %struct.TYPE_6__* %14, null
  br i1 %15, label %16, label %27

16:                                               ; preds = %13
  %17 = load %struct.TYPE_6__*, %struct.TYPE_6__** @usbfs_mount, align 8
  %18 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %17, i32 0, i32 0
  %19 = load %struct.TYPE_5__*, %struct.TYPE_5__** %18, align 8
  %20 = icmp ne %struct.TYPE_5__* %19, null
  br i1 %20, label %21, label %27

21:                                               ; preds = %16
  %22 = load %struct.TYPE_6__*, %struct.TYPE_6__** @usbfs_mount, align 8
  %23 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %22, i32 0, i32 0
  %24 = load %struct.TYPE_5__*, %struct.TYPE_5__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %24, i32 0, i32 0
  %26 = load %struct.dentry*, %struct.dentry** %25, align 8
  store %struct.dentry* %26, %struct.dentry** %8, align 8
  br label %27

27:                                               ; preds = %21, %16, %13
  br label %28

28:                                               ; preds = %27, %4
  %29 = load %struct.dentry*, %struct.dentry** %8, align 8
  %30 = icmp ne %struct.dentry* %29, null
  br i1 %30, label %35, label %31

31:                                               ; preds = %28
  %32 = call i32 @dbg(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0))
  %33 = load i32, i32* @EFAULT, align 4
  %34 = sub nsw i32 0, %33
  store i32 %34, i32* %5, align 4
  br label %86

35:                                               ; preds = %28
  %36 = load %struct.dentry**, %struct.dentry*** %9, align 8
  store %struct.dentry* null, %struct.dentry** %36, align 8
  %37 = load %struct.dentry*, %struct.dentry** %8, align 8
  %38 = getelementptr inbounds %struct.dentry, %struct.dentry* %37, i32 0, i32 0
  %39 = load %struct.TYPE_7__*, %struct.TYPE_7__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %39, i32 0, i32 0
  %41 = call i32 @mutex_lock(i32* %40)
  %42 = load i8*, i8** %6, align 8
  %43 = load %struct.dentry*, %struct.dentry** %8, align 8
  %44 = load i8*, i8** %6, align 8
  %45 = call i32 @strlen(i8* %44)
  %46 = call %struct.dentry* @lookup_one_len(i8* %42, %struct.dentry* %43, i32 %45)
  %47 = load %struct.dentry**, %struct.dentry*** %9, align 8
  store %struct.dentry* %46, %struct.dentry** %47, align 8
  %48 = load %struct.dentry**, %struct.dentry*** %9, align 8
  %49 = load %struct.dentry*, %struct.dentry** %48, align 8
  %50 = call i32 @IS_ERR(%struct.dentry* %49)
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %75, label %52

52:                                               ; preds = %35
  %53 = load i32, i32* %7, align 4
  %54 = load i32, i32* @S_IFMT, align 4
  %55 = and i32 %53, %54
  %56 = load i32, i32* @S_IFDIR, align 4
  %57 = icmp eq i32 %55, %56
  br i1 %57, label %58, label %66

58:                                               ; preds = %52
  %59 = load %struct.dentry*, %struct.dentry** %8, align 8
  %60 = getelementptr inbounds %struct.dentry, %struct.dentry* %59, i32 0, i32 0
  %61 = load %struct.TYPE_7__*, %struct.TYPE_7__** %60, align 8
  %62 = load %struct.dentry**, %struct.dentry*** %9, align 8
  %63 = load %struct.dentry*, %struct.dentry** %62, align 8
  %64 = load i32, i32* %7, align 4
  %65 = call i32 @usbfs_mkdir(%struct.TYPE_7__* %61, %struct.dentry* %63, i32 %64)
  store i32 %65, i32* %10, align 4
  br label %74

66:                                               ; preds = %52
  %67 = load %struct.dentry*, %struct.dentry** %8, align 8
  %68 = getelementptr inbounds %struct.dentry, %struct.dentry* %67, i32 0, i32 0
  %69 = load %struct.TYPE_7__*, %struct.TYPE_7__** %68, align 8
  %70 = load %struct.dentry**, %struct.dentry*** %9, align 8
  %71 = load %struct.dentry*, %struct.dentry** %70, align 8
  %72 = load i32, i32* %7, align 4
  %73 = call i32 @usbfs_create(%struct.TYPE_7__* %69, %struct.dentry* %71, i32 %72)
  store i32 %73, i32* %10, align 4
  br label %74

74:                                               ; preds = %66, %58
  br label %79

75:                                               ; preds = %35
  %76 = load %struct.dentry**, %struct.dentry*** %9, align 8
  %77 = load %struct.dentry*, %struct.dentry** %76, align 8
  %78 = call i32 @PTR_ERR(%struct.dentry* %77)
  store i32 %78, i32* %10, align 4
  br label %79

79:                                               ; preds = %75, %74
  %80 = load %struct.dentry*, %struct.dentry** %8, align 8
  %81 = getelementptr inbounds %struct.dentry, %struct.dentry* %80, i32 0, i32 0
  %82 = load %struct.TYPE_7__*, %struct.TYPE_7__** %81, align 8
  %83 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %82, i32 0, i32 0
  %84 = call i32 @mutex_unlock(i32* %83)
  %85 = load i32, i32* %10, align 4
  store i32 %85, i32* %5, align 4
  br label %86

86:                                               ; preds = %79, %31
  %87 = load i32, i32* %5, align 4
  ret i32 %87
}

declare dso_local i32 @dbg(i8*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local %struct.dentry* @lookup_one_len(i8*, %struct.dentry*, i32) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @IS_ERR(%struct.dentry*) #1

declare dso_local i32 @usbfs_mkdir(%struct.TYPE_7__*, %struct.dentry*, i32) #1

declare dso_local i32 @usbfs_create(%struct.TYPE_7__*, %struct.dentry*, i32) #1

declare dso_local i32 @PTR_ERR(%struct.dentry*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

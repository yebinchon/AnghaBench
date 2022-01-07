; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/9p/extr_vfs_inode.c_v9fs_vfs_follow_link.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/9p/extr_vfs_inode.c_v9fs_vfs_follow_link.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dentry = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.nameidata = type { i32 }

@P9_DEBUG_VFS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c"%s n\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@PATH_MAX = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (%struct.dentry*, %struct.nameidata*)* @v9fs_vfs_follow_link to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @v9fs_vfs_follow_link(%struct.dentry* %0, %struct.nameidata* %1) #0 {
  %3 = alloca %struct.dentry*, align 8
  %4 = alloca %struct.nameidata*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  store %struct.dentry* %0, %struct.dentry** %3, align 8
  store %struct.nameidata* %1, %struct.nameidata** %4, align 8
  store i32 0, i32* %5, align 4
  %7 = call i8* (...) @__getname()
  store i8* %7, i8** %6, align 8
  %8 = load i32, i32* @P9_DEBUG_VFS, align 4
  %9 = load %struct.dentry*, %struct.dentry** %3, align 8
  %10 = getelementptr inbounds %struct.dentry, %struct.dentry* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = call i32 @P9_DPRINTK(i32 %8, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i32 %12)
  %14 = load i8*, i8** %6, align 8
  %15 = icmp ne i8* %14, null
  br i1 %15, label %20, label %16

16:                                               ; preds = %2
  %17 = load i32, i32* @ENOMEM, align 4
  %18 = sub nsw i32 0, %17
  %19 = call i8* @ERR_PTR(i32 %18)
  store i8* %19, i8** %6, align 8
  br label %40

20:                                               ; preds = %2
  %21 = load %struct.dentry*, %struct.dentry** %3, align 8
  %22 = load i8*, i8** %6, align 8
  %23 = load i64, i64* @PATH_MAX, align 8
  %24 = call i32 @v9fs_readlink(%struct.dentry* %21, i8* %22, i64 %23)
  store i32 %24, i32* %5, align 4
  %25 = load i32, i32* %5, align 4
  %26 = icmp slt i32 %25, 0
  br i1 %26, label %27, label %32

27:                                               ; preds = %20
  %28 = load i8*, i8** %6, align 8
  %29 = call i32 @__putname(i8* %28)
  %30 = load i32, i32* %5, align 4
  %31 = call i8* @ERR_PTR(i32 %30)
  store i8* %31, i8** %6, align 8
  br label %39

32:                                               ; preds = %20
  %33 = load i8*, i8** %6, align 8
  %34 = load i32, i32* %5, align 4
  %35 = load i64, i64* @PATH_MAX, align 8
  %36 = sub nsw i64 %35, 1
  %37 = call i64 @min(i32 %34, i64 %36)
  %38 = getelementptr inbounds i8, i8* %33, i64 %37
  store i8 0, i8* %38, align 1
  br label %39

39:                                               ; preds = %32, %27
  br label %40

40:                                               ; preds = %39, %16
  %41 = load %struct.nameidata*, %struct.nameidata** %4, align 8
  %42 = load i8*, i8** %6, align 8
  %43 = call i32 @nd_set_link(%struct.nameidata* %41, i8* %42)
  ret i8* null
}

declare dso_local i8* @__getname(...) #1

declare dso_local i32 @P9_DPRINTK(i32, i8*, i32) #1

declare dso_local i8* @ERR_PTR(i32) #1

declare dso_local i32 @v9fs_readlink(%struct.dentry*, i8*, i64) #1

declare dso_local i32 @__putname(i8*) #1

declare dso_local i64 @min(i32, i64) #1

declare dso_local i32 @nd_set_link(%struct.nameidata*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

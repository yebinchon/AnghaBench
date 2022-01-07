; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/nfs/extr_dir.c_nfs_create.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/nfs/extr_dir.c_nfs_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32, %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32 }
%struct.dentry = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32 }
%struct.nameidata = type { i32, %struct.TYPE_9__ }
%struct.TYPE_9__ = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32 }
%struct.iattr = type { i32, i32 }
%struct.TYPE_10__ = type { i32 (%struct.inode*, %struct.dentry*, %struct.iattr*, i32, i32*)* }

@VFS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"NFS: create(%s/%ld), %s\0A\00", align 1
@ATTR_MODE = common dso_local global i32 0, align 4
@LOOKUP_CREATE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inode*, %struct.dentry*, i32, %struct.nameidata*)* @nfs_create to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nfs_create(%struct.inode* %0, %struct.dentry* %1, i32 %2, %struct.nameidata* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.inode*, align 8
  %7 = alloca %struct.dentry*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.nameidata*, align 8
  %10 = alloca %struct.iattr, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.inode* %0, %struct.inode** %6, align 8
  store %struct.dentry* %1, %struct.dentry** %7, align 8
  store i32 %2, i32* %8, align 4
  store %struct.nameidata* %3, %struct.nameidata** %9, align 8
  store i32 0, i32* %12, align 4
  %13 = load i32, i32* @VFS, align 4
  %14 = load %struct.inode*, %struct.inode** %6, align 8
  %15 = getelementptr inbounds %struct.inode, %struct.inode* %14, i32 0, i32 1
  %16 = load %struct.TYPE_6__*, %struct.TYPE_6__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = load %struct.inode*, %struct.inode** %6, align 8
  %20 = getelementptr inbounds %struct.inode, %struct.inode* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = load %struct.dentry*, %struct.dentry** %7, align 8
  %23 = getelementptr inbounds %struct.dentry, %struct.dentry* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = call i32 @dfprintk(i32 %13, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 %18, i32 %21, i32 %25)
  %27 = load i32, i32* %8, align 4
  %28 = getelementptr inbounds %struct.iattr, %struct.iattr* %10, i32 0, i32 0
  store i32 %27, i32* %28, align 4
  %29 = load i32, i32* @ATTR_MODE, align 4
  %30 = getelementptr inbounds %struct.iattr, %struct.iattr* %10, i32 0, i32 1
  store i32 %29, i32* %30, align 4
  %31 = load %struct.nameidata*, %struct.nameidata** %9, align 8
  %32 = getelementptr inbounds %struct.nameidata, %struct.nameidata* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = load i32, i32* @LOOKUP_CREATE, align 4
  %35 = and i32 %33, %34
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %43

37:                                               ; preds = %4
  %38 = load %struct.nameidata*, %struct.nameidata** %9, align 8
  %39 = getelementptr inbounds %struct.nameidata, %struct.nameidata* %38, i32 0, i32 1
  %40 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  store i32 %42, i32* %12, align 4
  br label %43

43:                                               ; preds = %37, %4
  %44 = load %struct.inode*, %struct.inode** %6, align 8
  %45 = call %struct.TYPE_10__* @NFS_PROTO(%struct.inode* %44)
  %46 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %45, i32 0, i32 0
  %47 = load i32 (%struct.inode*, %struct.dentry*, %struct.iattr*, i32, i32*)*, i32 (%struct.inode*, %struct.dentry*, %struct.iattr*, i32, i32*)** %46, align 8
  %48 = load %struct.inode*, %struct.inode** %6, align 8
  %49 = load %struct.dentry*, %struct.dentry** %7, align 8
  %50 = load i32, i32* %12, align 4
  %51 = call i32 %47(%struct.inode* %48, %struct.dentry* %49, %struct.iattr* %10, i32 %50, i32* null)
  store i32 %51, i32* %11, align 4
  %52 = load i32, i32* %11, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %55

54:                                               ; preds = %43
  br label %56

55:                                               ; preds = %43
  store i32 0, i32* %5, align 4
  br label %60

56:                                               ; preds = %54
  %57 = load %struct.dentry*, %struct.dentry** %7, align 8
  %58 = call i32 @d_drop(%struct.dentry* %57)
  %59 = load i32, i32* %11, align 4
  store i32 %59, i32* %5, align 4
  br label %60

60:                                               ; preds = %56, %55
  %61 = load i32, i32* %5, align 4
  ret i32 %61
}

declare dso_local i32 @dfprintk(i32, i8*, i32, i32, i32) #1

declare dso_local %struct.TYPE_10__* @NFS_PROTO(%struct.inode*) #1

declare dso_local i32 @d_drop(%struct.dentry*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

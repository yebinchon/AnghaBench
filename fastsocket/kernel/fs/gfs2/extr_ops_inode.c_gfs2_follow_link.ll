; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/gfs2/extr_ops_inode.c_gfs2_follow_link.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/gfs2/extr_ops_inode.c_gfs2_follow_link.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dentry = type { i32 }
%struct.nameidata = type { i32 }
%struct.gfs2_inode = type { i32 }

@GFS2_FAST_NAME_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (%struct.dentry*, %struct.nameidata*)* @gfs2_follow_link to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @gfs2_follow_link(%struct.dentry* %0, %struct.nameidata* %1) #0 {
  %3 = alloca %struct.dentry*, align 8
  %4 = alloca %struct.nameidata*, align 8
  %5 = alloca %struct.gfs2_inode*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.dentry* %0, %struct.dentry** %3, align 8
  store %struct.nameidata* %1, %struct.nameidata** %4, align 8
  %11 = load %struct.dentry*, %struct.dentry** %3, align 8
  %12 = getelementptr inbounds %struct.dentry, %struct.dentry* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = call %struct.gfs2_inode* @GFS2_I(i32 %13)
  store %struct.gfs2_inode* %14, %struct.gfs2_inode** %5, align 8
  %15 = load i32, i32* @GFS2_FAST_NAME_SIZE, align 4
  %16 = zext i32 %15 to i64
  %17 = call i8* @llvm.stacksave()
  store i8* %17, i8** %6, align 8
  %18 = alloca i8, i64 %16, align 16
  store i64 %16, i64* %7, align 8
  store i8* %18, i8** %8, align 8
  %19 = load i32, i32* @GFS2_FAST_NAME_SIZE, align 4
  store i32 %19, i32* %9, align 4
  %20 = load %struct.gfs2_inode*, %struct.gfs2_inode** %5, align 8
  %21 = call i32 @gfs2_readlinki(%struct.gfs2_inode* %20, i8** %8, i32* %9)
  store i32 %21, i32* %10, align 4
  %22 = load i32, i32* %10, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %34, label %24

24:                                               ; preds = %2
  %25 = load %struct.nameidata*, %struct.nameidata** %4, align 8
  %26 = load i8*, i8** %8, align 8
  %27 = call i32 @vfs_follow_link(%struct.nameidata* %25, i8* %26)
  store i32 %27, i32* %10, align 4
  %28 = load i8*, i8** %8, align 8
  %29 = icmp ne i8* %28, %18
  br i1 %29, label %30, label %33

30:                                               ; preds = %24
  %31 = load i8*, i8** %8, align 8
  %32 = call i32 @kfree(i8* %31)
  br label %33

33:                                               ; preds = %30, %24
  br label %38

34:                                               ; preds = %2
  %35 = load %struct.nameidata*, %struct.nameidata** %4, align 8
  %36 = getelementptr inbounds %struct.nameidata, %struct.nameidata* %35, i32 0, i32 0
  %37 = call i32 @path_put(i32* %36)
  br label %38

38:                                               ; preds = %34, %33
  %39 = load i32, i32* %10, align 4
  %40 = call i8* @ERR_PTR(i32 %39)
  %41 = load i8*, i8** %6, align 8
  call void @llvm.stackrestore(i8* %41)
  ret i8* %40
}

declare dso_local %struct.gfs2_inode* @GFS2_I(i32) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32 @gfs2_readlinki(%struct.gfs2_inode*, i8**, i32*) #1

declare dso_local i32 @vfs_follow_link(%struct.nameidata*, i8*) #1

declare dso_local i32 @kfree(i8*) #1

declare dso_local i32 @path_put(i32*) #1

declare dso_local i8* @ERR_PTR(i32) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

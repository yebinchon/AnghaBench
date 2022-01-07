; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/gfs2/extr_acl.c_gfs2_acl_get.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/gfs2/extr_acl.c_gfs2_acl_get.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.posix_acl = type { i32 }
%struct.gfs2_inode = type { i32, i32 }

@ACL_NOT_CACHED = common dso_local global %struct.posix_acl* null, align 8
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.posix_acl* (%struct.gfs2_inode*, i32)* @gfs2_acl_get to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.posix_acl* @gfs2_acl_get(%struct.gfs2_inode* %0, i32 %1) #0 {
  %3 = alloca %struct.posix_acl*, align 8
  %4 = alloca %struct.gfs2_inode*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.posix_acl*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  store %struct.gfs2_inode* %0, %struct.gfs2_inode** %4, align 8
  store i32 %1, i32* %5, align 4
  %10 = load %struct.gfs2_inode*, %struct.gfs2_inode** %4, align 8
  %11 = getelementptr inbounds %struct.gfs2_inode, %struct.gfs2_inode* %10, i32 0, i32 1
  %12 = load i32, i32* %11, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %15, label %14

14:                                               ; preds = %2
  store %struct.posix_acl* null, %struct.posix_acl** %3, align 8
  br label %54

15:                                               ; preds = %2
  %16 = load %struct.gfs2_inode*, %struct.gfs2_inode** %4, align 8
  %17 = getelementptr inbounds %struct.gfs2_inode, %struct.gfs2_inode* %16, i32 0, i32 0
  %18 = load i32, i32* %5, align 4
  %19 = call %struct.posix_acl* @get_cached_acl(i32* %17, i32 %18)
  store %struct.posix_acl* %19, %struct.posix_acl** %6, align 8
  %20 = load %struct.posix_acl*, %struct.posix_acl** %6, align 8
  %21 = load %struct.posix_acl*, %struct.posix_acl** @ACL_NOT_CACHED, align 8
  %22 = icmp ne %struct.posix_acl* %20, %21
  br i1 %22, label %23, label %25

23:                                               ; preds = %15
  %24 = load %struct.posix_acl*, %struct.posix_acl** %6, align 8
  store %struct.posix_acl* %24, %struct.posix_acl** %3, align 8
  br label %54

25:                                               ; preds = %15
  %26 = load i32, i32* %5, align 4
  %27 = call i8* @gfs2_acl_name(i32 %26)
  store i8* %27, i8** %7, align 8
  %28 = load i8*, i8** %7, align 8
  %29 = icmp eq i8* %28, null
  br i1 %29, label %30, label %34

30:                                               ; preds = %25
  %31 = load i32, i32* @EINVAL, align 4
  %32 = sub nsw i32 0, %31
  %33 = call %struct.posix_acl* @ERR_PTR(i32 %32)
  store %struct.posix_acl* %33, %struct.posix_acl** %3, align 8
  br label %54

34:                                               ; preds = %25
  %35 = load %struct.gfs2_inode*, %struct.gfs2_inode** %4, align 8
  %36 = load i8*, i8** %7, align 8
  %37 = call i32 @gfs2_xattr_acl_get(%struct.gfs2_inode* %35, i8* %36, i8** %8)
  store i32 %37, i32* %9, align 4
  %38 = load i32, i32* %9, align 4
  %39 = icmp slt i32 %38, 0
  br i1 %39, label %40, label %43

40:                                               ; preds = %34
  %41 = load i32, i32* %9, align 4
  %42 = call %struct.posix_acl* @ERR_PTR(i32 %41)
  store %struct.posix_acl* %42, %struct.posix_acl** %3, align 8
  br label %54

43:                                               ; preds = %34
  %44 = load i32, i32* %9, align 4
  %45 = icmp eq i32 %44, 0
  br i1 %45, label %46, label %47

46:                                               ; preds = %43
  store %struct.posix_acl* null, %struct.posix_acl** %3, align 8
  br label %54

47:                                               ; preds = %43
  %48 = load i8*, i8** %8, align 8
  %49 = load i32, i32* %9, align 4
  %50 = call %struct.posix_acl* @posix_acl_from_xattr(i8* %48, i32 %49)
  store %struct.posix_acl* %50, %struct.posix_acl** %6, align 8
  %51 = load i8*, i8** %8, align 8
  %52 = call i32 @kfree(i8* %51)
  %53 = load %struct.posix_acl*, %struct.posix_acl** %6, align 8
  store %struct.posix_acl* %53, %struct.posix_acl** %3, align 8
  br label %54

54:                                               ; preds = %47, %46, %40, %30, %23, %14
  %55 = load %struct.posix_acl*, %struct.posix_acl** %3, align 8
  ret %struct.posix_acl* %55
}

declare dso_local %struct.posix_acl* @get_cached_acl(i32*, i32) #1

declare dso_local i8* @gfs2_acl_name(i32) #1

declare dso_local %struct.posix_acl* @ERR_PTR(i32) #1

declare dso_local i32 @gfs2_xattr_acl_get(%struct.gfs2_inode*, i8*, i8**) #1

declare dso_local %struct.posix_acl* @posix_acl_from_xattr(i8*, i32) #1

declare dso_local i32 @kfree(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

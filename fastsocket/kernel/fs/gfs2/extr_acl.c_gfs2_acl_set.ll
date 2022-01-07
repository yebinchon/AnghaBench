; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/gfs2/extr_acl.c_gfs2_acl_set.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/gfs2/extr_acl.c_gfs2_acl_set.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.posix_acl = type { i32 }

@GFP_NOFS = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@GFS2_EATYPE_SYS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inode*, i32, %struct.posix_acl*)* @gfs2_acl_set to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gfs2_acl_set(%struct.inode* %0, i32 %1, %struct.posix_acl* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.inode*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.posix_acl*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  store %struct.inode* %0, %struct.inode** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.posix_acl* %2, %struct.posix_acl** %7, align 8
  %12 = load i32, i32* %6, align 4
  %13 = call i8* @gfs2_acl_name(i32 %12)
  store i8* %13, i8** %11, align 8
  %14 = load i8*, i8** %11, align 8
  %15 = icmp eq i8* %14, null
  %16 = zext i1 %15 to i32
  %17 = call i32 @BUG_ON(i32 %16)
  %18 = load %struct.posix_acl*, %struct.posix_acl** %7, align 8
  %19 = call i32 @posix_acl_to_xattr(%struct.posix_acl* %18, i8* null, i32 0)
  store i32 %19, i32* %9, align 4
  %20 = load i32, i32* %9, align 4
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %22, label %23

22:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %59

23:                                               ; preds = %3
  %24 = load i32, i32* %9, align 4
  %25 = load i32, i32* @GFP_NOFS, align 4
  %26 = call i8* @kmalloc(i32 %24, i32 %25)
  store i8* %26, i8** %10, align 8
  %27 = load i8*, i8** %10, align 8
  %28 = icmp eq i8* %27, null
  br i1 %28, label %29, label %32

29:                                               ; preds = %23
  %30 = load i32, i32* @ENOMEM, align 4
  %31 = sub nsw i32 0, %30
  store i32 %31, i32* %4, align 4
  br label %59

32:                                               ; preds = %23
  %33 = load %struct.posix_acl*, %struct.posix_acl** %7, align 8
  %34 = load i8*, i8** %10, align 8
  %35 = load i32, i32* %9, align 4
  %36 = call i32 @posix_acl_to_xattr(%struct.posix_acl* %33, i8* %34, i32 %35)
  store i32 %36, i32* %8, align 4
  %37 = load i32, i32* %8, align 4
  %38 = icmp slt i32 %37, 0
  br i1 %38, label %39, label %40

39:                                               ; preds = %32
  br label %55

40:                                               ; preds = %32
  %41 = load %struct.inode*, %struct.inode** %5, align 8
  %42 = load i32, i32* @GFS2_EATYPE_SYS, align 4
  %43 = load i8*, i8** %11, align 8
  %44 = load i8*, i8** %10, align 8
  %45 = load i32, i32* %9, align 4
  %46 = call i32 @gfs2_xattr_set(%struct.inode* %41, i32 %42, i8* %43, i8* %44, i32 %45, i32 0)
  store i32 %46, i32* %8, align 4
  %47 = load i32, i32* %8, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %54, label %49

49:                                               ; preds = %40
  %50 = load %struct.inode*, %struct.inode** %5, align 8
  %51 = load i32, i32* %6, align 4
  %52 = load %struct.posix_acl*, %struct.posix_acl** %7, align 8
  %53 = call i32 @set_cached_acl(%struct.inode* %50, i32 %51, %struct.posix_acl* %52)
  br label %54

54:                                               ; preds = %49, %40
  br label %55

55:                                               ; preds = %54, %39
  %56 = load i8*, i8** %10, align 8
  %57 = call i32 @kfree(i8* %56)
  %58 = load i32, i32* %8, align 4
  store i32 %58, i32* %4, align 4
  br label %59

59:                                               ; preds = %55, %29, %22
  %60 = load i32, i32* %4, align 4
  ret i32 %60
}

declare dso_local i8* @gfs2_acl_name(i32) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @posix_acl_to_xattr(%struct.posix_acl*, i8*, i32) #1

declare dso_local i8* @kmalloc(i32, i32) #1

declare dso_local i32 @gfs2_xattr_set(%struct.inode*, i32, i8*, i8*, i32, i32) #1

declare dso_local i32 @set_cached_acl(%struct.inode*, i32, %struct.posix_acl*) #1

declare dso_local i32 @kfree(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

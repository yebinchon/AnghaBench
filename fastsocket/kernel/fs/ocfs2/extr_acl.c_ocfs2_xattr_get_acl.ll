; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/ocfs2/extr_acl.c_ocfs2_xattr_get_acl.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/ocfs2/extr_acl.c_ocfs2_xattr_get_acl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.ocfs2_super = type { i32 }
%struct.posix_acl = type { i32 }

@OCFS2_MOUNT_POSIX_ACL = common dso_local global i32 0, align 4
@EOPNOTSUPP = common dso_local global i32 0, align 4
@ENODATA = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inode*, i32, i8*, i64)* @ocfs2_xattr_get_acl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ocfs2_xattr_get_acl(%struct.inode* %0, i32 %1, i8* %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.inode*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.ocfs2_super*, align 8
  %11 = alloca %struct.posix_acl*, align 8
  %12 = alloca i32, align 4
  store %struct.inode* %0, %struct.inode** %6, align 8
  store i32 %1, i32* %7, align 4
  store i8* %2, i8** %8, align 8
  store i64 %3, i64* %9, align 8
  %13 = load %struct.inode*, %struct.inode** %6, align 8
  %14 = getelementptr inbounds %struct.inode, %struct.inode* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = call %struct.ocfs2_super* @OCFS2_SB(i32 %15)
  store %struct.ocfs2_super* %16, %struct.ocfs2_super** %10, align 8
  %17 = load %struct.ocfs2_super*, %struct.ocfs2_super** %10, align 8
  %18 = getelementptr inbounds %struct.ocfs2_super, %struct.ocfs2_super* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = load i32, i32* @OCFS2_MOUNT_POSIX_ACL, align 4
  %21 = and i32 %19, %20
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %26, label %23

23:                                               ; preds = %4
  %24 = load i32, i32* @EOPNOTSUPP, align 4
  %25 = sub nsw i32 0, %24
  store i32 %25, i32* %5, align 4
  br label %50

26:                                               ; preds = %4
  %27 = load %struct.inode*, %struct.inode** %6, align 8
  %28 = load i32, i32* %7, align 4
  %29 = call %struct.posix_acl* @ocfs2_get_acl(%struct.inode* %27, i32 %28)
  store %struct.posix_acl* %29, %struct.posix_acl** %11, align 8
  %30 = load %struct.posix_acl*, %struct.posix_acl** %11, align 8
  %31 = call i64 @IS_ERR(%struct.posix_acl* %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %36

33:                                               ; preds = %26
  %34 = load %struct.posix_acl*, %struct.posix_acl** %11, align 8
  %35 = call i32 @PTR_ERR(%struct.posix_acl* %34)
  store i32 %35, i32* %5, align 4
  br label %50

36:                                               ; preds = %26
  %37 = load %struct.posix_acl*, %struct.posix_acl** %11, align 8
  %38 = icmp eq %struct.posix_acl* %37, null
  br i1 %38, label %39, label %42

39:                                               ; preds = %36
  %40 = load i32, i32* @ENODATA, align 4
  %41 = sub nsw i32 0, %40
  store i32 %41, i32* %5, align 4
  br label %50

42:                                               ; preds = %36
  %43 = load %struct.posix_acl*, %struct.posix_acl** %11, align 8
  %44 = load i8*, i8** %8, align 8
  %45 = load i64, i64* %9, align 8
  %46 = call i32 @posix_acl_to_xattr(%struct.posix_acl* %43, i8* %44, i64 %45)
  store i32 %46, i32* %12, align 4
  %47 = load %struct.posix_acl*, %struct.posix_acl** %11, align 8
  %48 = call i32 @posix_acl_release(%struct.posix_acl* %47)
  %49 = load i32, i32* %12, align 4
  store i32 %49, i32* %5, align 4
  br label %50

50:                                               ; preds = %42, %39, %33, %23
  %51 = load i32, i32* %5, align 4
  ret i32 %51
}

declare dso_local %struct.ocfs2_super* @OCFS2_SB(i32) #1

declare dso_local %struct.posix_acl* @ocfs2_get_acl(%struct.inode*, i32) #1

declare dso_local i64 @IS_ERR(%struct.posix_acl*) #1

declare dso_local i32 @PTR_ERR(%struct.posix_acl*) #1

declare dso_local i32 @posix_acl_to_xattr(%struct.posix_acl*, i8*, i64) #1

declare dso_local i32 @posix_acl_release(%struct.posix_acl*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

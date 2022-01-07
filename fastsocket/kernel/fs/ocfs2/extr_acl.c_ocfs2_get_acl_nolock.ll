; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/ocfs2/extr_acl.c_ocfs2_get_acl_nolock.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/ocfs2/extr_acl.c_ocfs2_get_acl_nolock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.posix_acl = type { i32 }
%struct.inode = type { i32 }
%struct.buffer_head = type { i32 }
%struct.ocfs2_super = type { i32 }

@OCFS2_MOUNT_POSIX_ACL = common dso_local global i32 0, align 4
@OCFS2_XATTR_INDEX_POSIX_ACL_ACCESS = common dso_local global i32 0, align 4
@OCFS2_XATTR_INDEX_POSIX_ACL_DEFAULT = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@GFP_NOFS = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@ENODATA = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.posix_acl* (%struct.inode*, i32, %struct.buffer_head*)* @ocfs2_get_acl_nolock to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.posix_acl* @ocfs2_get_acl_nolock(%struct.inode* %0, i32 %1, %struct.buffer_head* %2) #0 {
  %4 = alloca %struct.posix_acl*, align 8
  %5 = alloca %struct.inode*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.buffer_head*, align 8
  %8 = alloca %struct.ocfs2_super*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca %struct.posix_acl*, align 8
  %12 = alloca i32, align 4
  store %struct.inode* %0, %struct.inode** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.buffer_head* %2, %struct.buffer_head** %7, align 8
  %13 = load %struct.inode*, %struct.inode** %5, align 8
  %14 = getelementptr inbounds %struct.inode, %struct.inode* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = call %struct.ocfs2_super* @OCFS2_SB(i32 %15)
  store %struct.ocfs2_super* %16, %struct.ocfs2_super** %8, align 8
  store i8* null, i8** %10, align 8
  %17 = load %struct.ocfs2_super*, %struct.ocfs2_super** %8, align 8
  %18 = getelementptr inbounds %struct.ocfs2_super, %struct.ocfs2_super* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = load i32, i32* @OCFS2_MOUNT_POSIX_ACL, align 4
  %21 = and i32 %19, %20
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %24, label %23

23:                                               ; preds = %3
  store %struct.posix_acl* null, %struct.posix_acl** %4, align 8
  br label %82

24:                                               ; preds = %3
  %25 = load i32, i32* %6, align 4
  switch i32 %25, label %30 [
    i32 129, label %26
    i32 128, label %28
  ]

26:                                               ; preds = %24
  %27 = load i32, i32* @OCFS2_XATTR_INDEX_POSIX_ACL_ACCESS, align 4
  store i32 %27, i32* %9, align 4
  br label %34

28:                                               ; preds = %24
  %29 = load i32, i32* @OCFS2_XATTR_INDEX_POSIX_ACL_DEFAULT, align 4
  store i32 %29, i32* %9, align 4
  br label %34

30:                                               ; preds = %24
  %31 = load i32, i32* @EINVAL, align 4
  %32 = sub nsw i32 0, %31
  %33 = call %struct.posix_acl* @ERR_PTR(i32 %32)
  store %struct.posix_acl* %33, %struct.posix_acl** %4, align 8
  br label %82

34:                                               ; preds = %28, %26
  %35 = load %struct.inode*, %struct.inode** %5, align 8
  %36 = load %struct.buffer_head*, %struct.buffer_head** %7, align 8
  %37 = load i32, i32* %9, align 4
  %38 = call i32 @ocfs2_xattr_get_nolock(%struct.inode* %35, %struct.buffer_head* %36, i32 %37, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0), i8* null, i32 0)
  store i32 %38, i32* %12, align 4
  %39 = load i32, i32* %12, align 4
  %40 = icmp sgt i32 %39, 0
  br i1 %40, label %41, label %58

41:                                               ; preds = %34
  %42 = load i32, i32* %12, align 4
  %43 = load i32, i32* @GFP_NOFS, align 4
  %44 = call i8* @kmalloc(i32 %42, i32 %43)
  store i8* %44, i8** %10, align 8
  %45 = load i8*, i8** %10, align 8
  %46 = icmp ne i8* %45, null
  br i1 %46, label %51, label %47

47:                                               ; preds = %41
  %48 = load i32, i32* @ENOMEM, align 4
  %49 = sub nsw i32 0, %48
  %50 = call %struct.posix_acl* @ERR_PTR(i32 %49)
  store %struct.posix_acl* %50, %struct.posix_acl** %4, align 8
  br label %82

51:                                               ; preds = %41
  %52 = load %struct.inode*, %struct.inode** %5, align 8
  %53 = load %struct.buffer_head*, %struct.buffer_head** %7, align 8
  %54 = load i32, i32* %9, align 4
  %55 = load i8*, i8** %10, align 8
  %56 = load i32, i32* %12, align 4
  %57 = call i32 @ocfs2_xattr_get_nolock(%struct.inode* %52, %struct.buffer_head* %53, i32 %54, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0), i8* %55, i32 %56)
  store i32 %57, i32* %12, align 4
  br label %58

58:                                               ; preds = %51, %34
  %59 = load i32, i32* %12, align 4
  %60 = icmp sgt i32 %59, 0
  br i1 %60, label %61, label %65

61:                                               ; preds = %58
  %62 = load i8*, i8** %10, align 8
  %63 = load i32, i32* %12, align 4
  %64 = call %struct.posix_acl* @ocfs2_acl_from_xattr(i8* %62, i32 %63)
  store %struct.posix_acl* %64, %struct.posix_acl** %11, align 8
  br label %78

65:                                               ; preds = %58
  %66 = load i32, i32* %12, align 4
  %67 = load i32, i32* @ENODATA, align 4
  %68 = sub nsw i32 0, %67
  %69 = icmp eq i32 %66, %68
  br i1 %69, label %73, label %70

70:                                               ; preds = %65
  %71 = load i32, i32* %12, align 4
  %72 = icmp eq i32 %71, 0
  br i1 %72, label %73, label %74

73:                                               ; preds = %70, %65
  store %struct.posix_acl* null, %struct.posix_acl** %11, align 8
  br label %77

74:                                               ; preds = %70
  %75 = load i32, i32* %12, align 4
  %76 = call %struct.posix_acl* @ERR_PTR(i32 %75)
  store %struct.posix_acl* %76, %struct.posix_acl** %11, align 8
  br label %77

77:                                               ; preds = %74, %73
  br label %78

78:                                               ; preds = %77, %61
  %79 = load i8*, i8** %10, align 8
  %80 = call i32 @kfree(i8* %79)
  %81 = load %struct.posix_acl*, %struct.posix_acl** %11, align 8
  store %struct.posix_acl* %81, %struct.posix_acl** %4, align 8
  br label %82

82:                                               ; preds = %78, %47, %30, %23
  %83 = load %struct.posix_acl*, %struct.posix_acl** %4, align 8
  ret %struct.posix_acl* %83
}

declare dso_local %struct.ocfs2_super* @OCFS2_SB(i32) #1

declare dso_local %struct.posix_acl* @ERR_PTR(i32) #1

declare dso_local i32 @ocfs2_xattr_get_nolock(%struct.inode*, %struct.buffer_head*, i32, i8*, i8*, i32) #1

declare dso_local i8* @kmalloc(i32, i32) #1

declare dso_local %struct.posix_acl* @ocfs2_acl_from_xattr(i8*, i32) #1

declare dso_local i32 @kfree(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

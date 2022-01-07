; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/gfs2/extr_acl.c_gfs2_acl_chmod.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/gfs2/extr_acl.c_gfs2_acl_chmod.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gfs2_inode = type { %struct.inode }
%struct.inode = type { i32 }
%struct.iattr = type { i32 }
%struct.posix_acl = type { i32 }

@ACL_TYPE_ACCESS = common dso_local global i32 0, align 4
@GFP_NOFS = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @gfs2_acl_chmod(%struct.gfs2_inode* %0, %struct.iattr* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.gfs2_inode*, align 8
  %5 = alloca %struct.iattr*, align 8
  %6 = alloca %struct.inode*, align 8
  %7 = alloca %struct.posix_acl*, align 8
  %8 = alloca %struct.posix_acl*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.gfs2_inode* %0, %struct.gfs2_inode** %4, align 8
  store %struct.iattr* %1, %struct.iattr** %5, align 8
  %12 = load %struct.gfs2_inode*, %struct.gfs2_inode** %4, align 8
  %13 = getelementptr inbounds %struct.gfs2_inode, %struct.gfs2_inode* %12, i32 0, i32 0
  store %struct.inode* %13, %struct.inode** %6, align 8
  %14 = load %struct.gfs2_inode*, %struct.gfs2_inode** %4, align 8
  %15 = load i32, i32* @ACL_TYPE_ACCESS, align 4
  %16 = call %struct.posix_acl* @gfs2_acl_get(%struct.gfs2_inode* %14, i32 %15)
  store %struct.posix_acl* %16, %struct.posix_acl** %7, align 8
  %17 = load %struct.posix_acl*, %struct.posix_acl** %7, align 8
  %18 = call i64 @IS_ERR(%struct.posix_acl* %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %23

20:                                               ; preds = %2
  %21 = load %struct.posix_acl*, %struct.posix_acl** %7, align 8
  %22 = call i32 @PTR_ERR(%struct.posix_acl* %21)
  store i32 %22, i32* %3, align 4
  br label %82

23:                                               ; preds = %2
  %24 = load %struct.posix_acl*, %struct.posix_acl** %7, align 8
  %25 = icmp ne %struct.posix_acl* %24, null
  br i1 %25, label %30, label %26

26:                                               ; preds = %23
  %27 = load %struct.inode*, %struct.inode** %6, align 8
  %28 = load %struct.iattr*, %struct.iattr** %5, align 8
  %29 = call i32 @gfs2_setattr_simple(%struct.inode* %27, %struct.iattr* %28)
  store i32 %29, i32* %3, align 4
  br label %82

30:                                               ; preds = %23
  %31 = load %struct.posix_acl*, %struct.posix_acl** %7, align 8
  %32 = load i32, i32* @GFP_NOFS, align 4
  %33 = call %struct.posix_acl* @posix_acl_clone(%struct.posix_acl* %31, i32 %32)
  store %struct.posix_acl* %33, %struct.posix_acl** %8, align 8
  %34 = load i32, i32* @ENOMEM, align 4
  %35 = sub nsw i32 0, %34
  store i32 %35, i32* %11, align 4
  %36 = load %struct.posix_acl*, %struct.posix_acl** %8, align 8
  %37 = icmp ne %struct.posix_acl* %36, null
  br i1 %37, label %39, label %38

38:                                               ; preds = %30
  br label %78

39:                                               ; preds = %30
  %40 = load %struct.posix_acl*, %struct.posix_acl** %7, align 8
  %41 = call i32 @posix_acl_release(%struct.posix_acl* %40)
  %42 = load %struct.posix_acl*, %struct.posix_acl** %8, align 8
  store %struct.posix_acl* %42, %struct.posix_acl** %7, align 8
  %43 = load %struct.posix_acl*, %struct.posix_acl** %7, align 8
  %44 = load %struct.iattr*, %struct.iattr** %5, align 8
  %45 = getelementptr inbounds %struct.iattr, %struct.iattr* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = call i32 @posix_acl_chmod_masq(%struct.posix_acl* %43, i32 %46)
  store i32 %47, i32* %11, align 4
  %48 = load i32, i32* %11, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %77, label %50

50:                                               ; preds = %39
  %51 = load %struct.posix_acl*, %struct.posix_acl** %7, align 8
  %52 = call i32 @posix_acl_to_xattr(%struct.posix_acl* %51, i8* null, i32 0)
  store i32 %52, i32* %10, align 4
  %53 = load i32, i32* %10, align 4
  %54 = load i32, i32* @GFP_NOFS, align 4
  %55 = call i8* @kmalloc(i32 %53, i32 %54)
  store i8* %55, i8** %9, align 8
  %56 = load i32, i32* @ENOMEM, align 4
  %57 = sub nsw i32 0, %56
  store i32 %57, i32* %11, align 4
  %58 = load i8*, i8** %9, align 8
  %59 = icmp eq i8* %58, null
  br i1 %59, label %60, label %61

60:                                               ; preds = %50
  br label %78

61:                                               ; preds = %50
  %62 = load %struct.posix_acl*, %struct.posix_acl** %7, align 8
  %63 = load i8*, i8** %9, align 8
  %64 = load i32, i32* %10, align 4
  %65 = call i32 @posix_acl_to_xattr(%struct.posix_acl* %62, i8* %63, i32 %64)
  %66 = load %struct.gfs2_inode*, %struct.gfs2_inode** %4, align 8
  %67 = load %struct.iattr*, %struct.iattr** %5, align 8
  %68 = load i8*, i8** %9, align 8
  %69 = call i32 @gfs2_xattr_acl_chmod(%struct.gfs2_inode* %66, %struct.iattr* %67, i8* %68)
  store i32 %69, i32* %11, align 4
  %70 = load i8*, i8** %9, align 8
  %71 = call i32 @kfree(i8* %70)
  %72 = load %struct.gfs2_inode*, %struct.gfs2_inode** %4, align 8
  %73 = getelementptr inbounds %struct.gfs2_inode, %struct.gfs2_inode* %72, i32 0, i32 0
  %74 = load i32, i32* @ACL_TYPE_ACCESS, align 4
  %75 = load %struct.posix_acl*, %struct.posix_acl** %7, align 8
  %76 = call i32 @set_cached_acl(%struct.inode* %73, i32 %74, %struct.posix_acl* %75)
  br label %77

77:                                               ; preds = %61, %39
  br label %78

78:                                               ; preds = %77, %60, %38
  %79 = load %struct.posix_acl*, %struct.posix_acl** %7, align 8
  %80 = call i32 @posix_acl_release(%struct.posix_acl* %79)
  %81 = load i32, i32* %11, align 4
  store i32 %81, i32* %3, align 4
  br label %82

82:                                               ; preds = %78, %26, %20
  %83 = load i32, i32* %3, align 4
  ret i32 %83
}

declare dso_local %struct.posix_acl* @gfs2_acl_get(%struct.gfs2_inode*, i32) #1

declare dso_local i64 @IS_ERR(%struct.posix_acl*) #1

declare dso_local i32 @PTR_ERR(%struct.posix_acl*) #1

declare dso_local i32 @gfs2_setattr_simple(%struct.inode*, %struct.iattr*) #1

declare dso_local %struct.posix_acl* @posix_acl_clone(%struct.posix_acl*, i32) #1

declare dso_local i32 @posix_acl_release(%struct.posix_acl*) #1

declare dso_local i32 @posix_acl_chmod_masq(%struct.posix_acl*, i32) #1

declare dso_local i32 @posix_acl_to_xattr(%struct.posix_acl*, i8*, i32) #1

declare dso_local i8* @kmalloc(i32, i32) #1

declare dso_local i32 @gfs2_xattr_acl_chmod(%struct.gfs2_inode*, %struct.iattr*, i8*) #1

declare dso_local i32 @kfree(i8*) #1

declare dso_local i32 @set_cached_acl(%struct.inode*, i32, %struct.posix_acl*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

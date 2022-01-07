; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/reiserfs/extr_xattr_acl.c_reiserfs_acl_chmod.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/reiserfs/extr_xattr_acl.c_reiserfs_acl_chmod.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32, i32 }
%struct.posix_acl = type { i32 }
%struct.reiserfs_transaction_handle = type { i32 }

@EOPNOTSUPP = common dso_local global i32 0, align 4
@STAT_DATA_V1 = common dso_local global i64 0, align 8
@ACL_TYPE_ACCESS = common dso_local global i32 0, align 4
@GFP_NOFS = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @reiserfs_acl_chmod(%struct.inode* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.inode*, align 8
  %4 = alloca %struct.posix_acl*, align 8
  %5 = alloca %struct.posix_acl*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.reiserfs_transaction_handle, align 4
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  store %struct.inode* %0, %struct.inode** %3, align 8
  %10 = load %struct.inode*, %struct.inode** %3, align 8
  %11 = getelementptr inbounds %struct.inode, %struct.inode* %10, i32 0, i32 1
  %12 = load i32, i32* %11, align 4
  %13 = call i64 @S_ISLNK(i32 %12)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %18

15:                                               ; preds = %1
  %16 = load i32, i32* @EOPNOTSUPP, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %2, align 4
  br label %107

18:                                               ; preds = %1
  %19 = load %struct.inode*, %struct.inode** %3, align 8
  %20 = call i64 @get_inode_sd_version(%struct.inode* %19)
  %21 = load i64, i64* @STAT_DATA_V1, align 8
  %22 = icmp eq i64 %20, %21
  br i1 %22, label %29, label %23

23:                                               ; preds = %18
  %24 = load %struct.inode*, %struct.inode** %3, align 8
  %25 = getelementptr inbounds %struct.inode, %struct.inode* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = call i32 @reiserfs_posixacl(i32 %26)
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %30, label %29

29:                                               ; preds = %23, %18
  store i32 0, i32* %2, align 4
  br label %107

30:                                               ; preds = %23
  %31 = load %struct.inode*, %struct.inode** %3, align 8
  %32 = load i32, i32* @ACL_TYPE_ACCESS, align 4
  %33 = call %struct.posix_acl* @reiserfs_get_acl(%struct.inode* %31, i32 %32)
  store %struct.posix_acl* %33, %struct.posix_acl** %4, align 8
  %34 = load %struct.posix_acl*, %struct.posix_acl** %4, align 8
  %35 = icmp ne %struct.posix_acl* %34, null
  br i1 %35, label %37, label %36

36:                                               ; preds = %30
  store i32 0, i32* %2, align 4
  br label %107

37:                                               ; preds = %30
  %38 = load %struct.posix_acl*, %struct.posix_acl** %4, align 8
  %39 = call i64 @IS_ERR(%struct.posix_acl* %38)
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %44

41:                                               ; preds = %37
  %42 = load %struct.posix_acl*, %struct.posix_acl** %4, align 8
  %43 = call i32 @PTR_ERR(%struct.posix_acl* %42)
  store i32 %43, i32* %2, align 4
  br label %107

44:                                               ; preds = %37
  %45 = load %struct.posix_acl*, %struct.posix_acl** %4, align 8
  %46 = load i32, i32* @GFP_NOFS, align 4
  %47 = call %struct.posix_acl* @posix_acl_clone(%struct.posix_acl* %45, i32 %46)
  store %struct.posix_acl* %47, %struct.posix_acl** %5, align 8
  %48 = load %struct.posix_acl*, %struct.posix_acl** %4, align 8
  %49 = call i32 @posix_acl_release(%struct.posix_acl* %48)
  %50 = load %struct.posix_acl*, %struct.posix_acl** %5, align 8
  %51 = icmp ne %struct.posix_acl* %50, null
  br i1 %51, label %55, label %52

52:                                               ; preds = %44
  %53 = load i32, i32* @ENOMEM, align 4
  %54 = sub nsw i32 0, %53
  store i32 %54, i32* %2, align 4
  br label %107

55:                                               ; preds = %44
  %56 = load %struct.posix_acl*, %struct.posix_acl** %5, align 8
  %57 = load %struct.inode*, %struct.inode** %3, align 8
  %58 = getelementptr inbounds %struct.inode, %struct.inode* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 4
  %60 = call i32 @posix_acl_chmod_masq(%struct.posix_acl* %56, i32 %59)
  store i32 %60, i32* %6, align 4
  %61 = load i32, i32* %6, align 4
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %103, label %63

63:                                               ; preds = %55
  %64 = load %struct.inode*, %struct.inode** %3, align 8
  %65 = load %struct.posix_acl*, %struct.posix_acl** %5, align 8
  %66 = getelementptr inbounds %struct.posix_acl, %struct.posix_acl* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  %68 = call i32 @reiserfs_acl_size(i32 %67)
  %69 = call i64 @reiserfs_xattr_nblocks(%struct.inode* %64, i32 %68)
  store i64 %69, i64* %8, align 8
  %70 = load %struct.inode*, %struct.inode** %3, align 8
  %71 = getelementptr inbounds %struct.inode, %struct.inode* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 4
  %73 = call i32 @reiserfs_write_lock(i32 %72)
  %74 = load %struct.inode*, %struct.inode** %3, align 8
  %75 = getelementptr inbounds %struct.inode, %struct.inode* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 4
  %77 = load i64, i64* %8, align 8
  %78 = mul i64 %77, 2
  %79 = call i32 @journal_begin(%struct.reiserfs_transaction_handle* %7, i32 %76, i64 %78)
  store i32 %79, i32* %6, align 4
  %80 = load i32, i32* %6, align 4
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %98, label %82

82:                                               ; preds = %63
  %83 = load %struct.inode*, %struct.inode** %3, align 8
  %84 = load i32, i32* @ACL_TYPE_ACCESS, align 4
  %85 = load %struct.posix_acl*, %struct.posix_acl** %5, align 8
  %86 = call i32 @reiserfs_set_acl(%struct.reiserfs_transaction_handle* %7, %struct.inode* %83, i32 %84, %struct.posix_acl* %85)
  store i32 %86, i32* %6, align 4
  %87 = load %struct.inode*, %struct.inode** %3, align 8
  %88 = getelementptr inbounds %struct.inode, %struct.inode* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 4
  %90 = load i64, i64* %8, align 8
  %91 = mul i64 %90, 2
  %92 = call i32 @journal_end(%struct.reiserfs_transaction_handle* %7, i32 %89, i64 %91)
  store i32 %92, i32* %9, align 4
  %93 = load i32, i32* %9, align 4
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %95, label %97

95:                                               ; preds = %82
  %96 = load i32, i32* %9, align 4
  store i32 %96, i32* %6, align 4
  br label %97

97:                                               ; preds = %95, %82
  br label %98

98:                                               ; preds = %97, %63
  %99 = load %struct.inode*, %struct.inode** %3, align 8
  %100 = getelementptr inbounds %struct.inode, %struct.inode* %99, i32 0, i32 0
  %101 = load i32, i32* %100, align 4
  %102 = call i32 @reiserfs_write_unlock(i32 %101)
  br label %103

103:                                              ; preds = %98, %55
  %104 = load %struct.posix_acl*, %struct.posix_acl** %5, align 8
  %105 = call i32 @posix_acl_release(%struct.posix_acl* %104)
  %106 = load i32, i32* %6, align 4
  store i32 %106, i32* %2, align 4
  br label %107

107:                                              ; preds = %103, %52, %41, %36, %29, %15
  %108 = load i32, i32* %2, align 4
  ret i32 %108
}

declare dso_local i64 @S_ISLNK(i32) #1

declare dso_local i64 @get_inode_sd_version(%struct.inode*) #1

declare dso_local i32 @reiserfs_posixacl(i32) #1

declare dso_local %struct.posix_acl* @reiserfs_get_acl(%struct.inode*, i32) #1

declare dso_local i64 @IS_ERR(%struct.posix_acl*) #1

declare dso_local i32 @PTR_ERR(%struct.posix_acl*) #1

declare dso_local %struct.posix_acl* @posix_acl_clone(%struct.posix_acl*, i32) #1

declare dso_local i32 @posix_acl_release(%struct.posix_acl*) #1

declare dso_local i32 @posix_acl_chmod_masq(%struct.posix_acl*, i32) #1

declare dso_local i64 @reiserfs_xattr_nblocks(%struct.inode*, i32) #1

declare dso_local i32 @reiserfs_acl_size(i32) #1

declare dso_local i32 @reiserfs_write_lock(i32) #1

declare dso_local i32 @journal_begin(%struct.reiserfs_transaction_handle*, i32, i64) #1

declare dso_local i32 @reiserfs_set_acl(%struct.reiserfs_transaction_handle*, %struct.inode*, i32, %struct.posix_acl*) #1

declare dso_local i32 @journal_end(%struct.reiserfs_transaction_handle*, i32, i64) #1

declare dso_local i32 @reiserfs_write_unlock(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

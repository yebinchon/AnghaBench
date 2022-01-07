; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/reiserfs/extr_xattr_acl.c_xattr_set_acl.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/reiserfs/extr_xattr_acl.c_xattr_set_acl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.posix_acl = type { i32 }
%struct.reiserfs_transaction_handle = type { i32 }

@EOPNOTSUPP = common dso_local global i32 0, align 4
@EPERM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inode*, i32, i8*, i64)* @xattr_set_acl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @xattr_set_acl(%struct.inode* %0, i32 %1, i8* %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.inode*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.posix_acl*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.reiserfs_transaction_handle, align 4
  %14 = alloca i64, align 8
  store %struct.inode* %0, %struct.inode** %6, align 8
  store i32 %1, i32* %7, align 4
  store i8* %2, i8** %8, align 8
  store i64 %3, i64* %9, align 8
  %15 = load %struct.inode*, %struct.inode** %6, align 8
  %16 = getelementptr inbounds %struct.inode, %struct.inode* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = call i32 @reiserfs_posixacl(i32 %17)
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %23, label %20

20:                                               ; preds = %4
  %21 = load i32, i32* @EOPNOTSUPP, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %5, align 4
  br label %100

23:                                               ; preds = %4
  %24 = load %struct.inode*, %struct.inode** %6, align 8
  %25 = call i32 @is_owner_or_cap(%struct.inode* %24)
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %30, label %27

27:                                               ; preds = %23
  %28 = load i32, i32* @EPERM, align 4
  %29 = sub nsw i32 0, %28
  store i32 %29, i32* %5, align 4
  br label %100

30:                                               ; preds = %23
  %31 = load i8*, i8** %8, align 8
  %32 = icmp ne i8* %31, null
  br i1 %32, label %33, label %55

33:                                               ; preds = %30
  %34 = load i8*, i8** %8, align 8
  %35 = load i64, i64* %9, align 8
  %36 = call %struct.posix_acl* @posix_acl_from_xattr(i8* %34, i64 %35)
  store %struct.posix_acl* %36, %struct.posix_acl** %10, align 8
  %37 = load %struct.posix_acl*, %struct.posix_acl** %10, align 8
  %38 = call i64 @IS_ERR(%struct.posix_acl* %37)
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %43

40:                                               ; preds = %33
  %41 = load %struct.posix_acl*, %struct.posix_acl** %10, align 8
  %42 = call i32 @PTR_ERR(%struct.posix_acl* %41)
  store i32 %42, i32* %5, align 4
  br label %100

43:                                               ; preds = %33
  %44 = load %struct.posix_acl*, %struct.posix_acl** %10, align 8
  %45 = icmp ne %struct.posix_acl* %44, null
  br i1 %45, label %46, label %53

46:                                               ; preds = %43
  %47 = load %struct.posix_acl*, %struct.posix_acl** %10, align 8
  %48 = call i32 @posix_acl_valid(%struct.posix_acl* %47)
  store i32 %48, i32* %11, align 4
  %49 = load i32, i32* %11, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %52

51:                                               ; preds = %46
  br label %96

52:                                               ; preds = %46
  br label %53

53:                                               ; preds = %52, %43
  br label %54

54:                                               ; preds = %53
  br label %56

55:                                               ; preds = %30
  store %struct.posix_acl* null, %struct.posix_acl** %10, align 8
  br label %56

56:                                               ; preds = %55, %54
  %57 = load %struct.inode*, %struct.inode** %6, align 8
  %58 = call i32 @reiserfs_xattr_jcreate_nblocks(%struct.inode* %57)
  %59 = load %struct.inode*, %struct.inode** %6, align 8
  %60 = load i64, i64* %9, align 8
  %61 = call i32 @reiserfs_xattr_nblocks(%struct.inode* %59, i64 %60)
  %62 = mul nsw i32 %61, 2
  %63 = add nsw i32 %58, %62
  %64 = sext i32 %63 to i64
  store i64 %64, i64* %14, align 8
  %65 = load %struct.inode*, %struct.inode** %6, align 8
  %66 = getelementptr inbounds %struct.inode, %struct.inode* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  %68 = call i32 @reiserfs_write_lock(i32 %67)
  %69 = load %struct.inode*, %struct.inode** %6, align 8
  %70 = getelementptr inbounds %struct.inode, %struct.inode* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 4
  %72 = load i64, i64* %14, align 8
  %73 = call i32 @journal_begin(%struct.reiserfs_transaction_handle* %13, i32 %71, i64 %72)
  store i32 %73, i32* %11, align 4
  %74 = load i32, i32* %11, align 4
  %75 = icmp eq i32 %74, 0
  br i1 %75, label %76, label %91

76:                                               ; preds = %56
  %77 = load %struct.inode*, %struct.inode** %6, align 8
  %78 = load i32, i32* %7, align 4
  %79 = load %struct.posix_acl*, %struct.posix_acl** %10, align 8
  %80 = call i32 @reiserfs_set_acl(%struct.reiserfs_transaction_handle* %13, %struct.inode* %77, i32 %78, %struct.posix_acl* %79)
  store i32 %80, i32* %11, align 4
  %81 = load %struct.inode*, %struct.inode** %6, align 8
  %82 = getelementptr inbounds %struct.inode, %struct.inode* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 4
  %84 = load i64, i64* %14, align 8
  %85 = call i32 @journal_end(%struct.reiserfs_transaction_handle* %13, i32 %83, i64 %84)
  store i32 %85, i32* %12, align 4
  %86 = load i32, i32* %12, align 4
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %88, label %90

88:                                               ; preds = %76
  %89 = load i32, i32* %12, align 4
  store i32 %89, i32* %11, align 4
  br label %90

90:                                               ; preds = %88, %76
  br label %91

91:                                               ; preds = %90, %56
  %92 = load %struct.inode*, %struct.inode** %6, align 8
  %93 = getelementptr inbounds %struct.inode, %struct.inode* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 4
  %95 = call i32 @reiserfs_write_unlock(i32 %94)
  br label %96

96:                                               ; preds = %91, %51
  %97 = load %struct.posix_acl*, %struct.posix_acl** %10, align 8
  %98 = call i32 @posix_acl_release(%struct.posix_acl* %97)
  %99 = load i32, i32* %11, align 4
  store i32 %99, i32* %5, align 4
  br label %100

100:                                              ; preds = %96, %40, %27, %20
  %101 = load i32, i32* %5, align 4
  ret i32 %101
}

declare dso_local i32 @reiserfs_posixacl(i32) #1

declare dso_local i32 @is_owner_or_cap(%struct.inode*) #1

declare dso_local %struct.posix_acl* @posix_acl_from_xattr(i8*, i64) #1

declare dso_local i64 @IS_ERR(%struct.posix_acl*) #1

declare dso_local i32 @PTR_ERR(%struct.posix_acl*) #1

declare dso_local i32 @posix_acl_valid(%struct.posix_acl*) #1

declare dso_local i32 @reiserfs_xattr_jcreate_nblocks(%struct.inode*) #1

declare dso_local i32 @reiserfs_xattr_nblocks(%struct.inode*, i64) #1

declare dso_local i32 @reiserfs_write_lock(i32) #1

declare dso_local i32 @journal_begin(%struct.reiserfs_transaction_handle*, i32, i64) #1

declare dso_local i32 @reiserfs_set_acl(%struct.reiserfs_transaction_handle*, %struct.inode*, i32, %struct.posix_acl*) #1

declare dso_local i32 @journal_end(%struct.reiserfs_transaction_handle*, i32, i64) #1

declare dso_local i32 @reiserfs_write_unlock(i32) #1

declare dso_local i32 @posix_acl_release(%struct.posix_acl*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

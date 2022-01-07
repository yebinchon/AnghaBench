; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/ext3/extr_acl.c_ext3_xattr_set_acl.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/ext3/extr_acl.c_ext3_xattr_set_acl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.posix_acl = type { i32 }

@POSIX_ACL = common dso_local global i32 0, align 4
@EOPNOTSUPP = common dso_local global i32 0, align 4
@EPERM = common dso_local global i32 0, align 4
@ENOSPC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inode*, i32, i8*, i64)* @ext3_xattr_set_acl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ext3_xattr_set_acl(%struct.inode* %0, i32 %1, i8* %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.inode*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.posix_acl*, align 8
  %11 = alloca %struct.posix_acl*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.inode* %0, %struct.inode** %6, align 8
  store i32 %1, i32* %7, align 4
  store i8* %2, i8** %8, align 8
  store i64 %3, i64* %9, align 8
  store i32 0, i32* %13, align 4
  %14 = load %struct.inode*, %struct.inode** %6, align 8
  %15 = getelementptr inbounds %struct.inode, %struct.inode* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = load i32, i32* @POSIX_ACL, align 4
  %18 = call i32 @test_opt(i32 %16, i32 %17)
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %23, label %20

20:                                               ; preds = %4
  %21 = load i32, i32* @EOPNOTSUPP, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %5, align 4
  br label %94

23:                                               ; preds = %4
  %24 = load %struct.inode*, %struct.inode** %6, align 8
  %25 = call i32 @is_owner_or_cap(%struct.inode* %24)
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %30, label %27

27:                                               ; preds = %23
  %28 = load i32, i32* @EPERM, align 4
  %29 = sub nsw i32 0, %28
  store i32 %29, i32* %5, align 4
  br label %94

30:                                               ; preds = %23
  %31 = load i8*, i8** %8, align 8
  %32 = icmp ne i8* %31, null
  br i1 %32, label %33, label %55

33:                                               ; preds = %30
  %34 = load i8*, i8** %8, align 8
  %35 = load i64, i64* %9, align 8
  %36 = call %struct.posix_acl* @posix_acl_from_xattr(i8* %34, i64 %35)
  store %struct.posix_acl* %36, %struct.posix_acl** %11, align 8
  %37 = load %struct.posix_acl*, %struct.posix_acl** %11, align 8
  %38 = call i64 @IS_ERR(%struct.posix_acl* %37)
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %43

40:                                               ; preds = %33
  %41 = load %struct.posix_acl*, %struct.posix_acl** %11, align 8
  %42 = call i32 @PTR_ERR(%struct.posix_acl* %41)
  store i32 %42, i32* %5, align 4
  br label %94

43:                                               ; preds = %33
  %44 = load %struct.posix_acl*, %struct.posix_acl** %11, align 8
  %45 = icmp ne %struct.posix_acl* %44, null
  br i1 %45, label %46, label %53

46:                                               ; preds = %43
  %47 = load %struct.posix_acl*, %struct.posix_acl** %11, align 8
  %48 = call i32 @posix_acl_valid(%struct.posix_acl* %47)
  store i32 %48, i32* %12, align 4
  %49 = load i32, i32* %12, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %52

51:                                               ; preds = %46
  br label %90

52:                                               ; preds = %46
  br label %53

53:                                               ; preds = %52, %43
  br label %54

54:                                               ; preds = %53
  br label %56

55:                                               ; preds = %30
  store %struct.posix_acl* null, %struct.posix_acl** %11, align 8
  br label %56

56:                                               ; preds = %55, %54
  br label %57

57:                                               ; preds = %88, %56
  %58 = load %struct.inode*, %struct.inode** %6, align 8
  %59 = load %struct.inode*, %struct.inode** %6, align 8
  %60 = getelementptr inbounds %struct.inode, %struct.inode* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = call i32 @EXT3_DATA_TRANS_BLOCKS(i32 %61)
  %63 = call %struct.posix_acl* @ext3_journal_start(%struct.inode* %58, i32 %62)
  store %struct.posix_acl* %63, %struct.posix_acl** %10, align 8
  %64 = load %struct.posix_acl*, %struct.posix_acl** %10, align 8
  %65 = call i64 @IS_ERR(%struct.posix_acl* %64)
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %67, label %70

67:                                               ; preds = %57
  %68 = load %struct.posix_acl*, %struct.posix_acl** %10, align 8
  %69 = call i32 @PTR_ERR(%struct.posix_acl* %68)
  store i32 %69, i32* %5, align 4
  br label %94

70:                                               ; preds = %57
  %71 = load %struct.posix_acl*, %struct.posix_acl** %10, align 8
  %72 = load %struct.inode*, %struct.inode** %6, align 8
  %73 = load i32, i32* %7, align 4
  %74 = load %struct.posix_acl*, %struct.posix_acl** %11, align 8
  %75 = call i32 @ext3_set_acl(%struct.posix_acl* %71, %struct.inode* %72, i32 %73, %struct.posix_acl* %74)
  store i32 %75, i32* %12, align 4
  %76 = load %struct.posix_acl*, %struct.posix_acl** %10, align 8
  %77 = call i32 @ext3_journal_stop(%struct.posix_acl* %76)
  %78 = load i32, i32* %12, align 4
  %79 = load i32, i32* @ENOSPC, align 4
  %80 = sub nsw i32 0, %79
  %81 = icmp eq i32 %78, %80
  br i1 %81, label %82, label %89

82:                                               ; preds = %70
  %83 = load %struct.inode*, %struct.inode** %6, align 8
  %84 = getelementptr inbounds %struct.inode, %struct.inode* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 4
  %86 = call i64 @ext3_should_retry_alloc(i32 %85, i32* %13)
  %87 = icmp ne i64 %86, 0
  br i1 %87, label %88, label %89

88:                                               ; preds = %82
  br label %57

89:                                               ; preds = %82, %70
  br label %90

90:                                               ; preds = %89, %51
  %91 = load %struct.posix_acl*, %struct.posix_acl** %11, align 8
  %92 = call i32 @posix_acl_release(%struct.posix_acl* %91)
  %93 = load i32, i32* %12, align 4
  store i32 %93, i32* %5, align 4
  br label %94

94:                                               ; preds = %90, %67, %40, %27, %20
  %95 = load i32, i32* %5, align 4
  ret i32 %95
}

declare dso_local i32 @test_opt(i32, i32) #1

declare dso_local i32 @is_owner_or_cap(%struct.inode*) #1

declare dso_local %struct.posix_acl* @posix_acl_from_xattr(i8*, i64) #1

declare dso_local i64 @IS_ERR(%struct.posix_acl*) #1

declare dso_local i32 @PTR_ERR(%struct.posix_acl*) #1

declare dso_local i32 @posix_acl_valid(%struct.posix_acl*) #1

declare dso_local %struct.posix_acl* @ext3_journal_start(%struct.inode*, i32) #1

declare dso_local i32 @EXT3_DATA_TRANS_BLOCKS(i32) #1

declare dso_local i32 @ext3_set_acl(%struct.posix_acl*, %struct.inode*, i32, %struct.posix_acl*) #1

declare dso_local i32 @ext3_journal_stop(%struct.posix_acl*) #1

declare dso_local i64 @ext3_should_retry_alloc(i32, i32*) #1

declare dso_local i32 @posix_acl_release(%struct.posix_acl*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

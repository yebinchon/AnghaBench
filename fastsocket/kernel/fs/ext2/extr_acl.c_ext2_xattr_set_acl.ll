; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/ext2/extr_acl.c_ext2_xattr_set_acl.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/ext2/extr_acl.c_ext2_xattr_set_acl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.posix_acl = type { i32 }

@POSIX_ACL = common dso_local global i32 0, align 4
@EOPNOTSUPP = common dso_local global i32 0, align 4
@EPERM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inode*, i32, i8*, i64)* @ext2_xattr_set_acl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ext2_xattr_set_acl(%struct.inode* %0, i32 %1, i8* %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.inode*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.posix_acl*, align 8
  %11 = alloca i32, align 4
  store %struct.inode* %0, %struct.inode** %6, align 8
  store i32 %1, i32* %7, align 4
  store i8* %2, i8** %8, align 8
  store i64 %3, i64* %9, align 8
  %12 = load %struct.inode*, %struct.inode** %6, align 8
  %13 = getelementptr inbounds %struct.inode, %struct.inode* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = load i32, i32* @POSIX_ACL, align 4
  %16 = call i32 @test_opt(i32 %14, i32 %15)
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %21, label %18

18:                                               ; preds = %4
  %19 = load i32, i32* @EOPNOTSUPP, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %5, align 4
  br label %63

21:                                               ; preds = %4
  %22 = load %struct.inode*, %struct.inode** %6, align 8
  %23 = call i32 @is_owner_or_cap(%struct.inode* %22)
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %28, label %25

25:                                               ; preds = %21
  %26 = load i32, i32* @EPERM, align 4
  %27 = sub nsw i32 0, %26
  store i32 %27, i32* %5, align 4
  br label %63

28:                                               ; preds = %21
  %29 = load i8*, i8** %8, align 8
  %30 = icmp ne i8* %29, null
  br i1 %30, label %31, label %53

31:                                               ; preds = %28
  %32 = load i8*, i8** %8, align 8
  %33 = load i64, i64* %9, align 8
  %34 = call %struct.posix_acl* @posix_acl_from_xattr(i8* %32, i64 %33)
  store %struct.posix_acl* %34, %struct.posix_acl** %10, align 8
  %35 = load %struct.posix_acl*, %struct.posix_acl** %10, align 8
  %36 = call i64 @IS_ERR(%struct.posix_acl* %35)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %41

38:                                               ; preds = %31
  %39 = load %struct.posix_acl*, %struct.posix_acl** %10, align 8
  %40 = call i32 @PTR_ERR(%struct.posix_acl* %39)
  store i32 %40, i32* %5, align 4
  br label %63

41:                                               ; preds = %31
  %42 = load %struct.posix_acl*, %struct.posix_acl** %10, align 8
  %43 = icmp ne %struct.posix_acl* %42, null
  br i1 %43, label %44, label %51

44:                                               ; preds = %41
  %45 = load %struct.posix_acl*, %struct.posix_acl** %10, align 8
  %46 = call i32 @posix_acl_valid(%struct.posix_acl* %45)
  store i32 %46, i32* %11, align 4
  %47 = load i32, i32* %11, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %50

49:                                               ; preds = %44
  br label %59

50:                                               ; preds = %44
  br label %51

51:                                               ; preds = %50, %41
  br label %52

52:                                               ; preds = %51
  br label %54

53:                                               ; preds = %28
  store %struct.posix_acl* null, %struct.posix_acl** %10, align 8
  br label %54

54:                                               ; preds = %53, %52
  %55 = load %struct.inode*, %struct.inode** %6, align 8
  %56 = load i32, i32* %7, align 4
  %57 = load %struct.posix_acl*, %struct.posix_acl** %10, align 8
  %58 = call i32 @ext2_set_acl(%struct.inode* %55, i32 %56, %struct.posix_acl* %57)
  store i32 %58, i32* %11, align 4
  br label %59

59:                                               ; preds = %54, %49
  %60 = load %struct.posix_acl*, %struct.posix_acl** %10, align 8
  %61 = call i32 @posix_acl_release(%struct.posix_acl* %60)
  %62 = load i32, i32* %11, align 4
  store i32 %62, i32* %5, align 4
  br label %63

63:                                               ; preds = %59, %38, %25, %18
  %64 = load i32, i32* %5, align 4
  ret i32 %64
}

declare dso_local i32 @test_opt(i32, i32) #1

declare dso_local i32 @is_owner_or_cap(%struct.inode*) #1

declare dso_local %struct.posix_acl* @posix_acl_from_xattr(i8*, i64) #1

declare dso_local i64 @IS_ERR(%struct.posix_acl*) #1

declare dso_local i32 @PTR_ERR(%struct.posix_acl*) #1

declare dso_local i32 @posix_acl_valid(%struct.posix_acl*) #1

declare dso_local i32 @ext2_set_acl(%struct.inode*, i32, %struct.posix_acl*) #1

declare dso_local i32 @posix_acl_release(%struct.posix_acl*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

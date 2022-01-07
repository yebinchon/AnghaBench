; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/extr_generic_acl.c_generic_acl_set.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/extr_generic_acl.c_generic_acl_set.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.generic_acl_operations = type { i32 (%struct.inode*, i32, %struct.posix_acl*)* }
%struct.posix_acl = type { i32 }

@EOPNOTSUPP = common dso_local global i32 0, align 4
@EPERM = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @generic_acl_set(%struct.inode* %0, %struct.generic_acl_operations* %1, i32 %2, i8* %3, i64 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.inode*, align 8
  %8 = alloca %struct.generic_acl_operations*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca %struct.posix_acl*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.inode* %0, %struct.inode** %7, align 8
  store %struct.generic_acl_operations* %1, %struct.generic_acl_operations** %8, align 8
  store i32 %2, i32* %9, align 4
  store i8* %3, i8** %10, align 8
  store i64 %4, i64* %11, align 8
  store %struct.posix_acl* null, %struct.posix_acl** %12, align 8
  %15 = load %struct.inode*, %struct.inode** %7, align 8
  %16 = getelementptr inbounds %struct.inode, %struct.inode* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = call i64 @S_ISLNK(i32 %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %23

20:                                               ; preds = %5
  %21 = load i32, i32* @EOPNOTSUPP, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %6, align 4
  br label %97

23:                                               ; preds = %5
  %24 = load %struct.inode*, %struct.inode** %7, align 8
  %25 = call i32 @is_owner_or_cap(%struct.inode* %24)
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %30, label %27

27:                                               ; preds = %23
  %28 = load i32, i32* @EPERM, align 4
  %29 = sub nsw i32 0, %28
  store i32 %29, i32* %6, align 4
  br label %97

30:                                               ; preds = %23
  %31 = load i8*, i8** %10, align 8
  %32 = icmp ne i8* %31, null
  br i1 %32, label %33, label %44

33:                                               ; preds = %30
  %34 = load i8*, i8** %10, align 8
  %35 = load i64, i64* %11, align 8
  %36 = call %struct.posix_acl* @posix_acl_from_xattr(i8* %34, i64 %35)
  store %struct.posix_acl* %36, %struct.posix_acl** %12, align 8
  %37 = load %struct.posix_acl*, %struct.posix_acl** %12, align 8
  %38 = call i64 @IS_ERR(%struct.posix_acl* %37)
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %43

40:                                               ; preds = %33
  %41 = load %struct.posix_acl*, %struct.posix_acl** %12, align 8
  %42 = call i32 @PTR_ERR(%struct.posix_acl* %41)
  store i32 %42, i32* %6, align 4
  br label %97

43:                                               ; preds = %33
  br label %44

44:                                               ; preds = %43, %30
  %45 = load %struct.posix_acl*, %struct.posix_acl** %12, align 8
  %46 = icmp ne %struct.posix_acl* %45, null
  br i1 %46, label %47, label %85

47:                                               ; preds = %44
  %48 = load %struct.posix_acl*, %struct.posix_acl** %12, align 8
  %49 = call i32 @posix_acl_valid(%struct.posix_acl* %48)
  store i32 %49, i32* %13, align 4
  %50 = load i32, i32* %13, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %53

52:                                               ; preds = %47
  br label %93

53:                                               ; preds = %47
  %54 = load i32, i32* %9, align 4
  switch i32 %54, label %84 [
    i32 129, label %55
    i32 128, label %74
  ]

55:                                               ; preds = %53
  %56 = load %struct.inode*, %struct.inode** %7, align 8
  %57 = getelementptr inbounds %struct.inode, %struct.inode* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  store i32 %58, i32* %14, align 4
  %59 = load %struct.posix_acl*, %struct.posix_acl** %12, align 8
  %60 = call i32 @posix_acl_equiv_mode(%struct.posix_acl* %59, i32* %14)
  store i32 %60, i32* %13, align 4
  %61 = load i32, i32* %13, align 4
  %62 = icmp slt i32 %61, 0
  br i1 %62, label %63, label %64

63:                                               ; preds = %55
  br label %93

64:                                               ; preds = %55
  %65 = load i32, i32* %14, align 4
  %66 = load %struct.inode*, %struct.inode** %7, align 8
  %67 = getelementptr inbounds %struct.inode, %struct.inode* %66, i32 0, i32 0
  store i32 %65, i32* %67, align 4
  %68 = load i32, i32* %13, align 4
  %69 = icmp eq i32 %68, 0
  br i1 %69, label %70, label %73

70:                                               ; preds = %64
  %71 = load %struct.posix_acl*, %struct.posix_acl** %12, align 8
  %72 = call i32 @posix_acl_release(%struct.posix_acl* %71)
  store %struct.posix_acl* null, %struct.posix_acl** %12, align 8
  br label %73

73:                                               ; preds = %70, %64
  br label %84

74:                                               ; preds = %53
  %75 = load %struct.inode*, %struct.inode** %7, align 8
  %76 = getelementptr inbounds %struct.inode, %struct.inode* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 4
  %78 = call i32 @S_ISDIR(i32 %77)
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %83, label %80

80:                                               ; preds = %74
  %81 = load i32, i32* @EINVAL, align 4
  %82 = sub nsw i32 0, %81
  store i32 %82, i32* %13, align 4
  br label %93

83:                                               ; preds = %74
  br label %84

84:                                               ; preds = %53, %83, %73
  br label %85

85:                                               ; preds = %84, %44
  %86 = load %struct.generic_acl_operations*, %struct.generic_acl_operations** %8, align 8
  %87 = getelementptr inbounds %struct.generic_acl_operations, %struct.generic_acl_operations* %86, i32 0, i32 0
  %88 = load i32 (%struct.inode*, i32, %struct.posix_acl*)*, i32 (%struct.inode*, i32, %struct.posix_acl*)** %87, align 8
  %89 = load %struct.inode*, %struct.inode** %7, align 8
  %90 = load i32, i32* %9, align 4
  %91 = load %struct.posix_acl*, %struct.posix_acl** %12, align 8
  %92 = call i32 %88(%struct.inode* %89, i32 %90, %struct.posix_acl* %91)
  store i32 0, i32* %13, align 4
  br label %93

93:                                               ; preds = %85, %80, %63, %52
  %94 = load %struct.posix_acl*, %struct.posix_acl** %12, align 8
  %95 = call i32 @posix_acl_release(%struct.posix_acl* %94)
  %96 = load i32, i32* %13, align 4
  store i32 %96, i32* %6, align 4
  br label %97

97:                                               ; preds = %93, %40, %27, %20
  %98 = load i32, i32* %6, align 4
  ret i32 %98
}

declare dso_local i64 @S_ISLNK(i32) #1

declare dso_local i32 @is_owner_or_cap(%struct.inode*) #1

declare dso_local %struct.posix_acl* @posix_acl_from_xattr(i8*, i64) #1

declare dso_local i64 @IS_ERR(%struct.posix_acl*) #1

declare dso_local i32 @PTR_ERR(%struct.posix_acl*) #1

declare dso_local i32 @posix_acl_valid(%struct.posix_acl*) #1

declare dso_local i32 @posix_acl_equiv_mode(%struct.posix_acl*, i32*) #1

declare dso_local i32 @posix_acl_release(%struct.posix_acl*) #1

declare dso_local i32 @S_ISDIR(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/xfs/linux-2.6/extr_xfs_acl.c_xfs_xattr_system_set.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/xfs/linux-2.6/extr_xfs_acl.c_xfs_xattr_system_set.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i64, i32 }
%struct.posix_acl = type { i64 }

@XATTR_CREATE = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@ACL_TYPE_DEFAULT = common dso_local global i32 0, align 4
@EACCES = common dso_local global i32 0, align 4
@CAP_FOWNER = common dso_local global i32 0, align 4
@EPERM = common dso_local global i32 0, align 4
@XFS_ACL_MAX_ENTRIES = common dso_local global i64 0, align 8
@ACL_TYPE_ACCESS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inode*, i8*, i8*, i64, i32)* @xfs_xattr_system_set to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @xfs_xattr_system_set(%struct.inode* %0, i8* %1, i8* %2, i64 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.inode*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.posix_acl*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.inode* %0, %struct.inode** %7, align 8
  store i8* %1, i8** %8, align 8
  store i8* %2, i8** %9, align 8
  store i64 %3, i64* %10, align 8
  store i32 %4, i32* %11, align 4
  store %struct.posix_acl* null, %struct.posix_acl** %12, align 8
  store i32 0, i32* %13, align 4
  %16 = load i8*, i8** %8, align 8
  %17 = call i32 @xfs_decode_acl(i8* %16)
  store i32 %17, i32* %14, align 4
  %18 = load i32, i32* %14, align 4
  %19 = icmp slt i32 %18, 0
  br i1 %19, label %20, label %22

20:                                               ; preds = %5
  %21 = load i32, i32* %14, align 4
  store i32 %21, i32* %6, align 4
  br label %134

22:                                               ; preds = %5
  %23 = load i32, i32* %11, align 4
  %24 = load i32, i32* @XATTR_CREATE, align 4
  %25 = and i32 %23, %24
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %30

27:                                               ; preds = %22
  %28 = load i32, i32* @EINVAL, align 4
  %29 = sub nsw i32 0, %28
  store i32 %29, i32* %6, align 4
  br label %134

30:                                               ; preds = %22
  %31 = load i32, i32* %14, align 4
  %32 = load i32, i32* @ACL_TYPE_DEFAULT, align 4
  %33 = icmp eq i32 %31, %32
  br i1 %33, label %34, label %49

34:                                               ; preds = %30
  %35 = load %struct.inode*, %struct.inode** %7, align 8
  %36 = getelementptr inbounds %struct.inode, %struct.inode* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 8
  %38 = call i32 @S_ISDIR(i32 %37)
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %49, label %40

40:                                               ; preds = %34
  %41 = load i8*, i8** %9, align 8
  %42 = icmp ne i8* %41, null
  br i1 %42, label %43, label %46

43:                                               ; preds = %40
  %44 = load i32, i32* @EACCES, align 4
  %45 = sub nsw i32 0, %44
  br label %47

46:                                               ; preds = %40
  br label %47

47:                                               ; preds = %46, %43
  %48 = phi i32 [ %45, %43 ], [ 0, %46 ]
  store i32 %48, i32* %6, align 4
  br label %134

49:                                               ; preds = %34, %30
  %50 = call i64 (...) @current_fsuid()
  %51 = load %struct.inode*, %struct.inode** %7, align 8
  %52 = getelementptr inbounds %struct.inode, %struct.inode* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = icmp ne i64 %50, %53
  br i1 %54, label %55, label %62

55:                                               ; preds = %49
  %56 = load i32, i32* @CAP_FOWNER, align 4
  %57 = call i32 @capable(i32 %56)
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %62, label %59

59:                                               ; preds = %55
  %60 = load i32, i32* @EPERM, align 4
  %61 = sub nsw i32 0, %60
  store i32 %61, i32* %6, align 4
  br label %134

62:                                               ; preds = %55, %49
  %63 = load i8*, i8** %9, align 8
  %64 = icmp ne i8* %63, null
  br i1 %64, label %66, label %65

65:                                               ; preds = %62
  br label %124

66:                                               ; preds = %62
  %67 = load i8*, i8** %9, align 8
  %68 = load i64, i64* %10, align 8
  %69 = call %struct.posix_acl* @posix_acl_from_xattr(i8* %67, i64 %68)
  store %struct.posix_acl* %69, %struct.posix_acl** %12, align 8
  %70 = load %struct.posix_acl*, %struct.posix_acl** %12, align 8
  %71 = icmp ne %struct.posix_acl* %70, null
  br i1 %71, label %73, label %72

72:                                               ; preds = %66
  br label %132

73:                                               ; preds = %66
  %74 = load %struct.posix_acl*, %struct.posix_acl** %12, align 8
  %75 = call i64 @IS_ERR(%struct.posix_acl* %74)
  %76 = icmp ne i64 %75, 0
  br i1 %76, label %77, label %80

77:                                               ; preds = %73
  %78 = load %struct.posix_acl*, %struct.posix_acl** %12, align 8
  %79 = call i32 @PTR_ERR(%struct.posix_acl* %78)
  store i32 %79, i32* %13, align 4
  br label %132

80:                                               ; preds = %73
  %81 = load %struct.posix_acl*, %struct.posix_acl** %12, align 8
  %82 = call i32 @posix_acl_valid(%struct.posix_acl* %81)
  store i32 %82, i32* %13, align 4
  %83 = load i32, i32* %13, align 4
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %85, label %86

85:                                               ; preds = %80
  br label %129

86:                                               ; preds = %80
  %87 = load i32, i32* @EINVAL, align 4
  %88 = sub nsw i32 0, %87
  store i32 %88, i32* %13, align 4
  %89 = load %struct.posix_acl*, %struct.posix_acl** %12, align 8
  %90 = getelementptr inbounds %struct.posix_acl, %struct.posix_acl* %89, i32 0, i32 0
  %91 = load i64, i64* %90, align 8
  %92 = load i64, i64* @XFS_ACL_MAX_ENTRIES, align 8
  %93 = icmp sgt i64 %91, %92
  br i1 %93, label %94, label %95

94:                                               ; preds = %86
  br label %129

95:                                               ; preds = %86
  %96 = load i32, i32* %14, align 4
  %97 = load i32, i32* @ACL_TYPE_ACCESS, align 4
  %98 = icmp eq i32 %96, %97
  br i1 %98, label %99, label %123

99:                                               ; preds = %95
  %100 = load %struct.inode*, %struct.inode** %7, align 8
  %101 = getelementptr inbounds %struct.inode, %struct.inode* %100, i32 0, i32 1
  %102 = load i32, i32* %101, align 8
  store i32 %102, i32* %15, align 4
  %103 = load %struct.posix_acl*, %struct.posix_acl** %12, align 8
  %104 = call i32 @posix_acl_equiv_mode(%struct.posix_acl* %103, i32* %15)
  store i32 %104, i32* %13, align 4
  %105 = load i32, i32* %13, align 4
  %106 = icmp sle i32 %105, 0
  br i1 %106, label %107, label %115

107:                                              ; preds = %99
  %108 = load %struct.posix_acl*, %struct.posix_acl** %12, align 8
  %109 = call i32 @posix_acl_release(%struct.posix_acl* %108)
  store %struct.posix_acl* null, %struct.posix_acl** %12, align 8
  %110 = load i32, i32* %13, align 4
  %111 = icmp slt i32 %110, 0
  br i1 %111, label %112, label %114

112:                                              ; preds = %107
  %113 = load i32, i32* %13, align 4
  store i32 %113, i32* %6, align 4
  br label %134

114:                                              ; preds = %107
  br label %115

115:                                              ; preds = %114, %99
  %116 = load %struct.inode*, %struct.inode** %7, align 8
  %117 = load i32, i32* %15, align 4
  %118 = call i32 @xfs_set_mode(%struct.inode* %116, i32 %117)
  store i32 %118, i32* %13, align 4
  %119 = load i32, i32* %13, align 4
  %120 = icmp ne i32 %119, 0
  br i1 %120, label %121, label %122

121:                                              ; preds = %115
  br label %129

122:                                              ; preds = %115
  br label %123

123:                                              ; preds = %122, %95
  br label %124

124:                                              ; preds = %123, %65
  %125 = load %struct.inode*, %struct.inode** %7, align 8
  %126 = load i32, i32* %14, align 4
  %127 = load %struct.posix_acl*, %struct.posix_acl** %12, align 8
  %128 = call i32 @xfs_set_acl(%struct.inode* %125, i32 %126, %struct.posix_acl* %127)
  store i32 %128, i32* %13, align 4
  br label %129

129:                                              ; preds = %124, %121, %94, %85
  %130 = load %struct.posix_acl*, %struct.posix_acl** %12, align 8
  %131 = call i32 @posix_acl_release(%struct.posix_acl* %130)
  br label %132

132:                                              ; preds = %129, %77, %72
  %133 = load i32, i32* %13, align 4
  store i32 %133, i32* %6, align 4
  br label %134

134:                                              ; preds = %132, %112, %59, %47, %27, %20
  %135 = load i32, i32* %6, align 4
  ret i32 %135
}

declare dso_local i32 @xfs_decode_acl(i8*) #1

declare dso_local i32 @S_ISDIR(i32) #1

declare dso_local i64 @current_fsuid(...) #1

declare dso_local i32 @capable(i32) #1

declare dso_local %struct.posix_acl* @posix_acl_from_xattr(i8*, i64) #1

declare dso_local i64 @IS_ERR(%struct.posix_acl*) #1

declare dso_local i32 @PTR_ERR(%struct.posix_acl*) #1

declare dso_local i32 @posix_acl_valid(%struct.posix_acl*) #1

declare dso_local i32 @posix_acl_equiv_mode(%struct.posix_acl*, i32*) #1

declare dso_local i32 @posix_acl_release(%struct.posix_acl*) #1

declare dso_local i32 @xfs_set_mode(%struct.inode*, i32) #1

declare dso_local i32 @xfs_set_acl(%struct.inode*, i32, %struct.posix_acl*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

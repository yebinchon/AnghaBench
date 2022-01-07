; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/extr_xattr.c_xattr_permission.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/extr_xattr.c_xattr_permission.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }

@MAY_WRITE = common dso_local global i32 0, align 4
@EPERM = common dso_local global i32 0, align 4
@XATTR_SECURITY_PREFIX = common dso_local global i32 0, align 4
@XATTR_SECURITY_PREFIX_LEN = common dso_local global i32 0, align 4
@XATTR_SYSTEM_PREFIX = common dso_local global i32 0, align 4
@XATTR_SYSTEM_PREFIX_LEN = common dso_local global i32 0, align 4
@XATTR_TRUSTED_PREFIX = common dso_local global i32 0, align 4
@XATTR_TRUSTED_PREFIX_LEN = common dso_local global i32 0, align 4
@CAP_SYS_ADMIN = common dso_local global i32 0, align 4
@XATTR_USER_PREFIX = common dso_local global i32 0, align 4
@XATTR_USER_PREFIX_LEN = common dso_local global i32 0, align 4
@S_ISVTX = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inode*, i8*, i32)* @xattr_permission to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @xattr_permission(%struct.inode* %0, i8* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.inode*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  store %struct.inode* %0, %struct.inode** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  %8 = load i32, i32* %7, align 4
  %9 = load i32, i32* @MAY_WRITE, align 4
  %10 = and i32 %8, %9
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %24

12:                                               ; preds = %3
  %13 = load %struct.inode*, %struct.inode** %5, align 8
  %14 = call i64 @IS_IMMUTABLE(%struct.inode* %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %20, label %16

16:                                               ; preds = %12
  %17 = load %struct.inode*, %struct.inode** %5, align 8
  %18 = call i64 @IS_APPEND(%struct.inode* %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %23

20:                                               ; preds = %16, %12
  %21 = load i32, i32* @EPERM, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %4, align 4
  br label %104

23:                                               ; preds = %16
  br label %24

24:                                               ; preds = %23, %3
  %25 = load i8*, i8** %6, align 8
  %26 = load i32, i32* @XATTR_SECURITY_PREFIX, align 4
  %27 = load i32, i32* @XATTR_SECURITY_PREFIX_LEN, align 4
  %28 = call i32 @strncmp(i8* %25, i32 %26, i32 %27)
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %36

30:                                               ; preds = %24
  %31 = load i8*, i8** %6, align 8
  %32 = load i32, i32* @XATTR_SYSTEM_PREFIX, align 4
  %33 = load i32, i32* @XATTR_SYSTEM_PREFIX_LEN, align 4
  %34 = call i32 @strncmp(i8* %31, i32 %32, i32 %33)
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %37, label %36

36:                                               ; preds = %30, %24
  store i32 0, i32* %4, align 4
  br label %104

37:                                               ; preds = %30
  %38 = load i8*, i8** %6, align 8
  %39 = load i32, i32* @XATTR_TRUSTED_PREFIX, align 4
  %40 = load i32, i32* @XATTR_TRUSTED_PREFIX_LEN, align 4
  %41 = call i32 @strncmp(i8* %38, i32 %39, i32 %40)
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %53, label %43

43:                                               ; preds = %37
  %44 = load i32, i32* @CAP_SYS_ADMIN, align 4
  %45 = call i64 @capable(i32 %44)
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %48

47:                                               ; preds = %43
  br label %51

48:                                               ; preds = %43
  %49 = load i32, i32* @EPERM, align 4
  %50 = sub nsw i32 0, %49
  br label %51

51:                                               ; preds = %48, %47
  %52 = phi i32 [ 0, %47 ], [ %50, %48 ]
  store i32 %52, i32* %4, align 4
  br label %104

53:                                               ; preds = %37
  %54 = load i8*, i8** %6, align 8
  %55 = load i32, i32* @XATTR_USER_PREFIX, align 4
  %56 = load i32, i32* @XATTR_USER_PREFIX_LEN, align 4
  %57 = call i32 @strncmp(i8* %54, i32 %55, i32 %56)
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %100, label %59

59:                                               ; preds = %53
  %60 = load %struct.inode*, %struct.inode** %5, align 8
  %61 = getelementptr inbounds %struct.inode, %struct.inode* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = call i32 @S_ISREG(i32 %62)
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %74, label %65

65:                                               ; preds = %59
  %66 = load %struct.inode*, %struct.inode** %5, align 8
  %67 = getelementptr inbounds %struct.inode, %struct.inode* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  %69 = call i64 @S_ISDIR(i32 %68)
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %74, label %71

71:                                               ; preds = %65
  %72 = load i32, i32* @EPERM, align 4
  %73 = sub nsw i32 0, %72
  store i32 %73, i32* %4, align 4
  br label %104

74:                                               ; preds = %65, %59
  %75 = load %struct.inode*, %struct.inode** %5, align 8
  %76 = getelementptr inbounds %struct.inode, %struct.inode* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 4
  %78 = call i64 @S_ISDIR(i32 %77)
  %79 = icmp ne i64 %78, 0
  br i1 %79, label %80, label %99

80:                                               ; preds = %74
  %81 = load %struct.inode*, %struct.inode** %5, align 8
  %82 = getelementptr inbounds %struct.inode, %struct.inode* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 4
  %84 = load i32, i32* @S_ISVTX, align 4
  %85 = and i32 %83, %84
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %87, label %99

87:                                               ; preds = %80
  %88 = load i32, i32* %7, align 4
  %89 = load i32, i32* @MAY_WRITE, align 4
  %90 = and i32 %88, %89
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %92, label %99

92:                                               ; preds = %87
  %93 = load %struct.inode*, %struct.inode** %5, align 8
  %94 = call i32 @is_owner_or_cap(%struct.inode* %93)
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %99, label %96

96:                                               ; preds = %92
  %97 = load i32, i32* @EPERM, align 4
  %98 = sub nsw i32 0, %97
  store i32 %98, i32* %4, align 4
  br label %104

99:                                               ; preds = %92, %87, %80, %74
  br label %100

100:                                              ; preds = %99, %53
  %101 = load %struct.inode*, %struct.inode** %5, align 8
  %102 = load i32, i32* %7, align 4
  %103 = call i32 @inode_permission(%struct.inode* %101, i32 %102)
  store i32 %103, i32* %4, align 4
  br label %104

104:                                              ; preds = %100, %96, %71, %51, %36, %20
  %105 = load i32, i32* %4, align 4
  ret i32 %105
}

declare dso_local i64 @IS_IMMUTABLE(%struct.inode*) #1

declare dso_local i64 @IS_APPEND(%struct.inode*) #1

declare dso_local i32 @strncmp(i8*, i32, i32) #1

declare dso_local i64 @capable(i32) #1

declare dso_local i32 @S_ISREG(i32) #1

declare dso_local i64 @S_ISDIR(i32) #1

declare dso_local i32 @is_owner_or_cap(%struct.inode*) #1

declare dso_local i32 @inode_permission(%struct.inode*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/jffs2/extr_acl.c_jffs2_set_acl.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/jffs2/extr_acl.c_jffs2_set_acl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.posix_acl = type { i32 }
%struct.iattr = type { i32, i32 }

@EOPNOTSUPP = common dso_local global i32 0, align 4
@JFFS2_XPREFIX_ACL_ACCESS = common dso_local global i32 0, align 4
@ATTR_MODE = common dso_local global i32 0, align 4
@JFFS2_XPREFIX_ACL_DEFAULT = common dso_local global i32 0, align 4
@EACCES = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inode*, i32, %struct.posix_acl*)* @jffs2_set_acl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @jffs2_set_acl(%struct.inode* %0, i32 %1, %struct.posix_acl* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.inode*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.posix_acl*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.iattr, align 4
  store %struct.inode* %0, %struct.inode** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.posix_acl* %2, %struct.posix_acl** %7, align 8
  %12 = load %struct.inode*, %struct.inode** %5, align 8
  %13 = getelementptr inbounds %struct.inode, %struct.inode* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = call i64 @S_ISLNK(i32 %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %20

17:                                               ; preds = %3
  %18 = load i32, i32* @EOPNOTSUPP, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %4, align 4
  br label %94

20:                                               ; preds = %3
  %21 = load i32, i32* %6, align 4
  switch i32 %21, label %77 [
    i32 129, label %22
    i32 128, label %60
  ]

22:                                               ; preds = %20
  %23 = load i32, i32* @JFFS2_XPREFIX_ACL_ACCESS, align 4
  store i32 %23, i32* %9, align 4
  %24 = load %struct.posix_acl*, %struct.posix_acl** %7, align 8
  %25 = icmp ne %struct.posix_acl* %24, null
  br i1 %25, label %26, label %59

26:                                               ; preds = %22
  %27 = load %struct.inode*, %struct.inode** %5, align 8
  %28 = getelementptr inbounds %struct.inode, %struct.inode* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  store i32 %29, i32* %10, align 4
  %30 = load %struct.posix_acl*, %struct.posix_acl** %7, align 8
  %31 = call i32 @posix_acl_equiv_mode(%struct.posix_acl* %30, i32* %10)
  store i32 %31, i32* %8, align 4
  %32 = load i32, i32* %8, align 4
  %33 = icmp slt i32 %32, 0
  br i1 %33, label %34, label %36

34:                                               ; preds = %26
  %35 = load i32, i32* %8, align 4
  store i32 %35, i32* %4, align 4
  br label %94

36:                                               ; preds = %26
  %37 = load %struct.inode*, %struct.inode** %5, align 8
  %38 = getelementptr inbounds %struct.inode, %struct.inode* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = load i32, i32* %10, align 4
  %41 = icmp ne i32 %39, %40
  br i1 %41, label %42, label %54

42:                                               ; preds = %36
  %43 = load i32, i32* @ATTR_MODE, align 4
  %44 = getelementptr inbounds %struct.iattr, %struct.iattr* %11, i32 0, i32 1
  store i32 %43, i32* %44, align 4
  %45 = load i32, i32* %10, align 4
  %46 = getelementptr inbounds %struct.iattr, %struct.iattr* %11, i32 0, i32 0
  store i32 %45, i32* %46, align 4
  %47 = load %struct.inode*, %struct.inode** %5, align 8
  %48 = call i32 @jffs2_do_setattr(%struct.inode* %47, %struct.iattr* %11)
  store i32 %48, i32* %8, align 4
  %49 = load i32, i32* %8, align 4
  %50 = icmp slt i32 %49, 0
  br i1 %50, label %51, label %53

51:                                               ; preds = %42
  %52 = load i32, i32* %8, align 4
  store i32 %52, i32* %4, align 4
  br label %94

53:                                               ; preds = %42
  br label %54

54:                                               ; preds = %53, %36
  %55 = load i32, i32* %8, align 4
  %56 = icmp eq i32 %55, 0
  br i1 %56, label %57, label %58

57:                                               ; preds = %54
  store %struct.posix_acl* null, %struct.posix_acl** %7, align 8
  br label %58

58:                                               ; preds = %57, %54
  br label %59

59:                                               ; preds = %58, %22
  br label %80

60:                                               ; preds = %20
  %61 = load i32, i32* @JFFS2_XPREFIX_ACL_DEFAULT, align 4
  store i32 %61, i32* %9, align 4
  %62 = load %struct.inode*, %struct.inode** %5, align 8
  %63 = getelementptr inbounds %struct.inode, %struct.inode* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = call i32 @S_ISDIR(i32 %64)
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %76, label %67

67:                                               ; preds = %60
  %68 = load %struct.posix_acl*, %struct.posix_acl** %7, align 8
  %69 = icmp ne %struct.posix_acl* %68, null
  br i1 %69, label %70, label %73

70:                                               ; preds = %67
  %71 = load i32, i32* @EACCES, align 4
  %72 = sub nsw i32 0, %71
  br label %74

73:                                               ; preds = %67
  br label %74

74:                                               ; preds = %73, %70
  %75 = phi i32 [ %72, %70 ], [ 0, %73 ]
  store i32 %75, i32* %4, align 4
  br label %94

76:                                               ; preds = %60
  br label %80

77:                                               ; preds = %20
  %78 = load i32, i32* @EINVAL, align 4
  %79 = sub nsw i32 0, %78
  store i32 %79, i32* %4, align 4
  br label %94

80:                                               ; preds = %76, %59
  %81 = load %struct.inode*, %struct.inode** %5, align 8
  %82 = load i32, i32* %9, align 4
  %83 = load %struct.posix_acl*, %struct.posix_acl** %7, align 8
  %84 = call i32 @__jffs2_set_acl(%struct.inode* %81, i32 %82, %struct.posix_acl* %83)
  store i32 %84, i32* %8, align 4
  %85 = load i32, i32* %8, align 4
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %92, label %87

87:                                               ; preds = %80
  %88 = load %struct.inode*, %struct.inode** %5, align 8
  %89 = load i32, i32* %6, align 4
  %90 = load %struct.posix_acl*, %struct.posix_acl** %7, align 8
  %91 = call i32 @set_cached_acl(%struct.inode* %88, i32 %89, %struct.posix_acl* %90)
  br label %92

92:                                               ; preds = %87, %80
  %93 = load i32, i32* %8, align 4
  store i32 %93, i32* %4, align 4
  br label %94

94:                                               ; preds = %92, %77, %74, %51, %34, %17
  %95 = load i32, i32* %4, align 4
  ret i32 %95
}

declare dso_local i64 @S_ISLNK(i32) #1

declare dso_local i32 @posix_acl_equiv_mode(%struct.posix_acl*, i32*) #1

declare dso_local i32 @jffs2_do_setattr(%struct.inode*, %struct.iattr*) #1

declare dso_local i32 @S_ISDIR(i32) #1

declare dso_local i32 @__jffs2_set_acl(%struct.inode*, i32, %struct.posix_acl*) #1

declare dso_local i32 @set_cached_acl(%struct.inode*, i32, %struct.posix_acl*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

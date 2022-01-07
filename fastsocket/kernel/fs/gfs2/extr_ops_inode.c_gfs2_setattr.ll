; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/gfs2/extr_ops_inode.c_gfs2_setattr.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/gfs2/extr_ops_inode.c_gfs2_setattr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dentry = type { %struct.inode* }
%struct.inode = type { i32 }
%struct.iattr = type { i32, i32 }
%struct.gfs2_inode = type { i32 }
%struct.gfs2_holder = type { i32 }

@LM_ST_EXCLUSIVE = common dso_local global i32 0, align 4
@EPERM = common dso_local global i32 0, align 4
@ATTR_SIZE = common dso_local global i32 0, align 4
@ATTR_UID = common dso_local global i32 0, align 4
@ATTR_GID = common dso_local global i32 0, align 4
@ATTR_MODE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dentry*, %struct.iattr*)* @gfs2_setattr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gfs2_setattr(%struct.dentry* %0, %struct.iattr* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.dentry*, align 8
  %5 = alloca %struct.iattr*, align 8
  %6 = alloca %struct.inode*, align 8
  %7 = alloca %struct.gfs2_inode*, align 8
  %8 = alloca %struct.gfs2_holder, align 4
  %9 = alloca i32, align 4
  store %struct.dentry* %0, %struct.dentry** %4, align 8
  store %struct.iattr* %1, %struct.iattr** %5, align 8
  %10 = load %struct.dentry*, %struct.dentry** %4, align 8
  %11 = getelementptr inbounds %struct.dentry, %struct.dentry* %10, i32 0, i32 0
  %12 = load %struct.inode*, %struct.inode** %11, align 8
  store %struct.inode* %12, %struct.inode** %6, align 8
  %13 = load %struct.inode*, %struct.inode** %6, align 8
  %14 = call %struct.gfs2_inode* @GFS2_I(%struct.inode* %13)
  store %struct.gfs2_inode* %14, %struct.gfs2_inode** %7, align 8
  %15 = load %struct.gfs2_inode*, %struct.gfs2_inode** %7, align 8
  %16 = getelementptr inbounds %struct.gfs2_inode, %struct.gfs2_inode* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = load i32, i32* @LM_ST_EXCLUSIVE, align 4
  %19 = call i32 @gfs2_glock_nq_init(i32 %17, i32 %18, i32 0, %struct.gfs2_holder* %8)
  store i32 %19, i32* %9, align 4
  %20 = load i32, i32* %9, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %24

22:                                               ; preds = %2
  %23 = load i32, i32* %9, align 4
  store i32 %23, i32* %3, align 4
  br label %99

24:                                               ; preds = %2
  %25 = load i32, i32* @EPERM, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %9, align 4
  %27 = load %struct.inode*, %struct.inode** %6, align 8
  %28 = call i64 @IS_IMMUTABLE(%struct.inode* %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %34, label %30

30:                                               ; preds = %24
  %31 = load %struct.inode*, %struct.inode** %6, align 8
  %32 = call i64 @IS_APPEND(%struct.inode* %31)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %35

34:                                               ; preds = %30, %24
  br label %90

35:                                               ; preds = %30
  %36 = load %struct.inode*, %struct.inode** %6, align 8
  %37 = load %struct.iattr*, %struct.iattr** %5, align 8
  %38 = call i32 @inode_change_ok(%struct.inode* %36, %struct.iattr* %37)
  store i32 %38, i32* %9, align 4
  %39 = load i32, i32* %9, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %42

41:                                               ; preds = %35
  br label %90

42:                                               ; preds = %35
  %43 = load %struct.iattr*, %struct.iattr** %5, align 8
  %44 = getelementptr inbounds %struct.iattr, %struct.iattr* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = load i32, i32* @ATTR_SIZE, align 4
  %47 = and i32 %45, %46
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %55

49:                                               ; preds = %42
  %50 = load %struct.inode*, %struct.inode** %6, align 8
  %51 = load %struct.iattr*, %struct.iattr** %5, align 8
  %52 = getelementptr inbounds %struct.iattr, %struct.iattr* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 4
  %54 = call i32 @gfs2_setattr_size(%struct.inode* %50, i32 %53)
  store i32 %54, i32* %9, align 4
  br label %89

55:                                               ; preds = %42
  %56 = load %struct.iattr*, %struct.iattr** %5, align 8
  %57 = getelementptr inbounds %struct.iattr, %struct.iattr* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = load i32, i32* @ATTR_UID, align 4
  %60 = load i32, i32* @ATTR_GID, align 4
  %61 = or i32 %59, %60
  %62 = and i32 %58, %61
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %68

64:                                               ; preds = %55
  %65 = load %struct.inode*, %struct.inode** %6, align 8
  %66 = load %struct.iattr*, %struct.iattr** %5, align 8
  %67 = call i32 @setattr_chown(%struct.inode* %65, %struct.iattr* %66)
  store i32 %67, i32* %9, align 4
  br label %88

68:                                               ; preds = %55
  %69 = load %struct.iattr*, %struct.iattr** %5, align 8
  %70 = getelementptr inbounds %struct.iattr, %struct.iattr* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 4
  %72 = load i32, i32* @ATTR_MODE, align 4
  %73 = and i32 %71, %72
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %75, label %83

75:                                               ; preds = %68
  %76 = load %struct.inode*, %struct.inode** %6, align 8
  %77 = call i64 @IS_POSIXACL(%struct.inode* %76)
  %78 = icmp ne i64 %77, 0
  br i1 %78, label %79, label %83

79:                                               ; preds = %75
  %80 = load %struct.gfs2_inode*, %struct.gfs2_inode** %7, align 8
  %81 = load %struct.iattr*, %struct.iattr** %5, align 8
  %82 = call i32 @gfs2_acl_chmod(%struct.gfs2_inode* %80, %struct.iattr* %81)
  store i32 %82, i32* %9, align 4
  br label %87

83:                                               ; preds = %75, %68
  %84 = load %struct.inode*, %struct.inode** %6, align 8
  %85 = load %struct.iattr*, %struct.iattr** %5, align 8
  %86 = call i32 @gfs2_setattr_simple(%struct.inode* %84, %struct.iattr* %85)
  store i32 %86, i32* %9, align 4
  br label %87

87:                                               ; preds = %83, %79
  br label %88

88:                                               ; preds = %87, %64
  br label %89

89:                                               ; preds = %88, %49
  br label %90

90:                                               ; preds = %89, %41, %34
  %91 = load i32, i32* %9, align 4
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %96, label %93

93:                                               ; preds = %90
  %94 = load %struct.inode*, %struct.inode** %6, align 8
  %95 = call i32 @mark_inode_dirty(%struct.inode* %94)
  br label %96

96:                                               ; preds = %93, %90
  %97 = call i32 @gfs2_glock_dq_uninit(%struct.gfs2_holder* %8)
  %98 = load i32, i32* %9, align 4
  store i32 %98, i32* %3, align 4
  br label %99

99:                                               ; preds = %96, %22
  %100 = load i32, i32* %3, align 4
  ret i32 %100
}

declare dso_local %struct.gfs2_inode* @GFS2_I(%struct.inode*) #1

declare dso_local i32 @gfs2_glock_nq_init(i32, i32, i32, %struct.gfs2_holder*) #1

declare dso_local i64 @IS_IMMUTABLE(%struct.inode*) #1

declare dso_local i64 @IS_APPEND(%struct.inode*) #1

declare dso_local i32 @inode_change_ok(%struct.inode*, %struct.iattr*) #1

declare dso_local i32 @gfs2_setattr_size(%struct.inode*, i32) #1

declare dso_local i32 @setattr_chown(%struct.inode*, %struct.iattr*) #1

declare dso_local i64 @IS_POSIXACL(%struct.inode*) #1

declare dso_local i32 @gfs2_acl_chmod(%struct.gfs2_inode*, %struct.iattr*) #1

declare dso_local i32 @gfs2_setattr_simple(%struct.inode*, %struct.iattr*) #1

declare dso_local i32 @mark_inode_dirty(%struct.inode*) #1

declare dso_local i32 @gfs2_glock_dq_uninit(%struct.gfs2_holder*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/ocfs2/extr_refcounttree.c_ocfs2_vfs_reflink.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/ocfs2/extr_refcounttree.c_ocfs2_vfs_reflink.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i64, i64, i32, i32, i32 }
%struct.dentry = type { %struct.inode* }

@ENOENT = common dso_local global i32 0, align 4
@EXDEV = common dso_local global i32 0, align 4
@EPERM = common dso_local global i32 0, align 4
@CAP_CHOWN = common dso_local global i32 0, align 4
@MAY_READ = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ocfs2_vfs_reflink(%struct.dentry* %0, %struct.inode* %1, %struct.dentry* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.dentry*, align 8
  %7 = alloca %struct.inode*, align 8
  %8 = alloca %struct.dentry*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.inode*, align 8
  %11 = alloca i32, align 4
  store %struct.dentry* %0, %struct.dentry** %6, align 8
  store %struct.inode* %1, %struct.inode** %7, align 8
  store %struct.dentry* %2, %struct.dentry** %8, align 8
  store i32 %3, i32* %9, align 4
  %12 = load %struct.dentry*, %struct.dentry** %6, align 8
  %13 = getelementptr inbounds %struct.dentry, %struct.dentry* %12, i32 0, i32 0
  %14 = load %struct.inode*, %struct.inode** %13, align 8
  store %struct.inode* %14, %struct.inode** %10, align 8
  %15 = load %struct.inode*, %struct.inode** %10, align 8
  %16 = icmp ne %struct.inode* %15, null
  br i1 %16, label %20, label %17

17:                                               ; preds = %4
  %18 = load i32, i32* @ENOENT, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %5, align 4
  br label %123

20:                                               ; preds = %4
  %21 = load %struct.inode*, %struct.inode** %7, align 8
  %22 = load %struct.dentry*, %struct.dentry** %8, align 8
  %23 = call i32 @ocfs2_may_create(%struct.inode* %21, %struct.dentry* %22)
  store i32 %23, i32* %11, align 4
  %24 = load i32, i32* %11, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %28

26:                                               ; preds = %20
  %27 = load i32, i32* %11, align 4
  store i32 %27, i32* %5, align 4
  br label %123

28:                                               ; preds = %20
  %29 = load %struct.inode*, %struct.inode** %7, align 8
  %30 = getelementptr inbounds %struct.inode, %struct.inode* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = load %struct.inode*, %struct.inode** %10, align 8
  %33 = getelementptr inbounds %struct.inode, %struct.inode* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = icmp ne i64 %31, %34
  br i1 %35, label %36, label %39

36:                                               ; preds = %28
  %37 = load i32, i32* @EXDEV, align 4
  %38 = sub nsw i32 0, %37
  store i32 %38, i32* %5, align 4
  br label %123

39:                                               ; preds = %28
  %40 = load %struct.inode*, %struct.inode** %10, align 8
  %41 = call i64 @IS_APPEND(%struct.inode* %40)
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %47, label %43

43:                                               ; preds = %39
  %44 = load %struct.inode*, %struct.inode** %10, align 8
  %45 = call i64 @IS_IMMUTABLE(%struct.inode* %44)
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %50

47:                                               ; preds = %43, %39
  %48 = load i32, i32* @EPERM, align 4
  %49 = sub nsw i32 0, %48
  store i32 %49, i32* %5, align 4
  br label %123

50:                                               ; preds = %43
  %51 = load %struct.inode*, %struct.inode** %10, align 8
  %52 = getelementptr inbounds %struct.inode, %struct.inode* %51, i32 0, i32 4
  %53 = load i32, i32* %52, align 8
  %54 = call i32 @S_ISREG(i32 %53)
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %59, label %56

56:                                               ; preds = %50
  %57 = load i32, i32* @EPERM, align 4
  %58 = sub nsw i32 0, %57
  store i32 %58, i32* %5, align 4
  br label %123

59:                                               ; preds = %50
  %60 = load i32, i32* %9, align 4
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %89

62:                                               ; preds = %59
  %63 = call i64 (...) @current_fsuid()
  %64 = load %struct.inode*, %struct.inode** %10, align 8
  %65 = getelementptr inbounds %struct.inode, %struct.inode* %64, i32 0, i32 1
  %66 = load i64, i64* %65, align 8
  %67 = icmp ne i64 %63, %66
  br i1 %67, label %68, label %75

68:                                               ; preds = %62
  %69 = load i32, i32* @CAP_CHOWN, align 4
  %70 = call i32 @capable(i32 %69)
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %75, label %72

72:                                               ; preds = %68
  %73 = load i32, i32* @EPERM, align 4
  %74 = sub nsw i32 0, %73
  store i32 %74, i32* %5, align 4
  br label %123

75:                                               ; preds = %68, %62
  %76 = load %struct.inode*, %struct.inode** %10, align 8
  %77 = getelementptr inbounds %struct.inode, %struct.inode* %76, i32 0, i32 3
  %78 = load i32, i32* %77, align 4
  %79 = call i32 @in_group_p(i32 %78)
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %88, label %81

81:                                               ; preds = %75
  %82 = load i32, i32* @CAP_CHOWN, align 4
  %83 = call i32 @capable(i32 %82)
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %88, label %85

85:                                               ; preds = %81
  %86 = load i32, i32* @EPERM, align 4
  %87 = sub nsw i32 0, %86
  store i32 %87, i32* %5, align 4
  br label %123

88:                                               ; preds = %81, %75
  br label %89

89:                                               ; preds = %88, %59
  %90 = load i32, i32* %9, align 4
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %101, label %92

92:                                               ; preds = %89
  %93 = load %struct.inode*, %struct.inode** %10, align 8
  %94 = load i32, i32* @MAY_READ, align 4
  %95 = call i32 @inode_permission(%struct.inode* %93, i32 %94)
  store i32 %95, i32* %11, align 4
  %96 = load i32, i32* %11, align 4
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %98, label %100

98:                                               ; preds = %92
  %99 = load i32, i32* %11, align 4
  store i32 %99, i32* %5, align 4
  br label %123

100:                                              ; preds = %92
  br label %101

101:                                              ; preds = %100, %89
  %102 = load %struct.inode*, %struct.inode** %10, align 8
  %103 = getelementptr inbounds %struct.inode, %struct.inode* %102, i32 0, i32 2
  %104 = call i32 @mutex_lock(i32* %103)
  %105 = load %struct.inode*, %struct.inode** %7, align 8
  %106 = call i32 @vfs_dq_init(%struct.inode* %105)
  %107 = load %struct.dentry*, %struct.dentry** %6, align 8
  %108 = load %struct.inode*, %struct.inode** %7, align 8
  %109 = load %struct.dentry*, %struct.dentry** %8, align 8
  %110 = load i32, i32* %9, align 4
  %111 = call i32 @ocfs2_reflink(%struct.dentry* %107, %struct.inode* %108, %struct.dentry* %109, i32 %110)
  store i32 %111, i32* %11, align 4
  %112 = load %struct.inode*, %struct.inode** %10, align 8
  %113 = getelementptr inbounds %struct.inode, %struct.inode* %112, i32 0, i32 2
  %114 = call i32 @mutex_unlock(i32* %113)
  %115 = load i32, i32* %11, align 4
  %116 = icmp ne i32 %115, 0
  br i1 %116, label %121, label %117

117:                                              ; preds = %101
  %118 = load %struct.inode*, %struct.inode** %7, align 8
  %119 = load %struct.dentry*, %struct.dentry** %8, align 8
  %120 = call i32 @fsnotify_create(%struct.inode* %118, %struct.dentry* %119)
  br label %121

121:                                              ; preds = %117, %101
  %122 = load i32, i32* %11, align 4
  store i32 %122, i32* %5, align 4
  br label %123

123:                                              ; preds = %121, %98, %85, %72, %56, %47, %36, %26, %17
  %124 = load i32, i32* %5, align 4
  ret i32 %124
}

declare dso_local i32 @ocfs2_may_create(%struct.inode*, %struct.dentry*) #1

declare dso_local i64 @IS_APPEND(%struct.inode*) #1

declare dso_local i64 @IS_IMMUTABLE(%struct.inode*) #1

declare dso_local i32 @S_ISREG(i32) #1

declare dso_local i64 @current_fsuid(...) #1

declare dso_local i32 @capable(i32) #1

declare dso_local i32 @in_group_p(i32) #1

declare dso_local i32 @inode_permission(%struct.inode*, i32) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @vfs_dq_init(%struct.inode*) #1

declare dso_local i32 @ocfs2_reflink(%struct.dentry*, %struct.inode*, %struct.dentry*, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @fsnotify_create(%struct.inode*, %struct.dentry*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/extr_namei.c_may_delete.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/extr_namei.c_may_delete.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.dentry = type { i32, %struct.inode*, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.inode* }

@ENOENT = common dso_local global i32 0, align 4
@AUDIT_TYPE_CHILD_DELETE = common dso_local global i32 0, align 4
@MAY_WRITE = common dso_local global i32 0, align 4
@MAY_EXEC = common dso_local global i32 0, align 4
@EPERM = common dso_local global i32 0, align 4
@ENOTDIR = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4
@EISDIR = common dso_local global i32 0, align 4
@DCACHE_NFSFS_RENAMED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inode*, %struct.dentry*, i32)* @may_delete to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @may_delete(%struct.inode* %0, %struct.dentry* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.inode*, align 8
  %6 = alloca %struct.dentry*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.inode* %0, %struct.inode** %5, align 8
  store %struct.dentry* %1, %struct.dentry** %6, align 8
  store i32 %2, i32* %7, align 4
  %9 = load %struct.dentry*, %struct.dentry** %6, align 8
  %10 = getelementptr inbounds %struct.dentry, %struct.dentry* %9, i32 0, i32 1
  %11 = load %struct.inode*, %struct.inode** %10, align 8
  %12 = icmp ne %struct.inode* %11, null
  br i1 %12, label %16, label %13

13:                                               ; preds = %3
  %14 = load i32, i32* @ENOENT, align 4
  %15 = sub nsw i32 0, %14
  store i32 %15, i32* %4, align 4
  br label %126

16:                                               ; preds = %3
  %17 = load %struct.dentry*, %struct.dentry** %6, align 8
  %18 = getelementptr inbounds %struct.dentry, %struct.dentry* %17, i32 0, i32 2
  %19 = load %struct.TYPE_2__*, %struct.TYPE_2__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  %21 = load %struct.inode*, %struct.inode** %20, align 8
  %22 = load %struct.inode*, %struct.inode** %5, align 8
  %23 = icmp ne %struct.inode* %21, %22
  %24 = zext i1 %23 to i32
  %25 = call i32 @BUG_ON(i32 %24)
  %26 = load %struct.inode*, %struct.inode** %5, align 8
  %27 = load %struct.dentry*, %struct.dentry** %6, align 8
  %28 = load i32, i32* @AUDIT_TYPE_CHILD_DELETE, align 4
  %29 = call i32 @audit_inode_child(%struct.inode* %26, %struct.dentry* %27, i32 %28)
  %30 = load %struct.inode*, %struct.inode** %5, align 8
  %31 = load i32, i32* @MAY_WRITE, align 4
  %32 = load i32, i32* @MAY_EXEC, align 4
  %33 = or i32 %31, %32
  %34 = call i32 @inode_permission(%struct.inode* %30, i32 %33)
  store i32 %34, i32* %8, align 4
  %35 = load i32, i32* %8, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %39

37:                                               ; preds = %16
  %38 = load i32, i32* %8, align 4
  store i32 %38, i32* %4, align 4
  br label %126

39:                                               ; preds = %16
  %40 = load %struct.inode*, %struct.inode** %5, align 8
  %41 = call i64 @IS_APPEND(%struct.inode* %40)
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %46

43:                                               ; preds = %39
  %44 = load i32, i32* @EPERM, align 4
  %45 = sub nsw i32 0, %44
  store i32 %45, i32* %4, align 4
  br label %126

46:                                               ; preds = %39
  %47 = load %struct.inode*, %struct.inode** %5, align 8
  %48 = load %struct.dentry*, %struct.dentry** %6, align 8
  %49 = getelementptr inbounds %struct.dentry, %struct.dentry* %48, i32 0, i32 1
  %50 = load %struct.inode*, %struct.inode** %49, align 8
  %51 = call i64 @check_sticky(%struct.inode* %47, %struct.inode* %50)
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %71, label %53

53:                                               ; preds = %46
  %54 = load %struct.dentry*, %struct.dentry** %6, align 8
  %55 = getelementptr inbounds %struct.dentry, %struct.dentry* %54, i32 0, i32 1
  %56 = load %struct.inode*, %struct.inode** %55, align 8
  %57 = call i64 @IS_APPEND(%struct.inode* %56)
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %71, label %59

59:                                               ; preds = %53
  %60 = load %struct.dentry*, %struct.dentry** %6, align 8
  %61 = getelementptr inbounds %struct.dentry, %struct.dentry* %60, i32 0, i32 1
  %62 = load %struct.inode*, %struct.inode** %61, align 8
  %63 = call i64 @IS_IMMUTABLE(%struct.inode* %62)
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %71, label %65

65:                                               ; preds = %59
  %66 = load %struct.dentry*, %struct.dentry** %6, align 8
  %67 = getelementptr inbounds %struct.dentry, %struct.dentry* %66, i32 0, i32 1
  %68 = load %struct.inode*, %struct.inode** %67, align 8
  %69 = call i64 @IS_SWAPFILE(%struct.inode* %68)
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %71, label %74

71:                                               ; preds = %65, %59, %53, %46
  %72 = load i32, i32* @EPERM, align 4
  %73 = sub nsw i32 0, %72
  store i32 %73, i32* %4, align 4
  br label %126

74:                                               ; preds = %65
  %75 = load i32, i32* %7, align 4
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %77, label %96

77:                                               ; preds = %74
  %78 = load %struct.dentry*, %struct.dentry** %6, align 8
  %79 = getelementptr inbounds %struct.dentry, %struct.dentry* %78, i32 0, i32 1
  %80 = load %struct.inode*, %struct.inode** %79, align 8
  %81 = getelementptr inbounds %struct.inode, %struct.inode* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 4
  %83 = call i64 @S_ISDIR(i32 %82)
  %84 = icmp ne i64 %83, 0
  br i1 %84, label %88, label %85

85:                                               ; preds = %77
  %86 = load i32, i32* @ENOTDIR, align 4
  %87 = sub nsw i32 0, %86
  store i32 %87, i32* %4, align 4
  br label %126

88:                                               ; preds = %77
  %89 = load %struct.dentry*, %struct.dentry** %6, align 8
  %90 = call i64 @IS_ROOT(%struct.dentry* %89)
  %91 = icmp ne i64 %90, 0
  br i1 %91, label %92, label %95

92:                                               ; preds = %88
  %93 = load i32, i32* @EBUSY, align 4
  %94 = sub nsw i32 0, %93
  store i32 %94, i32* %4, align 4
  br label %126

95:                                               ; preds = %88
  br label %108

96:                                               ; preds = %74
  %97 = load %struct.dentry*, %struct.dentry** %6, align 8
  %98 = getelementptr inbounds %struct.dentry, %struct.dentry* %97, i32 0, i32 1
  %99 = load %struct.inode*, %struct.inode** %98, align 8
  %100 = getelementptr inbounds %struct.inode, %struct.inode* %99, i32 0, i32 0
  %101 = load i32, i32* %100, align 4
  %102 = call i64 @S_ISDIR(i32 %101)
  %103 = icmp ne i64 %102, 0
  br i1 %103, label %104, label %107

104:                                              ; preds = %96
  %105 = load i32, i32* @EISDIR, align 4
  %106 = sub nsw i32 0, %105
  store i32 %106, i32* %4, align 4
  br label %126

107:                                              ; preds = %96
  br label %108

108:                                              ; preds = %107, %95
  %109 = load %struct.inode*, %struct.inode** %5, align 8
  %110 = call i64 @IS_DEADDIR(%struct.inode* %109)
  %111 = icmp ne i64 %110, 0
  br i1 %111, label %112, label %115

112:                                              ; preds = %108
  %113 = load i32, i32* @ENOENT, align 4
  %114 = sub nsw i32 0, %113
  store i32 %114, i32* %4, align 4
  br label %126

115:                                              ; preds = %108
  %116 = load %struct.dentry*, %struct.dentry** %6, align 8
  %117 = getelementptr inbounds %struct.dentry, %struct.dentry* %116, i32 0, i32 0
  %118 = load i32, i32* %117, align 8
  %119 = load i32, i32* @DCACHE_NFSFS_RENAMED, align 4
  %120 = and i32 %118, %119
  %121 = icmp ne i32 %120, 0
  br i1 %121, label %122, label %125

122:                                              ; preds = %115
  %123 = load i32, i32* @EBUSY, align 4
  %124 = sub nsw i32 0, %123
  store i32 %124, i32* %4, align 4
  br label %126

125:                                              ; preds = %115
  store i32 0, i32* %4, align 4
  br label %126

126:                                              ; preds = %125, %122, %112, %104, %92, %85, %71, %43, %37, %13
  %127 = load i32, i32* %4, align 4
  ret i32 %127
}

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @audit_inode_child(%struct.inode*, %struct.dentry*, i32) #1

declare dso_local i32 @inode_permission(%struct.inode*, i32) #1

declare dso_local i64 @IS_APPEND(%struct.inode*) #1

declare dso_local i64 @check_sticky(%struct.inode*, %struct.inode*) #1

declare dso_local i64 @IS_IMMUTABLE(%struct.inode*) #1

declare dso_local i64 @IS_SWAPFILE(%struct.inode*) #1

declare dso_local i64 @S_ISDIR(i32) #1

declare dso_local i64 @IS_ROOT(%struct.dentry*) #1

declare dso_local i64 @IS_DEADDIR(%struct.inode*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

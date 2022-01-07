; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/extr_namei.c_vfs_rename_dir.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/extr_namei.c_vfs_rename_dir.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { %struct.TYPE_6__*, i32, i32, %struct.TYPE_4__* }
%struct.TYPE_6__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_4__ = type { {}* }
%struct.dentry = type { %struct.inode* }

@MAY_WRITE = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4
@S_DEAD = common dso_local global i32 0, align 4
@FS_RENAME_DOES_D_MOVE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inode*, %struct.dentry*, %struct.inode*, %struct.dentry*)* @vfs_rename_dir to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vfs_rename_dir(%struct.inode* %0, %struct.dentry* %1, %struct.inode* %2, %struct.dentry* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.inode*, align 8
  %7 = alloca %struct.dentry*, align 8
  %8 = alloca %struct.inode*, align 8
  %9 = alloca %struct.dentry*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.inode*, align 8
  store %struct.inode* %0, %struct.inode** %6, align 8
  store %struct.dentry* %1, %struct.dentry** %7, align 8
  store %struct.inode* %2, %struct.inode** %8, align 8
  store %struct.dentry* %3, %struct.dentry** %9, align 8
  store i32 0, i32* %10, align 4
  %12 = load %struct.inode*, %struct.inode** %8, align 8
  %13 = load %struct.inode*, %struct.inode** %6, align 8
  %14 = icmp ne %struct.inode* %12, %13
  br i1 %14, label %15, label %26

15:                                               ; preds = %4
  %16 = load %struct.dentry*, %struct.dentry** %7, align 8
  %17 = getelementptr inbounds %struct.dentry, %struct.dentry* %16, i32 0, i32 0
  %18 = load %struct.inode*, %struct.inode** %17, align 8
  %19 = load i32, i32* @MAY_WRITE, align 4
  %20 = call i32 @inode_permission(%struct.inode* %18, i32 %19)
  store i32 %20, i32* %10, align 4
  %21 = load i32, i32* %10, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %25

23:                                               ; preds = %15
  %24 = load i32, i32* %10, align 4
  store i32 %24, i32* %5, align 4
  br label %117

25:                                               ; preds = %15
  br label %26

26:                                               ; preds = %25, %4
  %27 = load %struct.inode*, %struct.inode** %6, align 8
  %28 = load %struct.dentry*, %struct.dentry** %7, align 8
  %29 = load %struct.inode*, %struct.inode** %8, align 8
  %30 = load %struct.dentry*, %struct.dentry** %9, align 8
  %31 = call i32 @security_inode_rename(%struct.inode* %27, %struct.dentry* %28, %struct.inode* %29, %struct.dentry* %30)
  store i32 %31, i32* %10, align 4
  %32 = load i32, i32* %10, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %36

34:                                               ; preds = %26
  %35 = load i32, i32* %10, align 4
  store i32 %35, i32* %5, align 4
  br label %117

36:                                               ; preds = %26
  %37 = load %struct.dentry*, %struct.dentry** %9, align 8
  %38 = getelementptr inbounds %struct.dentry, %struct.dentry* %37, i32 0, i32 0
  %39 = load %struct.inode*, %struct.inode** %38, align 8
  store %struct.inode* %39, %struct.inode** %11, align 8
  %40 = load %struct.inode*, %struct.inode** %11, align 8
  %41 = icmp ne %struct.inode* %40, null
  br i1 %41, label %42, label %48

42:                                               ; preds = %36
  %43 = load %struct.inode*, %struct.inode** %11, align 8
  %44 = getelementptr inbounds %struct.inode, %struct.inode* %43, i32 0, i32 1
  %45 = call i32 @mutex_lock(i32* %44)
  %46 = load %struct.dentry*, %struct.dentry** %9, align 8
  %47 = call i32 @dentry_unhash(%struct.dentry* %46)
  br label %48

48:                                               ; preds = %42, %36
  %49 = load %struct.dentry*, %struct.dentry** %7, align 8
  %50 = call i64 @d_mountpoint(%struct.dentry* %49)
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %56, label %52

52:                                               ; preds = %48
  %53 = load %struct.dentry*, %struct.dentry** %9, align 8
  %54 = call i64 @d_mountpoint(%struct.dentry* %53)
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %59

56:                                               ; preds = %52, %48
  %57 = load i32, i32* @EBUSY, align 4
  %58 = sub nsw i32 0, %57
  store i32 %58, i32* %10, align 4
  br label %71

59:                                               ; preds = %52
  %60 = load %struct.inode*, %struct.inode** %6, align 8
  %61 = getelementptr inbounds %struct.inode, %struct.inode* %60, i32 0, i32 3
  %62 = load %struct.TYPE_4__*, %struct.TYPE_4__** %61, align 8
  %63 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %62, i32 0, i32 0
  %64 = bitcast {}** %63 to i32 (%struct.inode*, %struct.dentry*, %struct.inode*, %struct.dentry*)**
  %65 = load i32 (%struct.inode*, %struct.dentry*, %struct.inode*, %struct.dentry*)*, i32 (%struct.inode*, %struct.dentry*, %struct.inode*, %struct.dentry*)** %64, align 8
  %66 = load %struct.inode*, %struct.inode** %6, align 8
  %67 = load %struct.dentry*, %struct.dentry** %7, align 8
  %68 = load %struct.inode*, %struct.inode** %8, align 8
  %69 = load %struct.dentry*, %struct.dentry** %9, align 8
  %70 = call i32 %65(%struct.inode* %66, %struct.dentry* %67, %struct.inode* %68, %struct.dentry* %69)
  store i32 %70, i32* %10, align 4
  br label %71

71:                                               ; preds = %59, %56
  %72 = load %struct.inode*, %struct.inode** %11, align 8
  %73 = icmp ne %struct.inode* %72, null
  br i1 %73, label %74, label %96

74:                                               ; preds = %71
  %75 = load i32, i32* %10, align 4
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %83, label %77

77:                                               ; preds = %74
  %78 = load i32, i32* @S_DEAD, align 4
  %79 = load %struct.inode*, %struct.inode** %11, align 8
  %80 = getelementptr inbounds %struct.inode, %struct.inode* %79, i32 0, i32 2
  %81 = load i32, i32* %80, align 4
  %82 = or i32 %81, %78
  store i32 %82, i32* %80, align 4
  br label %83

83:                                               ; preds = %77, %74
  %84 = load %struct.inode*, %struct.inode** %11, align 8
  %85 = getelementptr inbounds %struct.inode, %struct.inode* %84, i32 0, i32 1
  %86 = call i32 @mutex_unlock(i32* %85)
  %87 = load %struct.dentry*, %struct.dentry** %9, align 8
  %88 = call i64 @d_unhashed(%struct.dentry* %87)
  %89 = icmp ne i64 %88, 0
  br i1 %89, label %90, label %93

90:                                               ; preds = %83
  %91 = load %struct.dentry*, %struct.dentry** %9, align 8
  %92 = call i32 @d_rehash(%struct.dentry* %91)
  br label %93

93:                                               ; preds = %90, %83
  %94 = load %struct.dentry*, %struct.dentry** %9, align 8
  %95 = call i32 @dput(%struct.dentry* %94)
  br label %96

96:                                               ; preds = %93, %71
  %97 = load i32, i32* %10, align 4
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %115, label %99

99:                                               ; preds = %96
  %100 = load %struct.inode*, %struct.inode** %6, align 8
  %101 = getelementptr inbounds %struct.inode, %struct.inode* %100, i32 0, i32 0
  %102 = load %struct.TYPE_6__*, %struct.TYPE_6__** %101, align 8
  %103 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %102, i32 0, i32 0
  %104 = load %struct.TYPE_5__*, %struct.TYPE_5__** %103, align 8
  %105 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %104, i32 0, i32 0
  %106 = load i32, i32* %105, align 4
  %107 = load i32, i32* @FS_RENAME_DOES_D_MOVE, align 4
  %108 = and i32 %106, %107
  %109 = icmp ne i32 %108, 0
  br i1 %109, label %114, label %110

110:                                              ; preds = %99
  %111 = load %struct.dentry*, %struct.dentry** %7, align 8
  %112 = load %struct.dentry*, %struct.dentry** %9, align 8
  %113 = call i32 @d_move(%struct.dentry* %111, %struct.dentry* %112)
  br label %114

114:                                              ; preds = %110, %99
  br label %115

115:                                              ; preds = %114, %96
  %116 = load i32, i32* %10, align 4
  store i32 %116, i32* %5, align 4
  br label %117

117:                                              ; preds = %115, %34, %23
  %118 = load i32, i32* %5, align 4
  ret i32 %118
}

declare dso_local i32 @inode_permission(%struct.inode*, i32) #1

declare dso_local i32 @security_inode_rename(%struct.inode*, %struct.dentry*, %struct.inode*, %struct.dentry*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @dentry_unhash(%struct.dentry*) #1

declare dso_local i64 @d_mountpoint(%struct.dentry*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i64 @d_unhashed(%struct.dentry*) #1

declare dso_local i32 @d_rehash(%struct.dentry*) #1

declare dso_local i32 @dput(%struct.dentry*) #1

declare dso_local i32 @d_move(%struct.dentry*, %struct.dentry*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

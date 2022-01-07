; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/extr_namei.c_vfs_rmdir.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/extr_namei.c_vfs_rmdir.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { {}* }
%struct.dentry = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32, i32 }

@EPERM = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4
@S_DEAD = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @vfs_rmdir(%struct.inode* %0, %struct.dentry* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.inode*, align 8
  %5 = alloca %struct.dentry*, align 8
  %6 = alloca i32, align 4
  store %struct.inode* %0, %struct.inode** %4, align 8
  store %struct.dentry* %1, %struct.dentry** %5, align 8
  %7 = load %struct.inode*, %struct.inode** %4, align 8
  %8 = load %struct.dentry*, %struct.dentry** %5, align 8
  %9 = call i32 @may_delete(%struct.inode* %7, %struct.dentry* %8, i32 1)
  store i32 %9, i32* %6, align 4
  %10 = load i32, i32* %6, align 4
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %14

12:                                               ; preds = %2
  %13 = load i32, i32* %6, align 4
  store i32 %13, i32* %3, align 4
  br label %84

14:                                               ; preds = %2
  %15 = load %struct.inode*, %struct.inode** %4, align 8
  %16 = getelementptr inbounds %struct.inode, %struct.inode* %15, i32 0, i32 0
  %17 = load %struct.TYPE_4__*, %struct.TYPE_4__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 0
  %19 = bitcast {}** %18 to i32 (%struct.inode*, %struct.dentry*)**
  %20 = load i32 (%struct.inode*, %struct.dentry*)*, i32 (%struct.inode*, %struct.dentry*)** %19, align 8
  %21 = icmp ne i32 (%struct.inode*, %struct.dentry*)* %20, null
  br i1 %21, label %25, label %22

22:                                               ; preds = %14
  %23 = load i32, i32* @EPERM, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %3, align 4
  br label %84

25:                                               ; preds = %14
  %26 = load %struct.inode*, %struct.inode** %4, align 8
  %27 = call i32 @vfs_dq_init(%struct.inode* %26)
  %28 = load %struct.dentry*, %struct.dentry** %5, align 8
  %29 = getelementptr inbounds %struct.dentry, %struct.dentry* %28, i32 0, i32 0
  %30 = load %struct.TYPE_3__*, %struct.TYPE_3__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %30, i32 0, i32 0
  %32 = call i32 @mutex_lock(i32* %31)
  %33 = load %struct.dentry*, %struct.dentry** %5, align 8
  %34 = call i32 @dentry_unhash(%struct.dentry* %33)
  %35 = load %struct.dentry*, %struct.dentry** %5, align 8
  %36 = call i64 @d_mountpoint(%struct.dentry* %35)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %41

38:                                               ; preds = %25
  %39 = load i32, i32* @EBUSY, align 4
  %40 = sub nsw i32 0, %39
  store i32 %40, i32* %6, align 4
  br label %69

41:                                               ; preds = %25
  %42 = load %struct.inode*, %struct.inode** %4, align 8
  %43 = load %struct.dentry*, %struct.dentry** %5, align 8
  %44 = call i32 @security_inode_rmdir(%struct.inode* %42, %struct.dentry* %43)
  store i32 %44, i32* %6, align 4
  %45 = load i32, i32* %6, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %68, label %47

47:                                               ; preds = %41
  %48 = load %struct.inode*, %struct.inode** %4, align 8
  %49 = getelementptr inbounds %struct.inode, %struct.inode* %48, i32 0, i32 0
  %50 = load %struct.TYPE_4__*, %struct.TYPE_4__** %49, align 8
  %51 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %50, i32 0, i32 0
  %52 = bitcast {}** %51 to i32 (%struct.inode*, %struct.dentry*)**
  %53 = load i32 (%struct.inode*, %struct.dentry*)*, i32 (%struct.inode*, %struct.dentry*)** %52, align 8
  %54 = load %struct.inode*, %struct.inode** %4, align 8
  %55 = load %struct.dentry*, %struct.dentry** %5, align 8
  %56 = call i32 %53(%struct.inode* %54, %struct.dentry* %55)
  store i32 %56, i32* %6, align 4
  %57 = load i32, i32* %6, align 4
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %67, label %59

59:                                               ; preds = %47
  %60 = load i32, i32* @S_DEAD, align 4
  %61 = load %struct.dentry*, %struct.dentry** %5, align 8
  %62 = getelementptr inbounds %struct.dentry, %struct.dentry* %61, i32 0, i32 0
  %63 = load %struct.TYPE_3__*, %struct.TYPE_3__** %62, align 8
  %64 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %63, i32 0, i32 1
  %65 = load i32, i32* %64, align 4
  %66 = or i32 %65, %60
  store i32 %66, i32* %64, align 4
  br label %67

67:                                               ; preds = %59, %47
  br label %68

68:                                               ; preds = %67, %41
  br label %69

69:                                               ; preds = %68, %38
  %70 = load %struct.dentry*, %struct.dentry** %5, align 8
  %71 = getelementptr inbounds %struct.dentry, %struct.dentry* %70, i32 0, i32 0
  %72 = load %struct.TYPE_3__*, %struct.TYPE_3__** %71, align 8
  %73 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %72, i32 0, i32 0
  %74 = call i32 @mutex_unlock(i32* %73)
  %75 = load i32, i32* %6, align 4
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %80, label %77

77:                                               ; preds = %69
  %78 = load %struct.dentry*, %struct.dentry** %5, align 8
  %79 = call i32 @d_delete(%struct.dentry* %78)
  br label %80

80:                                               ; preds = %77, %69
  %81 = load %struct.dentry*, %struct.dentry** %5, align 8
  %82 = call i32 @dput(%struct.dentry* %81)
  %83 = load i32, i32* %6, align 4
  store i32 %83, i32* %3, align 4
  br label %84

84:                                               ; preds = %80, %22, %12
  %85 = load i32, i32* %3, align 4
  ret i32 %85
}

declare dso_local i32 @may_delete(%struct.inode*, %struct.dentry*, i32) #1

declare dso_local i32 @vfs_dq_init(%struct.inode*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @dentry_unhash(%struct.dentry*) #1

declare dso_local i64 @d_mountpoint(%struct.dentry*) #1

declare dso_local i32 @security_inode_rmdir(%struct.inode*, %struct.dentry*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @d_delete(%struct.dentry*) #1

declare dso_local i32 @dput(%struct.dentry*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

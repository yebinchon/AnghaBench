; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/extr_namei.c_vfs_link.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/extr_namei.c_vfs_link.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i64, i64, i32, %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { {}* }
%struct.dentry = type { %struct.inode* }

@ENOENT = common dso_local global i32 0, align 4
@EXDEV = common dso_local global i32 0, align 4
@EPERM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @vfs_link(%struct.dentry* %0, %struct.inode* %1, %struct.dentry* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.dentry*, align 8
  %6 = alloca %struct.inode*, align 8
  %7 = alloca %struct.dentry*, align 8
  %8 = alloca %struct.inode*, align 8
  %9 = alloca i32, align 4
  store %struct.dentry* %0, %struct.dentry** %5, align 8
  store %struct.inode* %1, %struct.inode** %6, align 8
  store %struct.dentry* %2, %struct.dentry** %7, align 8
  %10 = load %struct.dentry*, %struct.dentry** %5, align 8
  %11 = getelementptr inbounds %struct.dentry, %struct.dentry* %10, i32 0, i32 0
  %12 = load %struct.inode*, %struct.inode** %11, align 8
  store %struct.inode* %12, %struct.inode** %8, align 8
  %13 = load %struct.inode*, %struct.inode** %8, align 8
  %14 = icmp ne %struct.inode* %13, null
  br i1 %14, label %18, label %15

15:                                               ; preds = %3
  %16 = load i32, i32* @ENOENT, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %4, align 4
  br label %114

18:                                               ; preds = %3
  %19 = load %struct.inode*, %struct.inode** %6, align 8
  %20 = load %struct.dentry*, %struct.dentry** %7, align 8
  %21 = call i32 @may_create(%struct.inode* %19, %struct.dentry* %20)
  store i32 %21, i32* %9, align 4
  %22 = load i32, i32* %9, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %26

24:                                               ; preds = %18
  %25 = load i32, i32* %9, align 4
  store i32 %25, i32* %4, align 4
  br label %114

26:                                               ; preds = %18
  %27 = load %struct.inode*, %struct.inode** %6, align 8
  %28 = getelementptr inbounds %struct.inode, %struct.inode* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = load %struct.inode*, %struct.inode** %8, align 8
  %31 = getelementptr inbounds %struct.inode, %struct.inode* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = icmp ne i64 %29, %32
  br i1 %33, label %34, label %37

34:                                               ; preds = %26
  %35 = load i32, i32* @EXDEV, align 4
  %36 = sub nsw i32 0, %35
  store i32 %36, i32* %4, align 4
  br label %114

37:                                               ; preds = %26
  %38 = load %struct.inode*, %struct.inode** %8, align 8
  %39 = call i64 @IS_APPEND(%struct.inode* %38)
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %45, label %41

41:                                               ; preds = %37
  %42 = load %struct.inode*, %struct.inode** %8, align 8
  %43 = call i64 @IS_IMMUTABLE(%struct.inode* %42)
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %48

45:                                               ; preds = %41, %37
  %46 = load i32, i32* @EPERM, align 4
  %47 = sub nsw i32 0, %46
  store i32 %47, i32* %4, align 4
  br label %114

48:                                               ; preds = %41
  %49 = load %struct.inode*, %struct.inode** %6, align 8
  %50 = getelementptr inbounds %struct.inode, %struct.inode* %49, i32 0, i32 3
  %51 = load %struct.TYPE_2__*, %struct.TYPE_2__** %50, align 8
  %52 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %51, i32 0, i32 0
  %53 = bitcast {}** %52 to i32 (%struct.dentry*, %struct.inode*, %struct.dentry*)**
  %54 = load i32 (%struct.dentry*, %struct.inode*, %struct.dentry*)*, i32 (%struct.dentry*, %struct.inode*, %struct.dentry*)** %53, align 8
  %55 = icmp ne i32 (%struct.dentry*, %struct.inode*, %struct.dentry*)* %54, null
  br i1 %55, label %59, label %56

56:                                               ; preds = %48
  %57 = load i32, i32* @EPERM, align 4
  %58 = sub nsw i32 0, %57
  store i32 %58, i32* %4, align 4
  br label %114

59:                                               ; preds = %48
  %60 = load %struct.inode*, %struct.inode** %8, align 8
  %61 = getelementptr inbounds %struct.inode, %struct.inode* %60, i32 0, i32 4
  %62 = load i32, i32* %61, align 8
  %63 = call i64 @S_ISDIR(i32 %62)
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %65, label %68

65:                                               ; preds = %59
  %66 = load i32, i32* @EPERM, align 4
  %67 = sub nsw i32 0, %66
  store i32 %67, i32* %4, align 4
  br label %114

68:                                               ; preds = %59
  %69 = load %struct.dentry*, %struct.dentry** %5, align 8
  %70 = load %struct.inode*, %struct.inode** %6, align 8
  %71 = load %struct.dentry*, %struct.dentry** %7, align 8
  %72 = call i32 @security_inode_link(%struct.dentry* %69, %struct.inode* %70, %struct.dentry* %71)
  store i32 %72, i32* %9, align 4
  %73 = load i32, i32* %9, align 4
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %75, label %77

75:                                               ; preds = %68
  %76 = load i32, i32* %9, align 4
  store i32 %76, i32* %4, align 4
  br label %114

77:                                               ; preds = %68
  %78 = load %struct.inode*, %struct.inode** %8, align 8
  %79 = getelementptr inbounds %struct.inode, %struct.inode* %78, i32 0, i32 2
  %80 = call i32 @mutex_lock(i32* %79)
  %81 = load %struct.inode*, %struct.inode** %6, align 8
  %82 = call i32 @vfs_dq_init(%struct.inode* %81)
  %83 = load %struct.inode*, %struct.inode** %8, align 8
  %84 = getelementptr inbounds %struct.inode, %struct.inode* %83, i32 0, i32 1
  %85 = load i64, i64* %84, align 8
  %86 = icmp eq i64 %85, 0
  br i1 %86, label %87, label %90

87:                                               ; preds = %77
  %88 = load i32, i32* @ENOENT, align 4
  %89 = sub nsw i32 0, %88
  store i32 %89, i32* %9, align 4
  br label %101

90:                                               ; preds = %77
  %91 = load %struct.inode*, %struct.inode** %6, align 8
  %92 = getelementptr inbounds %struct.inode, %struct.inode* %91, i32 0, i32 3
  %93 = load %struct.TYPE_2__*, %struct.TYPE_2__** %92, align 8
  %94 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %93, i32 0, i32 0
  %95 = bitcast {}** %94 to i32 (%struct.dentry*, %struct.inode*, %struct.dentry*)**
  %96 = load i32 (%struct.dentry*, %struct.inode*, %struct.dentry*)*, i32 (%struct.dentry*, %struct.inode*, %struct.dentry*)** %95, align 8
  %97 = load %struct.dentry*, %struct.dentry** %5, align 8
  %98 = load %struct.inode*, %struct.inode** %6, align 8
  %99 = load %struct.dentry*, %struct.dentry** %7, align 8
  %100 = call i32 %96(%struct.dentry* %97, %struct.inode* %98, %struct.dentry* %99)
  store i32 %100, i32* %9, align 4
  br label %101

101:                                              ; preds = %90, %87
  %102 = load %struct.inode*, %struct.inode** %8, align 8
  %103 = getelementptr inbounds %struct.inode, %struct.inode* %102, i32 0, i32 2
  %104 = call i32 @mutex_unlock(i32* %103)
  %105 = load i32, i32* %9, align 4
  %106 = icmp ne i32 %105, 0
  br i1 %106, label %112, label %107

107:                                              ; preds = %101
  %108 = load %struct.inode*, %struct.inode** %6, align 8
  %109 = load %struct.inode*, %struct.inode** %8, align 8
  %110 = load %struct.dentry*, %struct.dentry** %7, align 8
  %111 = call i32 @fsnotify_link(%struct.inode* %108, %struct.inode* %109, %struct.dentry* %110)
  br label %112

112:                                              ; preds = %107, %101
  %113 = load i32, i32* %9, align 4
  store i32 %113, i32* %4, align 4
  br label %114

114:                                              ; preds = %112, %75, %65, %56, %45, %34, %24, %15
  %115 = load i32, i32* %4, align 4
  ret i32 %115
}

declare dso_local i32 @may_create(%struct.inode*, %struct.dentry*) #1

declare dso_local i64 @IS_APPEND(%struct.inode*) #1

declare dso_local i64 @IS_IMMUTABLE(%struct.inode*) #1

declare dso_local i64 @S_ISDIR(i32) #1

declare dso_local i32 @security_inode_link(%struct.dentry*, %struct.inode*, %struct.dentry*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @vfs_dq_init(%struct.inode*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @fsnotify_link(%struct.inode*, %struct.inode*, %struct.dentry*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

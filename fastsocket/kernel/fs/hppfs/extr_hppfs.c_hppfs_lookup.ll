; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/hppfs/extr_hppfs.c_hppfs_lookup.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/hppfs/extr_hppfs.c_hppfs_lookup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.dentry = type { %struct.TYPE_5__*, i32 }
%struct.TYPE_5__ = type { i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.dentry* (%struct.TYPE_5__*, %struct.dentry*, i32*)* }
%struct.nameidata = type { i32 }
%struct.TYPE_6__ = type { %struct.dentry* }

@ENOENT = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.dentry* (%struct.inode*, %struct.dentry*, %struct.nameidata*)* @hppfs_lookup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.dentry* @hppfs_lookup(%struct.inode* %0, %struct.dentry* %1, %struct.nameidata* %2) #0 {
  %4 = alloca %struct.dentry*, align 8
  %5 = alloca %struct.inode*, align 8
  %6 = alloca %struct.dentry*, align 8
  %7 = alloca %struct.nameidata*, align 8
  %8 = alloca %struct.dentry*, align 8
  %9 = alloca %struct.dentry*, align 8
  %10 = alloca %struct.dentry*, align 8
  %11 = alloca %struct.inode*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.inode* %0, %struct.inode** %5, align 8
  store %struct.dentry* %1, %struct.dentry** %6, align 8
  store %struct.nameidata* %2, %struct.nameidata** %7, align 8
  %14 = load %struct.dentry*, %struct.dentry** %6, align 8
  %15 = call i32 @file_removed(%struct.dentry* %14, i32* null)
  store i32 %15, i32* %13, align 4
  %16 = load i32, i32* %13, align 4
  %17 = icmp slt i32 %16, 0
  br i1 %17, label %18, label %21

18:                                               ; preds = %3
  %19 = load i32, i32* %13, align 4
  %20 = call %struct.dentry* @ERR_PTR(i32 %19)
  store %struct.dentry* %20, %struct.dentry** %4, align 8
  br label %112

21:                                               ; preds = %3
  %22 = load i32, i32* %13, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %28

24:                                               ; preds = %21
  %25 = load i32, i32* @ENOENT, align 4
  %26 = sub nsw i32 0, %25
  %27 = call %struct.dentry* @ERR_PTR(i32 %26)
  store %struct.dentry* %27, %struct.dentry** %4, align 8
  br label %112

28:                                               ; preds = %21
  br label %29

29:                                               ; preds = %28
  %30 = load i32, i32* @ENOMEM, align 4
  %31 = sub nsw i32 0, %30
  store i32 %31, i32* %12, align 4
  %32 = load %struct.inode*, %struct.inode** %5, align 8
  %33 = call %struct.TYPE_6__* @HPPFS_I(%struct.inode* %32)
  %34 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %33, i32 0, i32 0
  %35 = load %struct.dentry*, %struct.dentry** %34, align 8
  store %struct.dentry* %35, %struct.dentry** %10, align 8
  %36 = load %struct.dentry*, %struct.dentry** %10, align 8
  %37 = getelementptr inbounds %struct.dentry, %struct.dentry* %36, i32 0, i32 0
  %38 = load %struct.TYPE_5__*, %struct.TYPE_5__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %38, i32 0, i32 0
  %40 = call i32 @mutex_lock(i32* %39)
  %41 = load %struct.dentry*, %struct.dentry** %10, align 8
  %42 = load %struct.dentry*, %struct.dentry** %6, align 8
  %43 = getelementptr inbounds %struct.dentry, %struct.dentry* %42, i32 0, i32 1
  %44 = call %struct.dentry* @d_lookup(%struct.dentry* %41, i32* %43)
  store %struct.dentry* %44, %struct.dentry** %8, align 8
  %45 = load %struct.dentry*, %struct.dentry** %8, align 8
  %46 = icmp eq %struct.dentry* %45, null
  br i1 %46, label %47, label %80

47:                                               ; preds = %29
  %48 = load %struct.dentry*, %struct.dentry** %10, align 8
  %49 = load %struct.dentry*, %struct.dentry** %6, align 8
  %50 = getelementptr inbounds %struct.dentry, %struct.dentry* %49, i32 0, i32 1
  %51 = call %struct.dentry* @d_alloc(%struct.dentry* %48, i32* %50)
  store %struct.dentry* %51, %struct.dentry** %8, align 8
  %52 = load %struct.dentry*, %struct.dentry** %8, align 8
  %53 = icmp eq %struct.dentry* %52, null
  br i1 %53, label %54, label %60

54:                                               ; preds = %47
  %55 = load %struct.dentry*, %struct.dentry** %10, align 8
  %56 = getelementptr inbounds %struct.dentry, %struct.dentry* %55, i32 0, i32 0
  %57 = load %struct.TYPE_5__*, %struct.TYPE_5__** %56, align 8
  %58 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %57, i32 0, i32 0
  %59 = call i32 @mutex_unlock(i32* %58)
  br label %109

60:                                               ; preds = %47
  %61 = load %struct.dentry*, %struct.dentry** %10, align 8
  %62 = getelementptr inbounds %struct.dentry, %struct.dentry* %61, i32 0, i32 0
  %63 = load %struct.TYPE_5__*, %struct.TYPE_5__** %62, align 8
  %64 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %63, i32 0, i32 1
  %65 = load %struct.TYPE_4__*, %struct.TYPE_4__** %64, align 8
  %66 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %65, i32 0, i32 0
  %67 = load %struct.dentry* (%struct.TYPE_5__*, %struct.dentry*, i32*)*, %struct.dentry* (%struct.TYPE_5__*, %struct.dentry*, i32*)** %66, align 8
  %68 = load %struct.dentry*, %struct.dentry** %10, align 8
  %69 = getelementptr inbounds %struct.dentry, %struct.dentry* %68, i32 0, i32 0
  %70 = load %struct.TYPE_5__*, %struct.TYPE_5__** %69, align 8
  %71 = load %struct.dentry*, %struct.dentry** %8, align 8
  %72 = call %struct.dentry* %67(%struct.TYPE_5__* %70, %struct.dentry* %71, i32* null)
  store %struct.dentry* %72, %struct.dentry** %9, align 8
  %73 = load %struct.dentry*, %struct.dentry** %9, align 8
  %74 = icmp ne %struct.dentry* %73, null
  br i1 %74, label %75, label %79

75:                                               ; preds = %60
  %76 = load %struct.dentry*, %struct.dentry** %8, align 8
  %77 = call i32 @dput(%struct.dentry* %76)
  %78 = load %struct.dentry*, %struct.dentry** %9, align 8
  store %struct.dentry* %78, %struct.dentry** %8, align 8
  br label %79

79:                                               ; preds = %75, %60
  br label %80

80:                                               ; preds = %79, %29
  %81 = load %struct.dentry*, %struct.dentry** %10, align 8
  %82 = getelementptr inbounds %struct.dentry, %struct.dentry* %81, i32 0, i32 0
  %83 = load %struct.TYPE_5__*, %struct.TYPE_5__** %82, align 8
  %84 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %83, i32 0, i32 0
  %85 = call i32 @mutex_unlock(i32* %84)
  %86 = load %struct.dentry*, %struct.dentry** %8, align 8
  %87 = call i64 @IS_ERR(%struct.dentry* %86)
  %88 = icmp ne i64 %87, 0
  br i1 %88, label %89, label %91

89:                                               ; preds = %80
  %90 = load %struct.dentry*, %struct.dentry** %8, align 8
  store %struct.dentry* %90, %struct.dentry** %4, align 8
  br label %112

91:                                               ; preds = %80
  %92 = load i32, i32* @ENOMEM, align 4
  %93 = sub nsw i32 0, %92
  store i32 %93, i32* %12, align 4
  %94 = load %struct.inode*, %struct.inode** %5, align 8
  %95 = getelementptr inbounds %struct.inode, %struct.inode* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 4
  %97 = load %struct.dentry*, %struct.dentry** %8, align 8
  %98 = call %struct.inode* @get_inode(i32 %96, %struct.dentry* %97)
  store %struct.inode* %98, %struct.inode** %11, align 8
  %99 = load %struct.inode*, %struct.inode** %11, align 8
  %100 = icmp ne %struct.inode* %99, null
  br i1 %100, label %102, label %101

101:                                              ; preds = %91
  br label %106

102:                                              ; preds = %91
  %103 = load %struct.dentry*, %struct.dentry** %6, align 8
  %104 = load %struct.inode*, %struct.inode** %11, align 8
  %105 = call i32 @d_add(%struct.dentry* %103, %struct.inode* %104)
  store %struct.dentry* null, %struct.dentry** %4, align 8
  br label %112

106:                                              ; preds = %101
  %107 = load %struct.dentry*, %struct.dentry** %8, align 8
  %108 = call i32 @dput(%struct.dentry* %107)
  br label %109

109:                                              ; preds = %106, %54
  %110 = load i32, i32* %12, align 4
  %111 = call %struct.dentry* @ERR_PTR(i32 %110)
  store %struct.dentry* %111, %struct.dentry** %4, align 8
  br label %112

112:                                              ; preds = %109, %102, %89, %24, %18
  %113 = load %struct.dentry*, %struct.dentry** %4, align 8
  ret %struct.dentry* %113
}

declare dso_local i32 @file_removed(%struct.dentry*, i32*) #1

declare dso_local %struct.dentry* @ERR_PTR(i32) #1

declare dso_local %struct.TYPE_6__* @HPPFS_I(%struct.inode*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local %struct.dentry* @d_lookup(%struct.dentry*, i32*) #1

declare dso_local %struct.dentry* @d_alloc(%struct.dentry*, i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @dput(%struct.dentry*) #1

declare dso_local i64 @IS_ERR(%struct.dentry*) #1

declare dso_local %struct.inode* @get_inode(i32, %struct.dentry*) #1

declare dso_local i32 @d_add(%struct.dentry*, %struct.inode*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/sysv/extr_namei.c_sysv_lookup.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/sysv/extr_namei.c_sysv_lookup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }
%struct.dentry = type { %struct.TYPE_5__, i32 }
%struct.TYPE_5__ = type { i64 }
%struct.nameidata = type { i32 }

@SYSV_NAMELEN = common dso_local global i64 0, align 8
@ENAMETOOLONG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.dentry* (%struct.inode*, %struct.dentry*, %struct.nameidata*)* @sysv_lookup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.dentry* @sysv_lookup(%struct.inode* %0, %struct.dentry* %1, %struct.nameidata* %2) #0 {
  %4 = alloca %struct.dentry*, align 8
  %5 = alloca %struct.inode*, align 8
  %6 = alloca %struct.dentry*, align 8
  %7 = alloca %struct.nameidata*, align 8
  %8 = alloca %struct.inode*, align 8
  %9 = alloca i64, align 8
  store %struct.inode* %0, %struct.inode** %5, align 8
  store %struct.dentry* %1, %struct.dentry** %6, align 8
  store %struct.nameidata* %2, %struct.nameidata** %7, align 8
  store %struct.inode* null, %struct.inode** %8, align 8
  %10 = load %struct.inode*, %struct.inode** %5, align 8
  %11 = getelementptr inbounds %struct.inode, %struct.inode* %10, i32 0, i32 0
  %12 = load %struct.TYPE_6__*, %struct.TYPE_6__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %12, i32 0, i32 0
  %14 = load %struct.TYPE_4__*, %struct.TYPE_4__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = load %struct.dentry*, %struct.dentry** %6, align 8
  %18 = getelementptr inbounds %struct.dentry, %struct.dentry* %17, i32 0, i32 1
  store i32 %16, i32* %18, align 8
  %19 = load %struct.dentry*, %struct.dentry** %6, align 8
  %20 = getelementptr inbounds %struct.dentry, %struct.dentry* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = load i64, i64* @SYSV_NAMELEN, align 8
  %24 = icmp sgt i64 %22, %23
  br i1 %24, label %25, label %29

25:                                               ; preds = %3
  %26 = load i32, i32* @ENAMETOOLONG, align 4
  %27 = sub nsw i32 0, %26
  %28 = call %struct.dentry* @ERR_PTR(i32 %27)
  store %struct.dentry* %28, %struct.dentry** %4, align 8
  br label %51

29:                                               ; preds = %3
  %30 = load %struct.dentry*, %struct.dentry** %6, align 8
  %31 = call i64 @sysv_inode_by_name(%struct.dentry* %30)
  store i64 %31, i64* %9, align 8
  %32 = load i64, i64* %9, align 8
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %47

34:                                               ; preds = %29
  %35 = load %struct.inode*, %struct.inode** %5, align 8
  %36 = getelementptr inbounds %struct.inode, %struct.inode* %35, i32 0, i32 0
  %37 = load %struct.TYPE_6__*, %struct.TYPE_6__** %36, align 8
  %38 = load i64, i64* %9, align 8
  %39 = call %struct.inode* @sysv_iget(%struct.TYPE_6__* %37, i64 %38)
  store %struct.inode* %39, %struct.inode** %8, align 8
  %40 = load %struct.inode*, %struct.inode** %8, align 8
  %41 = call i64 @IS_ERR(%struct.inode* %40)
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %46

43:                                               ; preds = %34
  %44 = load %struct.inode*, %struct.inode** %8, align 8
  %45 = call %struct.dentry* @ERR_CAST(%struct.inode* %44)
  store %struct.dentry* %45, %struct.dentry** %4, align 8
  br label %51

46:                                               ; preds = %34
  br label %47

47:                                               ; preds = %46, %29
  %48 = load %struct.dentry*, %struct.dentry** %6, align 8
  %49 = load %struct.inode*, %struct.inode** %8, align 8
  %50 = call i32 @d_add(%struct.dentry* %48, %struct.inode* %49)
  store %struct.dentry* null, %struct.dentry** %4, align 8
  br label %51

51:                                               ; preds = %47, %43, %25
  %52 = load %struct.dentry*, %struct.dentry** %4, align 8
  ret %struct.dentry* %52
}

declare dso_local %struct.dentry* @ERR_PTR(i32) #1

declare dso_local i64 @sysv_inode_by_name(%struct.dentry*) #1

declare dso_local %struct.inode* @sysv_iget(%struct.TYPE_6__*, i64) #1

declare dso_local i64 @IS_ERR(%struct.inode*) #1

declare dso_local %struct.dentry* @ERR_CAST(%struct.inode*) #1

declare dso_local i32 @d_add(%struct.dentry*, %struct.inode*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

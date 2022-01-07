; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/minix/extr_namei.c_minix_lookup.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/minix/extr_namei.c_minix_lookup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { %struct.TYPE_9__* }
%struct.TYPE_9__ = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32 }
%struct.dentry = type { %struct.TYPE_7__, i32 }
%struct.TYPE_7__ = type { i64 }
%struct.nameidata = type { i32 }
%struct.TYPE_8__ = type { i64 }

@ENAMETOOLONG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.dentry* (%struct.inode*, %struct.dentry*, %struct.nameidata*)* @minix_lookup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.dentry* @minix_lookup(%struct.inode* %0, %struct.dentry* %1, %struct.nameidata* %2) #0 {
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
  %12 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %12, i32 0, i32 0
  %14 = load %struct.TYPE_6__*, %struct.TYPE_6__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = load %struct.dentry*, %struct.dentry** %6, align 8
  %18 = getelementptr inbounds %struct.dentry, %struct.dentry* %17, i32 0, i32 1
  store i32 %16, i32* %18, align 8
  %19 = load %struct.dentry*, %struct.dentry** %6, align 8
  %20 = getelementptr inbounds %struct.dentry, %struct.dentry* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = load %struct.inode*, %struct.inode** %5, align 8
  %24 = getelementptr inbounds %struct.inode, %struct.inode* %23, i32 0, i32 0
  %25 = load %struct.TYPE_9__*, %struct.TYPE_9__** %24, align 8
  %26 = call %struct.TYPE_8__* @minix_sb(%struct.TYPE_9__* %25)
  %27 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = icmp sgt i64 %22, %28
  br i1 %29, label %30, label %34

30:                                               ; preds = %3
  %31 = load i32, i32* @ENAMETOOLONG, align 4
  %32 = sub nsw i32 0, %31
  %33 = call %struct.dentry* @ERR_PTR(i32 %32)
  store %struct.dentry* %33, %struct.dentry** %4, align 8
  br label %56

34:                                               ; preds = %3
  %35 = load %struct.dentry*, %struct.dentry** %6, align 8
  %36 = call i64 @minix_inode_by_name(%struct.dentry* %35)
  store i64 %36, i64* %9, align 8
  %37 = load i64, i64* %9, align 8
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %52

39:                                               ; preds = %34
  %40 = load %struct.inode*, %struct.inode** %5, align 8
  %41 = getelementptr inbounds %struct.inode, %struct.inode* %40, i32 0, i32 0
  %42 = load %struct.TYPE_9__*, %struct.TYPE_9__** %41, align 8
  %43 = load i64, i64* %9, align 8
  %44 = call %struct.inode* @minix_iget(%struct.TYPE_9__* %42, i64 %43)
  store %struct.inode* %44, %struct.inode** %8, align 8
  %45 = load %struct.inode*, %struct.inode** %8, align 8
  %46 = call i64 @IS_ERR(%struct.inode* %45)
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %51

48:                                               ; preds = %39
  %49 = load %struct.inode*, %struct.inode** %8, align 8
  %50 = call %struct.dentry* @ERR_CAST(%struct.inode* %49)
  store %struct.dentry* %50, %struct.dentry** %4, align 8
  br label %56

51:                                               ; preds = %39
  br label %52

52:                                               ; preds = %51, %34
  %53 = load %struct.dentry*, %struct.dentry** %6, align 8
  %54 = load %struct.inode*, %struct.inode** %8, align 8
  %55 = call i32 @d_add(%struct.dentry* %53, %struct.inode* %54)
  store %struct.dentry* null, %struct.dentry** %4, align 8
  br label %56

56:                                               ; preds = %52, %48, %30
  %57 = load %struct.dentry*, %struct.dentry** %4, align 8
  ret %struct.dentry* %57
}

declare dso_local %struct.TYPE_8__* @minix_sb(%struct.TYPE_9__*) #1

declare dso_local %struct.dentry* @ERR_PTR(i32) #1

declare dso_local i64 @minix_inode_by_name(%struct.dentry*) #1

declare dso_local %struct.inode* @minix_iget(%struct.TYPE_9__*, i64) #1

declare dso_local i64 @IS_ERR(%struct.inode*) #1

declare dso_local %struct.dentry* @ERR_CAST(%struct.inode*) #1

declare dso_local i32 @d_add(%struct.dentry*, %struct.inode*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

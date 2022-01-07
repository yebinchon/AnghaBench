; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/pohmelfs/extr_dir.c_pohmelfs_link.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/pohmelfs/extr_dir.c_pohmelfs_link.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 (%struct.inode*, i32)* }
%struct.dentry = type { %struct.qstr, %struct.inode* }
%struct.qstr = type { i32, i32, i32 }
%struct.pohmelfs_inode = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dentry*, %struct.inode*, %struct.dentry*)* @pohmelfs_link to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pohmelfs_link(%struct.dentry* %0, %struct.inode* %1, %struct.dentry* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.dentry*, align 8
  %6 = alloca %struct.inode*, align 8
  %7 = alloca %struct.dentry*, align 8
  %8 = alloca %struct.inode*, align 8
  %9 = alloca %struct.pohmelfs_inode*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.qstr, align 4
  store %struct.dentry* %0, %struct.dentry** %5, align 8
  store %struct.inode* %1, %struct.inode** %6, align 8
  store %struct.dentry* %2, %struct.dentry** %7, align 8
  %12 = load %struct.dentry*, %struct.dentry** %5, align 8
  %13 = getelementptr inbounds %struct.dentry, %struct.dentry* %12, i32 0, i32 1
  %14 = load %struct.inode*, %struct.inode** %13, align 8
  store %struct.inode* %14, %struct.inode** %8, align 8
  %15 = load %struct.inode*, %struct.inode** %8, align 8
  %16 = call %struct.pohmelfs_inode* @POHMELFS_I(%struct.inode* %15)
  store %struct.pohmelfs_inode* %16, %struct.pohmelfs_inode** %9, align 8
  %17 = load %struct.dentry*, %struct.dentry** %7, align 8
  %18 = getelementptr inbounds %struct.dentry, %struct.dentry* %17, i32 0, i32 0
  %19 = bitcast %struct.qstr* %11 to i8*
  %20 = bitcast %struct.qstr* %18 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %19, i8* align 8 %20, i64 12, i1 false)
  %21 = load %struct.dentry*, %struct.dentry** %7, align 8
  %22 = getelementptr inbounds %struct.dentry, %struct.dentry* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.qstr, %struct.qstr* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = load %struct.dentry*, %struct.dentry** %7, align 8
  %26 = getelementptr inbounds %struct.dentry, %struct.dentry* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.qstr, %struct.qstr* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = call i32 @jhash(i32 %24, i32 %28, i32 0)
  %30 = getelementptr inbounds %struct.qstr, %struct.qstr* %11, i32 0, i32 2
  store i32 %29, i32* %30, align 4
  %31 = load %struct.inode*, %struct.inode** %8, align 8
  %32 = getelementptr inbounds %struct.inode, %struct.inode* %31, i32 0, i32 1
  %33 = load %struct.TYPE_4__*, %struct.TYPE_4__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %33, i32 0, i32 0
  %35 = load %struct.TYPE_3__*, %struct.TYPE_3__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %35, i32 0, i32 0
  %37 = load i32 (%struct.inode*, i32)*, i32 (%struct.inode*, i32)** %36, align 8
  %38 = load %struct.inode*, %struct.inode** %8, align 8
  %39 = call i32 %37(%struct.inode* %38, i32 0)
  store i32 %39, i32* %10, align 4
  %40 = load i32, i32* %10, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %44

42:                                               ; preds = %3
  %43 = load i32, i32* %10, align 4
  store i32 %43, i32* %4, align 4
  br label %63

44:                                               ; preds = %3
  %45 = load %struct.inode*, %struct.inode** %6, align 8
  %46 = call %struct.pohmelfs_inode* @POHMELFS_I(%struct.inode* %45)
  %47 = load %struct.pohmelfs_inode*, %struct.pohmelfs_inode** %9, align 8
  %48 = call i32 @pohmelfs_create_link(%struct.pohmelfs_inode* %46, %struct.qstr* %11, %struct.pohmelfs_inode* %47, i32* null)
  store i32 %48, i32* %10, align 4
  %49 = load i32, i32* %10, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %53

51:                                               ; preds = %44
  %52 = load i32, i32* %10, align 4
  store i32 %52, i32* %4, align 4
  br label %63

53:                                               ; preds = %44
  %54 = load %struct.inode*, %struct.inode** %6, align 8
  %55 = load %struct.dentry*, %struct.dentry** %7, align 8
  %56 = load %struct.pohmelfs_inode*, %struct.pohmelfs_inode** %9, align 8
  %57 = getelementptr inbounds %struct.pohmelfs_inode, %struct.pohmelfs_inode* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = load %struct.inode*, %struct.inode** %8, align 8
  %60 = getelementptr inbounds %struct.inode, %struct.inode* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 8
  %62 = call i32 @pohmelfs_create_entry(%struct.inode* %54, %struct.dentry* %55, i32 %58, i32 %61)
  store i32 %62, i32* %4, align 4
  br label %63

63:                                               ; preds = %53, %51, %42
  %64 = load i32, i32* %4, align 4
  ret i32 %64
}

declare dso_local %struct.pohmelfs_inode* @POHMELFS_I(%struct.inode*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @jhash(i32, i32, i32) #1

declare dso_local i32 @pohmelfs_create_link(%struct.pohmelfs_inode*, %struct.qstr*, %struct.pohmelfs_inode*, i32*) #1

declare dso_local i32 @pohmelfs_create_entry(%struct.inode*, %struct.dentry*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/extr_namei.c_vfs_path_lookup.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/extr_namei.c_vfs_path_lookup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dentry = type { i64 }
%struct.vfsmount = type { i32 }
%struct.nameidata = type { i32, %struct.TYPE_3__, %struct.TYPE_3__, i64, i32 }
%struct.TYPE_3__ = type { %struct.vfsmount*, %struct.dentry* }
%struct.filename = type { i8* }

@LAST_ROOT = common dso_local global i32 0, align 4
@LOOKUP_PARENT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @vfs_path_lookup(%struct.dentry* %0, %struct.vfsmount* %1, i8* %2, i32 %3, %struct.nameidata* %4) #0 {
  %6 = alloca %struct.dentry*, align 8
  %7 = alloca %struct.vfsmount*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.nameidata*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.filename, align 8
  store %struct.dentry* %0, %struct.dentry** %6, align 8
  store %struct.vfsmount* %1, %struct.vfsmount** %7, align 8
  store i8* %2, i8** %8, align 8
  store i32 %3, i32* %9, align 4
  store %struct.nameidata* %4, %struct.nameidata** %10, align 8
  %13 = getelementptr inbounds %struct.filename, %struct.filename* %12, i32 0, i32 0
  %14 = load i8*, i8** %8, align 8
  store i8* %14, i8** %13, align 8
  %15 = load i32, i32* @LAST_ROOT, align 4
  %16 = load %struct.nameidata*, %struct.nameidata** %10, align 8
  %17 = getelementptr inbounds %struct.nameidata, %struct.nameidata* %16, i32 0, i32 4
  store i32 %15, i32* %17, align 8
  %18 = load i32, i32* %9, align 4
  %19 = load %struct.nameidata*, %struct.nameidata** %10, align 8
  %20 = getelementptr inbounds %struct.nameidata, %struct.nameidata* %19, i32 0, i32 0
  store i32 %18, i32* %20, align 8
  %21 = load %struct.nameidata*, %struct.nameidata** %10, align 8
  %22 = getelementptr inbounds %struct.nameidata, %struct.nameidata* %21, i32 0, i32 3
  store i64 0, i64* %22, align 8
  %23 = load %struct.dentry*, %struct.dentry** %6, align 8
  %24 = load %struct.nameidata*, %struct.nameidata** %10, align 8
  %25 = getelementptr inbounds %struct.nameidata, %struct.nameidata* %24, i32 0, i32 2
  %26 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %25, i32 0, i32 1
  store %struct.dentry* %23, %struct.dentry** %26, align 8
  %27 = load %struct.vfsmount*, %struct.vfsmount** %7, align 8
  %28 = load %struct.nameidata*, %struct.nameidata** %10, align 8
  %29 = getelementptr inbounds %struct.nameidata, %struct.nameidata* %28, i32 0, i32 2
  %30 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %29, i32 0, i32 0
  store %struct.vfsmount* %27, %struct.vfsmount** %30, align 8
  %31 = load %struct.nameidata*, %struct.nameidata** %10, align 8
  %32 = getelementptr inbounds %struct.nameidata, %struct.nameidata* %31, i32 0, i32 2
  %33 = call i32 @path_get(%struct.TYPE_3__* %32)
  %34 = load %struct.nameidata*, %struct.nameidata** %10, align 8
  %35 = getelementptr inbounds %struct.nameidata, %struct.nameidata* %34, i32 0, i32 1
  %36 = load %struct.nameidata*, %struct.nameidata** %10, align 8
  %37 = getelementptr inbounds %struct.nameidata, %struct.nameidata* %36, i32 0, i32 2
  %38 = bitcast %struct.TYPE_3__* %35 to i8*
  %39 = bitcast %struct.TYPE_3__* %37 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %38, i8* align 8 %39, i64 16, i1 false)
  %40 = load %struct.nameidata*, %struct.nameidata** %10, align 8
  %41 = getelementptr inbounds %struct.nameidata, %struct.nameidata* %40, i32 0, i32 1
  %42 = call i32 @path_get(%struct.TYPE_3__* %41)
  %43 = load %struct.nameidata*, %struct.nameidata** %10, align 8
  %44 = call i32 @path_walk(%struct.filename* %12, %struct.nameidata* %43)
  store i32 %44, i32* %11, align 4
  %45 = load i32, i32* %11, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %64, label %47

47:                                               ; preds = %5
  %48 = call i32 (...) @audit_dummy_context()
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %64, label %50

50:                                               ; preds = %47
  %51 = load %struct.nameidata*, %struct.nameidata** %10, align 8
  %52 = getelementptr inbounds %struct.nameidata, %struct.nameidata* %51, i32 0, i32 2
  %53 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %52, i32 0, i32 1
  %54 = load %struct.dentry*, %struct.dentry** %53, align 8
  %55 = icmp ne %struct.dentry* %54, null
  br i1 %55, label %56, label %64

56:                                               ; preds = %50
  %57 = load %struct.nameidata*, %struct.nameidata** %10, align 8
  %58 = getelementptr inbounds %struct.nameidata, %struct.nameidata* %57, i32 0, i32 2
  %59 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %58, i32 0, i32 1
  %60 = load %struct.dentry*, %struct.dentry** %59, align 8
  %61 = getelementptr inbounds %struct.dentry, %struct.dentry* %60, i32 0, i32 0
  %62 = load i64, i64* %61, align 8
  %63 = icmp ne i64 %62, 0
  br label %64

64:                                               ; preds = %56, %50, %47, %5
  %65 = phi i1 [ false, %50 ], [ false, %47 ], [ false, %5 ], [ %63, %56 ]
  %66 = zext i1 %65 to i32
  %67 = call i64 @unlikely(i32 %66)
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %69, label %78

69:                                               ; preds = %64
  %70 = load %struct.nameidata*, %struct.nameidata** %10, align 8
  %71 = getelementptr inbounds %struct.nameidata, %struct.nameidata* %70, i32 0, i32 2
  %72 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %71, i32 0, i32 1
  %73 = load %struct.dentry*, %struct.dentry** %72, align 8
  %74 = load i32, i32* %9, align 4
  %75 = load i32, i32* @LOOKUP_PARENT, align 4
  %76 = and i32 %74, %75
  %77 = call i32 @audit_inode(%struct.filename* %12, %struct.dentry* %73, i32 %76)
  br label %78

78:                                               ; preds = %69, %64
  %79 = load %struct.nameidata*, %struct.nameidata** %10, align 8
  %80 = getelementptr inbounds %struct.nameidata, %struct.nameidata* %79, i32 0, i32 1
  %81 = call i32 @path_put(%struct.TYPE_3__* %80)
  %82 = load %struct.nameidata*, %struct.nameidata** %10, align 8
  %83 = getelementptr inbounds %struct.nameidata, %struct.nameidata* %82, i32 0, i32 1
  %84 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %83, i32 0, i32 0
  store %struct.vfsmount* null, %struct.vfsmount** %84, align 8
  %85 = load i32, i32* %11, align 4
  ret i32 %85
}

declare dso_local i32 @path_get(%struct.TYPE_3__*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @path_walk(%struct.filename*, %struct.nameidata*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @audit_dummy_context(...) #1

declare dso_local i32 @audit_inode(%struct.filename*, %struct.dentry*, i32) #1

declare dso_local i32 @path_put(%struct.TYPE_3__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

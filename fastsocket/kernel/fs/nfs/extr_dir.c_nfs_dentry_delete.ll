; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/nfs/extr_dir.c_nfs_dentry_delete.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/nfs/extr_dir.c_nfs_dentry_delete.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dentry = type { i32, %struct.TYPE_8__*, i32*, %struct.TYPE_7__, %struct.TYPE_6__* }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }

@VFS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"NFS: dentry_delete(%s/%s, %x)\0A\00", align 1
@DCACHE_NFSFS_RENAMED = common dso_local global i32 0, align 4
@MS_ACTIVE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dentry*)* @nfs_dentry_delete to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nfs_dentry_delete(%struct.dentry* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.dentry*, align 8
  store %struct.dentry* %0, %struct.dentry** %3, align 8
  %4 = load i32, i32* @VFS, align 4
  %5 = load %struct.dentry*, %struct.dentry** %3, align 8
  %6 = getelementptr inbounds %struct.dentry, %struct.dentry* %5, i32 0, i32 4
  %7 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %8 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %7, i32 0, i32 0
  %9 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = load %struct.dentry*, %struct.dentry** %3, align 8
  %12 = getelementptr inbounds %struct.dentry, %struct.dentry* %11, i32 0, i32 3
  %13 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = load %struct.dentry*, %struct.dentry** %3, align 8
  %16 = getelementptr inbounds %struct.dentry, %struct.dentry* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = call i32 @dfprintk(i32 %4, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i32 %10, i32 %14, i32 %17)
  %19 = load %struct.dentry*, %struct.dentry** %3, align 8
  %20 = getelementptr inbounds %struct.dentry, %struct.dentry* %19, i32 0, i32 2
  %21 = load i32*, i32** %20, align 8
  %22 = icmp ne i32* %21, null
  br i1 %22, label %23, label %30

23:                                               ; preds = %1
  %24 = load %struct.dentry*, %struct.dentry** %3, align 8
  %25 = getelementptr inbounds %struct.dentry, %struct.dentry* %24, i32 0, i32 2
  %26 = load i32*, i32** %25, align 8
  %27 = call i64 @NFS_STALE(i32* %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %30

29:                                               ; preds = %23
  store i32 1, i32* %2, align 4
  br label %49

30:                                               ; preds = %23, %1
  %31 = load %struct.dentry*, %struct.dentry** %3, align 8
  %32 = getelementptr inbounds %struct.dentry, %struct.dentry* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = load i32, i32* @DCACHE_NFSFS_RENAMED, align 4
  %35 = and i32 %33, %34
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %38

37:                                               ; preds = %30
  store i32 1, i32* %2, align 4
  br label %49

38:                                               ; preds = %30
  %39 = load %struct.dentry*, %struct.dentry** %3, align 8
  %40 = getelementptr inbounds %struct.dentry, %struct.dentry* %39, i32 0, i32 1
  %41 = load %struct.TYPE_8__*, %struct.TYPE_8__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = load i32, i32* @MS_ACTIVE, align 4
  %45 = and i32 %43, %44
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %48, label %47

47:                                               ; preds = %38
  store i32 1, i32* %2, align 4
  br label %49

48:                                               ; preds = %38
  store i32 0, i32* %2, align 4
  br label %49

49:                                               ; preds = %48, %47, %37, %29
  %50 = load i32, i32* %2, align 4
  ret i32 %50
}

declare dso_local i32 @dfprintk(i32, i8*, i32, i32, i32) #1

declare dso_local i64 @NFS_STALE(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

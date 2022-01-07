; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/extr_nfsctl.c_do_open.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/extr_nfsctl.c_do_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { i32 }
%struct.nameidata = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i32 }
%struct.vfsmount = type { i32 }

@.str = private unnamed_addr constant [5 x i8] c"nfsd\00", align 1
@O_RDWR = common dso_local global i32 0, align 4
@MAY_READ = common dso_local global i32 0, align 4
@MAY_WRITE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.file* (i8*, i32)* @do_open to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.file* @do_open(i8* %0, i32 %1) #0 {
  %3 = alloca %struct.file*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.nameidata, align 4
  %7 = alloca %struct.vfsmount*, align 8
  %8 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store i32 %1, i32* %5, align 4
  %9 = call %struct.vfsmount* @do_kern_mount(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i32 0, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i32* null)
  store %struct.vfsmount* %9, %struct.vfsmount** %7, align 8
  %10 = load %struct.vfsmount*, %struct.vfsmount** %7, align 8
  %11 = call i64 @IS_ERR(%struct.vfsmount* %10)
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %16

13:                                               ; preds = %2
  %14 = load %struct.vfsmount*, %struct.vfsmount** %7, align 8
  %15 = bitcast %struct.vfsmount* %14 to %struct.file*
  store %struct.file* %15, %struct.file** %3, align 8
  br label %64

16:                                               ; preds = %2
  %17 = load %struct.vfsmount*, %struct.vfsmount** %7, align 8
  %18 = getelementptr inbounds %struct.vfsmount, %struct.vfsmount* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = load %struct.vfsmount*, %struct.vfsmount** %7, align 8
  %21 = load i8*, i8** %4, align 8
  %22 = call i32 @vfs_path_lookup(i32 %19, %struct.vfsmount* %20, i8* %21, i32 0, %struct.nameidata* %6)
  store i32 %22, i32* %8, align 4
  %23 = load %struct.vfsmount*, %struct.vfsmount** %7, align 8
  %24 = call i32 @mntput(%struct.vfsmount* %23)
  %25 = load i32, i32* %8, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %30

27:                                               ; preds = %16
  %28 = load i32, i32* %8, align 4
  %29 = call %struct.file* @ERR_PTR(i32 %28)
  store %struct.file* %29, %struct.file** %3, align 8
  br label %64

30:                                               ; preds = %16
  %31 = load i32, i32* %5, align 4
  %32 = load i32, i32* @O_RDWR, align 4
  %33 = icmp eq i32 %31, %32
  br i1 %33, label %34, label %41

34:                                               ; preds = %30
  %35 = getelementptr inbounds %struct.nameidata, %struct.nameidata* %6, i32 0, i32 0
  %36 = load i32, i32* @MAY_READ, align 4
  %37 = load i32, i32* @MAY_WRITE, align 4
  %38 = or i32 %36, %37
  %39 = load i32, i32* %5, align 4
  %40 = call i32 @may_open(%struct.TYPE_3__* %35, i32 %38, i32 %39)
  store i32 %40, i32* %8, align 4
  br label %46

41:                                               ; preds = %30
  %42 = getelementptr inbounds %struct.nameidata, %struct.nameidata* %6, i32 0, i32 0
  %43 = load i32, i32* @MAY_WRITE, align 4
  %44 = load i32, i32* %5, align 4
  %45 = call i32 @may_open(%struct.TYPE_3__* %42, i32 %43, i32 %44)
  store i32 %45, i32* %8, align 4
  br label %46

46:                                               ; preds = %41, %34
  %47 = load i32, i32* %8, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %59, label %49

49:                                               ; preds = %46
  %50 = getelementptr inbounds %struct.nameidata, %struct.nameidata* %6, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 4
  %53 = getelementptr inbounds %struct.nameidata, %struct.nameidata* %6, i32 0, i32 0
  %54 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = load i32, i32* %5, align 4
  %57 = call i32 (...) @current_cred()
  %58 = call %struct.file* @dentry_open(i32 %52, i32 %55, i32 %56, i32 %57)
  store %struct.file* %58, %struct.file** %3, align 8
  br label %64

59:                                               ; preds = %46
  %60 = getelementptr inbounds %struct.nameidata, %struct.nameidata* %6, i32 0, i32 0
  %61 = call i32 @path_put(%struct.TYPE_3__* %60)
  %62 = load i32, i32* %8, align 4
  %63 = call %struct.file* @ERR_PTR(i32 %62)
  store %struct.file* %63, %struct.file** %3, align 8
  br label %64

64:                                               ; preds = %59, %49, %27, %13
  %65 = load %struct.file*, %struct.file** %3, align 8
  ret %struct.file* %65
}

declare dso_local %struct.vfsmount* @do_kern_mount(i8*, i32, i8*, i32*) #1

declare dso_local i64 @IS_ERR(%struct.vfsmount*) #1

declare dso_local i32 @vfs_path_lookup(i32, %struct.vfsmount*, i8*, i32, %struct.nameidata*) #1

declare dso_local i32 @mntput(%struct.vfsmount*) #1

declare dso_local %struct.file* @ERR_PTR(i32) #1

declare dso_local i32 @may_open(%struct.TYPE_3__*, i32, i32) #1

declare dso_local %struct.file* @dentry_open(i32, i32, i32, i32) #1

declare dso_local i32 @current_cred(...) #1

declare dso_local i32 @path_put(%struct.TYPE_3__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

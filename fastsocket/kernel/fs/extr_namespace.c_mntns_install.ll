; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/extr_namespace.c_mntns_install.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/extr_namespace.c_mntns_install.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { %struct.fs_struct* }
%struct.fs_struct = type { i32 }
%struct.nsproxy = type { %struct.mnt_namespace* }
%struct.mnt_namespace = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }
%struct.path = type { i32, %struct.TYPE_3__* }

@current = common dso_local global %struct.TYPE_4__* null, align 8
@CAP_SYS_ADMIN = common dso_local global i32 0, align 4
@CAP_SYS_CHROOT = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nsproxy*, i8*)* @mntns_install to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mntns_install(%struct.nsproxy* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.nsproxy*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.fs_struct*, align 8
  %7 = alloca %struct.mnt_namespace*, align 8
  %8 = alloca %struct.path, align 8
  store %struct.nsproxy* %0, %struct.nsproxy** %4, align 8
  store i8* %1, i8** %5, align 8
  %9 = load %struct.TYPE_4__*, %struct.TYPE_4__** @current, align 8
  %10 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %9, i32 0, i32 0
  %11 = load %struct.fs_struct*, %struct.fs_struct** %10, align 8
  store %struct.fs_struct* %11, %struct.fs_struct** %6, align 8
  %12 = load i8*, i8** %5, align 8
  %13 = bitcast i8* %12 to %struct.mnt_namespace*
  store %struct.mnt_namespace* %13, %struct.mnt_namespace** %7, align 8
  %14 = load i32, i32* @CAP_SYS_ADMIN, align 4
  %15 = call i32 @capable(i32 %14)
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %21

17:                                               ; preds = %2
  %18 = load i32, i32* @CAP_SYS_CHROOT, align 4
  %19 = call i32 @capable(i32 %18)
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %24, label %21

21:                                               ; preds = %17, %2
  %22 = load i32, i32* @EINVAL, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %3, align 4
  br label %70

24:                                               ; preds = %17
  %25 = load %struct.fs_struct*, %struct.fs_struct** %6, align 8
  %26 = getelementptr inbounds %struct.fs_struct, %struct.fs_struct* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = icmp ne i32 %27, 1
  br i1 %28, label %29, label %32

29:                                               ; preds = %24
  %30 = load i32, i32* @EINVAL, align 4
  %31 = sub nsw i32 0, %30
  store i32 %31, i32* %3, align 4
  br label %70

32:                                               ; preds = %24
  %33 = load %struct.mnt_namespace*, %struct.mnt_namespace** %7, align 8
  %34 = call i32 @get_mnt_ns(%struct.mnt_namespace* %33)
  %35 = load %struct.nsproxy*, %struct.nsproxy** %4, align 8
  %36 = getelementptr inbounds %struct.nsproxy, %struct.nsproxy* %35, i32 0, i32 0
  %37 = load %struct.mnt_namespace*, %struct.mnt_namespace** %36, align 8
  %38 = call i32 @put_mnt_ns(%struct.mnt_namespace* %37)
  %39 = load %struct.mnt_namespace*, %struct.mnt_namespace** %7, align 8
  %40 = load %struct.nsproxy*, %struct.nsproxy** %4, align 8
  %41 = getelementptr inbounds %struct.nsproxy, %struct.nsproxy* %40, i32 0, i32 0
  store %struct.mnt_namespace* %39, %struct.mnt_namespace** %41, align 8
  %42 = load %struct.mnt_namespace*, %struct.mnt_namespace** %7, align 8
  %43 = getelementptr inbounds %struct.mnt_namespace, %struct.mnt_namespace* %42, i32 0, i32 0
  %44 = load %struct.TYPE_3__*, %struct.TYPE_3__** %43, align 8
  %45 = getelementptr inbounds %struct.path, %struct.path* %8, i32 0, i32 1
  store %struct.TYPE_3__* %44, %struct.TYPE_3__** %45, align 8
  %46 = load %struct.mnt_namespace*, %struct.mnt_namespace** %7, align 8
  %47 = getelementptr inbounds %struct.mnt_namespace, %struct.mnt_namespace* %46, i32 0, i32 0
  %48 = load %struct.TYPE_3__*, %struct.TYPE_3__** %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = getelementptr inbounds %struct.path, %struct.path* %8, i32 0, i32 0
  store i32 %50, i32* %51, align 8
  %52 = call i32 @path_get(%struct.path* %8)
  br label %53

53:                                               ; preds = %63, %32
  %54 = getelementptr inbounds %struct.path, %struct.path* %8, i32 0, i32 0
  %55 = load i32, i32* %54, align 8
  %56 = call i64 @d_mountpoint(i32 %55)
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %61

58:                                               ; preds = %53
  %59 = call i64 @follow_down(%struct.path* %8)
  %60 = icmp ne i64 %59, 0
  br label %61

61:                                               ; preds = %58, %53
  %62 = phi i1 [ false, %53 ], [ %60, %58 ]
  br i1 %62, label %63, label %64

63:                                               ; preds = %61
  br label %53

64:                                               ; preds = %61
  %65 = load %struct.fs_struct*, %struct.fs_struct** %6, align 8
  %66 = call i32 @set_fs_pwd(%struct.fs_struct* %65, %struct.path* %8)
  %67 = load %struct.fs_struct*, %struct.fs_struct** %6, align 8
  %68 = call i32 @set_fs_root(%struct.fs_struct* %67, %struct.path* %8)
  %69 = call i32 @path_put(%struct.path* %8)
  store i32 0, i32* %3, align 4
  br label %70

70:                                               ; preds = %64, %29, %21
  %71 = load i32, i32* %3, align 4
  ret i32 %71
}

declare dso_local i32 @capable(i32) #1

declare dso_local i32 @get_mnt_ns(%struct.mnt_namespace*) #1

declare dso_local i32 @put_mnt_ns(%struct.mnt_namespace*) #1

declare dso_local i32 @path_get(%struct.path*) #1

declare dso_local i64 @d_mountpoint(i32) #1

declare dso_local i64 @follow_down(%struct.path*) #1

declare dso_local i32 @set_fs_pwd(%struct.fs_struct*, %struct.path*) #1

declare dso_local i32 @set_fs_root(%struct.fs_struct*, %struct.path*) #1

declare dso_local i32 @path_put(%struct.path*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

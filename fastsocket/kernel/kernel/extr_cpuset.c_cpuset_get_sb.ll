; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/kernel/extr_cpuset.c_cpuset_get_sb.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/kernel/extr_cpuset.c_cpuset_get_sb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file_system_type = type { i32 (%struct.file_system_type*, i32, i8*, i8*, %struct.vfsmount*)* }
%struct.vfsmount = type { i32 }

@.str = private unnamed_addr constant [7 x i8] c"cgroup\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@__const.cpuset_get_sb.mountopts = private unnamed_addr constant [57 x i8] c"cpuset,noprefix,release_agent=/sbin/cpuset_release_agent\00", align 16
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file_system_type*, i32, i8*, i8*, %struct.vfsmount*)* @cpuset_get_sb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cpuset_get_sb(%struct.file_system_type* %0, i32 %1, i8* %2, i8* %3, %struct.vfsmount* %4) #0 {
  %6 = alloca %struct.file_system_type*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca %struct.vfsmount*, align 8
  %11 = alloca %struct.file_system_type*, align 8
  %12 = alloca i32, align 4
  %13 = alloca [57 x i8], align 16
  store %struct.file_system_type* %0, %struct.file_system_type** %6, align 8
  store i32 %1, i32* %7, align 4
  store i8* %2, i8** %8, align 8
  store i8* %3, i8** %9, align 8
  store %struct.vfsmount* %4, %struct.vfsmount** %10, align 8
  %14 = call %struct.file_system_type* @get_fs_type(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  store %struct.file_system_type* %14, %struct.file_system_type** %11, align 8
  %15 = load i32, i32* @ENODEV, align 4
  %16 = sub nsw i32 0, %15
  store i32 %16, i32* %12, align 4
  %17 = load %struct.file_system_type*, %struct.file_system_type** %11, align 8
  %18 = icmp ne %struct.file_system_type* %17, null
  br i1 %18, label %19, label %32

19:                                               ; preds = %5
  %20 = bitcast [57 x i8]* %13 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %20, i8* align 16 getelementptr inbounds ([57 x i8], [57 x i8]* @__const.cpuset_get_sb.mountopts, i32 0, i32 0), i64 57, i1 false)
  %21 = load %struct.file_system_type*, %struct.file_system_type** %11, align 8
  %22 = getelementptr inbounds %struct.file_system_type, %struct.file_system_type* %21, i32 0, i32 0
  %23 = load i32 (%struct.file_system_type*, i32, i8*, i8*, %struct.vfsmount*)*, i32 (%struct.file_system_type*, i32, i8*, i8*, %struct.vfsmount*)** %22, align 8
  %24 = load %struct.file_system_type*, %struct.file_system_type** %11, align 8
  %25 = load i32, i32* %7, align 4
  %26 = load i8*, i8** %8, align 8
  %27 = getelementptr inbounds [57 x i8], [57 x i8]* %13, i64 0, i64 0
  %28 = load %struct.vfsmount*, %struct.vfsmount** %10, align 8
  %29 = call i32 %23(%struct.file_system_type* %24, i32 %25, i8* %26, i8* %27, %struct.vfsmount* %28)
  store i32 %29, i32* %12, align 4
  %30 = load %struct.file_system_type*, %struct.file_system_type** %11, align 8
  %31 = call i32 @put_filesystem(%struct.file_system_type* %30)
  br label %32

32:                                               ; preds = %19, %5
  %33 = load i32, i32* %12, align 4
  ret i32 %33
}

declare dso_local %struct.file_system_type* @get_fs_type(i8*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @put_filesystem(%struct.file_system_type*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

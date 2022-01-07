; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/extr_locks.c_lease_get_mtime.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/extr_locks.c_lease_get_mtime.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { %struct.timespec, i32, %struct.file_lock* }
%struct.timespec = type { i32 }
%struct.file_lock = type { i32 }

@F_WRLCK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @lease_get_mtime(%struct.inode* %0, %struct.timespec* %1) #0 {
  %3 = alloca %struct.inode*, align 8
  %4 = alloca %struct.timespec*, align 8
  %5 = alloca %struct.file_lock*, align 8
  %6 = alloca %struct.timespec, align 4
  store %struct.inode* %0, %struct.inode** %3, align 8
  store %struct.timespec* %1, %struct.timespec** %4, align 8
  %7 = load %struct.inode*, %struct.inode** %3, align 8
  %8 = getelementptr inbounds %struct.inode, %struct.inode* %7, i32 0, i32 2
  %9 = load %struct.file_lock*, %struct.file_lock** %8, align 8
  store %struct.file_lock* %9, %struct.file_lock** %5, align 8
  %10 = load %struct.file_lock*, %struct.file_lock** %5, align 8
  %11 = icmp ne %struct.file_lock* %10, null
  br i1 %11, label %12, label %32

12:                                               ; preds = %2
  %13 = load %struct.file_lock*, %struct.file_lock** %5, align 8
  %14 = call i64 @IS_LEASE(%struct.file_lock* %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %32

16:                                               ; preds = %12
  %17 = load %struct.file_lock*, %struct.file_lock** %5, align 8
  %18 = getelementptr inbounds %struct.file_lock, %struct.file_lock* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = load i32, i32* @F_WRLCK, align 4
  %21 = and i32 %19, %20
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %32

23:                                               ; preds = %16
  %24 = load %struct.timespec*, %struct.timespec** %4, align 8
  %25 = load %struct.inode*, %struct.inode** %3, align 8
  %26 = getelementptr inbounds %struct.inode, %struct.inode* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @current_fs_time(i32 %27)
  %29 = getelementptr inbounds %struct.timespec, %struct.timespec* %6, i32 0, i32 0
  store i32 %28, i32* %29, align 4
  %30 = bitcast %struct.timespec* %24 to i8*
  %31 = bitcast %struct.timespec* %6 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %30, i8* align 4 %31, i64 4, i1 false)
  br label %38

32:                                               ; preds = %16, %12, %2
  %33 = load %struct.timespec*, %struct.timespec** %4, align 8
  %34 = load %struct.inode*, %struct.inode** %3, align 8
  %35 = getelementptr inbounds %struct.inode, %struct.inode* %34, i32 0, i32 0
  %36 = bitcast %struct.timespec* %33 to i8*
  %37 = bitcast %struct.timespec* %35 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %36, i8* align 8 %37, i64 4, i1 false)
  br label %38

38:                                               ; preds = %32, %23
  ret void
}

declare dso_local i64 @IS_LEASE(%struct.file_lock*) #1

declare dso_local i32 @current_fs_time(i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

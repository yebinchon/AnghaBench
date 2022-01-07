; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/fuse/extr_file.c_fuse_file_lock.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/fuse/extr_file.c_fuse_file_lock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { %struct.inode* }
%struct.inode = type { i32 }
%struct.file_lock = type { i32 }
%struct.fuse_conn = type { i64 }

@F_CANCELLK = common dso_local global i32 0, align 4
@F_GETLK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*, i32, %struct.file_lock*)* @fuse_file_lock to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fuse_file_lock(%struct.file* %0, i32 %1, %struct.file_lock* %2) #0 {
  %4 = alloca %struct.file*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.file_lock*, align 8
  %7 = alloca %struct.inode*, align 8
  %8 = alloca %struct.fuse_conn*, align 8
  %9 = alloca i32, align 4
  store %struct.file* %0, %struct.file** %4, align 8
  store i32 %1, i32* %5, align 4
  store %struct.file_lock* %2, %struct.file_lock** %6, align 8
  %10 = load %struct.file*, %struct.file** %4, align 8
  %11 = getelementptr inbounds %struct.file, %struct.file* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i32 0, i32 0
  %13 = load %struct.TYPE_3__*, %struct.TYPE_3__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %13, i32 0, i32 0
  %15 = load %struct.inode*, %struct.inode** %14, align 8
  store %struct.inode* %15, %struct.inode** %7, align 8
  %16 = load %struct.inode*, %struct.inode** %7, align 8
  %17 = call %struct.fuse_conn* @get_fuse_conn(%struct.inode* %16)
  store %struct.fuse_conn* %17, %struct.fuse_conn** %8, align 8
  %18 = load i32, i32* %5, align 4
  %19 = load i32, i32* @F_CANCELLK, align 4
  %20 = icmp eq i32 %18, %19
  br i1 %20, label %21, label %22

21:                                               ; preds = %3
  store i32 0, i32* %9, align 4
  br label %55

22:                                               ; preds = %3
  %23 = load i32, i32* %5, align 4
  %24 = load i32, i32* @F_GETLK, align 4
  %25 = icmp eq i32 %23, %24
  br i1 %25, label %26, label %40

26:                                               ; preds = %22
  %27 = load %struct.fuse_conn*, %struct.fuse_conn** %8, align 8
  %28 = getelementptr inbounds %struct.fuse_conn, %struct.fuse_conn* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %35

31:                                               ; preds = %26
  %32 = load %struct.file*, %struct.file** %4, align 8
  %33 = load %struct.file_lock*, %struct.file_lock** %6, align 8
  %34 = call i32 @posix_test_lock(%struct.file* %32, %struct.file_lock* %33)
  store i32 0, i32* %9, align 4
  br label %39

35:                                               ; preds = %26
  %36 = load %struct.file*, %struct.file** %4, align 8
  %37 = load %struct.file_lock*, %struct.file_lock** %6, align 8
  %38 = call i32 @fuse_getlk(%struct.file* %36, %struct.file_lock* %37)
  store i32 %38, i32* %9, align 4
  br label %39

39:                                               ; preds = %35, %31
  br label %54

40:                                               ; preds = %22
  %41 = load %struct.fuse_conn*, %struct.fuse_conn** %8, align 8
  %42 = getelementptr inbounds %struct.fuse_conn, %struct.fuse_conn* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %49

45:                                               ; preds = %40
  %46 = load %struct.file*, %struct.file** %4, align 8
  %47 = load %struct.file_lock*, %struct.file_lock** %6, align 8
  %48 = call i32 @posix_lock_file(%struct.file* %46, %struct.file_lock* %47, i32* null)
  store i32 %48, i32* %9, align 4
  br label %53

49:                                               ; preds = %40
  %50 = load %struct.file*, %struct.file** %4, align 8
  %51 = load %struct.file_lock*, %struct.file_lock** %6, align 8
  %52 = call i32 @fuse_setlk(%struct.file* %50, %struct.file_lock* %51, i32 0)
  store i32 %52, i32* %9, align 4
  br label %53

53:                                               ; preds = %49, %45
  br label %54

54:                                               ; preds = %53, %39
  br label %55

55:                                               ; preds = %54, %21
  %56 = load i32, i32* %9, align 4
  ret i32 %56
}

declare dso_local %struct.fuse_conn* @get_fuse_conn(%struct.inode*) #1

declare dso_local i32 @posix_test_lock(%struct.file*, %struct.file_lock*) #1

declare dso_local i32 @fuse_getlk(%struct.file*, %struct.file_lock*) #1

declare dso_local i32 @posix_lock_file(%struct.file*, %struct.file_lock*, i32*) #1

declare dso_local i32 @fuse_setlk(%struct.file*, %struct.file_lock*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/gfs2/extr_aops.c_gfs2_direct_IO.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/gfs2/extr_aops.c_gfs2_direct_IO.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kiocb = type { %struct.file* }
%struct.file = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.inode* }
%struct.inode = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }
%struct.iovec = type { i32 }
%struct.gfs2_inode = type { i32 }
%struct.gfs2_holder = type { i32 }

@LM_ST_DEFERRED = common dso_local global i32 0, align 4
@gfs2_get_block_direct = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, %struct.kiocb*, %struct.iovec*, i32, i64)* @gfs2_direct_IO to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gfs2_direct_IO(i32 %0, %struct.kiocb* %1, %struct.iovec* %2, i32 %3, i64 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.kiocb*, align 8
  %9 = alloca %struct.iovec*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca %struct.file*, align 8
  %13 = alloca %struct.inode*, align 8
  %14 = alloca %struct.gfs2_inode*, align 8
  %15 = alloca %struct.gfs2_holder, align 4
  %16 = alloca i32, align 4
  store i32 %0, i32* %7, align 4
  store %struct.kiocb* %1, %struct.kiocb** %8, align 8
  store %struct.iovec* %2, %struct.iovec** %9, align 8
  store i32 %3, i32* %10, align 4
  store i64 %4, i64* %11, align 8
  %17 = load %struct.kiocb*, %struct.kiocb** %8, align 8
  %18 = getelementptr inbounds %struct.kiocb, %struct.kiocb* %17, i32 0, i32 0
  %19 = load %struct.file*, %struct.file** %18, align 8
  store %struct.file* %19, %struct.file** %12, align 8
  %20 = load %struct.file*, %struct.file** %12, align 8
  %21 = getelementptr inbounds %struct.file, %struct.file* %20, i32 0, i32 0
  %22 = load %struct.TYPE_4__*, %struct.TYPE_4__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i32 0, i32 0
  %24 = load %struct.inode*, %struct.inode** %23, align 8
  store %struct.inode* %24, %struct.inode** %13, align 8
  %25 = load %struct.inode*, %struct.inode** %13, align 8
  %26 = call %struct.gfs2_inode* @GFS2_I(%struct.inode* %25)
  store %struct.gfs2_inode* %26, %struct.gfs2_inode** %14, align 8
  %27 = load %struct.gfs2_inode*, %struct.gfs2_inode** %14, align 8
  %28 = getelementptr inbounds %struct.gfs2_inode, %struct.gfs2_inode* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = load i32, i32* @LM_ST_DEFERRED, align 4
  %31 = call i32 @gfs2_holder_init(i32 %29, i32 %30, i32 0, %struct.gfs2_holder* %15)
  %32 = call i32 @gfs2_glock_nq(%struct.gfs2_holder* %15)
  store i32 %32, i32* %16, align 4
  %33 = load i32, i32* %16, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %37

35:                                               ; preds = %5
  %36 = load i32, i32* %16, align 4
  store i32 %36, i32* %6, align 4
  br label %63

37:                                               ; preds = %5
  %38 = load %struct.gfs2_inode*, %struct.gfs2_inode** %14, align 8
  %39 = load i32, i32* %7, align 4
  %40 = load i32, i32* %10, align 4
  %41 = call i32 @gfs2_ok_for_dio(%struct.gfs2_inode* %38, i32 %39, i32 %40)
  store i32 %41, i32* %16, align 4
  %42 = load i32, i32* %16, align 4
  %43 = icmp ne i32 %42, 1
  br i1 %43, label %44, label %45

44:                                               ; preds = %37
  br label %59

45:                                               ; preds = %37
  %46 = load i32, i32* %7, align 4
  %47 = load %struct.kiocb*, %struct.kiocb** %8, align 8
  %48 = load %struct.inode*, %struct.inode** %13, align 8
  %49 = load %struct.inode*, %struct.inode** %13, align 8
  %50 = getelementptr inbounds %struct.inode, %struct.inode* %49, i32 0, i32 0
  %51 = load %struct.TYPE_3__*, %struct.TYPE_3__** %50, align 8
  %52 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = load %struct.iovec*, %struct.iovec** %9, align 8
  %55 = load i32, i32* %10, align 4
  %56 = load i64, i64* %11, align 8
  %57 = load i32, i32* @gfs2_get_block_direct, align 4
  %58 = call i32 @blockdev_direct_IO_no_locking(i32 %46, %struct.kiocb* %47, %struct.inode* %48, i32 %53, %struct.iovec* %54, i32 %55, i64 %56, i32 %57, i32* null)
  store i32 %58, i32* %16, align 4
  br label %59

59:                                               ; preds = %45, %44
  %60 = call i32 @gfs2_glock_dq(%struct.gfs2_holder* %15)
  %61 = call i32 @gfs2_holder_uninit(%struct.gfs2_holder* %15)
  %62 = load i32, i32* %16, align 4
  store i32 %62, i32* %6, align 4
  br label %63

63:                                               ; preds = %59, %35
  %64 = load i32, i32* %6, align 4
  ret i32 %64
}

declare dso_local %struct.gfs2_inode* @GFS2_I(%struct.inode*) #1

declare dso_local i32 @gfs2_holder_init(i32, i32, i32, %struct.gfs2_holder*) #1

declare dso_local i32 @gfs2_glock_nq(%struct.gfs2_holder*) #1

declare dso_local i32 @gfs2_ok_for_dio(%struct.gfs2_inode*, i32, i32) #1

declare dso_local i32 @blockdev_direct_IO_no_locking(i32, %struct.kiocb*, %struct.inode*, i32, %struct.iovec*, i32, i64, i32, i32*) #1

declare dso_local i32 @gfs2_glock_dq(%struct.gfs2_holder*) #1

declare dso_local i32 @gfs2_holder_uninit(%struct.gfs2_holder*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

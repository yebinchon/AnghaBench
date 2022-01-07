; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/gfs2/extr_file.c_gfs2_file_aio_write.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/gfs2/extr_file.c_gfs2_file_aio_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kiocb = type { %struct.file* }
%struct.file = type { i32, %struct.dentry*, %struct.TYPE_2__* }
%struct.dentry = type { i32 }
%struct.TYPE_2__ = type { i32 }
%struct.iovec = type { i32 }
%struct.gfs2_inode = type { i32 }
%struct.gfs2_sbd = type { i32 }
%struct.gfs2_holder = type { i32 }

@O_APPEND = common dso_local global i32 0, align 4
@LM_ST_SHARED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.kiocb*, %struct.iovec*, i64, i32)* @gfs2_file_aio_write to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gfs2_file_aio_write(%struct.kiocb* %0, %struct.iovec* %1, i64 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.kiocb*, align 8
  %7 = alloca %struct.iovec*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.file*, align 8
  %11 = alloca i64, align 8
  %12 = alloca %struct.dentry*, align 8
  %13 = alloca %struct.gfs2_inode*, align 8
  %14 = alloca %struct.gfs2_sbd*, align 8
  %15 = alloca i32, align 4
  %16 = alloca %struct.gfs2_holder, align 4
  store %struct.kiocb* %0, %struct.kiocb** %6, align 8
  store %struct.iovec* %1, %struct.iovec** %7, align 8
  store i64 %2, i64* %8, align 8
  store i32 %3, i32* %9, align 4
  %17 = load %struct.kiocb*, %struct.kiocb** %6, align 8
  %18 = getelementptr inbounds %struct.kiocb, %struct.kiocb* %17, i32 0, i32 0
  %19 = load %struct.file*, %struct.file** %18, align 8
  store %struct.file* %19, %struct.file** %10, align 8
  %20 = load %struct.iovec*, %struct.iovec** %7, align 8
  %21 = load i64, i64* %8, align 8
  %22 = call i64 @iov_length(%struct.iovec* %20, i64 %21)
  store i64 %22, i64* %11, align 8
  %23 = load %struct.file*, %struct.file** %10, align 8
  %24 = getelementptr inbounds %struct.file, %struct.file* %23, i32 0, i32 1
  %25 = load %struct.dentry*, %struct.dentry** %24, align 8
  store %struct.dentry* %25, %struct.dentry** %12, align 8
  %26 = load %struct.dentry*, %struct.dentry** %12, align 8
  %27 = getelementptr inbounds %struct.dentry, %struct.dentry* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = call %struct.gfs2_inode* @GFS2_I(i32 %28)
  store %struct.gfs2_inode* %29, %struct.gfs2_inode** %13, align 8
  %30 = load %struct.file*, %struct.file** %10, align 8
  %31 = getelementptr inbounds %struct.file, %struct.file* %30, i32 0, i32 2
  %32 = load %struct.TYPE_2__*, %struct.TYPE_2__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = call %struct.gfs2_sbd* @GFS2_SB(i32 %34)
  store %struct.gfs2_sbd* %35, %struct.gfs2_sbd** %14, align 8
  %36 = load %struct.gfs2_inode*, %struct.gfs2_inode** %13, align 8
  %37 = call i32 @gfs2_rs_alloc(%struct.gfs2_inode* %36)
  store i32 %37, i32* %15, align 4
  %38 = load i32, i32* %15, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %42

40:                                               ; preds = %4
  %41 = load i32, i32* %15, align 4
  store i32 %41, i32* %5, align 4
  br label %75

42:                                               ; preds = %4
  %43 = load %struct.file*, %struct.file** %10, align 8
  %44 = getelementptr inbounds %struct.file, %struct.file* %43, i32 0, i32 1
  %45 = load %struct.dentry*, %struct.dentry** %44, align 8
  %46 = getelementptr inbounds %struct.dentry, %struct.dentry* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = load i32, i32* %9, align 4
  %49 = load i64, i64* %11, align 8
  %50 = call i32 @gfs2_size_hint(i32 %47, i32 %48, i64 %49)
  %51 = load %struct.file*, %struct.file** %10, align 8
  %52 = getelementptr inbounds %struct.file, %struct.file* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 8
  %54 = load i32, i32* @O_APPEND, align 4
  %55 = and i32 %53, %54
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %69

57:                                               ; preds = %42
  %58 = load %struct.gfs2_inode*, %struct.gfs2_inode** %13, align 8
  %59 = getelementptr inbounds %struct.gfs2_inode, %struct.gfs2_inode* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = load i32, i32* @LM_ST_SHARED, align 4
  %62 = call i32 @gfs2_glock_nq_init(i32 %60, i32 %61, i32 0, %struct.gfs2_holder* %16)
  store i32 %62, i32* %15, align 4
  %63 = load i32, i32* %15, align 4
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %67

65:                                               ; preds = %57
  %66 = load i32, i32* %15, align 4
  store i32 %66, i32* %5, align 4
  br label %75

67:                                               ; preds = %57
  %68 = call i32 @gfs2_glock_dq_uninit(%struct.gfs2_holder* %16)
  br label %69

69:                                               ; preds = %67, %42
  %70 = load %struct.kiocb*, %struct.kiocb** %6, align 8
  %71 = load %struct.iovec*, %struct.iovec** %7, align 8
  %72 = load i64, i64* %8, align 8
  %73 = load i32, i32* %9, align 4
  %74 = call i32 @generic_file_aio_write(%struct.kiocb* %70, %struct.iovec* %71, i64 %72, i32 %73)
  store i32 %74, i32* %5, align 4
  br label %75

75:                                               ; preds = %69, %65, %40
  %76 = load i32, i32* %5, align 4
  ret i32 %76
}

declare dso_local i64 @iov_length(%struct.iovec*, i64) #1

declare dso_local %struct.gfs2_inode* @GFS2_I(i32) #1

declare dso_local %struct.gfs2_sbd* @GFS2_SB(i32) #1

declare dso_local i32 @gfs2_rs_alloc(%struct.gfs2_inode*) #1

declare dso_local i32 @gfs2_size_hint(i32, i32, i64) #1

declare dso_local i32 @gfs2_glock_nq_init(i32, i32, i32, %struct.gfs2_holder*) #1

declare dso_local i32 @gfs2_glock_dq_uninit(%struct.gfs2_holder*) #1

declare dso_local i32 @generic_file_aio_write(%struct.kiocb*, %struct.iovec*, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

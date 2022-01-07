; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/nfs/extr_direct.c_nfs_file_direct_read.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/nfs/extr_direct.c_nfs_file_direct_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kiocb = type { i64, %struct.file* }
%struct.file = type { %struct.TYPE_10__, %struct.address_space* }
%struct.TYPE_10__ = type { %struct.TYPE_9__* }
%struct.TYPE_9__ = type { %struct.TYPE_8__, %struct.TYPE_7__* }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32 }
%struct.address_space = type { i32 }
%struct.iovec = type { i32 }

@EINVAL = common dso_local global i64 0, align 8
@NFSIOS_DIRECTREADBYTES = common dso_local global i32 0, align 4
@FILE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [34 x i8] c"NFS: direct read(%s/%s, %zd@%Ld)\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @nfs_file_direct_read(%struct.kiocb* %0, %struct.iovec* %1, i64 %2, i64 %3) #0 {
  %5 = alloca %struct.kiocb*, align 8
  %6 = alloca %struct.iovec*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.file*, align 8
  %11 = alloca %struct.address_space*, align 8
  %12 = alloca i64, align 8
  store %struct.kiocb* %0, %struct.kiocb** %5, align 8
  store %struct.iovec* %1, %struct.iovec** %6, align 8
  store i64 %2, i64* %7, align 8
  store i64 %3, i64* %8, align 8
  %13 = load i64, i64* @EINVAL, align 8
  %14 = sub nsw i64 0, %13
  store i64 %14, i64* %9, align 8
  %15 = load %struct.kiocb*, %struct.kiocb** %5, align 8
  %16 = getelementptr inbounds %struct.kiocb, %struct.kiocb* %15, i32 0, i32 1
  %17 = load %struct.file*, %struct.file** %16, align 8
  store %struct.file* %17, %struct.file** %10, align 8
  %18 = load %struct.file*, %struct.file** %10, align 8
  %19 = getelementptr inbounds %struct.file, %struct.file* %18, i32 0, i32 1
  %20 = load %struct.address_space*, %struct.address_space** %19, align 8
  store %struct.address_space* %20, %struct.address_space** %11, align 8
  %21 = load %struct.iovec*, %struct.iovec** %6, align 8
  %22 = load i64, i64* %7, align 8
  %23 = call i64 @iov_length(%struct.iovec* %21, i64 %22)
  store i64 %23, i64* %12, align 8
  %24 = load %struct.address_space*, %struct.address_space** %11, align 8
  %25 = getelementptr inbounds %struct.address_space, %struct.address_space* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = load i32, i32* @NFSIOS_DIRECTREADBYTES, align 4
  %28 = load i64, i64* %12, align 8
  %29 = call i32 @nfs_add_stats(i32 %26, i32 %27, i64 %28)
  %30 = load i32, i32* @FILE, align 4
  %31 = load %struct.file*, %struct.file** %10, align 8
  %32 = getelementptr inbounds %struct.file, %struct.file* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %32, i32 0, i32 0
  %34 = load %struct.TYPE_9__*, %struct.TYPE_9__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %34, i32 0, i32 1
  %36 = load %struct.TYPE_7__*, %struct.TYPE_7__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = load %struct.file*, %struct.file** %10, align 8
  %41 = getelementptr inbounds %struct.file, %struct.file* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %41, i32 0, i32 0
  %43 = load %struct.TYPE_9__*, %struct.TYPE_9__** %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = load i64, i64* %12, align 8
  %48 = load i64, i64* %8, align 8
  %49 = call i32 @dfprintk(i32 %30, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0), i32 %39, i32 %46, i64 %47, i64 %48)
  store i64 0, i64* %9, align 8
  %50 = load i64, i64* %12, align 8
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %53, label %52

52:                                               ; preds = %4
  br label %74

53:                                               ; preds = %4
  %54 = load %struct.address_space*, %struct.address_space** %11, align 8
  %55 = call i64 @nfs_sync_mapping(%struct.address_space* %54)
  store i64 %55, i64* %9, align 8
  %56 = load i64, i64* %9, align 8
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %59

58:                                               ; preds = %53
  br label %74

59:                                               ; preds = %53
  %60 = load %struct.kiocb*, %struct.kiocb** %5, align 8
  %61 = load %struct.iovec*, %struct.iovec** %6, align 8
  %62 = load i64, i64* %7, align 8
  %63 = load i64, i64* %8, align 8
  %64 = call i64 @nfs_direct_read(%struct.kiocb* %60, %struct.iovec* %61, i64 %62, i64 %63)
  store i64 %64, i64* %9, align 8
  %65 = load i64, i64* %9, align 8
  %66 = icmp sgt i64 %65, 0
  br i1 %66, label %67, label %73

67:                                               ; preds = %59
  %68 = load i64, i64* %8, align 8
  %69 = load i64, i64* %9, align 8
  %70 = add nsw i64 %68, %69
  %71 = load %struct.kiocb*, %struct.kiocb** %5, align 8
  %72 = getelementptr inbounds %struct.kiocb, %struct.kiocb* %71, i32 0, i32 0
  store i64 %70, i64* %72, align 8
  br label %73

73:                                               ; preds = %67, %59
  br label %74

74:                                               ; preds = %73, %58, %52
  %75 = load i64, i64* %9, align 8
  ret i64 %75
}

declare dso_local i64 @iov_length(%struct.iovec*, i64) #1

declare dso_local i32 @nfs_add_stats(i32, i32, i64) #1

declare dso_local i32 @dfprintk(i32, i8*, i32, i32, i64, i64) #1

declare dso_local i64 @nfs_sync_mapping(%struct.address_space*) #1

declare dso_local i64 @nfs_direct_read(%struct.kiocb*, %struct.iovec*, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

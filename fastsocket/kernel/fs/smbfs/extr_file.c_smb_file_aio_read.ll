; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/smbfs/extr_file.c_smb_file_aio_read.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/smbfs/extr_file.c_smb_file_aio_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kiocb = type { i64, %struct.file* }
%struct.file = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.dentry* }
%struct.dentry = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i64, %struct.TYPE_4__, i64 }
%struct.TYPE_4__ = type { i64 }
%struct.iovec = type { i32 }

@.str = private unnamed_addr constant [27 x i8] c"file %s/%s, count=%lu@%lu\0A\00", align 1
@.str.1 = private unnamed_addr constant [36 x i8] c"%s/%s validation failed, error=%Zd\0A\00", align 1
@.str.2 = private unnamed_addr constant [44 x i8] c"before read, size=%ld, flags=%x, atime=%ld\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.kiocb*, %struct.iovec*, i64, i64)* @smb_file_aio_read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @smb_file_aio_read(%struct.kiocb* %0, %struct.iovec* %1, i64 %2, i64 %3) #0 {
  %5 = alloca %struct.kiocb*, align 8
  %6 = alloca %struct.iovec*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.file*, align 8
  %10 = alloca %struct.dentry*, align 8
  %11 = alloca i64, align 8
  store %struct.kiocb* %0, %struct.kiocb** %5, align 8
  store %struct.iovec* %1, %struct.iovec** %6, align 8
  store i64 %2, i64* %7, align 8
  store i64 %3, i64* %8, align 8
  %12 = load %struct.kiocb*, %struct.kiocb** %5, align 8
  %13 = getelementptr inbounds %struct.kiocb, %struct.kiocb* %12, i32 0, i32 1
  %14 = load %struct.file*, %struct.file** %13, align 8
  store %struct.file* %14, %struct.file** %9, align 8
  %15 = load %struct.file*, %struct.file** %9, align 8
  %16 = getelementptr inbounds %struct.file, %struct.file* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %16, i32 0, i32 0
  %18 = load %struct.dentry*, %struct.dentry** %17, align 8
  store %struct.dentry* %18, %struct.dentry** %10, align 8
  %19 = load %struct.dentry*, %struct.dentry** %10, align 8
  %20 = call i64 @DENTRY_PATH(%struct.dentry* %19)
  %21 = load %struct.kiocb*, %struct.kiocb** %5, align 8
  %22 = getelementptr inbounds %struct.kiocb, %struct.kiocb* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = load i64, i64* %8, align 8
  %25 = call i32 @VERBOSE(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0), i64 %20, i64 %23, i64 %24)
  %26 = load %struct.dentry*, %struct.dentry** %10, align 8
  %27 = call i64 @smb_revalidate_inode(%struct.dentry* %26)
  store i64 %27, i64* %11, align 8
  %28 = load i64, i64* %11, align 8
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %35

30:                                               ; preds = %4
  %31 = load %struct.dentry*, %struct.dentry** %10, align 8
  %32 = call i64 @DENTRY_PATH(%struct.dentry* %31)
  %33 = load i64, i64* %11, align 8
  %34 = call i32 @PARANOIA(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0), i64 %32, i64 %33)
  br label %58

35:                                               ; preds = %4
  %36 = load %struct.dentry*, %struct.dentry** %10, align 8
  %37 = getelementptr inbounds %struct.dentry, %struct.dentry* %36, i32 0, i32 0
  %38 = load %struct.TYPE_5__*, %struct.TYPE_5__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %38, i32 0, i32 2
  %40 = load i64, i64* %39, align 8
  %41 = load %struct.dentry*, %struct.dentry** %10, align 8
  %42 = getelementptr inbounds %struct.dentry, %struct.dentry* %41, i32 0, i32 0
  %43 = load %struct.TYPE_5__*, %struct.TYPE_5__** %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = load %struct.dentry*, %struct.dentry** %10, align 8
  %47 = getelementptr inbounds %struct.dentry, %struct.dentry* %46, i32 0, i32 0
  %48 = load %struct.TYPE_5__*, %struct.TYPE_5__** %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %48, i32 0, i32 1
  %50 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = call i32 @VERBOSE(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.2, i64 0, i64 0), i64 %40, i64 %45, i64 %51)
  %53 = load %struct.kiocb*, %struct.kiocb** %5, align 8
  %54 = load %struct.iovec*, %struct.iovec** %6, align 8
  %55 = load i64, i64* %7, align 8
  %56 = load i64, i64* %8, align 8
  %57 = call i64 @generic_file_aio_read(%struct.kiocb* %53, %struct.iovec* %54, i64 %55, i64 %56)
  store i64 %57, i64* %11, align 8
  br label %58

58:                                               ; preds = %35, %30
  %59 = load i64, i64* %11, align 8
  ret i64 %59
}

declare dso_local i32 @VERBOSE(i8*, i64, i64, i64) #1

declare dso_local i64 @DENTRY_PATH(%struct.dentry*) #1

declare dso_local i64 @smb_revalidate_inode(%struct.dentry*) #1

declare dso_local i32 @PARANOIA(i8*, i64, i64) #1

declare dso_local i64 @generic_file_aio_read(%struct.kiocb*, %struct.iovec*, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

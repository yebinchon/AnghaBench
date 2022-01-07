; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/smbfs/extr_file.c_smb_file_aio_write.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/smbfs/extr_file.c_smb_file_aio_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kiocb = type { i64, %struct.file* }
%struct.file = type { i64, %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.dentry* }
%struct.dentry = type { %struct.TYPE_8__* }
%struct.TYPE_8__ = type { %struct.TYPE_7__, %struct.TYPE_6__, i64 }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_6__ = type { i32 }
%struct.iovec = type { i32 }

@.str = private unnamed_addr constant [27 x i8] c"file %s/%s, count=%lu@%lu\0A\00", align 1
@.str.1 = private unnamed_addr constant [36 x i8] c"%s/%s validation failed, error=%Zd\0A\00", align 1
@SMB_O_WRONLY = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [41 x i8] c"pos=%ld, size=%ld, mtime=%ld, atime=%ld\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.kiocb*, %struct.iovec*, i64, i64)* @smb_file_aio_write to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @smb_file_aio_write(%struct.kiocb* %0, %struct.iovec* %1, i64 %2, i64 %3) #0 {
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
  %16 = getelementptr inbounds %struct.file, %struct.file* %15, i32 0, i32 1
  %17 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %16, i32 0, i32 0
  %18 = load %struct.dentry*, %struct.dentry** %17, align 8
  store %struct.dentry* %18, %struct.dentry** %10, align 8
  %19 = load %struct.dentry*, %struct.dentry** %10, align 8
  %20 = call i32 @DENTRY_PATH(%struct.dentry* %19)
  %21 = sext i32 %20 to i64
  %22 = load %struct.kiocb*, %struct.kiocb** %5, align 8
  %23 = getelementptr inbounds %struct.kiocb, %struct.kiocb* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = load i64, i64* %8, align 8
  %26 = call i32 (i8*, i64, i64, i64, ...) @VERBOSE(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0), i64 %21, i64 %24, i64 %25)
  %27 = load %struct.dentry*, %struct.dentry** %10, align 8
  %28 = call i64 @smb_revalidate_inode(%struct.dentry* %27)
  store i64 %28, i64* %11, align 8
  %29 = load i64, i64* %11, align 8
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %36

31:                                               ; preds = %4
  %32 = load %struct.dentry*, %struct.dentry** %10, align 8
  %33 = call i32 @DENTRY_PATH(%struct.dentry* %32)
  %34 = load i64, i64* %11, align 8
  %35 = call i32 @PARANOIA(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0), i32 %33, i64 %34)
  br label %77

36:                                               ; preds = %4
  %37 = load %struct.dentry*, %struct.dentry** %10, align 8
  %38 = load i32, i32* @SMB_O_WRONLY, align 4
  %39 = call i64 @smb_open(%struct.dentry* %37, i32 %38)
  store i64 %39, i64* %11, align 8
  %40 = load i64, i64* %11, align 8
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %43

42:                                               ; preds = %36
  br label %77

43:                                               ; preds = %36
  %44 = load %struct.kiocb*, %struct.kiocb** %5, align 8
  %45 = getelementptr inbounds %struct.kiocb, %struct.kiocb* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = icmp sgt i64 %46, 0
  br i1 %47, label %48, label %76

48:                                               ; preds = %43
  %49 = load %struct.kiocb*, %struct.kiocb** %5, align 8
  %50 = load %struct.iovec*, %struct.iovec** %6, align 8
  %51 = load i64, i64* %7, align 8
  %52 = load i64, i64* %8, align 8
  %53 = call i64 @generic_file_aio_write(%struct.kiocb* %49, %struct.iovec* %50, i64 %51, i64 %52)
  store i64 %53, i64* %11, align 8
  %54 = load %struct.file*, %struct.file** %9, align 8
  %55 = getelementptr inbounds %struct.file, %struct.file* %54, i32 0, i32 0
  %56 = load i64, i64* %55, align 8
  %57 = load %struct.dentry*, %struct.dentry** %10, align 8
  %58 = getelementptr inbounds %struct.dentry, %struct.dentry* %57, i32 0, i32 0
  %59 = load %struct.TYPE_8__*, %struct.TYPE_8__** %58, align 8
  %60 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %59, i32 0, i32 2
  %61 = load i64, i64* %60, align 8
  %62 = load %struct.dentry*, %struct.dentry** %10, align 8
  %63 = getelementptr inbounds %struct.dentry, %struct.dentry* %62, i32 0, i32 0
  %64 = load %struct.TYPE_8__*, %struct.TYPE_8__** %63, align 8
  %65 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %64, i32 0, i32 1
  %66 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  %68 = sext i32 %67 to i64
  %69 = load %struct.dentry*, %struct.dentry** %10, align 8
  %70 = getelementptr inbounds %struct.dentry, %struct.dentry* %69, i32 0, i32 0
  %71 = load %struct.TYPE_8__*, %struct.TYPE_8__** %70, align 8
  %72 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %71, i32 0, i32 0
  %73 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 8
  %75 = call i32 (i8*, i64, i64, i64, ...) @VERBOSE(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.2, i64 0, i64 0), i64 %56, i64 %61, i64 %68, i32 %74)
  br label %76

76:                                               ; preds = %48, %43
  br label %77

77:                                               ; preds = %76, %42, %31
  %78 = load i64, i64* %11, align 8
  ret i64 %78
}

declare dso_local i32 @VERBOSE(i8*, i64, i64, i64, ...) #1

declare dso_local i32 @DENTRY_PATH(%struct.dentry*) #1

declare dso_local i64 @smb_revalidate_inode(%struct.dentry*) #1

declare dso_local i32 @PARANOIA(i8*, i32, i64) #1

declare dso_local i64 @smb_open(%struct.dentry*, i32) #1

declare dso_local i64 @generic_file_aio_write(%struct.kiocb*, %struct.iovec*, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

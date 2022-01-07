; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/smbfs/extr_file.c_smb_file_splice_read.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/smbfs/extr_file.c_smb_file_splice_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.dentry* }
%struct.dentry = type { i32 }
%struct.pipe_inode_info = type { i32 }

@.str = private unnamed_addr constant [32 x i8] c"file %s/%s, pos=%Ld, count=%lu\0A\00", align 1
@.str.1 = private unnamed_addr constant [36 x i8] c"%s/%s validation failed, error=%Zd\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.file*, i32*, %struct.pipe_inode_info*, i64, i32)* @smb_file_splice_read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @smb_file_splice_read(%struct.file* %0, i32* %1, %struct.pipe_inode_info* %2, i64 %3, i32 %4) #0 {
  %6 = alloca %struct.file*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.pipe_inode_info*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.dentry*, align 8
  %12 = alloca i64, align 8
  store %struct.file* %0, %struct.file** %6, align 8
  store i32* %1, i32** %7, align 8
  store %struct.pipe_inode_info* %2, %struct.pipe_inode_info** %8, align 8
  store i64 %3, i64* %9, align 8
  store i32 %4, i32* %10, align 4
  %13 = load %struct.file*, %struct.file** %6, align 8
  %14 = getelementptr inbounds %struct.file, %struct.file* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  %16 = load %struct.dentry*, %struct.dentry** %15, align 8
  store %struct.dentry* %16, %struct.dentry** %11, align 8
  %17 = load %struct.dentry*, %struct.dentry** %11, align 8
  %18 = call i32 @DENTRY_PATH(%struct.dentry* %17)
  %19 = load i32*, i32** %7, align 8
  %20 = load i32, i32* %19, align 4
  %21 = load i64, i64* %9, align 8
  %22 = call i32 @VERBOSE(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), i32 %18, i32 %20, i64 %21)
  %23 = load %struct.dentry*, %struct.dentry** %11, align 8
  %24 = call i64 @smb_revalidate_inode(%struct.dentry* %23)
  store i64 %24, i64* %12, align 8
  %25 = load i64, i64* %12, align 8
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %32

27:                                               ; preds = %5
  %28 = load %struct.dentry*, %struct.dentry** %11, align 8
  %29 = call i32 @DENTRY_PATH(%struct.dentry* %28)
  %30 = load i64, i64* %12, align 8
  %31 = call i32 @PARANOIA(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0), i32 %29, i64 %30)
  br label %39

32:                                               ; preds = %5
  %33 = load %struct.file*, %struct.file** %6, align 8
  %34 = load i32*, i32** %7, align 8
  %35 = load %struct.pipe_inode_info*, %struct.pipe_inode_info** %8, align 8
  %36 = load i64, i64* %9, align 8
  %37 = load i32, i32* %10, align 4
  %38 = call i64 @generic_file_splice_read(%struct.file* %33, i32* %34, %struct.pipe_inode_info* %35, i64 %36, i32 %37)
  store i64 %38, i64* %12, align 8
  br label %39

39:                                               ; preds = %32, %27
  %40 = load i64, i64* %12, align 8
  ret i64 %40
}

declare dso_local i32 @VERBOSE(i8*, i32, i32, i64) #1

declare dso_local i32 @DENTRY_PATH(%struct.dentry*) #1

declare dso_local i64 @smb_revalidate_inode(%struct.dentry*) #1

declare dso_local i32 @PARANOIA(i8*, i32, i64) #1

declare dso_local i64 @generic_file_splice_read(%struct.file*, i32*, %struct.pipe_inode_info*, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

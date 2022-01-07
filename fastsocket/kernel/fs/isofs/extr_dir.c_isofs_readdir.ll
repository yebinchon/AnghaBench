; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/isofs/extr_dir.c_isofs_readdir.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/isofs/extr_dir.c_isofs_readdir.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { %struct.inode* }
%struct.inode = type { i32 }
%struct.iso_directory_record = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*, i8*, i32)* @isofs_readdir to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @isofs_readdir(%struct.file* %0, i8* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.file*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca %struct.iso_directory_record*, align 8
  %11 = alloca %struct.inode*, align 8
  store %struct.file* %0, %struct.file** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  %12 = load %struct.file*, %struct.file** %5, align 8
  %13 = getelementptr inbounds %struct.file, %struct.file* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i32 0, i32 0
  %15 = load %struct.TYPE_3__*, %struct.TYPE_3__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %15, i32 0, i32 0
  %17 = load %struct.inode*, %struct.inode** %16, align 8
  store %struct.inode* %17, %struct.inode** %11, align 8
  %18 = load i32, i32* @GFP_KERNEL, align 4
  %19 = call i64 @__get_free_page(i32 %18)
  %20 = inttoptr i64 %19 to i8*
  store i8* %20, i8** %9, align 8
  %21 = load i8*, i8** %9, align 8
  %22 = icmp eq i8* %21, null
  br i1 %22, label %23, label %26

23:                                               ; preds = %3
  %24 = load i32, i32* @ENOMEM, align 4
  %25 = sub nsw i32 0, %24
  store i32 %25, i32* %4, align 4
  br label %43

26:                                               ; preds = %3
  %27 = call i32 (...) @lock_kernel()
  %28 = load i8*, i8** %9, align 8
  %29 = getelementptr inbounds i8, i8* %28, i64 1024
  %30 = bitcast i8* %29 to %struct.iso_directory_record*
  store %struct.iso_directory_record* %30, %struct.iso_directory_record** %10, align 8
  %31 = load %struct.inode*, %struct.inode** %11, align 8
  %32 = load %struct.file*, %struct.file** %5, align 8
  %33 = load i8*, i8** %6, align 8
  %34 = load i32, i32* %7, align 4
  %35 = load i8*, i8** %9, align 8
  %36 = load %struct.iso_directory_record*, %struct.iso_directory_record** %10, align 8
  %37 = call i32 @do_isofs_readdir(%struct.inode* %31, %struct.file* %32, i8* %33, i32 %34, i8* %35, %struct.iso_directory_record* %36)
  store i32 %37, i32* %8, align 4
  %38 = load i8*, i8** %9, align 8
  %39 = ptrtoint i8* %38 to i64
  %40 = call i32 @free_page(i64 %39)
  %41 = call i32 (...) @unlock_kernel()
  %42 = load i32, i32* %8, align 4
  store i32 %42, i32* %4, align 4
  br label %43

43:                                               ; preds = %26, %23
  %44 = load i32, i32* %4, align 4
  ret i32 %44
}

declare dso_local i64 @__get_free_page(i32) #1

declare dso_local i32 @lock_kernel(...) #1

declare dso_local i32 @do_isofs_readdir(%struct.inode*, %struct.file*, i8*, i32, i8*, %struct.iso_directory_record*) #1

declare dso_local i32 @free_page(i64) #1

declare dso_local i32 @unlock_kernel(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

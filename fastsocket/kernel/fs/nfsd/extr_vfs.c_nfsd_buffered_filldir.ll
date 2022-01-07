; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/nfsd/extr_vfs.c_nfsd_buffered_filldir.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/nfsd/extr_vfs.c_nfsd_buffered_filldir.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.readdir_data = type { i64, i64, i32 }
%struct.buffered_dirent = type { i32, i32, i32, i32, i32 }

@PAGE_SIZE = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i8*, i32, i32, i32, i32)* @nfsd_buffered_filldir to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nfsd_buffered_filldir(i8* %0, i8* %1, i32 %2, i32 %3, i32 %4, i32 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.readdir_data*, align 8
  %15 = alloca %struct.buffered_dirent*, align 8
  %16 = alloca i32, align 4
  store i8* %0, i8** %8, align 8
  store i8* %1, i8** %9, align 8
  store i32 %2, i32* %10, align 4
  store i32 %3, i32* %11, align 4
  store i32 %4, i32* %12, align 4
  store i32 %5, i32* %13, align 4
  %17 = load i8*, i8** %8, align 8
  %18 = bitcast i8* %17 to %struct.readdir_data*
  store %struct.readdir_data* %18, %struct.readdir_data** %14, align 8
  %19 = load %struct.readdir_data*, %struct.readdir_data** %14, align 8
  %20 = getelementptr inbounds %struct.readdir_data, %struct.readdir_data* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = load %struct.readdir_data*, %struct.readdir_data** %14, align 8
  %23 = getelementptr inbounds %struct.readdir_data, %struct.readdir_data* %22, i32 0, i32 1
  %24 = load i64, i64* %23, align 8
  %25 = add nsw i64 %21, %24
  %26 = inttoptr i64 %25 to i8*
  %27 = bitcast i8* %26 to %struct.buffered_dirent*
  store %struct.buffered_dirent* %27, %struct.buffered_dirent** %15, align 8
  %28 = load i32, i32* %10, align 4
  %29 = sext i32 %28 to i64
  %30 = add i64 20, %29
  %31 = trunc i64 %30 to i32
  %32 = call i32 @ALIGN(i32 %31, i32 4)
  store i32 %32, i32* %16, align 4
  %33 = load %struct.readdir_data*, %struct.readdir_data** %14, align 8
  %34 = getelementptr inbounds %struct.readdir_data, %struct.readdir_data* %33, i32 0, i32 1
  %35 = load i64, i64* %34, align 8
  %36 = load i32, i32* %16, align 4
  %37 = zext i32 %36 to i64
  %38 = add nsw i64 %35, %37
  %39 = load i64, i64* @PAGE_SIZE, align 8
  %40 = icmp sgt i64 %38, %39
  br i1 %40, label %41, label %46

41:                                               ; preds = %6
  %42 = load %struct.readdir_data*, %struct.readdir_data** %14, align 8
  %43 = getelementptr inbounds %struct.readdir_data, %struct.readdir_data* %42, i32 0, i32 2
  store i32 1, i32* %43, align 8
  %44 = load i32, i32* @EINVAL, align 4
  %45 = sub nsw i32 0, %44
  store i32 %45, i32* %7, align 4
  br label %71

46:                                               ; preds = %6
  %47 = load i32, i32* %10, align 4
  %48 = load %struct.buffered_dirent*, %struct.buffered_dirent** %15, align 8
  %49 = getelementptr inbounds %struct.buffered_dirent, %struct.buffered_dirent* %48, i32 0, i32 0
  store i32 %47, i32* %49, align 4
  %50 = load i32, i32* %11, align 4
  %51 = load %struct.buffered_dirent*, %struct.buffered_dirent** %15, align 8
  %52 = getelementptr inbounds %struct.buffered_dirent, %struct.buffered_dirent* %51, i32 0, i32 4
  store i32 %50, i32* %52, align 4
  %53 = load i32, i32* %12, align 4
  %54 = load %struct.buffered_dirent*, %struct.buffered_dirent** %15, align 8
  %55 = getelementptr inbounds %struct.buffered_dirent, %struct.buffered_dirent* %54, i32 0, i32 3
  store i32 %53, i32* %55, align 4
  %56 = load i32, i32* %13, align 4
  %57 = load %struct.buffered_dirent*, %struct.buffered_dirent** %15, align 8
  %58 = getelementptr inbounds %struct.buffered_dirent, %struct.buffered_dirent* %57, i32 0, i32 1
  store i32 %56, i32* %58, align 4
  %59 = load %struct.buffered_dirent*, %struct.buffered_dirent** %15, align 8
  %60 = getelementptr inbounds %struct.buffered_dirent, %struct.buffered_dirent* %59, i32 0, i32 2
  %61 = load i32, i32* %60, align 4
  %62 = load i8*, i8** %9, align 8
  %63 = load i32, i32* %10, align 4
  %64 = call i32 @memcpy(i32 %61, i8* %62, i32 %63)
  %65 = load i32, i32* %16, align 4
  %66 = zext i32 %65 to i64
  %67 = load %struct.readdir_data*, %struct.readdir_data** %14, align 8
  %68 = getelementptr inbounds %struct.readdir_data, %struct.readdir_data* %67, i32 0, i32 1
  %69 = load i64, i64* %68, align 8
  %70 = add nsw i64 %69, %66
  store i64 %70, i64* %68, align 8
  store i32 0, i32* %7, align 4
  br label %71

71:                                               ; preds = %46, %41
  %72 = load i32, i32* %7, align 4
  ret i32 %72
}

declare dso_local i32 @ALIGN(i32, i32) #1

declare dso_local i32 @memcpy(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

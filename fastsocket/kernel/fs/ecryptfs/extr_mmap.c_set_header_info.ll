; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/ecryptfs/extr_mmap.c_set_header_info.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/ecryptfs/extr_mmap.c_set_header_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ecryptfs_crypt_stat = type { i64 }

@ECRYPTFS_MINIMUM_HEADER_EXTENT_SIZE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, %struct.ecryptfs_crypt_stat*)* @set_header_info to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @set_header_info(i8* %0, %struct.ecryptfs_crypt_stat* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca %struct.ecryptfs_crypt_stat*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  store i8* %0, i8** %3, align 8
  store %struct.ecryptfs_crypt_stat* %1, %struct.ecryptfs_crypt_stat** %4, align 8
  %7 = load %struct.ecryptfs_crypt_stat*, %struct.ecryptfs_crypt_stat** %4, align 8
  %8 = getelementptr inbounds %struct.ecryptfs_crypt_stat, %struct.ecryptfs_crypt_stat* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  store i64 %9, i64* %6, align 8
  %10 = load i64, i64* @ECRYPTFS_MINIMUM_HEADER_EXTENT_SIZE, align 8
  %11 = load %struct.ecryptfs_crypt_stat*, %struct.ecryptfs_crypt_stat** %4, align 8
  %12 = getelementptr inbounds %struct.ecryptfs_crypt_stat, %struct.ecryptfs_crypt_stat* %11, i32 0, i32 0
  store i64 %10, i64* %12, align 8
  %13 = load i8*, i8** %3, align 8
  %14 = getelementptr inbounds i8, i8* %13, i64 20
  %15 = load %struct.ecryptfs_crypt_stat*, %struct.ecryptfs_crypt_stat** %4, align 8
  %16 = call i32 @ecryptfs_write_header_metadata(i8* %14, %struct.ecryptfs_crypt_stat* %15, i64* %5)
  %17 = load i64, i64* %6, align 8
  %18 = load %struct.ecryptfs_crypt_stat*, %struct.ecryptfs_crypt_stat** %4, align 8
  %19 = getelementptr inbounds %struct.ecryptfs_crypt_stat, %struct.ecryptfs_crypt_stat* %18, i32 0, i32 0
  store i64 %17, i64* %19, align 8
  ret void
}

declare dso_local i32 @ecryptfs_write_header_metadata(i8*, %struct.ecryptfs_crypt_stat*, i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

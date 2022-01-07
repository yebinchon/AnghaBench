; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/nfs/extr_dir.c_nfs_readdir_get_array.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/nfs/extr_dir.c_nfs_readdir_get_array.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nfs_cache_array = type opaque
%struct.page = type { i32 }

@EIO = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.nfs_cache_array* (%struct.page*)* @nfs_readdir_get_array to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.nfs_cache_array* @nfs_readdir_get_array(%struct.page* %0) #0 {
  %2 = alloca %struct.nfs_cache_array*, align 8
  %3 = alloca %struct.page*, align 8
  %4 = alloca i8*, align 8
  store %struct.page* %0, %struct.page** %3, align 8
  %5 = load %struct.page*, %struct.page** %3, align 8
  %6 = icmp eq %struct.page* %5, null
  br i1 %6, label %7, label %12

7:                                                ; preds = %1
  %8 = load i32, i32* @EIO, align 4
  %9 = sub nsw i32 0, %8
  %10 = call i8* @ERR_PTR(i32 %9)
  %11 = bitcast i8* %10 to %struct.nfs_cache_array*
  store %struct.nfs_cache_array* %11, %struct.nfs_cache_array** %2, align 8
  br label %25

12:                                               ; preds = %1
  %13 = load %struct.page*, %struct.page** %3, align 8
  %14 = call i8* @kmap(%struct.page* %13)
  store i8* %14, i8** %4, align 8
  %15 = load i8*, i8** %4, align 8
  %16 = icmp eq i8* %15, null
  br i1 %16, label %17, label %22

17:                                               ; preds = %12
  %18 = load i32, i32* @ENOMEM, align 4
  %19 = sub nsw i32 0, %18
  %20 = call i8* @ERR_PTR(i32 %19)
  %21 = bitcast i8* %20 to %struct.nfs_cache_array*
  store %struct.nfs_cache_array* %21, %struct.nfs_cache_array** %2, align 8
  br label %25

22:                                               ; preds = %12
  %23 = load i8*, i8** %4, align 8
  %24 = bitcast i8* %23 to %struct.nfs_cache_array*
  store %struct.nfs_cache_array* %24, %struct.nfs_cache_array** %2, align 8
  br label %25

25:                                               ; preds = %22, %17, %7
  %26 = load %struct.nfs_cache_array*, %struct.nfs_cache_array** %2, align 8
  ret %struct.nfs_cache_array* %26
}

declare dso_local i8* @ERR_PTR(i32) #1

declare dso_local i8* @kmap(%struct.page*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

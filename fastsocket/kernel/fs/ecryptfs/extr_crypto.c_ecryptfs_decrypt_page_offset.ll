; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/ecryptfs/extr_crypto.c_ecryptfs_decrypt_page_offset.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/ecryptfs/extr_crypto.c_ecryptfs_decrypt_page_offset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ecryptfs_crypt_stat = type { i32 }
%struct.page = type { i32 }
%struct.scatterlist = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ecryptfs_crypt_stat*, %struct.page*, i32, %struct.page*, i32, i32, i8*)* @ecryptfs_decrypt_page_offset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ecryptfs_decrypt_page_offset(%struct.ecryptfs_crypt_stat* %0, %struct.page* %1, i32 %2, %struct.page* %3, i32 %4, i32 %5, i8* %6) #0 {
  %8 = alloca %struct.ecryptfs_crypt_stat*, align 8
  %9 = alloca %struct.page*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.page*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i8*, align 8
  %15 = alloca %struct.scatterlist, align 4
  %16 = alloca %struct.scatterlist, align 4
  store %struct.ecryptfs_crypt_stat* %0, %struct.ecryptfs_crypt_stat** %8, align 8
  store %struct.page* %1, %struct.page** %9, align 8
  store i32 %2, i32* %10, align 4
  store %struct.page* %3, %struct.page** %11, align 8
  store i32 %4, i32* %12, align 4
  store i32 %5, i32* %13, align 4
  store i8* %6, i8** %14, align 8
  %17 = call i32 @sg_init_table(%struct.scatterlist* %15, i32 1)
  %18 = load %struct.page*, %struct.page** %11, align 8
  %19 = load i32, i32* %13, align 4
  %20 = load i32, i32* %12, align 4
  %21 = call i32 @sg_set_page(%struct.scatterlist* %15, %struct.page* %18, i32 %19, i32 %20)
  %22 = call i32 @sg_init_table(%struct.scatterlist* %16, i32 1)
  %23 = load %struct.page*, %struct.page** %9, align 8
  %24 = load i32, i32* %13, align 4
  %25 = load i32, i32* %10, align 4
  %26 = call i32 @sg_set_page(%struct.scatterlist* %16, %struct.page* %23, i32 %24, i32 %25)
  %27 = load %struct.ecryptfs_crypt_stat*, %struct.ecryptfs_crypt_stat** %8, align 8
  %28 = load i32, i32* %13, align 4
  %29 = load i8*, i8** %14, align 8
  %30 = call i32 @decrypt_scatterlist(%struct.ecryptfs_crypt_stat* %27, %struct.scatterlist* %16, %struct.scatterlist* %15, i32 %28, i8* %29)
  ret i32 %30
}

declare dso_local i32 @sg_init_table(%struct.scatterlist*, i32) #1

declare dso_local i32 @sg_set_page(%struct.scatterlist*, %struct.page*, i32, i32) #1

declare dso_local i32 @decrypt_scatterlist(%struct.ecryptfs_crypt_stat*, %struct.scatterlist*, %struct.scatterlist*, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

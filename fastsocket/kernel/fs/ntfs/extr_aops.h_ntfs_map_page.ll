; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/ntfs/extr_aops.h_ntfs_map_page.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/ntfs/extr_aops.h_ntfs_map_page.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.page = type { i32 }
%struct.address_space = type { i32 }

@EIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.page* (%struct.address_space*, i64)* @ntfs_map_page to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.page* @ntfs_map_page(%struct.address_space* %0, i64 %1) #0 {
  %3 = alloca %struct.page*, align 8
  %4 = alloca %struct.address_space*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.page*, align 8
  store %struct.address_space* %0, %struct.address_space** %4, align 8
  store i64 %1, i64* %5, align 8
  %7 = load %struct.address_space*, %struct.address_space** %4, align 8
  %8 = load i64, i64* %5, align 8
  %9 = call %struct.page* @read_mapping_page(%struct.address_space* %7, i64 %8, i32* null)
  store %struct.page* %9, %struct.page** %6, align 8
  %10 = load %struct.page*, %struct.page** %6, align 8
  %11 = call i32 @IS_ERR(%struct.page* %10)
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %27, label %13

13:                                               ; preds = %2
  %14 = load %struct.page*, %struct.page** %6, align 8
  %15 = call i32 @kmap(%struct.page* %14)
  %16 = load %struct.page*, %struct.page** %6, align 8
  %17 = call i32 @PageError(%struct.page* %16)
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %21, label %19

19:                                               ; preds = %13
  %20 = load %struct.page*, %struct.page** %6, align 8
  store %struct.page* %20, %struct.page** %3, align 8
  br label %29

21:                                               ; preds = %13
  %22 = load %struct.page*, %struct.page** %6, align 8
  %23 = call i32 @ntfs_unmap_page(%struct.page* %22)
  %24 = load i32, i32* @EIO, align 4
  %25 = sub nsw i32 0, %24
  %26 = call %struct.page* @ERR_PTR(i32 %25)
  store %struct.page* %26, %struct.page** %3, align 8
  br label %29

27:                                               ; preds = %2
  %28 = load %struct.page*, %struct.page** %6, align 8
  store %struct.page* %28, %struct.page** %3, align 8
  br label %29

29:                                               ; preds = %27, %21, %19
  %30 = load %struct.page*, %struct.page** %3, align 8
  ret %struct.page* %30
}

declare dso_local %struct.page* @read_mapping_page(%struct.address_space*, i64, i32*) #1

declare dso_local i32 @IS_ERR(%struct.page*) #1

declare dso_local i32 @kmap(%struct.page*) #1

declare dso_local i32 @PageError(%struct.page*) #1

declare dso_local i32 @ntfs_unmap_page(%struct.page*) #1

declare dso_local %struct.page* @ERR_PTR(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

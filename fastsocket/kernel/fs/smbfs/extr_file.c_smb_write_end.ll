; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/smbfs/extr_file.c_smb_write_end.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/smbfs/extr_file.c_smb_write_end.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { i32 }
%struct.address_space = type { i32 }
%struct.page = type { i32 }

@PAGE_CACHE_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*, %struct.address_space*, i32, i32, i32, %struct.page*, i8*)* @smb_write_end to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @smb_write_end(%struct.file* %0, %struct.address_space* %1, i32 %2, i32 %3, i32 %4, %struct.page* %5, i8* %6) #0 {
  %8 = alloca %struct.file*, align 8
  %9 = alloca %struct.address_space*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.page*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store %struct.file* %0, %struct.file** %8, align 8
  store %struct.address_space* %1, %struct.address_space** %9, align 8
  store i32 %2, i32* %10, align 4
  store i32 %3, i32* %11, align 4
  store i32 %4, i32* %12, align 4
  store %struct.page* %5, %struct.page** %13, align 8
  store i8* %6, i8** %14, align 8
  %17 = load i32, i32* %10, align 4
  %18 = load i32, i32* @PAGE_CACHE_SIZE, align 4
  %19 = sub nsw i32 %18, 1
  %20 = and i32 %17, %19
  store i32 %20, i32* %16, align 4
  %21 = call i32 (...) @lock_kernel()
  %22 = load %struct.file*, %struct.file** %8, align 8
  %23 = load %struct.page*, %struct.page** %13, align 8
  %24 = load i32, i32* %16, align 4
  %25 = load i32, i32* %12, align 4
  %26 = call i32 @smb_updatepage(%struct.file* %22, %struct.page* %23, i32 %24, i32 %25)
  store i32 %26, i32* %15, align 4
  %27 = call i32 (...) @unlock_kernel()
  %28 = load i32, i32* %15, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %43, label %30

30:                                               ; preds = %7
  %31 = load %struct.page*, %struct.page** %13, align 8
  %32 = call i32 @PageUptodate(%struct.page* %31)
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %41, label %34

34:                                               ; preds = %30
  %35 = load i32, i32* %12, align 4
  %36 = load i32, i32* @PAGE_CACHE_SIZE, align 4
  %37 = icmp eq i32 %35, %36
  br i1 %37, label %38, label %41

38:                                               ; preds = %34
  %39 = load %struct.page*, %struct.page** %13, align 8
  %40 = call i32 @SetPageUptodate(%struct.page* %39)
  br label %41

41:                                               ; preds = %38, %34, %30
  %42 = load i32, i32* %12, align 4
  store i32 %42, i32* %15, align 4
  br label %43

43:                                               ; preds = %41, %7
  %44 = load %struct.page*, %struct.page** %13, align 8
  %45 = call i32 @unlock_page(%struct.page* %44)
  %46 = load %struct.page*, %struct.page** %13, align 8
  %47 = call i32 @page_cache_release(%struct.page* %46)
  %48 = load i32, i32* %15, align 4
  ret i32 %48
}

declare dso_local i32 @lock_kernel(...) #1

declare dso_local i32 @smb_updatepage(%struct.file*, %struct.page*, i32, i32) #1

declare dso_local i32 @unlock_kernel(...) #1

declare dso_local i32 @PageUptodate(%struct.page*) #1

declare dso_local i32 @SetPageUptodate(%struct.page*) #1

declare dso_local i32 @unlock_page(%struct.page*) #1

declare dso_local i32 @page_cache_release(%struct.page*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

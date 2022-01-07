; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/smbfs/extr_file.c_smb_writepage.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/smbfs/extr_file.c_smb_writepage.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.page = type { i64, %struct.address_space* }
%struct.address_space = type { %struct.inode* }
%struct.inode = type { i64 }
%struct.writeback_control = type { i32 }

@PAGE_CACHE_SIZE = common dso_local global i32 0, align 4
@PAGE_CACHE_SHIFT = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.page*, %struct.writeback_control*)* @smb_writepage to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @smb_writepage(%struct.page* %0, %struct.writeback_control* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.page*, align 8
  %5 = alloca %struct.writeback_control*, align 8
  %6 = alloca %struct.address_space*, align 8
  %7 = alloca %struct.inode*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.page* %0, %struct.page** %4, align 8
  store %struct.writeback_control* %1, %struct.writeback_control** %5, align 8
  %11 = load %struct.page*, %struct.page** %4, align 8
  %12 = getelementptr inbounds %struct.page, %struct.page* %11, i32 0, i32 1
  %13 = load %struct.address_space*, %struct.address_space** %12, align 8
  store %struct.address_space* %13, %struct.address_space** %6, align 8
  %14 = load i32, i32* @PAGE_CACHE_SIZE, align 4
  store i32 %14, i32* %9, align 4
  %15 = load %struct.address_space*, %struct.address_space** %6, align 8
  %16 = icmp ne %struct.address_space* %15, null
  %17 = xor i1 %16, true
  %18 = zext i1 %17 to i32
  %19 = call i32 @BUG_ON(i32 %18)
  %20 = load %struct.address_space*, %struct.address_space** %6, align 8
  %21 = getelementptr inbounds %struct.address_space, %struct.address_space* %20, i32 0, i32 0
  %22 = load %struct.inode*, %struct.inode** %21, align 8
  store %struct.inode* %22, %struct.inode** %7, align 8
  %23 = load %struct.inode*, %struct.inode** %7, align 8
  %24 = icmp ne %struct.inode* %23, null
  %25 = xor i1 %24, true
  %26 = zext i1 %25 to i32
  %27 = call i32 @BUG_ON(i32 %26)
  %28 = load %struct.inode*, %struct.inode** %7, align 8
  %29 = getelementptr inbounds %struct.inode, %struct.inode* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = load i64, i64* @PAGE_CACHE_SHIFT, align 8
  %32 = lshr i64 %30, %31
  store i64 %32, i64* %8, align 8
  %33 = load %struct.page*, %struct.page** %4, align 8
  %34 = getelementptr inbounds %struct.page, %struct.page* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = load i64, i64* %8, align 8
  %37 = icmp ult i64 %35, %36
  br i1 %37, label %38, label %39

38:                                               ; preds = %2
  br label %59

39:                                               ; preds = %2
  %40 = load %struct.inode*, %struct.inode** %7, align 8
  %41 = getelementptr inbounds %struct.inode, %struct.inode* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = load i32, i32* @PAGE_CACHE_SIZE, align 4
  %44 = sub nsw i32 %43, 1
  %45 = sext i32 %44 to i64
  %46 = and i64 %42, %45
  %47 = trunc i64 %46 to i32
  store i32 %47, i32* %9, align 4
  %48 = load %struct.page*, %struct.page** %4, align 8
  %49 = getelementptr inbounds %struct.page, %struct.page* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = load i64, i64* %8, align 8
  %52 = add i64 %51, 1
  %53 = icmp uge i64 %50, %52
  br i1 %53, label %57, label %54

54:                                               ; preds = %39
  %55 = load i32, i32* %9, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %58, label %57

57:                                               ; preds = %54, %39
  store i32 0, i32* %3, align 4
  br label %73

58:                                               ; preds = %54
  br label %59

59:                                               ; preds = %58, %38
  %60 = load %struct.page*, %struct.page** %4, align 8
  %61 = call i32 @page_cache_get(%struct.page* %60)
  %62 = load %struct.inode*, %struct.inode** %7, align 8
  %63 = load %struct.page*, %struct.page** %4, align 8
  %64 = load i32, i32* %9, align 4
  %65 = call i32 @smb_writepage_sync(%struct.inode* %62, %struct.page* %63, i32 0, i32 %64)
  store i32 %65, i32* %10, align 4
  %66 = load %struct.page*, %struct.page** %4, align 8
  %67 = call i32 @SetPageUptodate(%struct.page* %66)
  %68 = load %struct.page*, %struct.page** %4, align 8
  %69 = call i32 @unlock_page(%struct.page* %68)
  %70 = load %struct.page*, %struct.page** %4, align 8
  %71 = call i32 @page_cache_release(%struct.page* %70)
  %72 = load i32, i32* %10, align 4
  store i32 %72, i32* %3, align 4
  br label %73

73:                                               ; preds = %59, %57
  %74 = load i32, i32* %3, align 4
  ret i32 %74
}

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @page_cache_get(%struct.page*) #1

declare dso_local i32 @smb_writepage_sync(%struct.inode*, %struct.page*, i32, i32) #1

declare dso_local i32 @SetPageUptodate(%struct.page*) #1

declare dso_local i32 @unlock_page(%struct.page*) #1

declare dso_local i32 @page_cache_release(%struct.page*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/nilfs2/extr_dir.c_nilfs_get_page.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/nilfs2/extr_dir.c_nilfs_get_page.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.page = type { i32 }
%struct.inode = type { %struct.address_space* }
%struct.address_space = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64 }

@EIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.page* (%struct.inode*, i64)* @nilfs_get_page to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.page* @nilfs_get_page(%struct.inode* %0, i64 %1) #0 {
  %3 = alloca %struct.page*, align 8
  %4 = alloca %struct.inode*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.address_space*, align 8
  %7 = alloca %struct.page*, align 8
  store %struct.inode* %0, %struct.inode** %4, align 8
  store i64 %1, i64* %5, align 8
  %8 = load %struct.inode*, %struct.inode** %4, align 8
  %9 = getelementptr inbounds %struct.inode, %struct.inode* %8, i32 0, i32 0
  %10 = load %struct.address_space*, %struct.address_space** %9, align 8
  store %struct.address_space* %10, %struct.address_space** %6, align 8
  %11 = load %struct.address_space*, %struct.address_space** %6, align 8
  %12 = load i64, i64* %5, align 8
  %13 = load %struct.address_space*, %struct.address_space** %6, align 8
  %14 = getelementptr inbounds %struct.address_space, %struct.address_space* %13, i32 0, i32 0
  %15 = load %struct.TYPE_2__*, %struct.TYPE_2__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = inttoptr i64 %17 to i32*
  %19 = call %struct.page* @read_cache_page(%struct.address_space* %11, i64 %12, i32* %18, i32* null)
  store %struct.page* %19, %struct.page** %7, align 8
  %20 = load %struct.page*, %struct.page** %7, align 8
  %21 = call i32 @IS_ERR(%struct.page* %20)
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %45, label %23

23:                                               ; preds = %2
  %24 = load %struct.page*, %struct.page** %7, align 8
  %25 = call i32 @wait_on_page_locked(%struct.page* %24)
  %26 = load %struct.page*, %struct.page** %7, align 8
  %27 = call i32 @kmap(%struct.page* %26)
  %28 = load %struct.page*, %struct.page** %7, align 8
  %29 = call i32 @PageUptodate(%struct.page* %28)
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %32, label %31

31:                                               ; preds = %23
  br label %47

32:                                               ; preds = %23
  %33 = load %struct.page*, %struct.page** %7, align 8
  %34 = call i32 @PageChecked(%struct.page* %33)
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %39, label %36

36:                                               ; preds = %32
  %37 = load %struct.page*, %struct.page** %7, align 8
  %38 = call i32 @nilfs_check_page(%struct.page* %37)
  br label %39

39:                                               ; preds = %36, %32
  %40 = load %struct.page*, %struct.page** %7, align 8
  %41 = call i64 @PageError(%struct.page* %40)
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %44

43:                                               ; preds = %39
  br label %47

44:                                               ; preds = %39
  br label %45

45:                                               ; preds = %44, %2
  %46 = load %struct.page*, %struct.page** %7, align 8
  store %struct.page* %46, %struct.page** %3, align 8
  br label %53

47:                                               ; preds = %43, %31
  %48 = load %struct.page*, %struct.page** %7, align 8
  %49 = call i32 @nilfs_put_page(%struct.page* %48)
  %50 = load i32, i32* @EIO, align 4
  %51 = sub nsw i32 0, %50
  %52 = call %struct.page* @ERR_PTR(i32 %51)
  store %struct.page* %52, %struct.page** %3, align 8
  br label %53

53:                                               ; preds = %47, %45
  %54 = load %struct.page*, %struct.page** %3, align 8
  ret %struct.page* %54
}

declare dso_local %struct.page* @read_cache_page(%struct.address_space*, i64, i32*, i32*) #1

declare dso_local i32 @IS_ERR(%struct.page*) #1

declare dso_local i32 @wait_on_page_locked(%struct.page*) #1

declare dso_local i32 @kmap(%struct.page*) #1

declare dso_local i32 @PageUptodate(%struct.page*) #1

declare dso_local i32 @PageChecked(%struct.page*) #1

declare dso_local i32 @nilfs_check_page(%struct.page*) #1

declare dso_local i64 @PageError(%struct.page*) #1

declare dso_local i32 @nilfs_put_page(%struct.page*) #1

declare dso_local %struct.page* @ERR_PTR(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

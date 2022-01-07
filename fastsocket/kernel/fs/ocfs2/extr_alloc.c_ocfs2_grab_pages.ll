; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/ocfs2/extr_alloc.c_ocfs2_grab_pages.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/ocfs2/extr_alloc.c_ocfs2_grab_pages.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { %struct.address_space* }
%struct.address_space = type { i32 }
%struct.page = type { i32 }

@PAGE_CACHE_SHIFT = common dso_local global i64 0, align 8
@ENOMEM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ocfs2_grab_pages(%struct.inode* %0, i64 %1, i64 %2, %struct.page** %3, i32* %4) #0 {
  %6 = alloca %struct.inode*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.page**, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.address_space*, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  store %struct.inode* %0, %struct.inode** %6, align 8
  store i64 %1, i64* %7, align 8
  store i64 %2, i64* %8, align 8
  store %struct.page** %3, %struct.page*** %9, align 8
  store i32* %4, i32** %10, align 8
  store i32 0, i32* %12, align 4
  %16 = load %struct.inode*, %struct.inode** %6, align 8
  %17 = getelementptr inbounds %struct.inode, %struct.inode* %16, i32 0, i32 0
  %18 = load %struct.address_space*, %struct.address_space** %17, align 8
  store %struct.address_space* %18, %struct.address_space** %13, align 8
  %19 = load i64, i64* %7, align 8
  %20 = load i64, i64* %8, align 8
  %21 = icmp ugt i64 %19, %20
  %22 = zext i1 %21 to i32
  %23 = call i32 @BUG_ON(i32 %22)
  store i32 0, i32* %11, align 4
  %24 = load i64, i64* %8, align 8
  %25 = call i64 @PAGE_ALIGN(i64 %24)
  store i64 %25, i64* %15, align 8
  %26 = load i64, i64* %7, align 8
  %27 = load i64, i64* @PAGE_CACHE_SHIFT, align 8
  %28 = lshr i64 %26, %27
  store i64 %28, i64* %14, align 8
  br label %29

29:                                               ; preds = %53, %5
  %30 = load %struct.address_space*, %struct.address_space** %13, align 8
  %31 = load i64, i64* %14, align 8
  %32 = call %struct.page* @grab_cache_page(%struct.address_space* %30, i64 %31)
  %33 = load %struct.page**, %struct.page*** %9, align 8
  %34 = load i32, i32* %11, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds %struct.page*, %struct.page** %33, i64 %35
  store %struct.page* %32, %struct.page** %36, align 8
  %37 = load %struct.page**, %struct.page*** %9, align 8
  %38 = load i32, i32* %11, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds %struct.page*, %struct.page** %37, i64 %39
  %41 = load %struct.page*, %struct.page** %40, align 8
  %42 = icmp ne %struct.page* %41, null
  br i1 %42, label %48, label %43

43:                                               ; preds = %29
  %44 = load i32, i32* @ENOMEM, align 4
  %45 = sub nsw i32 0, %44
  store i32 %45, i32* %12, align 4
  %46 = load i32, i32* %12, align 4
  %47 = call i32 @mlog_errno(i32 %46)
  br label %60

48:                                               ; preds = %29
  %49 = load i32, i32* %11, align 4
  %50 = add nsw i32 %49, 1
  store i32 %50, i32* %11, align 4
  %51 = load i64, i64* %14, align 8
  %52 = add i64 %51, 1
  store i64 %52, i64* %14, align 8
  br label %53

53:                                               ; preds = %48
  %54 = load i64, i64* %14, align 8
  %55 = load i64, i64* %15, align 8
  %56 = load i64, i64* @PAGE_CACHE_SHIFT, align 8
  %57 = lshr i64 %55, %56
  %58 = icmp ult i64 %54, %57
  br i1 %58, label %29, label %59

59:                                               ; preds = %53
  br label %60

60:                                               ; preds = %59, %43
  %61 = load i32, i32* %12, align 4
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %71

63:                                               ; preds = %60
  %64 = load %struct.page**, %struct.page*** %9, align 8
  %65 = icmp ne %struct.page** %64, null
  br i1 %65, label %66, label %70

66:                                               ; preds = %63
  %67 = load %struct.page**, %struct.page*** %9, align 8
  %68 = load i32, i32* %11, align 4
  %69 = call i32 @ocfs2_unlock_and_free_pages(%struct.page** %67, i32 %68)
  br label %70

70:                                               ; preds = %66, %63
  store i32 0, i32* %11, align 4
  br label %71

71:                                               ; preds = %70, %60
  %72 = load i32, i32* %11, align 4
  %73 = load i32*, i32** %10, align 8
  store i32 %72, i32* %73, align 4
  %74 = load i32, i32* %12, align 4
  ret i32 %74
}

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i64 @PAGE_ALIGN(i64) #1

declare dso_local %struct.page* @grab_cache_page(%struct.address_space*, i64) #1

declare dso_local i32 @mlog_errno(i32) #1

declare dso_local i32 @ocfs2_unlock_and_free_pages(%struct.page**, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

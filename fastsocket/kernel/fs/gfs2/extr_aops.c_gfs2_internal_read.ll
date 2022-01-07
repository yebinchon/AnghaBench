; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/gfs2/extr_aops.c_gfs2_internal_read.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/gfs2/extr_aops.c_gfs2_internal_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gfs2_inode = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.address_space* }
%struct.address_space = type { i32 }
%struct.file_ra_state = type { i32 }
%struct.page = type { i32 }

@PAGE_CACHE_SIZE = common dso_local global i32 0, align 4
@__gfs2_readpage = common dso_local global i32 0, align 4
@KM_USER0 = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @gfs2_internal_read(%struct.gfs2_inode* %0, %struct.file_ra_state* %1, i8* %2, i32* %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.gfs2_inode*, align 8
  %8 = alloca %struct.file_ra_state*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.address_space*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca %struct.page*, align 8
  %18 = alloca i8*, align 8
  store %struct.gfs2_inode* %0, %struct.gfs2_inode** %7, align 8
  store %struct.file_ra_state* %1, %struct.file_ra_state** %8, align 8
  store i8* %2, i8** %9, align 8
  store i32* %3, i32** %10, align 8
  store i32 %4, i32* %11, align 4
  %19 = load %struct.gfs2_inode*, %struct.gfs2_inode** %7, align 8
  %20 = getelementptr inbounds %struct.gfs2_inode, %struct.gfs2_inode* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 0
  %22 = load %struct.address_space*, %struct.address_space** %21, align 8
  store %struct.address_space* %22, %struct.address_space** %12, align 8
  %23 = load i32*, i32** %10, align 8
  %24 = load i32, i32* %23, align 4
  %25 = load i32, i32* @PAGE_CACHE_SIZE, align 4
  %26 = sdiv i32 %24, %25
  %27 = sext i32 %26 to i64
  store i64 %27, i64* %13, align 8
  %28 = load i32*, i32** %10, align 8
  %29 = load i32, i32* %28, align 4
  %30 = load i32, i32* @PAGE_CACHE_SIZE, align 4
  %31 = sub nsw i32 %30, 1
  %32 = and i32 %29, %31
  store i32 %32, i32* %14, align 4
  store i32 0, i32* %15, align 4
  br label %33

33:                                               ; preds = %83, %5
  %34 = load i32, i32* %11, align 4
  %35 = load i32, i32* %15, align 4
  %36 = sub i32 %34, %35
  store i32 %36, i32* %16, align 4
  %37 = load i32, i32* %14, align 4
  %38 = load i32, i32* %11, align 4
  %39 = add i32 %37, %38
  %40 = load i32, i32* @PAGE_CACHE_SIZE, align 4
  %41 = icmp ugt i32 %39, %40
  br i1 %41, label %42, label %46

42:                                               ; preds = %33
  %43 = load i32, i32* @PAGE_CACHE_SIZE, align 4
  %44 = load i32, i32* %14, align 4
  %45 = sub i32 %43, %44
  store i32 %45, i32* %16, align 4
  br label %46

46:                                               ; preds = %42, %33
  %47 = load %struct.address_space*, %struct.address_space** %12, align 8
  %48 = load i64, i64* %13, align 8
  %49 = load i32, i32* @__gfs2_readpage, align 4
  %50 = call %struct.page* @read_cache_page(%struct.address_space* %47, i64 %48, i32 %49, i32* null)
  store %struct.page* %50, %struct.page** %17, align 8
  %51 = load %struct.page*, %struct.page** %17, align 8
  %52 = call i64 @IS_ERR(%struct.page* %51)
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %57

54:                                               ; preds = %46
  %55 = load %struct.page*, %struct.page** %17, align 8
  %56 = call i32 @PTR_ERR(%struct.page* %55)
  store i32 %56, i32* %6, align 4
  br label %93

57:                                               ; preds = %46
  %58 = load %struct.page*, %struct.page** %17, align 8
  %59 = load i32, i32* @KM_USER0, align 4
  %60 = call i8* @kmap_atomic(%struct.page* %58, i32 %59)
  store i8* %60, i8** %18, align 8
  %61 = load i8*, i8** %9, align 8
  %62 = load i32, i32* %15, align 4
  %63 = zext i32 %62 to i64
  %64 = getelementptr inbounds i8, i8* %61, i64 %63
  %65 = load i8*, i8** %18, align 8
  %66 = load i32, i32* %14, align 4
  %67 = zext i32 %66 to i64
  %68 = getelementptr i8, i8* %65, i64 %67
  %69 = load i32, i32* %16, align 4
  %70 = call i32 @memcpy(i8* %64, i8* %68, i32 %69)
  %71 = load i8*, i8** %18, align 8
  %72 = load i32, i32* @KM_USER0, align 4
  %73 = call i32 @kunmap_atomic(i8* %71, i32 %72)
  %74 = load %struct.page*, %struct.page** %17, align 8
  %75 = call i32 @mark_page_accessed(%struct.page* %74)
  %76 = load %struct.page*, %struct.page** %17, align 8
  %77 = call i32 @page_cache_release(%struct.page* %76)
  %78 = load i32, i32* %16, align 4
  %79 = load i32, i32* %15, align 4
  %80 = add i32 %79, %78
  store i32 %80, i32* %15, align 4
  %81 = load i64, i64* %13, align 8
  %82 = add i64 %81, 1
  store i64 %82, i64* %13, align 8
  store i32 0, i32* %14, align 4
  br label %83

83:                                               ; preds = %57
  %84 = load i32, i32* %15, align 4
  %85 = load i32, i32* %11, align 4
  %86 = icmp ult i32 %84, %85
  br i1 %86, label %33, label %87

87:                                               ; preds = %83
  %88 = load i32, i32* %11, align 4
  %89 = load i32*, i32** %10, align 8
  %90 = load i32, i32* %89, align 4
  %91 = add i32 %90, %88
  store i32 %91, i32* %89, align 4
  %92 = load i32, i32* %11, align 4
  store i32 %92, i32* %6, align 4
  br label %93

93:                                               ; preds = %87, %54
  %94 = load i32, i32* %6, align 4
  ret i32 %94
}

declare dso_local %struct.page* @read_cache_page(%struct.address_space*, i64, i32, i32*) #1

declare dso_local i64 @IS_ERR(%struct.page*) #1

declare dso_local i32 @PTR_ERR(%struct.page*) #1

declare dso_local i8* @kmap_atomic(%struct.page*, i32) #1

declare dso_local i32 @memcpy(i8*, i8*, i32) #1

declare dso_local i32 @kunmap_atomic(i8*, i32) #1

declare dso_local i32 @mark_page_accessed(%struct.page*) #1

declare dso_local i32 @page_cache_release(%struct.page*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

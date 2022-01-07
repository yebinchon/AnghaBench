; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/btrfs/extr_extent_io.c_end_bio_extent_writepage.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/btrfs/extr_extent_io.c_end_bio_extent_writepage.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bio = type { i32, %struct.bio_vec* }
%struct.bio_vec = type { i32, i32, %struct.page* }
%struct.page = type { i32, i64, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }
%struct.extent_io_tree = type { i32 }
%struct.TYPE_4__ = type { %struct.extent_io_tree }

@PAGE_CACHE_SHIFT = common dso_local global i32 0, align 4
@PAGE_CACHE_SIZE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bio*, i32)* @end_bio_extent_writepage to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @end_bio_extent_writepage(%struct.bio* %0, i32 %1) #0 {
  %3 = alloca %struct.bio*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.bio_vec*, align 8
  %6 = alloca %struct.extent_io_tree*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.page*, align 8
  store %struct.bio* %0, %struct.bio** %3, align 8
  store i32 %1, i32* %4, align 4
  %11 = load %struct.bio*, %struct.bio** %3, align 8
  %12 = getelementptr inbounds %struct.bio, %struct.bio* %11, i32 0, i32 1
  %13 = load %struct.bio_vec*, %struct.bio_vec** %12, align 8
  %14 = load %struct.bio*, %struct.bio** %3, align 8
  %15 = getelementptr inbounds %struct.bio, %struct.bio* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds %struct.bio_vec, %struct.bio_vec* %13, i64 %17
  %19 = getelementptr inbounds %struct.bio_vec, %struct.bio_vec* %18, i64 -1
  store %struct.bio_vec* %19, %struct.bio_vec** %5, align 8
  br label %20

20:                                               ; preds = %92, %2
  %21 = load %struct.bio_vec*, %struct.bio_vec** %5, align 8
  %22 = getelementptr inbounds %struct.bio_vec, %struct.bio_vec* %21, i32 0, i32 2
  %23 = load %struct.page*, %struct.page** %22, align 8
  store %struct.page* %23, %struct.page** %10, align 8
  %24 = load %struct.page*, %struct.page** %10, align 8
  %25 = getelementptr inbounds %struct.page, %struct.page* %24, i32 0, i32 2
  %26 = load %struct.TYPE_3__*, %struct.TYPE_3__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = call %struct.TYPE_4__* @BTRFS_I(i32 %28)
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i32 0, i32 0
  store %struct.extent_io_tree* %30, %struct.extent_io_tree** %6, align 8
  %31 = load %struct.page*, %struct.page** %10, align 8
  %32 = getelementptr inbounds %struct.page, %struct.page* %31, i32 0, i32 1
  %33 = load i64, i64* %32, align 8
  %34 = trunc i64 %33 to i32
  %35 = load i32, i32* @PAGE_CACHE_SHIFT, align 4
  %36 = shl i32 %34, %35
  %37 = load %struct.bio_vec*, %struct.bio_vec** %5, align 8
  %38 = getelementptr inbounds %struct.bio_vec, %struct.bio_vec* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = add nsw i32 %36, %39
  store i32 %40, i32* %7, align 4
  %41 = load i32, i32* %7, align 4
  %42 = load %struct.bio_vec*, %struct.bio_vec** %5, align 8
  %43 = getelementptr inbounds %struct.bio_vec, %struct.bio_vec* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 4
  %45 = add nsw i32 %41, %44
  %46 = sub nsw i32 %45, 1
  store i32 %46, i32* %8, align 4
  %47 = load %struct.bio_vec*, %struct.bio_vec** %5, align 8
  %48 = getelementptr inbounds %struct.bio_vec, %struct.bio_vec* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  %50 = icmp eq i32 %49, 0
  br i1 %50, label %51, label %59

51:                                               ; preds = %20
  %52 = load %struct.bio_vec*, %struct.bio_vec** %5, align 8
  %53 = getelementptr inbounds %struct.bio_vec, %struct.bio_vec* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 4
  %55 = sext i32 %54 to i64
  %56 = load i64, i64* @PAGE_CACHE_SIZE, align 8
  %57 = icmp eq i64 %55, %56
  br i1 %57, label %58, label %59

58:                                               ; preds = %51
  store i32 1, i32* %9, align 4
  br label %60

59:                                               ; preds = %51, %20
  store i32 0, i32* %9, align 4
  br label %60

60:                                               ; preds = %59, %58
  %61 = load %struct.bio_vec*, %struct.bio_vec** %5, align 8
  %62 = getelementptr inbounds %struct.bio_vec, %struct.bio_vec* %61, i32 -1
  store %struct.bio_vec* %62, %struct.bio_vec** %5, align 8
  %63 = load %struct.bio*, %struct.bio** %3, align 8
  %64 = getelementptr inbounds %struct.bio, %struct.bio* %63, i32 0, i32 1
  %65 = load %struct.bio_vec*, %struct.bio_vec** %64, align 8
  %66 = icmp uge %struct.bio_vec* %62, %65
  br i1 %66, label %67, label %73

67:                                               ; preds = %60
  %68 = load %struct.bio_vec*, %struct.bio_vec** %5, align 8
  %69 = getelementptr inbounds %struct.bio_vec, %struct.bio_vec* %68, i32 0, i32 2
  %70 = load %struct.page*, %struct.page** %69, align 8
  %71 = getelementptr inbounds %struct.page, %struct.page* %70, i32 0, i32 0
  %72 = call i32 @prefetchw(i32* %71)
  br label %73

73:                                               ; preds = %67, %60
  %74 = load %struct.page*, %struct.page** %10, align 8
  %75 = load i32, i32* %4, align 4
  %76 = load i32, i32* %7, align 4
  %77 = load i32, i32* %8, align 4
  %78 = call i64 @end_extent_writepage(%struct.page* %74, i32 %75, i32 %76, i32 %77)
  %79 = icmp ne i64 %78, 0
  br i1 %79, label %80, label %81

80:                                               ; preds = %73
  br label %92

81:                                               ; preds = %73
  %82 = load i32, i32* %9, align 4
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %84, label %87

84:                                               ; preds = %81
  %85 = load %struct.page*, %struct.page** %10, align 8
  %86 = call i32 @end_page_writeback(%struct.page* %85)
  br label %91

87:                                               ; preds = %81
  %88 = load %struct.extent_io_tree*, %struct.extent_io_tree** %6, align 8
  %89 = load %struct.page*, %struct.page** %10, align 8
  %90 = call i32 @check_page_writeback(%struct.extent_io_tree* %88, %struct.page* %89)
  br label %91

91:                                               ; preds = %87, %84
  br label %92

92:                                               ; preds = %91, %80
  %93 = load %struct.bio_vec*, %struct.bio_vec** %5, align 8
  %94 = load %struct.bio*, %struct.bio** %3, align 8
  %95 = getelementptr inbounds %struct.bio, %struct.bio* %94, i32 0, i32 1
  %96 = load %struct.bio_vec*, %struct.bio_vec** %95, align 8
  %97 = icmp uge %struct.bio_vec* %93, %96
  br i1 %97, label %20, label %98

98:                                               ; preds = %92
  %99 = load %struct.bio*, %struct.bio** %3, align 8
  %100 = call i32 @bio_put(%struct.bio* %99)
  ret void
}

declare dso_local %struct.TYPE_4__* @BTRFS_I(i32) #1

declare dso_local i32 @prefetchw(i32*) #1

declare dso_local i64 @end_extent_writepage(%struct.page*, i32, i32, i32) #1

declare dso_local i32 @end_page_writeback(%struct.page*) #1

declare dso_local i32 @check_page_writeback(%struct.extent_io_tree*, %struct.page*) #1

declare dso_local i32 @bio_put(%struct.bio*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

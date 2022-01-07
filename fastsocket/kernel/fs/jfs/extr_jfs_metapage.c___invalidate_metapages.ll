; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/jfs/extr_jfs_metapage.c___invalidate_metapages.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/jfs/extr_jfs_metapage.c___invalidate_metapages.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32, i32 }
%struct.address_space = type { i32 }
%struct.metapage = type { i32, i64, i32 }
%struct.page = type { i32 }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { %struct.address_space* }

@PAGE_CACHE_SHIFT = common dso_local global i32 0, align 4
@PAGE_CACHE_SIZE = common dso_local global i32 0, align 4
@META_dirty = common dso_local global i32 0, align 4
@META_discard = common dso_local global i32 0, align 4
@PSIZE = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @__invalidate_metapages(%struct.inode* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.inode*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.address_space*, align 8
  %11 = alloca %struct.metapage*, align 8
  %12 = alloca %struct.page*, align 8
  %13 = alloca i32, align 4
  store %struct.inode* %0, %struct.inode** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %14 = load i32, i32* @PAGE_CACHE_SHIFT, align 4
  %15 = load %struct.inode*, %struct.inode** %4, align 8
  %16 = getelementptr inbounds %struct.inode, %struct.inode* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = sub nsw i32 %14, %17
  store i32 %18, i32* %8, align 4
  %19 = load i32, i32* %8, align 4
  %20 = shl i32 1, %19
  store i32 %20, i32* %9, align 4
  %21 = load %struct.inode*, %struct.inode** %4, align 8
  %22 = getelementptr inbounds %struct.inode, %struct.inode* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = call %struct.TYPE_4__* @JFS_SBI(i32 %23)
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i32 0, i32 0
  %26 = load %struct.TYPE_3__*, %struct.TYPE_3__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %26, i32 0, i32 0
  %28 = load %struct.address_space*, %struct.address_space** %27, align 8
  store %struct.address_space* %28, %struct.address_space** %10, align 8
  %29 = load i32, i32* %5, align 4
  %30 = load i32, i32* %9, align 4
  %31 = sub nsw i32 %30, 1
  %32 = xor i32 %31, -1
  %33 = and i32 %29, %32
  store i32 %33, i32* %7, align 4
  br label %34

34:                                               ; preds = %105, %3
  %35 = load i32, i32* %7, align 4
  %36 = load i32, i32* %5, align 4
  %37 = load i32, i32* %6, align 4
  %38 = add nsw i32 %36, %37
  %39 = icmp slt i32 %35, %38
  br i1 %39, label %40, label %109

40:                                               ; preds = %34
  %41 = load %struct.address_space*, %struct.address_space** %10, align 8
  %42 = load i32, i32* %7, align 4
  %43 = load i32, i32* %8, align 4
  %44 = ashr i32 %42, %43
  %45 = call %struct.page* @find_lock_page(%struct.address_space* %41, i32 %44)
  store %struct.page* %45, %struct.page** %12, align 8
  %46 = load %struct.page*, %struct.page** %12, align 8
  %47 = icmp ne %struct.page* %46, null
  br i1 %47, label %49, label %48

48:                                               ; preds = %40
  br label %105

49:                                               ; preds = %40
  store i32 0, i32* %13, align 4
  br label %50

50:                                               ; preds = %94, %49
  %51 = load i32, i32* %13, align 4
  %52 = load i32, i32* @PAGE_CACHE_SIZE, align 4
  %53 = icmp ult i32 %51, %52
  br i1 %53, label %54, label %100

54:                                               ; preds = %50
  %55 = load %struct.page*, %struct.page** %12, align 8
  %56 = load i32, i32* %13, align 4
  %57 = call %struct.metapage* @page_to_mp(%struct.page* %55, i32 %56)
  store %struct.metapage* %57, %struct.metapage** %11, align 8
  %58 = load %struct.metapage*, %struct.metapage** %11, align 8
  %59 = icmp ne %struct.metapage* %58, null
  br i1 %59, label %61, label %60

60:                                               ; preds = %54
  br label %94

61:                                               ; preds = %54
  %62 = load %struct.metapage*, %struct.metapage** %11, align 8
  %63 = getelementptr inbounds %struct.metapage, %struct.metapage* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 8
  %65 = load i32, i32* %5, align 4
  %66 = icmp slt i32 %64, %65
  br i1 %66, label %67, label %68

67:                                               ; preds = %61
  br label %94

68:                                               ; preds = %61
  %69 = load %struct.metapage*, %struct.metapage** %11, align 8
  %70 = getelementptr inbounds %struct.metapage, %struct.metapage* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 8
  %72 = load i32, i32* %5, align 4
  %73 = load i32, i32* %6, align 4
  %74 = add nsw i32 %72, %73
  %75 = icmp sge i32 %71, %74
  br i1 %75, label %76, label %77

76:                                               ; preds = %68
  br label %100

77:                                               ; preds = %68
  %78 = load i32, i32* @META_dirty, align 4
  %79 = load %struct.metapage*, %struct.metapage** %11, align 8
  %80 = getelementptr inbounds %struct.metapage, %struct.metapage* %79, i32 0, i32 2
  %81 = call i32 @clear_bit(i32 %78, i32* %80)
  %82 = load i32, i32* @META_discard, align 4
  %83 = load %struct.metapage*, %struct.metapage** %11, align 8
  %84 = getelementptr inbounds %struct.metapage, %struct.metapage* %83, i32 0, i32 2
  %85 = call i32 @set_bit(i32 %82, i32* %84)
  %86 = load %struct.metapage*, %struct.metapage** %11, align 8
  %87 = getelementptr inbounds %struct.metapage, %struct.metapage* %86, i32 0, i32 1
  %88 = load i64, i64* %87, align 8
  %89 = icmp ne i64 %88, 0
  br i1 %89, label %90, label %93

90:                                               ; preds = %77
  %91 = load %struct.metapage*, %struct.metapage** %11, align 8
  %92 = call i32 @remove_from_logsync(%struct.metapage* %91)
  br label %93

93:                                               ; preds = %90, %77
  br label %94

94:                                               ; preds = %93, %67, %60
  %95 = load i64, i64* @PSIZE, align 8
  %96 = load i32, i32* %13, align 4
  %97 = zext i32 %96 to i64
  %98 = add nsw i64 %97, %95
  %99 = trunc i64 %98 to i32
  store i32 %99, i32* %13, align 4
  br label %50

100:                                              ; preds = %76, %50
  %101 = load %struct.page*, %struct.page** %12, align 8
  %102 = call i32 @unlock_page(%struct.page* %101)
  %103 = load %struct.page*, %struct.page** %12, align 8
  %104 = call i32 @page_cache_release(%struct.page* %103)
  br label %105

105:                                              ; preds = %100, %48
  %106 = load i32, i32* %9, align 4
  %107 = load i32, i32* %7, align 4
  %108 = add nsw i32 %107, %106
  store i32 %108, i32* %7, align 4
  br label %34

109:                                              ; preds = %34
  ret void
}

declare dso_local %struct.TYPE_4__* @JFS_SBI(i32) #1

declare dso_local %struct.page* @find_lock_page(%struct.address_space*, i32) #1

declare dso_local %struct.metapage* @page_to_mp(%struct.page*, i32) #1

declare dso_local i32 @clear_bit(i32, i32*) #1

declare dso_local i32 @set_bit(i32, i32*) #1

declare dso_local i32 @remove_from_logsync(%struct.metapage*) #1

declare dso_local i32 @unlock_page(%struct.page*) #1

declare dso_local i32 @page_cache_release(%struct.page*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/ramfs/extr_file-nommu.c_ramfs_nommu_get_unmapped_area.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/ramfs/extr_file-nommu.c_ramfs_nommu_get_unmapped_area.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { %struct.inode* }
%struct.inode = type { i32 }
%struct.page = type { i32 }

@MAP_SHARED = common dso_local global i64 0, align 8
@PAGE_SIZE = common dso_local global i64 0, align 8
@PAGE_SHIFT = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i64 0, align 8
@ENOMEM = common dso_local global i64 0, align 8
@GFP_KERNEL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @ramfs_nommu_get_unmapped_area(%struct.file* %0, i64 %1, i64 %2, i64 %3, i64 %4) #0 {
  %6 = alloca i64, align 8
  %7 = alloca %struct.file*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca %struct.inode*, align 8
  %18 = alloca %struct.page**, align 8
  %19 = alloca %struct.page**, align 8
  %20 = alloca %struct.page*, align 8
  %21 = alloca i64, align 8
  store %struct.file* %0, %struct.file** %7, align 8
  store i64 %1, i64* %8, align 8
  store i64 %2, i64* %9, align 8
  store i64 %3, i64* %10, align 8
  store i64 %4, i64* %11, align 8
  %22 = load %struct.file*, %struct.file** %7, align 8
  %23 = getelementptr inbounds %struct.file, %struct.file* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i32 0, i32 0
  %25 = load %struct.TYPE_3__*, %struct.TYPE_3__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %25, i32 0, i32 0
  %27 = load %struct.inode*, %struct.inode** %26, align 8
  store %struct.inode* %27, %struct.inode** %17, align 8
  store %struct.page** null, %struct.page*** %18, align 8
  %28 = load i64, i64* %11, align 8
  %29 = load i64, i64* @MAP_SHARED, align 8
  %30 = and i64 %28, %29
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %34, label %32

32:                                               ; preds = %5
  %33 = load i64, i64* %8, align 8
  store i64 %33, i64* %6, align 8
  br label %133

34:                                               ; preds = %5
  %35 = load i64, i64* %9, align 8
  %36 = load i64, i64* @PAGE_SIZE, align 8
  %37 = add i64 %35, %36
  %38 = sub i64 %37, 1
  %39 = load i64, i64* @PAGE_SHIFT, align 8
  %40 = lshr i64 %38, %39
  store i64 %40, i64* %13, align 8
  %41 = load %struct.inode*, %struct.inode** %17, align 8
  %42 = call i64 @i_size_read(%struct.inode* %41)
  store i64 %42, i64* %21, align 8
  %43 = load i64, i64* @EINVAL, align 8
  %44 = sub i64 0, %43
  store i64 %44, i64* %16, align 8
  %45 = load i64, i64* %21, align 8
  %46 = load i64, i64* @PAGE_SIZE, align 8
  %47 = add i64 %45, %46
  %48 = sub i64 %47, 1
  %49 = load i64, i64* @PAGE_SHIFT, align 8
  %50 = lshr i64 %48, %49
  store i64 %50, i64* %12, align 8
  %51 = load i64, i64* %10, align 8
  %52 = load i64, i64* %12, align 8
  %53 = icmp uge i64 %51, %52
  br i1 %53, label %54, label %55

54:                                               ; preds = %34
  br label %131

55:                                               ; preds = %34
  %56 = load i64, i64* %12, align 8
  %57 = load i64, i64* %10, align 8
  %58 = sub i64 %56, %57
  %59 = load i64, i64* %13, align 8
  %60 = icmp ult i64 %58, %59
  br i1 %60, label %61, label %62

61:                                               ; preds = %55
  br label %131

62:                                               ; preds = %55
  %63 = load i64, i64* @ENOMEM, align 8
  %64 = sub i64 0, %63
  store i64 %64, i64* %16, align 8
  %65 = load i64, i64* %13, align 8
  %66 = mul i64 %65, 8
  %67 = load i32, i32* @GFP_KERNEL, align 4
  %68 = call %struct.page** @kzalloc(i64 %66, i32 %67)
  store %struct.page** %68, %struct.page*** %18, align 8
  %69 = load %struct.page**, %struct.page*** %18, align 8
  %70 = icmp ne %struct.page** %69, null
  br i1 %70, label %72, label %71

71:                                               ; preds = %62
  br label %128

72:                                               ; preds = %62
  %73 = load %struct.inode*, %struct.inode** %17, align 8
  %74 = getelementptr inbounds %struct.inode, %struct.inode* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 4
  %76 = load i64, i64* %10, align 8
  %77 = load i64, i64* %13, align 8
  %78 = load %struct.page**, %struct.page*** %18, align 8
  %79 = call i64 @find_get_pages(i32 %75, i64 %76, i64 %77, %struct.page** %78)
  store i64 %79, i64* %14, align 8
  %80 = load i64, i64* %14, align 8
  %81 = load i64, i64* %13, align 8
  %82 = icmp ne i64 %80, %81
  br i1 %82, label %83, label %84

83:                                               ; preds = %72
  br label %112

84:                                               ; preds = %72
  %85 = load %struct.page**, %struct.page*** %18, align 8
  store %struct.page** %85, %struct.page*** %19, align 8
  %86 = load %struct.page**, %struct.page*** %19, align 8
  %87 = getelementptr inbounds %struct.page*, %struct.page** %86, i32 1
  store %struct.page** %87, %struct.page*** %19, align 8
  %88 = load %struct.page*, %struct.page** %86, align 8
  store %struct.page* %88, %struct.page** %20, align 8
  %89 = load %struct.page*, %struct.page** %20, align 8
  %90 = getelementptr inbounds %struct.page, %struct.page* %89, i32 1
  store %struct.page* %90, %struct.page** %20, align 8
  %91 = load i64, i64* %13, align 8
  store i64 %91, i64* %15, align 8
  br label %92

92:                                               ; preds = %104, %84
  %93 = load i64, i64* %15, align 8
  %94 = icmp ugt i64 %93, 1
  br i1 %94, label %95, label %107

95:                                               ; preds = %92
  %96 = load %struct.page**, %struct.page*** %19, align 8
  %97 = getelementptr inbounds %struct.page*, %struct.page** %96, i32 1
  store %struct.page** %97, %struct.page*** %19, align 8
  %98 = load %struct.page*, %struct.page** %96, align 8
  %99 = load %struct.page*, %struct.page** %20, align 8
  %100 = getelementptr inbounds %struct.page, %struct.page* %99, i32 1
  store %struct.page* %100, %struct.page** %20, align 8
  %101 = icmp ne %struct.page* %98, %99
  br i1 %101, label %102, label %103

102:                                              ; preds = %95
  br label %112

103:                                              ; preds = %95
  br label %104

104:                                              ; preds = %103
  %105 = load i64, i64* %15, align 8
  %106 = add i64 %105, -1
  store i64 %106, i64* %15, align 8
  br label %92

107:                                              ; preds = %92
  %108 = load %struct.page**, %struct.page*** %18, align 8
  %109 = getelementptr inbounds %struct.page*, %struct.page** %108, i64 0
  %110 = load %struct.page*, %struct.page** %109, align 8
  %111 = call i64 @page_address(%struct.page* %110)
  store i64 %111, i64* %16, align 8
  br label %112

112:                                              ; preds = %107, %102, %83
  %113 = load %struct.page**, %struct.page*** %18, align 8
  store %struct.page** %113, %struct.page*** %19, align 8
  %114 = load i64, i64* %14, align 8
  store i64 %114, i64* %15, align 8
  br label %115

115:                                              ; preds = %124, %112
  %116 = load i64, i64* %15, align 8
  %117 = icmp ugt i64 %116, 0
  br i1 %117, label %118, label %127

118:                                              ; preds = %115
  %119 = load %struct.page**, %struct.page*** %19, align 8
  %120 = getelementptr inbounds %struct.page*, %struct.page** %119, i32 1
  store %struct.page** %120, %struct.page*** %19, align 8
  %121 = load %struct.page*, %struct.page** %119, align 8
  %122 = ptrtoint %struct.page* %121 to i32
  %123 = call i32 @put_page(i32 %122)
  br label %124

124:                                              ; preds = %118
  %125 = load i64, i64* %15, align 8
  %126 = add i64 %125, -1
  store i64 %126, i64* %15, align 8
  br label %115

127:                                              ; preds = %115
  br label %128

128:                                              ; preds = %127, %71
  %129 = load %struct.page**, %struct.page*** %18, align 8
  %130 = call i32 @kfree(%struct.page** %129)
  br label %131

131:                                              ; preds = %128, %61, %54
  %132 = load i64, i64* %16, align 8
  store i64 %132, i64* %6, align 8
  br label %133

133:                                              ; preds = %131, %32
  %134 = load i64, i64* %6, align 8
  ret i64 %134
}

declare dso_local i64 @i_size_read(%struct.inode*) #1

declare dso_local %struct.page** @kzalloc(i64, i32) #1

declare dso_local i64 @find_get_pages(i32, i64, i64, %struct.page**) #1

declare dso_local i64 @page_address(%struct.page*) #1

declare dso_local i32 @put_page(i32) #1

declare dso_local i32 @kfree(%struct.page**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

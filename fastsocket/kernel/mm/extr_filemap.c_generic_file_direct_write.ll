; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/mm/extr_filemap.c_generic_file_direct_write.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/mm/extr_filemap.c_generic_file_direct_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kiocb = type { %struct.file* }
%struct.file = type { %struct.address_space* }
%struct.address_space = type { i64, %struct.TYPE_2__*, %struct.inode* }
%struct.TYPE_2__ = type { i32 (i32, %struct.kiocb*, %struct.iovec*, i64, i64)* }
%struct.inode = type { i32 }
%struct.iovec = type { i32 }

@PAGE_CACHE_SHIFT = common dso_local global i64 0, align 8
@EBUSY = common dso_local global i32 0, align 4
@WRITE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @generic_file_direct_write(%struct.kiocb* %0, %struct.iovec* %1, i64* %2, i64 %3, i64* %4, i64 %5, i64 %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca %struct.kiocb*, align 8
  %10 = alloca %struct.iovec*, align 8
  %11 = alloca i64*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64*, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca %struct.file*, align 8
  %17 = alloca %struct.address_space*, align 8
  %18 = alloca %struct.inode*, align 8
  %19 = alloca i32, align 4
  %20 = alloca i64, align 8
  %21 = alloca i64, align 8
  %22 = alloca i64, align 8
  store %struct.kiocb* %0, %struct.kiocb** %9, align 8
  store %struct.iovec* %1, %struct.iovec** %10, align 8
  store i64* %2, i64** %11, align 8
  store i64 %3, i64* %12, align 8
  store i64* %4, i64** %13, align 8
  store i64 %5, i64* %14, align 8
  store i64 %6, i64* %15, align 8
  %23 = load %struct.kiocb*, %struct.kiocb** %9, align 8
  %24 = getelementptr inbounds %struct.kiocb, %struct.kiocb* %23, i32 0, i32 0
  %25 = load %struct.file*, %struct.file** %24, align 8
  store %struct.file* %25, %struct.file** %16, align 8
  %26 = load %struct.file*, %struct.file** %16, align 8
  %27 = getelementptr inbounds %struct.file, %struct.file* %26, i32 0, i32 0
  %28 = load %struct.address_space*, %struct.address_space** %27, align 8
  store %struct.address_space* %28, %struct.address_space** %17, align 8
  %29 = load %struct.address_space*, %struct.address_space** %17, align 8
  %30 = getelementptr inbounds %struct.address_space, %struct.address_space* %29, i32 0, i32 2
  %31 = load %struct.inode*, %struct.inode** %30, align 8
  store %struct.inode* %31, %struct.inode** %18, align 8
  %32 = load i64, i64* %14, align 8
  %33 = load i64, i64* %15, align 8
  %34 = icmp ne i64 %32, %33
  br i1 %34, label %35, label %42

35:                                               ; preds = %7
  %36 = load %struct.iovec*, %struct.iovec** %10, align 8
  %37 = load i64*, i64** %11, align 8
  %38 = load i64, i64* %37, align 8
  %39 = load i64, i64* %14, align 8
  %40 = call i64 @iov_shorten(%struct.iovec* %36, i64 %38, i64 %39)
  %41 = load i64*, i64** %11, align 8
  store i64 %40, i64* %41, align 8
  br label %42

42:                                               ; preds = %35, %7
  %43 = load %struct.iovec*, %struct.iovec** %10, align 8
  %44 = load i64*, i64** %11, align 8
  %45 = load i64, i64* %44, align 8
  %46 = call i64 @iov_length(%struct.iovec* %43, i64 %45)
  store i64 %46, i64* %20, align 8
  %47 = load i64, i64* %12, align 8
  %48 = load i64, i64* %20, align 8
  %49 = add i64 %47, %48
  %50 = sub i64 %49, 1
  %51 = load i64, i64* @PAGE_CACHE_SHIFT, align 8
  %52 = lshr i64 %50, %51
  store i64 %52, i64* %21, align 8
  %53 = load %struct.address_space*, %struct.address_space** %17, align 8
  %54 = load i64, i64* %12, align 8
  %55 = load i64, i64* %12, align 8
  %56 = load i64, i64* %20, align 8
  %57 = add i64 %55, %56
  %58 = sub i64 %57, 1
  %59 = call i32 @filemap_write_and_wait_range(%struct.address_space* %53, i64 %54, i64 %58)
  store i32 %59, i32* %19, align 4
  %60 = load i32, i32* %19, align 4
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %63

62:                                               ; preds = %42
  br label %137

63:                                               ; preds = %42
  %64 = load %struct.address_space*, %struct.address_space** %17, align 8
  %65 = getelementptr inbounds %struct.address_space, %struct.address_space* %64, i32 0, i32 0
  %66 = load i64, i64* %65, align 8
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %68, label %85

68:                                               ; preds = %63
  %69 = load %struct.address_space*, %struct.address_space** %17, align 8
  %70 = load i64, i64* %12, align 8
  %71 = load i64, i64* @PAGE_CACHE_SHIFT, align 8
  %72 = lshr i64 %70, %71
  %73 = load i64, i64* %21, align 8
  %74 = call i32 @invalidate_inode_pages2_range(%struct.address_space* %69, i64 %72, i64 %73)
  store i32 %74, i32* %19, align 4
  %75 = load i32, i32* %19, align 4
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %77, label %84

77:                                               ; preds = %68
  %78 = load i32, i32* %19, align 4
  %79 = load i32, i32* @EBUSY, align 4
  %80 = sub nsw i32 0, %79
  %81 = icmp eq i32 %78, %80
  br i1 %81, label %82, label %83

82:                                               ; preds = %77
  store i32 0, i32* %8, align 4
  br label %139

83:                                               ; preds = %77
  br label %137

84:                                               ; preds = %68
  br label %85

85:                                               ; preds = %84, %63
  %86 = load %struct.address_space*, %struct.address_space** %17, align 8
  %87 = getelementptr inbounds %struct.address_space, %struct.address_space* %86, i32 0, i32 1
  %88 = load %struct.TYPE_2__*, %struct.TYPE_2__** %87, align 8
  %89 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %88, i32 0, i32 0
  %90 = load i32 (i32, %struct.kiocb*, %struct.iovec*, i64, i64)*, i32 (i32, %struct.kiocb*, %struct.iovec*, i64, i64)** %89, align 8
  %91 = load i32, i32* @WRITE, align 4
  %92 = load %struct.kiocb*, %struct.kiocb** %9, align 8
  %93 = load %struct.iovec*, %struct.iovec** %10, align 8
  %94 = load i64, i64* %12, align 8
  %95 = load i64*, i64** %11, align 8
  %96 = load i64, i64* %95, align 8
  %97 = call i32 %90(i32 %91, %struct.kiocb* %92, %struct.iovec* %93, i64 %94, i64 %96)
  store i32 %97, i32* %19, align 4
  %98 = load %struct.address_space*, %struct.address_space** %17, align 8
  %99 = getelementptr inbounds %struct.address_space, %struct.address_space* %98, i32 0, i32 0
  %100 = load i64, i64* %99, align 8
  %101 = icmp ne i64 %100, 0
  br i1 %101, label %102, label %109

102:                                              ; preds = %85
  %103 = load %struct.address_space*, %struct.address_space** %17, align 8
  %104 = load i64, i64* %12, align 8
  %105 = load i64, i64* @PAGE_CACHE_SHIFT, align 8
  %106 = lshr i64 %104, %105
  %107 = load i64, i64* %21, align 8
  %108 = call i32 @invalidate_inode_pages2_range(%struct.address_space* %103, i64 %106, i64 %107)
  br label %109

109:                                              ; preds = %102, %85
  %110 = load i32, i32* %19, align 4
  %111 = icmp sgt i32 %110, 0
  br i1 %111, label %112, label %136

112:                                              ; preds = %109
  %113 = load i64, i64* %12, align 8
  %114 = load i32, i32* %19, align 4
  %115 = sext i32 %114 to i64
  %116 = add i64 %113, %115
  store i64 %116, i64* %22, align 8
  %117 = load i64, i64* %22, align 8
  %118 = load %struct.inode*, %struct.inode** %18, align 8
  %119 = call i64 @i_size_read(%struct.inode* %118)
  %120 = icmp ugt i64 %117, %119
  br i1 %120, label %121, label %133

121:                                              ; preds = %112
  %122 = load %struct.inode*, %struct.inode** %18, align 8
  %123 = getelementptr inbounds %struct.inode, %struct.inode* %122, i32 0, i32 0
  %124 = load i32, i32* %123, align 4
  %125 = call i32 @S_ISBLK(i32 %124)
  %126 = icmp ne i32 %125, 0
  br i1 %126, label %133, label %127

127:                                              ; preds = %121
  %128 = load %struct.inode*, %struct.inode** %18, align 8
  %129 = load i64, i64* %22, align 8
  %130 = call i32 @i_size_write(%struct.inode* %128, i64 %129)
  %131 = load %struct.inode*, %struct.inode** %18, align 8
  %132 = call i32 @mark_inode_dirty(%struct.inode* %131)
  br label %133

133:                                              ; preds = %127, %121, %112
  %134 = load i64, i64* %22, align 8
  %135 = load i64*, i64** %13, align 8
  store i64 %134, i64* %135, align 8
  br label %136

136:                                              ; preds = %133, %109
  br label %137

137:                                              ; preds = %136, %83, %62
  %138 = load i32, i32* %19, align 4
  store i32 %138, i32* %8, align 4
  br label %139

139:                                              ; preds = %137, %82
  %140 = load i32, i32* %8, align 4
  ret i32 %140
}

declare dso_local i64 @iov_shorten(%struct.iovec*, i64, i64) #1

declare dso_local i64 @iov_length(%struct.iovec*, i64) #1

declare dso_local i32 @filemap_write_and_wait_range(%struct.address_space*, i64, i64) #1

declare dso_local i32 @invalidate_inode_pages2_range(%struct.address_space*, i64, i64) #1

declare dso_local i64 @i_size_read(%struct.inode*) #1

declare dso_local i32 @S_ISBLK(i32) #1

declare dso_local i32 @i_size_write(%struct.inode*, i64) #1

declare dso_local i32 @mark_inode_dirty(%struct.inode*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

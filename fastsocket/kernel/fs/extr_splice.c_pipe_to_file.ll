; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/extr_splice.c_pipe_to_file.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/extr_splice.c_pipe_to_file.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pipe_inode_info = type { i32 }
%struct.pipe_buffer = type { i32, %struct.TYPE_4__*, %struct.page* }
%struct.TYPE_4__ = type { i32 (%struct.pipe_inode_info*, %struct.pipe_buffer*)*, i8* (%struct.pipe_inode_info*, %struct.pipe_buffer*, i32)*, i32 (%struct.pipe_inode_info*, %struct.pipe_buffer*, i8*)* }
%struct.page = type { i32 }
%struct.splice_desc = type { i32, i32, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { %struct.file* }
%struct.file = type { %struct.address_space* }
%struct.address_space = type { i32 }

@PAGE_CACHE_MASK = common dso_local global i32 0, align 4
@PAGE_CACHE_SIZE = common dso_local global i32 0, align 4
@AOP_FLAG_UNINTERRUPTIBLE = common dso_local global i32 0, align 4
@KM_USER1 = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @pipe_to_file(%struct.pipe_inode_info* %0, %struct.pipe_buffer* %1, %struct.splice_desc* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.pipe_inode_info*, align 8
  %6 = alloca %struct.pipe_buffer*, align 8
  %7 = alloca %struct.splice_desc*, align 8
  %8 = alloca %struct.file*, align 8
  %9 = alloca %struct.address_space*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.page*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i8*, align 8
  %16 = alloca i8*, align 8
  store %struct.pipe_inode_info* %0, %struct.pipe_inode_info** %5, align 8
  store %struct.pipe_buffer* %1, %struct.pipe_buffer** %6, align 8
  store %struct.splice_desc* %2, %struct.splice_desc** %7, align 8
  %17 = load %struct.splice_desc*, %struct.splice_desc** %7, align 8
  %18 = getelementptr inbounds %struct.splice_desc, %struct.splice_desc* %17, i32 0, i32 2
  %19 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %18, i32 0, i32 0
  %20 = load %struct.file*, %struct.file** %19, align 8
  store %struct.file* %20, %struct.file** %8, align 8
  %21 = load %struct.file*, %struct.file** %8, align 8
  %22 = getelementptr inbounds %struct.file, %struct.file* %21, i32 0, i32 0
  %23 = load %struct.address_space*, %struct.address_space** %22, align 8
  store %struct.address_space* %23, %struct.address_space** %9, align 8
  %24 = load %struct.pipe_buffer*, %struct.pipe_buffer** %6, align 8
  %25 = getelementptr inbounds %struct.pipe_buffer, %struct.pipe_buffer* %24, i32 0, i32 1
  %26 = load %struct.TYPE_4__*, %struct.TYPE_4__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i32 0, i32 0
  %28 = load i32 (%struct.pipe_inode_info*, %struct.pipe_buffer*)*, i32 (%struct.pipe_inode_info*, %struct.pipe_buffer*)** %27, align 8
  %29 = load %struct.pipe_inode_info*, %struct.pipe_inode_info** %5, align 8
  %30 = load %struct.pipe_buffer*, %struct.pipe_buffer** %6, align 8
  %31 = call i32 %28(%struct.pipe_inode_info* %29, %struct.pipe_buffer* %30)
  store i32 %31, i32* %14, align 4
  %32 = load i32, i32* %14, align 4
  %33 = call i64 @unlikely(i32 %32)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %37

35:                                               ; preds = %3
  %36 = load i32, i32* %14, align 4
  store i32 %36, i32* %4, align 4
  br label %126

37:                                               ; preds = %3
  %38 = load %struct.splice_desc*, %struct.splice_desc** %7, align 8
  %39 = getelementptr inbounds %struct.splice_desc, %struct.splice_desc* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = load i32, i32* @PAGE_CACHE_MASK, align 4
  %42 = xor i32 %41, -1
  %43 = and i32 %40, %42
  store i32 %43, i32* %10, align 4
  %44 = load %struct.splice_desc*, %struct.splice_desc** %7, align 8
  %45 = getelementptr inbounds %struct.splice_desc, %struct.splice_desc* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 4
  store i32 %46, i32* %11, align 4
  %47 = load i32, i32* %11, align 4
  %48 = load i32, i32* %10, align 4
  %49 = add i32 %47, %48
  %50 = load i32, i32* @PAGE_CACHE_SIZE, align 4
  %51 = icmp ugt i32 %49, %50
  br i1 %51, label %52, label %56

52:                                               ; preds = %37
  %53 = load i32, i32* @PAGE_CACHE_SIZE, align 4
  %54 = load i32, i32* %10, align 4
  %55 = sub i32 %53, %54
  store i32 %55, i32* %11, align 4
  br label %56

56:                                               ; preds = %52, %37
  %57 = load %struct.file*, %struct.file** %8, align 8
  %58 = load %struct.address_space*, %struct.address_space** %9, align 8
  %59 = load %struct.splice_desc*, %struct.splice_desc** %7, align 8
  %60 = getelementptr inbounds %struct.splice_desc, %struct.splice_desc* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 8
  %62 = load i32, i32* %11, align 4
  %63 = load i32, i32* @AOP_FLAG_UNINTERRUPTIBLE, align 4
  %64 = call i32 @pagecache_write_begin(%struct.file* %57, %struct.address_space* %58, i32 %61, i32 %62, i32 %63, %struct.page** %12, i8** %13)
  store i32 %64, i32* %14, align 4
  %65 = load i32, i32* %14, align 4
  %66 = call i64 @unlikely(i32 %65)
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %68, label %69

68:                                               ; preds = %56
  br label %124

69:                                               ; preds = %56
  %70 = load %struct.pipe_buffer*, %struct.pipe_buffer** %6, align 8
  %71 = getelementptr inbounds %struct.pipe_buffer, %struct.pipe_buffer* %70, i32 0, i32 2
  %72 = load %struct.page*, %struct.page** %71, align 8
  %73 = load %struct.page*, %struct.page** %12, align 8
  %74 = icmp ne %struct.page* %72, %73
  br i1 %74, label %75, label %113

75:                                               ; preds = %69
  %76 = load %struct.pipe_buffer*, %struct.pipe_buffer** %6, align 8
  %77 = getelementptr inbounds %struct.pipe_buffer, %struct.pipe_buffer* %76, i32 0, i32 1
  %78 = load %struct.TYPE_4__*, %struct.TYPE_4__** %77, align 8
  %79 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %78, i32 0, i32 1
  %80 = load i8* (%struct.pipe_inode_info*, %struct.pipe_buffer*, i32)*, i8* (%struct.pipe_inode_info*, %struct.pipe_buffer*, i32)** %79, align 8
  %81 = load %struct.pipe_inode_info*, %struct.pipe_inode_info** %5, align 8
  %82 = load %struct.pipe_buffer*, %struct.pipe_buffer** %6, align 8
  %83 = call i8* %80(%struct.pipe_inode_info* %81, %struct.pipe_buffer* %82, i32 1)
  store i8* %83, i8** %15, align 8
  %84 = load %struct.page*, %struct.page** %12, align 8
  %85 = load i32, i32* @KM_USER1, align 4
  %86 = call i8* @kmap_atomic(%struct.page* %84, i32 %85)
  store i8* %86, i8** %16, align 8
  %87 = load i8*, i8** %16, align 8
  %88 = load i32, i32* %10, align 4
  %89 = zext i32 %88 to i64
  %90 = getelementptr inbounds i8, i8* %87, i64 %89
  %91 = load i8*, i8** %15, align 8
  %92 = load %struct.pipe_buffer*, %struct.pipe_buffer** %6, align 8
  %93 = getelementptr inbounds %struct.pipe_buffer, %struct.pipe_buffer* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 8
  %95 = sext i32 %94 to i64
  %96 = getelementptr inbounds i8, i8* %91, i64 %95
  %97 = load i32, i32* %11, align 4
  %98 = call i32 @memcpy(i8* %90, i8* %96, i32 %97)
  %99 = load %struct.page*, %struct.page** %12, align 8
  %100 = call i32 @flush_dcache_page(%struct.page* %99)
  %101 = load i8*, i8** %16, align 8
  %102 = load i32, i32* @KM_USER1, align 4
  %103 = call i32 @kunmap_atomic(i8* %101, i32 %102)
  %104 = load %struct.pipe_buffer*, %struct.pipe_buffer** %6, align 8
  %105 = getelementptr inbounds %struct.pipe_buffer, %struct.pipe_buffer* %104, i32 0, i32 1
  %106 = load %struct.TYPE_4__*, %struct.TYPE_4__** %105, align 8
  %107 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %106, i32 0, i32 2
  %108 = load i32 (%struct.pipe_inode_info*, %struct.pipe_buffer*, i8*)*, i32 (%struct.pipe_inode_info*, %struct.pipe_buffer*, i8*)** %107, align 8
  %109 = load %struct.pipe_inode_info*, %struct.pipe_inode_info** %5, align 8
  %110 = load %struct.pipe_buffer*, %struct.pipe_buffer** %6, align 8
  %111 = load i8*, i8** %15, align 8
  %112 = call i32 %108(%struct.pipe_inode_info* %109, %struct.pipe_buffer* %110, i8* %111)
  br label %113

113:                                              ; preds = %75, %69
  %114 = load %struct.file*, %struct.file** %8, align 8
  %115 = load %struct.address_space*, %struct.address_space** %9, align 8
  %116 = load %struct.splice_desc*, %struct.splice_desc** %7, align 8
  %117 = getelementptr inbounds %struct.splice_desc, %struct.splice_desc* %116, i32 0, i32 0
  %118 = load i32, i32* %117, align 8
  %119 = load i32, i32* %11, align 4
  %120 = load i32, i32* %11, align 4
  %121 = load %struct.page*, %struct.page** %12, align 8
  %122 = load i8*, i8** %13, align 8
  %123 = call i32 @pagecache_write_end(%struct.file* %114, %struct.address_space* %115, i32 %118, i32 %119, i32 %120, %struct.page* %121, i8* %122)
  store i32 %123, i32* %14, align 4
  br label %124

124:                                              ; preds = %113, %68
  %125 = load i32, i32* %14, align 4
  store i32 %125, i32* %4, align 4
  br label %126

126:                                              ; preds = %124, %35
  %127 = load i32, i32* %4, align 4
  ret i32 %127
}

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @pagecache_write_begin(%struct.file*, %struct.address_space*, i32, i32, i32, %struct.page**, i8**) #1

declare dso_local i8* @kmap_atomic(%struct.page*, i32) #1

declare dso_local i32 @memcpy(i8*, i8*, i32) #1

declare dso_local i32 @flush_dcache_page(%struct.page*) #1

declare dso_local i32 @kunmap_atomic(i8*, i32) #1

declare dso_local i32 @pagecache_write_end(%struct.file*, %struct.address_space*, i32, i32, i32, %struct.page*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

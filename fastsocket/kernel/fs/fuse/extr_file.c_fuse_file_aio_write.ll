; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/fuse/extr_file.c_fuse_file_aio_write.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/fuse/extr_file.c_fuse_file_aio_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32* }
%struct.kiocb = type { i64, %struct.file* }
%struct.file = type { i32, %struct.address_space* }
%struct.address_space = type { i32*, %struct.inode* }
%struct.inode = type { i32, i32, i32 }
%struct.iovec = type { i32 }
%struct.iov_iter = type { i32 }

@VERIFY_READ = common dso_local global i32 0, align 4
@current = common dso_local global %struct.TYPE_2__* null, align 8
@O_DIRECT = common dso_local global i32 0, align 4
@PAGE_CACHE_SHIFT = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.kiocb*, %struct.iovec*, i64, i64)* @fuse_file_aio_write to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @fuse_file_aio_write(%struct.kiocb* %0, %struct.iovec* %1, i64 %2, i64 %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca %struct.kiocb*, align 8
  %7 = alloca %struct.iovec*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.file*, align 8
  %11 = alloca %struct.address_space*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca %struct.inode*, align 8
  %17 = alloca i64, align 8
  %18 = alloca %struct.iov_iter, align 4
  %19 = alloca i64, align 8
  store %struct.kiocb* %0, %struct.kiocb** %6, align 8
  store %struct.iovec* %1, %struct.iovec** %7, align 8
  store i64 %2, i64* %8, align 8
  store i64 %3, i64* %9, align 8
  %20 = load %struct.kiocb*, %struct.kiocb** %6, align 8
  %21 = getelementptr inbounds %struct.kiocb, %struct.kiocb* %20, i32 0, i32 1
  %22 = load %struct.file*, %struct.file** %21, align 8
  store %struct.file* %22, %struct.file** %10, align 8
  %23 = load %struct.file*, %struct.file** %10, align 8
  %24 = getelementptr inbounds %struct.file, %struct.file* %23, i32 0, i32 1
  %25 = load %struct.address_space*, %struct.address_space** %24, align 8
  store %struct.address_space* %25, %struct.address_space** %11, align 8
  store i64 0, i64* %12, align 8
  store i64 0, i64* %13, align 8
  store i64 0, i64* %14, align 8
  store i64 0, i64* %15, align 8
  %26 = load %struct.address_space*, %struct.address_space** %11, align 8
  %27 = getelementptr inbounds %struct.address_space, %struct.address_space* %26, i32 0, i32 1
  %28 = load %struct.inode*, %struct.inode** %27, align 8
  store %struct.inode* %28, %struct.inode** %16, align 8
  store i64 0, i64* %19, align 8
  %29 = load %struct.kiocb*, %struct.kiocb** %6, align 8
  %30 = getelementptr inbounds %struct.kiocb, %struct.kiocb* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = load i64, i64* %9, align 8
  %33 = icmp ne i64 %31, %32
  %34 = zext i1 %33 to i32
  %35 = call i32 @WARN_ON(i32 %34)
  store i64 0, i64* %13, align 8
  %36 = load %struct.iovec*, %struct.iovec** %7, align 8
  %37 = load i32, i32* @VERIFY_READ, align 4
  %38 = call i64 @generic_segment_checks(%struct.iovec* %36, i64* %8, i64* %13, i32 %37)
  store i64 %38, i64* %17, align 8
  %39 = load i64, i64* %17, align 8
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %43

41:                                               ; preds = %4
  %42 = load i64, i64* %17, align 8
  store i64 %42, i64* %5, align 8
  br label %191

43:                                               ; preds = %4
  %44 = load i64, i64* %13, align 8
  store i64 %44, i64* %12, align 8
  %45 = load %struct.inode*, %struct.inode** %16, align 8
  %46 = getelementptr inbounds %struct.inode, %struct.inode* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = call i32 @sb_start_write(i32 %47)
  %49 = load %struct.inode*, %struct.inode** %16, align 8
  %50 = getelementptr inbounds %struct.inode, %struct.inode* %49, i32 0, i32 1
  %51 = call i32 @mutex_lock(i32* %50)
  %52 = load %struct.address_space*, %struct.address_space** %11, align 8
  %53 = getelementptr inbounds %struct.address_space, %struct.address_space* %52, i32 0, i32 0
  %54 = load i32*, i32** %53, align 8
  %55 = load %struct.TYPE_2__*, %struct.TYPE_2__** @current, align 8
  %56 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %55, i32 0, i32 0
  store i32* %54, i32** %56, align 8
  %57 = load %struct.file*, %struct.file** %10, align 8
  %58 = load %struct.inode*, %struct.inode** %16, align 8
  %59 = getelementptr inbounds %struct.inode, %struct.inode* %58, i32 0, i32 2
  %60 = load i32, i32* %59, align 4
  %61 = call i32 @S_ISBLK(i32 %60)
  %62 = call i64 @generic_write_checks(%struct.file* %57, i64* %9, i64* %12, i32 %61)
  store i64 %62, i64* %17, align 8
  %63 = load i64, i64* %17, align 8
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %65, label %66

65:                                               ; preds = %43
  br label %173

66:                                               ; preds = %43
  %67 = load i64, i64* %12, align 8
  %68 = icmp eq i64 %67, 0
  br i1 %68, label %69, label %70

69:                                               ; preds = %66
  br label %173

70:                                               ; preds = %66
  %71 = load %struct.file*, %struct.file** %10, align 8
  %72 = call i64 @file_remove_suid(%struct.file* %71)
  store i64 %72, i64* %17, align 8
  %73 = load i64, i64* %17, align 8
  %74 = icmp ne i64 %73, 0
  br i1 %74, label %75, label %76

75:                                               ; preds = %70
  br label %173

76:                                               ; preds = %70
  %77 = load %struct.file*, %struct.file** %10, align 8
  %78 = call i32 @file_update_time(%struct.file* %77)
  %79 = load %struct.file*, %struct.file** %10, align 8
  %80 = getelementptr inbounds %struct.file, %struct.file* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 8
  %82 = load i32, i32* @O_DIRECT, align 4
  %83 = and i32 %81, %82
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %85, label %154

85:                                               ; preds = %76
  %86 = load %struct.kiocb*, %struct.kiocb** %6, align 8
  %87 = load %struct.iovec*, %struct.iovec** %7, align 8
  %88 = load i64, i64* %9, align 8
  %89 = load %struct.kiocb*, %struct.kiocb** %6, align 8
  %90 = getelementptr inbounds %struct.kiocb, %struct.kiocb* %89, i32 0, i32 0
  %91 = load i64, i64* %12, align 8
  %92 = load i64, i64* %13, align 8
  %93 = call i64 @generic_file_direct_write(%struct.kiocb* %86, %struct.iovec* %87, i64* %8, i64 %88, i64* %90, i64 %91, i64 %92)
  store i64 %93, i64* %14, align 8
  %94 = load i64, i64* %14, align 8
  %95 = icmp ult i64 %94, 0
  br i1 %95, label %100, label %96

96:                                               ; preds = %85
  %97 = load i64, i64* %14, align 8
  %98 = load i64, i64* %12, align 8
  %99 = icmp eq i64 %97, %98
  br i1 %99, label %100, label %101

100:                                              ; preds = %96, %85
  br label %173

101:                                              ; preds = %96
  %102 = load i64, i64* %14, align 8
  %103 = load i64, i64* %9, align 8
  %104 = add i64 %103, %102
  store i64 %104, i64* %9, align 8
  %105 = load i64, i64* %14, align 8
  %106 = load i64, i64* %12, align 8
  %107 = sub i64 %106, %105
  store i64 %107, i64* %12, align 8
  %108 = load %struct.iovec*, %struct.iovec** %7, align 8
  %109 = load i64, i64* %8, align 8
  %110 = load i64, i64* %12, align 8
  %111 = load i64, i64* %14, align 8
  %112 = call i32 @iov_iter_init(%struct.iov_iter* %18, %struct.iovec* %108, i64 %109, i64 %110, i64 %111)
  %113 = load %struct.file*, %struct.file** %10, align 8
  %114 = load %struct.address_space*, %struct.address_space** %11, align 8
  %115 = load i64, i64* %9, align 8
  %116 = call i64 @fuse_perform_write(%struct.file* %113, %struct.address_space* %114, %struct.iov_iter* %18, i64 %115)
  store i64 %116, i64* %15, align 8
  %117 = load i64, i64* %15, align 8
  %118 = icmp ult i64 %117, 0
  br i1 %118, label %119, label %121

119:                                              ; preds = %101
  %120 = load i64, i64* %15, align 8
  store i64 %120, i64* %17, align 8
  br label %173

121:                                              ; preds = %101
  %122 = load i64, i64* %9, align 8
  %123 = load i64, i64* %15, align 8
  %124 = add i64 %122, %123
  %125 = sub i64 %124, 1
  store i64 %125, i64* %19, align 8
  %126 = load %struct.file*, %struct.file** %10, align 8
  %127 = getelementptr inbounds %struct.file, %struct.file* %126, i32 0, i32 1
  %128 = load %struct.address_space*, %struct.address_space** %127, align 8
  %129 = load i64, i64* %9, align 8
  %130 = load i64, i64* %19, align 8
  %131 = call i64 @filemap_write_and_wait_range(%struct.address_space* %128, i64 %129, i64 %130)
  store i64 %131, i64* %17, align 8
  %132 = load i64, i64* %17, align 8
  %133 = icmp ne i64 %132, 0
  br i1 %133, label %134, label %135

134:                                              ; preds = %121
  br label %173

135:                                              ; preds = %121
  %136 = load %struct.file*, %struct.file** %10, align 8
  %137 = getelementptr inbounds %struct.file, %struct.file* %136, i32 0, i32 1
  %138 = load %struct.address_space*, %struct.address_space** %137, align 8
  %139 = load i64, i64* %9, align 8
  %140 = load i64, i64* @PAGE_CACHE_SHIFT, align 8
  %141 = lshr i64 %139, %140
  %142 = load i64, i64* %19, align 8
  %143 = load i64, i64* @PAGE_CACHE_SHIFT, align 8
  %144 = lshr i64 %142, %143
  %145 = call i32 @invalidate_mapping_pages(%struct.address_space* %138, i64 %141, i64 %144)
  %146 = load i64, i64* %15, align 8
  %147 = load i64, i64* %14, align 8
  %148 = add i64 %147, %146
  store i64 %148, i64* %14, align 8
  %149 = load i64, i64* %9, align 8
  %150 = load i64, i64* %15, align 8
  %151 = add i64 %149, %150
  %152 = load %struct.kiocb*, %struct.kiocb** %6, align 8
  %153 = getelementptr inbounds %struct.kiocb, %struct.kiocb* %152, i32 0, i32 0
  store i64 %151, i64* %153, align 8
  br label %172

154:                                              ; preds = %76
  %155 = load %struct.iovec*, %struct.iovec** %7, align 8
  %156 = load i64, i64* %8, align 8
  %157 = load i64, i64* %12, align 8
  %158 = call i32 @iov_iter_init(%struct.iov_iter* %18, %struct.iovec* %155, i64 %156, i64 %157, i64 0)
  %159 = load %struct.file*, %struct.file** %10, align 8
  %160 = load %struct.address_space*, %struct.address_space** %11, align 8
  %161 = load i64, i64* %9, align 8
  %162 = call i64 @fuse_perform_write(%struct.file* %159, %struct.address_space* %160, %struct.iov_iter* %18, i64 %161)
  store i64 %162, i64* %14, align 8
  %163 = load i64, i64* %14, align 8
  %164 = icmp uge i64 %163, 0
  br i1 %164, label %165, label %171

165:                                              ; preds = %154
  %166 = load i64, i64* %9, align 8
  %167 = load i64, i64* %14, align 8
  %168 = add i64 %166, %167
  %169 = load %struct.kiocb*, %struct.kiocb** %6, align 8
  %170 = getelementptr inbounds %struct.kiocb, %struct.kiocb* %169, i32 0, i32 0
  store i64 %168, i64* %170, align 8
  br label %171

171:                                              ; preds = %165, %154
  br label %172

172:                                              ; preds = %171, %135
  br label %173

173:                                              ; preds = %172, %134, %119, %100, %75, %69, %65
  %174 = load %struct.TYPE_2__*, %struct.TYPE_2__** @current, align 8
  %175 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %174, i32 0, i32 0
  store i32* null, i32** %175, align 8
  %176 = load %struct.inode*, %struct.inode** %16, align 8
  %177 = getelementptr inbounds %struct.inode, %struct.inode* %176, i32 0, i32 1
  %178 = call i32 @mutex_unlock(i32* %177)
  %179 = load %struct.inode*, %struct.inode** %16, align 8
  %180 = getelementptr inbounds %struct.inode, %struct.inode* %179, i32 0, i32 0
  %181 = load i32, i32* %180, align 4
  %182 = call i32 @sb_end_write(i32 %181)
  %183 = load i64, i64* %14, align 8
  %184 = icmp ne i64 %183, 0
  br i1 %184, label %185, label %187

185:                                              ; preds = %173
  %186 = load i64, i64* %14, align 8
  br label %189

187:                                              ; preds = %173
  %188 = load i64, i64* %17, align 8
  br label %189

189:                                              ; preds = %187, %185
  %190 = phi i64 [ %186, %185 ], [ %188, %187 ]
  store i64 %190, i64* %5, align 8
  br label %191

191:                                              ; preds = %189, %41
  %192 = load i64, i64* %5, align 8
  ret i64 %192
}

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i64 @generic_segment_checks(%struct.iovec*, i64*, i64*, i32) #1

declare dso_local i32 @sb_start_write(i32) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i64 @generic_write_checks(%struct.file*, i64*, i64*, i32) #1

declare dso_local i32 @S_ISBLK(i32) #1

declare dso_local i64 @file_remove_suid(%struct.file*) #1

declare dso_local i32 @file_update_time(%struct.file*) #1

declare dso_local i64 @generic_file_direct_write(%struct.kiocb*, %struct.iovec*, i64*, i64, i64*, i64, i64) #1

declare dso_local i32 @iov_iter_init(%struct.iov_iter*, %struct.iovec*, i64, i64, i64) #1

declare dso_local i64 @fuse_perform_write(%struct.file*, %struct.address_space*, %struct.iov_iter*, i64) #1

declare dso_local i64 @filemap_write_and_wait_range(%struct.address_space*, i64, i64) #1

declare dso_local i32 @invalidate_mapping_pages(%struct.address_space*, i64, i64) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @sb_end_write(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

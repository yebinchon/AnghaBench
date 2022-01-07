; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/mm/extr_filemap.c___generic_file_aio_write.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/mm/extr_filemap.c___generic_file_aio_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32* }
%struct.kiocb = type { %struct.file* }
%struct.file = type { i32, %struct.address_space* }
%struct.address_space = type { i32*, %struct.inode* }
%struct.inode = type { i32, i32 }
%struct.iovec = type { i32 }

@VERIFY_READ = common dso_local global i32 0, align 4
@SB_FREEZE_WRITE = common dso_local global i32 0, align 4
@current = common dso_local global %struct.TYPE_2__* null, align 8
@O_DIRECT = common dso_local global i32 0, align 4
@SYNC_FILE_RANGE_WAIT_BEFORE = common dso_local global i32 0, align 4
@SYNC_FILE_RANGE_WRITE = common dso_local global i32 0, align 4
@SYNC_FILE_RANGE_WAIT_AFTER = common dso_local global i32 0, align 4
@PAGE_CACHE_SHIFT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @__generic_file_aio_write(%struct.kiocb* %0, %struct.iovec* %1, i64 %2, i32* %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca %struct.kiocb*, align 8
  %7 = alloca %struct.iovec*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32*, align 8
  %10 = alloca %struct.file*, align 8
  %11 = alloca %struct.address_space*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca %struct.inode*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  %18 = alloca i32, align 4
  %19 = alloca i64, align 8
  store %struct.kiocb* %0, %struct.kiocb** %6, align 8
  store %struct.iovec* %1, %struct.iovec** %7, align 8
  store i64 %2, i64* %8, align 8
  store i32* %3, i32** %9, align 8
  %20 = load %struct.kiocb*, %struct.kiocb** %6, align 8
  %21 = getelementptr inbounds %struct.kiocb, %struct.kiocb* %20, i32 0, i32 0
  %22 = load %struct.file*, %struct.file** %21, align 8
  store %struct.file* %22, %struct.file** %10, align 8
  %23 = load %struct.file*, %struct.file** %10, align 8
  %24 = getelementptr inbounds %struct.file, %struct.file* %23, i32 0, i32 1
  %25 = load %struct.address_space*, %struct.address_space** %24, align 8
  store %struct.address_space* %25, %struct.address_space** %11, align 8
  %26 = load %struct.address_space*, %struct.address_space** %11, align 8
  %27 = getelementptr inbounds %struct.address_space, %struct.address_space* %26, i32 0, i32 1
  %28 = load %struct.inode*, %struct.inode** %27, align 8
  store %struct.inode* %28, %struct.inode** %14, align 8
  store i64 0, i64* %12, align 8
  %29 = load %struct.iovec*, %struct.iovec** %7, align 8
  %30 = load i32, i32* @VERIFY_READ, align 4
  %31 = call i64 @generic_segment_checks(%struct.iovec* %29, i64* %8, i64* %12, i32 %30)
  store i64 %31, i64* %17, align 8
  %32 = load i64, i64* %17, align 8
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %36

34:                                               ; preds = %4
  %35 = load i64, i64* %17, align 8
  store i64 %35, i64* %5, align 8
  br label %177

36:                                               ; preds = %4
  %37 = load i64, i64* %12, align 8
  store i64 %37, i64* %13, align 8
  %38 = load i32*, i32** %9, align 8
  %39 = load i32, i32* %38, align 4
  store i32 %39, i32* %15, align 4
  %40 = load %struct.inode*, %struct.inode** %14, align 8
  %41 = getelementptr inbounds %struct.inode, %struct.inode* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 4
  %43 = call i32 @sb_has_new_freeze(i32 %42)
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %51, label %45

45:                                               ; preds = %36
  %46 = load %struct.inode*, %struct.inode** %14, align 8
  %47 = getelementptr inbounds %struct.inode, %struct.inode* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 4
  %49 = load i32, i32* @SB_FREEZE_WRITE, align 4
  %50 = call i32 @vfs_check_frozen(i32 %48, i32 %49)
  br label %51

51:                                               ; preds = %45, %36
  %52 = load %struct.address_space*, %struct.address_space** %11, align 8
  %53 = getelementptr inbounds %struct.address_space, %struct.address_space* %52, i32 0, i32 0
  %54 = load i32*, i32** %53, align 8
  %55 = load %struct.TYPE_2__*, %struct.TYPE_2__** @current, align 8
  %56 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %55, i32 0, i32 0
  store i32* %54, i32** %56, align 8
  store i64 0, i64* %16, align 8
  %57 = load %struct.file*, %struct.file** %10, align 8
  %58 = load %struct.inode*, %struct.inode** %14, align 8
  %59 = getelementptr inbounds %struct.inode, %struct.inode* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = call i32 @S_ISBLK(i32 %60)
  %62 = call i64 @generic_write_checks(%struct.file* %57, i32* %15, i64* %13, i32 %61)
  store i64 %62, i64* %17, align 8
  %63 = load i64, i64* %17, align 8
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %65, label %66

65:                                               ; preds = %51
  br label %166

66:                                               ; preds = %51
  %67 = load i64, i64* %13, align 8
  %68 = icmp eq i64 %67, 0
  br i1 %68, label %69, label %70

69:                                               ; preds = %66
  br label %166

70:                                               ; preds = %66
  %71 = load %struct.file*, %struct.file** %10, align 8
  %72 = call i64 @file_remove_suid(%struct.file* %71)
  store i64 %72, i64* %17, align 8
  %73 = load i64, i64* %17, align 8
  %74 = icmp ne i64 %73, 0
  br i1 %74, label %75, label %76

75:                                               ; preds = %70
  br label %166

76:                                               ; preds = %70
  %77 = load %struct.file*, %struct.file** %10, align 8
  %78 = call i32 @file_update_time(%struct.file* %77)
  %79 = load %struct.file*, %struct.file** %10, align 8
  %80 = getelementptr inbounds %struct.file, %struct.file* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 8
  %82 = load i32, i32* @O_DIRECT, align 4
  %83 = and i32 %81, %82
  %84 = call i64 @unlikely(i32 %83)
  %85 = icmp ne i64 %84, 0
  br i1 %85, label %86, label %156

86:                                               ; preds = %76
  %87 = load %struct.kiocb*, %struct.kiocb** %6, align 8
  %88 = load %struct.iovec*, %struct.iovec** %7, align 8
  %89 = load i32, i32* %15, align 4
  %90 = load i32*, i32** %9, align 8
  %91 = load i64, i64* %13, align 8
  %92 = load i64, i64* %12, align 8
  %93 = call i64 @generic_file_direct_write(%struct.kiocb* %87, %struct.iovec* %88, i64* %8, i32 %89, i32* %90, i64 %91, i64 %92)
  store i64 %93, i64* %16, align 8
  %94 = load i64, i64* %16, align 8
  %95 = icmp ult i64 %94, 0
  br i1 %95, label %100, label %96

96:                                               ; preds = %86
  %97 = load i64, i64* %16, align 8
  %98 = load i64, i64* %13, align 8
  %99 = icmp eq i64 %97, %98
  br i1 %99, label %100, label %101

100:                                              ; preds = %96, %86
  br label %166

101:                                              ; preds = %96
  %102 = load i64, i64* %16, align 8
  %103 = load i32, i32* %15, align 4
  %104 = sext i32 %103 to i64
  %105 = add i64 %104, %102
  %106 = trunc i64 %105 to i32
  store i32 %106, i32* %15, align 4
  %107 = load i64, i64* %16, align 8
  %108 = load i64, i64* %13, align 8
  %109 = sub i64 %108, %107
  store i64 %109, i64* %13, align 8
  %110 = load %struct.kiocb*, %struct.kiocb** %6, align 8
  %111 = load %struct.iovec*, %struct.iovec** %7, align 8
  %112 = load i64, i64* %8, align 8
  %113 = load i32, i32* %15, align 4
  %114 = load i32*, i32** %9, align 8
  %115 = load i64, i64* %13, align 8
  %116 = load i64, i64* %16, align 8
  %117 = call i64 @generic_file_buffered_write(%struct.kiocb* %110, %struct.iovec* %111, i64 %112, i32 %113, i32* %114, i64 %115, i64 %116)
  store i64 %117, i64* %19, align 8
  %118 = load i64, i64* %19, align 8
  %119 = icmp ult i64 %118, 0
  br i1 %119, label %120, label %122

120:                                              ; preds = %101
  %121 = load i64, i64* %19, align 8
  store i64 %121, i64* %17, align 8
  br label %166

122:                                              ; preds = %101
  %123 = load i32, i32* %15, align 4
  %124 = sext i32 %123 to i64
  %125 = load i64, i64* %19, align 8
  %126 = add i64 %124, %125
  %127 = load i64, i64* %16, align 8
  %128 = sub i64 %126, %127
  %129 = sub i64 %128, 1
  %130 = trunc i64 %129 to i32
  store i32 %130, i32* %18, align 4
  %131 = load %struct.file*, %struct.file** %10, align 8
  %132 = getelementptr inbounds %struct.file, %struct.file* %131, i32 0, i32 1
  %133 = load %struct.address_space*, %struct.address_space** %132, align 8
  %134 = load i32, i32* %15, align 4
  %135 = load i32, i32* %18, align 4
  %136 = load i32, i32* @SYNC_FILE_RANGE_WAIT_BEFORE, align 4
  %137 = load i32, i32* @SYNC_FILE_RANGE_WRITE, align 4
  %138 = or i32 %136, %137
  %139 = load i32, i32* @SYNC_FILE_RANGE_WAIT_AFTER, align 4
  %140 = or i32 %138, %139
  %141 = call i64 @do_sync_mapping_range(%struct.address_space* %133, i32 %134, i32 %135, i32 %140)
  store i64 %141, i64* %17, align 8
  %142 = load i64, i64* %17, align 8
  %143 = icmp eq i64 %142, 0
  br i1 %143, label %144, label %154

144:                                              ; preds = %122
  %145 = load i64, i64* %19, align 8
  store i64 %145, i64* %16, align 8
  %146 = load %struct.address_space*, %struct.address_space** %11, align 8
  %147 = load i32, i32* %15, align 4
  %148 = load i32, i32* @PAGE_CACHE_SHIFT, align 4
  %149 = ashr i32 %147, %148
  %150 = load i32, i32* %18, align 4
  %151 = load i32, i32* @PAGE_CACHE_SHIFT, align 4
  %152 = ashr i32 %150, %151
  %153 = call i32 @invalidate_mapping_pages(%struct.address_space* %146, i32 %149, i32 %152)
  br label %155

154:                                              ; preds = %122
  br label %155

155:                                              ; preds = %154, %144
  br label %165

156:                                              ; preds = %76
  %157 = load %struct.kiocb*, %struct.kiocb** %6, align 8
  %158 = load %struct.iovec*, %struct.iovec** %7, align 8
  %159 = load i64, i64* %8, align 8
  %160 = load i32, i32* %15, align 4
  %161 = load i32*, i32** %9, align 8
  %162 = load i64, i64* %13, align 8
  %163 = load i64, i64* %16, align 8
  %164 = call i64 @generic_file_buffered_write(%struct.kiocb* %157, %struct.iovec* %158, i64 %159, i32 %160, i32* %161, i64 %162, i64 %163)
  store i64 %164, i64* %16, align 8
  br label %165

165:                                              ; preds = %156, %155
  br label %166

166:                                              ; preds = %165, %120, %100, %75, %69, %65
  %167 = load %struct.TYPE_2__*, %struct.TYPE_2__** @current, align 8
  %168 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %167, i32 0, i32 0
  store i32* null, i32** %168, align 8
  %169 = load i64, i64* %16, align 8
  %170 = icmp ne i64 %169, 0
  br i1 %170, label %171, label %173

171:                                              ; preds = %166
  %172 = load i64, i64* %16, align 8
  br label %175

173:                                              ; preds = %166
  %174 = load i64, i64* %17, align 8
  br label %175

175:                                              ; preds = %173, %171
  %176 = phi i64 [ %172, %171 ], [ %174, %173 ]
  store i64 %176, i64* %5, align 8
  br label %177

177:                                              ; preds = %175, %34
  %178 = load i64, i64* %5, align 8
  ret i64 %178
}

declare dso_local i64 @generic_segment_checks(%struct.iovec*, i64*, i64*, i32) #1

declare dso_local i32 @sb_has_new_freeze(i32) #1

declare dso_local i32 @vfs_check_frozen(i32, i32) #1

declare dso_local i64 @generic_write_checks(%struct.file*, i32*, i64*, i32) #1

declare dso_local i32 @S_ISBLK(i32) #1

declare dso_local i64 @file_remove_suid(%struct.file*) #1

declare dso_local i32 @file_update_time(%struct.file*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i64 @generic_file_direct_write(%struct.kiocb*, %struct.iovec*, i64*, i32, i32*, i64, i64) #1

declare dso_local i64 @generic_file_buffered_write(%struct.kiocb*, %struct.iovec*, i64, i32, i32*, i64, i64) #1

declare dso_local i64 @do_sync_mapping_range(%struct.address_space*, i32, i32, i32) #1

declare dso_local i32 @invalidate_mapping_pages(%struct.address_space*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

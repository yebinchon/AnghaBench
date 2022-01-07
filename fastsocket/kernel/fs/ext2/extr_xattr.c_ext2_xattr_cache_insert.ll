; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/ext2/extr_xattr.c_ext2_xattr_cache_insert.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/ext2/extr_xattr.c_ext2_xattr_cache_insert.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32 }
%struct.buffer_head = type { i32, i32 }
%struct.mb_cache_entry = type { i32 }
%struct.TYPE_5__ = type { i32 }

@ext2_xattr_cache = common dso_local global %struct.TYPE_4__* null, align 8
@GFP_NOFS = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [36 x i8] c"already in cache (%d cache entries)\00", align 1
@.str.1 = private unnamed_addr constant [34 x i8] c"inserting [%x] (%d cache entries)\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.buffer_head*)* @ext2_xattr_cache_insert to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ext2_xattr_cache_insert(%struct.buffer_head* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.buffer_head*, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.mb_cache_entry*, align 8
  %6 = alloca i32, align 4
  store %struct.buffer_head* %0, %struct.buffer_head** %3, align 8
  %7 = load %struct.buffer_head*, %struct.buffer_head** %3, align 8
  %8 = call %struct.TYPE_5__* @HDR(%struct.buffer_head* %7)
  %9 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = call i64 @le32_to_cpu(i32 %10)
  store i64 %11, i64* %4, align 8
  %12 = load %struct.TYPE_4__*, %struct.TYPE_4__** @ext2_xattr_cache, align 8
  %13 = load i32, i32* @GFP_NOFS, align 4
  %14 = call %struct.mb_cache_entry* @mb_cache_entry_alloc(%struct.TYPE_4__* %12, i32 %13)
  store %struct.mb_cache_entry* %14, %struct.mb_cache_entry** %5, align 8
  %15 = load %struct.mb_cache_entry*, %struct.mb_cache_entry** %5, align 8
  %16 = icmp ne %struct.mb_cache_entry* %15, null
  br i1 %16, label %20, label %17

17:                                               ; preds = %1
  %18 = load i32, i32* @ENOMEM, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %2, align 4
  br label %57

20:                                               ; preds = %1
  %21 = load %struct.mb_cache_entry*, %struct.mb_cache_entry** %5, align 8
  %22 = load %struct.buffer_head*, %struct.buffer_head** %3, align 8
  %23 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = load %struct.buffer_head*, %struct.buffer_head** %3, align 8
  %26 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @mb_cache_entry_insert(%struct.mb_cache_entry* %21, i32 %24, i32 %27, i64* %4)
  store i32 %28, i32* %6, align 4
  %29 = load i32, i32* %6, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %45

31:                                               ; preds = %20
  %32 = load %struct.mb_cache_entry*, %struct.mb_cache_entry** %5, align 8
  %33 = call i32 @mb_cache_entry_free(%struct.mb_cache_entry* %32)
  %34 = load i32, i32* %6, align 4
  %35 = load i32, i32* @EBUSY, align 4
  %36 = sub nsw i32 0, %35
  %37 = icmp eq i32 %34, %36
  br i1 %37, label %38, label %44

38:                                               ; preds = %31
  %39 = load %struct.buffer_head*, %struct.buffer_head** %3, align 8
  %40 = load %struct.TYPE_4__*, %struct.TYPE_4__** @ext2_xattr_cache, align 8
  %41 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %40, i32 0, i32 0
  %42 = call i32 @atomic_read(i32* %41)
  %43 = call i32 (%struct.buffer_head*, i8*, i32, ...) @ea_bdebug(%struct.buffer_head* %39, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0), i32 %42)
  store i32 0, i32* %6, align 4
  br label %44

44:                                               ; preds = %38, %31
  br label %55

45:                                               ; preds = %20
  %46 = load %struct.buffer_head*, %struct.buffer_head** %3, align 8
  %47 = load i64, i64* %4, align 8
  %48 = trunc i64 %47 to i32
  %49 = load %struct.TYPE_4__*, %struct.TYPE_4__** @ext2_xattr_cache, align 8
  %50 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %49, i32 0, i32 0
  %51 = call i32 @atomic_read(i32* %50)
  %52 = call i32 (%struct.buffer_head*, i8*, i32, ...) @ea_bdebug(%struct.buffer_head* %46, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0), i32 %48, i32 %51)
  %53 = load %struct.mb_cache_entry*, %struct.mb_cache_entry** %5, align 8
  %54 = call i32 @mb_cache_entry_release(%struct.mb_cache_entry* %53)
  br label %55

55:                                               ; preds = %45, %44
  %56 = load i32, i32* %6, align 4
  store i32 %56, i32* %2, align 4
  br label %57

57:                                               ; preds = %55, %17
  %58 = load i32, i32* %2, align 4
  ret i32 %58
}

declare dso_local i64 @le32_to_cpu(i32) #1

declare dso_local %struct.TYPE_5__* @HDR(%struct.buffer_head*) #1

declare dso_local %struct.mb_cache_entry* @mb_cache_entry_alloc(%struct.TYPE_4__*, i32) #1

declare dso_local i32 @mb_cache_entry_insert(%struct.mb_cache_entry*, i32, i32, i64*) #1

declare dso_local i32 @mb_cache_entry_free(%struct.mb_cache_entry*) #1

declare dso_local i32 @ea_bdebug(%struct.buffer_head*, i8*, i32, ...) #1

declare dso_local i32 @atomic_read(i32*) #1

declare dso_local i32 @mb_cache_entry_release(%struct.mb_cache_entry*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/ext3/extr_xattr.c_ext3_xattr_cache_insert.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/ext3/extr_xattr.c_ext3_xattr_cache_insert.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.buffer_head = type { i32, i32 }
%struct.mb_cache_entry = type { i32 }
%struct.TYPE_2__ = type { i32 }

@ext3_xattr_cache = common dso_local global i32 0, align 4
@GFP_NOFS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [14 x i8] c"out of memory\00", align 1
@EBUSY = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [17 x i8] c"already in cache\00", align 1
@.str.2 = private unnamed_addr constant [15 x i8] c"inserting [%x]\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.buffer_head*)* @ext3_xattr_cache_insert to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ext3_xattr_cache_insert(%struct.buffer_head* %0) #0 {
  %2 = alloca %struct.buffer_head*, align 8
  %3 = alloca i64, align 8
  %4 = alloca %struct.mb_cache_entry*, align 8
  %5 = alloca i32, align 4
  store %struct.buffer_head* %0, %struct.buffer_head** %2, align 8
  %6 = load %struct.buffer_head*, %struct.buffer_head** %2, align 8
  %7 = call %struct.TYPE_2__* @BHDR(%struct.buffer_head* %6)
  %8 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = call i64 @le32_to_cpu(i32 %9)
  store i64 %10, i64* %3, align 8
  %11 = load i32, i32* @ext3_xattr_cache, align 4
  %12 = load i32, i32* @GFP_NOFS, align 4
  %13 = call %struct.mb_cache_entry* @mb_cache_entry_alloc(i32 %11, i32 %12)
  store %struct.mb_cache_entry* %13, %struct.mb_cache_entry** %4, align 8
  %14 = load %struct.mb_cache_entry*, %struct.mb_cache_entry** %4, align 8
  %15 = icmp ne %struct.mb_cache_entry* %14, null
  br i1 %15, label %19, label %16

16:                                               ; preds = %1
  %17 = load %struct.buffer_head*, %struct.buffer_head** %2, align 8
  %18 = call i32 (%struct.buffer_head*, i8*, ...) @ea_bdebug(%struct.buffer_head* %17, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0))
  br label %48

19:                                               ; preds = %1
  %20 = load %struct.mb_cache_entry*, %struct.mb_cache_entry** %4, align 8
  %21 = load %struct.buffer_head*, %struct.buffer_head** %2, align 8
  %22 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = load %struct.buffer_head*, %struct.buffer_head** %2, align 8
  %25 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = call i32 @mb_cache_entry_insert(%struct.mb_cache_entry* %20, i32 %23, i32 %26, i64* %3)
  store i32 %27, i32* %5, align 4
  %28 = load i32, i32* %5, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %41

30:                                               ; preds = %19
  %31 = load %struct.mb_cache_entry*, %struct.mb_cache_entry** %4, align 8
  %32 = call i32 @mb_cache_entry_free(%struct.mb_cache_entry* %31)
  %33 = load i32, i32* %5, align 4
  %34 = load i32, i32* @EBUSY, align 4
  %35 = sub nsw i32 0, %34
  %36 = icmp eq i32 %33, %35
  br i1 %36, label %37, label %40

37:                                               ; preds = %30
  %38 = load %struct.buffer_head*, %struct.buffer_head** %2, align 8
  %39 = call i32 (%struct.buffer_head*, i8*, ...) @ea_bdebug(%struct.buffer_head* %38, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0))
  store i32 0, i32* %5, align 4
  br label %40

40:                                               ; preds = %37, %30
  br label %48

41:                                               ; preds = %19
  %42 = load %struct.buffer_head*, %struct.buffer_head** %2, align 8
  %43 = load i64, i64* %3, align 8
  %44 = trunc i64 %43 to i32
  %45 = call i32 (%struct.buffer_head*, i8*, ...) @ea_bdebug(%struct.buffer_head* %42, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0), i32 %44)
  %46 = load %struct.mb_cache_entry*, %struct.mb_cache_entry** %4, align 8
  %47 = call i32 @mb_cache_entry_release(%struct.mb_cache_entry* %46)
  br label %48

48:                                               ; preds = %16, %41, %40
  ret void
}

declare dso_local i64 @le32_to_cpu(i32) #1

declare dso_local %struct.TYPE_2__* @BHDR(%struct.buffer_head*) #1

declare dso_local %struct.mb_cache_entry* @mb_cache_entry_alloc(i32, i32) #1

declare dso_local i32 @ea_bdebug(%struct.buffer_head*, i8*, ...) #1

declare dso_local i32 @mb_cache_entry_insert(%struct.mb_cache_entry*, i32, i32, i64*) #1

declare dso_local i32 @mb_cache_entry_free(%struct.mb_cache_entry*) #1

declare dso_local i32 @mb_cache_entry_release(%struct.mb_cache_entry*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

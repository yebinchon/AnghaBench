; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/sunrpc/extr_cache.c_cache_open.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/sunrpc/extr_cache.c_cache_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.file = type { i32, %struct.cache_reader* }
%struct.cache_reader = type { %struct.TYPE_2__, i64 }
%struct.TYPE_2__ = type { i32, i32 }
%struct.cache_detail = type { i32, i32, i32 }

@EACCES = common dso_local global i32 0, align 4
@FMODE_READ = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@queue_lock = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inode*, %struct.file*, %struct.cache_detail*)* @cache_open to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cache_open(%struct.inode* %0, %struct.file* %1, %struct.cache_detail* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.inode*, align 8
  %6 = alloca %struct.file*, align 8
  %7 = alloca %struct.cache_detail*, align 8
  %8 = alloca %struct.cache_reader*, align 8
  store %struct.inode* %0, %struct.inode** %5, align 8
  store %struct.file* %1, %struct.file** %6, align 8
  store %struct.cache_detail* %2, %struct.cache_detail** %7, align 8
  store %struct.cache_reader* null, %struct.cache_reader** %8, align 8
  %9 = load %struct.cache_detail*, %struct.cache_detail** %7, align 8
  %10 = icmp ne %struct.cache_detail* %9, null
  br i1 %10, label %11, label %17

11:                                               ; preds = %3
  %12 = load %struct.cache_detail*, %struct.cache_detail** %7, align 8
  %13 = getelementptr inbounds %struct.cache_detail, %struct.cache_detail* %12, i32 0, i32 2
  %14 = load i32, i32* %13, align 4
  %15 = call i32 @try_module_get(i32 %14)
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %20, label %17

17:                                               ; preds = %11, %3
  %18 = load i32, i32* @EACCES, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %4, align 4
  br label %59

20:                                               ; preds = %11
  %21 = load %struct.inode*, %struct.inode** %5, align 8
  %22 = load %struct.file*, %struct.file** %6, align 8
  %23 = call i32 @nonseekable_open(%struct.inode* %21, %struct.file* %22)
  %24 = load %struct.file*, %struct.file** %6, align 8
  %25 = getelementptr inbounds %struct.file, %struct.file* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = load i32, i32* @FMODE_READ, align 4
  %28 = and i32 %26, %27
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %55

30:                                               ; preds = %20
  %31 = load i32, i32* @GFP_KERNEL, align 4
  %32 = call %struct.cache_reader* @kmalloc(i32 16, i32 %31)
  store %struct.cache_reader* %32, %struct.cache_reader** %8, align 8
  %33 = load %struct.cache_reader*, %struct.cache_reader** %8, align 8
  %34 = icmp ne %struct.cache_reader* %33, null
  br i1 %34, label %38, label %35

35:                                               ; preds = %30
  %36 = load i32, i32* @ENOMEM, align 4
  %37 = sub nsw i32 0, %36
  store i32 %37, i32* %4, align 4
  br label %59

38:                                               ; preds = %30
  %39 = load %struct.cache_reader*, %struct.cache_reader** %8, align 8
  %40 = getelementptr inbounds %struct.cache_reader, %struct.cache_reader* %39, i32 0, i32 1
  store i64 0, i64* %40, align 8
  %41 = load %struct.cache_reader*, %struct.cache_reader** %8, align 8
  %42 = getelementptr inbounds %struct.cache_reader, %struct.cache_reader* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %42, i32 0, i32 0
  store i32 1, i32* %43, align 8
  %44 = load %struct.cache_detail*, %struct.cache_detail** %7, align 8
  %45 = getelementptr inbounds %struct.cache_detail, %struct.cache_detail* %44, i32 0, i32 1
  %46 = call i32 @atomic_inc(i32* %45)
  %47 = call i32 @spin_lock(i32* @queue_lock)
  %48 = load %struct.cache_reader*, %struct.cache_reader** %8, align 8
  %49 = getelementptr inbounds %struct.cache_reader, %struct.cache_reader* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %49, i32 0, i32 1
  %51 = load %struct.cache_detail*, %struct.cache_detail** %7, align 8
  %52 = getelementptr inbounds %struct.cache_detail, %struct.cache_detail* %51, i32 0, i32 0
  %53 = call i32 @list_add(i32* %50, i32* %52)
  %54 = call i32 @spin_unlock(i32* @queue_lock)
  br label %55

55:                                               ; preds = %38, %20
  %56 = load %struct.cache_reader*, %struct.cache_reader** %8, align 8
  %57 = load %struct.file*, %struct.file** %6, align 8
  %58 = getelementptr inbounds %struct.file, %struct.file* %57, i32 0, i32 1
  store %struct.cache_reader* %56, %struct.cache_reader** %58, align 8
  store i32 0, i32* %4, align 4
  br label %59

59:                                               ; preds = %55, %35, %17
  %60 = load i32, i32* %4, align 4
  ret i32 %60
}

declare dso_local i32 @try_module_get(i32) #1

declare dso_local i32 @nonseekable_open(%struct.inode*, %struct.file*) #1

declare dso_local %struct.cache_reader* @kmalloc(i32, i32) #1

declare dso_local i32 @atomic_inc(i32*) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @list_add(i32*, i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

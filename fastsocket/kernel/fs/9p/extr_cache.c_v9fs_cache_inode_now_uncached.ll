; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/9p/extr_cache.c_v9fs_cache_inode_now_uncached.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/9p/extr_cache.c_v9fs_cache_inode_now_uncached.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.v9fs_cookie = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }
%struct.pagevec = type { i32, %struct.TYPE_4__** }
%struct.TYPE_4__ = type { i64 }

@PAGEVEC_SIZE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @v9fs_cache_inode_now_uncached to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @v9fs_cache_inode_now_uncached(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.v9fs_cookie*, align 8
  %4 = alloca %struct.pagevec, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  %8 = load i8*, i8** %2, align 8
  %9 = bitcast i8* %8 to %struct.v9fs_cookie*
  store %struct.v9fs_cookie* %9, %struct.v9fs_cookie** %3, align 8
  %10 = call i32 @pagevec_init(%struct.pagevec* %4, i32 0)
  store i64 0, i64* %5, align 8
  br label %11

11:                                               ; preds = %40, %1
  %12 = load %struct.v9fs_cookie*, %struct.v9fs_cookie** %3, align 8
  %13 = getelementptr inbounds %struct.v9fs_cookie, %struct.v9fs_cookie* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = load i64, i64* %5, align 8
  %17 = load i64, i64* @PAGEVEC_SIZE, align 8
  %18 = call i64 @pagevec_count(%struct.pagevec* %4)
  %19 = sub nsw i64 %17, %18
  %20 = call i32 @pagevec_lookup(%struct.pagevec* %4, i32 %15, i64 %16, i64 %19)
  store i32 %20, i32* %7, align 4
  %21 = load i32, i32* %7, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %24, label %23

23:                                               ; preds = %11
  br label %55

24:                                               ; preds = %11
  store i32 0, i32* %6, align 4
  br label %25

25:                                               ; preds = %37, %24
  %26 = load i32, i32* %6, align 4
  %27 = load i32, i32* %7, align 4
  %28 = icmp slt i32 %26, %27
  br i1 %28, label %29, label %40

29:                                               ; preds = %25
  %30 = getelementptr inbounds %struct.pagevec, %struct.pagevec* %4, i32 0, i32 1
  %31 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %30, align 8
  %32 = load i32, i32* %6, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %31, i64 %33
  %35 = load %struct.TYPE_4__*, %struct.TYPE_4__** %34, align 8
  %36 = call i32 @ClearPageFsCache(%struct.TYPE_4__* %35)
  br label %37

37:                                               ; preds = %29
  %38 = load i32, i32* %6, align 4
  %39 = add nsw i32 %38, 1
  store i32 %39, i32* %6, align 4
  br label %25

40:                                               ; preds = %25
  %41 = getelementptr inbounds %struct.pagevec, %struct.pagevec* %4, i32 0, i32 1
  %42 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %41, align 8
  %43 = load i32, i32* %7, align 4
  %44 = sub nsw i32 %43, 1
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %42, i64 %45
  %47 = load %struct.TYPE_4__*, %struct.TYPE_4__** %46, align 8
  %48 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = add nsw i64 %49, 1
  store i64 %50, i64* %5, align 8
  %51 = load i32, i32* %7, align 4
  %52 = getelementptr inbounds %struct.pagevec, %struct.pagevec* %4, i32 0, i32 0
  store i32 %51, i32* %52, align 8
  %53 = call i32 @pagevec_release(%struct.pagevec* %4)
  %54 = call i32 (...) @cond_resched()
  br label %11

55:                                               ; preds = %23
  ret void
}

declare dso_local i32 @pagevec_init(%struct.pagevec*, i32) #1

declare dso_local i32 @pagevec_lookup(%struct.pagevec*, i32, i64, i64) #1

declare dso_local i64 @pagevec_count(%struct.pagevec*) #1

declare dso_local i32 @ClearPageFsCache(%struct.TYPE_4__*) #1

declare dso_local i32 @pagevec_release(%struct.pagevec*) #1

declare dso_local i32 @cond_resched(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

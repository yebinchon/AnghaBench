; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/afs/extr_cache.c_afs_vnode_cache_now_uncached.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/afs/extr_cache.c_afs_vnode_cache_now_uncached.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.afs_vnode = type { %struct.TYPE_7__, %struct.TYPE_6__, %struct.TYPE_5__ }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_5__ = type { i32, i32 }
%struct.pagevec = type { i32, %struct.TYPE_8__** }
%struct.TYPE_8__ = type { i64 }

@.str = private unnamed_addr constant [12 x i8] c"{%x,%x,%Lx}\00", align 1
@PAGEVEC_SIZE = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @afs_vnode_cache_now_uncached to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @afs_vnode_cache_now_uncached(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.afs_vnode*, align 8
  %4 = alloca %struct.pagevec, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  %8 = load i8*, i8** %2, align 8
  %9 = bitcast i8* %8 to %struct.afs_vnode*
  store %struct.afs_vnode* %9, %struct.afs_vnode** %3, align 8
  %10 = load %struct.afs_vnode*, %struct.afs_vnode** %3, align 8
  %11 = getelementptr inbounds %struct.afs_vnode, %struct.afs_vnode* %10, i32 0, i32 2
  %12 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %11, i32 0, i32 1
  %13 = load i32, i32* %12, align 4
  %14 = load %struct.afs_vnode*, %struct.afs_vnode** %3, align 8
  %15 = getelementptr inbounds %struct.afs_vnode, %struct.afs_vnode* %14, i32 0, i32 2
  %16 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = load %struct.afs_vnode*, %struct.afs_vnode** %3, align 8
  %19 = getelementptr inbounds %struct.afs_vnode, %struct.afs_vnode* %18, i32 0, i32 1
  %20 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = call i32 @_enter(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i32 %13, i32 %17, i32 %21)
  %23 = call i32 @pagevec_init(%struct.pagevec* %4, i32 0)
  store i64 0, i64* %5, align 8
  br label %24

24:                                               ; preds = %53, %1
  %25 = load %struct.afs_vnode*, %struct.afs_vnode** %3, align 8
  %26 = getelementptr inbounds %struct.afs_vnode, %struct.afs_vnode* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = load i64, i64* %5, align 8
  %30 = load i64, i64* @PAGEVEC_SIZE, align 8
  %31 = call i64 @pagevec_count(%struct.pagevec* %4)
  %32 = sub nsw i64 %30, %31
  %33 = call i32 @pagevec_lookup(%struct.pagevec* %4, i32 %28, i64 %29, i64 %32)
  store i32 %33, i32* %7, align 4
  %34 = load i32, i32* %7, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %37, label %36

36:                                               ; preds = %24
  br label %68

37:                                               ; preds = %24
  store i32 0, i32* %6, align 4
  br label %38

38:                                               ; preds = %50, %37
  %39 = load i32, i32* %6, align 4
  %40 = load i32, i32* %7, align 4
  %41 = icmp slt i32 %39, %40
  br i1 %41, label %42, label %53

42:                                               ; preds = %38
  %43 = getelementptr inbounds %struct.pagevec, %struct.pagevec* %4, i32 0, i32 1
  %44 = load %struct.TYPE_8__**, %struct.TYPE_8__*** %43, align 8
  %45 = load i32, i32* %6, align 4
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds %struct.TYPE_8__*, %struct.TYPE_8__** %44, i64 %46
  %48 = load %struct.TYPE_8__*, %struct.TYPE_8__** %47, align 8
  %49 = call i32 @ClearPageFsCache(%struct.TYPE_8__* %48)
  br label %50

50:                                               ; preds = %42
  %51 = load i32, i32* %6, align 4
  %52 = add nsw i32 %51, 1
  store i32 %52, i32* %6, align 4
  br label %38

53:                                               ; preds = %38
  %54 = getelementptr inbounds %struct.pagevec, %struct.pagevec* %4, i32 0, i32 1
  %55 = load %struct.TYPE_8__**, %struct.TYPE_8__*** %54, align 8
  %56 = load i32, i32* %7, align 4
  %57 = sub nsw i32 %56, 1
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds %struct.TYPE_8__*, %struct.TYPE_8__** %55, i64 %58
  %60 = load %struct.TYPE_8__*, %struct.TYPE_8__** %59, align 8
  %61 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %60, i32 0, i32 0
  %62 = load i64, i64* %61, align 8
  %63 = add nsw i64 %62, 1
  store i64 %63, i64* %5, align 8
  %64 = load i32, i32* %7, align 4
  %65 = getelementptr inbounds %struct.pagevec, %struct.pagevec* %4, i32 0, i32 0
  store i32 %64, i32* %65, align 8
  %66 = call i32 @pagevec_release(%struct.pagevec* %4)
  %67 = call i32 (...) @cond_resched()
  br label %24

68:                                               ; preds = %36
  %69 = call i32 @_leave(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0))
  ret void
}

declare dso_local i32 @_enter(i8*, i32, i32, i32) #1

declare dso_local i32 @pagevec_init(%struct.pagevec*, i32) #1

declare dso_local i32 @pagevec_lookup(%struct.pagevec*, i32, i64, i64) #1

declare dso_local i64 @pagevec_count(%struct.pagevec*) #1

declare dso_local i32 @ClearPageFsCache(%struct.TYPE_8__*) #1

declare dso_local i32 @pagevec_release(%struct.pagevec*) #1

declare dso_local i32 @cond_resched(...) #1

declare dso_local i32 @_leave(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

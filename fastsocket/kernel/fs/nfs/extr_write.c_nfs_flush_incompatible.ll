; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/nfs/extr_write.c_nfs_flush_incompatible.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/nfs/extr_write.c_nfs_flush_incompatible.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i64, i64 }
%struct.file = type { i32 }
%struct.page = type { %struct.TYPE_9__* }
%struct.TYPE_9__ = type { i32 }
%struct.nfs_open_context = type { %struct.TYPE_7__* }
%struct.TYPE_7__ = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32* }
%struct.nfs_lock_context = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i64, i64 }
%struct.nfs_page = type { %struct.nfs_open_context*, %struct.page*, %struct.nfs_lock_context* }

@current = common dso_local global %struct.TYPE_10__* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nfs_flush_incompatible(%struct.file* %0, %struct.page* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.file*, align 8
  %5 = alloca %struct.page*, align 8
  %6 = alloca %struct.nfs_open_context*, align 8
  %7 = alloca %struct.nfs_lock_context*, align 8
  %8 = alloca %struct.nfs_page*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.file* %0, %struct.file** %4, align 8
  store %struct.page* %1, %struct.page** %5, align 8
  %11 = load %struct.file*, %struct.file** %4, align 8
  %12 = call %struct.nfs_open_context* @nfs_file_open_context(%struct.file* %11)
  store %struct.nfs_open_context* %12, %struct.nfs_open_context** %6, align 8
  br label %13

13:                                               ; preds = %85, %2
  %14 = load %struct.page*, %struct.page** %5, align 8
  %15 = call %struct.nfs_page* @nfs_page_find_request(%struct.page* %14)
  store %struct.nfs_page* %15, %struct.nfs_page** %8, align 8
  %16 = load %struct.nfs_page*, %struct.nfs_page** %8, align 8
  %17 = icmp eq %struct.nfs_page* %16, null
  br i1 %17, label %18, label %19

18:                                               ; preds = %13
  store i32 0, i32* %3, align 4
  br label %90

19:                                               ; preds = %13
  %20 = load %struct.nfs_page*, %struct.nfs_page** %8, align 8
  %21 = getelementptr inbounds %struct.nfs_page, %struct.nfs_page* %20, i32 0, i32 2
  %22 = load %struct.nfs_lock_context*, %struct.nfs_lock_context** %21, align 8
  store %struct.nfs_lock_context* %22, %struct.nfs_lock_context** %7, align 8
  %23 = load %struct.nfs_page*, %struct.nfs_page** %8, align 8
  %24 = getelementptr inbounds %struct.nfs_page, %struct.nfs_page* %23, i32 0, i32 1
  %25 = load %struct.page*, %struct.page** %24, align 8
  %26 = load %struct.page*, %struct.page** %5, align 8
  %27 = icmp ne %struct.page* %25, %26
  br i1 %27, label %34, label %28

28:                                               ; preds = %19
  %29 = load %struct.nfs_page*, %struct.nfs_page** %8, align 8
  %30 = getelementptr inbounds %struct.nfs_page, %struct.nfs_page* %29, i32 0, i32 0
  %31 = load %struct.nfs_open_context*, %struct.nfs_open_context** %30, align 8
  %32 = load %struct.nfs_open_context*, %struct.nfs_open_context** %6, align 8
  %33 = icmp ne %struct.nfs_open_context* %31, %32
  br label %34

34:                                               ; preds = %28, %19
  %35 = phi i1 [ true, %19 ], [ %33, %28 ]
  %36 = zext i1 %35 to i32
  store i32 %36, i32* %9, align 4
  %37 = load %struct.nfs_lock_context*, %struct.nfs_lock_context** %7, align 8
  %38 = icmp ne %struct.nfs_lock_context* %37, null
  br i1 %38, label %39, label %71

39:                                               ; preds = %34
  %40 = load %struct.nfs_open_context*, %struct.nfs_open_context** %6, align 8
  %41 = getelementptr inbounds %struct.nfs_open_context, %struct.nfs_open_context* %40, i32 0, i32 0
  %42 = load %struct.TYPE_7__*, %struct.TYPE_7__** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %42, i32 0, i32 0
  %44 = load %struct.TYPE_6__*, %struct.TYPE_6__** %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %44, i32 0, i32 0
  %46 = load i32*, i32** %45, align 8
  %47 = icmp ne i32* %46, null
  br i1 %47, label %48, label %71

48:                                               ; preds = %39
  %49 = load %struct.nfs_lock_context*, %struct.nfs_lock_context** %7, align 8
  %50 = getelementptr inbounds %struct.nfs_lock_context, %struct.nfs_lock_context* %49, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = load %struct.TYPE_10__*, %struct.TYPE_10__** @current, align 8
  %54 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %53, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  %56 = icmp ne i64 %52, %55
  br i1 %56, label %66, label %57

57:                                               ; preds = %48
  %58 = load %struct.nfs_lock_context*, %struct.nfs_lock_context** %7, align 8
  %59 = getelementptr inbounds %struct.nfs_lock_context, %struct.nfs_lock_context* %58, i32 0, i32 0
  %60 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %59, i32 0, i32 1
  %61 = load i64, i64* %60, align 8
  %62 = load %struct.TYPE_10__*, %struct.TYPE_10__** @current, align 8
  %63 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %62, i32 0, i32 1
  %64 = load i64, i64* %63, align 8
  %65 = icmp ne i64 %61, %64
  br label %66

66:                                               ; preds = %57, %48
  %67 = phi i1 [ true, %48 ], [ %65, %57 ]
  %68 = zext i1 %67 to i32
  %69 = load i32, i32* %9, align 4
  %70 = or i32 %69, %68
  store i32 %70, i32* %9, align 4
  br label %71

71:                                               ; preds = %66, %39, %34
  %72 = load %struct.nfs_page*, %struct.nfs_page** %8, align 8
  %73 = call i32 @nfs_release_request(%struct.nfs_page* %72)
  %74 = load i32, i32* %9, align 4
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %77, label %76

76:                                               ; preds = %71
  store i32 0, i32* %3, align 4
  br label %90

77:                                               ; preds = %71
  %78 = load %struct.page*, %struct.page** %5, align 8
  %79 = getelementptr inbounds %struct.page, %struct.page* %78, i32 0, i32 0
  %80 = load %struct.TYPE_9__*, %struct.TYPE_9__** %79, align 8
  %81 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 4
  %83 = load %struct.page*, %struct.page** %5, align 8
  %84 = call i32 @nfs_wb_page(i32 %82, %struct.page* %83)
  store i32 %84, i32* %10, align 4
  br label %85

85:                                               ; preds = %77
  %86 = load i32, i32* %10, align 4
  %87 = icmp eq i32 %86, 0
  br i1 %87, label %13, label %88

88:                                               ; preds = %85
  %89 = load i32, i32* %10, align 4
  store i32 %89, i32* %3, align 4
  br label %90

90:                                               ; preds = %88, %76, %18
  %91 = load i32, i32* %3, align 4
  ret i32 %91
}

declare dso_local %struct.nfs_open_context* @nfs_file_open_context(%struct.file*) #1

declare dso_local %struct.nfs_page* @nfs_page_find_request(%struct.page*) #1

declare dso_local i32 @nfs_release_request(%struct.nfs_page*) #1

declare dso_local i32 @nfs_wb_page(i32, %struct.page*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

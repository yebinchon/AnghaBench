; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/xfs/extr_xfs_mru_cache.c_xfs_mru_cache_remove.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/xfs/extr_xfs_mru_cache.c_xfs_mru_cache_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, i32, i64 }
%struct.TYPE_7__ = type { i32, i8* }

@xfs_mru_elem_zone = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @xfs_mru_cache_remove(%struct.TYPE_6__* %0, i64 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca %struct.TYPE_6__*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.TYPE_7__*, align 8
  %7 = alloca i8*, align 8
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %4, align 8
  store i64 %1, i64* %5, align 8
  store i8* null, i8** %7, align 8
  %8 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %9 = icmp ne %struct.TYPE_6__* %8, null
  br i1 %9, label %10, label %15

10:                                               ; preds = %2
  %11 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %12 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %11, i32 0, i32 2
  %13 = load i64, i64* %12, align 8
  %14 = icmp ne i64 %13, 0
  br label %15

15:                                               ; preds = %10, %2
  %16 = phi i1 [ false, %2 ], [ %14, %10 ]
  %17 = zext i1 %16 to i32
  %18 = call i32 @ASSERT(i32 %17)
  %19 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %20 = icmp ne %struct.TYPE_6__* %19, null
  br i1 %20, label %21, label %26

21:                                               ; preds = %15
  %22 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %23 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %22, i32 0, i32 2
  %24 = load i64, i64* %23, align 8
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %27, label %26

26:                                               ; preds = %21, %15
  store i8* null, i8** %3, align 8
  br label %56

27:                                               ; preds = %21
  %28 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %29 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %28, i32 0, i32 0
  %30 = call i32 @spin_lock(i32* %29)
  %31 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %32 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %31, i32 0, i32 1
  %33 = load i64, i64* %5, align 8
  %34 = call %struct.TYPE_7__* @radix_tree_delete(i32* %32, i64 %33)
  store %struct.TYPE_7__* %34, %struct.TYPE_7__** %6, align 8
  %35 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %36 = icmp ne %struct.TYPE_7__* %35, null
  br i1 %36, label %37, label %44

37:                                               ; preds = %27
  %38 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %39 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %38, i32 0, i32 1
  %40 = load i8*, i8** %39, align 8
  store i8* %40, i8** %7, align 8
  %41 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %42 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %41, i32 0, i32 0
  %43 = call i32 @list_del(i32* %42)
  br label %44

44:                                               ; preds = %37, %27
  %45 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %46 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %45, i32 0, i32 0
  %47 = call i32 @spin_unlock(i32* %46)
  %48 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %49 = icmp ne %struct.TYPE_7__* %48, null
  br i1 %49, label %50, label %54

50:                                               ; preds = %44
  %51 = load i32, i32* @xfs_mru_elem_zone, align 4
  %52 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %53 = call i32 @kmem_zone_free(i32 %51, %struct.TYPE_7__* %52)
  br label %54

54:                                               ; preds = %50, %44
  %55 = load i8*, i8** %7, align 8
  store i8* %55, i8** %3, align 8
  br label %56

56:                                               ; preds = %54, %26
  %57 = load i8*, i8** %3, align 8
  ret i8* %57
}

declare dso_local i32 @ASSERT(i32) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local %struct.TYPE_7__* @radix_tree_delete(i32*, i64) #1

declare dso_local i32 @list_del(i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @kmem_zone_free(i32, %struct.TYPE_7__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

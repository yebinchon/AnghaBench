; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_dcache.c_dcache_invalidate.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_dcache.c_dcache_invalidate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { %struct.dcache_block*, %struct.dcache_block*, %struct.dcache_block*, i64, i64 }
%struct.dcache_block = type { %struct.dcache_block* }

@DCACHE_SIZE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @dcache_invalidate(%struct.TYPE_3__* %0) #0 {
  %2 = alloca %struct.TYPE_3__*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.dcache_block*, align 8
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %2, align 8
  %5 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %6 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %5, i32 0, i32 4
  store i64 0, i64* %6, align 8
  %7 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %8 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %7, i32 0, i32 3
  store i64 0, i64* %8, align 8
  %9 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %10 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %9, i32 0, i32 1
  store %struct.dcache_block* null, %struct.dcache_block** %10, align 8
  %11 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %12 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %11, i32 0, i32 0
  store %struct.dcache_block* null, %struct.dcache_block** %12, align 8
  store i32 0, i32* %3, align 4
  br label %13

13:                                               ; preds = %44, %1
  %14 = load i32, i32* %3, align 4
  %15 = load i32, i32* @DCACHE_SIZE, align 4
  %16 = icmp slt i32 %14, %15
  br i1 %16, label %17, label %47

17:                                               ; preds = %13
  %18 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %19 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %18, i32 0, i32 2
  %20 = load %struct.dcache_block*, %struct.dcache_block** %19, align 8
  %21 = load i32, i32* %3, align 4
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds %struct.dcache_block, %struct.dcache_block* %20, i64 %22
  store %struct.dcache_block* %23, %struct.dcache_block** %4, align 8
  %24 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %25 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %24, i32 0, i32 1
  %26 = load %struct.dcache_block*, %struct.dcache_block** %25, align 8
  %27 = icmp ne %struct.dcache_block* %26, null
  br i1 %27, label %32, label %28

28:                                               ; preds = %17
  %29 = load %struct.dcache_block*, %struct.dcache_block** %4, align 8
  %30 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %31 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %30, i32 0, i32 1
  store %struct.dcache_block* %29, %struct.dcache_block** %31, align 8
  br label %38

32:                                               ; preds = %17
  %33 = load %struct.dcache_block*, %struct.dcache_block** %4, align 8
  %34 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %35 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %34, i32 0, i32 0
  %36 = load %struct.dcache_block*, %struct.dcache_block** %35, align 8
  %37 = getelementptr inbounds %struct.dcache_block, %struct.dcache_block* %36, i32 0, i32 0
  store %struct.dcache_block* %33, %struct.dcache_block** %37, align 8
  br label %38

38:                                               ; preds = %32, %28
  %39 = load %struct.dcache_block*, %struct.dcache_block** %4, align 8
  %40 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %41 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %40, i32 0, i32 0
  store %struct.dcache_block* %39, %struct.dcache_block** %41, align 8
  %42 = load %struct.dcache_block*, %struct.dcache_block** %4, align 8
  %43 = getelementptr inbounds %struct.dcache_block, %struct.dcache_block* %42, i32 0, i32 0
  store %struct.dcache_block* null, %struct.dcache_block** %43, align 8
  br label %44

44:                                               ; preds = %38
  %45 = load i32, i32* %3, align 4
  %46 = add nsw i32 %45, 1
  store i32 %46, i32* %3, align 4
  br label %13

47:                                               ; preds = %13
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

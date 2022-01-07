; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_dcache.c_dcache_hit.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_dcache.c_dcache_hit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dcache_block = type { i64, %struct.dcache_block*, i32 }
%struct.TYPE_3__ = type { %struct.dcache_block* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.dcache_block* (%struct.TYPE_3__*, i32)* @dcache_hit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.dcache_block* @dcache_hit(%struct.TYPE_3__* %0, i32 %1) #0 {
  %3 = alloca %struct.dcache_block*, align 8
  %4 = alloca %struct.TYPE_3__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.dcache_block*, align 8
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %8 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %7, i32 0, i32 0
  %9 = load %struct.dcache_block*, %struct.dcache_block** %8, align 8
  store %struct.dcache_block* %9, %struct.dcache_block** %6, align 8
  br label %10

10:                                               ; preds = %26, %2
  %11 = load %struct.dcache_block*, %struct.dcache_block** %6, align 8
  %12 = icmp ne %struct.dcache_block* %11, null
  br i1 %12, label %13, label %30

13:                                               ; preds = %10
  %14 = load i32, i32* %5, align 4
  %15 = call i64 @MASK(i32 %14)
  %16 = load %struct.dcache_block*, %struct.dcache_block** %6, align 8
  %17 = getelementptr inbounds %struct.dcache_block, %struct.dcache_block* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = icmp eq i64 %15, %18
  br i1 %19, label %20, label %26

20:                                               ; preds = %13
  %21 = load %struct.dcache_block*, %struct.dcache_block** %6, align 8
  %22 = getelementptr inbounds %struct.dcache_block, %struct.dcache_block* %21, i32 0, i32 2
  %23 = load i32, i32* %22, align 8
  %24 = add nsw i32 %23, 1
  store i32 %24, i32* %22, align 8
  %25 = load %struct.dcache_block*, %struct.dcache_block** %6, align 8
  store %struct.dcache_block* %25, %struct.dcache_block** %3, align 8
  br label %31

26:                                               ; preds = %13
  %27 = load %struct.dcache_block*, %struct.dcache_block** %6, align 8
  %28 = getelementptr inbounds %struct.dcache_block, %struct.dcache_block* %27, i32 0, i32 1
  %29 = load %struct.dcache_block*, %struct.dcache_block** %28, align 8
  store %struct.dcache_block* %29, %struct.dcache_block** %6, align 8
  br label %10

30:                                               ; preds = %10
  store %struct.dcache_block* null, %struct.dcache_block** %3, align 8
  br label %31

31:                                               ; preds = %30, %20
  %32 = load %struct.dcache_block*, %struct.dcache_block** %3, align 8
  ret %struct.dcache_block* %32
}

declare dso_local i64 @MASK(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_dcache.c_dcache_init.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_dcache.c_dcache_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { %struct.dcache_block* }
%struct.dcache_block = type { i32 }

@DCACHE_SIZE = common dso_local global i32 0, align 4
@last_cache = common dso_local global %struct.TYPE_5__* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_5__* @dcache_init() #0 {
  %1 = alloca i32, align 4
  %2 = alloca %struct.TYPE_5__*, align 8
  %3 = load i32, i32* @DCACHE_SIZE, align 4
  %4 = sext i32 %3 to i64
  %5 = mul i64 4, %4
  %6 = trunc i64 %5 to i32
  store i32 %6, i32* %1, align 4
  %7 = call i64 @xmalloc(i32 8)
  %8 = inttoptr i64 %7 to %struct.TYPE_5__*
  store %struct.TYPE_5__* %8, %struct.TYPE_5__** %2, align 8
  %9 = load i32, i32* %1, align 4
  %10 = call i64 @xmalloc(i32 %9)
  %11 = inttoptr i64 %10 to %struct.dcache_block*
  %12 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %13 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %12, i32 0, i32 0
  store %struct.dcache_block* %11, %struct.dcache_block** %13, align 8
  %14 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %15 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %14, i32 0, i32 0
  %16 = load %struct.dcache_block*, %struct.dcache_block** %15, align 8
  %17 = load i32, i32* %1, align 4
  %18 = call i32 @memset(%struct.dcache_block* %16, i32 0, i32 %17)
  %19 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %20 = call i32 @dcache_invalidate(%struct.TYPE_5__* %19)
  %21 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  store %struct.TYPE_5__* %21, %struct.TYPE_5__** @last_cache, align 8
  %22 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  ret %struct.TYPE_5__* %22
}

declare dso_local i64 @xmalloc(i32) #1

declare dso_local i32 @memset(%struct.dcache_block*, i32, i32) #1

declare dso_local i32 @dcache_invalidate(%struct.TYPE_5__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/bfd/extr_cache.c_close_one.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/bfd/extr_cache.c_close_one.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i64, i32, i64, i32, %struct.TYPE_5__*, i32 }

@bfd_last_cache = common dso_local global %struct.TYPE_5__* null, align 8
@TRUE = common dso_local global i32 0, align 4
@no_direction = common dso_local global i64 0, align 8
@read_direction = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @close_one to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @close_one() #0 {
  %1 = alloca i32, align 4
  %2 = alloca %struct.TYPE_5__*, align 8
  %3 = load %struct.TYPE_5__*, %struct.TYPE_5__** @bfd_last_cache, align 8
  %4 = icmp eq %struct.TYPE_5__* %3, null
  br i1 %4, label %5, label %6

5:                                                ; preds = %0
  store %struct.TYPE_5__* null, %struct.TYPE_5__** %2, align 8
  br label %27

6:                                                ; preds = %0
  %7 = load %struct.TYPE_5__*, %struct.TYPE_5__** @bfd_last_cache, align 8
  %8 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %7, i32 0, i32 4
  %9 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  store %struct.TYPE_5__* %9, %struct.TYPE_5__** %2, align 8
  br label %10

10:                                               ; preds = %22, %6
  %11 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %12 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %11, i32 0, i32 5
  %13 = load i32, i32* %12, align 8
  %14 = icmp ne i32 %13, 0
  %15 = xor i1 %14, true
  br i1 %15, label %16, label %26

16:                                               ; preds = %10
  %17 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %18 = load %struct.TYPE_5__*, %struct.TYPE_5__** @bfd_last_cache, align 8
  %19 = icmp eq %struct.TYPE_5__* %17, %18
  br i1 %19, label %20, label %21

20:                                               ; preds = %16
  store %struct.TYPE_5__* null, %struct.TYPE_5__** %2, align 8
  br label %26

21:                                               ; preds = %16
  br label %22

22:                                               ; preds = %21
  %23 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %24 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %23, i32 0, i32 4
  %25 = load %struct.TYPE_5__*, %struct.TYPE_5__** %24, align 8
  store %struct.TYPE_5__* %25, %struct.TYPE_5__** %2, align 8
  br label %10

26:                                               ; preds = %20, %10
  br label %27

27:                                               ; preds = %26, %5
  %28 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %29 = icmp eq %struct.TYPE_5__* %28, null
  br i1 %29, label %30, label %32

30:                                               ; preds = %27
  %31 = load i32, i32* @TRUE, align 4
  store i32 %31, i32* %1, align 4
  br label %60

32:                                               ; preds = %27
  %33 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %34 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %33, i32 0, i32 2
  %35 = load i64, i64* %34, align 8
  %36 = inttoptr i64 %35 to i32*
  %37 = call i32 @real_ftell(i32* %36)
  %38 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %39 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %38, i32 0, i32 3
  store i32 %37, i32* %39, align 8
  %40 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %41 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = load i64, i64* @no_direction, align 8
  %44 = icmp eq i64 %42, %43
  br i1 %44, label %51, label %45

45:                                               ; preds = %32
  %46 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %47 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = load i64, i64* @read_direction, align 8
  %50 = icmp eq i64 %48, %49
  br i1 %50, label %51, label %57

51:                                               ; preds = %45, %32
  %52 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %53 = call i32 @bfd_get_mtime(%struct.TYPE_5__* %52)
  %54 = load i32, i32* @TRUE, align 4
  %55 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %56 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %55, i32 0, i32 1
  store i32 %54, i32* %56, align 8
  br label %57

57:                                               ; preds = %51, %45
  %58 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %59 = call i32 @bfd_cache_delete(%struct.TYPE_5__* %58)
  store i32 %59, i32* %1, align 4
  br label %60

60:                                               ; preds = %57, %30
  %61 = load i32, i32* %1, align 4
  ret i32 %61
}

declare dso_local i32 @real_ftell(i32*) #1

declare dso_local i32 @bfd_get_mtime(%struct.TYPE_5__*) #1

declare dso_local i32 @bfd_cache_delete(%struct.TYPE_5__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

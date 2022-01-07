; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/bfd/extr_cache.c_bfd_cache_init.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/bfd/extr_cache.c_bfd_cache_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32*, i32* }

@open_files = common dso_local global i64 0, align 8
@BFD_CACHE_MAX_OPEN = common dso_local global i64 0, align 8
@FALSE = common dso_local global i32 0, align 4
@cache_iovec = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @bfd_cache_init(%struct.TYPE_4__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_4__*, align 8
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %3, align 8
  %4 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %5 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %4, i32 0, i32 1
  %6 = load i32*, i32** %5, align 8
  %7 = icmp ne i32* %6, null
  %8 = zext i1 %7 to i32
  %9 = call i32 @BFD_ASSERT(i32 %8)
  %10 = load i64, i64* @open_files, align 8
  %11 = load i64, i64* @BFD_CACHE_MAX_OPEN, align 8
  %12 = icmp sge i64 %10, %11
  br i1 %12, label %13, label %19

13:                                               ; preds = %1
  %14 = call i32 (...) @close_one()
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %18, label %16

16:                                               ; preds = %13
  %17 = load i32, i32* @FALSE, align 4
  store i32 %17, i32* %2, align 4
  br label %27

18:                                               ; preds = %13
  br label %19

19:                                               ; preds = %18, %1
  %20 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 0
  store i32* @cache_iovec, i32** %21, align 8
  %22 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %23 = call i32 @insert(%struct.TYPE_4__* %22)
  %24 = load i64, i64* @open_files, align 8
  %25 = add nsw i64 %24, 1
  store i64 %25, i64* @open_files, align 8
  %26 = load i32, i32* @TRUE, align 4
  store i32 %26, i32* %2, align 4
  br label %27

27:                                               ; preds = %19, %16
  %28 = load i32, i32* %2, align 4
  ret i32 %28
}

declare dso_local i32 @BFD_ASSERT(i32) #1

declare dso_local i32 @close_one(...) #1

declare dso_local i32 @insert(%struct.TYPE_4__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

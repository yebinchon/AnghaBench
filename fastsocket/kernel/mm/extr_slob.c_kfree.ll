; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/mm/extr_slob.c_kfree.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/mm/extr_slob.c_kfree.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.slob_page = type { i32 }

@_RET_IP_ = common dso_local global i32 0, align 4
@ARCH_KMALLOC_MINALIGN = common dso_local global i32 0, align 4
@ARCH_SLAB_MINALIGN = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @kfree(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.slob_page*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  store i8* %0, i8** %2, align 8
  %6 = load i32, i32* @_RET_IP_, align 4
  %7 = load i8*, i8** %2, align 8
  %8 = call i32 @trace_kfree(i32 %6, i8* %7)
  %9 = load i8*, i8** %2, align 8
  %10 = call i32 @ZERO_OR_NULL_PTR(i8* %9)
  %11 = call i64 @unlikely(i32 %10)
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %14

13:                                               ; preds = %1
  br label %42

14:                                               ; preds = %1
  %15 = load i8*, i8** %2, align 8
  %16 = call i32 @kmemleak_free(i8* %15)
  %17 = load i8*, i8** %2, align 8
  %18 = call %struct.slob_page* @slob_page(i8* %17)
  store %struct.slob_page* %18, %struct.slob_page** %3, align 8
  %19 = load %struct.slob_page*, %struct.slob_page** %3, align 8
  %20 = call i64 @is_slob_page(%struct.slob_page* %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %38

22:                                               ; preds = %14
  %23 = load i32, i32* @ARCH_KMALLOC_MINALIGN, align 4
  %24 = load i32, i32* @ARCH_SLAB_MINALIGN, align 4
  %25 = call i32 @max(i32 %23, i32 %24)
  store i32 %25, i32* %4, align 4
  %26 = load i8*, i8** %2, align 8
  %27 = load i32, i32* %4, align 4
  %28 = sext i32 %27 to i64
  %29 = sub i64 0, %28
  %30 = getelementptr i8, i8* %26, i64 %29
  %31 = bitcast i8* %30 to i32*
  store i32* %31, i32** %5, align 8
  %32 = load i32*, i32** %5, align 8
  %33 = load i32*, i32** %5, align 8
  %34 = load i32, i32* %33, align 4
  %35 = load i32, i32* %4, align 4
  %36 = add i32 %34, %35
  %37 = call i32 @slob_free(i32* %32, i32 %36)
  br label %42

38:                                               ; preds = %14
  %39 = load %struct.slob_page*, %struct.slob_page** %3, align 8
  %40 = getelementptr inbounds %struct.slob_page, %struct.slob_page* %39, i32 0, i32 0
  %41 = call i32 @put_page(i32* %40)
  br label %42

42:                                               ; preds = %13, %38, %22
  ret void
}

declare dso_local i32 @trace_kfree(i32, i8*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @ZERO_OR_NULL_PTR(i8*) #1

declare dso_local i32 @kmemleak_free(i8*) #1

declare dso_local %struct.slob_page* @slob_page(i8*) #1

declare dso_local i64 @is_slob_page(%struct.slob_page*) #1

declare dso_local i32 @max(i32, i32) #1

declare dso_local i32 @slob_free(i32*, i32) #1

declare dso_local i32 @put_page(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

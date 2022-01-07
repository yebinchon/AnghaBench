; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/mm/extr_slub.c_kfree.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/mm/extr_slub.c_kfree.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.page = type { i32 }

@_RET_IP_ = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @kfree(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.page*, align 8
  %4 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  %5 = load i8*, i8** %2, align 8
  store i8* %5, i8** %4, align 8
  %6 = load i32, i32* @_RET_IP_, align 4
  %7 = load i8*, i8** %2, align 8
  %8 = call i32 @trace_kfree(i32 %6, i8* %7)
  %9 = load i8*, i8** %2, align 8
  %10 = call i32 @ZERO_OR_NULL_PTR(i8* %9)
  %11 = call i64 @unlikely(i32 %10)
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %14

13:                                               ; preds = %1
  br label %43

14:                                               ; preds = %1
  %15 = load i8*, i8** %2, align 8
  %16 = call %struct.page* @virt_to_head_page(i8* %15)
  store %struct.page* %16, %struct.page** %3, align 8
  %17 = load %struct.page*, %struct.page** %3, align 8
  %18 = call i32 @PageSlab(%struct.page* %17)
  %19 = icmp ne i32 %18, 0
  %20 = xor i1 %19, true
  %21 = zext i1 %20 to i32
  %22 = call i64 @unlikely(i32 %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %35

24:                                               ; preds = %14
  %25 = load %struct.page*, %struct.page** %3, align 8
  %26 = call i32 @PageCompound(%struct.page* %25)
  %27 = icmp ne i32 %26, 0
  %28 = xor i1 %27, true
  %29 = zext i1 %28 to i32
  %30 = call i32 @BUG_ON(i32 %29)
  %31 = load i8*, i8** %2, align 8
  %32 = call i32 @kmemleak_free(i8* %31)
  %33 = load %struct.page*, %struct.page** %3, align 8
  %34 = call i32 @put_page(%struct.page* %33)
  br label %43

35:                                               ; preds = %14
  %36 = load %struct.page*, %struct.page** %3, align 8
  %37 = getelementptr inbounds %struct.page, %struct.page* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = load %struct.page*, %struct.page** %3, align 8
  %40 = load i8*, i8** %4, align 8
  %41 = load i32, i32* @_RET_IP_, align 4
  %42 = call i32 @slab_free(i32 %38, %struct.page* %39, i8* %40, i32 %41)
  br label %43

43:                                               ; preds = %35, %24, %13
  ret void
}

declare dso_local i32 @trace_kfree(i32, i8*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @ZERO_OR_NULL_PTR(i8*) #1

declare dso_local %struct.page* @virt_to_head_page(i8*) #1

declare dso_local i32 @PageSlab(%struct.page*) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @PageCompound(%struct.page*) #1

declare dso_local i32 @kmemleak_free(i8*) #1

declare dso_local i32 @put_page(%struct.page*) #1

declare dso_local i32 @slab_free(i32, %struct.page*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

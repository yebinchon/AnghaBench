; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/xfrm/extr_xfrm_hash.c_xfrm_hash_alloc.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/xfrm/extr_xfrm_hash.c_xfrm_hash_alloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hlist_head = type { i32 }

@PAGE_SIZE = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@hashdist = common dso_local global i64 0, align 8
@__GFP_ZERO = common dso_local global i32 0, align 4
@PAGE_KERNEL = common dso_local global i32 0, align 4
@__GFP_NOWARN = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.hlist_head* @xfrm_hash_alloc(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.hlist_head*, align 8
  store i32 %0, i32* %2, align 4
  %4 = load i32, i32* %2, align 4
  %5 = load i32, i32* @PAGE_SIZE, align 4
  %6 = icmp ule i32 %4, %5
  br i1 %6, label %7, label %11

7:                                                ; preds = %1
  %8 = load i32, i32* %2, align 4
  %9 = load i32, i32* @GFP_KERNEL, align 4
  %10 = call %struct.hlist_head* @kzalloc(i32 %8, i32 %9)
  store %struct.hlist_head* %10, %struct.hlist_head** %3, align 8
  br label %32

11:                                               ; preds = %1
  %12 = load i64, i64* @hashdist, align 8
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %21

14:                                               ; preds = %11
  %15 = load i32, i32* %2, align 4
  %16 = load i32, i32* @GFP_KERNEL, align 4
  %17 = load i32, i32* @__GFP_ZERO, align 4
  %18 = or i32 %16, %17
  %19 = load i32, i32* @PAGE_KERNEL, align 4
  %20 = call %struct.hlist_head* @__vmalloc(i32 %15, i32 %18, i32 %19)
  store %struct.hlist_head* %20, %struct.hlist_head** %3, align 8
  br label %31

21:                                               ; preds = %11
  %22 = load i32, i32* @GFP_KERNEL, align 4
  %23 = load i32, i32* @__GFP_NOWARN, align 4
  %24 = or i32 %22, %23
  %25 = load i32, i32* @__GFP_ZERO, align 4
  %26 = or i32 %24, %25
  %27 = load i32, i32* %2, align 4
  %28 = call i32 @get_order(i32 %27)
  %29 = call i64 @__get_free_pages(i32 %26, i32 %28)
  %30 = inttoptr i64 %29 to %struct.hlist_head*
  store %struct.hlist_head* %30, %struct.hlist_head** %3, align 8
  br label %31

31:                                               ; preds = %21, %14
  br label %32

32:                                               ; preds = %31, %7
  %33 = load %struct.hlist_head*, %struct.hlist_head** %3, align 8
  ret %struct.hlist_head* %33
}

declare dso_local %struct.hlist_head* @kzalloc(i32, i32) #1

declare dso_local %struct.hlist_head* @__vmalloc(i32, i32, i32) #1

declare dso_local i64 @__get_free_pages(i32, i32) #1

declare dso_local i32 @get_order(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

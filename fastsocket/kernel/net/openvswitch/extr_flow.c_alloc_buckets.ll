; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/openvswitch/extr_flow.c_alloc_buckets.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/openvswitch/extr_flow.c_alloc_buckets.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.flex_array = type { i32 }
%struct.hlist_head = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.flex_array* (i32)* @alloc_buckets to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.flex_array* @alloc_buckets(i32 %0) #0 {
  %2 = alloca %struct.flex_array*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.flex_array*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %7 = load i32, i32* %3, align 4
  %8 = load i32, i32* @GFP_KERNEL, align 4
  %9 = call %struct.flex_array* @flex_array_alloc(i32 4, i32 %7, i32 %8)
  store %struct.flex_array* %9, %struct.flex_array** %4, align 8
  %10 = load %struct.flex_array*, %struct.flex_array** %4, align 8
  %11 = icmp ne %struct.flex_array* %10, null
  br i1 %11, label %13, label %12

12:                                               ; preds = %1
  store %struct.flex_array* null, %struct.flex_array** %2, align 8
  br label %39

13:                                               ; preds = %1
  %14 = load %struct.flex_array*, %struct.flex_array** %4, align 8
  %15 = load i32, i32* %3, align 4
  %16 = load i32, i32* @GFP_KERNEL, align 4
  %17 = call i32 @flex_array_prealloc(%struct.flex_array* %14, i32 0, i32 %15, i32 %16)
  store i32 %17, i32* %6, align 4
  %18 = load i32, i32* %6, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %23

20:                                               ; preds = %13
  %21 = load %struct.flex_array*, %struct.flex_array** %4, align 8
  %22 = call i32 @flex_array_free(%struct.flex_array* %21)
  store %struct.flex_array* null, %struct.flex_array** %2, align 8
  br label %39

23:                                               ; preds = %13
  store i32 0, i32* %5, align 4
  br label %24

24:                                               ; preds = %34, %23
  %25 = load i32, i32* %5, align 4
  %26 = load i32, i32* %3, align 4
  %27 = icmp ult i32 %25, %26
  br i1 %27, label %28, label %37

28:                                               ; preds = %24
  %29 = load %struct.flex_array*, %struct.flex_array** %4, align 8
  %30 = load i32, i32* %5, align 4
  %31 = call i64 @flex_array_get(%struct.flex_array* %29, i32 %30)
  %32 = inttoptr i64 %31 to %struct.hlist_head*
  %33 = call i32 @INIT_HLIST_HEAD(%struct.hlist_head* %32)
  br label %34

34:                                               ; preds = %28
  %35 = load i32, i32* %5, align 4
  %36 = add nsw i32 %35, 1
  store i32 %36, i32* %5, align 4
  br label %24

37:                                               ; preds = %24
  %38 = load %struct.flex_array*, %struct.flex_array** %4, align 8
  store %struct.flex_array* %38, %struct.flex_array** %2, align 8
  br label %39

39:                                               ; preds = %37, %20, %12
  %40 = load %struct.flex_array*, %struct.flex_array** %2, align 8
  ret %struct.flex_array* %40
}

declare dso_local %struct.flex_array* @flex_array_alloc(i32, i32, i32) #1

declare dso_local i32 @flex_array_prealloc(%struct.flex_array*, i32, i32, i32) #1

declare dso_local i32 @flex_array_free(%struct.flex_array*) #1

declare dso_local i32 @INIT_HLIST_HEAD(%struct.hlist_head*) #1

declare dso_local i64 @flex_array_get(%struct.flex_array*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

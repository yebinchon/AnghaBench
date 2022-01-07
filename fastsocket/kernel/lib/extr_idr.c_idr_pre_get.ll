; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/lib/extr_idr.c_idr_pre_get.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/lib/extr_idr.c_idr_pre_get.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.idr = type { i64 }
%struct.idr_layer = type { i32 }

@IDR_FREE_MAX = common dso_local global i64 0, align 8
@idr_layer_cache = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @idr_pre_get(%struct.idr* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.idr*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.idr_layer*, align 8
  store %struct.idr* %0, %struct.idr** %4, align 8
  store i32 %1, i32* %5, align 4
  br label %7

7:                                                ; preds = %20, %2
  %8 = load %struct.idr*, %struct.idr** %4, align 8
  %9 = getelementptr inbounds %struct.idr, %struct.idr* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = load i64, i64* @IDR_FREE_MAX, align 8
  %12 = icmp slt i64 %10, %11
  br i1 %12, label %13, label %24

13:                                               ; preds = %7
  %14 = load i32, i32* @idr_layer_cache, align 4
  %15 = load i32, i32* %5, align 4
  %16 = call %struct.idr_layer* @kmem_cache_zalloc(i32 %14, i32 %15)
  store %struct.idr_layer* %16, %struct.idr_layer** %6, align 8
  %17 = load %struct.idr_layer*, %struct.idr_layer** %6, align 8
  %18 = icmp eq %struct.idr_layer* %17, null
  br i1 %18, label %19, label %20

19:                                               ; preds = %13
  store i32 0, i32* %3, align 4
  br label %25

20:                                               ; preds = %13
  %21 = load %struct.idr*, %struct.idr** %4, align 8
  %22 = load %struct.idr_layer*, %struct.idr_layer** %6, align 8
  %23 = call i32 @move_to_free_list(%struct.idr* %21, %struct.idr_layer* %22)
  br label %7

24:                                               ; preds = %7
  store i32 1, i32* %3, align 4
  br label %25

25:                                               ; preds = %24, %19
  %26 = load i32, i32* %3, align 4
  ret i32 %26
}

declare dso_local %struct.idr_layer* @kmem_cache_zalloc(i32, i32) #1

declare dso_local i32 @move_to_free_list(%struct.idr*, %struct.idr_layer*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

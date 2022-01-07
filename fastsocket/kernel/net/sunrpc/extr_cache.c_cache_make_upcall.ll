; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/sunrpc/extr_cache.c_cache_make_upcall.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/sunrpc/extr_cache.c_cache_make_upcall.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cache_detail = type { {}* }
%struct.cache_head = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cache_detail*, %struct.cache_head*)* @cache_make_upcall to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cache_make_upcall(%struct.cache_detail* %0, %struct.cache_head* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.cache_detail*, align 8
  %5 = alloca %struct.cache_head*, align 8
  store %struct.cache_detail* %0, %struct.cache_detail** %4, align 8
  store %struct.cache_head* %1, %struct.cache_head** %5, align 8
  %6 = load %struct.cache_detail*, %struct.cache_detail** %4, align 8
  %7 = getelementptr inbounds %struct.cache_detail, %struct.cache_detail* %6, i32 0, i32 0
  %8 = bitcast {}** %7 to i32 (%struct.cache_detail*, %struct.cache_head*)**
  %9 = load i32 (%struct.cache_detail*, %struct.cache_head*)*, i32 (%struct.cache_detail*, %struct.cache_head*)** %8, align 8
  %10 = icmp ne i32 (%struct.cache_detail*, %struct.cache_head*)* %9, null
  br i1 %10, label %14, label %11

11:                                               ; preds = %2
  %12 = load i32, i32* @EINVAL, align 4
  %13 = sub nsw i32 0, %12
  store i32 %13, i32* %3, align 4
  br label %22

14:                                               ; preds = %2
  %15 = load %struct.cache_detail*, %struct.cache_detail** %4, align 8
  %16 = getelementptr inbounds %struct.cache_detail, %struct.cache_detail* %15, i32 0, i32 0
  %17 = bitcast {}** %16 to i32 (%struct.cache_detail*, %struct.cache_head*)**
  %18 = load i32 (%struct.cache_detail*, %struct.cache_head*)*, i32 (%struct.cache_detail*, %struct.cache_head*)** %17, align 8
  %19 = load %struct.cache_detail*, %struct.cache_detail** %4, align 8
  %20 = load %struct.cache_head*, %struct.cache_head** %5, align 8
  %21 = call i32 %18(%struct.cache_detail* %19, %struct.cache_head* %20)
  store i32 %21, i32* %3, align 4
  br label %22

22:                                               ; preds = %14, %11
  %23 = load i32, i32* %3, align 4
  ret i32 %23
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

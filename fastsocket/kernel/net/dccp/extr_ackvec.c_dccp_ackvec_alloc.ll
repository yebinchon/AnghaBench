; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/dccp/extr_ackvec.c_dccp_ackvec_alloc.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/dccp/extr_ackvec.c_dccp_ackvec_alloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dccp_ackvec = type { i32, i64, i32, i64, i64, i64 }

@dccp_ackvec_slab = common dso_local global i32 0, align 4
@DCCP_MAX_ACKVEC_LEN = common dso_local global i64 0, align 8
@UINT48_MAX = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.dccp_ackvec* @dccp_ackvec_alloc(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.dccp_ackvec*, align 8
  store i32 %0, i32* %2, align 4
  %4 = load i32, i32* @dccp_ackvec_slab, align 4
  %5 = load i32, i32* %2, align 4
  %6 = call %struct.dccp_ackvec* @kmem_cache_alloc(i32 %4, i32 %5)
  store %struct.dccp_ackvec* %6, %struct.dccp_ackvec** %3, align 8
  %7 = load %struct.dccp_ackvec*, %struct.dccp_ackvec** %3, align 8
  %8 = icmp ne %struct.dccp_ackvec* %7, null
  br i1 %8, label %9, label %28

9:                                                ; preds = %1
  %10 = load i64, i64* @DCCP_MAX_ACKVEC_LEN, align 8
  %11 = sub nsw i64 %10, 1
  %12 = load %struct.dccp_ackvec*, %struct.dccp_ackvec** %3, align 8
  %13 = getelementptr inbounds %struct.dccp_ackvec, %struct.dccp_ackvec* %12, i32 0, i32 5
  store i64 %11, i64* %13, align 8
  %14 = load i64, i64* @UINT48_MAX, align 8
  %15 = add nsw i64 %14, 1
  %16 = load %struct.dccp_ackvec*, %struct.dccp_ackvec** %3, align 8
  %17 = getelementptr inbounds %struct.dccp_ackvec, %struct.dccp_ackvec* %16, i32 0, i32 4
  store i64 %15, i64* %17, align 8
  %18 = load %struct.dccp_ackvec*, %struct.dccp_ackvec** %3, align 8
  %19 = getelementptr inbounds %struct.dccp_ackvec, %struct.dccp_ackvec* %18, i32 0, i32 3
  store i64 0, i64* %19, align 8
  %20 = call i32 @ktime_set(i32 0, i32 0)
  %21 = load %struct.dccp_ackvec*, %struct.dccp_ackvec** %3, align 8
  %22 = getelementptr inbounds %struct.dccp_ackvec, %struct.dccp_ackvec* %21, i32 0, i32 2
  store i32 %20, i32* %22, align 8
  %23 = load %struct.dccp_ackvec*, %struct.dccp_ackvec** %3, align 8
  %24 = getelementptr inbounds %struct.dccp_ackvec, %struct.dccp_ackvec* %23, i32 0, i32 1
  store i64 0, i64* %24, align 8
  %25 = load %struct.dccp_ackvec*, %struct.dccp_ackvec** %3, align 8
  %26 = getelementptr inbounds %struct.dccp_ackvec, %struct.dccp_ackvec* %25, i32 0, i32 0
  %27 = call i32 @INIT_LIST_HEAD(i32* %26)
  br label %28

28:                                               ; preds = %9, %1
  %29 = load %struct.dccp_ackvec*, %struct.dccp_ackvec** %3, align 8
  ret %struct.dccp_ackvec* %29
}

declare dso_local %struct.dccp_ackvec* @kmem_cache_alloc(i32, i32) #1

declare dso_local i32 @ktime_set(i32, i32) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

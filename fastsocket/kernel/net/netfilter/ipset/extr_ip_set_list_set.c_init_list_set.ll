; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/netfilter/ipset/extr_ip_set_list_set.c_init_list_set.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/netfilter/ipset/extr_ip_set_list_set.c_init_list_set.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ip_set = type { %struct.list_set* }
%struct.list_set = type { i64, i64, i64 }
%struct.set_elem = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@IPSET_INVALID_ID = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ip_set*, i64, i64, i64)* @init_list_set to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @init_list_set(%struct.ip_set* %0, i64 %1, i64 %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.ip_set*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.list_set*, align 8
  %11 = alloca %struct.set_elem*, align 8
  %12 = alloca i64, align 8
  store %struct.ip_set* %0, %struct.ip_set** %6, align 8
  store i64 %1, i64* %7, align 8
  store i64 %2, i64* %8, align 8
  store i64 %3, i64* %9, align 8
  %13 = load i64, i64* %7, align 8
  %14 = load i64, i64* %8, align 8
  %15 = mul i64 %13, %14
  %16 = add i64 24, %15
  %17 = trunc i64 %16 to i32
  %18 = load i32, i32* @GFP_KERNEL, align 4
  %19 = call %struct.list_set* @kzalloc(i32 %17, i32 %18)
  store %struct.list_set* %19, %struct.list_set** %10, align 8
  %20 = load %struct.list_set*, %struct.list_set** %10, align 8
  %21 = icmp ne %struct.list_set* %20, null
  br i1 %21, label %23, label %22

22:                                               ; preds = %4
  store i32 0, i32* %5, align 4
  br label %51

23:                                               ; preds = %4
  %24 = load i64, i64* %7, align 8
  %25 = load %struct.list_set*, %struct.list_set** %10, align 8
  %26 = getelementptr inbounds %struct.list_set, %struct.list_set* %25, i32 0, i32 0
  store i64 %24, i64* %26, align 8
  %27 = load i64, i64* %8, align 8
  %28 = load %struct.list_set*, %struct.list_set** %10, align 8
  %29 = getelementptr inbounds %struct.list_set, %struct.list_set* %28, i32 0, i32 1
  store i64 %27, i64* %29, align 8
  %30 = load i64, i64* %9, align 8
  %31 = load %struct.list_set*, %struct.list_set** %10, align 8
  %32 = getelementptr inbounds %struct.list_set, %struct.list_set* %31, i32 0, i32 2
  store i64 %30, i64* %32, align 8
  %33 = load %struct.list_set*, %struct.list_set** %10, align 8
  %34 = load %struct.ip_set*, %struct.ip_set** %6, align 8
  %35 = getelementptr inbounds %struct.ip_set, %struct.ip_set* %34, i32 0, i32 0
  store %struct.list_set* %33, %struct.list_set** %35, align 8
  store i64 0, i64* %12, align 8
  br label %36

36:                                               ; preds = %47, %23
  %37 = load i64, i64* %12, align 8
  %38 = load i64, i64* %7, align 8
  %39 = icmp ult i64 %37, %38
  br i1 %39, label %40, label %50

40:                                               ; preds = %36
  %41 = load %struct.list_set*, %struct.list_set** %10, align 8
  %42 = load i64, i64* %12, align 8
  %43 = call %struct.set_elem* @list_set_elem(%struct.list_set* %41, i64 %42)
  store %struct.set_elem* %43, %struct.set_elem** %11, align 8
  %44 = load i32, i32* @IPSET_INVALID_ID, align 4
  %45 = load %struct.set_elem*, %struct.set_elem** %11, align 8
  %46 = getelementptr inbounds %struct.set_elem, %struct.set_elem* %45, i32 0, i32 0
  store i32 %44, i32* %46, align 4
  br label %47

47:                                               ; preds = %40
  %48 = load i64, i64* %12, align 8
  %49 = add i64 %48, 1
  store i64 %49, i64* %12, align 8
  br label %36

50:                                               ; preds = %36
  store i32 1, i32* %5, align 4
  br label %51

51:                                               ; preds = %50, %22
  %52 = load i32, i32* %5, align 4
  ret i32 %52
}

declare dso_local %struct.list_set* @kzalloc(i32, i32) #1

declare dso_local %struct.set_elem* @list_set_elem(%struct.list_set*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

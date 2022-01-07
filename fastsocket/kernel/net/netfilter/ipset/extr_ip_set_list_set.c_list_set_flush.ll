; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/netfilter/ipset/extr_ip_set_list_set.c_list_set_flush.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/netfilter/ipset/extr_ip_set_list_set.c_list_set_flush.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ip_set = type { %struct.list_set* }
%struct.list_set = type { i64 }
%struct.set_elem = type { i64 }

@IPSET_INVALID_ID = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ip_set*)* @list_set_flush to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @list_set_flush(%struct.ip_set* %0) #0 {
  %2 = alloca %struct.ip_set*, align 8
  %3 = alloca %struct.list_set*, align 8
  %4 = alloca %struct.set_elem*, align 8
  %5 = alloca i64, align 8
  store %struct.ip_set* %0, %struct.ip_set** %2, align 8
  %6 = load %struct.ip_set*, %struct.ip_set** %2, align 8
  %7 = getelementptr inbounds %struct.ip_set, %struct.ip_set* %6, i32 0, i32 0
  %8 = load %struct.list_set*, %struct.list_set** %7, align 8
  store %struct.list_set* %8, %struct.list_set** %3, align 8
  store i64 0, i64* %5, align 8
  br label %9

9:                                                ; preds = %33, %1
  %10 = load i64, i64* %5, align 8
  %11 = load %struct.list_set*, %struct.list_set** %3, align 8
  %12 = getelementptr inbounds %struct.list_set, %struct.list_set* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = icmp slt i64 %10, %13
  br i1 %14, label %15, label %36

15:                                               ; preds = %9
  %16 = load %struct.list_set*, %struct.list_set** %3, align 8
  %17 = load i64, i64* %5, align 8
  %18 = call %struct.set_elem* @list_set_elem(%struct.list_set* %16, i64 %17)
  store %struct.set_elem* %18, %struct.set_elem** %4, align 8
  %19 = load %struct.set_elem*, %struct.set_elem** %4, align 8
  %20 = getelementptr inbounds %struct.set_elem, %struct.set_elem* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = load i64, i64* @IPSET_INVALID_ID, align 8
  %23 = icmp ne i64 %21, %22
  br i1 %23, label %24, label %32

24:                                               ; preds = %15
  %25 = load %struct.set_elem*, %struct.set_elem** %4, align 8
  %26 = getelementptr inbounds %struct.set_elem, %struct.set_elem* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = call i32 @ip_set_put_byindex(i64 %27)
  %29 = load i64, i64* @IPSET_INVALID_ID, align 8
  %30 = load %struct.set_elem*, %struct.set_elem** %4, align 8
  %31 = getelementptr inbounds %struct.set_elem, %struct.set_elem* %30, i32 0, i32 0
  store i64 %29, i64* %31, align 8
  br label %32

32:                                               ; preds = %24, %15
  br label %33

33:                                               ; preds = %32
  %34 = load i64, i64* %5, align 8
  %35 = add nsw i64 %34, 1
  store i64 %35, i64* %5, align 8
  br label %9

36:                                               ; preds = %9
  ret void
}

declare dso_local %struct.set_elem* @list_set_elem(%struct.list_set*, i64) #1

declare dso_local i32 @ip_set_put_byindex(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

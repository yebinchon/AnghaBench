; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/netfilter/ipset/extr_ip_set_list_set.c_list_set_add.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/netfilter/ipset/extr_ip_set_list_set.c_list_set_add.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.list_set = type { i32, i32 }
%struct.set_elem = type { i64 }

@IPSET_INVALID_ID = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.list_set*, i32, i32, i64)* @list_set_add to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @list_set_add(%struct.list_set* %0, i32 %1, i32 %2, i64 %3) #0 {
  %5 = alloca %struct.list_set*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca %struct.set_elem*, align 8
  store %struct.list_set* %0, %struct.list_set** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i64 %3, i64* %8, align 8
  %10 = load %struct.list_set*, %struct.list_set** %5, align 8
  %11 = load i32, i32* %6, align 4
  %12 = call %struct.set_elem* @list_set_elem(%struct.list_set* %10, i32 %11)
  store %struct.set_elem* %12, %struct.set_elem** %9, align 8
  %13 = load i32, i32* %6, align 4
  %14 = load %struct.list_set*, %struct.list_set** %5, align 8
  %15 = getelementptr inbounds %struct.list_set, %struct.list_set* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = sub nsw i32 %16, 1
  %18 = icmp eq i32 %13, %17
  br i1 %18, label %19, label %30

19:                                               ; preds = %4
  %20 = load %struct.set_elem*, %struct.set_elem** %9, align 8
  %21 = getelementptr inbounds %struct.set_elem, %struct.set_elem* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = load i64, i64* @IPSET_INVALID_ID, align 8
  %24 = icmp ne i64 %22, %23
  br i1 %24, label %25, label %30

25:                                               ; preds = %19
  %26 = load %struct.set_elem*, %struct.set_elem** %9, align 8
  %27 = getelementptr inbounds %struct.set_elem, %struct.set_elem* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = call i32 @ip_set_put_byindex(i64 %28)
  br label %30

30:                                               ; preds = %25, %19, %4
  %31 = load %struct.list_set*, %struct.list_set** %5, align 8
  %32 = getelementptr inbounds %struct.list_set, %struct.list_set* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  %34 = call i64 @with_timeout(i32 %33)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %43

36:                                               ; preds = %30
  %37 = load %struct.list_set*, %struct.list_set** %5, align 8
  %38 = load i32, i32* %6, align 4
  %39 = load i32, i32* %7, align 4
  %40 = load i64, i64* %8, align 8
  %41 = call i32 @ip_set_timeout_set(i64 %40)
  %42 = call i32 @list_elem_tadd(%struct.list_set* %37, i32 %38, i32 %39, i32 %41)
  br label %48

43:                                               ; preds = %30
  %44 = load %struct.list_set*, %struct.list_set** %5, align 8
  %45 = load i32, i32* %6, align 4
  %46 = load i32, i32* %7, align 4
  %47 = call i32 @list_elem_add(%struct.list_set* %44, i32 %45, i32 %46)
  br label %48

48:                                               ; preds = %43, %36
  ret i32 0
}

declare dso_local %struct.set_elem* @list_set_elem(%struct.list_set*, i32) #1

declare dso_local i32 @ip_set_put_byindex(i64) #1

declare dso_local i64 @with_timeout(i32) #1

declare dso_local i32 @list_elem_tadd(%struct.list_set*, i32, i32, i32) #1

declare dso_local i32 @ip_set_timeout_set(i64) #1

declare dso_local i32 @list_elem_add(%struct.list_set*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

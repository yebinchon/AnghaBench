; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/netfilter/ipset/extr_ip_set_list_set.c_list_elem_tadd.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/netfilter/ipset/extr_ip_set_list_set.c_list_elem_tadd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.list_set = type { i64 }
%struct.set_telem = type { i64, i64 }

@IPSET_INVALID_ID = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.list_set*, i64, i64, i64)* @list_elem_tadd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @list_elem_tadd(%struct.list_set* %0, i64 %1, i64 %2, i64 %3) #0 {
  %5 = alloca %struct.list_set*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.set_telem*, align 8
  store %struct.list_set* %0, %struct.list_set** %5, align 8
  store i64 %1, i64* %6, align 8
  store i64 %2, i64* %7, align 8
  store i64 %3, i64* %8, align 8
  br label %10

10:                                               ; preds = %37, %4
  %11 = load i64, i64* %6, align 8
  %12 = load %struct.list_set*, %struct.list_set** %5, align 8
  %13 = getelementptr inbounds %struct.list_set, %struct.list_set* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = icmp slt i64 %11, %14
  br i1 %15, label %16, label %40

16:                                               ; preds = %10
  %17 = load %struct.list_set*, %struct.list_set** %5, align 8
  %18 = load i64, i64* %6, align 8
  %19 = call %struct.set_telem* @list_set_telem(%struct.list_set* %17, i64 %18)
  store %struct.set_telem* %19, %struct.set_telem** %9, align 8
  %20 = load %struct.set_telem*, %struct.set_telem** %9, align 8
  %21 = getelementptr inbounds %struct.set_telem, %struct.set_telem* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = load i64, i64* %7, align 8
  %24 = call i32 @swap(i64 %22, i64 %23)
  %25 = load %struct.set_telem*, %struct.set_telem** %9, align 8
  %26 = getelementptr inbounds %struct.set_telem, %struct.set_telem* %25, i32 0, i32 1
  %27 = load i64, i64* %26, align 8
  %28 = load i64, i64* %8, align 8
  %29 = call i32 @swap(i64 %27, i64 %28)
  %30 = load %struct.set_telem*, %struct.set_telem** %9, align 8
  %31 = getelementptr inbounds %struct.set_telem, %struct.set_telem* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = load i64, i64* @IPSET_INVALID_ID, align 8
  %34 = icmp eq i64 %32, %33
  br i1 %34, label %35, label %36

35:                                               ; preds = %16
  br label %40

36:                                               ; preds = %16
  br label %37

37:                                               ; preds = %36
  %38 = load i64, i64* %6, align 8
  %39 = add nsw i64 %38, 1
  store i64 %39, i64* %6, align 8
  br label %10

40:                                               ; preds = %35, %10
  ret void
}

declare dso_local %struct.set_telem* @list_set_telem(%struct.list_set*, i64) #1

declare dso_local i32 @swap(i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

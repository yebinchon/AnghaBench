; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/ipv4/extr_cipso_ipv4.c_cipso_v4_map_lvl_valid.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/ipv4/extr_cipso_ipv4.c_cipso_v4_map_lvl_valid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cipso_v4_doi = type { i32, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32* }

@CIPSO_V4_INV_LVL = common dso_local global i32 0, align 4
@EFAULT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cipso_v4_doi*, i64)* @cipso_v4_map_lvl_valid to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cipso_v4_map_lvl_valid(%struct.cipso_v4_doi* %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.cipso_v4_doi*, align 8
  %5 = alloca i64, align 8
  store %struct.cipso_v4_doi* %0, %struct.cipso_v4_doi** %4, align 8
  store i64 %1, i64* %5, align 8
  %6 = load %struct.cipso_v4_doi*, %struct.cipso_v4_doi** %4, align 8
  %7 = getelementptr inbounds %struct.cipso_v4_doi, %struct.cipso_v4_doi* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 8
  switch i32 %8, label %25 [
    i32 129, label %9
    i32 128, label %10
  ]

9:                                                ; preds = %2
  store i32 0, i32* %3, align 4
  br label %28

10:                                               ; preds = %2
  %11 = load %struct.cipso_v4_doi*, %struct.cipso_v4_doi** %4, align 8
  %12 = getelementptr inbounds %struct.cipso_v4_doi, %struct.cipso_v4_doi* %11, i32 0, i32 1
  %13 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %12, i32 0, i32 0
  %14 = load %struct.TYPE_5__*, %struct.TYPE_5__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 0
  %17 = load i32*, i32** %16, align 8
  %18 = load i64, i64* %5, align 8
  %19 = getelementptr inbounds i32, i32* %17, i64 %18
  %20 = load i32, i32* %19, align 4
  %21 = load i32, i32* @CIPSO_V4_INV_LVL, align 4
  %22 = icmp slt i32 %20, %21
  br i1 %22, label %23, label %24

23:                                               ; preds = %10
  store i32 0, i32* %3, align 4
  br label %28

24:                                               ; preds = %10
  br label %25

25:                                               ; preds = %2, %24
  %26 = load i32, i32* @EFAULT, align 4
  %27 = sub nsw i32 0, %26
  store i32 %27, i32* %3, align 4
  br label %28

28:                                               ; preds = %25, %23, %9
  %29 = load i32, i32* %3, align 4
  ret i32 %29
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

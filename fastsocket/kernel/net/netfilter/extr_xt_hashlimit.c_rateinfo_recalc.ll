; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/netfilter/extr_xt_hashlimit.c_rateinfo_recalc.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/netfilter/extr_xt_hashlimit.c_rateinfo_recalc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dsthash_ent = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64, i64, i64 }

@CREDITS_PER_JIFFY = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.dsthash_ent*, i64)* @rateinfo_recalc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rateinfo_recalc(%struct.dsthash_ent* %0, i64 %1) #0 {
  %3 = alloca %struct.dsthash_ent*, align 8
  %4 = alloca i64, align 8
  store %struct.dsthash_ent* %0, %struct.dsthash_ent** %3, align 8
  store i64 %1, i64* %4, align 8
  %5 = load i64, i64* %4, align 8
  %6 = load %struct.dsthash_ent*, %struct.dsthash_ent** %3, align 8
  %7 = getelementptr inbounds %struct.dsthash_ent, %struct.dsthash_ent* %6, i32 0, i32 0
  %8 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %7, i32 0, i32 1
  %9 = load i64, i64* %8, align 8
  %10 = sub i64 %5, %9
  %11 = load i64, i64* @CREDITS_PER_JIFFY, align 8
  %12 = mul i64 %10, %11
  %13 = load %struct.dsthash_ent*, %struct.dsthash_ent** %3, align 8
  %14 = getelementptr inbounds %struct.dsthash_ent, %struct.dsthash_ent* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = add i64 %16, %12
  store i64 %17, i64* %15, align 8
  %18 = load %struct.dsthash_ent*, %struct.dsthash_ent** %3, align 8
  %19 = getelementptr inbounds %struct.dsthash_ent, %struct.dsthash_ent* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = load %struct.dsthash_ent*, %struct.dsthash_ent** %3, align 8
  %23 = getelementptr inbounds %struct.dsthash_ent, %struct.dsthash_ent* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 2
  %25 = load i64, i64* %24, align 8
  %26 = icmp sgt i64 %21, %25
  br i1 %26, label %27, label %35

27:                                               ; preds = %2
  %28 = load %struct.dsthash_ent*, %struct.dsthash_ent** %3, align 8
  %29 = getelementptr inbounds %struct.dsthash_ent, %struct.dsthash_ent* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 2
  %31 = load i64, i64* %30, align 8
  %32 = load %struct.dsthash_ent*, %struct.dsthash_ent** %3, align 8
  %33 = getelementptr inbounds %struct.dsthash_ent, %struct.dsthash_ent* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 0
  store i64 %31, i64* %34, align 8
  br label %35

35:                                               ; preds = %27, %2
  %36 = load i64, i64* %4, align 8
  %37 = load %struct.dsthash_ent*, %struct.dsthash_ent** %3, align 8
  %38 = getelementptr inbounds %struct.dsthash_ent, %struct.dsthash_ent* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i32 0, i32 1
  store i64 %36, i64* %39, align 8
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

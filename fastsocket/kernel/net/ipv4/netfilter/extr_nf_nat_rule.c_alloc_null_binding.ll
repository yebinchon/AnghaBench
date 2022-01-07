; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/ipv4/netfilter/extr_nf_nat_rule.c_alloc_null_binding.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/ipv4/netfilter/extr_nf_nat_rule.c_alloc_null_binding.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nf_conn = type { %struct.TYPE_16__* }
%struct.TYPE_16__ = type { %struct.TYPE_15__ }
%struct.TYPE_15__ = type { %struct.TYPE_14__, %struct.TYPE_12__ }
%struct.TYPE_14__ = type { %struct.TYPE_13__ }
%struct.TYPE_13__ = type { i32 }
%struct.TYPE_12__ = type { %struct.TYPE_11__ }
%struct.TYPE_11__ = type { i32 }
%struct.nf_nat_range = type { %struct.TYPE_10__, %struct.TYPE_9__, i32, i32, i32 }
%struct.TYPE_10__ = type { i32 }
%struct.TYPE_9__ = type { i32 }

@IP_NAT_MANIP_SRC = common dso_local global i64 0, align 8
@IP_CT_DIR_REPLY = common dso_local global i64 0, align 8
@IP_NAT_RANGE_MAP_IPS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [39 x i8] c"Allocating NULL binding for %p (%pI4)\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @alloc_null_binding(%struct.nf_conn* %0, i32 %1) #0 {
  %3 = alloca %struct.nf_conn*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.nf_nat_range, align 4
  store %struct.nf_conn* %0, %struct.nf_conn** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load i32, i32* %4, align 4
  %8 = call i64 @HOOK2MANIP(i32 %7)
  %9 = load i64, i64* @IP_NAT_MANIP_SRC, align 8
  %10 = icmp eq i64 %8, %9
  br i1 %10, label %11, label %22

11:                                               ; preds = %2
  %12 = load %struct.nf_conn*, %struct.nf_conn** %3, align 8
  %13 = getelementptr inbounds %struct.nf_conn, %struct.nf_conn* %12, i32 0, i32 0
  %14 = load %struct.TYPE_16__*, %struct.TYPE_16__** %13, align 8
  %15 = load i64, i64* @IP_CT_DIR_REPLY, align 8
  %16 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %14, i64 %15
  %17 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %17, i32 0, i32 1
  %19 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  br label %33

22:                                               ; preds = %2
  %23 = load %struct.nf_conn*, %struct.nf_conn** %3, align 8
  %24 = getelementptr inbounds %struct.nf_conn, %struct.nf_conn* %23, i32 0, i32 0
  %25 = load %struct.TYPE_16__*, %struct.TYPE_16__** %24, align 8
  %26 = load i64, i64* @IP_CT_DIR_REPLY, align 8
  %27 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %25, i64 %26
  %28 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  br label %33

33:                                               ; preds = %22, %11
  %34 = phi i32 [ %21, %11 ], [ %32, %22 ]
  store i32 %34, i32* %5, align 4
  %35 = getelementptr inbounds %struct.nf_nat_range, %struct.nf_nat_range* %6, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %35, i32 0, i32 0
  %37 = load i32, i32* @IP_NAT_RANGE_MAP_IPS, align 4
  store i32 %37, i32* %36, align 4
  %38 = getelementptr inbounds %struct.nf_nat_range, %struct.nf_nat_range* %6, i32 0, i32 1
  %39 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %38, i32 0, i32 0
  %40 = load i32, i32* %5, align 4
  store i32 %40, i32* %39, align 4
  %41 = getelementptr inbounds %struct.nf_nat_range, %struct.nf_nat_range* %6, i32 0, i32 2
  %42 = load i32, i32* %5, align 4
  store i32 %42, i32* %41, align 4
  %43 = getelementptr inbounds %struct.nf_nat_range, %struct.nf_nat_range* %6, i32 0, i32 3
  store i32 0, i32* %43, align 4
  %44 = getelementptr inbounds %struct.nf_nat_range, %struct.nf_nat_range* %6, i32 0, i32 4
  store i32 0, i32* %44, align 4
  %45 = load %struct.nf_conn*, %struct.nf_conn** %3, align 8
  %46 = call i32 @pr_debug(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), %struct.nf_conn* %45, i32* %5)
  %47 = load %struct.nf_conn*, %struct.nf_conn** %3, align 8
  %48 = load i32, i32* %4, align 4
  %49 = call i64 @HOOK2MANIP(i32 %48)
  %50 = call i32 @nf_nat_setup_info(%struct.nf_conn* %47, %struct.nf_nat_range* %6, i64 %49)
  ret i32 %50
}

declare dso_local i64 @HOOK2MANIP(i32) #1

declare dso_local i32 @pr_debug(i8*, %struct.nf_conn*, i32*) #1

declare dso_local i32 @nf_nat_setup_info(%struct.nf_conn*, %struct.nf_nat_range*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

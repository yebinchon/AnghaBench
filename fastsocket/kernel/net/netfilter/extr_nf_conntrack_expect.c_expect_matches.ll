; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/netfilter/extr_nf_conntrack_expect.c_expect_matches.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/netfilter/extr_nf_conntrack_expect.c_expect_matches.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nf_conntrack_expect = type { i64, i64, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nf_conntrack_expect*, %struct.nf_conntrack_expect*)* @expect_matches to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @expect_matches(%struct.nf_conntrack_expect* %0, %struct.nf_conntrack_expect* %1) #0 {
  %3 = alloca %struct.nf_conntrack_expect*, align 8
  %4 = alloca %struct.nf_conntrack_expect*, align 8
  store %struct.nf_conntrack_expect* %0, %struct.nf_conntrack_expect** %3, align 8
  store %struct.nf_conntrack_expect* %1, %struct.nf_conntrack_expect** %4, align 8
  %5 = load %struct.nf_conntrack_expect*, %struct.nf_conntrack_expect** %3, align 8
  %6 = getelementptr inbounds %struct.nf_conntrack_expect, %struct.nf_conntrack_expect* %5, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = load %struct.nf_conntrack_expect*, %struct.nf_conntrack_expect** %4, align 8
  %9 = getelementptr inbounds %struct.nf_conntrack_expect, %struct.nf_conntrack_expect* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = icmp eq i64 %7, %10
  br i1 %11, label %12, label %34

12:                                               ; preds = %2
  %13 = load %struct.nf_conntrack_expect*, %struct.nf_conntrack_expect** %3, align 8
  %14 = getelementptr inbounds %struct.nf_conntrack_expect, %struct.nf_conntrack_expect* %13, i32 0, i32 1
  %15 = load i64, i64* %14, align 8
  %16 = load %struct.nf_conntrack_expect*, %struct.nf_conntrack_expect** %4, align 8
  %17 = getelementptr inbounds %struct.nf_conntrack_expect, %struct.nf_conntrack_expect* %16, i32 0, i32 1
  %18 = load i64, i64* %17, align 8
  %19 = icmp eq i64 %15, %18
  br i1 %19, label %20, label %34

20:                                               ; preds = %12
  %21 = load %struct.nf_conntrack_expect*, %struct.nf_conntrack_expect** %3, align 8
  %22 = getelementptr inbounds %struct.nf_conntrack_expect, %struct.nf_conntrack_expect* %21, i32 0, i32 3
  %23 = load %struct.nf_conntrack_expect*, %struct.nf_conntrack_expect** %4, align 8
  %24 = getelementptr inbounds %struct.nf_conntrack_expect, %struct.nf_conntrack_expect* %23, i32 0, i32 3
  %25 = call i64 @nf_ct_tuple_equal(i32* %22, i32* %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %34

27:                                               ; preds = %20
  %28 = load %struct.nf_conntrack_expect*, %struct.nf_conntrack_expect** %3, align 8
  %29 = getelementptr inbounds %struct.nf_conntrack_expect, %struct.nf_conntrack_expect* %28, i32 0, i32 2
  %30 = load %struct.nf_conntrack_expect*, %struct.nf_conntrack_expect** %4, align 8
  %31 = getelementptr inbounds %struct.nf_conntrack_expect, %struct.nf_conntrack_expect* %30, i32 0, i32 2
  %32 = call i64 @nf_ct_tuple_mask_equal(i32* %29, i32* %31)
  %33 = icmp ne i64 %32, 0
  br label %34

34:                                               ; preds = %27, %20, %12, %2
  %35 = phi i1 [ false, %20 ], [ false, %12 ], [ false, %2 ], [ %33, %27 ]
  %36 = zext i1 %35 to i32
  ret i32 %36
}

declare dso_local i64 @nf_ct_tuple_equal(i32*, i32*) #1

declare dso_local i64 @nf_ct_tuple_mask_equal(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

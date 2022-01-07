; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/netfilter/extr_nf_conntrack_core.c_nf_conntrack_init_init_net.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/netfilter/extr_nf_conntrack_core.c_nf_conntrack_init_init_net.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, %struct.TYPE_3__, i32* }
%struct.TYPE_3__ = type { i32 }

@nf_conntrack_htable_size = common dso_local global i32 0, align 4
@totalram_pages = common dso_local global i32 0, align 4
@PAGE_SHIFT = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i32 0, align 4
@nf_conntrack_max = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [46 x i8] c"nf_conntrack version %s (%u buckets, %d max)\0A\00", align 1
@NF_CONNTRACK_VERSION = common dso_local global i32 0, align 4
@nf_conntrack_untracked = common dso_local global %struct.TYPE_4__ zeroinitializer, align 8
@IPS_CONFIRMED_BIT = common dso_local global i32 0, align 4
@init_net = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @nf_conntrack_init_init_net to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nf_conntrack_init_init_net() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  store i32 8, i32* %2, align 4
  %4 = load i32, i32* @nf_conntrack_htable_size, align 4
  %5 = icmp ne i32 %4, 0
  br i1 %5, label %24, label %6

6:                                                ; preds = %0
  %7 = load i32, i32* @totalram_pages, align 4
  %8 = load i32, i32* @PAGE_SHIFT, align 4
  %9 = shl i32 %7, %8
  %10 = sdiv i32 %9, 16384
  %11 = sext i32 %10 to i64
  %12 = udiv i64 %11, 4
  %13 = trunc i64 %12 to i32
  store i32 %13, i32* @nf_conntrack_htable_size, align 4
  %14 = load i32, i32* @totalram_pages, align 4
  %15 = load i32, i32* @PAGE_SIZE, align 4
  %16 = sdiv i32 1073741824, %15
  %17 = icmp sgt i32 %14, %16
  br i1 %17, label %18, label %19

18:                                               ; preds = %6
  store i32 16384, i32* @nf_conntrack_htable_size, align 4
  br label %19

19:                                               ; preds = %18, %6
  %20 = load i32, i32* @nf_conntrack_htable_size, align 4
  %21 = icmp slt i32 %20, 32
  br i1 %21, label %22, label %23

22:                                               ; preds = %19
  store i32 32, i32* @nf_conntrack_htable_size, align 4
  br label %23

23:                                               ; preds = %22, %19
  store i32 4, i32* %2, align 4
  br label %24

24:                                               ; preds = %23, %0
  %25 = load i32, i32* %2, align 4
  %26 = load i32, i32* @nf_conntrack_htable_size, align 4
  %27 = mul nsw i32 %25, %26
  store i32 %27, i32* @nf_conntrack_max, align 4
  %28 = load i32, i32* @NF_CONNTRACK_VERSION, align 4
  %29 = load i32, i32* @nf_conntrack_htable_size, align 4
  %30 = load i32, i32* @nf_conntrack_max, align 4
  %31 = call i32 @printk(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str, i64 0, i64 0), i32 %28, i32 %29, i32 %30)
  %32 = call i32 (...) @nf_conntrack_proto_init()
  store i32 %32, i32* %3, align 4
  %33 = load i32, i32* %3, align 4
  %34 = icmp slt i32 %33, 0
  br i1 %34, label %35, label %36

35:                                               ; preds = %24
  br label %47

36:                                               ; preds = %24
  %37 = call i32 (...) @nf_conntrack_helper_init()
  store i32 %37, i32* %3, align 4
  %38 = load i32, i32* %3, align 4
  %39 = icmp slt i32 %38, 0
  br i1 %39, label %40, label %41

40:                                               ; preds = %36
  br label %45

41:                                               ; preds = %36
  %42 = call i32 @atomic_set(i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @nf_conntrack_untracked, i32 0, i32 1, i32 0), i32 1)
  %43 = load i32, i32* @IPS_CONFIRMED_BIT, align 4
  %44 = call i32 @set_bit(i32 %43, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @nf_conntrack_untracked, i32 0, i32 0))
  store i32 0, i32* %1, align 4
  br label %49

45:                                               ; preds = %40
  %46 = call i32 (...) @nf_conntrack_proto_fini()
  br label %47

47:                                               ; preds = %45, %35
  %48 = load i32, i32* %3, align 4
  store i32 %48, i32* %1, align 4
  br label %49

49:                                               ; preds = %47, %41
  %50 = load i32, i32* %1, align 4
  ret i32 %50
}

declare dso_local i32 @printk(i8*, i32, i32, i32) #1

declare dso_local i32 @nf_conntrack_proto_init(...) #1

declare dso_local i32 @nf_conntrack_helper_init(...) #1

declare dso_local i32 @atomic_set(i32*, i32) #1

declare dso_local i32 @set_bit(i32, i32*) #1

declare dso_local i32 @nf_conntrack_proto_fini(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/netfilter/extr_nf_conntrack_helper.c_nf_conntrack_helper_register.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/netfilter/extr_nf_conntrack_helper.c_nf_conntrack_helper_register.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nf_conntrack_helper = type { i64, i32, i32, i32*, i32 }

@NF_CT_MAX_EXPECT_CLASSES = common dso_local global i64 0, align 8
@NF_CT_HELPER_NAME_LEN = common dso_local global i32 0, align 4
@nf_ct_helper_mutex = common dso_local global i32 0, align 4
@nf_ct_helper_hash = common dso_local global i32* null, align 8
@nf_ct_helper_count = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nf_conntrack_helper_register(%struct.nf_conntrack_helper* %0) #0 {
  %2 = alloca %struct.nf_conntrack_helper*, align 8
  %3 = alloca i32, align 4
  store %struct.nf_conntrack_helper* %0, %struct.nf_conntrack_helper** %2, align 8
  %4 = load %struct.nf_conntrack_helper*, %struct.nf_conntrack_helper** %2, align 8
  %5 = getelementptr inbounds %struct.nf_conntrack_helper, %struct.nf_conntrack_helper* %4, i32 0, i32 4
  %6 = call i32 @helper_hash(i32* %5)
  store i32 %6, i32* %3, align 4
  %7 = load %struct.nf_conntrack_helper*, %struct.nf_conntrack_helper** %2, align 8
  %8 = getelementptr inbounds %struct.nf_conntrack_helper, %struct.nf_conntrack_helper* %7, i32 0, i32 3
  %9 = load i32*, i32** %8, align 8
  %10 = icmp eq i32* %9, null
  %11 = zext i1 %10 to i32
  %12 = call i32 @BUG_ON(i32 %11)
  %13 = load %struct.nf_conntrack_helper*, %struct.nf_conntrack_helper** %2, align 8
  %14 = getelementptr inbounds %struct.nf_conntrack_helper, %struct.nf_conntrack_helper* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = load i64, i64* @NF_CT_MAX_EXPECT_CLASSES, align 8
  %17 = icmp sge i64 %15, %16
  %18 = zext i1 %17 to i32
  %19 = call i32 @BUG_ON(i32 %18)
  %20 = load %struct.nf_conntrack_helper*, %struct.nf_conntrack_helper** %2, align 8
  %21 = getelementptr inbounds %struct.nf_conntrack_helper, %struct.nf_conntrack_helper* %20, i32 0, i32 2
  %22 = load i32, i32* %21, align 4
  %23 = call i32 @strlen(i32 %22)
  %24 = load i32, i32* @NF_CT_HELPER_NAME_LEN, align 4
  %25 = sub nsw i32 %24, 1
  %26 = icmp sgt i32 %23, %25
  %27 = zext i1 %26 to i32
  %28 = call i32 @BUG_ON(i32 %27)
  %29 = call i32 @mutex_lock(i32* @nf_ct_helper_mutex)
  %30 = load %struct.nf_conntrack_helper*, %struct.nf_conntrack_helper** %2, align 8
  %31 = getelementptr inbounds %struct.nf_conntrack_helper, %struct.nf_conntrack_helper* %30, i32 0, i32 1
  %32 = load i32*, i32** @nf_ct_helper_hash, align 8
  %33 = load i32, i32* %3, align 4
  %34 = zext i32 %33 to i64
  %35 = getelementptr inbounds i32, i32* %32, i64 %34
  %36 = call i32 @hlist_add_head_rcu(i32* %31, i32* %35)
  %37 = load i32, i32* @nf_ct_helper_count, align 4
  %38 = add nsw i32 %37, 1
  store i32 %38, i32* @nf_ct_helper_count, align 4
  %39 = call i32 @mutex_unlock(i32* @nf_ct_helper_mutex)
  ret i32 0
}

declare dso_local i32 @helper_hash(i32*) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @strlen(i32) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @hlist_add_head_rcu(i32*, i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/ipv4/netfilter/extr_nf_conntrack_l3proto_ipv4_compat.c_ct_get_idx.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/ipv4/netfilter/extr_nf_conntrack_l3proto_ipv4_compat.c_ct_get_idx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hlist_nulls_node = type { i32 }
%struct.seq_file = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.hlist_nulls_node* (%struct.seq_file*, i64)* @ct_get_idx to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.hlist_nulls_node* @ct_get_idx(%struct.seq_file* %0, i64 %1) #0 {
  %3 = alloca %struct.seq_file*, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.hlist_nulls_node*, align 8
  store %struct.seq_file* %0, %struct.seq_file** %3, align 8
  store i64 %1, i64* %4, align 8
  %6 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %7 = call %struct.hlist_nulls_node* @ct_get_first(%struct.seq_file* %6)
  store %struct.hlist_nulls_node* %7, %struct.hlist_nulls_node** %5, align 8
  %8 = load %struct.hlist_nulls_node*, %struct.hlist_nulls_node** %5, align 8
  %9 = icmp ne %struct.hlist_nulls_node* %8, null
  br i1 %9, label %10, label %25

10:                                               ; preds = %2
  br label %11

11:                                               ; preds = %21, %10
  %12 = load i64, i64* %4, align 8
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %19

14:                                               ; preds = %11
  %15 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %16 = load %struct.hlist_nulls_node*, %struct.hlist_nulls_node** %5, align 8
  %17 = call %struct.hlist_nulls_node* @ct_get_next(%struct.seq_file* %15, %struct.hlist_nulls_node* %16)
  store %struct.hlist_nulls_node* %17, %struct.hlist_nulls_node** %5, align 8
  %18 = icmp ne %struct.hlist_nulls_node* %17, null
  br label %19

19:                                               ; preds = %14, %11
  %20 = phi i1 [ false, %11 ], [ %18, %14 ]
  br i1 %20, label %21, label %24

21:                                               ; preds = %19
  %22 = load i64, i64* %4, align 8
  %23 = add nsw i64 %22, -1
  store i64 %23, i64* %4, align 8
  br label %11

24:                                               ; preds = %19
  br label %25

25:                                               ; preds = %24, %2
  %26 = load i64, i64* %4, align 8
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %29

28:                                               ; preds = %25
  br label %31

29:                                               ; preds = %25
  %30 = load %struct.hlist_nulls_node*, %struct.hlist_nulls_node** %5, align 8
  br label %31

31:                                               ; preds = %29, %28
  %32 = phi %struct.hlist_nulls_node* [ null, %28 ], [ %30, %29 ]
  ret %struct.hlist_nulls_node* %32
}

declare dso_local %struct.hlist_nulls_node* @ct_get_first(%struct.seq_file*) #1

declare dso_local %struct.hlist_nulls_node* @ct_get_next(%struct.seq_file*, %struct.hlist_nulls_node*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

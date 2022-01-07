; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/ipv4/netfilter/extr_nf_nat_helper.c_nf_nat_get_offset.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/ipv4/netfilter/extr_nf_nat_helper.c_nf_nat_get_offset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nf_conn = type { i32 }
%struct.nf_conn_nat = type { %struct.nf_nat_seq* }
%struct.nf_nat_seq = type { i32, i32, i32 }

@nf_nat_seqofs_lock = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nf_nat_get_offset(%struct.nf_conn* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.nf_conn*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.nf_conn_nat*, align 8
  %9 = alloca %struct.nf_nat_seq*, align 8
  %10 = alloca i32, align 4
  store %struct.nf_conn* %0, %struct.nf_conn** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %11 = load %struct.nf_conn*, %struct.nf_conn** %5, align 8
  %12 = call %struct.nf_conn_nat* @nfct_nat(%struct.nf_conn* %11)
  store %struct.nf_conn_nat* %12, %struct.nf_conn_nat** %8, align 8
  %13 = load %struct.nf_conn_nat*, %struct.nf_conn_nat** %8, align 8
  %14 = icmp ne %struct.nf_conn_nat* %13, null
  br i1 %14, label %16, label %15

15:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %42

16:                                               ; preds = %3
  %17 = load %struct.nf_conn_nat*, %struct.nf_conn_nat** %8, align 8
  %18 = getelementptr inbounds %struct.nf_conn_nat, %struct.nf_conn_nat* %17, i32 0, i32 0
  %19 = load %struct.nf_nat_seq*, %struct.nf_nat_seq** %18, align 8
  %20 = load i32, i32* %6, align 4
  %21 = zext i32 %20 to i64
  %22 = getelementptr inbounds %struct.nf_nat_seq, %struct.nf_nat_seq* %19, i64 %21
  store %struct.nf_nat_seq* %22, %struct.nf_nat_seq** %9, align 8
  %23 = call i32 @spin_lock_bh(i32* @nf_nat_seqofs_lock)
  %24 = load i32, i32* %7, align 4
  %25 = load %struct.nf_nat_seq*, %struct.nf_nat_seq** %9, align 8
  %26 = getelementptr inbounds %struct.nf_nat_seq, %struct.nf_nat_seq* %25, i32 0, i32 2
  %27 = load i32, i32* %26, align 4
  %28 = call i64 @after(i32 %24, i32 %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %34

30:                                               ; preds = %16
  %31 = load %struct.nf_nat_seq*, %struct.nf_nat_seq** %9, align 8
  %32 = getelementptr inbounds %struct.nf_nat_seq, %struct.nf_nat_seq* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  br label %38

34:                                               ; preds = %16
  %35 = load %struct.nf_nat_seq*, %struct.nf_nat_seq** %9, align 8
  %36 = getelementptr inbounds %struct.nf_nat_seq, %struct.nf_nat_seq* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  br label %38

38:                                               ; preds = %34, %30
  %39 = phi i32 [ %33, %30 ], [ %37, %34 ]
  store i32 %39, i32* %10, align 4
  %40 = call i32 @spin_unlock_bh(i32* @nf_nat_seqofs_lock)
  %41 = load i32, i32* %10, align 4
  store i32 %41, i32* %4, align 4
  br label %42

42:                                               ; preds = %38, %15
  %43 = load i32, i32* %4, align 4
  ret i32 %43
}

declare dso_local %struct.nf_conn_nat* @nfct_nat(%struct.nf_conn*) #1

declare dso_local i32 @spin_lock_bh(i32*) #1

declare dso_local i64 @after(i32, i32) #1

declare dso_local i32 @spin_unlock_bh(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

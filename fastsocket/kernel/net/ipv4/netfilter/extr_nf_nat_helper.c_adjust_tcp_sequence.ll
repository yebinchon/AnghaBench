; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/ipv4/netfilter/extr_nf_nat_helper.c_adjust_tcp_sequence.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/ipv4/netfilter/extr_nf_nat_helper.c_adjust_tcp_sequence.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nf_conn = type { i32 }
%struct.nf_nat_seq = type { i64, i64, i32 }
%struct.nf_conn_nat = type { %struct.nf_nat_seq* }

@.str = private unnamed_addr constant [46 x i8] c"adjust_tcp_sequence: seq = %u, sizediff = %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [42 x i8] c"nf_nat_resize_packet: Seq_offset before: \00", align 1
@nf_nat_seqofs_lock = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [41 x i8] c"nf_nat_resize_packet: Seq_offset after: \00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i32, %struct.nf_conn*, i32)* @adjust_tcp_sequence to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @adjust_tcp_sequence(i32 %0, i32 %1, %struct.nf_conn* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.nf_conn*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.nf_nat_seq*, align 8
  %11 = alloca %struct.nf_nat_seq*, align 8
  %12 = alloca %struct.nf_conn_nat*, align 8
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store %struct.nf_conn* %2, %struct.nf_conn** %7, align 8
  store i32 %3, i32* %8, align 4
  %13 = load %struct.nf_conn*, %struct.nf_conn** %7, align 8
  %14 = call %struct.nf_conn_nat* @nfct_nat(%struct.nf_conn* %13)
  store %struct.nf_conn_nat* %14, %struct.nf_conn_nat** %12, align 8
  %15 = load i32, i32* %5, align 4
  %16 = load i32, i32* %5, align 4
  %17 = call i32 (i8*, ...) @pr_debug(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str, i64 0, i64 0), i32 %15, i32 %16)
  %18 = load i32, i32* %8, align 4
  %19 = call i32 @CTINFO2DIR(i32 %18)
  store i32 %19, i32* %9, align 4
  %20 = load %struct.nf_conn_nat*, %struct.nf_conn_nat** %12, align 8
  %21 = getelementptr inbounds %struct.nf_conn_nat, %struct.nf_conn_nat* %20, i32 0, i32 0
  %22 = load %struct.nf_nat_seq*, %struct.nf_nat_seq** %21, align 8
  %23 = load i32, i32* %9, align 4
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds %struct.nf_nat_seq, %struct.nf_nat_seq* %22, i64 %24
  store %struct.nf_nat_seq* %25, %struct.nf_nat_seq** %10, align 8
  %26 = load %struct.nf_conn_nat*, %struct.nf_conn_nat** %12, align 8
  %27 = getelementptr inbounds %struct.nf_conn_nat, %struct.nf_conn_nat* %26, i32 0, i32 0
  %28 = load %struct.nf_nat_seq*, %struct.nf_nat_seq** %27, align 8
  %29 = load i32, i32* %9, align 4
  %30 = icmp ne i32 %29, 0
  %31 = xor i1 %30, true
  %32 = zext i1 %31 to i32
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds %struct.nf_nat_seq, %struct.nf_nat_seq* %28, i64 %33
  store %struct.nf_nat_seq* %34, %struct.nf_nat_seq** %11, align 8
  %35 = call i32 (i8*, ...) @pr_debug(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.1, i64 0, i64 0))
  %36 = load %struct.nf_nat_seq*, %struct.nf_nat_seq** %10, align 8
  %37 = call i32 @DUMP_OFFSET(%struct.nf_nat_seq* %36)
  %38 = call i32 @spin_lock_bh(i32* @nf_nat_seqofs_lock)
  %39 = load %struct.nf_nat_seq*, %struct.nf_nat_seq** %10, align 8
  %40 = getelementptr inbounds %struct.nf_nat_seq, %struct.nf_nat_seq* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = load %struct.nf_nat_seq*, %struct.nf_nat_seq** %10, align 8
  %43 = getelementptr inbounds %struct.nf_nat_seq, %struct.nf_nat_seq* %42, i32 0, i32 1
  %44 = load i64, i64* %43, align 8
  %45 = icmp eq i64 %41, %44
  br i1 %45, label %53, label %46

46:                                               ; preds = %4
  %47 = load %struct.nf_nat_seq*, %struct.nf_nat_seq** %10, align 8
  %48 = getelementptr inbounds %struct.nf_nat_seq, %struct.nf_nat_seq* %47, i32 0, i32 2
  %49 = load i32, i32* %48, align 8
  %50 = load i32, i32* %5, align 4
  %51 = call i64 @before(i32 %49, i32 %50)
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %68

53:                                               ; preds = %46, %4
  %54 = load i32, i32* %5, align 4
  %55 = load %struct.nf_nat_seq*, %struct.nf_nat_seq** %10, align 8
  %56 = getelementptr inbounds %struct.nf_nat_seq, %struct.nf_nat_seq* %55, i32 0, i32 2
  store i32 %54, i32* %56, align 8
  %57 = load %struct.nf_nat_seq*, %struct.nf_nat_seq** %10, align 8
  %58 = getelementptr inbounds %struct.nf_nat_seq, %struct.nf_nat_seq* %57, i32 0, i32 1
  %59 = load i64, i64* %58, align 8
  %60 = load %struct.nf_nat_seq*, %struct.nf_nat_seq** %10, align 8
  %61 = getelementptr inbounds %struct.nf_nat_seq, %struct.nf_nat_seq* %60, i32 0, i32 0
  store i64 %59, i64* %61, align 8
  %62 = load i32, i32* %6, align 4
  %63 = sext i32 %62 to i64
  %64 = load %struct.nf_nat_seq*, %struct.nf_nat_seq** %10, align 8
  %65 = getelementptr inbounds %struct.nf_nat_seq, %struct.nf_nat_seq* %64, i32 0, i32 1
  %66 = load i64, i64* %65, align 8
  %67 = add nsw i64 %66, %63
  store i64 %67, i64* %65, align 8
  br label %68

68:                                               ; preds = %53, %46
  %69 = call i32 @spin_unlock_bh(i32* @nf_nat_seqofs_lock)
  %70 = call i32 (i8*, ...) @pr_debug(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.2, i64 0, i64 0))
  %71 = load %struct.nf_nat_seq*, %struct.nf_nat_seq** %10, align 8
  %72 = call i32 @DUMP_OFFSET(%struct.nf_nat_seq* %71)
  ret void
}

declare dso_local %struct.nf_conn_nat* @nfct_nat(%struct.nf_conn*) #1

declare dso_local i32 @pr_debug(i8*, ...) #1

declare dso_local i32 @CTINFO2DIR(i32) #1

declare dso_local i32 @DUMP_OFFSET(%struct.nf_nat_seq*) #1

declare dso_local i32 @spin_lock_bh(i32*) #1

declare dso_local i64 @before(i32, i32) #1

declare dso_local i32 @spin_unlock_bh(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

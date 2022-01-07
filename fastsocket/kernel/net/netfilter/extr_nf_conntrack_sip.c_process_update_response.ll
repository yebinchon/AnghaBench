; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/netfilter/extr_nf_conntrack_sip.c_process_update_response.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/netfilter/extr_nf_conntrack_sip.c_process_update_response.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.nf_conn = type { i32 }
%struct.nf_conn_help = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }

@NF_ACCEPT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*, i8**, i32*, i32, i32)* @process_update_response to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @process_update_response(%struct.sk_buff* %0, i8** %1, i32* %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.sk_buff*, align 8
  %8 = alloca i8**, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.nf_conn*, align 8
  %14 = alloca %struct.nf_conn_help*, align 8
  store %struct.sk_buff* %0, %struct.sk_buff** %7, align 8
  store i8** %1, i8*** %8, align 8
  store i32* %2, i32** %9, align 8
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  %15 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %16 = call %struct.nf_conn* @nf_ct_get(%struct.sk_buff* %15, i32* %12)
  store %struct.nf_conn* %16, %struct.nf_conn** %13, align 8
  %17 = load %struct.nf_conn*, %struct.nf_conn** %13, align 8
  %18 = call %struct.nf_conn_help* @nfct_help(%struct.nf_conn* %17)
  store %struct.nf_conn_help* %18, %struct.nf_conn_help** %14, align 8
  %19 = load i32, i32* %11, align 4
  %20 = icmp uge i32 %19, 100
  br i1 %20, label %21, label %24

21:                                               ; preds = %5
  %22 = load i32, i32* %11, align 4
  %23 = icmp ule i32 %22, 199
  br i1 %23, label %30, label %24

24:                                               ; preds = %21, %5
  %25 = load i32, i32* %11, align 4
  %26 = icmp uge i32 %25, 200
  br i1 %26, label %27, label %36

27:                                               ; preds = %24
  %28 = load i32, i32* %11, align 4
  %29 = icmp ule i32 %28, 299
  br i1 %29, label %30, label %36

30:                                               ; preds = %27, %21
  %31 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %32 = load i8**, i8*** %8, align 8
  %33 = load i32*, i32** %9, align 8
  %34 = load i32, i32* %10, align 4
  %35 = call i32 @process_sdp(%struct.sk_buff* %31, i8** %32, i32* %33, i32 %34)
  store i32 %35, i32* %6, align 4
  br label %50

36:                                               ; preds = %27, %24
  %37 = load %struct.nf_conn_help*, %struct.nf_conn_help** %14, align 8
  %38 = getelementptr inbounds %struct.nf_conn_help, %struct.nf_conn_help* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = load i32, i32* %10, align 4
  %43 = icmp eq i32 %41, %42
  br i1 %43, label %44, label %47

44:                                               ; preds = %36
  %45 = load %struct.nf_conn*, %struct.nf_conn** %13, align 8
  %46 = call i32 @flush_expectations(%struct.nf_conn* %45, i32 1)
  br label %47

47:                                               ; preds = %44, %36
  br label %48

48:                                               ; preds = %47
  %49 = load i32, i32* @NF_ACCEPT, align 4
  store i32 %49, i32* %6, align 4
  br label %50

50:                                               ; preds = %48, %30
  %51 = load i32, i32* %6, align 4
  ret i32 %51
}

declare dso_local %struct.nf_conn* @nf_ct_get(%struct.sk_buff*, i32*) #1

declare dso_local %struct.nf_conn_help* @nfct_help(%struct.nf_conn*) #1

declare dso_local i32 @process_sdp(%struct.sk_buff*, i8**, i32*, i32) #1

declare dso_local i32 @flush_expectations(%struct.nf_conn*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

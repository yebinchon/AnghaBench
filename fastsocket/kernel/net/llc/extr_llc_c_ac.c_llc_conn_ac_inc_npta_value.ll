; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/llc/extr_llc_c_ac.c_llc_conn_ac_inc_npta_value.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/llc/extr_llc_c_ac.c_llc_conn_ac_inc_npta_value.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sock = type { i32 }
%struct.sk_buff = type { i32 }
%struct.llc_sock = type { i32, i32, i64, i64 }

@LLC_2_SEQ_NBR_MODULO = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sock*, %struct.sk_buff*)* @llc_conn_ac_inc_npta_value to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @llc_conn_ac_inc_npta_value(%struct.sock* %0, %struct.sk_buff* %1) #0 {
  %3 = alloca %struct.sock*, align 8
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca %struct.llc_sock*, align 8
  store %struct.sock* %0, %struct.sock** %3, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %4, align 8
  %6 = load %struct.sock*, %struct.sock** %3, align 8
  %7 = call %struct.llc_sock* @llc_sk(%struct.sock* %6)
  store %struct.llc_sock* %7, %struct.llc_sock** %5, align 8
  %8 = load %struct.llc_sock*, %struct.llc_sock** %5, align 8
  %9 = getelementptr inbounds %struct.llc_sock, %struct.llc_sock* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 8
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %35, label %12

12:                                               ; preds = %2
  %13 = load %struct.llc_sock*, %struct.llc_sock** %5, align 8
  %14 = getelementptr inbounds %struct.llc_sock, %struct.llc_sock* %13, i32 0, i32 3
  store i64 0, i64* %14, align 8
  %15 = load %struct.llc_sock*, %struct.llc_sock** %5, align 8
  %16 = getelementptr inbounds %struct.llc_sock, %struct.llc_sock* %15, i32 0, i32 0
  store i32 2, i32* %16, align 8
  %17 = load %struct.llc_sock*, %struct.llc_sock** %5, align 8
  %18 = getelementptr inbounds %struct.llc_sock, %struct.llc_sock* %17, i32 0, i32 1
  store i32 2, i32* %18, align 4
  %19 = load %struct.llc_sock*, %struct.llc_sock** %5, align 8
  %20 = getelementptr inbounds %struct.llc_sock, %struct.llc_sock* %19, i32 0, i32 2
  %21 = load i64, i64* %20, align 8
  %22 = add nsw i64 %21, 1
  store i64 %22, i64* %20, align 8
  %23 = load %struct.llc_sock*, %struct.llc_sock** %5, align 8
  %24 = getelementptr inbounds %struct.llc_sock, %struct.llc_sock* %23, i32 0, i32 2
  %25 = load i64, i64* %24, align 8
  %26 = load i64, i64* @LLC_2_SEQ_NBR_MODULO, align 8
  %27 = xor i64 %26, -1
  %28 = icmp sgt i64 %25, %27
  br i1 %28, label %29, label %34

29:                                               ; preds = %12
  %30 = load i64, i64* @LLC_2_SEQ_NBR_MODULO, align 8
  %31 = xor i64 %30, -1
  %32 = load %struct.llc_sock*, %struct.llc_sock** %5, align 8
  %33 = getelementptr inbounds %struct.llc_sock, %struct.llc_sock* %32, i32 0, i32 2
  store i64 %31, i64* %33, align 8
  br label %34

34:                                               ; preds = %29, %12
  br label %40

35:                                               ; preds = %2
  %36 = load %struct.llc_sock*, %struct.llc_sock** %5, align 8
  %37 = getelementptr inbounds %struct.llc_sock, %struct.llc_sock* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = add nsw i32 %38, -1
  store i32 %39, i32* %37, align 8
  br label %40

40:                                               ; preds = %35, %34
  ret i32 0
}

declare dso_local %struct.llc_sock* @llc_sk(%struct.sock*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

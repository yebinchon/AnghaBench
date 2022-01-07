; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/dccp/extr_ackvec.c_dccp_ackvec_parse.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/dccp/extr_ackvec.c_dccp_ackvec_parse.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sock = type { i32 }
%struct.sk_buff = type { i32 }
%struct.TYPE_2__ = type { i32 }

@DCCP_SINGLE_OPT_MAXLEN = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @dccp_ackvec_parse(%struct.sock* %0, %struct.sk_buff* %1, i32* %2, i64 %3, i64* %4, i64 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.sock*, align 8
  %9 = alloca %struct.sk_buff*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64*, align 8
  %13 = alloca i64, align 8
  store %struct.sock* %0, %struct.sock** %8, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %9, align 8
  store i32* %2, i32** %10, align 8
  store i64 %3, i64* %11, align 8
  store i64* %4, i64** %12, align 8
  store i64 %5, i64* %13, align 8
  %14 = load i64, i64* %13, align 8
  %15 = load i64, i64* @DCCP_SINGLE_OPT_MAXLEN, align 8
  %16 = icmp sgt i64 %14, %15
  br i1 %16, label %17, label %18

17:                                               ; preds = %6
  store i32 -1, i32* %7, align 4
  br label %28

18:                                               ; preds = %6
  %19 = load %struct.sock*, %struct.sock** %8, align 8
  %20 = call %struct.TYPE_2__* @dccp_sk(%struct.sock* %19)
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = load %struct.sock*, %struct.sock** %8, align 8
  %24 = load i32*, i32** %10, align 8
  %25 = load i64, i64* %13, align 8
  %26 = load i64*, i64** %12, align 8
  %27 = call i32 @dccp_ackvec_check_rcv_ackvector(i32 %22, %struct.sock* %23, i32* %24, i64 %25, i64* %26)
  store i32 0, i32* %7, align 4
  br label %28

28:                                               ; preds = %18, %17
  %29 = load i32, i32* %7, align 4
  ret i32 %29
}

declare dso_local i32 @dccp_ackvec_check_rcv_ackvector(i32, %struct.sock*, i32*, i64, i64*) #1

declare dso_local %struct.TYPE_2__* @dccp_sk(%struct.sock*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

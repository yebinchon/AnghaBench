; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/llc/extr_af_llc.c_llc_ui_header_len.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/llc/extr_af_llc.c_llc_ui_header_len.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sock = type { i64 }
%struct.sockaddr_llc = type { i64, i64 }

@LLC_PDU_LEN_U = common dso_local global i32 0, align 4
@SOCK_STREAM = common dso_local global i64 0, align 8
@LLC_PDU_LEN_I = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sock*, %struct.sockaddr_llc*)* @llc_ui_header_len to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @llc_ui_header_len(%struct.sock* %0, %struct.sockaddr_llc* %1) #0 {
  %3 = alloca %struct.sock*, align 8
  %4 = alloca %struct.sockaddr_llc*, align 8
  %5 = alloca i32, align 4
  store %struct.sock* %0, %struct.sock** %3, align 8
  store %struct.sockaddr_llc* %1, %struct.sockaddr_llc** %4, align 8
  %6 = load i32, i32* @LLC_PDU_LEN_U, align 4
  store i32 %6, i32* %5, align 4
  %7 = load %struct.sockaddr_llc*, %struct.sockaddr_llc** %4, align 8
  %8 = getelementptr inbounds %struct.sockaddr_llc, %struct.sockaddr_llc* %7, i32 0, i32 1
  %9 = load i64, i64* %8, align 8
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %16, label %11

11:                                               ; preds = %2
  %12 = load %struct.sockaddr_llc*, %struct.sockaddr_llc** %4, align 8
  %13 = getelementptr inbounds %struct.sockaddr_llc, %struct.sockaddr_llc* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %18

16:                                               ; preds = %11, %2
  %17 = load i32, i32* @LLC_PDU_LEN_U, align 4
  store i32 %17, i32* %5, align 4
  br label %27

18:                                               ; preds = %11
  %19 = load %struct.sock*, %struct.sock** %3, align 8
  %20 = getelementptr inbounds %struct.sock, %struct.sock* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = load i64, i64* @SOCK_STREAM, align 8
  %23 = icmp eq i64 %21, %22
  br i1 %23, label %24, label %26

24:                                               ; preds = %18
  %25 = load i32, i32* @LLC_PDU_LEN_I, align 4
  store i32 %25, i32* %5, align 4
  br label %26

26:                                               ; preds = %24, %18
  br label %27

27:                                               ; preds = %26, %16
  %28 = load i32, i32* %5, align 4
  ret i32 %28
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

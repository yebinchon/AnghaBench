; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/ipv4/netfilter/extr_nf_nat_ftp.c_mangle_epsv_packet.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/ipv4/netfilter/extr_nf_nat_ftp.c_mangle_epsv_packet.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.nf_conn = type { i32 }

@.str = private unnamed_addr constant [7 x i8] c"|||%u|\00", align 1
@.str.1 = private unnamed_addr constant [34 x i8] c"calling nf_nat_mangle_tcp_packet\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*, i32, i32, i32, i32, %struct.nf_conn*, i32)* @mangle_epsv_packet to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mangle_epsv_packet(%struct.sk_buff* %0, i32 %1, i32 %2, i32 %3, i32 %4, %struct.nf_conn* %5, i32 %6) #0 {
  %8 = alloca %struct.sk_buff*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.nf_conn*, align 8
  %14 = alloca i32, align 4
  %15 = alloca [10 x i8], align 1
  store %struct.sk_buff* %0, %struct.sk_buff** %8, align 8
  store i32 %1, i32* %9, align 4
  store i32 %2, i32* %10, align 4
  store i32 %3, i32* %11, align 4
  store i32 %4, i32* %12, align 4
  store %struct.nf_conn* %5, %struct.nf_conn** %13, align 8
  store i32 %6, i32* %14, align 4
  %16 = getelementptr inbounds [10 x i8], [10 x i8]* %15, i64 0, i64 0
  %17 = load i32, i32* %10, align 4
  %18 = call i32 @sprintf(i8* %16, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i32 %17)
  %19 = call i32 @pr_debug(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0))
  %20 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %21 = load %struct.nf_conn*, %struct.nf_conn** %13, align 8
  %22 = load i32, i32* %14, align 4
  %23 = load i32, i32* %11, align 4
  %24 = load i32, i32* %12, align 4
  %25 = getelementptr inbounds [10 x i8], [10 x i8]* %15, i64 0, i64 0
  %26 = getelementptr inbounds [10 x i8], [10 x i8]* %15, i64 0, i64 0
  %27 = call i32 @strlen(i8* %26)
  %28 = call i32 @nf_nat_mangle_tcp_packet(%struct.sk_buff* %20, %struct.nf_conn* %21, i32 %22, i32 %23, i32 %24, i8* %25, i32 %27)
  ret i32 %28
}

declare dso_local i32 @sprintf(i8*, i8*, i32) #1

declare dso_local i32 @pr_debug(i8*) #1

declare dso_local i32 @nf_nat_mangle_tcp_packet(%struct.sk_buff*, %struct.nf_conn*, i32, i32, i32, i8*, i32) #1

declare dso_local i32 @strlen(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

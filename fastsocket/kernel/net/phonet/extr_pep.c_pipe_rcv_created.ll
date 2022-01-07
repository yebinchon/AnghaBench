; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/phonet/extr_pep.c_pipe_rcv_created.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/phonet/extr_pep.c_pipe_rcv_created.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sock = type { i32 }
%struct.sk_buff = type { i32 }
%struct.pep_sock = type { i64, i64 }
%struct.pnpipehdr = type { i64* }

@PN_LEGACY_FLOW_CONTROL = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sock*, %struct.sk_buff*)* @pipe_rcv_created to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pipe_rcv_created(%struct.sock* %0, %struct.sk_buff* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.sock*, align 8
  %5 = alloca %struct.sk_buff*, align 8
  %6 = alloca %struct.pep_sock*, align 8
  %7 = alloca %struct.pnpipehdr*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca [2 x i64], align 16
  %11 = alloca i64, align 8
  %12 = alloca i64*, align 8
  store %struct.sock* %0, %struct.sock** %4, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %5, align 8
  %13 = load %struct.sock*, %struct.sock** %4, align 8
  %14 = call %struct.pep_sock* @pep_sk(%struct.sock* %13)
  store %struct.pep_sock* %14, %struct.pep_sock** %6, align 8
  %15 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %16 = call %struct.pnpipehdr* @pnp_hdr(%struct.sk_buff* %15)
  store %struct.pnpipehdr* %16, %struct.pnpipehdr** %7, align 8
  %17 = load %struct.pnpipehdr*, %struct.pnpipehdr** %7, align 8
  %18 = getelementptr inbounds %struct.pnpipehdr, %struct.pnpipehdr* %17, i32 0, i32 0
  %19 = load i64*, i64** %18, align 8
  %20 = getelementptr inbounds i64, i64* %19, i64 0
  %21 = load i64, i64* %20, align 8
  store i64 %21, i64* %8, align 8
  %22 = load i64, i64* @PN_LEGACY_FLOW_CONTROL, align 8
  %23 = load %struct.pep_sock*, %struct.pep_sock** %6, align 8
  %24 = getelementptr inbounds %struct.pep_sock, %struct.pep_sock* %23, i32 0, i32 1
  store i64 %22, i64* %24, align 8
  %25 = load %struct.pep_sock*, %struct.pep_sock** %6, align 8
  %26 = getelementptr inbounds %struct.pep_sock, %struct.pep_sock* %25, i32 0, i32 0
  store i64 %22, i64* %26, align 8
  %27 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %28 = call i32 @__skb_pull(%struct.sk_buff* %27, i32 8)
  br label %29

29:                                               ; preds = %69, %2
  %30 = load i64, i64* %8, align 8
  %31 = icmp sgt i64 %30, 0
  br i1 %31, label %32, label %72

32:                                               ; preds = %29
  store i64 16, i64* %11, align 8
  %33 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %34 = getelementptr inbounds [2 x i64], [2 x i64]* %10, i64 0, i64 0
  %35 = call i64* @pep_get_sb(%struct.sk_buff* %33, i64* %9, i64* %11, i64* %34)
  store i64* %35, i64** %12, align 8
  %36 = load i64*, i64** %12, align 8
  %37 = icmp eq i64* %36, null
  br i1 %37, label %38, label %41

38:                                               ; preds = %32
  %39 = load i32, i32* @EINVAL, align 4
  %40 = sub nsw i32 0, %39
  store i32 %40, i32* %3, align 4
  br label %73

41:                                               ; preds = %32
  %42 = load i64, i64* %9, align 8
  switch i64 %42, label %69 [
    i64 128, label %43
  ]

43:                                               ; preds = %41
  %44 = load i64, i64* %11, align 8
  %45 = icmp slt i64 %44, 2
  br i1 %45, label %55, label %46

46:                                               ; preds = %43
  %47 = load i64*, i64** %12, align 8
  %48 = getelementptr inbounds i64, i64* %47, i64 0
  %49 = load i64, i64* %48, align 8
  %50 = load i64*, i64** %12, align 8
  %51 = getelementptr inbounds i64, i64* %50, i64 1
  %52 = load i64, i64* %51, align 8
  %53 = or i64 %49, %52
  %54 = icmp sgt i64 %53, 3
  br i1 %54, label %55, label %56

55:                                               ; preds = %46, %43
  br label %69

56:                                               ; preds = %46
  %57 = load i64*, i64** %12, align 8
  %58 = getelementptr inbounds i64, i64* %57, i64 0
  %59 = load i64, i64* %58, align 8
  %60 = and i64 %59, 3
  %61 = load %struct.pep_sock*, %struct.pep_sock** %6, align 8
  %62 = getelementptr inbounds %struct.pep_sock, %struct.pep_sock* %61, i32 0, i32 1
  store i64 %60, i64* %62, align 8
  %63 = load i64*, i64** %12, align 8
  %64 = getelementptr inbounds i64, i64* %63, i64 1
  %65 = load i64, i64* %64, align 8
  %66 = and i64 %65, 3
  %67 = load %struct.pep_sock*, %struct.pep_sock** %6, align 8
  %68 = getelementptr inbounds %struct.pep_sock, %struct.pep_sock* %67, i32 0, i32 0
  store i64 %66, i64* %68, align 8
  br label %69

69:                                               ; preds = %41, %56, %55
  %70 = load i64, i64* %8, align 8
  %71 = add nsw i64 %70, -1
  store i64 %71, i64* %8, align 8
  br label %29

72:                                               ; preds = %29
  store i32 0, i32* %3, align 4
  br label %73

73:                                               ; preds = %72, %38
  %74 = load i32, i32* %3, align 4
  ret i32 %74
}

declare dso_local %struct.pep_sock* @pep_sk(%struct.sock*) #1

declare dso_local %struct.pnpipehdr* @pnp_hdr(%struct.sk_buff*) #1

declare dso_local i32 @__skb_pull(%struct.sk_buff*, i32) #1

declare dso_local i64* @pep_get_sb(%struct.sk_buff*, i64*, i64*, i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

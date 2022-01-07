; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/bluetooth/bnep/extr_core.c_bnep_rx_extension.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/bluetooth/bnep/extr_core.c_bnep_rx_extension.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bnep_session = type { i32 }
%struct.sk_buff = type { i32, i64 }
%struct.bnep_ext_hdr = type { i32, i32 }

@EILSEQ = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [17 x i8] c"type 0x%x len %d\00", align 1
@BNEP_TYPE_MASK = common dso_local global i32 0, align 4
@BNEP_EXT_HEADER = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bnep_session*, %struct.sk_buff*)* @bnep_rx_extension to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bnep_rx_extension(%struct.bnep_session* %0, %struct.sk_buff* %1) #0 {
  %3 = alloca %struct.bnep_session*, align 8
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca %struct.bnep_ext_hdr*, align 8
  %6 = alloca i32, align 4
  store %struct.bnep_session* %0, %struct.bnep_session** %3, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %4, align 8
  store i32 0, i32* %6, align 4
  br label %7

7:                                                ; preds = %63, %2
  %8 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %9 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %8, i32 0, i32 1
  %10 = load i64, i64* %9, align 8
  %11 = inttoptr i64 %10 to i8*
  %12 = bitcast i8* %11 to %struct.bnep_ext_hdr*
  store %struct.bnep_ext_hdr* %12, %struct.bnep_ext_hdr** %5, align 8
  %13 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %14 = call i32 @skb_pull(%struct.sk_buff* %13, i32 8)
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %19, label %16

16:                                               ; preds = %7
  %17 = load i32, i32* @EILSEQ, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %6, align 4
  br label %65

19:                                               ; preds = %7
  %20 = load %struct.bnep_ext_hdr*, %struct.bnep_ext_hdr** %5, align 8
  %21 = getelementptr inbounds %struct.bnep_ext_hdr, %struct.bnep_ext_hdr* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = load %struct.bnep_ext_hdr*, %struct.bnep_ext_hdr** %5, align 8
  %24 = getelementptr inbounds %struct.bnep_ext_hdr, %struct.bnep_ext_hdr* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = call i32 @BT_DBG(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0), i32 %22, i32 %25)
  %27 = load %struct.bnep_ext_hdr*, %struct.bnep_ext_hdr** %5, align 8
  %28 = getelementptr inbounds %struct.bnep_ext_hdr, %struct.bnep_ext_hdr* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = load i32, i32* @BNEP_TYPE_MASK, align 4
  %31 = and i32 %29, %30
  switch i32 %31, label %41 [
    i32 128, label %32
  ]

32:                                               ; preds = %19
  %33 = load %struct.bnep_session*, %struct.bnep_session** %3, align 8
  %34 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %35 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %34, i32 0, i32 1
  %36 = load i64, i64* %35, align 8
  %37 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %38 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = call i32 @bnep_rx_control(%struct.bnep_session* %33, i64 %36, i32 %39)
  br label %42

41:                                               ; preds = %19
  br label %42

42:                                               ; preds = %41, %32
  %43 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %44 = load %struct.bnep_ext_hdr*, %struct.bnep_ext_hdr** %5, align 8
  %45 = getelementptr inbounds %struct.bnep_ext_hdr, %struct.bnep_ext_hdr* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 4
  %47 = call i32 @skb_pull(%struct.sk_buff* %43, i32 %46)
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %52, label %49

49:                                               ; preds = %42
  %50 = load i32, i32* @EILSEQ, align 4
  %51 = sub nsw i32 0, %50
  store i32 %51, i32* %6, align 4
  br label %65

52:                                               ; preds = %42
  br label %53

53:                                               ; preds = %52
  %54 = load i32, i32* %6, align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %63, label %56

56:                                               ; preds = %53
  %57 = load %struct.bnep_ext_hdr*, %struct.bnep_ext_hdr** %5, align 8
  %58 = getelementptr inbounds %struct.bnep_ext_hdr, %struct.bnep_ext_hdr* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = load i32, i32* @BNEP_EXT_HEADER, align 4
  %61 = and i32 %59, %60
  %62 = icmp ne i32 %61, 0
  br label %63

63:                                               ; preds = %56, %53
  %64 = phi i1 [ false, %53 ], [ %62, %56 ]
  br i1 %64, label %7, label %65

65:                                               ; preds = %63, %49, %16
  %66 = load i32, i32* %6, align 4
  ret i32 %66
}

declare dso_local i32 @skb_pull(%struct.sk_buff*, i32) #1

declare dso_local i32 @BT_DBG(i8*, i32, i32) #1

declare dso_local i32 @bnep_rx_control(%struct.bnep_session*, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

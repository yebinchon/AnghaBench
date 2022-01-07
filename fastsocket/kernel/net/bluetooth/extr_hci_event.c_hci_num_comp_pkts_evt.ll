; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/bluetooth/extr_hci_event.c_hci_num_comp_pkts_evt.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/bluetooth/extr_hci_event.c_hci_num_comp_pkts_evt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hci_dev = type { i64, i64, i64, i64, i32, i32 }
%struct.sk_buff = type { i32, i64 }
%struct.hci_ev_num_comp_pkts = type { i32 }
%struct.hci_conn = type { i64, i32 }

@.str = private unnamed_addr constant [15 x i8] c"%s num_hndl %d\00", align 1
@.str.1 = private unnamed_addr constant [18 x i8] c"%s bad parameters\00", align 1
@ACL_LINK = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.hci_dev*, %struct.sk_buff*)* @hci_num_comp_pkts_evt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hci_num_comp_pkts_evt(%struct.hci_dev* %0, %struct.sk_buff* %1) #0 {
  %3 = alloca %struct.hci_dev*, align 8
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca %struct.hci_ev_num_comp_pkts*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.hci_conn*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  store %struct.hci_dev* %0, %struct.hci_dev** %3, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %4, align 8
  %11 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %12 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %11, i32 0, i32 1
  %13 = load i64, i64* %12, align 8
  %14 = inttoptr i64 %13 to i8*
  %15 = bitcast i8* %14 to %struct.hci_ev_num_comp_pkts*
  store %struct.hci_ev_num_comp_pkts* %15, %struct.hci_ev_num_comp_pkts** %5, align 8
  %16 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %17 = call i32 @skb_pull(%struct.sk_buff* %16, i32 4)
  %18 = load %struct.hci_dev*, %struct.hci_dev** %3, align 8
  %19 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %18, i32 0, i32 5
  %20 = load i32, i32* %19, align 4
  %21 = load %struct.hci_ev_num_comp_pkts*, %struct.hci_ev_num_comp_pkts** %5, align 8
  %22 = getelementptr inbounds %struct.hci_ev_num_comp_pkts, %struct.hci_ev_num_comp_pkts* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = call i32 (i8*, i32, ...) @BT_DBG(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i32 %20, i32 %23)
  %25 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %26 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = load %struct.hci_ev_num_comp_pkts*, %struct.hci_ev_num_comp_pkts** %5, align 8
  %29 = getelementptr inbounds %struct.hci_ev_num_comp_pkts, %struct.hci_ev_num_comp_pkts* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = mul nsw i32 %30, 4
  %32 = icmp slt i32 %27, %31
  br i1 %32, label %33, label %38

33:                                               ; preds = %2
  %34 = load %struct.hci_dev*, %struct.hci_dev** %3, align 8
  %35 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %34, i32 0, i32 5
  %36 = load i32, i32* %35, align 4
  %37 = call i32 (i8*, i32, ...) @BT_DBG(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0), i32 %36)
  br label %124

38:                                               ; preds = %2
  %39 = load %struct.hci_dev*, %struct.hci_dev** %3, align 8
  %40 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %39, i32 0, i32 4
  %41 = call i32 @tasklet_disable(i32* %40)
  store i32 0, i32* %7, align 4
  %42 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %43 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %42, i32 0, i32 1
  %44 = load i64, i64* %43, align 8
  %45 = inttoptr i64 %44 to i32*
  store i32* %45, i32** %6, align 8
  br label %46

46:                                               ; preds = %115, %38
  %47 = load i32, i32* %7, align 4
  %48 = load %struct.hci_ev_num_comp_pkts*, %struct.hci_ev_num_comp_pkts** %5, align 8
  %49 = getelementptr inbounds %struct.hci_ev_num_comp_pkts, %struct.hci_ev_num_comp_pkts* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = icmp slt i32 %47, %50
  br i1 %51, label %52, label %118

52:                                               ; preds = %46
  %53 = load i32*, i32** %6, align 8
  %54 = getelementptr inbounds i32, i32* %53, i32 1
  store i32* %54, i32** %6, align 8
  %55 = ptrtoint i32* %53 to i32
  %56 = call i64 @get_unaligned_le16(i32 %55)
  store i64 %56, i64* %9, align 8
  %57 = load i32*, i32** %6, align 8
  %58 = getelementptr inbounds i32, i32* %57, i32 1
  store i32* %58, i32** %6, align 8
  %59 = ptrtoint i32* %57 to i32
  %60 = call i64 @get_unaligned_le16(i32 %59)
  store i64 %60, i64* %10, align 8
  %61 = load %struct.hci_dev*, %struct.hci_dev** %3, align 8
  %62 = load i64, i64* %9, align 8
  %63 = call %struct.hci_conn* @hci_conn_hash_lookup_handle(%struct.hci_dev* %61, i64 %62)
  store %struct.hci_conn* %63, %struct.hci_conn** %8, align 8
  %64 = load %struct.hci_conn*, %struct.hci_conn** %8, align 8
  %65 = icmp ne %struct.hci_conn* %64, null
  br i1 %65, label %66, label %114

66:                                               ; preds = %52
  %67 = load i64, i64* %10, align 8
  %68 = load %struct.hci_conn*, %struct.hci_conn** %8, align 8
  %69 = getelementptr inbounds %struct.hci_conn, %struct.hci_conn* %68, i32 0, i32 1
  %70 = load i32, i32* %69, align 8
  %71 = sext i32 %70 to i64
  %72 = sub nsw i64 %71, %67
  %73 = trunc i64 %72 to i32
  store i32 %73, i32* %69, align 8
  %74 = load %struct.hci_conn*, %struct.hci_conn** %8, align 8
  %75 = getelementptr inbounds %struct.hci_conn, %struct.hci_conn* %74, i32 0, i32 0
  %76 = load i64, i64* %75, align 8
  %77 = load i64, i64* @ACL_LINK, align 8
  %78 = icmp eq i64 %76, %77
  br i1 %78, label %79, label %96

79:                                               ; preds = %66
  %80 = load i64, i64* %10, align 8
  %81 = load %struct.hci_dev*, %struct.hci_dev** %3, align 8
  %82 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %81, i32 0, i32 0
  %83 = load i64, i64* %82, align 8
  %84 = add nsw i64 %83, %80
  store i64 %84, i64* %82, align 8
  %85 = load %struct.hci_dev*, %struct.hci_dev** %3, align 8
  %86 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %85, i32 0, i32 1
  %87 = load i64, i64* %86, align 8
  %88 = icmp sgt i64 %84, %87
  br i1 %88, label %89, label %95

89:                                               ; preds = %79
  %90 = load %struct.hci_dev*, %struct.hci_dev** %3, align 8
  %91 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %90, i32 0, i32 1
  %92 = load i64, i64* %91, align 8
  %93 = load %struct.hci_dev*, %struct.hci_dev** %3, align 8
  %94 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %93, i32 0, i32 0
  store i64 %92, i64* %94, align 8
  br label %95

95:                                               ; preds = %89, %79
  br label %113

96:                                               ; preds = %66
  %97 = load i64, i64* %10, align 8
  %98 = load %struct.hci_dev*, %struct.hci_dev** %3, align 8
  %99 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %98, i32 0, i32 2
  %100 = load i64, i64* %99, align 8
  %101 = add nsw i64 %100, %97
  store i64 %101, i64* %99, align 8
  %102 = load %struct.hci_dev*, %struct.hci_dev** %3, align 8
  %103 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %102, i32 0, i32 3
  %104 = load i64, i64* %103, align 8
  %105 = icmp sgt i64 %101, %104
  br i1 %105, label %106, label %112

106:                                              ; preds = %96
  %107 = load %struct.hci_dev*, %struct.hci_dev** %3, align 8
  %108 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %107, i32 0, i32 3
  %109 = load i64, i64* %108, align 8
  %110 = load %struct.hci_dev*, %struct.hci_dev** %3, align 8
  %111 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %110, i32 0, i32 2
  store i64 %109, i64* %111, align 8
  br label %112

112:                                              ; preds = %106, %96
  br label %113

113:                                              ; preds = %112, %95
  br label %114

114:                                              ; preds = %113, %52
  br label %115

115:                                              ; preds = %114
  %116 = load i32, i32* %7, align 4
  %117 = add nsw i32 %116, 1
  store i32 %117, i32* %7, align 4
  br label %46

118:                                              ; preds = %46
  %119 = load %struct.hci_dev*, %struct.hci_dev** %3, align 8
  %120 = call i32 @hci_sched_tx(%struct.hci_dev* %119)
  %121 = load %struct.hci_dev*, %struct.hci_dev** %3, align 8
  %122 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %121, i32 0, i32 4
  %123 = call i32 @tasklet_enable(i32* %122)
  br label %124

124:                                              ; preds = %118, %33
  ret void
}

declare dso_local i32 @skb_pull(%struct.sk_buff*, i32) #1

declare dso_local i32 @BT_DBG(i8*, i32, ...) #1

declare dso_local i32 @tasklet_disable(i32*) #1

declare dso_local i64 @get_unaligned_le16(i32) #1

declare dso_local %struct.hci_conn* @hci_conn_hash_lookup_handle(%struct.hci_dev*, i64) #1

declare dso_local i32 @hci_sched_tx(%struct.hci_dev*) #1

declare dso_local i32 @tasklet_enable(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

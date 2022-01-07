; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/bluetooth/cmtp/extr_core.c_cmtp_recv_frame.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/bluetooth/cmtp/extr_core.c_cmtp_recv_frame.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cmtp_session = type { %struct.sk_buff** }
%struct.sk_buff = type { i64, i32* }

@.str = private unnamed_addr constant [25 x i8] c"session %p skb %p len %d\00", align 1
@.str.1 = private unnamed_addr constant [34 x i8] c"hdr 0x%02x hdrlen %d len %d id %d\00", align 1
@.str.2 = private unnamed_addr constant [47 x i8] c"Wrong size or header information in CMTP frame\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cmtp_session*, %struct.sk_buff*)* @cmtp_recv_frame to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cmtp_recv_frame(%struct.cmtp_session* %0, %struct.sk_buff* %1) #0 {
  %3 = alloca %struct.cmtp_session*, align 8
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.cmtp_session* %0, %struct.cmtp_session** %3, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %4, align 8
  %9 = load %struct.cmtp_session*, %struct.cmtp_session** %3, align 8
  %10 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %11 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %12 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = call i32 (i8*, ...) @BT_DBG(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), %struct.cmtp_session* %9, %struct.sk_buff* %10, i64 %13)
  br label %15

15:                                               ; preds = %139, %70, %2
  %16 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %17 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = icmp sgt i64 %18, 0
  br i1 %19, label %20, label %145

20:                                               ; preds = %15
  %21 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %22 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %21, i32 0, i32 1
  %23 = load i32*, i32** %22, align 8
  %24 = getelementptr inbounds i32, i32* %23, i64 0
  %25 = load i32, i32* %24, align 4
  store i32 %25, i32* %5, align 4
  %26 = load i32, i32* %5, align 4
  %27 = and i32 %26, 192
  switch i32 %27, label %47 [
    i32 64, label %28
    i32 128, label %34
  ]

28:                                               ; preds = %20
  store i32 2, i32* %6, align 4
  %29 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %30 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %29, i32 0, i32 1
  %31 = load i32*, i32** %30, align 8
  %32 = getelementptr inbounds i32, i32* %31, i64 1
  %33 = load i32, i32* %32, align 4
  store i32 %33, i32* %8, align 4
  br label %48

34:                                               ; preds = %20
  store i32 3, i32* %6, align 4
  %35 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %36 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %35, i32 0, i32 1
  %37 = load i32*, i32** %36, align 8
  %38 = getelementptr inbounds i32, i32* %37, i64 1
  %39 = load i32, i32* %38, align 4
  %40 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %41 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %40, i32 0, i32 1
  %42 = load i32*, i32** %41, align 8
  %43 = getelementptr inbounds i32, i32* %42, i64 2
  %44 = load i32, i32* %43, align 4
  %45 = shl i32 %44, 8
  %46 = or i32 %39, %45
  store i32 %46, i32* %8, align 4
  br label %48

47:                                               ; preds = %20
  store i32 1, i32* %6, align 4
  store i32 0, i32* %8, align 4
  br label %48

48:                                               ; preds = %47, %34, %28
  %49 = load i32, i32* %5, align 4
  %50 = and i32 %49, 60
  %51 = ashr i32 %50, 2
  store i32 %51, i32* %7, align 4
  %52 = load i32, i32* %5, align 4
  %53 = load i32, i32* %6, align 4
  %54 = load i32, i32* %8, align 4
  %55 = load i32, i32* %7, align 4
  %56 = call i32 (i8*, ...) @BT_DBG(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0), i32 %52, i32 %53, i32 %54, i32 %55)
  %57 = load i32, i32* %6, align 4
  %58 = load i32, i32* %8, align 4
  %59 = add nsw i32 %57, %58
  %60 = sext i32 %59 to i64
  %61 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %62 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %61, i32 0, i32 0
  %63 = load i64, i64* %62, align 8
  %64 = icmp sgt i64 %60, %63
  br i1 %64, label %65, label %67

65:                                               ; preds = %48
  %66 = call i32 @BT_ERR(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.2, i64 0, i64 0))
  br label %145

67:                                               ; preds = %48
  %68 = load i32, i32* %8, align 4
  %69 = icmp eq i32 %68, 0
  br i1 %69, label %70, label %74

70:                                               ; preds = %67
  %71 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %72 = load i32, i32* %6, align 4
  %73 = call i32 @skb_pull(%struct.sk_buff* %71, i32 %72)
  br label %15

74:                                               ; preds = %67
  %75 = load i32, i32* %5, align 4
  %76 = and i32 %75, 3
  switch i32 %76, label %114 [
    i32 0, label %77
    i32 1, label %103
  ]

77:                                               ; preds = %74
  %78 = load %struct.cmtp_session*, %struct.cmtp_session** %3, align 8
  %79 = load i32, i32* %7, align 4
  %80 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %81 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %80, i32 0, i32 1
  %82 = load i32*, i32** %81, align 8
  %83 = load i32, i32* %6, align 4
  %84 = sext i32 %83 to i64
  %85 = getelementptr inbounds i32, i32* %82, i64 %84
  %86 = load i32, i32* %8, align 4
  %87 = call i32 @cmtp_add_msgpart(%struct.cmtp_session* %78, i32 %79, i32* %85, i32 %86)
  %88 = load %struct.cmtp_session*, %struct.cmtp_session** %3, align 8
  %89 = load %struct.cmtp_session*, %struct.cmtp_session** %3, align 8
  %90 = getelementptr inbounds %struct.cmtp_session, %struct.cmtp_session* %89, i32 0, i32 0
  %91 = load %struct.sk_buff**, %struct.sk_buff*** %90, align 8
  %92 = load i32, i32* %7, align 4
  %93 = sext i32 %92 to i64
  %94 = getelementptr inbounds %struct.sk_buff*, %struct.sk_buff** %91, i64 %93
  %95 = load %struct.sk_buff*, %struct.sk_buff** %94, align 8
  %96 = call i32 @cmtp_recv_capimsg(%struct.cmtp_session* %88, %struct.sk_buff* %95)
  %97 = load %struct.cmtp_session*, %struct.cmtp_session** %3, align 8
  %98 = getelementptr inbounds %struct.cmtp_session, %struct.cmtp_session* %97, i32 0, i32 0
  %99 = load %struct.sk_buff**, %struct.sk_buff*** %98, align 8
  %100 = load i32, i32* %7, align 4
  %101 = sext i32 %100 to i64
  %102 = getelementptr inbounds %struct.sk_buff*, %struct.sk_buff** %99, i64 %101
  store %struct.sk_buff* null, %struct.sk_buff** %102, align 8
  br label %139

103:                                              ; preds = %74
  %104 = load %struct.cmtp_session*, %struct.cmtp_session** %3, align 8
  %105 = load i32, i32* %7, align 4
  %106 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %107 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %106, i32 0, i32 1
  %108 = load i32*, i32** %107, align 8
  %109 = load i32, i32* %6, align 4
  %110 = sext i32 %109 to i64
  %111 = getelementptr inbounds i32, i32* %108, i64 %110
  %112 = load i32, i32* %8, align 4
  %113 = call i32 @cmtp_add_msgpart(%struct.cmtp_session* %104, i32 %105, i32* %111, i32 %112)
  br label %139

114:                                              ; preds = %74
  %115 = load %struct.cmtp_session*, %struct.cmtp_session** %3, align 8
  %116 = getelementptr inbounds %struct.cmtp_session, %struct.cmtp_session* %115, i32 0, i32 0
  %117 = load %struct.sk_buff**, %struct.sk_buff*** %116, align 8
  %118 = load i32, i32* %7, align 4
  %119 = sext i32 %118 to i64
  %120 = getelementptr inbounds %struct.sk_buff*, %struct.sk_buff** %117, i64 %119
  %121 = load %struct.sk_buff*, %struct.sk_buff** %120, align 8
  %122 = icmp ne %struct.sk_buff* %121, null
  br i1 %122, label %123, label %132

123:                                              ; preds = %114
  %124 = load %struct.cmtp_session*, %struct.cmtp_session** %3, align 8
  %125 = getelementptr inbounds %struct.cmtp_session, %struct.cmtp_session* %124, i32 0, i32 0
  %126 = load %struct.sk_buff**, %struct.sk_buff*** %125, align 8
  %127 = load i32, i32* %7, align 4
  %128 = sext i32 %127 to i64
  %129 = getelementptr inbounds %struct.sk_buff*, %struct.sk_buff** %126, i64 %128
  %130 = load %struct.sk_buff*, %struct.sk_buff** %129, align 8
  %131 = call i32 @kfree_skb(%struct.sk_buff* %130)
  br label %132

132:                                              ; preds = %123, %114
  %133 = load %struct.cmtp_session*, %struct.cmtp_session** %3, align 8
  %134 = getelementptr inbounds %struct.cmtp_session, %struct.cmtp_session* %133, i32 0, i32 0
  %135 = load %struct.sk_buff**, %struct.sk_buff*** %134, align 8
  %136 = load i32, i32* %7, align 4
  %137 = sext i32 %136 to i64
  %138 = getelementptr inbounds %struct.sk_buff*, %struct.sk_buff** %135, i64 %137
  store %struct.sk_buff* null, %struct.sk_buff** %138, align 8
  br label %139

139:                                              ; preds = %132, %103, %77
  %140 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %141 = load i32, i32* %6, align 4
  %142 = load i32, i32* %8, align 4
  %143 = add nsw i32 %141, %142
  %144 = call i32 @skb_pull(%struct.sk_buff* %140, i32 %143)
  br label %15

145:                                              ; preds = %65, %15
  %146 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %147 = call i32 @kfree_skb(%struct.sk_buff* %146)
  ret i32 0
}

declare dso_local i32 @BT_DBG(i8*, ...) #1

declare dso_local i32 @BT_ERR(i8*) #1

declare dso_local i32 @skb_pull(%struct.sk_buff*, i32) #1

declare dso_local i32 @cmtp_add_msgpart(%struct.cmtp_session*, i32, i32*, i32) #1

declare dso_local i32 @cmtp_recv_capimsg(%struct.cmtp_session*, %struct.sk_buff*) #1

declare dso_local i32 @kfree_skb(%struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

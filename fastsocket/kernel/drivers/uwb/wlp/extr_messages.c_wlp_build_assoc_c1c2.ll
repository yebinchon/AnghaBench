; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/uwb/wlp/extr_messages.c_wlp_build_assoc_c1c2.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/uwb/wlp/extr_messages.c_wlp_build_assoc_c1c2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wlp = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.device }
%struct.device = type { i32 }
%struct.wlp_wss = type { i32 }
%struct.sk_buff = type { i64 }
%struct.anon = type { %struct.wlp_frame_assoc, %struct.wlp_attr_wssid }
%struct.wlp_frame_assoc = type { i32, i32, i32, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32, i32 }
%struct.wlp_attr_wssid = type { i32 }

@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [62 x i8] c"WLP: Unable to allocate memory for C1/C2 association frame. \0A\00", align 1
@WLP_PROTOCOL_ID = common dso_local global i32 0, align 4
@WLP_FRAME_ASSOCIATION = common dso_local global i32 0, align 4
@WLP_VERSION = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.wlp*, %struct.wlp_wss*, %struct.sk_buff**, i32)* @wlp_build_assoc_c1c2 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wlp_build_assoc_c1c2(%struct.wlp* %0, %struct.wlp_wss* %1, %struct.sk_buff** %2, i32 %3) #0 {
  %5 = alloca %struct.wlp*, align 8
  %6 = alloca %struct.wlp_wss*, align 8
  %7 = alloca %struct.sk_buff**, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.device*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.anon*, align 8
  %12 = alloca %struct.sk_buff*, align 8
  store %struct.wlp* %0, %struct.wlp** %5, align 8
  store %struct.wlp_wss* %1, %struct.wlp_wss** %6, align 8
  store %struct.sk_buff** %2, %struct.sk_buff*** %7, align 8
  store i32 %3, i32* %8, align 4
  %13 = load %struct.wlp*, %struct.wlp** %5, align 8
  %14 = getelementptr inbounds %struct.wlp, %struct.wlp* %13, i32 0, i32 0
  %15 = load %struct.TYPE_5__*, %struct.TYPE_5__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i32 0, i32 0
  store %struct.device* %17, %struct.device** %9, align 8
  %18 = load i32, i32* @ENOMEM, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %10, align 4
  %20 = call %struct.sk_buff* @dev_alloc_skb(i32 24)
  store %struct.sk_buff* %20, %struct.sk_buff** %12, align 8
  %21 = load %struct.sk_buff*, %struct.sk_buff** %12, align 8
  %22 = icmp eq %struct.sk_buff* %21, null
  br i1 %22, label %23, label %26

23:                                               ; preds = %4
  %24 = load %struct.device*, %struct.device** %9, align 8
  %25 = call i32 @dev_err(%struct.device* %24, i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str, i64 0, i64 0))
  br label %66

26:                                               ; preds = %4
  %27 = load %struct.sk_buff*, %struct.sk_buff** %12, align 8
  %28 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = inttoptr i64 %29 to i8*
  %31 = bitcast i8* %30 to %struct.anon*
  store %struct.anon* %31, %struct.anon** %11, align 8
  %32 = load i32, i32* @WLP_PROTOCOL_ID, align 4
  %33 = call i32 @cpu_to_le16(i32 %32)
  %34 = load %struct.anon*, %struct.anon** %11, align 8
  %35 = getelementptr inbounds %struct.anon, %struct.anon* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.wlp_frame_assoc, %struct.wlp_frame_assoc* %35, i32 0, i32 3
  %37 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %36, i32 0, i32 1
  store i32 %33, i32* %37, align 4
  %38 = load i32, i32* @WLP_FRAME_ASSOCIATION, align 4
  %39 = load %struct.anon*, %struct.anon** %11, align 8
  %40 = getelementptr inbounds %struct.anon, %struct.anon* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.wlp_frame_assoc, %struct.wlp_frame_assoc* %40, i32 0, i32 3
  %42 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %41, i32 0, i32 0
  store i32 %38, i32* %42, align 4
  %43 = load i32, i32* %8, align 4
  %44 = load %struct.anon*, %struct.anon** %11, align 8
  %45 = getelementptr inbounds %struct.anon, %struct.anon* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.wlp_frame_assoc, %struct.wlp_frame_assoc* %45, i32 0, i32 0
  store i32 %43, i32* %46, align 4
  %47 = load %struct.anon*, %struct.anon** %11, align 8
  %48 = getelementptr inbounds %struct.anon, %struct.anon* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.wlp_frame_assoc, %struct.wlp_frame_assoc* %48, i32 0, i32 2
  %50 = load i32, i32* @WLP_VERSION, align 4
  %51 = call i32 @wlp_set_version(i32* %49, i32 %50)
  %52 = load %struct.anon*, %struct.anon** %11, align 8
  %53 = getelementptr inbounds %struct.anon, %struct.anon* %52, i32 0, i32 0
  %54 = getelementptr inbounds %struct.wlp_frame_assoc, %struct.wlp_frame_assoc* %53, i32 0, i32 1
  %55 = load i32, i32* %8, align 4
  %56 = call i32 @wlp_set_msg_type(i32* %54, i32 %55)
  %57 = load %struct.anon*, %struct.anon** %11, align 8
  %58 = getelementptr inbounds %struct.anon, %struct.anon* %57, i32 0, i32 1
  %59 = load %struct.wlp_wss*, %struct.wlp_wss** %6, align 8
  %60 = getelementptr inbounds %struct.wlp_wss, %struct.wlp_wss* %59, i32 0, i32 0
  %61 = call i32 @wlp_set_wssid(%struct.wlp_attr_wssid* %58, i32* %60)
  %62 = load %struct.sk_buff*, %struct.sk_buff** %12, align 8
  %63 = call i32 @skb_put(%struct.sk_buff* %62, i32 24)
  %64 = load %struct.sk_buff*, %struct.sk_buff** %12, align 8
  %65 = load %struct.sk_buff**, %struct.sk_buff*** %7, align 8
  store %struct.sk_buff* %64, %struct.sk_buff** %65, align 8
  store i32 0, i32* %10, align 4
  br label %66

66:                                               ; preds = %26, %23
  %67 = load i32, i32* %10, align 4
  ret i32 %67
}

declare dso_local %struct.sk_buff* @dev_alloc_skb(i32) #1

declare dso_local i32 @dev_err(%struct.device*, i8*) #1

declare dso_local i32 @cpu_to_le16(i32) #1

declare dso_local i32 @wlp_set_version(i32*, i32) #1

declare dso_local i32 @wlp_set_msg_type(i32*, i32) #1

declare dso_local i32 @wlp_set_wssid(%struct.wlp_attr_wssid*, i32*) #1

declare dso_local i32 @skb_put(%struct.sk_buff*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

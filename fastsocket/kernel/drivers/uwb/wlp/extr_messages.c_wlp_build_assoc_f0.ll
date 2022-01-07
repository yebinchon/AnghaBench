; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/uwb/wlp/extr_messages.c_wlp_build_assoc_f0.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/uwb/wlp/extr_messages.c_wlp_build_assoc_f0.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wlp = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.device }
%struct.device = type { i32 }
%struct.sk_buff = type { i64 }
%struct.anon = type { %struct.wlp_frame_assoc, %struct.wlp_attr_enonce, %struct.wlp_attr_rnonce, %struct.wlp_attr_wlp_assc_err }
%struct.wlp_frame_assoc = type { i32, i32, i32, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32, i32 }
%struct.wlp_attr_enonce = type { i32 }
%struct.wlp_attr_rnonce = type { i32 }
%struct.wlp_attr_wlp_assc_err = type { i32 }
%struct.wlp_nonce = type { i32 }

@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [59 x i8] c"WLP: Unable to allocate memory for F0 association frame. \0A\00", align 1
@WLP_PROTOCOL_ID = common dso_local global i32 0, align 4
@WLP_FRAME_ASSOCIATION = common dso_local global i32 0, align 4
@WLP_ASSOC_F0 = common dso_local global i32 0, align 4
@WLP_VERSION = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.wlp*, %struct.sk_buff**, i32)* @wlp_build_assoc_f0 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wlp_build_assoc_f0(%struct.wlp* %0, %struct.sk_buff** %1, i32 %2) #0 {
  %4 = alloca %struct.wlp*, align 8
  %5 = alloca %struct.sk_buff**, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.device*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.anon*, align 8
  %10 = alloca %struct.sk_buff*, align 8
  %11 = alloca %struct.wlp_nonce, align 4
  store %struct.wlp* %0, %struct.wlp** %4, align 8
  store %struct.sk_buff** %1, %struct.sk_buff*** %5, align 8
  store i32 %2, i32* %6, align 4
  %12 = load %struct.wlp*, %struct.wlp** %4, align 8
  %13 = getelementptr inbounds %struct.wlp, %struct.wlp* %12, i32 0, i32 0
  %14 = load %struct.TYPE_5__*, %struct.TYPE_5__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 0
  store %struct.device* %16, %struct.device** %7, align 8
  %17 = load i32, i32* @ENOMEM, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %8, align 4
  %19 = call %struct.sk_buff* @dev_alloc_skb(i32 32)
  store %struct.sk_buff* %19, %struct.sk_buff** %10, align 8
  %20 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %21 = icmp eq %struct.sk_buff* %20, null
  br i1 %21, label %22, label %25

22:                                               ; preds = %3
  %23 = load %struct.device*, %struct.device** %7, align 8
  %24 = call i32 @dev_err(%struct.device* %23, i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str, i64 0, i64 0))
  br label %71

25:                                               ; preds = %3
  %26 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %27 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = inttoptr i64 %28 to i8*
  %30 = bitcast i8* %29 to %struct.anon*
  store %struct.anon* %30, %struct.anon** %9, align 8
  %31 = load i32, i32* @WLP_PROTOCOL_ID, align 4
  %32 = call i32 @cpu_to_le16(i32 %31)
  %33 = load %struct.anon*, %struct.anon** %9, align 8
  %34 = getelementptr inbounds %struct.anon, %struct.anon* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.wlp_frame_assoc, %struct.wlp_frame_assoc* %34, i32 0, i32 3
  %36 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %35, i32 0, i32 1
  store i32 %32, i32* %36, align 4
  %37 = load i32, i32* @WLP_FRAME_ASSOCIATION, align 4
  %38 = load %struct.anon*, %struct.anon** %9, align 8
  %39 = getelementptr inbounds %struct.anon, %struct.anon* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.wlp_frame_assoc, %struct.wlp_frame_assoc* %39, i32 0, i32 3
  %41 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %40, i32 0, i32 0
  store i32 %37, i32* %41, align 4
  %42 = load i32, i32* @WLP_ASSOC_F0, align 4
  %43 = load %struct.anon*, %struct.anon** %9, align 8
  %44 = getelementptr inbounds %struct.anon, %struct.anon* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.wlp_frame_assoc, %struct.wlp_frame_assoc* %44, i32 0, i32 2
  store i32 %42, i32* %45, align 4
  %46 = load %struct.anon*, %struct.anon** %9, align 8
  %47 = getelementptr inbounds %struct.anon, %struct.anon* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.wlp_frame_assoc, %struct.wlp_frame_assoc* %47, i32 0, i32 1
  %49 = load i32, i32* @WLP_VERSION, align 4
  %50 = call i32 @wlp_set_version(i32* %48, i32 %49)
  %51 = load %struct.anon*, %struct.anon** %9, align 8
  %52 = getelementptr inbounds %struct.anon, %struct.anon* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.wlp_frame_assoc, %struct.wlp_frame_assoc* %52, i32 0, i32 0
  %54 = load i32, i32* @WLP_ASSOC_F0, align 4
  %55 = call i32 @wlp_set_msg_type(i32* %53, i32 %54)
  %56 = call i32 @memset(%struct.wlp_nonce* %11, i32 0, i32 4)
  %57 = load %struct.anon*, %struct.anon** %9, align 8
  %58 = getelementptr inbounds %struct.anon, %struct.anon* %57, i32 0, i32 1
  %59 = call i32 @wlp_set_enonce(%struct.wlp_attr_enonce* %58, %struct.wlp_nonce* %11)
  %60 = load %struct.anon*, %struct.anon** %9, align 8
  %61 = getelementptr inbounds %struct.anon, %struct.anon* %60, i32 0, i32 2
  %62 = call i32 @wlp_set_rnonce(%struct.wlp_attr_rnonce* %61, %struct.wlp_nonce* %11)
  %63 = load %struct.anon*, %struct.anon** %9, align 8
  %64 = getelementptr inbounds %struct.anon, %struct.anon* %63, i32 0, i32 3
  %65 = load i32, i32* %6, align 4
  %66 = call i32 @wlp_set_wlp_assc_err(%struct.wlp_attr_wlp_assc_err* %64, i32 %65)
  %67 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %68 = call i32 @skb_put(%struct.sk_buff* %67, i32 32)
  %69 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %70 = load %struct.sk_buff**, %struct.sk_buff*** %5, align 8
  store %struct.sk_buff* %69, %struct.sk_buff** %70, align 8
  store i32 0, i32* %8, align 4
  br label %71

71:                                               ; preds = %25, %22
  %72 = load i32, i32* %8, align 4
  ret i32 %72
}

declare dso_local %struct.sk_buff* @dev_alloc_skb(i32) #1

declare dso_local i32 @dev_err(%struct.device*, i8*) #1

declare dso_local i32 @cpu_to_le16(i32) #1

declare dso_local i32 @wlp_set_version(i32*, i32) #1

declare dso_local i32 @wlp_set_msg_type(i32*, i32) #1

declare dso_local i32 @memset(%struct.wlp_nonce*, i32, i32) #1

declare dso_local i32 @wlp_set_enonce(%struct.wlp_attr_enonce*, %struct.wlp_nonce*) #1

declare dso_local i32 @wlp_set_rnonce(%struct.wlp_attr_rnonce*, %struct.wlp_nonce*) #1

declare dso_local i32 @wlp_set_wlp_assc_err(%struct.wlp_attr_wlp_assc_err*, i32) #1

declare dso_local i32 @skb_put(%struct.sk_buff*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

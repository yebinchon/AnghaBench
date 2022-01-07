; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/uwb/wlp/extr_txrx.c_wlp_direct_assoc_frame.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/uwb/wlp/extr_txrx.c_wlp_direct_assoc_frame.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wlp = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { %struct.device }
%struct.device = type { i32 }
%struct.sk_buff = type { i64 }
%struct.uwb_dev_addr = type { i32 }
%struct.wlp_frame_assoc = type { i32 }
%struct.wlp_assoc_frame_ctx = type { i32, %struct.uwb_dev_addr, %struct.sk_buff*, %struct.wlp* }

@GFP_ATOMIC = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [64 x i8] c"WLP: Unable to allocate memory for association frame handling.\0A\00", align 1
@wlp_handle_d1_frame = common dso_local global i32 0, align 4
@wlp_handle_c1_frame = common dso_local global i32 0, align 4
@wlp_handle_c3_frame = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [51 x i8] c"Received unexpected association frame. Type = %d \0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.wlp*, %struct.sk_buff*, %struct.uwb_dev_addr*)* @wlp_direct_assoc_frame to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @wlp_direct_assoc_frame(%struct.wlp* %0, %struct.sk_buff* %1, %struct.uwb_dev_addr* %2) #0 {
  %4 = alloca %struct.wlp*, align 8
  %5 = alloca %struct.sk_buff*, align 8
  %6 = alloca %struct.uwb_dev_addr*, align 8
  %7 = alloca %struct.device*, align 8
  %8 = alloca %struct.wlp_frame_assoc*, align 8
  %9 = alloca %struct.wlp_assoc_frame_ctx*, align 8
  store %struct.wlp* %0, %struct.wlp** %4, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %5, align 8
  store %struct.uwb_dev_addr* %2, %struct.uwb_dev_addr** %6, align 8
  %10 = load %struct.wlp*, %struct.wlp** %4, align 8
  %11 = getelementptr inbounds %struct.wlp, %struct.wlp* %10, i32 0, i32 0
  %12 = load %struct.TYPE_4__*, %struct.TYPE_4__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %13, i32 0, i32 0
  store %struct.device* %14, %struct.device** %7, align 8
  %15 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %16 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = inttoptr i64 %17 to i8*
  %19 = bitcast i8* %18 to %struct.wlp_frame_assoc*
  store %struct.wlp_frame_assoc* %19, %struct.wlp_frame_assoc** %8, align 8
  %20 = load i32, i32* @GFP_ATOMIC, align 4
  %21 = call %struct.wlp_assoc_frame_ctx* @kmalloc(i32 24, i32 %20)
  store %struct.wlp_assoc_frame_ctx* %21, %struct.wlp_assoc_frame_ctx** %9, align 8
  %22 = load %struct.wlp_assoc_frame_ctx*, %struct.wlp_assoc_frame_ctx** %9, align 8
  %23 = icmp eq %struct.wlp_assoc_frame_ctx* %22, null
  br i1 %23, label %24, label %29

24:                                               ; preds = %3
  %25 = load %struct.device*, %struct.device** %7, align 8
  %26 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %25, i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str, i64 0, i64 0))
  %27 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %28 = call i32 @kfree_skb(%struct.sk_buff* %27)
  br label %83

29:                                               ; preds = %3
  %30 = load %struct.wlp*, %struct.wlp** %4, align 8
  %31 = load %struct.wlp_assoc_frame_ctx*, %struct.wlp_assoc_frame_ctx** %9, align 8
  %32 = getelementptr inbounds %struct.wlp_assoc_frame_ctx, %struct.wlp_assoc_frame_ctx* %31, i32 0, i32 3
  store %struct.wlp* %30, %struct.wlp** %32, align 8
  %33 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %34 = load %struct.wlp_assoc_frame_ctx*, %struct.wlp_assoc_frame_ctx** %9, align 8
  %35 = getelementptr inbounds %struct.wlp_assoc_frame_ctx, %struct.wlp_assoc_frame_ctx* %34, i32 0, i32 2
  store %struct.sk_buff* %33, %struct.sk_buff** %35, align 8
  %36 = load %struct.wlp_assoc_frame_ctx*, %struct.wlp_assoc_frame_ctx** %9, align 8
  %37 = getelementptr inbounds %struct.wlp_assoc_frame_ctx, %struct.wlp_assoc_frame_ctx* %36, i32 0, i32 1
  %38 = load %struct.uwb_dev_addr*, %struct.uwb_dev_addr** %6, align 8
  %39 = bitcast %struct.uwb_dev_addr* %37 to i8*
  %40 = bitcast %struct.uwb_dev_addr* %38 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %39, i8* align 4 %40, i64 4, i1 false)
  %41 = load %struct.wlp_frame_assoc*, %struct.wlp_frame_assoc** %8, align 8
  %42 = getelementptr inbounds %struct.wlp_frame_assoc, %struct.wlp_frame_assoc* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  switch i32 %43, label %73 [
    i32 129, label %44
    i32 128, label %52
    i32 131, label %57
    i32 130, label %65
  ]

44:                                               ; preds = %29
  %45 = load %struct.wlp_assoc_frame_ctx*, %struct.wlp_assoc_frame_ctx** %9, align 8
  %46 = getelementptr inbounds %struct.wlp_assoc_frame_ctx, %struct.wlp_assoc_frame_ctx* %45, i32 0, i32 0
  %47 = load i32, i32* @wlp_handle_d1_frame, align 4
  %48 = call i32 @INIT_WORK(i32* %46, i32 %47)
  %49 = load %struct.wlp_assoc_frame_ctx*, %struct.wlp_assoc_frame_ctx** %9, align 8
  %50 = getelementptr inbounds %struct.wlp_assoc_frame_ctx, %struct.wlp_assoc_frame_ctx* %49, i32 0, i32 0
  %51 = call i32 @schedule_work(i32* %50)
  br label %83

52:                                               ; preds = %29
  %53 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %54 = call i32 @kfree_skb(%struct.sk_buff* %53)
  %55 = load %struct.wlp_assoc_frame_ctx*, %struct.wlp_assoc_frame_ctx** %9, align 8
  %56 = call i32 @kfree(%struct.wlp_assoc_frame_ctx* %55)
  br label %83

57:                                               ; preds = %29
  %58 = load %struct.wlp_assoc_frame_ctx*, %struct.wlp_assoc_frame_ctx** %9, align 8
  %59 = getelementptr inbounds %struct.wlp_assoc_frame_ctx, %struct.wlp_assoc_frame_ctx* %58, i32 0, i32 0
  %60 = load i32, i32* @wlp_handle_c1_frame, align 4
  %61 = call i32 @INIT_WORK(i32* %59, i32 %60)
  %62 = load %struct.wlp_assoc_frame_ctx*, %struct.wlp_assoc_frame_ctx** %9, align 8
  %63 = getelementptr inbounds %struct.wlp_assoc_frame_ctx, %struct.wlp_assoc_frame_ctx* %62, i32 0, i32 0
  %64 = call i32 @schedule_work(i32* %63)
  br label %83

65:                                               ; preds = %29
  %66 = load %struct.wlp_assoc_frame_ctx*, %struct.wlp_assoc_frame_ctx** %9, align 8
  %67 = getelementptr inbounds %struct.wlp_assoc_frame_ctx, %struct.wlp_assoc_frame_ctx* %66, i32 0, i32 0
  %68 = load i32, i32* @wlp_handle_c3_frame, align 4
  %69 = call i32 @INIT_WORK(i32* %67, i32 %68)
  %70 = load %struct.wlp_assoc_frame_ctx*, %struct.wlp_assoc_frame_ctx** %9, align 8
  %71 = getelementptr inbounds %struct.wlp_assoc_frame_ctx, %struct.wlp_assoc_frame_ctx* %70, i32 0, i32 0
  %72 = call i32 @schedule_work(i32* %71)
  br label %83

73:                                               ; preds = %29
  %74 = load %struct.device*, %struct.device** %7, align 8
  %75 = load %struct.wlp_frame_assoc*, %struct.wlp_frame_assoc** %8, align 8
  %76 = getelementptr inbounds %struct.wlp_frame_assoc, %struct.wlp_frame_assoc* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 4
  %78 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %74, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.1, i64 0, i64 0), i32 %77)
  %79 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %80 = call i32 @kfree_skb(%struct.sk_buff* %79)
  %81 = load %struct.wlp_assoc_frame_ctx*, %struct.wlp_assoc_frame_ctx** %9, align 8
  %82 = call i32 @kfree(%struct.wlp_assoc_frame_ctx* %81)
  br label %83

83:                                               ; preds = %24, %73, %65, %57, %52, %44
  ret void
}

declare dso_local %struct.wlp_assoc_frame_ctx* @kmalloc(i32, i32) #1

declare dso_local i32 @dev_err(%struct.device*, i8*, ...) #1

declare dso_local i32 @kfree_skb(%struct.sk_buff*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @INIT_WORK(i32*, i32) #1

declare dso_local i32 @schedule_work(i32*) #1

declare dso_local i32 @kfree(%struct.wlp_assoc_frame_ctx*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

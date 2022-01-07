; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/uwb/wlp/extr_wss-lc.c_wlp_wss_connect_prep.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/uwb/wlp/extr_wss-lc.c_wlp_wss_connect_prep.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wlp = type { i32 (%struct.wlp*)*, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { %struct.device }
%struct.device = type { i32 }
%struct.wlp_eda_node = type { i64 }
%struct.sk_buff = type { i32 }
%struct.wlp_assoc_conn_ctx = type { i32, %struct.wlp_eda_node, %struct.sk_buff*, %struct.wlp* }

@WLP_WSS_UNCONNECTED = common dso_local global i64 0, align 8
@GFP_ATOMIC = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [57 x i8] c"WLP: Unable to allocate memory for connection handling.\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@wlp_wss_connect_send = common dso_local global i32 0, align 4
@WLP_WSS_CONNECT_FAILED = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [58 x i8] c"Could not connect to neighbor previously. Not retrying. \0A\00", align 1
@ENONET = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @wlp_wss_connect_prep(%struct.wlp* %0, %struct.wlp_eda_node* %1, i8* %2) #0 {
  %4 = alloca %struct.wlp*, align 8
  %5 = alloca %struct.wlp_eda_node*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.device*, align 8
  %9 = alloca %struct.sk_buff*, align 8
  %10 = alloca %struct.wlp_assoc_conn_ctx*, align 8
  store %struct.wlp* %0, %struct.wlp** %4, align 8
  store %struct.wlp_eda_node* %1, %struct.wlp_eda_node** %5, align 8
  store i8* %2, i8** %6, align 8
  store i32 0, i32* %7, align 4
  %11 = load %struct.wlp*, %struct.wlp** %4, align 8
  %12 = getelementptr inbounds %struct.wlp, %struct.wlp* %11, i32 0, i32 1
  %13 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %14, i32 0, i32 0
  store %struct.device* %15, %struct.device** %8, align 8
  %16 = load i8*, i8** %6, align 8
  %17 = bitcast i8* %16 to %struct.sk_buff*
  store %struct.sk_buff* %17, %struct.sk_buff** %9, align 8
  %18 = load %struct.wlp_eda_node*, %struct.wlp_eda_node** %5, align 8
  %19 = getelementptr inbounds %struct.wlp_eda_node, %struct.wlp_eda_node* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = load i64, i64* @WLP_WSS_UNCONNECTED, align 8
  %22 = icmp eq i64 %20, %21
  br i1 %22, label %23, label %67

23:                                               ; preds = %3
  %24 = load %struct.wlp*, %struct.wlp** %4, align 8
  %25 = getelementptr inbounds %struct.wlp, %struct.wlp* %24, i32 0, i32 0
  %26 = load i32 (%struct.wlp*)*, i32 (%struct.wlp*)** %25, align 8
  %27 = icmp eq i32 (%struct.wlp*)* %26, null
  %28 = zext i1 %27 to i32
  %29 = call i32 @BUG_ON(i32 %28)
  %30 = load %struct.wlp*, %struct.wlp** %4, align 8
  %31 = getelementptr inbounds %struct.wlp, %struct.wlp* %30, i32 0, i32 0
  %32 = load i32 (%struct.wlp*)*, i32 (%struct.wlp*)** %31, align 8
  %33 = load %struct.wlp*, %struct.wlp** %4, align 8
  %34 = call i32 %32(%struct.wlp* %33)
  %35 = load i32, i32* @GFP_ATOMIC, align 4
  %36 = call %struct.wlp_assoc_conn_ctx* @kmalloc(i32 32, i32 %35)
  store %struct.wlp_assoc_conn_ctx* %36, %struct.wlp_assoc_conn_ctx** %10, align 8
  %37 = load %struct.wlp_assoc_conn_ctx*, %struct.wlp_assoc_conn_ctx** %10, align 8
  %38 = icmp eq %struct.wlp_assoc_conn_ctx* %37, null
  br i1 %38, label %39, label %48

39:                                               ; preds = %23
  %40 = call i64 (...) @printk_ratelimit()
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %45

42:                                               ; preds = %39
  %43 = load %struct.device*, %struct.device** %8, align 8
  %44 = call i32 @dev_err(%struct.device* %43, i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str, i64 0, i64 0))
  br label %45

45:                                               ; preds = %42, %39
  %46 = load i32, i32* @ENOMEM, align 4
  %47 = sub nsw i32 0, %46
  store i32 %47, i32* %7, align 4
  br label %89

48:                                               ; preds = %23
  %49 = load %struct.wlp*, %struct.wlp** %4, align 8
  %50 = load %struct.wlp_assoc_conn_ctx*, %struct.wlp_assoc_conn_ctx** %10, align 8
  %51 = getelementptr inbounds %struct.wlp_assoc_conn_ctx, %struct.wlp_assoc_conn_ctx* %50, i32 0, i32 3
  store %struct.wlp* %49, %struct.wlp** %51, align 8
  %52 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %53 = load %struct.wlp_assoc_conn_ctx*, %struct.wlp_assoc_conn_ctx** %10, align 8
  %54 = getelementptr inbounds %struct.wlp_assoc_conn_ctx, %struct.wlp_assoc_conn_ctx* %53, i32 0, i32 2
  store %struct.sk_buff* %52, %struct.sk_buff** %54, align 8
  %55 = load %struct.wlp_assoc_conn_ctx*, %struct.wlp_assoc_conn_ctx** %10, align 8
  %56 = getelementptr inbounds %struct.wlp_assoc_conn_ctx, %struct.wlp_assoc_conn_ctx* %55, i32 0, i32 1
  %57 = load %struct.wlp_eda_node*, %struct.wlp_eda_node** %5, align 8
  %58 = bitcast %struct.wlp_eda_node* %56 to i8*
  %59 = bitcast %struct.wlp_eda_node* %57 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %58, i8* align 8 %59, i64 8, i1 false)
  %60 = load %struct.wlp_assoc_conn_ctx*, %struct.wlp_assoc_conn_ctx** %10, align 8
  %61 = getelementptr inbounds %struct.wlp_assoc_conn_ctx, %struct.wlp_assoc_conn_ctx* %60, i32 0, i32 0
  %62 = load i32, i32* @wlp_wss_connect_send, align 4
  %63 = call i32 @INIT_WORK(i32* %61, i32 %62)
  %64 = load %struct.wlp_assoc_conn_ctx*, %struct.wlp_assoc_conn_ctx** %10, align 8
  %65 = getelementptr inbounds %struct.wlp_assoc_conn_ctx, %struct.wlp_assoc_conn_ctx* %64, i32 0, i32 0
  %66 = call i32 @schedule_work(i32* %65)
  store i32 1, i32* %7, align 4
  br label %88

67:                                               ; preds = %3
  %68 = load %struct.wlp_eda_node*, %struct.wlp_eda_node** %5, align 8
  %69 = getelementptr inbounds %struct.wlp_eda_node, %struct.wlp_eda_node* %68, i32 0, i32 0
  %70 = load i64, i64* %69, align 8
  %71 = load i64, i64* @WLP_WSS_CONNECT_FAILED, align 8
  %72 = icmp eq i64 %70, %71
  br i1 %72, label %73, label %82

73:                                               ; preds = %67
  %74 = call i64 (...) @printk_ratelimit()
  %75 = icmp ne i64 %74, 0
  br i1 %75, label %76, label %79

76:                                               ; preds = %73
  %77 = load %struct.device*, %struct.device** %8, align 8
  %78 = call i32 @dev_err(%struct.device* %77, i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.1, i64 0, i64 0))
  br label %79

79:                                               ; preds = %76, %73
  %80 = load i32, i32* @ENONET, align 4
  %81 = sub nsw i32 0, %80
  store i32 %81, i32* %7, align 4
  br label %89

82:                                               ; preds = %67
  %83 = load %struct.wlp*, %struct.wlp** %4, align 8
  %84 = load %struct.wlp_eda_node*, %struct.wlp_eda_node** %5, align 8
  %85 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %86 = call i32 @wlp_wss_prep_hdr(%struct.wlp* %83, %struct.wlp_eda_node* %84, %struct.sk_buff* %85)
  store i32 %86, i32* %7, align 4
  br label %87

87:                                               ; preds = %82
  br label %88

88:                                               ; preds = %87, %48
  br label %89

89:                                               ; preds = %88, %79, %45
  %90 = load i32, i32* %7, align 4
  ret i32 %90
}

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local %struct.wlp_assoc_conn_ctx* @kmalloc(i32, i32) #1

declare dso_local i64 @printk_ratelimit(...) #1

declare dso_local i32 @dev_err(%struct.device*, i8*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @INIT_WORK(i32*, i32) #1

declare dso_local i32 @schedule_work(i32*) #1

declare dso_local i32 @wlp_wss_prep_hdr(%struct.wlp*, %struct.wlp_eda_node*, %struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

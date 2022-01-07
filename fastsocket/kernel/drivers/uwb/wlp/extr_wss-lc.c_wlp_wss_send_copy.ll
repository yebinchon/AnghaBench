; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/uwb/wlp/extr_wss-lc.c_wlp_wss_send_copy.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/uwb/wlp/extr_wss-lc.c_wlp_wss_send_copy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wlp = type { i32 (%struct.wlp*, %struct.sk_buff*, %struct.uwb_dev_addr*)*, %struct.TYPE_4__* }
%struct.sk_buff = type opaque
%struct.uwb_dev_addr = type { i32 }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { %struct.device }
%struct.device = type { i32 }
%struct.wlp_eda_node = type { %struct.uwb_dev_addr }
%struct.sk_buff.0 = type { i32 }

@ENOMEM = common dso_local global i32 0, align 4
@GFP_ATOMIC = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [43 x i8] c"WLP: Unable to copy skb for transmission.\0A\00", align 1
@.str.1 = private unnamed_addr constant [46 x i8] c"WLP: Unable to connect/send skb to neighbor.\0A\00", align 1
@.str.2 = private unnamed_addr constant [35 x i8] c"WLP: Unable to transmit frame: %d\0A\00", align 1
@ENXIO = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [32 x i8] c"WLP: Is network interface up? \0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @wlp_wss_send_copy(%struct.wlp* %0, %struct.wlp_eda_node* %1, i8* %2) #0 {
  %4 = alloca %struct.wlp*, align 8
  %5 = alloca %struct.wlp_eda_node*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.device*, align 8
  %9 = alloca %struct.sk_buff.0*, align 8
  %10 = alloca %struct.sk_buff.0*, align 8
  %11 = alloca %struct.uwb_dev_addr*, align 8
  store %struct.wlp* %0, %struct.wlp** %4, align 8
  store %struct.wlp_eda_node* %1, %struct.wlp_eda_node** %5, align 8
  store i8* %2, i8** %6, align 8
  %12 = load i32, i32* @ENOMEM, align 4
  %13 = sub nsw i32 0, %12
  store i32 %13, i32* %7, align 4
  %14 = load %struct.wlp*, %struct.wlp** %4, align 8
  %15 = getelementptr inbounds %struct.wlp, %struct.wlp* %14, i32 0, i32 1
  %16 = load %struct.TYPE_4__*, %struct.TYPE_4__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %17, i32 0, i32 0
  store %struct.device* %18, %struct.device** %8, align 8
  %19 = load i8*, i8** %6, align 8
  %20 = bitcast i8* %19 to %struct.sk_buff.0*
  store %struct.sk_buff.0* %20, %struct.sk_buff.0** %9, align 8
  %21 = load %struct.wlp_eda_node*, %struct.wlp_eda_node** %5, align 8
  %22 = getelementptr inbounds %struct.wlp_eda_node, %struct.wlp_eda_node* %21, i32 0, i32 0
  store %struct.uwb_dev_addr* %22, %struct.uwb_dev_addr** %11, align 8
  %23 = load %struct.sk_buff.0*, %struct.sk_buff.0** %9, align 8
  %24 = load i32, i32* @GFP_ATOMIC, align 4
  %25 = call %struct.sk_buff.0* @skb_copy(%struct.sk_buff.0* %23, i32 %24)
  store %struct.sk_buff.0* %25, %struct.sk_buff.0** %10, align 8
  %26 = load %struct.sk_buff.0*, %struct.sk_buff.0** %10, align 8
  %27 = icmp eq %struct.sk_buff.0* %26, null
  br i1 %27, label %28, label %35

28:                                               ; preds = %3
  %29 = call i64 (...) @printk_ratelimit()
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %34

31:                                               ; preds = %28
  %32 = load %struct.device*, %struct.device** %8, align 8
  %33 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %32, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i64 0, i64 0))
  br label %34

34:                                               ; preds = %31, %28
  br label %95

35:                                               ; preds = %3
  %36 = load %struct.wlp*, %struct.wlp** %4, align 8
  %37 = load %struct.wlp_eda_node*, %struct.wlp_eda_node** %5, align 8
  %38 = load %struct.sk_buff.0*, %struct.sk_buff.0** %10, align 8
  %39 = call i32 @wlp_wss_connect_prep(%struct.wlp* %36, %struct.wlp_eda_node* %37, %struct.sk_buff.0* %38)
  store i32 %39, i32* %7, align 4
  %40 = load i32, i32* %7, align 4
  %41 = icmp slt i32 %40, 0
  br i1 %41, label %42, label %51

42:                                               ; preds = %35
  %43 = call i64 (...) @printk_ratelimit()
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %48

45:                                               ; preds = %42
  %46 = load %struct.device*, %struct.device** %8, align 8
  %47 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %46, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.1, i64 0, i64 0))
  br label %48

48:                                               ; preds = %45, %42
  %49 = load %struct.sk_buff.0*, %struct.sk_buff.0** %10, align 8
  %50 = call i32 @dev_kfree_skb_irq(%struct.sk_buff.0* %49)
  br label %95

51:                                               ; preds = %35
  %52 = load i32, i32* %7, align 4
  %53 = icmp eq i32 %52, 1
  br i1 %53, label %54, label %55

54:                                               ; preds = %51
  br label %95

55:                                               ; preds = %51
  br label %56

56:                                               ; preds = %55
  %57 = load %struct.wlp*, %struct.wlp** %4, align 8
  %58 = getelementptr inbounds %struct.wlp, %struct.wlp* %57, i32 0, i32 0
  %59 = load i32 (%struct.wlp*, %struct.sk_buff*, %struct.uwb_dev_addr*)*, i32 (%struct.wlp*, %struct.sk_buff*, %struct.uwb_dev_addr*)** %58, align 8
  %60 = icmp eq i32 (%struct.wlp*, %struct.sk_buff*, %struct.uwb_dev_addr*)* %59, null
  %61 = zext i1 %60 to i32
  %62 = call i32 @BUG_ON(i32 %61)
  %63 = load %struct.wlp*, %struct.wlp** %4, align 8
  %64 = getelementptr inbounds %struct.wlp, %struct.wlp* %63, i32 0, i32 0
  %65 = load i32 (%struct.wlp*, %struct.sk_buff*, %struct.uwb_dev_addr*)*, i32 (%struct.wlp*, %struct.sk_buff*, %struct.uwb_dev_addr*)** %64, align 8
  %66 = load %struct.wlp*, %struct.wlp** %4, align 8
  %67 = load %struct.sk_buff.0*, %struct.sk_buff.0** %10, align 8
  %68 = bitcast %struct.sk_buff.0* %67 to %struct.sk_buff*
  %69 = load %struct.uwb_dev_addr*, %struct.uwb_dev_addr** %11, align 8
  %70 = call i32 %65(%struct.wlp* %66, %struct.sk_buff* %68, %struct.uwb_dev_addr* %69)
  store i32 %70, i32* %7, align 4
  %71 = load i32, i32* %7, align 4
  %72 = icmp slt i32 %71, 0
  br i1 %72, label %73, label %94

73:                                               ; preds = %56
  %74 = call i64 (...) @printk_ratelimit()
  %75 = icmp ne i64 %74, 0
  br i1 %75, label %76, label %80

76:                                               ; preds = %73
  %77 = load %struct.device*, %struct.device** %8, align 8
  %78 = load i32, i32* %7, align 4
  %79 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %77, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.2, i64 0, i64 0), i32 %78)
  br label %80

80:                                               ; preds = %76, %73
  %81 = load i32, i32* %7, align 4
  %82 = load i32, i32* @ENXIO, align 4
  %83 = sub nsw i32 0, %82
  %84 = icmp eq i32 %81, %83
  br i1 %84, label %85, label %91

85:                                               ; preds = %80
  %86 = call i64 (...) @printk_ratelimit()
  %87 = icmp ne i64 %86, 0
  br i1 %87, label %88, label %91

88:                                               ; preds = %85
  %89 = load %struct.device*, %struct.device** %8, align 8
  %90 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %89, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.3, i64 0, i64 0))
  br label %91

91:                                               ; preds = %88, %85, %80
  %92 = load %struct.sk_buff.0*, %struct.sk_buff.0** %10, align 8
  %93 = call i32 @dev_kfree_skb_irq(%struct.sk_buff.0* %92)
  br label %94

94:                                               ; preds = %91, %56
  br label %95

95:                                               ; preds = %94, %54, %48, %34
  %96 = load i32, i32* %7, align 4
  ret i32 %96
}

declare dso_local %struct.sk_buff.0* @skb_copy(%struct.sk_buff.0*, i32) #1

declare dso_local i64 @printk_ratelimit(...) #1

declare dso_local i32 @dev_err(%struct.device*, i8*, ...) #1

declare dso_local i32 @wlp_wss_connect_prep(%struct.wlp*, %struct.wlp_eda_node*, %struct.sk_buff.0*) #1

declare dso_local i32 @dev_kfree_skb_irq(%struct.sk_buff.0*) #1

declare dso_local i32 @BUG_ON(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

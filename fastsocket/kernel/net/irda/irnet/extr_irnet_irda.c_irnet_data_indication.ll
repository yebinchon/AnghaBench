; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/irda/irnet/extr_irnet_irda.c_irnet_data_indication.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/irda/irnet/extr_irnet_irda.c_irnet_data_indication.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i8*, i32 }
%struct.TYPE_3__ = type { i32, i32 }

@IRDA_TCB_TRACE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"(self/ap=0x%p, skb=0x%p)\0A\00", align 1
@IRDA_CB_ERROR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [17 x i8] c"skb is NULL !!!\0A\00", align 1
@.str.2 = private unnamed_addr constant [35 x i8] c"PPP not ready, dropping packet...\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@PPP_ALLSTATIONS = common dso_local global i8 0, align 1
@PPP_UI = common dso_local global i8 0, align 1
@.str.3 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.4 = private unnamed_addr constant [31 x i8] c"Packet too small, dropping...\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i8*, %struct.sk_buff*)* @irnet_data_indication to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @irnet_data_indication(i8* %0, i8* %1, %struct.sk_buff* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.sk_buff*, align 8
  %8 = alloca %struct.TYPE_3__*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  store i8* %0, i8** %5, align 8
  store i8* %1, i8** %6, align 8
  store %struct.sk_buff* %2, %struct.sk_buff** %7, align 8
  %11 = load i8*, i8** %5, align 8
  %12 = bitcast i8* %11 to %struct.TYPE_3__*
  store %struct.TYPE_3__* %12, %struct.TYPE_3__** %8, align 8
  store i32 0, i32* %10, align 4
  %13 = load i32, i32* @IRDA_TCB_TRACE, align 4
  %14 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %15 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %16 = call i32 @DENTER(i32 %13, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), %struct.TYPE_3__* %14, %struct.sk_buff* %15)
  %17 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %18 = icmp ne %struct.sk_buff* %17, null
  %19 = zext i1 %18 to i32
  %20 = load i32, i32* @IRDA_CB_ERROR, align 4
  %21 = call i32 @DASSERT(i32 %19, i32 0, i32 %20, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0))
  %22 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %23 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %31, label %26

26:                                               ; preds = %3
  %27 = load i32, i32* @IRDA_CB_ERROR, align 4
  %28 = call i32 @DERROR(i32 %27, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.2, i64 0, i64 0))
  %29 = load i32, i32* @ENOMEM, align 4
  %30 = sub nsw i32 0, %29
  store i32 %30, i32* %4, align 4
  br label %93

31:                                               ; preds = %3
  %32 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %33 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %32, i32 0, i32 0
  %34 = load i8*, i8** %33, align 8
  store i8* %34, i8** %9, align 8
  %35 = load i8*, i8** %9, align 8
  %36 = getelementptr inbounds i8, i8* %35, i64 0
  %37 = load i8, i8* %36, align 1
  %38 = zext i8 %37 to i32
  %39 = load i8, i8* @PPP_ALLSTATIONS, align 1
  %40 = zext i8 %39 to i32
  %41 = icmp eq i32 %38, %40
  br i1 %41, label %42, label %59

42:                                               ; preds = %31
  %43 = load i8*, i8** %9, align 8
  %44 = getelementptr inbounds i8, i8* %43, i64 1
  %45 = load i8, i8* %44, align 1
  %46 = zext i8 %45 to i32
  %47 = load i8, i8* @PPP_UI, align 1
  %48 = zext i8 %47 to i32
  %49 = icmp eq i32 %46, %48
  br i1 %49, label %50, label %59

50:                                               ; preds = %42
  %51 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %52 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 8
  %54 = icmp slt i32 %53, 3
  br i1 %54, label %55, label %56

55:                                               ; preds = %50
  br label %84

56:                                               ; preds = %50
  %57 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %58 = call i8* @skb_pull(%struct.sk_buff* %57, i32 2)
  store i8* %58, i8** %9, align 8
  br label %59

59:                                               ; preds = %56, %42, %31
  %60 = load i8*, i8** %9, align 8
  %61 = getelementptr inbounds i8, i8* %60, i64 0
  %62 = load i8, i8* %61, align 1
  %63 = zext i8 %62 to i32
  %64 = and i32 %63, 1
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %70

66:                                               ; preds = %59
  %67 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %68 = call i64* @skb_push(%struct.sk_buff* %67, i32 1)
  %69 = getelementptr inbounds i64, i64* %68, i64 0
  store i64 0, i64* %69, align 8
  br label %77

70:                                               ; preds = %59
  %71 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %72 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %71, i32 0, i32 1
  %73 = load i32, i32* %72, align 8
  %74 = icmp slt i32 %73, 2
  br i1 %74, label %75, label %76

75:                                               ; preds = %70
  br label %84

76:                                               ; preds = %70
  br label %77

77:                                               ; preds = %76, %66
  %78 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %79 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %78, i32 0, i32 0
  %80 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %81 = call i32 @ppp_input(i32* %79, %struct.sk_buff* %80)
  %82 = load i32, i32* @IRDA_TCB_TRACE, align 4
  %83 = call i32 @DEXIT(i32 %82, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0))
  store i32 0, i32* %4, align 4
  br label %93

84:                                               ; preds = %75, %55
  %85 = load i32, i32* @IRDA_CB_ERROR, align 4
  %86 = call i32 @DERROR(i32 %85, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.4, i64 0, i64 0))
  %87 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %88 = call i32 @kfree_skb(%struct.sk_buff* %87)
  %89 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %90 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %89, i32 0, i32 0
  %91 = load i32, i32* %10, align 4
  %92 = call i32 @ppp_input_error(i32* %90, i32 %91)
  store i32 0, i32* %4, align 4
  br label %93

93:                                               ; preds = %84, %77, %26
  %94 = load i32, i32* %4, align 4
  ret i32 %94
}

declare dso_local i32 @DENTER(i32, i8*, %struct.TYPE_3__*, %struct.sk_buff*) #1

declare dso_local i32 @DASSERT(i32, i32, i32, i8*) #1

declare dso_local i32 @DERROR(i32, i8*) #1

declare dso_local i8* @skb_pull(%struct.sk_buff*, i32) #1

declare dso_local i64* @skb_push(%struct.sk_buff*, i32) #1

declare dso_local i32 @ppp_input(i32*, %struct.sk_buff*) #1

declare dso_local i32 @DEXIT(i32, i8*) #1

declare dso_local i32 @kfree_skb(%struct.sk_buff*) #1

declare dso_local i32 @ppp_input_error(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

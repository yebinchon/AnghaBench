; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/irda/irnet/extr_irnet_irda.c_irnet_connect_confirm.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/irda/irnet/extr_irnet_irda.c_irnet_connect_confirm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qos_info = type { i32 }
%struct.sk_buff = type { i64 }
%struct.TYPE_4__ = type { i32, i32, i32, i32, i32, i32, i32, i64, i64, i32 }

@IRDA_TCB_TRACE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [13 x i8] c"(self=0x%p)\0A\00", align 1
@IRDA_CB_ERROR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [37 x i8] c"Socket no longer connecting. Ouch !\0A\00", align 1
@.str.2 = private unnamed_addr constant [28 x i8] c"Dropping non empty packet.\0A\00", align 1
@IRNET_CONNECT_TO = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@IRDA_CB_INFO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i8*, %struct.qos_info*, i64, i32, %struct.sk_buff*)* @irnet_connect_confirm to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @irnet_connect_confirm(i8* %0, i8* %1, %struct.qos_info* %2, i64 %3, i32 %4, %struct.sk_buff* %5) #0 {
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca %struct.qos_info*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.sk_buff*, align 8
  %13 = alloca %struct.TYPE_4__*, align 8
  store i8* %0, i8** %7, align 8
  store i8* %1, i8** %8, align 8
  store %struct.qos_info* %2, %struct.qos_info** %9, align 8
  store i64 %3, i64* %10, align 8
  store i32 %4, i32* %11, align 4
  store %struct.sk_buff* %5, %struct.sk_buff** %12, align 8
  %14 = load i8*, i8** %7, align 8
  %15 = bitcast i8* %14 to %struct.TYPE_4__*
  store %struct.TYPE_4__* %15, %struct.TYPE_4__** %13, align 8
  %16 = load i32, i32* @IRDA_TCB_TRACE, align 4
  %17 = load %struct.TYPE_4__*, %struct.TYPE_4__** %13, align 8
  %18 = call i32 @DENTER(i32 %16, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), %struct.TYPE_4__* %17)
  %19 = load %struct.TYPE_4__*, %struct.TYPE_4__** %13, align 8
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 4
  %21 = call i32 @test_bit(i32 0, i32* %20)
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %26, label %23

23:                                               ; preds = %6
  %24 = load i32, i32* @IRDA_CB_ERROR, align 4
  %25 = call i32 @DERROR(i32 %24, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1, i64 0, i64 0))
  br label %78

26:                                               ; preds = %6
  %27 = load i32, i32* %11, align 4
  %28 = load %struct.TYPE_4__*, %struct.TYPE_4__** %13, align 8
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %28, i32 0, i32 9
  store i32 %27, i32* %29, align 8
  %30 = load i64, i64* %10, align 8
  %31 = load %struct.TYPE_4__*, %struct.TYPE_4__** %13, align 8
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %31, i32 0, i32 8
  store i64 %30, i64* %32, align 8
  %33 = load i64, i64* %10, align 8
  %34 = load %struct.TYPE_4__*, %struct.TYPE_4__** %13, align 8
  %35 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %34, i32 0, i32 7
  store i64 %33, i64* %35, align 8
  %36 = load %struct.TYPE_4__*, %struct.TYPE_4__** %13, align 8
  %37 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %36, i32 0, i32 6
  %38 = load i32, i32* %37, align 8
  %39 = call i32 @irttp_get_saddr(i32 %38)
  %40 = load %struct.TYPE_4__*, %struct.TYPE_4__** %13, align 8
  %41 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %40, i32 0, i32 2
  store i32 %39, i32* %41, align 8
  %42 = load %struct.TYPE_4__*, %struct.TYPE_4__** %13, align 8
  %43 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %42, i32 0, i32 5
  %44 = call i32 @set_bit(i32 0, i32* %43)
  %45 = load %struct.TYPE_4__*, %struct.TYPE_4__** %13, align 8
  %46 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %45, i32 0, i32 4
  %47 = call i32 @clear_bit(i32 0, i32* %46)
  %48 = load %struct.TYPE_4__*, %struct.TYPE_4__** %13, align 8
  %49 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %48, i32 0, i32 3
  %50 = call i32 @ppp_output_wakeup(i32* %49)
  %51 = load %struct.sk_buff*, %struct.sk_buff** %12, align 8
  %52 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = icmp sgt i64 %53, 0
  br i1 %54, label %55, label %60

55:                                               ; preds = %26
  %56 = load i32, i32* @IRDA_CB_ERROR, align 4
  %57 = call i32 @DERROR(i32 %56, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.2, i64 0, i64 0))
  %58 = load %struct.sk_buff*, %struct.sk_buff** %12, align 8
  %59 = call i32 @kfree_skb(%struct.sk_buff* %58)
  br label %63

60:                                               ; preds = %26
  %61 = load %struct.sk_buff*, %struct.sk_buff** %12, align 8
  %62 = call i32 @kfree_skb(%struct.sk_buff* %61)
  br label %63

63:                                               ; preds = %60, %55
  %64 = load %struct.TYPE_4__*, %struct.TYPE_4__** %13, align 8
  %65 = load i32, i32* @IRNET_CONNECT_TO, align 4
  %66 = load %struct.TYPE_4__*, %struct.TYPE_4__** %13, align 8
  %67 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %66, i32 0, i32 2
  %68 = load i32, i32* %67, align 8
  %69 = load %struct.TYPE_4__*, %struct.TYPE_4__** %13, align 8
  %70 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %69, i32 0, i32 1
  %71 = load i32, i32* %70, align 4
  %72 = load %struct.TYPE_4__*, %struct.TYPE_4__** %13, align 8
  %73 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 8
  %75 = call i32 @irnet_post_event(%struct.TYPE_4__* %64, i32 %65, i32 %68, i32 %71, i32 %74, i32 0)
  %76 = load i32, i32* @IRDA_TCB_TRACE, align 4
  %77 = call i32 @DEXIT(i32 %76, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0))
  br label %78

78:                                               ; preds = %63, %23
  ret void
}

declare dso_local i32 @DENTER(i32, i8*, %struct.TYPE_4__*) #1

declare dso_local i32 @test_bit(i32, i32*) #1

declare dso_local i32 @DERROR(i32, i8*) #1

declare dso_local i32 @irttp_get_saddr(i32) #1

declare dso_local i32 @set_bit(i32, i32*) #1

declare dso_local i32 @clear_bit(i32, i32*) #1

declare dso_local i32 @ppp_output_wakeup(i32*) #1

declare dso_local i32 @kfree_skb(%struct.sk_buff*) #1

declare dso_local i32 @irnet_post_event(%struct.TYPE_4__*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @DEXIT(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

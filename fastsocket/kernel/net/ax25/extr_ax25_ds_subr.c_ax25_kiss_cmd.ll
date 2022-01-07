; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/ax25/extr_ax25_ds_subr.c_ax25_kiss_cmd.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/ax25/extr_ax25_ds_subr.c_ax25_kiss_cmd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32* }
%struct.sk_buff = type { i32 }

@GFP_ATOMIC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_3__*, i8, i8)* @ax25_kiss_cmd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ax25_kiss_cmd(%struct.TYPE_3__* %0, i8 zeroext %1, i8 zeroext %2) #0 {
  %4 = alloca %struct.TYPE_3__*, align 8
  %5 = alloca i8, align 1
  %6 = alloca i8, align 1
  %7 = alloca %struct.sk_buff*, align 8
  %8 = alloca i8*, align 8
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %4, align 8
  store i8 %1, i8* %5, align 1
  store i8 %2, i8* %6, align 1
  %9 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %10 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %9, i32 0, i32 0
  %11 = load i32*, i32** %10, align 8
  %12 = icmp eq i32* %11, null
  br i1 %12, label %13, label %14

13:                                               ; preds = %3
  br label %39

14:                                               ; preds = %3
  %15 = load i32, i32* @GFP_ATOMIC, align 4
  %16 = call %struct.sk_buff* @alloc_skb(i32 2, i32 %15)
  store %struct.sk_buff* %16, %struct.sk_buff** %7, align 8
  %17 = icmp eq %struct.sk_buff* %16, null
  br i1 %17, label %18, label %19

18:                                               ; preds = %14
  br label %39

19:                                               ; preds = %14
  %20 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %21 = call i32 @skb_reset_network_header(%struct.sk_buff* %20)
  %22 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %23 = call i8* @skb_put(%struct.sk_buff* %22, i32 2)
  store i8* %23, i8** %8, align 8
  %24 = load i8, i8* %5, align 1
  %25 = load i8*, i8** %8, align 8
  %26 = getelementptr inbounds i8, i8* %25, i32 1
  store i8* %26, i8** %8, align 8
  store i8 %24, i8* %25, align 1
  %27 = load i8, i8* %6, align 1
  %28 = load i8*, i8** %8, align 8
  %29 = getelementptr inbounds i8, i8* %28, i32 1
  store i8* %29, i8** %8, align 8
  store i8 %27, i8* %28, align 1
  %30 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %31 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %32 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %31, i32 0, i32 0
  %33 = load i32*, i32** %32, align 8
  %34 = call i32 @ax25_type_trans(%struct.sk_buff* %30, i32* %33)
  %35 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %36 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %35, i32 0, i32 0
  store i32 %34, i32* %36, align 4
  %37 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %38 = call i32 @dev_queue_xmit(%struct.sk_buff* %37)
  br label %39

39:                                               ; preds = %19, %18, %13
  ret void
}

declare dso_local %struct.sk_buff* @alloc_skb(i32, i32) #1

declare dso_local i32 @skb_reset_network_header(%struct.sk_buff*) #1

declare dso_local i8* @skb_put(%struct.sk_buff*, i32) #1

declare dso_local i32 @ax25_type_trans(%struct.sk_buff*, i32*) #1

declare dso_local i32 @dev_queue_xmit(%struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/netfilter/extr_nf_queue.c_nf_queue.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/netfilter/extr_nf_queue.c_nf_queue.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { %struct.sk_buff*, i8* }
%struct.list_head = type { i32 }
%struct.net_device = type { i32 }

@ETH_P_IP = common dso_local global i32 0, align 4
@ETH_P_IPV6 = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nf_queue(%struct.sk_buff* %0, %struct.list_head* %1, i32 %2, i32 %3, %struct.net_device* %4, %struct.net_device* %5, i32 (%struct.sk_buff*)* %6, i32 %7) #0 {
  %9 = alloca i32, align 4
  %10 = alloca %struct.sk_buff*, align 8
  %11 = alloca %struct.list_head*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.net_device*, align 8
  %15 = alloca %struct.net_device*, align 8
  %16 = alloca i32 (%struct.sk_buff*)*, align 8
  %17 = alloca i32, align 4
  %18 = alloca %struct.sk_buff*, align 8
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca %struct.sk_buff*, align 8
  store %struct.sk_buff* %0, %struct.sk_buff** %10, align 8
  store %struct.list_head* %1, %struct.list_head** %11, align 8
  store i32 %2, i32* %12, align 4
  store i32 %3, i32* %13, align 4
  store %struct.net_device* %4, %struct.net_device** %14, align 8
  store %struct.net_device* %5, %struct.net_device** %15, align 8
  store i32 (%struct.sk_buff*)* %6, i32 (%struct.sk_buff*)** %16, align 8
  store i32 %7, i32* %17, align 4
  %22 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %23 = call i32 @skb_is_gso(%struct.sk_buff* %22)
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %35, label %25

25:                                               ; preds = %8
  %26 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %27 = load %struct.list_head*, %struct.list_head** %11, align 8
  %28 = load i32, i32* %12, align 4
  %29 = load i32, i32* %13, align 4
  %30 = load %struct.net_device*, %struct.net_device** %14, align 8
  %31 = load %struct.net_device*, %struct.net_device** %15, align 8
  %32 = load i32 (%struct.sk_buff*)*, i32 (%struct.sk_buff*)** %16, align 8
  %33 = load i32, i32* %17, align 4
  %34 = call i32 @__nf_queue(%struct.sk_buff* %26, %struct.list_head* %27, i32 %28, i32 %29, %struct.net_device* %30, %struct.net_device* %31, i32 (%struct.sk_buff*)* %32, i32 %33)
  store i32 %34, i32* %9, align 4
  br label %109

35:                                               ; preds = %8
  %36 = load i32, i32* %12, align 4
  switch i32 %36, label %47 [
    i32 129, label %37
    i32 128, label %42
  ]

37:                                               ; preds = %35
  %38 = load i32, i32* @ETH_P_IP, align 4
  %39 = call i8* @htons(i32 %38)
  %40 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %41 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %40, i32 0, i32 1
  store i8* %39, i8** %41, align 8
  br label %47

42:                                               ; preds = %35
  %43 = load i32, i32* @ETH_P_IPV6, align 4
  %44 = call i8* @htons(i32 %43)
  %45 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %46 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %45, i32 0, i32 1
  store i8* %44, i8** %46, align 8
  br label %47

47:                                               ; preds = %35, %42, %37
  %48 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %49 = call %struct.sk_buff* @skb_gso_segment(%struct.sk_buff* %48, i32 0)
  store %struct.sk_buff* %49, %struct.sk_buff** %18, align 8
  %50 = load %struct.sk_buff*, %struct.sk_buff** %18, align 8
  %51 = call i64 @IS_ERR(%struct.sk_buff* %50)
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %56

53:                                               ; preds = %47
  %54 = load i32, i32* @EINVAL, align 4
  %55 = sub nsw i32 0, %54
  store i32 %55, i32* %9, align 4
  br label %109

56:                                               ; preds = %47
  store i32 0, i32* %20, align 4
  store i32 0, i32* %19, align 4
  br label %57

57:                                               ; preds = %86, %56
  %58 = load %struct.sk_buff*, %struct.sk_buff** %18, align 8
  %59 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %58, i32 0, i32 0
  %60 = load %struct.sk_buff*, %struct.sk_buff** %59, align 8
  store %struct.sk_buff* %60, %struct.sk_buff** %21, align 8
  %61 = load %struct.sk_buff*, %struct.sk_buff** %18, align 8
  %62 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %61, i32 0, i32 0
  store %struct.sk_buff* null, %struct.sk_buff** %62, align 8
  %63 = load i32, i32* %19, align 4
  %64 = icmp eq i32 %63, 0
  br i1 %64, label %65, label %75

65:                                               ; preds = %57
  %66 = load %struct.sk_buff*, %struct.sk_buff** %18, align 8
  %67 = load %struct.list_head*, %struct.list_head** %11, align 8
  %68 = load i32, i32* %12, align 4
  %69 = load i32, i32* %13, align 4
  %70 = load %struct.net_device*, %struct.net_device** %14, align 8
  %71 = load %struct.net_device*, %struct.net_device** %15, align 8
  %72 = load i32 (%struct.sk_buff*)*, i32 (%struct.sk_buff*)** %16, align 8
  %73 = load i32, i32* %17, align 4
  %74 = call i32 @__nf_queue(%struct.sk_buff* %66, %struct.list_head* %67, i32 %68, i32 %69, %struct.net_device* %70, %struct.net_device* %71, i32 (%struct.sk_buff*)* %72, i32 %73)
  store i32 %74, i32* %19, align 4
  br label %75

75:                                               ; preds = %65, %57
  %76 = load i32, i32* %19, align 4
  %77 = icmp eq i32 %76, 0
  br i1 %77, label %78, label %81

78:                                               ; preds = %75
  %79 = load i32, i32* %20, align 4
  %80 = add i32 %79, 1
  store i32 %80, i32* %20, align 4
  br label %84

81:                                               ; preds = %75
  %82 = load %struct.sk_buff*, %struct.sk_buff** %18, align 8
  %83 = call i32 @kfree_skb(%struct.sk_buff* %82)
  br label %84

84:                                               ; preds = %81, %78
  %85 = load %struct.sk_buff*, %struct.sk_buff** %21, align 8
  store %struct.sk_buff* %85, %struct.sk_buff** %18, align 8
  br label %86

86:                                               ; preds = %84
  %87 = load %struct.sk_buff*, %struct.sk_buff** %18, align 8
  %88 = icmp ne %struct.sk_buff* %87, null
  br i1 %88, label %57, label %89

89:                                               ; preds = %86
  %90 = load i32, i32* %19, align 4
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %92, label %95

92:                                               ; preds = %89
  %93 = load i32, i32* %20, align 4
  %94 = icmp ne i32 %93, 0
  br label %95

95:                                               ; preds = %92, %89
  %96 = phi i1 [ false, %89 ], [ %94, %92 ]
  %97 = zext i1 %96 to i32
  %98 = call i64 @unlikely(i32 %97)
  %99 = icmp ne i64 %98, 0
  br i1 %99, label %100, label %101

100:                                              ; preds = %95
  store i32 0, i32* %19, align 4
  br label %101

101:                                              ; preds = %100, %95
  %102 = load i32, i32* %19, align 4
  %103 = icmp eq i32 %102, 0
  br i1 %103, label %104, label %107

104:                                              ; preds = %101
  %105 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %106 = call i32 @kfree_skb(%struct.sk_buff* %105)
  br label %107

107:                                              ; preds = %104, %101
  %108 = load i32, i32* %19, align 4
  store i32 %108, i32* %9, align 4
  br label %109

109:                                              ; preds = %107, %53, %25
  %110 = load i32, i32* %9, align 4
  ret i32 %110
}

declare dso_local i32 @skb_is_gso(%struct.sk_buff*) #1

declare dso_local i32 @__nf_queue(%struct.sk_buff*, %struct.list_head*, i32, i32, %struct.net_device*, %struct.net_device*, i32 (%struct.sk_buff*)*, i32) #1

declare dso_local i8* @htons(i32) #1

declare dso_local %struct.sk_buff* @skb_gso_segment(%struct.sk_buff*, i32) #1

declare dso_local i64 @IS_ERR(%struct.sk_buff*) #1

declare dso_local i32 @kfree_skb(%struct.sk_buff*) #1

declare dso_local i64 @unlikely(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

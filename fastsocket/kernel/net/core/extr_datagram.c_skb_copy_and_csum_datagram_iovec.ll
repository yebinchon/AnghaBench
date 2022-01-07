; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/core/extr_datagram.c_skb_copy_and_csum_datagram_iovec.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/core/extr_datagram.c_skb_copy_and_csum_datagram_iovec.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32, i64, i32, i32, i32 }
%struct.iovec = type { i32, i32 }

@CHECKSUM_COMPLETE = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@EFAULT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @skb_copy_and_csum_datagram_iovec(%struct.sk_buff* %0, i32 %1, %struct.iovec* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.sk_buff*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.iovec*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.sk_buff* %0, %struct.sk_buff** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.iovec* %2, %struct.iovec** %7, align 8
  %10 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %11 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = load i32, i32* %6, align 4
  %14 = sub nsw i32 %12, %13
  store i32 %14, i32* %9, align 4
  %15 = load i32, i32* %9, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %18, label %17

17:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %103

18:                                               ; preds = %3
  br label %19

19:                                               ; preds = %25, %18
  %20 = load %struct.iovec*, %struct.iovec** %7, align 8
  %21 = getelementptr inbounds %struct.iovec, %struct.iovec* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = icmp ne i32 %22, 0
  %24 = xor i1 %23, true
  br i1 %24, label %25, label %28

25:                                               ; preds = %19
  %26 = load %struct.iovec*, %struct.iovec** %7, align 8
  %27 = getelementptr inbounds %struct.iovec, %struct.iovec* %26, i32 1
  store %struct.iovec* %27, %struct.iovec** %7, align 8
  br label %19

28:                                               ; preds = %19
  %29 = load %struct.iovec*, %struct.iovec** %7, align 8
  %30 = getelementptr inbounds %struct.iovec, %struct.iovec* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = load i32, i32* %9, align 4
  %33 = icmp slt i32 %31, %32
  br i1 %33, label %34, label %48

34:                                               ; preds = %28
  %35 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %36 = call i64 @__skb_checksum_complete(%struct.sk_buff* %35)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %39

38:                                               ; preds = %34
  br label %97

39:                                               ; preds = %34
  %40 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %41 = load i32, i32* %6, align 4
  %42 = load %struct.iovec*, %struct.iovec** %7, align 8
  %43 = load i32, i32* %9, align 4
  %44 = call i64 @skb_copy_datagram_iovec(%struct.sk_buff* %40, i32 %41, %struct.iovec* %42, i32 %43)
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %47

46:                                               ; preds = %39
  br label %100

47:                                               ; preds = %39
  br label %96

48:                                               ; preds = %28
  %49 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %50 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %49, i32 0, i32 4
  %51 = load i32, i32* %50, align 8
  %52 = load i32, i32* %6, align 4
  %53 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %54 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %53, i32 0, i32 3
  %55 = load i32, i32* %54, align 4
  %56 = call i32 @csum_partial(i32 %51, i32 %52, i32 %55)
  store i32 %56, i32* %8, align 4
  %57 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %58 = load i32, i32* %6, align 4
  %59 = load %struct.iovec*, %struct.iovec** %7, align 8
  %60 = getelementptr inbounds %struct.iovec, %struct.iovec* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 4
  %62 = load i32, i32* %9, align 4
  %63 = call i64 @skb_copy_and_csum_datagram(%struct.sk_buff* %57, i32 %58, i32 %61, i32 %62, i32* %8)
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %65, label %66

65:                                               ; preds = %48
  br label %100

66:                                               ; preds = %48
  %67 = load i32, i32* %8, align 4
  %68 = call i64 @csum_fold(i32 %67)
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %70, label %71

70:                                               ; preds = %66
  br label %97

71:                                               ; preds = %66
  %72 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %73 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %72, i32 0, i32 1
  %74 = load i64, i64* %73, align 8
  %75 = load i64, i64* @CHECKSUM_COMPLETE, align 8
  %76 = icmp eq i64 %74, %75
  %77 = zext i1 %76 to i32
  %78 = call i64 @unlikely(i32 %77)
  %79 = icmp ne i64 %78, 0
  br i1 %79, label %80, label %85

80:                                               ; preds = %71
  %81 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %82 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %81, i32 0, i32 2
  %83 = load i32, i32* %82, align 8
  %84 = call i32 @netdev_rx_csum_fault(i32 %83)
  br label %85

85:                                               ; preds = %80, %71
  %86 = load i32, i32* %9, align 4
  %87 = load %struct.iovec*, %struct.iovec** %7, align 8
  %88 = getelementptr inbounds %struct.iovec, %struct.iovec* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 4
  %90 = sub nsw i32 %89, %86
  store i32 %90, i32* %88, align 4
  %91 = load i32, i32* %9, align 4
  %92 = load %struct.iovec*, %struct.iovec** %7, align 8
  %93 = getelementptr inbounds %struct.iovec, %struct.iovec* %92, i32 0, i32 1
  %94 = load i32, i32* %93, align 4
  %95 = add nsw i32 %94, %91
  store i32 %95, i32* %93, align 4
  br label %96

96:                                               ; preds = %85, %47
  store i32 0, i32* %4, align 4
  br label %103

97:                                               ; preds = %70, %38
  %98 = load i32, i32* @EINVAL, align 4
  %99 = sub nsw i32 0, %98
  store i32 %99, i32* %4, align 4
  br label %103

100:                                              ; preds = %65, %46
  %101 = load i32, i32* @EFAULT, align 4
  %102 = sub nsw i32 0, %101
  store i32 %102, i32* %4, align 4
  br label %103

103:                                              ; preds = %100, %97, %96, %17
  %104 = load i32, i32* %4, align 4
  ret i32 %104
}

declare dso_local i64 @__skb_checksum_complete(%struct.sk_buff*) #1

declare dso_local i64 @skb_copy_datagram_iovec(%struct.sk_buff*, i32, %struct.iovec*, i32) #1

declare dso_local i32 @csum_partial(i32, i32, i32) #1

declare dso_local i64 @skb_copy_and_csum_datagram(%struct.sk_buff*, i32, i32, i32, i32*) #1

declare dso_local i64 @csum_fold(i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @netdev_rx_csum_fault(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

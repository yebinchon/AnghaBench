; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/x25/extr_x25_in.c_x25_state1_machine.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/x25/extr_x25_in.c_x25_state1_machine.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sock = type { i32 (%struct.sock*)*, i32 }
%struct.sk_buff = type { i32*, i32 }
%struct.x25_address = type { i32 }
%struct.x25_sock = type { i32, %struct.TYPE_2__, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_2__ = type { i32, i32 }

@X25_STATE_3 = common dso_local global i32 0, align 4
@TCP_ESTABLISHED = common dso_local global i32 0, align 4
@X25_STD_MIN_LEN = common dso_local global i32 0, align 4
@SOCK_DEAD = common dso_local global i32 0, align 4
@X25_CLEAR_CONFIRMATION = common dso_local global i32 0, align 4
@ECONNREFUSED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sock*, %struct.sk_buff*, i32)* @x25_state1_machine to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @x25_state1_machine(%struct.sock* %0, %struct.sk_buff* %1, i32 %2) #0 {
  %4 = alloca %struct.sock*, align 8
  %5 = alloca %struct.sk_buff*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.x25_address, align 4
  %8 = alloca %struct.x25_address, align 4
  %9 = alloca %struct.x25_sock*, align 8
  store %struct.sock* %0, %struct.sock** %4, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %5, align 8
  store i32 %2, i32* %6, align 4
  %10 = load i32, i32* %6, align 4
  switch i32 %10, label %100 [
    i32 129, label %11
    i32 128, label %83
  ]

11:                                               ; preds = %3
  %12 = load %struct.sock*, %struct.sock** %4, align 8
  %13 = call %struct.x25_sock* @x25_sk(%struct.sock* %12)
  store %struct.x25_sock* %13, %struct.x25_sock** %9, align 8
  %14 = load %struct.sock*, %struct.sock** %4, align 8
  %15 = call i32 @x25_stop_timer(%struct.sock* %14)
  %16 = load %struct.x25_sock*, %struct.x25_sock** %9, align 8
  %17 = getelementptr inbounds %struct.x25_sock, %struct.x25_sock* %16, i32 0, i32 0
  store i32 0, i32* %17, align 4
  %18 = load %struct.x25_sock*, %struct.x25_sock** %9, align 8
  %19 = getelementptr inbounds %struct.x25_sock, %struct.x25_sock* %18, i32 0, i32 9
  store i32 0, i32* %19, align 4
  %20 = load %struct.x25_sock*, %struct.x25_sock** %9, align 8
  %21 = getelementptr inbounds %struct.x25_sock, %struct.x25_sock* %20, i32 0, i32 8
  store i32 0, i32* %21, align 4
  %22 = load %struct.x25_sock*, %struct.x25_sock** %9, align 8
  %23 = getelementptr inbounds %struct.x25_sock, %struct.x25_sock* %22, i32 0, i32 7
  store i32 0, i32* %23, align 4
  %24 = load %struct.x25_sock*, %struct.x25_sock** %9, align 8
  %25 = getelementptr inbounds %struct.x25_sock, %struct.x25_sock* %24, i32 0, i32 6
  store i32 0, i32* %25, align 4
  %26 = load i32, i32* @X25_STATE_3, align 4
  %27 = load %struct.x25_sock*, %struct.x25_sock** %9, align 8
  %28 = getelementptr inbounds %struct.x25_sock, %struct.x25_sock* %27, i32 0, i32 5
  store i32 %26, i32* %28, align 4
  %29 = load i32, i32* @TCP_ESTABLISHED, align 4
  %30 = load %struct.sock*, %struct.sock** %4, align 8
  %31 = getelementptr inbounds %struct.sock, %struct.sock* %30, i32 0, i32 1
  store i32 %29, i32* %31, align 8
  %32 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %33 = load i32, i32* @X25_STD_MIN_LEN, align 4
  %34 = call i32 @skb_pull(%struct.sk_buff* %32, i32 %33)
  %35 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %36 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %37 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %36, i32 0, i32 0
  %38 = load i32*, i32** %37, align 8
  %39 = call i32 @x25_addr_ntoa(i32* %38, %struct.x25_address* %7, %struct.x25_address* %8)
  %40 = call i32 @skb_pull(%struct.sk_buff* %35, i32 %39)
  %41 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %42 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %43 = load %struct.x25_sock*, %struct.x25_sock** %9, align 8
  %44 = getelementptr inbounds %struct.x25_sock, %struct.x25_sock* %43, i32 0, i32 4
  %45 = load %struct.x25_sock*, %struct.x25_sock** %9, align 8
  %46 = getelementptr inbounds %struct.x25_sock, %struct.x25_sock* %45, i32 0, i32 3
  %47 = load %struct.x25_sock*, %struct.x25_sock** %9, align 8
  %48 = getelementptr inbounds %struct.x25_sock, %struct.x25_sock* %47, i32 0, i32 2
  %49 = call i32 @x25_parse_facilities(%struct.sk_buff* %42, i32* %44, i32* %46, i32* %48)
  %50 = call i32 @skb_pull(%struct.sk_buff* %41, i32 %49)
  %51 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %52 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 8
  %54 = icmp sge i32 %53, 0
  br i1 %54, label %55, label %71

55:                                               ; preds = %11
  %56 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %57 = load %struct.x25_sock*, %struct.x25_sock** %9, align 8
  %58 = getelementptr inbounds %struct.x25_sock, %struct.x25_sock* %57, i32 0, i32 1
  %59 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 4
  %61 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %62 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 8
  %64 = call i32 @skb_copy_from_linear_data(%struct.sk_buff* %56, i32 %60, i32 %63)
  %65 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %66 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %65, i32 0, i32 1
  %67 = load i32, i32* %66, align 8
  %68 = load %struct.x25_sock*, %struct.x25_sock** %9, align 8
  %69 = getelementptr inbounds %struct.x25_sock, %struct.x25_sock* %68, i32 0, i32 1
  %70 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %69, i32 0, i32 0
  store i32 %67, i32* %70, align 4
  br label %71

71:                                               ; preds = %55, %11
  %72 = load %struct.sock*, %struct.sock** %4, align 8
  %73 = load i32, i32* @SOCK_DEAD, align 4
  %74 = call i32 @sock_flag(%struct.sock* %72, i32 %73)
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %82, label %76

76:                                               ; preds = %71
  %77 = load %struct.sock*, %struct.sock** %4, align 8
  %78 = getelementptr inbounds %struct.sock, %struct.sock* %77, i32 0, i32 0
  %79 = load i32 (%struct.sock*)*, i32 (%struct.sock*)** %78, align 8
  %80 = load %struct.sock*, %struct.sock** %4, align 8
  %81 = call i32 %79(%struct.sock* %80)
  br label %82

82:                                               ; preds = %76, %71
  br label %101

83:                                               ; preds = %3
  %84 = load %struct.sock*, %struct.sock** %4, align 8
  %85 = load i32, i32* @X25_CLEAR_CONFIRMATION, align 4
  %86 = call i32 @x25_write_internal(%struct.sock* %84, i32 %85)
  %87 = load %struct.sock*, %struct.sock** %4, align 8
  %88 = load i32, i32* @ECONNREFUSED, align 4
  %89 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %90 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %89, i32 0, i32 0
  %91 = load i32*, i32** %90, align 8
  %92 = getelementptr inbounds i32, i32* %91, i64 3
  %93 = load i32, i32* %92, align 4
  %94 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %95 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %94, i32 0, i32 0
  %96 = load i32*, i32** %95, align 8
  %97 = getelementptr inbounds i32, i32* %96, i64 4
  %98 = load i32, i32* %97, align 4
  %99 = call i32 @x25_disconnect(%struct.sock* %87, i32 %88, i32 %93, i32 %98)
  br label %101

100:                                              ; preds = %3
  br label %101

101:                                              ; preds = %100, %83, %82
  ret i32 0
}

declare dso_local %struct.x25_sock* @x25_sk(%struct.sock*) #1

declare dso_local i32 @x25_stop_timer(%struct.sock*) #1

declare dso_local i32 @skb_pull(%struct.sk_buff*, i32) #1

declare dso_local i32 @x25_addr_ntoa(i32*, %struct.x25_address*, %struct.x25_address*) #1

declare dso_local i32 @x25_parse_facilities(%struct.sk_buff*, i32*, i32*, i32*) #1

declare dso_local i32 @skb_copy_from_linear_data(%struct.sk_buff*, i32, i32) #1

declare dso_local i32 @sock_flag(%struct.sock*, i32) #1

declare dso_local i32 @x25_write_internal(%struct.sock*, i32) #1

declare dso_local i32 @x25_disconnect(%struct.sock*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

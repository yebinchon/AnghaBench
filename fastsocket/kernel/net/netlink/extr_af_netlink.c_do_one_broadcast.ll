; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/netlink/extr_af_netlink.c_do_one_broadcast.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/netlink/extr_af_netlink.c_do_one_broadcast.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sock = type { i32 }
%struct.netlink_broadcast_data = type { i64, i32, i32, i32, i32, i32, i32*, i32, i32, i32, %struct.sock* }
%struct.netlink_sock = type { i64, i32, i32, i32 }

@NETLINK_BROADCAST_SEND_ERROR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sock*, %struct.netlink_broadcast_data*)* @do_one_broadcast to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @do_one_broadcast(%struct.sock* %0, %struct.netlink_broadcast_data* %1) #0 {
  %3 = alloca %struct.sock*, align 8
  %4 = alloca %struct.netlink_broadcast_data*, align 8
  %5 = alloca %struct.netlink_sock*, align 8
  %6 = alloca i32, align 4
  store %struct.sock* %0, %struct.sock** %3, align 8
  store %struct.netlink_broadcast_data* %1, %struct.netlink_broadcast_data** %4, align 8
  %7 = load %struct.sock*, %struct.sock** %3, align 8
  %8 = call %struct.netlink_sock* @nlk_sk(%struct.sock* %7)
  store %struct.netlink_sock* %8, %struct.netlink_sock** %5, align 8
  %9 = load %struct.netlink_broadcast_data*, %struct.netlink_broadcast_data** %4, align 8
  %10 = getelementptr inbounds %struct.netlink_broadcast_data, %struct.netlink_broadcast_data* %9, i32 0, i32 10
  %11 = load %struct.sock*, %struct.sock** %10, align 8
  %12 = load %struct.sock*, %struct.sock** %3, align 8
  %13 = icmp eq %struct.sock* %11, %12
  br i1 %13, label %14, label %15

14:                                               ; preds = %2
  br label %164

15:                                               ; preds = %2
  %16 = load %struct.netlink_sock*, %struct.netlink_sock** %5, align 8
  %17 = getelementptr inbounds %struct.netlink_sock, %struct.netlink_sock* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = load %struct.netlink_broadcast_data*, %struct.netlink_broadcast_data** %4, align 8
  %20 = getelementptr inbounds %struct.netlink_broadcast_data, %struct.netlink_broadcast_data* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = icmp eq i64 %18, %21
  br i1 %22, label %42, label %23

23:                                               ; preds = %15
  %24 = load %struct.netlink_broadcast_data*, %struct.netlink_broadcast_data** %4, align 8
  %25 = getelementptr inbounds %struct.netlink_broadcast_data, %struct.netlink_broadcast_data* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 8
  %27 = sub nsw i32 %26, 1
  %28 = load %struct.netlink_sock*, %struct.netlink_sock** %5, align 8
  %29 = getelementptr inbounds %struct.netlink_sock, %struct.netlink_sock* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 8
  %31 = icmp sge i32 %27, %30
  br i1 %31, label %42, label %32

32:                                               ; preds = %23
  %33 = load %struct.netlink_broadcast_data*, %struct.netlink_broadcast_data** %4, align 8
  %34 = getelementptr inbounds %struct.netlink_broadcast_data, %struct.netlink_broadcast_data* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 8
  %36 = sub nsw i32 %35, 1
  %37 = load %struct.netlink_sock*, %struct.netlink_sock** %5, align 8
  %38 = getelementptr inbounds %struct.netlink_sock, %struct.netlink_sock* %37, i32 0, i32 3
  %39 = load i32, i32* %38, align 8
  %40 = call i32 @test_bit(i32 %36, i32 %39)
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %43, label %42

42:                                               ; preds = %32, %23, %15
  br label %164

43:                                               ; preds = %32
  %44 = load %struct.sock*, %struct.sock** %3, align 8
  %45 = call i32 @sock_net(%struct.sock* %44)
  %46 = load %struct.netlink_broadcast_data*, %struct.netlink_broadcast_data** %4, align 8
  %47 = getelementptr inbounds %struct.netlink_broadcast_data, %struct.netlink_broadcast_data* %46, i32 0, i32 9
  %48 = load i32, i32* %47, align 8
  %49 = call i32 @net_eq(i32 %45, i32 %48)
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %52, label %51

51:                                               ; preds = %43
  br label %164

52:                                               ; preds = %43
  %53 = load %struct.netlink_broadcast_data*, %struct.netlink_broadcast_data** %4, align 8
  %54 = getelementptr inbounds %struct.netlink_broadcast_data, %struct.netlink_broadcast_data* %53, i32 0, i32 2
  %55 = load i32, i32* %54, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %60

57:                                               ; preds = %52
  %58 = load %struct.sock*, %struct.sock** %3, align 8
  %59 = call i32 @netlink_overrun(%struct.sock* %58)
  br label %164

60:                                               ; preds = %52
  %61 = load %struct.sock*, %struct.sock** %3, align 8
  %62 = call i32 @sock_hold(%struct.sock* %61)
  %63 = load %struct.netlink_broadcast_data*, %struct.netlink_broadcast_data** %4, align 8
  %64 = getelementptr inbounds %struct.netlink_broadcast_data, %struct.netlink_broadcast_data* %63, i32 0, i32 6
  %65 = load i32*, i32** %64, align 8
  %66 = icmp eq i32* %65, null
  br i1 %66, label %67, label %95

67:                                               ; preds = %60
  %68 = load %struct.netlink_broadcast_data*, %struct.netlink_broadcast_data** %4, align 8
  %69 = getelementptr inbounds %struct.netlink_broadcast_data, %struct.netlink_broadcast_data* %68, i32 0, i32 7
  %70 = load i32, i32* %69, align 8
  %71 = call i64 @skb_shared(i32 %70)
  %72 = icmp ne i64 %71, 0
  br i1 %72, label %73, label %83

73:                                               ; preds = %67
  %74 = load %struct.netlink_broadcast_data*, %struct.netlink_broadcast_data** %4, align 8
  %75 = getelementptr inbounds %struct.netlink_broadcast_data, %struct.netlink_broadcast_data* %74, i32 0, i32 7
  %76 = load i32, i32* %75, align 8
  %77 = load %struct.netlink_broadcast_data*, %struct.netlink_broadcast_data** %4, align 8
  %78 = getelementptr inbounds %struct.netlink_broadcast_data, %struct.netlink_broadcast_data* %77, i32 0, i32 8
  %79 = load i32, i32* %78, align 4
  %80 = call i32* @skb_clone(i32 %76, i32 %79)
  %81 = load %struct.netlink_broadcast_data*, %struct.netlink_broadcast_data** %4, align 8
  %82 = getelementptr inbounds %struct.netlink_broadcast_data, %struct.netlink_broadcast_data* %81, i32 0, i32 6
  store i32* %80, i32** %82, align 8
  br label %94

83:                                               ; preds = %67
  %84 = load %struct.netlink_broadcast_data*, %struct.netlink_broadcast_data** %4, align 8
  %85 = getelementptr inbounds %struct.netlink_broadcast_data, %struct.netlink_broadcast_data* %84, i32 0, i32 7
  %86 = load i32, i32* %85, align 8
  %87 = call i32* @skb_get(i32 %86)
  %88 = load %struct.netlink_broadcast_data*, %struct.netlink_broadcast_data** %4, align 8
  %89 = getelementptr inbounds %struct.netlink_broadcast_data, %struct.netlink_broadcast_data* %88, i32 0, i32 6
  store i32* %87, i32** %89, align 8
  %90 = load %struct.netlink_broadcast_data*, %struct.netlink_broadcast_data** %4, align 8
  %91 = getelementptr inbounds %struct.netlink_broadcast_data, %struct.netlink_broadcast_data* %90, i32 0, i32 6
  %92 = load i32*, i32** %91, align 8
  %93 = call i32 @skb_orphan(i32* %92)
  br label %94

94:                                               ; preds = %83, %73
  br label %95

95:                                               ; preds = %94, %60
  %96 = load %struct.netlink_broadcast_data*, %struct.netlink_broadcast_data** %4, align 8
  %97 = getelementptr inbounds %struct.netlink_broadcast_data, %struct.netlink_broadcast_data* %96, i32 0, i32 6
  %98 = load i32*, i32** %97, align 8
  %99 = icmp eq i32* %98, null
  br i1 %99, label %100, label %115

100:                                              ; preds = %95
  %101 = load %struct.sock*, %struct.sock** %3, align 8
  %102 = call i32 @netlink_overrun(%struct.sock* %101)
  %103 = load %struct.netlink_broadcast_data*, %struct.netlink_broadcast_data** %4, align 8
  %104 = getelementptr inbounds %struct.netlink_broadcast_data, %struct.netlink_broadcast_data* %103, i32 0, i32 2
  store i32 1, i32* %104, align 4
  %105 = load %struct.netlink_sock*, %struct.netlink_sock** %5, align 8
  %106 = getelementptr inbounds %struct.netlink_sock, %struct.netlink_sock* %105, i32 0, i32 2
  %107 = load i32, i32* %106, align 4
  %108 = load i32, i32* @NETLINK_BROADCAST_SEND_ERROR, align 4
  %109 = and i32 %107, %108
  %110 = icmp ne i32 %109, 0
  br i1 %110, label %111, label %114

111:                                              ; preds = %100
  %112 = load %struct.netlink_broadcast_data*, %struct.netlink_broadcast_data** %4, align 8
  %113 = getelementptr inbounds %struct.netlink_broadcast_data, %struct.netlink_broadcast_data* %112, i32 0, i32 3
  store i32 1, i32* %113, align 8
  br label %114

114:                                              ; preds = %111, %100
  br label %161

115:                                              ; preds = %95
  %116 = load %struct.sock*, %struct.sock** %3, align 8
  %117 = load %struct.netlink_broadcast_data*, %struct.netlink_broadcast_data** %4, align 8
  %118 = getelementptr inbounds %struct.netlink_broadcast_data, %struct.netlink_broadcast_data* %117, i32 0, i32 6
  %119 = load i32*, i32** %118, align 8
  %120 = call i64 @sk_filter(%struct.sock* %116, i32* %119)
  %121 = icmp ne i64 %120, 0
  br i1 %121, label %122, label %129

122:                                              ; preds = %115
  %123 = load %struct.netlink_broadcast_data*, %struct.netlink_broadcast_data** %4, align 8
  %124 = getelementptr inbounds %struct.netlink_broadcast_data, %struct.netlink_broadcast_data* %123, i32 0, i32 6
  %125 = load i32*, i32** %124, align 8
  %126 = call i32 @kfree_skb(i32* %125)
  %127 = load %struct.netlink_broadcast_data*, %struct.netlink_broadcast_data** %4, align 8
  %128 = getelementptr inbounds %struct.netlink_broadcast_data, %struct.netlink_broadcast_data* %127, i32 0, i32 6
  store i32* null, i32** %128, align 8
  br label %160

129:                                              ; preds = %115
  %130 = load %struct.sock*, %struct.sock** %3, align 8
  %131 = load %struct.netlink_broadcast_data*, %struct.netlink_broadcast_data** %4, align 8
  %132 = getelementptr inbounds %struct.netlink_broadcast_data, %struct.netlink_broadcast_data* %131, i32 0, i32 6
  %133 = load i32*, i32** %132, align 8
  %134 = call i32 @netlink_broadcast_deliver(%struct.sock* %130, i32* %133)
  store i32 %134, i32* %6, align 4
  %135 = icmp slt i32 %134, 0
  br i1 %135, label %136, label %149

136:                                              ; preds = %129
  %137 = load %struct.sock*, %struct.sock** %3, align 8
  %138 = call i32 @netlink_overrun(%struct.sock* %137)
  %139 = load %struct.netlink_sock*, %struct.netlink_sock** %5, align 8
  %140 = getelementptr inbounds %struct.netlink_sock, %struct.netlink_sock* %139, i32 0, i32 2
  %141 = load i32, i32* %140, align 4
  %142 = load i32, i32* @NETLINK_BROADCAST_SEND_ERROR, align 4
  %143 = and i32 %141, %142
  %144 = icmp ne i32 %143, 0
  br i1 %144, label %145, label %148

145:                                              ; preds = %136
  %146 = load %struct.netlink_broadcast_data*, %struct.netlink_broadcast_data** %4, align 8
  %147 = getelementptr inbounds %struct.netlink_broadcast_data, %struct.netlink_broadcast_data* %146, i32 0, i32 3
  store i32 1, i32* %147, align 8
  br label %148

148:                                              ; preds = %145, %136
  br label %159

149:                                              ; preds = %129
  %150 = load i32, i32* %6, align 4
  %151 = load %struct.netlink_broadcast_data*, %struct.netlink_broadcast_data** %4, align 8
  %152 = getelementptr inbounds %struct.netlink_broadcast_data, %struct.netlink_broadcast_data* %151, i32 0, i32 4
  %153 = load i32, i32* %152, align 4
  %154 = or i32 %153, %150
  store i32 %154, i32* %152, align 4
  %155 = load %struct.netlink_broadcast_data*, %struct.netlink_broadcast_data** %4, align 8
  %156 = getelementptr inbounds %struct.netlink_broadcast_data, %struct.netlink_broadcast_data* %155, i32 0, i32 5
  store i32 1, i32* %156, align 8
  %157 = load %struct.netlink_broadcast_data*, %struct.netlink_broadcast_data** %4, align 8
  %158 = getelementptr inbounds %struct.netlink_broadcast_data, %struct.netlink_broadcast_data* %157, i32 0, i32 6
  store i32* null, i32** %158, align 8
  br label %159

159:                                              ; preds = %149, %148
  br label %160

160:                                              ; preds = %159, %122
  br label %161

161:                                              ; preds = %160, %114
  %162 = load %struct.sock*, %struct.sock** %3, align 8
  %163 = call i32 @sock_put(%struct.sock* %162)
  br label %164

164:                                              ; preds = %161, %57, %51, %42, %14
  ret i32 0
}

declare dso_local %struct.netlink_sock* @nlk_sk(%struct.sock*) #1

declare dso_local i32 @test_bit(i32, i32) #1

declare dso_local i32 @net_eq(i32, i32) #1

declare dso_local i32 @sock_net(%struct.sock*) #1

declare dso_local i32 @netlink_overrun(%struct.sock*) #1

declare dso_local i32 @sock_hold(%struct.sock*) #1

declare dso_local i64 @skb_shared(i32) #1

declare dso_local i32* @skb_clone(i32, i32) #1

declare dso_local i32* @skb_get(i32) #1

declare dso_local i32 @skb_orphan(i32*) #1

declare dso_local i64 @sk_filter(%struct.sock*, i32*) #1

declare dso_local i32 @kfree_skb(i32*) #1

declare dso_local i32 @netlink_broadcast_deliver(%struct.sock*, i32*) #1

declare dso_local i32 @sock_put(%struct.sock*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

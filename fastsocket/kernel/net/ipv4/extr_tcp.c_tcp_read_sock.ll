; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/ipv4/extr_tcp.c_tcp_read_sock.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/ipv4/extr_tcp.c_tcp_read_sock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sock = type { i64 }
%struct.TYPE_6__ = type { i32 }
%struct.sk_buff = type { i64 }
%struct.tcp_sock = type { i64, i64, i64 }
%struct.TYPE_7__ = type { i64 }

@TCP_LISTEN = common dso_local global i64 0, align 8
@ENOTCONN = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @tcp_read_sock(%struct.sock* %0, %struct.TYPE_6__* %1, i32 (%struct.TYPE_6__*, %struct.sk_buff*, i64, i64)* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.sock*, align 8
  %6 = alloca %struct.TYPE_6__*, align 8
  %7 = alloca i32 (%struct.TYPE_6__*, %struct.sk_buff*, i64, i64)*, align 8
  %8 = alloca %struct.sk_buff*, align 8
  %9 = alloca %struct.tcp_sock*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  store %struct.sock* %0, %struct.sock** %5, align 8
  store %struct.TYPE_6__* %1, %struct.TYPE_6__** %6, align 8
  store i32 (%struct.TYPE_6__*, %struct.sk_buff*, i64, i64)* %2, i32 (%struct.TYPE_6__*, %struct.sk_buff*, i64, i64)** %7, align 8
  %16 = load %struct.sock*, %struct.sock** %5, align 8
  %17 = call %struct.tcp_sock* @tcp_sk(%struct.sock* %16)
  store %struct.tcp_sock* %17, %struct.tcp_sock** %9, align 8
  %18 = load %struct.tcp_sock*, %struct.tcp_sock** %9, align 8
  %19 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  store i64 %20, i64* %10, align 8
  store i32 0, i32* %12, align 4
  %21 = load %struct.sock*, %struct.sock** %5, align 8
  %22 = getelementptr inbounds %struct.sock, %struct.sock* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = load i64, i64* @TCP_LISTEN, align 8
  %25 = icmp eq i64 %23, %24
  br i1 %25, label %26, label %29

26:                                               ; preds = %3
  %27 = load i32, i32* @ENOTCONN, align 4
  %28 = sub nsw i32 0, %27
  store i32 %28, i32* %4, align 4
  br label %155

29:                                               ; preds = %3
  br label %30

30:                                               ; preds = %137, %29
  %31 = load %struct.sock*, %struct.sock** %5, align 8
  %32 = load i64, i64* %10, align 8
  %33 = call %struct.sk_buff* @tcp_recv_skb(%struct.sock* %31, i64 %32, i64* %11)
  store %struct.sk_buff* %33, %struct.sk_buff** %8, align 8
  %34 = icmp ne %struct.sk_buff* %33, null
  br i1 %34, label %35, label %141

35:                                               ; preds = %30
  %36 = load i64, i64* %11, align 8
  %37 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %38 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = icmp ult i64 %36, %39
  br i1 %40, label %41, label %116

41:                                               ; preds = %35
  %42 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %43 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = load i64, i64* %11, align 8
  %46 = sub i64 %44, %45
  store i64 %46, i64* %14, align 8
  %47 = load %struct.tcp_sock*, %struct.tcp_sock** %9, align 8
  %48 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %47, i32 0, i32 2
  %49 = load i64, i64* %48, align 8
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %67

51:                                               ; preds = %41
  %52 = load %struct.tcp_sock*, %struct.tcp_sock** %9, align 8
  %53 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %52, i32 0, i32 1
  %54 = load i64, i64* %53, align 8
  %55 = load i64, i64* %10, align 8
  %56 = sub i64 %54, %55
  store i64 %56, i64* %15, align 8
  %57 = load i64, i64* %15, align 8
  %58 = load i64, i64* %14, align 8
  %59 = icmp ult i64 %57, %58
  br i1 %59, label %60, label %62

60:                                               ; preds = %51
  %61 = load i64, i64* %15, align 8
  store i64 %61, i64* %14, align 8
  br label %62

62:                                               ; preds = %60, %51
  %63 = load i64, i64* %14, align 8
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %66, label %65

65:                                               ; preds = %62
  br label %141

66:                                               ; preds = %62
  br label %67

67:                                               ; preds = %66, %41
  %68 = load i32 (%struct.TYPE_6__*, %struct.sk_buff*, i64, i64)*, i32 (%struct.TYPE_6__*, %struct.sk_buff*, i64, i64)** %7, align 8
  %69 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %70 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %71 = load i64, i64* %11, align 8
  %72 = load i64, i64* %14, align 8
  %73 = call i32 %68(%struct.TYPE_6__* %69, %struct.sk_buff* %70, i64 %71, i64 %72)
  store i32 %73, i32* %13, align 4
  %74 = load i32, i32* %13, align 4
  %75 = icmp slt i32 %74, 0
  br i1 %75, label %76, label %82

76:                                               ; preds = %67
  %77 = load i32, i32* %12, align 4
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %81, label %79

79:                                               ; preds = %76
  %80 = load i32, i32* %13, align 4
  store i32 %80, i32* %12, align 4
  br label %81

81:                                               ; preds = %79, %76
  br label %141

82:                                               ; preds = %67
  %83 = load i32, i32* %13, align 4
  %84 = sext i32 %83 to i64
  %85 = load i64, i64* %14, align 8
  %86 = icmp ule i64 %84, %85
  br i1 %86, label %87, label %99

87:                                               ; preds = %82
  %88 = load i32, i32* %13, align 4
  %89 = sext i32 %88 to i64
  %90 = load i64, i64* %10, align 8
  %91 = add i64 %90, %89
  store i64 %91, i64* %10, align 8
  %92 = load i32, i32* %13, align 4
  %93 = load i32, i32* %12, align 4
  %94 = add nsw i32 %93, %92
  store i32 %94, i32* %12, align 4
  %95 = load i32, i32* %13, align 4
  %96 = sext i32 %95 to i64
  %97 = load i64, i64* %11, align 8
  %98 = add i64 %97, %96
  store i64 %98, i64* %11, align 8
  br label %99

99:                                               ; preds = %87, %82
  br label %100

100:                                              ; preds = %99
  %101 = load %struct.sock*, %struct.sock** %5, align 8
  %102 = load i64, i64* %10, align 8
  %103 = sub i64 %102, 1
  %104 = call %struct.sk_buff* @tcp_recv_skb(%struct.sock* %101, i64 %103, i64* %11)
  store %struct.sk_buff* %104, %struct.sk_buff** %8, align 8
  %105 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %106 = icmp ne %struct.sk_buff* %105, null
  br i1 %106, label %107, label %114

107:                                              ; preds = %100
  %108 = load i64, i64* %11, align 8
  %109 = add i64 %108, 1
  %110 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %111 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %110, i32 0, i32 0
  %112 = load i64, i64* %111, align 8
  %113 = icmp ne i64 %109, %112
  br i1 %113, label %114, label %115

114:                                              ; preds = %107, %100
  br label %141

115:                                              ; preds = %107
  br label %116

116:                                              ; preds = %115, %35
  %117 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %118 = call %struct.TYPE_7__* @tcp_hdr(%struct.sk_buff* %117)
  %119 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %118, i32 0, i32 0
  %120 = load i64, i64* %119, align 8
  %121 = icmp ne i64 %120, 0
  br i1 %121, label %122, label %128

122:                                              ; preds = %116
  %123 = load %struct.sock*, %struct.sock** %5, align 8
  %124 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %125 = call i32 @sk_eat_skb(%struct.sock* %123, %struct.sk_buff* %124, i32 0)
  %126 = load i64, i64* %10, align 8
  %127 = add i64 %126, 1
  store i64 %127, i64* %10, align 8
  br label %141

128:                                              ; preds = %116
  %129 = load %struct.sock*, %struct.sock** %5, align 8
  %130 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %131 = call i32 @sk_eat_skb(%struct.sock* %129, %struct.sk_buff* %130, i32 0)
  %132 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %133 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %132, i32 0, i32 0
  %134 = load i32, i32* %133, align 4
  %135 = icmp ne i32 %134, 0
  br i1 %135, label %137, label %136

136:                                              ; preds = %128
  br label %141

137:                                              ; preds = %128
  %138 = load i64, i64* %10, align 8
  %139 = load %struct.tcp_sock*, %struct.tcp_sock** %9, align 8
  %140 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %139, i32 0, i32 0
  store i64 %138, i64* %140, align 8
  br label %30

141:                                              ; preds = %136, %122, %114, %81, %65, %30
  %142 = load i64, i64* %10, align 8
  %143 = load %struct.tcp_sock*, %struct.tcp_sock** %9, align 8
  %144 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %143, i32 0, i32 0
  store i64 %142, i64* %144, align 8
  %145 = load %struct.sock*, %struct.sock** %5, align 8
  %146 = call i32 @tcp_rcv_space_adjust(%struct.sock* %145)
  %147 = load i32, i32* %12, align 4
  %148 = icmp sgt i32 %147, 0
  br i1 %148, label %149, label %153

149:                                              ; preds = %141
  %150 = load %struct.sock*, %struct.sock** %5, align 8
  %151 = load i32, i32* %12, align 4
  %152 = call i32 @tcp_cleanup_rbuf(%struct.sock* %150, i32 %151)
  br label %153

153:                                              ; preds = %149, %141
  %154 = load i32, i32* %12, align 4
  store i32 %154, i32* %4, align 4
  br label %155

155:                                              ; preds = %153, %26
  %156 = load i32, i32* %4, align 4
  ret i32 %156
}

declare dso_local %struct.tcp_sock* @tcp_sk(%struct.sock*) #1

declare dso_local %struct.sk_buff* @tcp_recv_skb(%struct.sock*, i64, i64*) #1

declare dso_local %struct.TYPE_7__* @tcp_hdr(%struct.sk_buff*) #1

declare dso_local i32 @sk_eat_skb(%struct.sock*, %struct.sk_buff*, i32) #1

declare dso_local i32 @tcp_rcv_space_adjust(%struct.sock*) #1

declare dso_local i32 @tcp_cleanup_rbuf(%struct.sock*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

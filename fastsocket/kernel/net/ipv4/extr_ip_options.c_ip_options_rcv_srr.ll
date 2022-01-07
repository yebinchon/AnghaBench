; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/ipv4/extr_ip_options.c_ip_options_rcv_srr.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/ipv4/extr_ip_options.c_ip_options_rcv_srr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i64, i32 }
%struct.ip_options = type { i32, i32, i32, i32 }
%struct.iphdr = type { i32, i32, i32 }
%struct.rtable = type { i64, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }
%struct.TYPE_4__ = type { %struct.ip_options }

@PACKET_HOST = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@RTN_UNICAST = common dso_local global i64 0, align 8
@ICMP_PARAMETERPROB = common dso_local global i32 0, align 4
@RTN_LOCAL = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ip_options_rcv_srr(%struct.sk_buff* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.sk_buff*, align 8
  %4 = alloca %struct.ip_options*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.iphdr*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca %struct.rtable*, align 8
  %11 = alloca %struct.rtable*, align 8
  %12 = alloca i32, align 4
  store %struct.sk_buff* %0, %struct.sk_buff** %3, align 8
  %13 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %14 = call %struct.TYPE_4__* @IPCB(%struct.sk_buff* %13)
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 0
  store %struct.ip_options* %15, %struct.ip_options** %4, align 8
  %16 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %17 = call %struct.iphdr* @ip_hdr(%struct.sk_buff* %16)
  store %struct.iphdr* %17, %struct.iphdr** %8, align 8
  %18 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %19 = call i8* @skb_network_header(%struct.sk_buff* %18)
  %20 = load %struct.ip_options*, %struct.ip_options** %4, align 8
  %21 = getelementptr inbounds %struct.ip_options, %struct.ip_options* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds i8, i8* %19, i64 %23
  store i8* %24, i8** %9, align 8
  %25 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %26 = call %struct.rtable* @skb_rtable(%struct.sk_buff* %25)
  store %struct.rtable* %26, %struct.rtable** %10, align 8
  %27 = load %struct.ip_options*, %struct.ip_options** %4, align 8
  %28 = getelementptr inbounds %struct.ip_options, %struct.ip_options* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %32, label %31

31:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %181

32:                                               ; preds = %1
  %33 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %34 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = load i64, i64* @PACKET_HOST, align 8
  %37 = icmp ne i64 %35, %36
  br i1 %37, label %38, label %41

38:                                               ; preds = %32
  %39 = load i32, i32* @EINVAL, align 4
  %40 = sub nsw i32 0, %39
  store i32 %40, i32* %2, align 4
  br label %181

41:                                               ; preds = %32
  %42 = load %struct.rtable*, %struct.rtable** %10, align 8
  %43 = getelementptr inbounds %struct.rtable, %struct.rtable* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = load i64, i64* @RTN_UNICAST, align 8
  %46 = icmp eq i64 %44, %45
  br i1 %46, label %47, label %60

47:                                               ; preds = %41
  %48 = load %struct.ip_options*, %struct.ip_options** %4, align 8
  %49 = getelementptr inbounds %struct.ip_options, %struct.ip_options* %48, i32 0, i32 3
  %50 = load i32, i32* %49, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %53, label %52

52:                                               ; preds = %47
  store i32 0, i32* %2, align 4
  br label %181

53:                                               ; preds = %47
  %54 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %55 = load i32, i32* @ICMP_PARAMETERPROB, align 4
  %56 = call i32 @htonl(i32 268435456)
  %57 = call i32 @icmp_send(%struct.sk_buff* %54, i32 %55, i32 0, i32 %56)
  %58 = load i32, i32* @EINVAL, align 4
  %59 = sub nsw i32 0, %58
  store i32 %59, i32* %2, align 4
  br label %181

60:                                               ; preds = %41
  %61 = load %struct.rtable*, %struct.rtable** %10, align 8
  %62 = getelementptr inbounds %struct.rtable, %struct.rtable* %61, i32 0, i32 0
  %63 = load i64, i64* %62, align 8
  %64 = load i64, i64* @RTN_LOCAL, align 8
  %65 = icmp ne i64 %63, %64
  br i1 %65, label %66, label %69

66:                                               ; preds = %60
  %67 = load i32, i32* @EINVAL, align 4
  %68 = sub nsw i32 0, %67
  store i32 %68, i32* %2, align 4
  br label %181

69:                                               ; preds = %60
  %70 = load i8*, i8** %9, align 8
  %71 = getelementptr inbounds i8, i8* %70, i64 2
  %72 = load i8, i8* %71, align 1
  %73 = zext i8 %72 to i32
  store i32 %73, i32* %6, align 4
  %74 = load i8*, i8** %9, align 8
  %75 = getelementptr inbounds i8, i8* %74, i64 1
  %76 = load i8, i8* %75, align 1
  %77 = zext i8 %76 to i32
  store i32 %77, i32* %5, align 4
  br label %78

78:                                               ; preds = %168, %69
  %79 = load i32, i32* %6, align 4
  %80 = load i32, i32* %5, align 4
  %81 = icmp sle i32 %79, %80
  br i1 %81, label %82, label %171

82:                                               ; preds = %78
  %83 = load i32, i32* %6, align 4
  %84 = add nsw i32 %83, 3
  %85 = load i32, i32* %5, align 4
  %86 = icmp sgt i32 %84, %85
  br i1 %86, label %87, label %99

87:                                               ; preds = %82
  %88 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %89 = load i32, i32* @ICMP_PARAMETERPROB, align 4
  %90 = load %struct.ip_options*, %struct.ip_options** %4, align 8
  %91 = getelementptr inbounds %struct.ip_options, %struct.ip_options* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 4
  %93 = add nsw i32 %92, 2
  %94 = shl i32 %93, 24
  %95 = call i32 @htonl(i32 %94)
  %96 = call i32 @icmp_send(%struct.sk_buff* %88, i32 %89, i32 0, i32 %95)
  %97 = load i32, i32* @EINVAL, align 4
  %98 = sub nsw i32 0, %97
  store i32 %98, i32* %2, align 4
  br label %181

99:                                               ; preds = %82
  %100 = load i8*, i8** %9, align 8
  %101 = load i32, i32* %6, align 4
  %102 = sub nsw i32 %101, 1
  %103 = sext i32 %102 to i64
  %104 = getelementptr inbounds i8, i8* %100, i64 %103
  %105 = call i32 @memcpy(i32* %7, i8* %104, i32 4)
  %106 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %107 = call %struct.rtable* @skb_rtable(%struct.sk_buff* %106)
  store %struct.rtable* %107, %struct.rtable** %10, align 8
  %108 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %109 = call i32 @skb_dst_set(%struct.sk_buff* %108, i32* null)
  %110 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %111 = load i32, i32* %7, align 4
  %112 = load %struct.iphdr*, %struct.iphdr** %8, align 8
  %113 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %112, i32 0, i32 2
  %114 = load i32, i32* %113, align 4
  %115 = load %struct.iphdr*, %struct.iphdr** %8, align 8
  %116 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %115, i32 0, i32 1
  %117 = load i32, i32* %116, align 4
  %118 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %119 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %118, i32 0, i32 1
  %120 = load i32, i32* %119, align 8
  %121 = call i32 @ip_route_input(%struct.sk_buff* %110, i32 %111, i32 %114, i32 %117, i32 %120)
  store i32 %121, i32* %12, align 4
  %122 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %123 = call %struct.rtable* @skb_rtable(%struct.sk_buff* %122)
  store %struct.rtable* %123, %struct.rtable** %11, align 8
  %124 = load i32, i32* %12, align 4
  %125 = icmp ne i32 %124, 0
  br i1 %125, label %138, label %126

126:                                              ; preds = %99
  %127 = load %struct.rtable*, %struct.rtable** %11, align 8
  %128 = getelementptr inbounds %struct.rtable, %struct.rtable* %127, i32 0, i32 0
  %129 = load i64, i64* %128, align 8
  %130 = load i64, i64* @RTN_UNICAST, align 8
  %131 = icmp ne i64 %129, %130
  br i1 %131, label %132, label %148

132:                                              ; preds = %126
  %133 = load %struct.rtable*, %struct.rtable** %11, align 8
  %134 = getelementptr inbounds %struct.rtable, %struct.rtable* %133, i32 0, i32 0
  %135 = load i64, i64* %134, align 8
  %136 = load i64, i64* @RTN_LOCAL, align 8
  %137 = icmp ne i64 %135, %136
  br i1 %137, label %138, label %148

138:                                              ; preds = %132, %99
  %139 = load %struct.rtable*, %struct.rtable** %11, align 8
  %140 = call i32 @ip_rt_put(%struct.rtable* %139)
  %141 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %142 = load %struct.rtable*, %struct.rtable** %10, align 8
  %143 = getelementptr inbounds %struct.rtable, %struct.rtable* %142, i32 0, i32 1
  %144 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %143, i32 0, i32 0
  %145 = call i32 @skb_dst_set(%struct.sk_buff* %141, i32* %144)
  %146 = load i32, i32* @EINVAL, align 4
  %147 = sub nsw i32 0, %146
  store i32 %147, i32* %2, align 4
  br label %181

148:                                              ; preds = %132, %126
  %149 = load %struct.rtable*, %struct.rtable** %10, align 8
  %150 = call i32 @ip_rt_put(%struct.rtable* %149)
  %151 = load %struct.rtable*, %struct.rtable** %11, align 8
  %152 = getelementptr inbounds %struct.rtable, %struct.rtable* %151, i32 0, i32 0
  %153 = load i64, i64* %152, align 8
  %154 = load i64, i64* @RTN_LOCAL, align 8
  %155 = icmp ne i64 %153, %154
  br i1 %155, label %156, label %157

156:                                              ; preds = %148
  br label %171

157:                                              ; preds = %148
  %158 = load %struct.iphdr*, %struct.iphdr** %8, align 8
  %159 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %158, i32 0, i32 0
  %160 = load i8*, i8** %9, align 8
  %161 = load i32, i32* %6, align 4
  %162 = sub nsw i32 %161, 1
  %163 = sext i32 %162 to i64
  %164 = getelementptr inbounds i8, i8* %160, i64 %163
  %165 = call i32 @memcpy(i32* %159, i8* %164, i32 4)
  %166 = load %struct.ip_options*, %struct.ip_options** %4, align 8
  %167 = getelementptr inbounds %struct.ip_options, %struct.ip_options* %166, i32 0, i32 1
  store i32 1, i32* %167, align 4
  br label %168

168:                                              ; preds = %157
  %169 = load i32, i32* %6, align 4
  %170 = add nsw i32 %169, 4
  store i32 %170, i32* %6, align 4
  br label %78

171:                                              ; preds = %156, %78
  %172 = load i32, i32* %6, align 4
  %173 = load i32, i32* %5, align 4
  %174 = icmp sle i32 %172, %173
  br i1 %174, label %175, label %180

175:                                              ; preds = %171
  %176 = load %struct.ip_options*, %struct.ip_options** %4, align 8
  %177 = getelementptr inbounds %struct.ip_options, %struct.ip_options* %176, i32 0, i32 2
  store i32 1, i32* %177, align 4
  %178 = load %struct.ip_options*, %struct.ip_options** %4, align 8
  %179 = getelementptr inbounds %struct.ip_options, %struct.ip_options* %178, i32 0, i32 1
  store i32 1, i32* %179, align 4
  br label %180

180:                                              ; preds = %175, %171
  store i32 0, i32* %2, align 4
  br label %181

181:                                              ; preds = %180, %138, %87, %66, %53, %52, %38, %31
  %182 = load i32, i32* %2, align 4
  ret i32 %182
}

declare dso_local %struct.TYPE_4__* @IPCB(%struct.sk_buff*) #1

declare dso_local %struct.iphdr* @ip_hdr(%struct.sk_buff*) #1

declare dso_local i8* @skb_network_header(%struct.sk_buff*) #1

declare dso_local %struct.rtable* @skb_rtable(%struct.sk_buff*) #1

declare dso_local i32 @icmp_send(%struct.sk_buff*, i32, i32, i32) #1

declare dso_local i32 @htonl(i32) #1

declare dso_local i32 @memcpy(i32*, i8*, i32) #1

declare dso_local i32 @skb_dst_set(%struct.sk_buff*, i32*) #1

declare dso_local i32 @ip_route_input(%struct.sk_buff*, i32, i32, i32, i32) #1

declare dso_local i32 @ip_rt_put(%struct.rtable*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

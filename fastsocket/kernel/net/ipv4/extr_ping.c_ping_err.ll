; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/ipv4/extr_ping.c_ping_err.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/ipv4/extr_ping.c_ping_err.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32, i32 }
%struct.sk_buff = type { %struct.TYPE_8__*, i64 }
%struct.TYPE_8__ = type { i32 }
%struct.iphdr = type { i32, i32, i32 }
%struct.icmphdr = type { i32, i32, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32, i32 }
%struct.inet_sock = type { i32, i32 }
%struct.net = type { i32 }
%struct.sock = type { i64, i32, i32 (%struct.sock*)* }

@.str = private unnamed_addr constant [48 x i8] c"ping_err(type=%04x,code=%04x,id=%04x,seq=%04x)\0A\00", align 1
@.str.1 = private unnamed_addr constant [21 x i8] c"no socket, dropping\0A\00", align 1
@.str.2 = private unnamed_addr constant [18 x i8] c"err on socket %p\0A\00", align 1
@EHOSTUNREACH = common dso_local global i32 0, align 4
@EREMOTEIO = common dso_local global i32 0, align 4
@EPROTO = common dso_local global i32 0, align 4
@ICMP_FRAG_NEEDED = common dso_local global i32 0, align 4
@IP_PMTUDISC_DONT = common dso_local global i32 0, align 4
@EMSGSIZE = common dso_local global i32 0, align 4
@NR_ICMP_UNREACH = common dso_local global i32 0, align 4
@icmp_err_convert = common dso_local global %struct.TYPE_7__* null, align 8
@TCP_ESTABLISHED = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ping_err(%struct.sk_buff* %0, i32 %1) #0 {
  %3 = alloca %struct.sk_buff*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.iphdr*, align 8
  %6 = alloca %struct.icmphdr*, align 8
  %7 = alloca %struct.inet_sock*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.net*, align 8
  %11 = alloca %struct.sock*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.sk_buff* %0, %struct.sk_buff** %3, align 8
  store i32 %1, i32* %4, align 4
  %14 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %15 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %14, i32 0, i32 1
  %16 = load i64, i64* %15, align 8
  %17 = inttoptr i64 %16 to %struct.iphdr*
  store %struct.iphdr* %17, %struct.iphdr** %5, align 8
  %18 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %19 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %18, i32 0, i32 1
  %20 = load i64, i64* %19, align 8
  %21 = load %struct.iphdr*, %struct.iphdr** %5, align 8
  %22 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = shl i32 %23, 2
  %25 = sext i32 %24 to i64
  %26 = add nsw i64 %20, %25
  %27 = inttoptr i64 %26 to %struct.icmphdr*
  store %struct.icmphdr* %27, %struct.icmphdr** %6, align 8
  %28 = load %struct.icmphdr*, %struct.icmphdr** %6, align 8
  %29 = getelementptr inbounds %struct.icmphdr, %struct.icmphdr* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  store i32 %30, i32* %8, align 4
  %31 = load %struct.icmphdr*, %struct.icmphdr** %6, align 8
  %32 = getelementptr inbounds %struct.icmphdr, %struct.icmphdr* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  store i32 %33, i32* %9, align 4
  %34 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %35 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %34, i32 0, i32 0
  %36 = load %struct.TYPE_8__*, %struct.TYPE_8__** %35, align 8
  %37 = call %struct.net* @dev_net(%struct.TYPE_8__* %36)
  store %struct.net* %37, %struct.net** %10, align 8
  %38 = load %struct.icmphdr*, %struct.icmphdr** %6, align 8
  %39 = getelementptr inbounds %struct.icmphdr, %struct.icmphdr* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = load %struct.icmphdr*, %struct.icmphdr** %6, align 8
  %42 = getelementptr inbounds %struct.icmphdr, %struct.icmphdr* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  %44 = call i32 @ping_supported(i32 %40, i32 %43)
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %47, label %46

46:                                               ; preds = %2
  br label %169

47:                                               ; preds = %2
  %48 = load i32, i32* %8, align 4
  %49 = load i32, i32* %9, align 4
  %50 = load %struct.icmphdr*, %struct.icmphdr** %6, align 8
  %51 = getelementptr inbounds %struct.icmphdr, %struct.icmphdr* %50, i32 0, i32 2
  %52 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = call i32 @ntohs(i32 %54)
  %56 = load %struct.icmphdr*, %struct.icmphdr** %6, align 8
  %57 = getelementptr inbounds %struct.icmphdr, %struct.icmphdr* %56, i32 0, i32 2
  %58 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %57, i32 0, i32 0
  %59 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 4
  %61 = call i32 @ntohs(i32 %60)
  %62 = call i32 (i8*, ...) @pr_debug(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str, i64 0, i64 0), i32 %48, i32 %49, i32 %55, i32 %61)
  %63 = load %struct.net*, %struct.net** %10, align 8
  %64 = load %struct.iphdr*, %struct.iphdr** %5, align 8
  %65 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %64, i32 0, i32 2
  %66 = load i32, i32* %65, align 4
  %67 = load %struct.iphdr*, %struct.iphdr** %5, align 8
  %68 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %67, i32 0, i32 1
  %69 = load i32, i32* %68, align 4
  %70 = load %struct.icmphdr*, %struct.icmphdr** %6, align 8
  %71 = getelementptr inbounds %struct.icmphdr, %struct.icmphdr* %70, i32 0, i32 2
  %72 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %71, i32 0, i32 0
  %73 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 4
  %75 = call i32 @ntohs(i32 %74)
  %76 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %77 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %76, i32 0, i32 0
  %78 = load %struct.TYPE_8__*, %struct.TYPE_8__** %77, align 8
  %79 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 4
  %81 = call %struct.sock* @ping_v4_lookup(%struct.net* %63, i32 %66, i32 %69, i32 %75, i32 %80)
  store %struct.sock* %81, %struct.sock** %11, align 8
  %82 = load %struct.sock*, %struct.sock** %11, align 8
  %83 = icmp eq %struct.sock* %82, null
  br i1 %83, label %84, label %86

84:                                               ; preds = %47
  %85 = call i32 (i8*, ...) @pr_debug(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0))
  br label %169

86:                                               ; preds = %47
  %87 = load %struct.sock*, %struct.sock** %11, align 8
  %88 = call i32 (i8*, ...) @pr_debug(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i64 0, i64 0), %struct.sock* %87)
  store i32 0, i32* %13, align 4
  store i32 0, i32* %12, align 4
  %89 = load %struct.sock*, %struct.sock** %11, align 8
  %90 = call %struct.inet_sock* @inet_sk(%struct.sock* %89)
  store %struct.inet_sock* %90, %struct.inet_sock** %7, align 8
  %91 = load i32, i32* %8, align 4
  switch i32 %91, label %92 [
    i32 128, label %93
    i32 129, label %95
    i32 131, label %97
    i32 132, label %99
    i32 130, label %131
  ]

92:                                               ; preds = %86
  br label %93

93:                                               ; preds = %86, %92
  %94 = load i32, i32* @EHOSTUNREACH, align 4
  store i32 %94, i32* %13, align 4
  br label %133

95:                                               ; preds = %86
  %96 = load i32, i32* @EREMOTEIO, align 4
  store i32 %96, i32* %13, align 4
  br label %133

97:                                               ; preds = %86
  %98 = load i32, i32* @EPROTO, align 4
  store i32 %98, i32* %13, align 4
  store i32 1, i32* %12, align 4
  br label %133

99:                                               ; preds = %86
  %100 = load i32, i32* %9, align 4
  %101 = load i32, i32* @ICMP_FRAG_NEEDED, align 4
  %102 = icmp eq i32 %100, %101
  br i1 %102, label %103, label %112

103:                                              ; preds = %99
  %104 = load %struct.inet_sock*, %struct.inet_sock** %7, align 8
  %105 = getelementptr inbounds %struct.inet_sock, %struct.inet_sock* %104, i32 0, i32 1
  %106 = load i32, i32* %105, align 4
  %107 = load i32, i32* @IP_PMTUDISC_DONT, align 4
  %108 = icmp ne i32 %106, %107
  br i1 %108, label %109, label %111

109:                                              ; preds = %103
  %110 = load i32, i32* @EMSGSIZE, align 4
  store i32 %110, i32* %13, align 4
  store i32 1, i32* %12, align 4
  br label %133

111:                                              ; preds = %103
  br label %166

112:                                              ; preds = %99
  %113 = load i32, i32* @EHOSTUNREACH, align 4
  store i32 %113, i32* %13, align 4
  %114 = load i32, i32* %9, align 4
  %115 = load i32, i32* @NR_ICMP_UNREACH, align 4
  %116 = icmp sle i32 %114, %115
  br i1 %116, label %117, label %130

117:                                              ; preds = %112
  %118 = load %struct.TYPE_7__*, %struct.TYPE_7__** @icmp_err_convert, align 8
  %119 = load i32, i32* %9, align 4
  %120 = sext i32 %119 to i64
  %121 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %118, i64 %120
  %122 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %121, i32 0, i32 0
  %123 = load i32, i32* %122, align 4
  store i32 %123, i32* %12, align 4
  %124 = load %struct.TYPE_7__*, %struct.TYPE_7__** @icmp_err_convert, align 8
  %125 = load i32, i32* %9, align 4
  %126 = sext i32 %125 to i64
  %127 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %124, i64 %126
  %128 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %127, i32 0, i32 1
  %129 = load i32, i32* %128, align 4
  store i32 %129, i32* %13, align 4
  br label %130

130:                                              ; preds = %117, %112
  br label %133

131:                                              ; preds = %86
  %132 = load i32, i32* @EREMOTEIO, align 4
  store i32 %132, i32* %13, align 4
  br label %133

133:                                              ; preds = %131, %130, %109, %97, %95, %93
  %134 = load %struct.inet_sock*, %struct.inet_sock** %7, align 8
  %135 = getelementptr inbounds %struct.inet_sock, %struct.inet_sock* %134, i32 0, i32 0
  %136 = load i32, i32* %135, align 4
  %137 = icmp ne i32 %136, 0
  br i1 %137, label %149, label %138

138:                                              ; preds = %133
  %139 = load i32, i32* %12, align 4
  %140 = icmp ne i32 %139, 0
  br i1 %140, label %141, label %147

141:                                              ; preds = %138
  %142 = load %struct.sock*, %struct.sock** %11, align 8
  %143 = getelementptr inbounds %struct.sock, %struct.sock* %142, i32 0, i32 0
  %144 = load i64, i64* %143, align 8
  %145 = load i64, i64* @TCP_ESTABLISHED, align 8
  %146 = icmp ne i64 %144, %145
  br i1 %146, label %147, label %148

147:                                              ; preds = %141, %138
  br label %166

148:                                              ; preds = %141
  br label %157

149:                                              ; preds = %133
  %150 = load %struct.sock*, %struct.sock** %11, align 8
  %151 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %152 = load i32, i32* %13, align 4
  %153 = load i32, i32* %4, align 4
  %154 = load %struct.icmphdr*, %struct.icmphdr** %6, align 8
  %155 = bitcast %struct.icmphdr* %154 to i32*
  %156 = call i32 @ip_icmp_error(%struct.sock* %150, %struct.sk_buff* %151, i32 %152, i32 0, i32 %153, i32* %155)
  br label %157

157:                                              ; preds = %149, %148
  %158 = load i32, i32* %13, align 4
  %159 = load %struct.sock*, %struct.sock** %11, align 8
  %160 = getelementptr inbounds %struct.sock, %struct.sock* %159, i32 0, i32 1
  store i32 %158, i32* %160, align 8
  %161 = load %struct.sock*, %struct.sock** %11, align 8
  %162 = getelementptr inbounds %struct.sock, %struct.sock* %161, i32 0, i32 2
  %163 = load i32 (%struct.sock*)*, i32 (%struct.sock*)** %162, align 8
  %164 = load %struct.sock*, %struct.sock** %11, align 8
  %165 = call i32 %163(%struct.sock* %164)
  br label %166

166:                                              ; preds = %157, %147, %111
  %167 = load %struct.sock*, %struct.sock** %11, align 8
  %168 = call i32 @sock_put(%struct.sock* %167)
  br label %169

169:                                              ; preds = %166, %84, %46
  ret void
}

declare dso_local %struct.net* @dev_net(%struct.TYPE_8__*) #1

declare dso_local i32 @ping_supported(i32, i32) #1

declare dso_local i32 @pr_debug(i8*, ...) #1

declare dso_local i32 @ntohs(i32) #1

declare dso_local %struct.sock* @ping_v4_lookup(%struct.net*, i32, i32, i32, i32) #1

declare dso_local %struct.inet_sock* @inet_sk(%struct.sock*) #1

declare dso_local i32 @ip_icmp_error(%struct.sock*, %struct.sk_buff*, i32, i32, i32, i32*) #1

declare dso_local i32 @sock_put(%struct.sock*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

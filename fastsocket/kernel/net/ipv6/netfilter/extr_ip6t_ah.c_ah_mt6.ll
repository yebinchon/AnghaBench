; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/ipv6/netfilter/extr_ip6t_ah.c_ah_mt6.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/ipv6/netfilter/extr_ip6t_ah.c_ah_mt6.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.xt_match_param = type { i32*, %struct.ip6t_ah* }
%struct.ip6t_ah = type { i32, i32, i32, i32* }
%struct.ip_auth_hdr = type { i32, i32, i32 }

@NEXTHDR_AUTH = common dso_local global i32 0, align 4
@ENOENT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [19 x i8] c"IPv6 AH LEN %u %u \00", align 1
@.str.1 = private unnamed_addr constant [10 x i8] c"RES %04X \00", align 1
@.str.2 = private unnamed_addr constant [13 x i8] c"SPI %u %08X\0A\00", align 1
@.str.3 = private unnamed_addr constant [18 x i8] c"IPv6 AH spi %02X \00", align 1
@IP6T_AH_INV_SPI = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [20 x i8] c"len %02X %04X %02X \00", align 1
@IP6T_AH_INV_LEN = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [20 x i8] c"res %02X %04X %02X\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*, %struct.xt_match_param*)* @ah_mt6 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ah_mt6(%struct.sk_buff* %0, %struct.xt_match_param* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca %struct.xt_match_param*, align 8
  %6 = alloca %struct.ip_auth_hdr, align 4
  %7 = alloca %struct.ip_auth_hdr*, align 8
  %8 = alloca %struct.ip6t_ah*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.sk_buff* %0, %struct.sk_buff** %4, align 8
  store %struct.xt_match_param* %1, %struct.xt_match_param** %5, align 8
  %12 = load %struct.xt_match_param*, %struct.xt_match_param** %5, align 8
  %13 = getelementptr inbounds %struct.xt_match_param, %struct.xt_match_param* %12, i32 0, i32 1
  %14 = load %struct.ip6t_ah*, %struct.ip6t_ah** %13, align 8
  store %struct.ip6t_ah* %14, %struct.ip6t_ah** %8, align 8
  store i32 0, i32* %9, align 4
  store i32 0, i32* %10, align 4
  %15 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %16 = load i32, i32* @NEXTHDR_AUTH, align 4
  %17 = call i32 @ipv6_find_hdr(%struct.sk_buff* %15, i32* %9, i32 %16, i32* null, i32* null)
  store i32 %17, i32* %11, align 4
  %18 = load i32, i32* %11, align 4
  %19 = icmp slt i32 %18, 0
  br i1 %19, label %20, label %30

20:                                               ; preds = %2
  %21 = load i32, i32* %11, align 4
  %22 = load i32, i32* @ENOENT, align 4
  %23 = sub nsw i32 0, %22
  %24 = icmp ne i32 %21, %23
  br i1 %24, label %25, label %29

25:                                               ; preds = %20
  %26 = load %struct.xt_match_param*, %struct.xt_match_param** %5, align 8
  %27 = getelementptr inbounds %struct.xt_match_param, %struct.xt_match_param* %26, i32 0, i32 0
  %28 = load i32*, i32** %27, align 8
  store i32 1, i32* %28, align 4
  br label %29

29:                                               ; preds = %25, %20
  store i32 0, i32* %3, align 4
  br label %206

30:                                               ; preds = %2
  %31 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %32 = load i32, i32* %9, align 4
  %33 = call %struct.ip_auth_hdr* @skb_header_pointer(%struct.sk_buff* %31, i32 %32, i32 12, %struct.ip_auth_hdr* %6)
  store %struct.ip_auth_hdr* %33, %struct.ip_auth_hdr** %7, align 8
  %34 = load %struct.ip_auth_hdr*, %struct.ip_auth_hdr** %7, align 8
  %35 = icmp eq %struct.ip_auth_hdr* %34, null
  br i1 %35, label %36, label %40

36:                                               ; preds = %30
  %37 = load %struct.xt_match_param*, %struct.xt_match_param** %5, align 8
  %38 = getelementptr inbounds %struct.xt_match_param, %struct.xt_match_param* %37, i32 0, i32 0
  %39 = load i32*, i32** %38, align 8
  store i32 1, i32* %39, align 4
  store i32 0, i32* %3, align 4
  br label %206

40:                                               ; preds = %30
  %41 = load %struct.ip_auth_hdr*, %struct.ip_auth_hdr** %7, align 8
  %42 = getelementptr inbounds %struct.ip_auth_hdr, %struct.ip_auth_hdr* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = add nsw i32 %43, 2
  %45 = shl i32 %44, 2
  store i32 %45, i32* %10, align 4
  %46 = load i32, i32* %10, align 4
  %47 = load %struct.ip_auth_hdr*, %struct.ip_auth_hdr** %7, align 8
  %48 = getelementptr inbounds %struct.ip_auth_hdr, %struct.ip_auth_hdr* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = call i32 (i8*, i32, ...) @pr_debug(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 %46, i32 %49)
  %51 = load %struct.ip_auth_hdr*, %struct.ip_auth_hdr** %7, align 8
  %52 = getelementptr inbounds %struct.ip_auth_hdr, %struct.ip_auth_hdr* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 4
  %54 = call i32 (i8*, i32, ...) @pr_debug(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0), i32 %53)
  %55 = load %struct.ip_auth_hdr*, %struct.ip_auth_hdr** %7, align 8
  %56 = getelementptr inbounds %struct.ip_auth_hdr, %struct.ip_auth_hdr* %55, i32 0, i32 2
  %57 = load i32, i32* %56, align 4
  %58 = call i32 @ntohl(i32 %57)
  %59 = load %struct.ip_auth_hdr*, %struct.ip_auth_hdr** %7, align 8
  %60 = getelementptr inbounds %struct.ip_auth_hdr, %struct.ip_auth_hdr* %59, i32 0, i32 2
  %61 = load i32, i32* %60, align 4
  %62 = call i32 @ntohl(i32 %61)
  %63 = call i32 (i8*, i32, ...) @pr_debug(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0), i32 %58, i32 %62)
  %64 = load %struct.ip6t_ah*, %struct.ip6t_ah** %8, align 8
  %65 = getelementptr inbounds %struct.ip6t_ah, %struct.ip6t_ah* %64, i32 0, i32 3
  %66 = load i32*, i32** %65, align 8
  %67 = getelementptr inbounds i32, i32* %66, i64 0
  %68 = load i32, i32* %67, align 4
  %69 = load %struct.ip6t_ah*, %struct.ip6t_ah** %8, align 8
  %70 = getelementptr inbounds %struct.ip6t_ah, %struct.ip6t_ah* %69, i32 0, i32 3
  %71 = load i32*, i32** %70, align 8
  %72 = getelementptr inbounds i32, i32* %71, i64 1
  %73 = load i32, i32* %72, align 4
  %74 = load %struct.ip_auth_hdr*, %struct.ip_auth_hdr** %7, align 8
  %75 = getelementptr inbounds %struct.ip_auth_hdr, %struct.ip_auth_hdr* %74, i32 0, i32 2
  %76 = load i32, i32* %75, align 4
  %77 = call i32 @ntohl(i32 %76)
  %78 = load %struct.ip6t_ah*, %struct.ip6t_ah** %8, align 8
  %79 = getelementptr inbounds %struct.ip6t_ah, %struct.ip6t_ah* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 8
  %81 = load i32, i32* @IP6T_AH_INV_SPI, align 4
  %82 = and i32 %80, %81
  %83 = icmp ne i32 %82, 0
  %84 = xor i1 %83, true
  %85 = xor i1 %84, true
  %86 = zext i1 %85 to i32
  %87 = call i32 @spi_match(i32 %68, i32 %73, i32 %77, i32 %86)
  %88 = call i32 (i8*, i32, ...) @pr_debug(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.3, i64 0, i64 0), i32 %87)
  %89 = load %struct.ip6t_ah*, %struct.ip6t_ah** %8, align 8
  %90 = getelementptr inbounds %struct.ip6t_ah, %struct.ip6t_ah* %89, i32 0, i32 1
  %91 = load i32, i32* %90, align 4
  %92 = load i32, i32* %10, align 4
  %93 = load %struct.ip6t_ah*, %struct.ip6t_ah** %8, align 8
  %94 = getelementptr inbounds %struct.ip6t_ah, %struct.ip6t_ah* %93, i32 0, i32 1
  %95 = load i32, i32* %94, align 4
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %97, label %115

97:                                               ; preds = %40
  %98 = load %struct.ip6t_ah*, %struct.ip6t_ah** %8, align 8
  %99 = getelementptr inbounds %struct.ip6t_ah, %struct.ip6t_ah* %98, i32 0, i32 1
  %100 = load i32, i32* %99, align 4
  %101 = load i32, i32* %10, align 4
  %102 = icmp eq i32 %100, %101
  %103 = zext i1 %102 to i32
  %104 = load %struct.ip6t_ah*, %struct.ip6t_ah** %8, align 8
  %105 = getelementptr inbounds %struct.ip6t_ah, %struct.ip6t_ah* %104, i32 0, i32 0
  %106 = load i32, i32* %105, align 8
  %107 = load i32, i32* @IP6T_AH_INV_LEN, align 4
  %108 = and i32 %106, %107
  %109 = icmp ne i32 %108, 0
  %110 = xor i1 %109, true
  %111 = xor i1 %110, true
  %112 = zext i1 %111 to i32
  %113 = xor i32 %103, %112
  %114 = icmp ne i32 %113, 0
  br label %115

115:                                              ; preds = %97, %40
  %116 = phi i1 [ true, %40 ], [ %114, %97 ]
  %117 = zext i1 %116 to i32
  %118 = call i32 (i8*, i32, ...) @pr_debug(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.4, i64 0, i64 0), i32 %91, i32 %92, i32 %117)
  %119 = load %struct.ip6t_ah*, %struct.ip6t_ah** %8, align 8
  %120 = getelementptr inbounds %struct.ip6t_ah, %struct.ip6t_ah* %119, i32 0, i32 2
  %121 = load i32, i32* %120, align 8
  %122 = load %struct.ip_auth_hdr*, %struct.ip_auth_hdr** %7, align 8
  %123 = getelementptr inbounds %struct.ip_auth_hdr, %struct.ip_auth_hdr* %122, i32 0, i32 1
  %124 = load i32, i32* %123, align 4
  %125 = load %struct.ip6t_ah*, %struct.ip6t_ah** %8, align 8
  %126 = getelementptr inbounds %struct.ip6t_ah, %struct.ip6t_ah* %125, i32 0, i32 2
  %127 = load i32, i32* %126, align 8
  %128 = icmp ne i32 %127, 0
  br i1 %128, label %129, label %134

129:                                              ; preds = %115
  %130 = load %struct.ip_auth_hdr*, %struct.ip_auth_hdr** %7, align 8
  %131 = getelementptr inbounds %struct.ip_auth_hdr, %struct.ip_auth_hdr* %130, i32 0, i32 1
  %132 = load i32, i32* %131, align 4
  %133 = icmp ne i32 %132, 0
  br label %134

134:                                              ; preds = %129, %115
  %135 = phi i1 [ false, %115 ], [ %133, %129 ]
  %136 = xor i1 %135, true
  %137 = zext i1 %136 to i32
  %138 = call i32 (i8*, i32, ...) @pr_debug(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.5, i64 0, i64 0), i32 %121, i32 %124, i32 %137)
  %139 = load %struct.ip_auth_hdr*, %struct.ip_auth_hdr** %7, align 8
  %140 = icmp ne %struct.ip_auth_hdr* %139, null
  br i1 %140, label %141, label %203

141:                                              ; preds = %134
  %142 = load %struct.ip6t_ah*, %struct.ip6t_ah** %8, align 8
  %143 = getelementptr inbounds %struct.ip6t_ah, %struct.ip6t_ah* %142, i32 0, i32 3
  %144 = load i32*, i32** %143, align 8
  %145 = getelementptr inbounds i32, i32* %144, i64 0
  %146 = load i32, i32* %145, align 4
  %147 = load %struct.ip6t_ah*, %struct.ip6t_ah** %8, align 8
  %148 = getelementptr inbounds %struct.ip6t_ah, %struct.ip6t_ah* %147, i32 0, i32 3
  %149 = load i32*, i32** %148, align 8
  %150 = getelementptr inbounds i32, i32* %149, i64 1
  %151 = load i32, i32* %150, align 4
  %152 = load %struct.ip_auth_hdr*, %struct.ip_auth_hdr** %7, align 8
  %153 = getelementptr inbounds %struct.ip_auth_hdr, %struct.ip_auth_hdr* %152, i32 0, i32 2
  %154 = load i32, i32* %153, align 4
  %155 = call i32 @ntohl(i32 %154)
  %156 = load %struct.ip6t_ah*, %struct.ip6t_ah** %8, align 8
  %157 = getelementptr inbounds %struct.ip6t_ah, %struct.ip6t_ah* %156, i32 0, i32 0
  %158 = load i32, i32* %157, align 8
  %159 = load i32, i32* @IP6T_AH_INV_SPI, align 4
  %160 = and i32 %158, %159
  %161 = icmp ne i32 %160, 0
  %162 = xor i1 %161, true
  %163 = xor i1 %162, true
  %164 = zext i1 %163 to i32
  %165 = call i32 @spi_match(i32 %146, i32 %151, i32 %155, i32 %164)
  %166 = icmp ne i32 %165, 0
  br i1 %166, label %167, label %203

167:                                              ; preds = %141
  %168 = load %struct.ip6t_ah*, %struct.ip6t_ah** %8, align 8
  %169 = getelementptr inbounds %struct.ip6t_ah, %struct.ip6t_ah* %168, i32 0, i32 1
  %170 = load i32, i32* %169, align 4
  %171 = icmp ne i32 %170, 0
  br i1 %171, label %172, label %190

172:                                              ; preds = %167
  %173 = load %struct.ip6t_ah*, %struct.ip6t_ah** %8, align 8
  %174 = getelementptr inbounds %struct.ip6t_ah, %struct.ip6t_ah* %173, i32 0, i32 1
  %175 = load i32, i32* %174, align 4
  %176 = load i32, i32* %10, align 4
  %177 = icmp eq i32 %175, %176
  %178 = zext i1 %177 to i32
  %179 = load %struct.ip6t_ah*, %struct.ip6t_ah** %8, align 8
  %180 = getelementptr inbounds %struct.ip6t_ah, %struct.ip6t_ah* %179, i32 0, i32 0
  %181 = load i32, i32* %180, align 8
  %182 = load i32, i32* @IP6T_AH_INV_LEN, align 4
  %183 = and i32 %181, %182
  %184 = icmp ne i32 %183, 0
  %185 = xor i1 %184, true
  %186 = xor i1 %185, true
  %187 = zext i1 %186 to i32
  %188 = xor i32 %178, %187
  %189 = icmp ne i32 %188, 0
  br i1 %189, label %190, label %203

190:                                              ; preds = %172, %167
  %191 = load %struct.ip6t_ah*, %struct.ip6t_ah** %8, align 8
  %192 = getelementptr inbounds %struct.ip6t_ah, %struct.ip6t_ah* %191, i32 0, i32 2
  %193 = load i32, i32* %192, align 8
  %194 = icmp ne i32 %193, 0
  br i1 %194, label %195, label %200

195:                                              ; preds = %190
  %196 = load %struct.ip_auth_hdr*, %struct.ip_auth_hdr** %7, align 8
  %197 = getelementptr inbounds %struct.ip_auth_hdr, %struct.ip_auth_hdr* %196, i32 0, i32 1
  %198 = load i32, i32* %197, align 4
  %199 = icmp ne i32 %198, 0
  br label %200

200:                                              ; preds = %195, %190
  %201 = phi i1 [ false, %190 ], [ %199, %195 ]
  %202 = xor i1 %201, true
  br label %203

203:                                              ; preds = %200, %172, %141, %134
  %204 = phi i1 [ false, %172 ], [ false, %141 ], [ false, %134 ], [ %202, %200 ]
  %205 = zext i1 %204 to i32
  store i32 %205, i32* %3, align 4
  br label %206

206:                                              ; preds = %203, %36, %29
  %207 = load i32, i32* %3, align 4
  ret i32 %207
}

declare dso_local i32 @ipv6_find_hdr(%struct.sk_buff*, i32*, i32, i32*, i32*) #1

declare dso_local %struct.ip_auth_hdr* @skb_header_pointer(%struct.sk_buff*, i32, i32, %struct.ip_auth_hdr*) #1

declare dso_local i32 @pr_debug(i8*, i32, ...) #1

declare dso_local i32 @ntohl(i32) #1

declare dso_local i32 @spi_match(i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

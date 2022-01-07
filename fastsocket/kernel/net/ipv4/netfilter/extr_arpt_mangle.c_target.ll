; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/ipv4/netfilter/extr_arpt_mangle.c_target.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/ipv4/netfilter/extr_arpt_mangle.c_target.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.xt_target_param = type { %struct.arpt_mangle* }
%struct.arpt_mangle = type { i32, i32, %struct.TYPE_4__, i32*, %struct.TYPE_3__, i32* }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i32 }
%struct.arphdr = type { i32, i32 }

@NF_DROP = common dso_local global i32 0, align 4
@ARPT_MANGLE_SDEV = common dso_local global i32 0, align 4
@ARPT_DEV_ADDR_LEN_MAX = common dso_local global i32 0, align 4
@ARPT_MANGLE_SIP = common dso_local global i32 0, align 4
@ARPT_MANGLE_ADDR_LEN_MAX = common dso_local global i32 0, align 4
@ARPT_MANGLE_TDEV = common dso_local global i32 0, align 4
@ARPT_MANGLE_TIP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*, %struct.xt_target_param*)* @target to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @target(%struct.sk_buff* %0, %struct.xt_target_param* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca %struct.xt_target_param*, align 8
  %6 = alloca %struct.arpt_mangle*, align 8
  %7 = alloca %struct.arphdr*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.sk_buff* %0, %struct.sk_buff** %4, align 8
  store %struct.xt_target_param* %1, %struct.xt_target_param** %5, align 8
  %11 = load %struct.xt_target_param*, %struct.xt_target_param** %5, align 8
  %12 = getelementptr inbounds %struct.xt_target_param, %struct.xt_target_param* %11, i32 0, i32 0
  %13 = load %struct.arpt_mangle*, %struct.arpt_mangle** %12, align 8
  store %struct.arpt_mangle* %13, %struct.arpt_mangle** %6, align 8
  %14 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %15 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %16 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = call i32 @skb_make_writable(%struct.sk_buff* %14, i32 %17)
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %22, label %20

20:                                               ; preds = %2
  %21 = load i32, i32* @NF_DROP, align 4
  store i32 %21, i32* %3, align 4
  br label %161

22:                                               ; preds = %2
  %23 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %24 = call %struct.arphdr* @arp_hdr(%struct.sk_buff* %23)
  store %struct.arphdr* %24, %struct.arphdr** %7, align 8
  %25 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %26 = call i8* @skb_network_header(%struct.sk_buff* %25)
  %27 = getelementptr inbounds i8, i8* %26, i64 8
  store i8* %27, i8** %8, align 8
  %28 = load %struct.arphdr*, %struct.arphdr** %7, align 8
  %29 = getelementptr inbounds %struct.arphdr, %struct.arphdr* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  store i32 %30, i32* %9, align 4
  %31 = load %struct.arphdr*, %struct.arphdr** %7, align 8
  %32 = getelementptr inbounds %struct.arphdr, %struct.arphdr* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  store i32 %33, i32* %10, align 4
  %34 = load %struct.arpt_mangle*, %struct.arpt_mangle** %6, align 8
  %35 = getelementptr inbounds %struct.arpt_mangle, %struct.arpt_mangle* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = load i32, i32* @ARPT_MANGLE_SDEV, align 4
  %38 = and i32 %36, %37
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %61

40:                                               ; preds = %22
  %41 = load i32, i32* @ARPT_DEV_ADDR_LEN_MAX, align 4
  %42 = load i32, i32* %10, align 4
  %43 = icmp slt i32 %41, %42
  br i1 %43, label %52, label %44

44:                                               ; preds = %40
  %45 = load i8*, i8** %8, align 8
  %46 = load i32, i32* %10, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds i8, i8* %45, i64 %47
  %49 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %50 = call i8* @skb_tail_pointer(%struct.sk_buff* %49)
  %51 = icmp ugt i8* %48, %50
  br i1 %51, label %52, label %54

52:                                               ; preds = %44, %40
  %53 = load i32, i32* @NF_DROP, align 4
  store i32 %53, i32* %3, align 4
  br label %161

54:                                               ; preds = %44
  %55 = load i8*, i8** %8, align 8
  %56 = load %struct.arpt_mangle*, %struct.arpt_mangle** %6, align 8
  %57 = getelementptr inbounds %struct.arpt_mangle, %struct.arpt_mangle* %56, i32 0, i32 5
  %58 = load i32*, i32** %57, align 8
  %59 = load i32, i32* %10, align 4
  %60 = call i32 @memcpy(i8* %55, i32* %58, i32 %59)
  br label %61

61:                                               ; preds = %54, %22
  %62 = load i32, i32* %10, align 4
  %63 = load i8*, i8** %8, align 8
  %64 = sext i32 %62 to i64
  %65 = getelementptr inbounds i8, i8* %63, i64 %64
  store i8* %65, i8** %8, align 8
  %66 = load %struct.arpt_mangle*, %struct.arpt_mangle** %6, align 8
  %67 = getelementptr inbounds %struct.arpt_mangle, %struct.arpt_mangle* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 8
  %69 = load i32, i32* @ARPT_MANGLE_SIP, align 4
  %70 = and i32 %68, %69
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %93

72:                                               ; preds = %61
  %73 = load i32, i32* @ARPT_MANGLE_ADDR_LEN_MAX, align 4
  %74 = load i32, i32* %9, align 4
  %75 = icmp slt i32 %73, %74
  br i1 %75, label %84, label %76

76:                                               ; preds = %72
  %77 = load i8*, i8** %8, align 8
  %78 = load i32, i32* %9, align 4
  %79 = sext i32 %78 to i64
  %80 = getelementptr inbounds i8, i8* %77, i64 %79
  %81 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %82 = call i8* @skb_tail_pointer(%struct.sk_buff* %81)
  %83 = icmp ugt i8* %80, %82
  br i1 %83, label %84, label %86

84:                                               ; preds = %76, %72
  %85 = load i32, i32* @NF_DROP, align 4
  store i32 %85, i32* %3, align 4
  br label %161

86:                                               ; preds = %76
  %87 = load i8*, i8** %8, align 8
  %88 = load %struct.arpt_mangle*, %struct.arpt_mangle** %6, align 8
  %89 = getelementptr inbounds %struct.arpt_mangle, %struct.arpt_mangle* %88, i32 0, i32 4
  %90 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %89, i32 0, i32 0
  %91 = load i32, i32* %9, align 4
  %92 = call i32 @memcpy(i8* %87, i32* %90, i32 %91)
  br label %93

93:                                               ; preds = %86, %61
  %94 = load i32, i32* %9, align 4
  %95 = load i8*, i8** %8, align 8
  %96 = sext i32 %94 to i64
  %97 = getelementptr inbounds i8, i8* %95, i64 %96
  store i8* %97, i8** %8, align 8
  %98 = load %struct.arpt_mangle*, %struct.arpt_mangle** %6, align 8
  %99 = getelementptr inbounds %struct.arpt_mangle, %struct.arpt_mangle* %98, i32 0, i32 0
  %100 = load i32, i32* %99, align 8
  %101 = load i32, i32* @ARPT_MANGLE_TDEV, align 4
  %102 = and i32 %100, %101
  %103 = icmp ne i32 %102, 0
  br i1 %103, label %104, label %125

104:                                              ; preds = %93
  %105 = load i32, i32* @ARPT_DEV_ADDR_LEN_MAX, align 4
  %106 = load i32, i32* %10, align 4
  %107 = icmp slt i32 %105, %106
  br i1 %107, label %116, label %108

108:                                              ; preds = %104
  %109 = load i8*, i8** %8, align 8
  %110 = load i32, i32* %10, align 4
  %111 = sext i32 %110 to i64
  %112 = getelementptr inbounds i8, i8* %109, i64 %111
  %113 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %114 = call i8* @skb_tail_pointer(%struct.sk_buff* %113)
  %115 = icmp ugt i8* %112, %114
  br i1 %115, label %116, label %118

116:                                              ; preds = %108, %104
  %117 = load i32, i32* @NF_DROP, align 4
  store i32 %117, i32* %3, align 4
  br label %161

118:                                              ; preds = %108
  %119 = load i8*, i8** %8, align 8
  %120 = load %struct.arpt_mangle*, %struct.arpt_mangle** %6, align 8
  %121 = getelementptr inbounds %struct.arpt_mangle, %struct.arpt_mangle* %120, i32 0, i32 3
  %122 = load i32*, i32** %121, align 8
  %123 = load i32, i32* %10, align 4
  %124 = call i32 @memcpy(i8* %119, i32* %122, i32 %123)
  br label %125

125:                                              ; preds = %118, %93
  %126 = load i32, i32* %10, align 4
  %127 = load i8*, i8** %8, align 8
  %128 = sext i32 %126 to i64
  %129 = getelementptr inbounds i8, i8* %127, i64 %128
  store i8* %129, i8** %8, align 8
  %130 = load %struct.arpt_mangle*, %struct.arpt_mangle** %6, align 8
  %131 = getelementptr inbounds %struct.arpt_mangle, %struct.arpt_mangle* %130, i32 0, i32 0
  %132 = load i32, i32* %131, align 8
  %133 = load i32, i32* @ARPT_MANGLE_TIP, align 4
  %134 = and i32 %132, %133
  %135 = icmp ne i32 %134, 0
  br i1 %135, label %136, label %157

136:                                              ; preds = %125
  %137 = load i32, i32* @ARPT_MANGLE_ADDR_LEN_MAX, align 4
  %138 = load i32, i32* %9, align 4
  %139 = icmp slt i32 %137, %138
  br i1 %139, label %148, label %140

140:                                              ; preds = %136
  %141 = load i8*, i8** %8, align 8
  %142 = load i32, i32* %9, align 4
  %143 = sext i32 %142 to i64
  %144 = getelementptr inbounds i8, i8* %141, i64 %143
  %145 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %146 = call i8* @skb_tail_pointer(%struct.sk_buff* %145)
  %147 = icmp ugt i8* %144, %146
  br i1 %147, label %148, label %150

148:                                              ; preds = %140, %136
  %149 = load i32, i32* @NF_DROP, align 4
  store i32 %149, i32* %3, align 4
  br label %161

150:                                              ; preds = %140
  %151 = load i8*, i8** %8, align 8
  %152 = load %struct.arpt_mangle*, %struct.arpt_mangle** %6, align 8
  %153 = getelementptr inbounds %struct.arpt_mangle, %struct.arpt_mangle* %152, i32 0, i32 2
  %154 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %153, i32 0, i32 0
  %155 = load i32, i32* %9, align 4
  %156 = call i32 @memcpy(i8* %151, i32* %154, i32 %155)
  br label %157

157:                                              ; preds = %150, %125
  %158 = load %struct.arpt_mangle*, %struct.arpt_mangle** %6, align 8
  %159 = getelementptr inbounds %struct.arpt_mangle, %struct.arpt_mangle* %158, i32 0, i32 1
  %160 = load i32, i32* %159, align 4
  store i32 %160, i32* %3, align 4
  br label %161

161:                                              ; preds = %157, %148, %116, %84, %52, %20
  %162 = load i32, i32* %3, align 4
  ret i32 %162
}

declare dso_local i32 @skb_make_writable(%struct.sk_buff*, i32) #1

declare dso_local %struct.arphdr* @arp_hdr(%struct.sk_buff*) #1

declare dso_local i8* @skb_network_header(%struct.sk_buff*) #1

declare dso_local i8* @skb_tail_pointer(%struct.sk_buff*) #1

declare dso_local i32 @memcpy(i8*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

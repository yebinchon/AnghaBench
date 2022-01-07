; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/ipv4/extr_ipmr.c___ipmr_fill_mroute.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/ipv4/extr_ipmr.c___ipmr_fill_mroute.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mr_table = type { %struct.TYPE_8__* }
%struct.TYPE_8__ = type { %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i32 }
%struct.sk_buff = type { i32 }
%struct.mfc_cache = type { i32, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32, i32, i32* }
%struct.rtmsg = type { i32 }
%struct.rtnexthop = type { i32, i32, i32, i64 }
%struct.rtattr = type { i32, i32 }

@MAXVIFS = common dso_local global i32 0, align 4
@ENOENT = common dso_local global i32 0, align 4
@RTA_IIF = common dso_local global i32 0, align 4
@RTA_MULTIPATH = common dso_local global i32 0, align 4
@RTN_MULTICAST = common dso_local global i32 0, align 4
@EMSGSIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mr_table*, %struct.sk_buff*, %struct.mfc_cache*, %struct.rtmsg*)* @__ipmr_fill_mroute to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__ipmr_fill_mroute(%struct.mr_table* %0, %struct.sk_buff* %1, %struct.mfc_cache* %2, %struct.rtmsg* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.mr_table*, align 8
  %7 = alloca %struct.sk_buff*, align 8
  %8 = alloca %struct.mfc_cache*, align 8
  %9 = alloca %struct.rtmsg*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.rtnexthop*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca %struct.rtattr*, align 8
  store %struct.mr_table* %0, %struct.mr_table** %6, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %7, align 8
  store %struct.mfc_cache* %2, %struct.mfc_cache** %8, align 8
  store %struct.rtmsg* %3, %struct.rtmsg** %9, align 8
  %14 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %15 = call i32* @skb_tail_pointer(%struct.sk_buff* %14)
  store i32* %15, i32** %12, align 8
  %16 = load %struct.mfc_cache*, %struct.mfc_cache** %8, align 8
  %17 = getelementptr inbounds %struct.mfc_cache, %struct.mfc_cache* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = load i32, i32* @MAXVIFS, align 4
  %20 = icmp sge i32 %18, %19
  br i1 %20, label %21, label %24

21:                                               ; preds = %4
  %22 = load i32, i32* @ENOENT, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %5, align 4
  br label %148

24:                                               ; preds = %4
  %25 = load %struct.mr_table*, %struct.mr_table** %6, align 8
  %26 = load %struct.mfc_cache*, %struct.mfc_cache** %8, align 8
  %27 = getelementptr inbounds %struct.mfc_cache, %struct.mfc_cache* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = call i64 @VIF_EXISTS(%struct.mr_table* %25, i32 %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %46

31:                                               ; preds = %24
  %32 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %33 = load i32, i32* @RTA_IIF, align 4
  %34 = load %struct.mr_table*, %struct.mr_table** %6, align 8
  %35 = getelementptr inbounds %struct.mr_table, %struct.mr_table* %34, i32 0, i32 0
  %36 = load %struct.TYPE_8__*, %struct.TYPE_8__** %35, align 8
  %37 = load %struct.mfc_cache*, %struct.mfc_cache** %8, align 8
  %38 = getelementptr inbounds %struct.mfc_cache, %struct.mfc_cache* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %36, i64 %40
  %42 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %41, i32 0, i32 0
  %43 = load %struct.TYPE_7__*, %struct.TYPE_7__** %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %43, i32 0, i32 0
  %45 = call i32 @RTA_PUT(%struct.sk_buff* %32, i32 %33, i32 4, i32* %44)
  br label %46

46:                                               ; preds = %31, %24
  %47 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %48 = call i32 @RTA_LENGTH(i32 0)
  %49 = call i64 @skb_put(%struct.sk_buff* %47, i32 %48)
  %50 = inttoptr i64 %49 to %struct.rtattr*
  store %struct.rtattr* %50, %struct.rtattr** %13, align 8
  %51 = load %struct.mfc_cache*, %struct.mfc_cache** %8, align 8
  %52 = getelementptr inbounds %struct.mfc_cache, %struct.mfc_cache* %51, i32 0, i32 1
  %53 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %52, i32 0, i32 0
  %54 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 8
  store i32 %55, i32* %10, align 4
  br label %56

56:                                               ; preds = %121, %46
  %57 = load i32, i32* %10, align 4
  %58 = load %struct.mfc_cache*, %struct.mfc_cache** %8, align 8
  %59 = getelementptr inbounds %struct.mfc_cache, %struct.mfc_cache* %58, i32 0, i32 1
  %60 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %59, i32 0, i32 0
  %61 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %60, i32 0, i32 1
  %62 = load i32, i32* %61, align 4
  %63 = icmp slt i32 %57, %62
  br i1 %63, label %64, label %124

64:                                               ; preds = %56
  %65 = load %struct.mr_table*, %struct.mr_table** %6, align 8
  %66 = load i32, i32* %10, align 4
  %67 = call i64 @VIF_EXISTS(%struct.mr_table* %65, i32 %66)
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %69, label %120

69:                                               ; preds = %64
  %70 = load %struct.mfc_cache*, %struct.mfc_cache** %8, align 8
  %71 = getelementptr inbounds %struct.mfc_cache, %struct.mfc_cache* %70, i32 0, i32 1
  %72 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %71, i32 0, i32 0
  %73 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %72, i32 0, i32 2
  %74 = load i32*, i32** %73, align 8
  %75 = load i32, i32* %10, align 4
  %76 = sext i32 %75 to i64
  %77 = getelementptr inbounds i32, i32* %74, i64 %76
  %78 = load i32, i32* %77, align 4
  %79 = icmp slt i32 %78, 255
  br i1 %79, label %80, label %120

80:                                               ; preds = %69
  %81 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %82 = call i32 @skb_tailroom(%struct.sk_buff* %81)
  %83 = call i32 @RTA_ALIGN(i32 24)
  %84 = add nsw i32 %83, 4
  %85 = call i32 @RTA_ALIGN(i32 %84)
  %86 = icmp slt i32 %82, %85
  br i1 %86, label %87, label %88

87:                                               ; preds = %80
  br label %142

88:                                               ; preds = %80
  %89 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %90 = call i32 @RTA_ALIGN(i32 24)
  %91 = call i64 @skb_put(%struct.sk_buff* %89, i32 %90)
  %92 = inttoptr i64 %91 to %struct.rtnexthop*
  store %struct.rtnexthop* %92, %struct.rtnexthop** %11, align 8
  %93 = load %struct.rtnexthop*, %struct.rtnexthop** %11, align 8
  %94 = getelementptr inbounds %struct.rtnexthop, %struct.rtnexthop* %93, i32 0, i32 3
  store i64 0, i64* %94, align 8
  %95 = load %struct.mfc_cache*, %struct.mfc_cache** %8, align 8
  %96 = getelementptr inbounds %struct.mfc_cache, %struct.mfc_cache* %95, i32 0, i32 1
  %97 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %96, i32 0, i32 0
  %98 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %97, i32 0, i32 2
  %99 = load i32*, i32** %98, align 8
  %100 = load i32, i32* %10, align 4
  %101 = sext i32 %100 to i64
  %102 = getelementptr inbounds i32, i32* %99, i64 %101
  %103 = load i32, i32* %102, align 4
  %104 = load %struct.rtnexthop*, %struct.rtnexthop** %11, align 8
  %105 = getelementptr inbounds %struct.rtnexthop, %struct.rtnexthop* %104, i32 0, i32 0
  store i32 %103, i32* %105, align 8
  %106 = load %struct.mr_table*, %struct.mr_table** %6, align 8
  %107 = getelementptr inbounds %struct.mr_table, %struct.mr_table* %106, i32 0, i32 0
  %108 = load %struct.TYPE_8__*, %struct.TYPE_8__** %107, align 8
  %109 = load i32, i32* %10, align 4
  %110 = sext i32 %109 to i64
  %111 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %108, i64 %110
  %112 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %111, i32 0, i32 0
  %113 = load %struct.TYPE_7__*, %struct.TYPE_7__** %112, align 8
  %114 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %113, i32 0, i32 0
  %115 = load i32, i32* %114, align 4
  %116 = load %struct.rtnexthop*, %struct.rtnexthop** %11, align 8
  %117 = getelementptr inbounds %struct.rtnexthop, %struct.rtnexthop* %116, i32 0, i32 2
  store i32 %115, i32* %117, align 8
  %118 = load %struct.rtnexthop*, %struct.rtnexthop** %11, align 8
  %119 = getelementptr inbounds %struct.rtnexthop, %struct.rtnexthop* %118, i32 0, i32 1
  store i32 24, i32* %119, align 4
  br label %120

120:                                              ; preds = %88, %69, %64
  br label %121

121:                                              ; preds = %120
  %122 = load i32, i32* %10, align 4
  %123 = add nsw i32 %122, 1
  store i32 %123, i32* %10, align 4
  br label %56

124:                                              ; preds = %56
  %125 = load i32, i32* @RTA_MULTIPATH, align 4
  %126 = load %struct.rtattr*, %struct.rtattr** %13, align 8
  %127 = getelementptr inbounds %struct.rtattr, %struct.rtattr* %126, i32 0, i32 1
  store i32 %125, i32* %127, align 4
  %128 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %129 = call i32* @skb_tail_pointer(%struct.sk_buff* %128)
  %130 = load %struct.rtattr*, %struct.rtattr** %13, align 8
  %131 = bitcast %struct.rtattr* %130 to i32*
  %132 = ptrtoint i32* %129 to i64
  %133 = ptrtoint i32* %131 to i64
  %134 = sub i64 %132, %133
  %135 = sdiv exact i64 %134, 4
  %136 = trunc i64 %135 to i32
  %137 = load %struct.rtattr*, %struct.rtattr** %13, align 8
  %138 = getelementptr inbounds %struct.rtattr, %struct.rtattr* %137, i32 0, i32 0
  store i32 %136, i32* %138, align 4
  %139 = load i32, i32* @RTN_MULTICAST, align 4
  %140 = load %struct.rtmsg*, %struct.rtmsg** %9, align 8
  %141 = getelementptr inbounds %struct.rtmsg, %struct.rtmsg* %140, i32 0, i32 0
  store i32 %139, i32* %141, align 4
  store i32 1, i32* %5, align 4
  br label %148

142:                                              ; preds = %87
  %143 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %144 = load i32*, i32** %12, align 8
  %145 = call i32 @nlmsg_trim(%struct.sk_buff* %143, i32* %144)
  %146 = load i32, i32* @EMSGSIZE, align 4
  %147 = sub nsw i32 0, %146
  store i32 %147, i32* %5, align 4
  br label %148

148:                                              ; preds = %142, %124, %21
  %149 = load i32, i32* %5, align 4
  ret i32 %149
}

declare dso_local i32* @skb_tail_pointer(%struct.sk_buff*) #1

declare dso_local i64 @VIF_EXISTS(%struct.mr_table*, i32) #1

declare dso_local i32 @RTA_PUT(%struct.sk_buff*, i32, i32, i32*) #1

declare dso_local i64 @skb_put(%struct.sk_buff*, i32) #1

declare dso_local i32 @RTA_LENGTH(i32) #1

declare dso_local i32 @skb_tailroom(%struct.sk_buff*) #1

declare dso_local i32 @RTA_ALIGN(i32) #1

declare dso_local i32 @nlmsg_trim(%struct.sk_buff*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

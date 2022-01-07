; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/sched/extr_cls_fw.c_fw_dump.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/sched/extr_cls_fw.c_fw_dump.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tcf_proto = type { i64 }
%struct.sk_buff = type { i32 }
%struct.tcmsg = type { i32 }
%struct.fw_head = type { i32 }
%struct.fw_filter = type { i32, i32, %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32 }
%struct.nlattr = type { i32 }

@TCA_OPTIONS = common dso_local global i32 0, align 4
@TCA_FW_CLASSID = common dso_local global i32 0, align 4
@TCA_FW_MASK = common dso_local global i32 0, align 4
@fw_ext_map = common dso_local global i32 0, align 4
@TCA_FW_INDEV = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.tcf_proto*, i64, %struct.sk_buff*, %struct.tcmsg*)* @fw_dump to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fw_dump(%struct.tcf_proto* %0, i64 %1, %struct.sk_buff* %2, %struct.tcmsg* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.tcf_proto*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.sk_buff*, align 8
  %9 = alloca %struct.tcmsg*, align 8
  %10 = alloca %struct.fw_head*, align 8
  %11 = alloca %struct.fw_filter*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca %struct.nlattr*, align 8
  store %struct.tcf_proto* %0, %struct.tcf_proto** %6, align 8
  store i64 %1, i64* %7, align 8
  store %struct.sk_buff* %2, %struct.sk_buff** %8, align 8
  store %struct.tcmsg* %3, %struct.tcmsg** %9, align 8
  %14 = load %struct.tcf_proto*, %struct.tcf_proto** %6, align 8
  %15 = getelementptr inbounds %struct.tcf_proto, %struct.tcf_proto* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = inttoptr i64 %16 to %struct.fw_head*
  store %struct.fw_head* %17, %struct.fw_head** %10, align 8
  %18 = load i64, i64* %7, align 8
  %19 = inttoptr i64 %18 to %struct.fw_filter*
  store %struct.fw_filter* %19, %struct.fw_filter** %11, align 8
  %20 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %21 = call i8* @skb_tail_pointer(%struct.sk_buff* %20)
  store i8* %21, i8** %12, align 8
  %22 = load %struct.fw_filter*, %struct.fw_filter** %11, align 8
  %23 = icmp eq %struct.fw_filter* %22, null
  br i1 %23, label %24, label %28

24:                                               ; preds = %4
  %25 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %26 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  store i32 %27, i32* %5, align 4
  br label %106

28:                                               ; preds = %4
  %29 = load %struct.fw_filter*, %struct.fw_filter** %11, align 8
  %30 = getelementptr inbounds %struct.fw_filter, %struct.fw_filter* %29, i32 0, i32 3
  %31 = load i32, i32* %30, align 4
  %32 = load %struct.tcmsg*, %struct.tcmsg** %9, align 8
  %33 = getelementptr inbounds %struct.tcmsg, %struct.tcmsg* %32, i32 0, i32 0
  store i32 %31, i32* %33, align 4
  %34 = load %struct.fw_filter*, %struct.fw_filter** %11, align 8
  %35 = getelementptr inbounds %struct.fw_filter, %struct.fw_filter* %34, i32 0, i32 2
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %48, label %39

39:                                               ; preds = %28
  %40 = load %struct.fw_filter*, %struct.fw_filter** %11, align 8
  %41 = getelementptr inbounds %struct.fw_filter, %struct.fw_filter* %40, i32 0, i32 0
  %42 = call i32 @tcf_exts_is_available(i32* %41)
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %48, label %44

44:                                               ; preds = %39
  %45 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %46 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  store i32 %47, i32* %5, align 4
  br label %106

48:                                               ; preds = %39, %28
  %49 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %50 = load i32, i32* @TCA_OPTIONS, align 4
  %51 = call %struct.nlattr* @nla_nest_start(%struct.sk_buff* %49, i32 %50)
  store %struct.nlattr* %51, %struct.nlattr** %13, align 8
  %52 = load %struct.nlattr*, %struct.nlattr** %13, align 8
  %53 = icmp eq %struct.nlattr* %52, null
  br i1 %53, label %54, label %55

54:                                               ; preds = %48
  br label %102

55:                                               ; preds = %48
  %56 = load %struct.fw_filter*, %struct.fw_filter** %11, align 8
  %57 = getelementptr inbounds %struct.fw_filter, %struct.fw_filter* %56, i32 0, i32 2
  %58 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %69

61:                                               ; preds = %55
  %62 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %63 = load i32, i32* @TCA_FW_CLASSID, align 4
  %64 = load %struct.fw_filter*, %struct.fw_filter** %11, align 8
  %65 = getelementptr inbounds %struct.fw_filter, %struct.fw_filter* %64, i32 0, i32 2
  %66 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  %68 = call i32 @NLA_PUT_U32(%struct.sk_buff* %62, i32 %63, i32 %67)
  br label %69

69:                                               ; preds = %61, %55
  %70 = load %struct.fw_head*, %struct.fw_head** %10, align 8
  %71 = getelementptr inbounds %struct.fw_head, %struct.fw_head* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 4
  %73 = icmp ne i32 %72, -1
  br i1 %73, label %74, label %81

74:                                               ; preds = %69
  %75 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %76 = load i32, i32* @TCA_FW_MASK, align 4
  %77 = load %struct.fw_head*, %struct.fw_head** %10, align 8
  %78 = getelementptr inbounds %struct.fw_head, %struct.fw_head* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 4
  %80 = call i32 @NLA_PUT_U32(%struct.sk_buff* %75, i32 %76, i32 %79)
  br label %81

81:                                               ; preds = %74, %69
  %82 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %83 = load %struct.fw_filter*, %struct.fw_filter** %11, align 8
  %84 = getelementptr inbounds %struct.fw_filter, %struct.fw_filter* %83, i32 0, i32 0
  %85 = call i64 @tcf_exts_dump(%struct.sk_buff* %82, i32* %84, i32* @fw_ext_map)
  %86 = icmp slt i64 %85, 0
  br i1 %86, label %87, label %88

87:                                               ; preds = %81
  br label %102

88:                                               ; preds = %81
  %89 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %90 = load %struct.nlattr*, %struct.nlattr** %13, align 8
  %91 = call i32 @nla_nest_end(%struct.sk_buff* %89, %struct.nlattr* %90)
  %92 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %93 = load %struct.fw_filter*, %struct.fw_filter** %11, align 8
  %94 = getelementptr inbounds %struct.fw_filter, %struct.fw_filter* %93, i32 0, i32 0
  %95 = call i64 @tcf_exts_dump_stats(%struct.sk_buff* %92, i32* %94, i32* @fw_ext_map)
  %96 = icmp slt i64 %95, 0
  br i1 %96, label %97, label %98

97:                                               ; preds = %88
  br label %102

98:                                               ; preds = %88
  %99 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %100 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %99, i32 0, i32 0
  %101 = load i32, i32* %100, align 4
  store i32 %101, i32* %5, align 4
  br label %106

102:                                              ; preds = %97, %87, %54
  %103 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %104 = load i8*, i8** %12, align 8
  %105 = call i32 @nlmsg_trim(%struct.sk_buff* %103, i8* %104)
  store i32 -1, i32* %5, align 4
  br label %106

106:                                              ; preds = %102, %98, %44, %24
  %107 = load i32, i32* %5, align 4
  ret i32 %107
}

declare dso_local i8* @skb_tail_pointer(%struct.sk_buff*) #1

declare dso_local i32 @tcf_exts_is_available(i32*) #1

declare dso_local %struct.nlattr* @nla_nest_start(%struct.sk_buff*, i32) #1

declare dso_local i32 @NLA_PUT_U32(%struct.sk_buff*, i32, i32) #1

declare dso_local i64 @tcf_exts_dump(%struct.sk_buff*, i32*, i32*) #1

declare dso_local i32 @nla_nest_end(%struct.sk_buff*, %struct.nlattr*) #1

declare dso_local i64 @tcf_exts_dump_stats(%struct.sk_buff*, i32*, i32*) #1

declare dso_local i32 @nlmsg_trim(%struct.sk_buff*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

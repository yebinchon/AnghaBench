; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/sched/extr_cls_u32.c_u32_dump.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/sched/extr_cls_u32.c_u32_dump.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tcf_proto = type { i32 }
%struct.sk_buff = type { i32 }
%struct.tcmsg = type { i32 }
%struct.tc_u_knode = type { i32, i32, %struct.TYPE_6__*, %struct.TYPE_6__, i32, %struct.TYPE_6__, %struct.TYPE_5__*, %struct.TYPE_4__, i64 }
%struct.TYPE_6__ = type { i32, i64, i64 }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_4__ = type { i32 }
%struct.nlattr = type { i32 }
%struct.tc_u_hnode = type { i32 }

@TCA_OPTIONS = common dso_local global i32 0, align 4
@TCA_U32_DIVISOR = common dso_local global i32 0, align 4
@TCA_U32_SEL = common dso_local global i32 0, align 4
@TCA_U32_HASH = common dso_local global i32 0, align 4
@TCA_U32_CLASSID = common dso_local global i32 0, align 4
@TCA_U32_LINK = common dso_local global i32 0, align 4
@u32_ext_map = common dso_local global i32 0, align 4
@TCA_U32_INDEV = common dso_local global i32 0, align 4
@TCA_U32_MARK = common dso_local global i32 0, align 4
@TCA_U32_PCNT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.tcf_proto*, i64, %struct.sk_buff*, %struct.tcmsg*)* @u32_dump to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @u32_dump(%struct.tcf_proto* %0, i64 %1, %struct.sk_buff* %2, %struct.tcmsg* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.tcf_proto*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.sk_buff*, align 8
  %9 = alloca %struct.tcmsg*, align 8
  %10 = alloca %struct.tc_u_knode*, align 8
  %11 = alloca %struct.nlattr*, align 8
  %12 = alloca %struct.tc_u_hnode*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.tcf_proto* %0, %struct.tcf_proto** %6, align 8
  store i64 %1, i64* %7, align 8
  store %struct.sk_buff* %2, %struct.sk_buff** %8, align 8
  store %struct.tcmsg* %3, %struct.tcmsg** %9, align 8
  %15 = load i64, i64* %7, align 8
  %16 = inttoptr i64 %15 to %struct.tc_u_knode*
  store %struct.tc_u_knode* %16, %struct.tc_u_knode** %10, align 8
  %17 = load %struct.tc_u_knode*, %struct.tc_u_knode** %10, align 8
  %18 = icmp eq %struct.tc_u_knode* %17, null
  br i1 %18, label %19, label %23

19:                                               ; preds = %4
  %20 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %21 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  store i32 %22, i32* %5, align 4
  br label %140

23:                                               ; preds = %4
  %24 = load %struct.tc_u_knode*, %struct.tc_u_knode** %10, align 8
  %25 = getelementptr inbounds %struct.tc_u_knode, %struct.tc_u_knode* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = load %struct.tcmsg*, %struct.tcmsg** %9, align 8
  %28 = getelementptr inbounds %struct.tcmsg, %struct.tcmsg* %27, i32 0, i32 0
  store i32 %26, i32* %28, align 4
  %29 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %30 = load i32, i32* @TCA_OPTIONS, align 4
  %31 = call %struct.nlattr* @nla_nest_start(%struct.sk_buff* %29, i32 %30)
  store %struct.nlattr* %31, %struct.nlattr** %11, align 8
  %32 = load %struct.nlattr*, %struct.nlattr** %11, align 8
  %33 = icmp eq %struct.nlattr* %32, null
  br i1 %33, label %34, label %35

34:                                               ; preds = %23
  br label %136

35:                                               ; preds = %23
  %36 = load %struct.tc_u_knode*, %struct.tc_u_knode** %10, align 8
  %37 = getelementptr inbounds %struct.tc_u_knode, %struct.tc_u_knode* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = call i64 @TC_U32_KEY(i32 %38)
  %40 = icmp eq i64 %39, 0
  br i1 %40, label %41, label %52

41:                                               ; preds = %35
  %42 = load i64, i64* %7, align 8
  %43 = inttoptr i64 %42 to %struct.tc_u_hnode*
  store %struct.tc_u_hnode* %43, %struct.tc_u_hnode** %12, align 8
  %44 = load %struct.tc_u_hnode*, %struct.tc_u_hnode** %12, align 8
  %45 = getelementptr inbounds %struct.tc_u_hnode, %struct.tc_u_hnode* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = add nsw i32 %46, 1
  store i32 %47, i32* %13, align 4
  %48 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %49 = load i32, i32* @TCA_U32_DIVISOR, align 4
  %50 = load i32, i32* %13, align 4
  %51 = call i32 @NLA_PUT_U32(%struct.sk_buff* %48, i32 %49, i32 %50)
  br label %115

52:                                               ; preds = %35
  %53 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %54 = load i32, i32* @TCA_U32_SEL, align 4
  %55 = load %struct.tc_u_knode*, %struct.tc_u_knode** %10, align 8
  %56 = getelementptr inbounds %struct.tc_u_knode, %struct.tc_u_knode* %55, i32 0, i32 3
  %57 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 8
  %59 = sext i32 %58 to i64
  %60 = mul i64 %59, 4
  %61 = add i64 24, %60
  %62 = trunc i64 %61 to i32
  %63 = load %struct.tc_u_knode*, %struct.tc_u_knode** %10, align 8
  %64 = getelementptr inbounds %struct.tc_u_knode, %struct.tc_u_knode* %63, i32 0, i32 3
  %65 = call i32 @NLA_PUT(%struct.sk_buff* %53, i32 %54, i32 %62, %struct.TYPE_6__* %64)
  %66 = load %struct.tc_u_knode*, %struct.tc_u_knode** %10, align 8
  %67 = getelementptr inbounds %struct.tc_u_knode, %struct.tc_u_knode* %66, i32 0, i32 8
  %68 = load i64, i64* %67, align 8
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %70, label %79

70:                                               ; preds = %52
  %71 = load %struct.tc_u_knode*, %struct.tc_u_knode** %10, align 8
  %72 = getelementptr inbounds %struct.tc_u_knode, %struct.tc_u_knode* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 8
  %74 = and i32 %73, -4096
  store i32 %74, i32* %14, align 4
  %75 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %76 = load i32, i32* @TCA_U32_HASH, align 4
  %77 = load i32, i32* %14, align 4
  %78 = call i32 @NLA_PUT_U32(%struct.sk_buff* %75, i32 %76, i32 %77)
  br label %79

79:                                               ; preds = %70, %52
  %80 = load %struct.tc_u_knode*, %struct.tc_u_knode** %10, align 8
  %81 = getelementptr inbounds %struct.tc_u_knode, %struct.tc_u_knode* %80, i32 0, i32 7
  %82 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 8
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %85, label %93

85:                                               ; preds = %79
  %86 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %87 = load i32, i32* @TCA_U32_CLASSID, align 4
  %88 = load %struct.tc_u_knode*, %struct.tc_u_knode** %10, align 8
  %89 = getelementptr inbounds %struct.tc_u_knode, %struct.tc_u_knode* %88, i32 0, i32 7
  %90 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 8
  %92 = call i32 @NLA_PUT_U32(%struct.sk_buff* %86, i32 %87, i32 %91)
  br label %93

93:                                               ; preds = %85, %79
  %94 = load %struct.tc_u_knode*, %struct.tc_u_knode** %10, align 8
  %95 = getelementptr inbounds %struct.tc_u_knode, %struct.tc_u_knode* %94, i32 0, i32 6
  %96 = load %struct.TYPE_5__*, %struct.TYPE_5__** %95, align 8
  %97 = icmp ne %struct.TYPE_5__* %96, null
  br i1 %97, label %98, label %107

98:                                               ; preds = %93
  %99 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %100 = load i32, i32* @TCA_U32_LINK, align 4
  %101 = load %struct.tc_u_knode*, %struct.tc_u_knode** %10, align 8
  %102 = getelementptr inbounds %struct.tc_u_knode, %struct.tc_u_knode* %101, i32 0, i32 6
  %103 = load %struct.TYPE_5__*, %struct.TYPE_5__** %102, align 8
  %104 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %103, i32 0, i32 0
  %105 = load i32, i32* %104, align 4
  %106 = call i32 @NLA_PUT_U32(%struct.sk_buff* %99, i32 %100, i32 %105)
  br label %107

107:                                              ; preds = %98, %93
  %108 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %109 = load %struct.tc_u_knode*, %struct.tc_u_knode** %10, align 8
  %110 = getelementptr inbounds %struct.tc_u_knode, %struct.tc_u_knode* %109, i32 0, i32 1
  %111 = call i64 @tcf_exts_dump(%struct.sk_buff* %108, i32* %110, i32* @u32_ext_map)
  %112 = icmp slt i64 %111, 0
  br i1 %112, label %113, label %114

113:                                              ; preds = %107
  br label %136

114:                                              ; preds = %107
  br label %115

115:                                              ; preds = %114, %41
  %116 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %117 = load %struct.nlattr*, %struct.nlattr** %11, align 8
  %118 = call i32 @nla_nest_end(%struct.sk_buff* %116, %struct.nlattr* %117)
  %119 = load %struct.tc_u_knode*, %struct.tc_u_knode** %10, align 8
  %120 = getelementptr inbounds %struct.tc_u_knode, %struct.tc_u_knode* %119, i32 0, i32 0
  %121 = load i32, i32* %120, align 8
  %122 = call i64 @TC_U32_KEY(i32 %121)
  %123 = icmp ne i64 %122, 0
  br i1 %123, label %124, label %132

124:                                              ; preds = %115
  %125 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %126 = load %struct.tc_u_knode*, %struct.tc_u_knode** %10, align 8
  %127 = getelementptr inbounds %struct.tc_u_knode, %struct.tc_u_knode* %126, i32 0, i32 1
  %128 = call i64 @tcf_exts_dump_stats(%struct.sk_buff* %125, i32* %127, i32* @u32_ext_map)
  %129 = icmp slt i64 %128, 0
  br i1 %129, label %130, label %131

130:                                              ; preds = %124
  br label %136

131:                                              ; preds = %124
  br label %132

132:                                              ; preds = %131, %115
  %133 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %134 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %133, i32 0, i32 0
  %135 = load i32, i32* %134, align 4
  store i32 %135, i32* %5, align 4
  br label %140

136:                                              ; preds = %130, %113, %34
  %137 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %138 = load %struct.nlattr*, %struct.nlattr** %11, align 8
  %139 = call i32 @nla_nest_cancel(%struct.sk_buff* %137, %struct.nlattr* %138)
  store i32 -1, i32* %5, align 4
  br label %140

140:                                              ; preds = %136, %132, %19
  %141 = load i32, i32* %5, align 4
  ret i32 %141
}

declare dso_local %struct.nlattr* @nla_nest_start(%struct.sk_buff*, i32) #1

declare dso_local i64 @TC_U32_KEY(i32) #1

declare dso_local i32 @NLA_PUT_U32(%struct.sk_buff*, i32, i32) #1

declare dso_local i32 @NLA_PUT(%struct.sk_buff*, i32, i32, %struct.TYPE_6__*) #1

declare dso_local i64 @tcf_exts_dump(%struct.sk_buff*, i32*, i32*) #1

declare dso_local i32 @nla_nest_end(%struct.sk_buff*, %struct.nlattr*) #1

declare dso_local i64 @tcf_exts_dump_stats(%struct.sk_buff*, i32*, i32*) #1

declare dso_local i32 @nla_nest_cancel(%struct.sk_buff*, %struct.nlattr*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

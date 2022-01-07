; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/sched/extr_cls_tcindex.c_tcindex_dump.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/sched/extr_cls_tcindex.c_tcindex_dump.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tcf_proto = type { i32 }
%struct.sk_buff = type { i32 }
%struct.tcmsg = type { i32 }
%struct.tcindex_data = type { i32, i32, i32, %struct.tcindex_filter**, %struct.tcindex_filter_result*, i32 }
%struct.tcindex_filter = type { i32, %struct.tcindex_filter_result, %struct.tcindex_filter* }
%struct.tcindex_filter_result = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i64 }
%struct.nlattr = type { i32 }

@.str = private unnamed_addr constant [57 x i8] c"tcindex_dump(tp %p,fh 0x%lx,skb %p,t %p),p %p,r %p,b %p\0A\00", align 1
@.str.1 = private unnamed_addr constant [23 x i8] c"p->perfect %p p->h %p\0A\00", align 1
@TCA_OPTIONS = common dso_local global i32 0, align 4
@TCA_TCINDEX_HASH = common dso_local global i32 0, align 4
@TCA_TCINDEX_MASK = common dso_local global i32 0, align 4
@TCA_TCINDEX_SHIFT = common dso_local global i32 0, align 4
@TCA_TCINDEX_FALL_THROUGH = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [13 x i8] c"handle = %d\0A\00", align 1
@TCA_TCINDEX_CLASSID = common dso_local global i32 0, align 4
@tcindex_ext_map = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.tcf_proto*, i64, %struct.sk_buff*, %struct.tcmsg*)* @tcindex_dump to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tcindex_dump(%struct.tcf_proto* %0, i64 %1, %struct.sk_buff* %2, %struct.tcmsg* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.tcf_proto*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.sk_buff*, align 8
  %9 = alloca %struct.tcmsg*, align 8
  %10 = alloca %struct.tcindex_data*, align 8
  %11 = alloca %struct.tcindex_filter_result*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca %struct.nlattr*, align 8
  %14 = alloca %struct.tcindex_filter*, align 8
  %15 = alloca i32, align 4
  store %struct.tcf_proto* %0, %struct.tcf_proto** %6, align 8
  store i64 %1, i64* %7, align 8
  store %struct.sk_buff* %2, %struct.sk_buff** %8, align 8
  store %struct.tcmsg* %3, %struct.tcmsg** %9, align 8
  %16 = load %struct.tcf_proto*, %struct.tcf_proto** %6, align 8
  %17 = call %struct.tcindex_data* @PRIV(%struct.tcf_proto* %16)
  store %struct.tcindex_data* %17, %struct.tcindex_data** %10, align 8
  %18 = load i64, i64* %7, align 8
  %19 = inttoptr i64 %18 to %struct.tcindex_filter_result*
  store %struct.tcindex_filter_result* %19, %struct.tcindex_filter_result** %11, align 8
  %20 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %21 = call i8* @skb_tail_pointer(%struct.sk_buff* %20)
  store i8* %21, i8** %12, align 8
  %22 = load %struct.tcf_proto*, %struct.tcf_proto** %6, align 8
  %23 = load i64, i64* %7, align 8
  %24 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %25 = load %struct.tcmsg*, %struct.tcmsg** %9, align 8
  %26 = load %struct.tcindex_data*, %struct.tcindex_data** %10, align 8
  %27 = load %struct.tcindex_filter_result*, %struct.tcindex_filter_result** %11, align 8
  %28 = load i8*, i8** %12, align 8
  %29 = call i32 (i8*, ...) @pr_debug(i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str, i64 0, i64 0), %struct.tcf_proto* %22, i64 %23, %struct.sk_buff* %24, %struct.tcmsg* %25, %struct.tcindex_data* %26, %struct.tcindex_filter_result* %27, i8* %28)
  %30 = load %struct.tcindex_data*, %struct.tcindex_data** %10, align 8
  %31 = getelementptr inbounds %struct.tcindex_data, %struct.tcindex_data* %30, i32 0, i32 4
  %32 = load %struct.tcindex_filter_result*, %struct.tcindex_filter_result** %31, align 8
  %33 = load %struct.tcindex_data*, %struct.tcindex_data** %10, align 8
  %34 = getelementptr inbounds %struct.tcindex_data, %struct.tcindex_data* %33, i32 0, i32 3
  %35 = load %struct.tcindex_filter**, %struct.tcindex_filter*** %34, align 8
  %36 = call i32 (i8*, ...) @pr_debug(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), %struct.tcindex_filter_result* %32, %struct.tcindex_filter** %35)
  %37 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %38 = load i32, i32* @TCA_OPTIONS, align 4
  %39 = call %struct.nlattr* @nla_nest_start(%struct.sk_buff* %37, i32 %38)
  store %struct.nlattr* %39, %struct.nlattr** %13, align 8
  %40 = load %struct.nlattr*, %struct.nlattr** %13, align 8
  %41 = icmp eq %struct.nlattr* %40, null
  br i1 %41, label %42, label %43

42:                                               ; preds = %4
  br label %188

43:                                               ; preds = %4
  %44 = load i64, i64* %7, align 8
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %76, label %46

46:                                               ; preds = %43
  %47 = load %struct.tcmsg*, %struct.tcmsg** %9, align 8
  %48 = getelementptr inbounds %struct.tcmsg, %struct.tcmsg* %47, i32 0, i32 0
  store i32 -1, i32* %48, align 4
  %49 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %50 = load i32, i32* @TCA_TCINDEX_HASH, align 4
  %51 = load %struct.tcindex_data*, %struct.tcindex_data** %10, align 8
  %52 = getelementptr inbounds %struct.tcindex_data, %struct.tcindex_data* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 8
  %54 = call i32 @NLA_PUT_U32(%struct.sk_buff* %49, i32 %50, i32 %53)
  %55 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %56 = load i32, i32* @TCA_TCINDEX_MASK, align 4
  %57 = load %struct.tcindex_data*, %struct.tcindex_data** %10, align 8
  %58 = getelementptr inbounds %struct.tcindex_data, %struct.tcindex_data* %57, i32 0, i32 5
  %59 = load i32, i32* %58, align 8
  %60 = call i32 @NLA_PUT_U16(%struct.sk_buff* %55, i32 %56, i32 %59)
  %61 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %62 = load i32, i32* @TCA_TCINDEX_SHIFT, align 4
  %63 = load %struct.tcindex_data*, %struct.tcindex_data** %10, align 8
  %64 = getelementptr inbounds %struct.tcindex_data, %struct.tcindex_data* %63, i32 0, i32 1
  %65 = load i32, i32* %64, align 4
  %66 = call i32 @NLA_PUT_U32(%struct.sk_buff* %61, i32 %62, i32 %65)
  %67 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %68 = load i32, i32* @TCA_TCINDEX_FALL_THROUGH, align 4
  %69 = load %struct.tcindex_data*, %struct.tcindex_data** %10, align 8
  %70 = getelementptr inbounds %struct.tcindex_data, %struct.tcindex_data* %69, i32 0, i32 2
  %71 = load i32, i32* %70, align 8
  %72 = call i32 @NLA_PUT_U32(%struct.sk_buff* %67, i32 %68, i32 %71)
  %73 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %74 = load %struct.nlattr*, %struct.nlattr** %13, align 8
  %75 = call i32 @nla_nest_end(%struct.sk_buff* %73, %struct.nlattr* %74)
  br label %184

76:                                               ; preds = %43
  %77 = load %struct.tcindex_data*, %struct.tcindex_data** %10, align 8
  %78 = getelementptr inbounds %struct.tcindex_data, %struct.tcindex_data* %77, i32 0, i32 4
  %79 = load %struct.tcindex_filter_result*, %struct.tcindex_filter_result** %78, align 8
  %80 = icmp ne %struct.tcindex_filter_result* %79, null
  br i1 %80, label %81, label %93

81:                                               ; preds = %76
  %82 = load %struct.tcindex_filter_result*, %struct.tcindex_filter_result** %11, align 8
  %83 = load %struct.tcindex_data*, %struct.tcindex_data** %10, align 8
  %84 = getelementptr inbounds %struct.tcindex_data, %struct.tcindex_data* %83, i32 0, i32 4
  %85 = load %struct.tcindex_filter_result*, %struct.tcindex_filter_result** %84, align 8
  %86 = ptrtoint %struct.tcindex_filter_result* %82 to i64
  %87 = ptrtoint %struct.tcindex_filter_result* %85 to i64
  %88 = sub i64 %86, %87
  %89 = sdiv exact i64 %88, 24
  %90 = trunc i64 %89 to i32
  %91 = load %struct.tcmsg*, %struct.tcmsg** %9, align 8
  %92 = getelementptr inbounds %struct.tcmsg, %struct.tcmsg* %91, i32 0, i32 0
  store i32 %90, i32* %92, align 4
  br label %148

93:                                               ; preds = %76
  %94 = load %struct.tcmsg*, %struct.tcmsg** %9, align 8
  %95 = getelementptr inbounds %struct.tcmsg, %struct.tcmsg* %94, i32 0, i32 0
  store i32 0, i32* %95, align 4
  store i32 0, i32* %15, align 4
  br label %96

96:                                               ; preds = %144, %93
  %97 = load %struct.tcmsg*, %struct.tcmsg** %9, align 8
  %98 = getelementptr inbounds %struct.tcmsg, %struct.tcmsg* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 4
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %107, label %101

101:                                              ; preds = %96
  %102 = load i32, i32* %15, align 4
  %103 = load %struct.tcindex_data*, %struct.tcindex_data** %10, align 8
  %104 = getelementptr inbounds %struct.tcindex_data, %struct.tcindex_data* %103, i32 0, i32 0
  %105 = load i32, i32* %104, align 8
  %106 = icmp slt i32 %102, %105
  br label %107

107:                                              ; preds = %101, %96
  %108 = phi i1 [ false, %96 ], [ %106, %101 ]
  br i1 %108, label %109, label %147

109:                                              ; preds = %107
  %110 = load %struct.tcindex_data*, %struct.tcindex_data** %10, align 8
  %111 = getelementptr inbounds %struct.tcindex_data, %struct.tcindex_data* %110, i32 0, i32 3
  %112 = load %struct.tcindex_filter**, %struct.tcindex_filter*** %111, align 8
  %113 = load i32, i32* %15, align 4
  %114 = sext i32 %113 to i64
  %115 = getelementptr inbounds %struct.tcindex_filter*, %struct.tcindex_filter** %112, i64 %114
  %116 = load %struct.tcindex_filter*, %struct.tcindex_filter** %115, align 8
  store %struct.tcindex_filter* %116, %struct.tcindex_filter** %14, align 8
  br label %117

117:                                              ; preds = %139, %109
  %118 = load %struct.tcmsg*, %struct.tcmsg** %9, align 8
  %119 = getelementptr inbounds %struct.tcmsg, %struct.tcmsg* %118, i32 0, i32 0
  %120 = load i32, i32* %119, align 4
  %121 = icmp ne i32 %120, 0
  br i1 %121, label %125, label %122

122:                                              ; preds = %117
  %123 = load %struct.tcindex_filter*, %struct.tcindex_filter** %14, align 8
  %124 = icmp ne %struct.tcindex_filter* %123, null
  br label %125

125:                                              ; preds = %122, %117
  %126 = phi i1 [ false, %117 ], [ %124, %122 ]
  br i1 %126, label %127, label %143

127:                                              ; preds = %125
  %128 = load %struct.tcindex_filter*, %struct.tcindex_filter** %14, align 8
  %129 = getelementptr inbounds %struct.tcindex_filter, %struct.tcindex_filter* %128, i32 0, i32 1
  %130 = load %struct.tcindex_filter_result*, %struct.tcindex_filter_result** %11, align 8
  %131 = icmp eq %struct.tcindex_filter_result* %129, %130
  br i1 %131, label %132, label %138

132:                                              ; preds = %127
  %133 = load %struct.tcindex_filter*, %struct.tcindex_filter** %14, align 8
  %134 = getelementptr inbounds %struct.tcindex_filter, %struct.tcindex_filter* %133, i32 0, i32 0
  %135 = load i32, i32* %134, align 8
  %136 = load %struct.tcmsg*, %struct.tcmsg** %9, align 8
  %137 = getelementptr inbounds %struct.tcmsg, %struct.tcmsg* %136, i32 0, i32 0
  store i32 %135, i32* %137, align 4
  br label %138

138:                                              ; preds = %132, %127
  br label %139

139:                                              ; preds = %138
  %140 = load %struct.tcindex_filter*, %struct.tcindex_filter** %14, align 8
  %141 = getelementptr inbounds %struct.tcindex_filter, %struct.tcindex_filter* %140, i32 0, i32 2
  %142 = load %struct.tcindex_filter*, %struct.tcindex_filter** %141, align 8
  store %struct.tcindex_filter* %142, %struct.tcindex_filter** %14, align 8
  br label %117

143:                                              ; preds = %125
  br label %144

144:                                              ; preds = %143
  %145 = load i32, i32* %15, align 4
  %146 = add nsw i32 %145, 1
  store i32 %146, i32* %15, align 4
  br label %96

147:                                              ; preds = %107
  br label %148

148:                                              ; preds = %147, %81
  %149 = load %struct.tcmsg*, %struct.tcmsg** %9, align 8
  %150 = getelementptr inbounds %struct.tcmsg, %struct.tcmsg* %149, i32 0, i32 0
  %151 = load i32, i32* %150, align 4
  %152 = call i32 (i8*, ...) @pr_debug(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0), i32 %151)
  %153 = load %struct.tcindex_filter_result*, %struct.tcindex_filter_result** %11, align 8
  %154 = getelementptr inbounds %struct.tcindex_filter_result, %struct.tcindex_filter_result* %153, i32 0, i32 1
  %155 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %154, i32 0, i32 1
  %156 = load i64, i64* %155, align 8
  %157 = icmp ne i64 %156, 0
  br i1 %157, label %158, label %166

158:                                              ; preds = %148
  %159 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %160 = load i32, i32* @TCA_TCINDEX_CLASSID, align 4
  %161 = load %struct.tcindex_filter_result*, %struct.tcindex_filter_result** %11, align 8
  %162 = getelementptr inbounds %struct.tcindex_filter_result, %struct.tcindex_filter_result* %161, i32 0, i32 1
  %163 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %162, i32 0, i32 0
  %164 = load i32, i32* %163, align 8
  %165 = call i32 @NLA_PUT_U32(%struct.sk_buff* %159, i32 %160, i32 %164)
  br label %166

166:                                              ; preds = %158, %148
  %167 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %168 = load %struct.tcindex_filter_result*, %struct.tcindex_filter_result** %11, align 8
  %169 = getelementptr inbounds %struct.tcindex_filter_result, %struct.tcindex_filter_result* %168, i32 0, i32 0
  %170 = call i64 @tcf_exts_dump(%struct.sk_buff* %167, i32* %169, i32* @tcindex_ext_map)
  %171 = icmp slt i64 %170, 0
  br i1 %171, label %172, label %173

172:                                              ; preds = %166
  br label %188

173:                                              ; preds = %166
  %174 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %175 = load %struct.nlattr*, %struct.nlattr** %13, align 8
  %176 = call i32 @nla_nest_end(%struct.sk_buff* %174, %struct.nlattr* %175)
  %177 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %178 = load %struct.tcindex_filter_result*, %struct.tcindex_filter_result** %11, align 8
  %179 = getelementptr inbounds %struct.tcindex_filter_result, %struct.tcindex_filter_result* %178, i32 0, i32 0
  %180 = call i64 @tcf_exts_dump_stats(%struct.sk_buff* %177, i32* %179, i32* @tcindex_ext_map)
  %181 = icmp slt i64 %180, 0
  br i1 %181, label %182, label %183

182:                                              ; preds = %173
  br label %188

183:                                              ; preds = %173
  br label %184

184:                                              ; preds = %183, %46
  %185 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %186 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %185, i32 0, i32 0
  %187 = load i32, i32* %186, align 4
  store i32 %187, i32* %5, align 4
  br label %192

188:                                              ; preds = %182, %172, %42
  %189 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %190 = load i8*, i8** %12, align 8
  %191 = call i32 @nlmsg_trim(%struct.sk_buff* %189, i8* %190)
  store i32 -1, i32* %5, align 4
  br label %192

192:                                              ; preds = %188, %184
  %193 = load i32, i32* %5, align 4
  ret i32 %193
}

declare dso_local %struct.tcindex_data* @PRIV(%struct.tcf_proto*) #1

declare dso_local i8* @skb_tail_pointer(%struct.sk_buff*) #1

declare dso_local i32 @pr_debug(i8*, ...) #1

declare dso_local %struct.nlattr* @nla_nest_start(%struct.sk_buff*, i32) #1

declare dso_local i32 @NLA_PUT_U32(%struct.sk_buff*, i32, i32) #1

declare dso_local i32 @NLA_PUT_U16(%struct.sk_buff*, i32, i32) #1

declare dso_local i32 @nla_nest_end(%struct.sk_buff*, %struct.nlattr*) #1

declare dso_local i64 @tcf_exts_dump(%struct.sk_buff*, i32*, i32*) #1

declare dso_local i64 @tcf_exts_dump_stats(%struct.sk_buff*, i32*, i32*) #1

declare dso_local i32 @nlmsg_trim(%struct.sk_buff*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

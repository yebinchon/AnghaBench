; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/core/extr_fib_rules.c_fib_nl_fill_rule.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/core/extr_fib_rules.c_fib_nl_fill_rule.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.fib_rule = type { i64, i32, i64, i64, i64, i64, i64*, i32*, i32, i64 }
%struct.fib_rules_ops = type { i64 (%struct.fib_rule.0*, %struct.sk_buff*, %struct.fib_rule_hdr*)*, i32 }
%struct.fib_rule.0 = type opaque
%struct.fib_rule_hdr = type opaque
%struct.nlmsghdr = type { i32 }
%struct.fib_rule_hdr.1 = type { i64, i32, i64, i64, i64, i32 }

@EMSGSIZE = common dso_local global i32 0, align 4
@FRA_TABLE = common dso_local global i32 0, align 4
@FR_ACT_GOTO = common dso_local global i64 0, align 8
@FIB_RULE_UNRESOLVED = common dso_local global i32 0, align 4
@FRA_IFNAME = common dso_local global i32 0, align 4
@FIB_RULE_DEV_DETACHED = common dso_local global i32 0, align 4
@FRA_PRIORITY = common dso_local global i32 0, align 4
@FRA_FWMARK = common dso_local global i32 0, align 4
@FRA_FWMASK = common dso_local global i32 0, align 4
@FRA_GOTO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*, %struct.fib_rule*, i32, i32, i32, i32, %struct.fib_rules_ops*)* @fib_nl_fill_rule to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fib_nl_fill_rule(%struct.sk_buff* %0, %struct.fib_rule* %1, i32 %2, i32 %3, i32 %4, i32 %5, %struct.fib_rules_ops* %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca %struct.sk_buff*, align 8
  %10 = alloca %struct.fib_rule*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca %struct.fib_rules_ops*, align 8
  %16 = alloca %struct.nlmsghdr*, align 8
  %17 = alloca %struct.fib_rule_hdr.1*, align 8
  store %struct.sk_buff* %0, %struct.sk_buff** %9, align 8
  store %struct.fib_rule* %1, %struct.fib_rule** %10, align 8
  store i32 %2, i32* %11, align 4
  store i32 %3, i32* %12, align 4
  store i32 %4, i32* %13, align 4
  store i32 %5, i32* %14, align 4
  store %struct.fib_rules_ops* %6, %struct.fib_rules_ops** %15, align 8
  %18 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %19 = load i32, i32* %11, align 4
  %20 = load i32, i32* %12, align 4
  %21 = load i32, i32* %13, align 4
  %22 = load i32, i32* %14, align 4
  %23 = call %struct.nlmsghdr* @nlmsg_put(%struct.sk_buff* %18, i32 %19, i32 %20, i32 %21, i32 48, i32 %22)
  store %struct.nlmsghdr* %23, %struct.nlmsghdr** %16, align 8
  %24 = load %struct.nlmsghdr*, %struct.nlmsghdr** %16, align 8
  %25 = icmp eq %struct.nlmsghdr* %24, null
  br i1 %25, label %26, label %29

26:                                               ; preds = %7
  %27 = load i32, i32* @EMSGSIZE, align 4
  %28 = sub nsw i32 0, %27
  store i32 %28, i32* %8, align 4
  br label %178

29:                                               ; preds = %7
  %30 = load %struct.nlmsghdr*, %struct.nlmsghdr** %16, align 8
  %31 = call %struct.fib_rule_hdr.1* @nlmsg_data(%struct.nlmsghdr* %30)
  store %struct.fib_rule_hdr.1* %31, %struct.fib_rule_hdr.1** %17, align 8
  %32 = load %struct.fib_rules_ops*, %struct.fib_rules_ops** %15, align 8
  %33 = getelementptr inbounds %struct.fib_rules_ops, %struct.fib_rules_ops* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 8
  %35 = load %struct.fib_rule_hdr.1*, %struct.fib_rule_hdr.1** %17, align 8
  %36 = getelementptr inbounds %struct.fib_rule_hdr.1, %struct.fib_rule_hdr.1* %35, i32 0, i32 5
  store i32 %34, i32* %36, align 8
  %37 = load %struct.fib_rule*, %struct.fib_rule** %10, align 8
  %38 = getelementptr inbounds %struct.fib_rule, %struct.fib_rule* %37, i32 0, i32 9
  %39 = load i64, i64* %38, align 8
  %40 = load %struct.fib_rule_hdr.1*, %struct.fib_rule_hdr.1** %17, align 8
  %41 = getelementptr inbounds %struct.fib_rule_hdr.1, %struct.fib_rule_hdr.1* %40, i32 0, i32 4
  store i64 %39, i64* %41, align 8
  %42 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %43 = load i32, i32* @FRA_TABLE, align 4
  %44 = load %struct.fib_rule*, %struct.fib_rule** %10, align 8
  %45 = getelementptr inbounds %struct.fib_rule, %struct.fib_rule* %44, i32 0, i32 9
  %46 = load i64, i64* %45, align 8
  %47 = call i32 @NLA_PUT_U32(%struct.sk_buff* %42, i32 %43, i64 %46)
  %48 = load %struct.fib_rule_hdr.1*, %struct.fib_rule_hdr.1** %17, align 8
  %49 = getelementptr inbounds %struct.fib_rule_hdr.1, %struct.fib_rule_hdr.1* %48, i32 0, i32 3
  store i64 0, i64* %49, align 8
  %50 = load %struct.fib_rule_hdr.1*, %struct.fib_rule_hdr.1** %17, align 8
  %51 = getelementptr inbounds %struct.fib_rule_hdr.1, %struct.fib_rule_hdr.1* %50, i32 0, i32 2
  store i64 0, i64* %51, align 8
  %52 = load %struct.fib_rule*, %struct.fib_rule** %10, align 8
  %53 = getelementptr inbounds %struct.fib_rule, %struct.fib_rule* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = load %struct.fib_rule_hdr.1*, %struct.fib_rule_hdr.1** %17, align 8
  %56 = getelementptr inbounds %struct.fib_rule_hdr.1, %struct.fib_rule_hdr.1* %55, i32 0, i32 0
  store i64 %54, i64* %56, align 8
  %57 = load %struct.fib_rule*, %struct.fib_rule** %10, align 8
  %58 = getelementptr inbounds %struct.fib_rule, %struct.fib_rule* %57, i32 0, i32 8
  %59 = load i32, i32* %58, align 8
  %60 = load %struct.fib_rule_hdr.1*, %struct.fib_rule_hdr.1** %17, align 8
  %61 = getelementptr inbounds %struct.fib_rule_hdr.1, %struct.fib_rule_hdr.1* %60, i32 0, i32 1
  store i32 %59, i32* %61, align 8
  %62 = load %struct.fib_rule*, %struct.fib_rule** %10, align 8
  %63 = getelementptr inbounds %struct.fib_rule, %struct.fib_rule* %62, i32 0, i32 0
  %64 = load i64, i64* %63, align 8
  %65 = load i64, i64* @FR_ACT_GOTO, align 8
  %66 = icmp eq i64 %64, %65
  br i1 %66, label %67, label %78

67:                                               ; preds = %29
  %68 = load %struct.fib_rule*, %struct.fib_rule** %10, align 8
  %69 = getelementptr inbounds %struct.fib_rule, %struct.fib_rule* %68, i32 0, i32 7
  %70 = load i32*, i32** %69, align 8
  %71 = icmp eq i32* %70, null
  br i1 %71, label %72, label %78

72:                                               ; preds = %67
  %73 = load i32, i32* @FIB_RULE_UNRESOLVED, align 4
  %74 = load %struct.fib_rule_hdr.1*, %struct.fib_rule_hdr.1** %17, align 8
  %75 = getelementptr inbounds %struct.fib_rule_hdr.1, %struct.fib_rule_hdr.1* %74, i32 0, i32 1
  %76 = load i32, i32* %75, align 8
  %77 = or i32 %76, %73
  store i32 %77, i32* %75, align 8
  br label %78

78:                                               ; preds = %72, %67, %29
  %79 = load %struct.fib_rule*, %struct.fib_rule** %10, align 8
  %80 = getelementptr inbounds %struct.fib_rule, %struct.fib_rule* %79, i32 0, i32 6
  %81 = load i64*, i64** %80, align 8
  %82 = getelementptr inbounds i64, i64* %81, i64 0
  %83 = load i64, i64* %82, align 8
  %84 = icmp ne i64 %83, 0
  br i1 %84, label %85, label %103

85:                                               ; preds = %78
  %86 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %87 = load i32, i32* @FRA_IFNAME, align 4
  %88 = load %struct.fib_rule*, %struct.fib_rule** %10, align 8
  %89 = getelementptr inbounds %struct.fib_rule, %struct.fib_rule* %88, i32 0, i32 6
  %90 = load i64*, i64** %89, align 8
  %91 = call i32 @NLA_PUT_STRING(%struct.sk_buff* %86, i32 %87, i64* %90)
  %92 = load %struct.fib_rule*, %struct.fib_rule** %10, align 8
  %93 = getelementptr inbounds %struct.fib_rule, %struct.fib_rule* %92, i32 0, i32 1
  %94 = load i32, i32* %93, align 8
  %95 = icmp eq i32 %94, -1
  br i1 %95, label %96, label %102

96:                                               ; preds = %85
  %97 = load i32, i32* @FIB_RULE_DEV_DETACHED, align 4
  %98 = load %struct.fib_rule_hdr.1*, %struct.fib_rule_hdr.1** %17, align 8
  %99 = getelementptr inbounds %struct.fib_rule_hdr.1, %struct.fib_rule_hdr.1* %98, i32 0, i32 1
  %100 = load i32, i32* %99, align 8
  %101 = or i32 %100, %97
  store i32 %101, i32* %99, align 8
  br label %102

102:                                              ; preds = %96, %85
  br label %103

103:                                              ; preds = %102, %78
  %104 = load %struct.fib_rule*, %struct.fib_rule** %10, align 8
  %105 = getelementptr inbounds %struct.fib_rule, %struct.fib_rule* %104, i32 0, i32 5
  %106 = load i64, i64* %105, align 8
  %107 = icmp ne i64 %106, 0
  br i1 %107, label %108, label %115

108:                                              ; preds = %103
  %109 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %110 = load i32, i32* @FRA_PRIORITY, align 4
  %111 = load %struct.fib_rule*, %struct.fib_rule** %10, align 8
  %112 = getelementptr inbounds %struct.fib_rule, %struct.fib_rule* %111, i32 0, i32 5
  %113 = load i64, i64* %112, align 8
  %114 = call i32 @NLA_PUT_U32(%struct.sk_buff* %109, i32 %110, i64 %113)
  br label %115

115:                                              ; preds = %108, %103
  %116 = load %struct.fib_rule*, %struct.fib_rule** %10, align 8
  %117 = getelementptr inbounds %struct.fib_rule, %struct.fib_rule* %116, i32 0, i32 4
  %118 = load i64, i64* %117, align 8
  %119 = icmp ne i64 %118, 0
  br i1 %119, label %120, label %127

120:                                              ; preds = %115
  %121 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %122 = load i32, i32* @FRA_FWMARK, align 4
  %123 = load %struct.fib_rule*, %struct.fib_rule** %10, align 8
  %124 = getelementptr inbounds %struct.fib_rule, %struct.fib_rule* %123, i32 0, i32 4
  %125 = load i64, i64* %124, align 8
  %126 = call i32 @NLA_PUT_U32(%struct.sk_buff* %121, i32 %122, i64 %125)
  br label %127

127:                                              ; preds = %120, %115
  %128 = load %struct.fib_rule*, %struct.fib_rule** %10, align 8
  %129 = getelementptr inbounds %struct.fib_rule, %struct.fib_rule* %128, i32 0, i32 3
  %130 = load i64, i64* %129, align 8
  %131 = icmp ne i64 %130, 0
  br i1 %131, label %137, label %132

132:                                              ; preds = %127
  %133 = load %struct.fib_rule*, %struct.fib_rule** %10, align 8
  %134 = getelementptr inbounds %struct.fib_rule, %struct.fib_rule* %133, i32 0, i32 4
  %135 = load i64, i64* %134, align 8
  %136 = icmp ne i64 %135, 0
  br i1 %136, label %137, label %144

137:                                              ; preds = %132, %127
  %138 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %139 = load i32, i32* @FRA_FWMASK, align 4
  %140 = load %struct.fib_rule*, %struct.fib_rule** %10, align 8
  %141 = getelementptr inbounds %struct.fib_rule, %struct.fib_rule* %140, i32 0, i32 3
  %142 = load i64, i64* %141, align 8
  %143 = call i32 @NLA_PUT_U32(%struct.sk_buff* %138, i32 %139, i64 %142)
  br label %144

144:                                              ; preds = %137, %132
  %145 = load %struct.fib_rule*, %struct.fib_rule** %10, align 8
  %146 = getelementptr inbounds %struct.fib_rule, %struct.fib_rule* %145, i32 0, i32 2
  %147 = load i64, i64* %146, align 8
  %148 = icmp ne i64 %147, 0
  br i1 %148, label %149, label %156

149:                                              ; preds = %144
  %150 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %151 = load i32, i32* @FRA_GOTO, align 4
  %152 = load %struct.fib_rule*, %struct.fib_rule** %10, align 8
  %153 = getelementptr inbounds %struct.fib_rule, %struct.fib_rule* %152, i32 0, i32 2
  %154 = load i64, i64* %153, align 8
  %155 = call i32 @NLA_PUT_U32(%struct.sk_buff* %150, i32 %151, i64 %154)
  br label %156

156:                                              ; preds = %149, %144
  %157 = load %struct.fib_rules_ops*, %struct.fib_rules_ops** %15, align 8
  %158 = getelementptr inbounds %struct.fib_rules_ops, %struct.fib_rules_ops* %157, i32 0, i32 0
  %159 = load i64 (%struct.fib_rule.0*, %struct.sk_buff*, %struct.fib_rule_hdr*)*, i64 (%struct.fib_rule.0*, %struct.sk_buff*, %struct.fib_rule_hdr*)** %158, align 8
  %160 = load %struct.fib_rule*, %struct.fib_rule** %10, align 8
  %161 = bitcast %struct.fib_rule* %160 to %struct.fib_rule.0*
  %162 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %163 = load %struct.fib_rule_hdr.1*, %struct.fib_rule_hdr.1** %17, align 8
  %164 = bitcast %struct.fib_rule_hdr.1* %163 to %struct.fib_rule_hdr*
  %165 = call i64 %159(%struct.fib_rule.0* %161, %struct.sk_buff* %162, %struct.fib_rule_hdr* %164)
  %166 = icmp slt i64 %165, 0
  br i1 %166, label %167, label %168

167:                                              ; preds = %156
  br label %172

168:                                              ; preds = %156
  %169 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %170 = load %struct.nlmsghdr*, %struct.nlmsghdr** %16, align 8
  %171 = call i32 @nlmsg_end(%struct.sk_buff* %169, %struct.nlmsghdr* %170)
  store i32 %171, i32* %8, align 4
  br label %178

172:                                              ; preds = %167
  %173 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %174 = load %struct.nlmsghdr*, %struct.nlmsghdr** %16, align 8
  %175 = call i32 @nlmsg_cancel(%struct.sk_buff* %173, %struct.nlmsghdr* %174)
  %176 = load i32, i32* @EMSGSIZE, align 4
  %177 = sub nsw i32 0, %176
  store i32 %177, i32* %8, align 4
  br label %178

178:                                              ; preds = %172, %168, %26
  %179 = load i32, i32* %8, align 4
  ret i32 %179
}

declare dso_local %struct.nlmsghdr* @nlmsg_put(%struct.sk_buff*, i32, i32, i32, i32, i32) #1

declare dso_local %struct.fib_rule_hdr.1* @nlmsg_data(%struct.nlmsghdr*) #1

declare dso_local i32 @NLA_PUT_U32(%struct.sk_buff*, i32, i64) #1

declare dso_local i32 @NLA_PUT_STRING(%struct.sk_buff*, i32, i64*) #1

declare dso_local i32 @nlmsg_end(%struct.sk_buff*, %struct.nlmsghdr*) #1

declare dso_local i32 @nlmsg_cancel(%struct.sk_buff*, %struct.nlmsghdr*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/sched/extr_cls_api.c_tcf_fill_node.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/sched/extr_cls_api.c_tcf_fill_node.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.tcf_proto = type { %struct.TYPE_3__*, i32, i32, i32, i32 }
%struct.TYPE_3__ = type { i64 (%struct.tcf_proto*, i64, %struct.sk_buff*, %struct.tcmsg*)*, i32 }
%struct.tcmsg = type { i64, i32, i32, i32, i64, i64, i32 }
%struct.nlmsghdr = type { i32 }
%struct.TYPE_4__ = type { i32 }

@AF_UNSPEC = common dso_local global i32 0, align 4
@TCA_KIND = common dso_local global i32 0, align 4
@RTM_DELTFILTER = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*, %struct.tcf_proto*, i64, i32, i32, i32, i32)* @tcf_fill_node to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tcf_fill_node(%struct.sk_buff* %0, %struct.tcf_proto* %1, i64 %2, i32 %3, i32 %4, i32 %5, i32 %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca %struct.sk_buff*, align 8
  %10 = alloca %struct.tcf_proto*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca %struct.tcmsg*, align 8
  %17 = alloca %struct.nlmsghdr*, align 8
  %18 = alloca i8*, align 8
  store %struct.sk_buff* %0, %struct.sk_buff** %9, align 8
  store %struct.tcf_proto* %1, %struct.tcf_proto** %10, align 8
  store i64 %2, i64* %11, align 8
  store i32 %3, i32* %12, align 4
  store i32 %4, i32* %13, align 4
  store i32 %5, i32* %14, align 4
  store i32 %6, i32* %15, align 4
  %19 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %20 = call i8* @skb_tail_pointer(%struct.sk_buff* %19)
  store i8* %20, i8** %18, align 8
  %21 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %22 = load i32, i32* %12, align 4
  %23 = load i32, i32* %13, align 4
  %24 = load i32, i32* %15, align 4
  %25 = load i32, i32* %14, align 4
  %26 = call %struct.nlmsghdr* @NLMSG_NEW(%struct.sk_buff* %21, i32 %22, i32 %23, i32 %24, i32 48, i32 %25)
  store %struct.nlmsghdr* %26, %struct.nlmsghdr** %17, align 8
  %27 = load %struct.nlmsghdr*, %struct.nlmsghdr** %17, align 8
  %28 = call %struct.tcmsg* @NLMSG_DATA(%struct.nlmsghdr* %27)
  store %struct.tcmsg* %28, %struct.tcmsg** %16, align 8
  %29 = load i32, i32* @AF_UNSPEC, align 4
  %30 = load %struct.tcmsg*, %struct.tcmsg** %16, align 8
  %31 = getelementptr inbounds %struct.tcmsg, %struct.tcmsg* %30, i32 0, i32 6
  store i32 %29, i32* %31, align 8
  %32 = load %struct.tcmsg*, %struct.tcmsg** %16, align 8
  %33 = getelementptr inbounds %struct.tcmsg, %struct.tcmsg* %32, i32 0, i32 5
  store i64 0, i64* %33, align 8
  %34 = load %struct.tcmsg*, %struct.tcmsg** %16, align 8
  %35 = getelementptr inbounds %struct.tcmsg, %struct.tcmsg* %34, i32 0, i32 4
  store i64 0, i64* %35, align 8
  %36 = load %struct.tcf_proto*, %struct.tcf_proto** %10, align 8
  %37 = getelementptr inbounds %struct.tcf_proto, %struct.tcf_proto* %36, i32 0, i32 4
  %38 = load i32, i32* %37, align 4
  %39 = call %struct.TYPE_4__* @qdisc_dev(i32 %38)
  %40 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = load %struct.tcmsg*, %struct.tcmsg** %16, align 8
  %43 = getelementptr inbounds %struct.tcmsg, %struct.tcmsg* %42, i32 0, i32 3
  store i32 %41, i32* %43, align 8
  %44 = load %struct.tcf_proto*, %struct.tcf_proto** %10, align 8
  %45 = getelementptr inbounds %struct.tcf_proto, %struct.tcf_proto* %44, i32 0, i32 3
  %46 = load i32, i32* %45, align 8
  %47 = load %struct.tcmsg*, %struct.tcmsg** %16, align 8
  %48 = getelementptr inbounds %struct.tcmsg, %struct.tcmsg* %47, i32 0, i32 2
  store i32 %46, i32* %48, align 4
  %49 = load %struct.tcf_proto*, %struct.tcf_proto** %10, align 8
  %50 = getelementptr inbounds %struct.tcf_proto, %struct.tcf_proto* %49, i32 0, i32 2
  %51 = load i32, i32* %50, align 4
  %52 = load %struct.tcf_proto*, %struct.tcf_proto** %10, align 8
  %53 = getelementptr inbounds %struct.tcf_proto, %struct.tcf_proto* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 8
  %55 = call i32 @TC_H_MAKE(i32 %51, i32 %54)
  %56 = load %struct.tcmsg*, %struct.tcmsg** %16, align 8
  %57 = getelementptr inbounds %struct.tcmsg, %struct.tcmsg* %56, i32 0, i32 1
  store i32 %55, i32* %57, align 8
  %58 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %59 = load i32, i32* @TCA_KIND, align 4
  %60 = load %struct.tcf_proto*, %struct.tcf_proto** %10, align 8
  %61 = getelementptr inbounds %struct.tcf_proto, %struct.tcf_proto* %60, i32 0, i32 0
  %62 = load %struct.TYPE_3__*, %struct.TYPE_3__** %61, align 8
  %63 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %62, i32 0, i32 1
  %64 = load i32, i32* %63, align 8
  %65 = call i32 @NLA_PUT_STRING(%struct.sk_buff* %58, i32 %59, i32 %64)
  %66 = load i64, i64* %11, align 8
  %67 = load %struct.tcmsg*, %struct.tcmsg** %16, align 8
  %68 = getelementptr inbounds %struct.tcmsg, %struct.tcmsg* %67, i32 0, i32 0
  store i64 %66, i64* %68, align 8
  %69 = load i32, i32* @RTM_DELTFILTER, align 4
  %70 = load i32, i32* %15, align 4
  %71 = icmp ne i32 %69, %70
  br i1 %71, label %72, label %95

72:                                               ; preds = %7
  %73 = load %struct.tcmsg*, %struct.tcmsg** %16, align 8
  %74 = getelementptr inbounds %struct.tcmsg, %struct.tcmsg* %73, i32 0, i32 0
  store i64 0, i64* %74, align 8
  %75 = load %struct.tcf_proto*, %struct.tcf_proto** %10, align 8
  %76 = getelementptr inbounds %struct.tcf_proto, %struct.tcf_proto* %75, i32 0, i32 0
  %77 = load %struct.TYPE_3__*, %struct.TYPE_3__** %76, align 8
  %78 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %77, i32 0, i32 0
  %79 = load i64 (%struct.tcf_proto*, i64, %struct.sk_buff*, %struct.tcmsg*)*, i64 (%struct.tcf_proto*, i64, %struct.sk_buff*, %struct.tcmsg*)** %78, align 8
  %80 = icmp ne i64 (%struct.tcf_proto*, i64, %struct.sk_buff*, %struct.tcmsg*)* %79, null
  br i1 %80, label %81, label %94

81:                                               ; preds = %72
  %82 = load %struct.tcf_proto*, %struct.tcf_proto** %10, align 8
  %83 = getelementptr inbounds %struct.tcf_proto, %struct.tcf_proto* %82, i32 0, i32 0
  %84 = load %struct.TYPE_3__*, %struct.TYPE_3__** %83, align 8
  %85 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %84, i32 0, i32 0
  %86 = load i64 (%struct.tcf_proto*, i64, %struct.sk_buff*, %struct.tcmsg*)*, i64 (%struct.tcf_proto*, i64, %struct.sk_buff*, %struct.tcmsg*)** %85, align 8
  %87 = load %struct.tcf_proto*, %struct.tcf_proto** %10, align 8
  %88 = load i64, i64* %11, align 8
  %89 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %90 = load %struct.tcmsg*, %struct.tcmsg** %16, align 8
  %91 = call i64 %86(%struct.tcf_proto* %87, i64 %88, %struct.sk_buff* %89, %struct.tcmsg* %90)
  %92 = icmp slt i64 %91, 0
  br i1 %92, label %93, label %94

93:                                               ; preds = %81
  br label %109

94:                                               ; preds = %81, %72
  br label %95

95:                                               ; preds = %94, %7
  %96 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %97 = call i8* @skb_tail_pointer(%struct.sk_buff* %96)
  %98 = load i8*, i8** %18, align 8
  %99 = ptrtoint i8* %97 to i64
  %100 = ptrtoint i8* %98 to i64
  %101 = sub i64 %99, %100
  %102 = trunc i64 %101 to i32
  %103 = load %struct.nlmsghdr*, %struct.nlmsghdr** %17, align 8
  %104 = getelementptr inbounds %struct.nlmsghdr, %struct.nlmsghdr* %103, i32 0, i32 0
  store i32 %102, i32* %104, align 4
  %105 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %106 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %105, i32 0, i32 0
  %107 = load i32, i32* %106, align 4
  store i32 %107, i32* %8, align 4
  br label %113

108:                                              ; No predecessors!
  br label %109

109:                                              ; preds = %108, %93
  %110 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %111 = load i8*, i8** %18, align 8
  %112 = call i32 @nlmsg_trim(%struct.sk_buff* %110, i8* %111)
  store i32 -1, i32* %8, align 4
  br label %113

113:                                              ; preds = %109, %95
  %114 = load i32, i32* %8, align 4
  ret i32 %114
}

declare dso_local i8* @skb_tail_pointer(%struct.sk_buff*) #1

declare dso_local %struct.nlmsghdr* @NLMSG_NEW(%struct.sk_buff*, i32, i32, i32, i32, i32) #1

declare dso_local %struct.tcmsg* @NLMSG_DATA(%struct.nlmsghdr*) #1

declare dso_local %struct.TYPE_4__* @qdisc_dev(i32) #1

declare dso_local i32 @TC_H_MAKE(i32, i32) #1

declare dso_local i32 @NLA_PUT_STRING(%struct.sk_buff*, i32, i32) #1

declare dso_local i32 @nlmsg_trim(%struct.sk_buff*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/netfilter/extr_nfnetlink_queue.c_nfqnl_recv_verdict.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/netfilter/extr_nfnetlink_queue.c_nfqnl_recv_verdict.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sock = type { i32 }
%struct.sk_buff = type { i32 }
%struct.nlmsghdr = type { i32 }
%struct.nlattr = type { i32 }
%struct.nfgenmsg = type { i32 }
%struct.nfqnl_msg_verdict_hdr = type { i32, i32 }
%struct.nfqnl_instance = type { i64 }
%struct.nf_queue_entry = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i8* }
%struct.TYPE_4__ = type { i64 }

@ENODEV = common dso_local global i32 0, align 4
@EPERM = common dso_local global i32 0, align 4
@NFQA_VERDICT_HDR = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@NF_VERDICT_MASK = common dso_local global i32 0, align 4
@NF_MAX_VERDICT = common dso_local global i32 0, align 4
@ENOENT = common dso_local global i32 0, align 4
@NFQA_PAYLOAD = common dso_local global i64 0, align 8
@NF_DROP = common dso_local global i32 0, align 4
@NFQA_MARK = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sock*, %struct.sk_buff*, %struct.nlmsghdr*, %struct.nlattr**)* @nfqnl_recv_verdict to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nfqnl_recv_verdict(%struct.sock* %0, %struct.sk_buff* %1, %struct.nlmsghdr* %2, %struct.nlattr** %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.sock*, align 8
  %7 = alloca %struct.sk_buff*, align 8
  %8 = alloca %struct.nlmsghdr*, align 8
  %9 = alloca %struct.nlattr**, align 8
  %10 = alloca %struct.nfgenmsg*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.nfqnl_msg_verdict_hdr*, align 8
  %13 = alloca %struct.nfqnl_instance*, align 8
  %14 = alloca i32, align 4
  %15 = alloca %struct.nf_queue_entry*, align 8
  %16 = alloca i32, align 4
  %17 = alloca %struct.TYPE_4__, align 8
  store %struct.sock* %0, %struct.sock** %6, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %7, align 8
  store %struct.nlmsghdr* %2, %struct.nlmsghdr** %8, align 8
  store %struct.nlattr** %3, %struct.nlattr*** %9, align 8
  %18 = load %struct.nlmsghdr*, %struct.nlmsghdr** %8, align 8
  %19 = call %struct.nfgenmsg* @NLMSG_DATA(%struct.nlmsghdr* %18)
  store %struct.nfgenmsg* %19, %struct.nfgenmsg** %10, align 8
  %20 = load %struct.nfgenmsg*, %struct.nfgenmsg** %10, align 8
  %21 = getelementptr inbounds %struct.nfgenmsg, %struct.nfgenmsg* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = call i32 @ntohs(i32 %22)
  store i32 %23, i32* %11, align 4
  %24 = call i32 (...) @rcu_read_lock()
  %25 = load i32, i32* %11, align 4
  %26 = call %struct.nfqnl_instance* @instance_lookup(i32 %25)
  store %struct.nfqnl_instance* %26, %struct.nfqnl_instance** %13, align 8
  %27 = load %struct.nfqnl_instance*, %struct.nfqnl_instance** %13, align 8
  %28 = icmp ne %struct.nfqnl_instance* %27, null
  br i1 %28, label %32, label %29

29:                                               ; preds = %4
  %30 = load i32, i32* @ENODEV, align 4
  %31 = sub nsw i32 0, %30
  store i32 %31, i32* %16, align 4
  br label %130

32:                                               ; preds = %4
  %33 = load %struct.nfqnl_instance*, %struct.nfqnl_instance** %13, align 8
  %34 = getelementptr inbounds %struct.nfqnl_instance, %struct.nfqnl_instance* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %37 = call i64 @NETLINK_CB(%struct.sk_buff* %36)
  %38 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 0
  store i64 %37, i64* %38, align 8
  %39 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = icmp ne i64 %35, %40
  br i1 %41, label %42, label %45

42:                                               ; preds = %32
  %43 = load i32, i32* @EPERM, align 4
  %44 = sub nsw i32 0, %43
  store i32 %44, i32* %16, align 4
  br label %130

45:                                               ; preds = %32
  %46 = load %struct.nlattr**, %struct.nlattr*** %9, align 8
  %47 = load i64, i64* @NFQA_VERDICT_HDR, align 8
  %48 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %46, i64 %47
  %49 = load %struct.nlattr*, %struct.nlattr** %48, align 8
  %50 = icmp ne %struct.nlattr* %49, null
  br i1 %50, label %54, label %51

51:                                               ; preds = %45
  %52 = load i32, i32* @EINVAL, align 4
  %53 = sub nsw i32 0, %52
  store i32 %53, i32* %16, align 4
  br label %130

54:                                               ; preds = %45
  %55 = load %struct.nlattr**, %struct.nlattr*** %9, align 8
  %56 = load i64, i64* @NFQA_VERDICT_HDR, align 8
  %57 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %55, i64 %56
  %58 = load %struct.nlattr*, %struct.nlattr** %57, align 8
  %59 = call %struct.nfqnl_msg_verdict_hdr* @nla_data(%struct.nlattr* %58)
  store %struct.nfqnl_msg_verdict_hdr* %59, %struct.nfqnl_msg_verdict_hdr** %12, align 8
  %60 = load %struct.nfqnl_msg_verdict_hdr*, %struct.nfqnl_msg_verdict_hdr** %12, align 8
  %61 = getelementptr inbounds %struct.nfqnl_msg_verdict_hdr, %struct.nfqnl_msg_verdict_hdr* %60, i32 0, i32 1
  %62 = load i32, i32* %61, align 4
  %63 = call i8* @ntohl(i32 %62)
  %64 = ptrtoint i8* %63 to i32
  store i32 %64, i32* %14, align 4
  %65 = load i32, i32* %14, align 4
  %66 = load i32, i32* @NF_VERDICT_MASK, align 4
  %67 = and i32 %65, %66
  %68 = load i32, i32* @NF_MAX_VERDICT, align 4
  %69 = icmp ugt i32 %67, %68
  br i1 %69, label %70, label %73

70:                                               ; preds = %54
  %71 = load i32, i32* @EINVAL, align 4
  %72 = sub nsw i32 0, %71
  store i32 %72, i32* %16, align 4
  br label %130

73:                                               ; preds = %54
  %74 = load %struct.nfqnl_instance*, %struct.nfqnl_instance** %13, align 8
  %75 = load %struct.nfqnl_msg_verdict_hdr*, %struct.nfqnl_msg_verdict_hdr** %12, align 8
  %76 = getelementptr inbounds %struct.nfqnl_msg_verdict_hdr, %struct.nfqnl_msg_verdict_hdr* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 4
  %78 = call i8* @ntohl(i32 %77)
  %79 = call %struct.nf_queue_entry* @find_dequeue_entry(%struct.nfqnl_instance* %74, i8* %78)
  store %struct.nf_queue_entry* %79, %struct.nf_queue_entry** %15, align 8
  %80 = load %struct.nf_queue_entry*, %struct.nf_queue_entry** %15, align 8
  %81 = icmp eq %struct.nf_queue_entry* %80, null
  br i1 %81, label %82, label %85

82:                                               ; preds = %73
  %83 = load i32, i32* @ENOENT, align 4
  %84 = sub nsw i32 0, %83
  store i32 %84, i32* %16, align 4
  br label %130

85:                                               ; preds = %73
  %86 = call i32 (...) @rcu_read_unlock()
  %87 = load %struct.nlattr**, %struct.nlattr*** %9, align 8
  %88 = load i64, i64* @NFQA_PAYLOAD, align 8
  %89 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %87, i64 %88
  %90 = load %struct.nlattr*, %struct.nlattr** %89, align 8
  %91 = icmp ne %struct.nlattr* %90, null
  br i1 %91, label %92, label %109

92:                                               ; preds = %85
  %93 = load %struct.nlattr**, %struct.nlattr*** %9, align 8
  %94 = load i64, i64* @NFQA_PAYLOAD, align 8
  %95 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %93, i64 %94
  %96 = load %struct.nlattr*, %struct.nlattr** %95, align 8
  %97 = call %struct.nfqnl_msg_verdict_hdr* @nla_data(%struct.nlattr* %96)
  %98 = load %struct.nlattr**, %struct.nlattr*** %9, align 8
  %99 = load i64, i64* @NFQA_PAYLOAD, align 8
  %100 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %98, i64 %99
  %101 = load %struct.nlattr*, %struct.nlattr** %100, align 8
  %102 = call i32 @nla_len(%struct.nlattr* %101)
  %103 = load %struct.nf_queue_entry*, %struct.nf_queue_entry** %15, align 8
  %104 = call i64 @nfqnl_mangle(%struct.nfqnl_msg_verdict_hdr* %97, i32 %102, %struct.nf_queue_entry* %103)
  %105 = icmp slt i64 %104, 0
  br i1 %105, label %106, label %108

106:                                              ; preds = %92
  %107 = load i32, i32* @NF_DROP, align 4
  store i32 %107, i32* %14, align 4
  br label %108

108:                                              ; preds = %106, %92
  br label %109

109:                                              ; preds = %108, %85
  %110 = load %struct.nlattr**, %struct.nlattr*** %9, align 8
  %111 = load i64, i64* @NFQA_MARK, align 8
  %112 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %110, i64 %111
  %113 = load %struct.nlattr*, %struct.nlattr** %112, align 8
  %114 = icmp ne %struct.nlattr* %113, null
  br i1 %114, label %115, label %126

115:                                              ; preds = %109
  %116 = load %struct.nlattr**, %struct.nlattr*** %9, align 8
  %117 = load i64, i64* @NFQA_MARK, align 8
  %118 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %116, i64 %117
  %119 = load %struct.nlattr*, %struct.nlattr** %118, align 8
  %120 = call i32 @nla_get_be32(%struct.nlattr* %119)
  %121 = call i8* @ntohl(i32 %120)
  %122 = load %struct.nf_queue_entry*, %struct.nf_queue_entry** %15, align 8
  %123 = getelementptr inbounds %struct.nf_queue_entry, %struct.nf_queue_entry* %122, i32 0, i32 0
  %124 = load %struct.TYPE_3__*, %struct.TYPE_3__** %123, align 8
  %125 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %124, i32 0, i32 0
  store i8* %121, i8** %125, align 8
  br label %126

126:                                              ; preds = %115, %109
  %127 = load %struct.nf_queue_entry*, %struct.nf_queue_entry** %15, align 8
  %128 = load i32, i32* %14, align 4
  %129 = call i32 @nf_reinject(%struct.nf_queue_entry* %127, i32 %128)
  store i32 0, i32* %5, align 4
  br label %133

130:                                              ; preds = %82, %70, %51, %42, %29
  %131 = call i32 (...) @rcu_read_unlock()
  %132 = load i32, i32* %16, align 4
  store i32 %132, i32* %5, align 4
  br label %133

133:                                              ; preds = %130, %126
  %134 = load i32, i32* %5, align 4
  ret i32 %134
}

declare dso_local %struct.nfgenmsg* @NLMSG_DATA(%struct.nlmsghdr*) #1

declare dso_local i32 @ntohs(i32) #1

declare dso_local i32 @rcu_read_lock(...) #1

declare dso_local %struct.nfqnl_instance* @instance_lookup(i32) #1

declare dso_local i64 @NETLINK_CB(%struct.sk_buff*) #1

declare dso_local %struct.nfqnl_msg_verdict_hdr* @nla_data(%struct.nlattr*) #1

declare dso_local i8* @ntohl(i32) #1

declare dso_local %struct.nf_queue_entry* @find_dequeue_entry(%struct.nfqnl_instance*, i8*) #1

declare dso_local i32 @rcu_read_unlock(...) #1

declare dso_local i64 @nfqnl_mangle(%struct.nfqnl_msg_verdict_hdr*, i32, %struct.nf_queue_entry*) #1

declare dso_local i32 @nla_len(%struct.nlattr*) #1

declare dso_local i32 @nla_get_be32(%struct.nlattr*) #1

declare dso_local i32 @nf_reinject(%struct.nf_queue_entry*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

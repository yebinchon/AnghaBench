; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/xfrm/extr_xfrm_user.c_xfrm_add_policy.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/xfrm/extr_xfrm_user.c_xfrm_add_policy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.nlmsghdr = type { i64, i32, i32 }
%struct.nlattr = type { i32 }
%struct.net = type { i32 }
%struct.xfrm_userpolicy_info = type { i32 }
%struct.xfrm_policy = type { i32 }
%struct.km_event = type { i64, i32, i32 }
%struct.TYPE_2__ = type { i32, i32, i32 }

@XFRM_MSG_NEWPOLICY = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*, %struct.nlmsghdr*, %struct.nlattr**)* @xfrm_add_policy to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @xfrm_add_policy(%struct.sk_buff* %0, %struct.nlmsghdr* %1, %struct.nlattr** %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.sk_buff*, align 8
  %6 = alloca %struct.nlmsghdr*, align 8
  %7 = alloca %struct.nlattr**, align 8
  %8 = alloca %struct.net*, align 8
  %9 = alloca %struct.xfrm_userpolicy_info*, align 8
  %10 = alloca %struct.xfrm_policy*, align 8
  %11 = alloca %struct.km_event, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca %struct.TYPE_2__, align 4
  %16 = alloca { i64, i32 }, align 8
  %17 = alloca i32, align 4
  %18 = alloca %struct.TYPE_2__, align 4
  %19 = alloca { i64, i32 }, align 8
  %20 = alloca i32, align 4
  %21 = alloca %struct.TYPE_2__, align 4
  %22 = alloca { i64, i32 }, align 8
  store %struct.sk_buff* %0, %struct.sk_buff** %5, align 8
  store %struct.nlmsghdr* %1, %struct.nlmsghdr** %6, align 8
  store %struct.nlattr** %2, %struct.nlattr*** %7, align 8
  %23 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %24 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = call %struct.net* @sock_net(i32 %25)
  store %struct.net* %26, %struct.net** %8, align 8
  %27 = load %struct.nlmsghdr*, %struct.nlmsghdr** %6, align 8
  %28 = call %struct.xfrm_userpolicy_info* @nlmsg_data(%struct.nlmsghdr* %27)
  store %struct.xfrm_userpolicy_info* %28, %struct.xfrm_userpolicy_info** %9, align 8
  %29 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %30 = call { i64, i32 } @NETLINK_CB(%struct.sk_buff* %29)
  store { i64, i32 } %30, { i64, i32 }* %16, align 8
  %31 = bitcast { i64, i32 }* %16 to i8*
  %32 = bitcast %struct.TYPE_2__* %15 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %32, i8* align 8 %31, i64 12, i1 false)
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 2
  %34 = load i32, i32* %33, align 4
  store i32 %34, i32* %14, align 4
  %35 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %36 = call { i64, i32 } @NETLINK_CB(%struct.sk_buff* %35)
  store { i64, i32 } %36, { i64, i32 }* %19, align 8
  %37 = bitcast { i64, i32 }* %19 to i8*
  %38 = bitcast %struct.TYPE_2__* %18 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %38, i8* align 8 %37, i64 12, i1 false)
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  store i32 %40, i32* %17, align 4
  %41 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %42 = call { i64, i32 } @NETLINK_CB(%struct.sk_buff* %41)
  store { i64, i32 } %42, { i64, i32 }* %22, align 8
  %43 = bitcast { i64, i32 }* %22 to i8*
  %44 = bitcast %struct.TYPE_2__* %21 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %44, i8* align 8 %43, i64 12, i1 false)
  %45 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  store i32 %46, i32* %20, align 4
  %47 = load %struct.xfrm_userpolicy_info*, %struct.xfrm_userpolicy_info** %9, align 8
  %48 = call i32 @verify_newpolicy_info(%struct.xfrm_userpolicy_info* %47)
  store i32 %48, i32* %12, align 4
  %49 = load i32, i32* %12, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %53

51:                                               ; preds = %3
  %52 = load i32, i32* %12, align 4
  store i32 %52, i32* %4, align 4
  br label %121

53:                                               ; preds = %3
  %54 = load %struct.nlattr**, %struct.nlattr*** %7, align 8
  %55 = call i32 @verify_sec_ctx_len(%struct.nlattr** %54)
  store i32 %55, i32* %12, align 4
  %56 = load i32, i32* %12, align 4
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %60

58:                                               ; preds = %53
  %59 = load i32, i32* %12, align 4
  store i32 %59, i32* %4, align 4
  br label %121

60:                                               ; preds = %53
  %61 = load %struct.net*, %struct.net** %8, align 8
  %62 = load %struct.xfrm_userpolicy_info*, %struct.xfrm_userpolicy_info** %9, align 8
  %63 = load %struct.nlattr**, %struct.nlattr*** %7, align 8
  %64 = call %struct.xfrm_policy* @xfrm_policy_construct(%struct.net* %61, %struct.xfrm_userpolicy_info* %62, %struct.nlattr** %63, i32* %12)
  store %struct.xfrm_policy* %64, %struct.xfrm_policy** %10, align 8
  %65 = load %struct.xfrm_policy*, %struct.xfrm_policy** %10, align 8
  %66 = icmp ne %struct.xfrm_policy* %65, null
  br i1 %66, label %69, label %67

67:                                               ; preds = %60
  %68 = load i32, i32* %12, align 4
  store i32 %68, i32* %4, align 4
  br label %121

69:                                               ; preds = %60
  %70 = load %struct.nlmsghdr*, %struct.nlmsghdr** %6, align 8
  %71 = getelementptr inbounds %struct.nlmsghdr, %struct.nlmsghdr* %70, i32 0, i32 0
  %72 = load i64, i64* %71, align 8
  %73 = load i64, i64* @XFRM_MSG_NEWPOLICY, align 8
  %74 = icmp eq i64 %72, %73
  %75 = zext i1 %74 to i32
  store i32 %75, i32* %13, align 4
  %76 = load %struct.xfrm_userpolicy_info*, %struct.xfrm_userpolicy_info** %9, align 8
  %77 = getelementptr inbounds %struct.xfrm_userpolicy_info, %struct.xfrm_userpolicy_info* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 4
  %79 = load %struct.xfrm_policy*, %struct.xfrm_policy** %10, align 8
  %80 = load i32, i32* %13, align 4
  %81 = call i32 @xfrm_policy_insert(i32 %78, %struct.xfrm_policy* %79, i32 %80)
  store i32 %81, i32* %12, align 4
  %82 = load %struct.xfrm_policy*, %struct.xfrm_policy** %10, align 8
  %83 = load i32, i32* %12, align 4
  %84 = icmp ne i32 %83, 0
  %85 = zext i1 %84 to i64
  %86 = select i1 %84, i32 0, i32 1
  %87 = load i32, i32* %14, align 4
  %88 = load i32, i32* %17, align 4
  %89 = load i32, i32* %20, align 4
  %90 = call i32 @xfrm_audit_policy_add(%struct.xfrm_policy* %82, i32 %86, i32 %87, i32 %88, i32 %89)
  %91 = load i32, i32* %12, align 4
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %93, label %101

93:                                               ; preds = %69
  %94 = load %struct.xfrm_policy*, %struct.xfrm_policy** %10, align 8
  %95 = getelementptr inbounds %struct.xfrm_policy, %struct.xfrm_policy* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 4
  %97 = call i32 @security_xfrm_policy_free(i32 %96)
  %98 = load %struct.xfrm_policy*, %struct.xfrm_policy** %10, align 8
  %99 = call i32 @kfree(%struct.xfrm_policy* %98)
  %100 = load i32, i32* %12, align 4
  store i32 %100, i32* %4, align 4
  br label %121

101:                                              ; preds = %69
  %102 = load %struct.nlmsghdr*, %struct.nlmsghdr** %6, align 8
  %103 = getelementptr inbounds %struct.nlmsghdr, %struct.nlmsghdr* %102, i32 0, i32 0
  %104 = load i64, i64* %103, align 8
  %105 = getelementptr inbounds %struct.km_event, %struct.km_event* %11, i32 0, i32 0
  store i64 %104, i64* %105, align 8
  %106 = load %struct.nlmsghdr*, %struct.nlmsghdr** %6, align 8
  %107 = getelementptr inbounds %struct.nlmsghdr, %struct.nlmsghdr* %106, i32 0, i32 2
  %108 = load i32, i32* %107, align 4
  %109 = getelementptr inbounds %struct.km_event, %struct.km_event* %11, i32 0, i32 2
  store i32 %108, i32* %109, align 4
  %110 = load %struct.nlmsghdr*, %struct.nlmsghdr** %6, align 8
  %111 = getelementptr inbounds %struct.nlmsghdr, %struct.nlmsghdr* %110, i32 0, i32 1
  %112 = load i32, i32* %111, align 8
  %113 = getelementptr inbounds %struct.km_event, %struct.km_event* %11, i32 0, i32 1
  store i32 %112, i32* %113, align 8
  %114 = load %struct.xfrm_policy*, %struct.xfrm_policy** %10, align 8
  %115 = load %struct.xfrm_userpolicy_info*, %struct.xfrm_userpolicy_info** %9, align 8
  %116 = getelementptr inbounds %struct.xfrm_userpolicy_info, %struct.xfrm_userpolicy_info* %115, i32 0, i32 0
  %117 = load i32, i32* %116, align 4
  %118 = call i32 @km_policy_notify(%struct.xfrm_policy* %114, i32 %117, %struct.km_event* %11)
  %119 = load %struct.xfrm_policy*, %struct.xfrm_policy** %10, align 8
  %120 = call i32 @xfrm_pol_put(%struct.xfrm_policy* %119)
  store i32 0, i32* %4, align 4
  br label %121

121:                                              ; preds = %101, %93, %67, %58, %51
  %122 = load i32, i32* %4, align 4
  ret i32 %122
}

declare dso_local %struct.net* @sock_net(i32) #1

declare dso_local %struct.xfrm_userpolicy_info* @nlmsg_data(%struct.nlmsghdr*) #1

declare dso_local { i64, i32 } @NETLINK_CB(%struct.sk_buff*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @verify_newpolicy_info(%struct.xfrm_userpolicy_info*) #1

declare dso_local i32 @verify_sec_ctx_len(%struct.nlattr**) #1

declare dso_local %struct.xfrm_policy* @xfrm_policy_construct(%struct.net*, %struct.xfrm_userpolicy_info*, %struct.nlattr**, i32*) #1

declare dso_local i32 @xfrm_policy_insert(i32, %struct.xfrm_policy*, i32) #1

declare dso_local i32 @xfrm_audit_policy_add(%struct.xfrm_policy*, i32, i32, i32, i32) #1

declare dso_local i32 @security_xfrm_policy_free(i32) #1

declare dso_local i32 @kfree(%struct.xfrm_policy*) #1

declare dso_local i32 @km_policy_notify(%struct.xfrm_policy*, i32, %struct.km_event*) #1

declare dso_local i32 @xfrm_pol_put(%struct.xfrm_policy*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

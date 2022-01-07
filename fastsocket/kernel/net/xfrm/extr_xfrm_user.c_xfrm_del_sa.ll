; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/xfrm/extr_xfrm_user.c_xfrm_del_sa.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/xfrm/extr_xfrm_user.c_xfrm_del_sa.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.nlmsghdr = type { i32, i32, i32 }
%struct.nlattr = type { i32 }
%struct.net = type { i32 }
%struct.xfrm_state = type { i32 }
%struct.km_event = type { i32, i32, i32 }
%struct.xfrm_usersa_id = type { i32 }
%struct.TYPE_2__ = type { i32, i32, i32 }

@ESRCH = common dso_local global i32 0, align 4
@EPERM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*, %struct.nlmsghdr*, %struct.nlattr**)* @xfrm_del_sa to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @xfrm_del_sa(%struct.sk_buff* %0, %struct.nlmsghdr* %1, %struct.nlattr** %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.sk_buff*, align 8
  %6 = alloca %struct.nlmsghdr*, align 8
  %7 = alloca %struct.nlattr**, align 8
  %8 = alloca %struct.net*, align 8
  %9 = alloca %struct.xfrm_state*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.km_event, align 4
  %12 = alloca %struct.xfrm_usersa_id*, align 8
  %13 = alloca i32, align 4
  %14 = alloca %struct.TYPE_2__, align 4
  %15 = alloca { i64, i32 }, align 8
  %16 = alloca i32, align 4
  %17 = alloca %struct.TYPE_2__, align 4
  %18 = alloca { i64, i32 }, align 8
  %19 = alloca i32, align 4
  %20 = alloca %struct.TYPE_2__, align 4
  %21 = alloca { i64, i32 }, align 8
  store %struct.sk_buff* %0, %struct.sk_buff** %5, align 8
  store %struct.nlmsghdr* %1, %struct.nlmsghdr** %6, align 8
  store %struct.nlattr** %2, %struct.nlattr*** %7, align 8
  %22 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %23 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = call %struct.net* @sock_net(i32 %24)
  store %struct.net* %25, %struct.net** %8, align 8
  %26 = load i32, i32* @ESRCH, align 4
  %27 = sub nsw i32 0, %26
  store i32 %27, i32* %10, align 4
  %28 = load %struct.nlmsghdr*, %struct.nlmsghdr** %6, align 8
  %29 = call %struct.xfrm_usersa_id* @nlmsg_data(%struct.nlmsghdr* %28)
  store %struct.xfrm_usersa_id* %29, %struct.xfrm_usersa_id** %12, align 8
  %30 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %31 = call { i64, i32 } @NETLINK_CB(%struct.sk_buff* %30)
  store { i64, i32 } %31, { i64, i32 }* %15, align 8
  %32 = bitcast { i64, i32 }* %15 to i8*
  %33 = bitcast %struct.TYPE_2__* %14 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %33, i8* align 8 %32, i64 12, i1 false)
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 2
  %35 = load i32, i32* %34, align 4
  store i32 %35, i32* %13, align 4
  %36 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %37 = call { i64, i32 } @NETLINK_CB(%struct.sk_buff* %36)
  store { i64, i32 } %37, { i64, i32 }* %18, align 8
  %38 = bitcast { i64, i32 }* %18 to i8*
  %39 = bitcast %struct.TYPE_2__* %17 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %39, i8* align 8 %38, i64 12, i1 false)
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  store i32 %41, i32* %16, align 4
  %42 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %43 = call { i64, i32 } @NETLINK_CB(%struct.sk_buff* %42)
  store { i64, i32 } %43, { i64, i32 }* %21, align 8
  %44 = bitcast { i64, i32 }* %21 to i8*
  %45 = bitcast %struct.TYPE_2__* %20 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %45, i8* align 8 %44, i64 12, i1 false)
  %46 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  store i32 %47, i32* %19, align 4
  %48 = load %struct.net*, %struct.net** %8, align 8
  %49 = load %struct.xfrm_usersa_id*, %struct.xfrm_usersa_id** %12, align 8
  %50 = load %struct.nlattr**, %struct.nlattr*** %7, align 8
  %51 = call %struct.xfrm_state* @xfrm_user_state_lookup(%struct.net* %48, %struct.xfrm_usersa_id* %49, %struct.nlattr** %50, i32* %10)
  store %struct.xfrm_state* %51, %struct.xfrm_state** %9, align 8
  %52 = load %struct.xfrm_state*, %struct.xfrm_state** %9, align 8
  %53 = icmp eq %struct.xfrm_state* %52, null
  br i1 %53, label %54, label %56

54:                                               ; preds = %3
  %55 = load i32, i32* %10, align 4
  store i32 %55, i32* %4, align 4
  br label %102

56:                                               ; preds = %3
  %57 = load %struct.xfrm_state*, %struct.xfrm_state** %9, align 8
  %58 = call i32 @security_xfrm_state_delete(%struct.xfrm_state* %57)
  store i32 %58, i32* %10, align 4
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %61

60:                                               ; preds = %56
  br label %89

61:                                               ; preds = %56
  %62 = load %struct.xfrm_state*, %struct.xfrm_state** %9, align 8
  %63 = call i64 @xfrm_state_kern(%struct.xfrm_state* %62)
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %65, label %68

65:                                               ; preds = %61
  %66 = load i32, i32* @EPERM, align 4
  %67 = sub nsw i32 0, %66
  store i32 %67, i32* %10, align 4
  br label %89

68:                                               ; preds = %61
  %69 = load %struct.xfrm_state*, %struct.xfrm_state** %9, align 8
  %70 = call i32 @xfrm_state_delete(%struct.xfrm_state* %69)
  store i32 %70, i32* %10, align 4
  %71 = load i32, i32* %10, align 4
  %72 = icmp slt i32 %71, 0
  br i1 %72, label %73, label %74

73:                                               ; preds = %68
  br label %89

74:                                               ; preds = %68
  %75 = load %struct.nlmsghdr*, %struct.nlmsghdr** %6, align 8
  %76 = getelementptr inbounds %struct.nlmsghdr, %struct.nlmsghdr* %75, i32 0, i32 2
  %77 = load i32, i32* %76, align 4
  %78 = getelementptr inbounds %struct.km_event, %struct.km_event* %11, i32 0, i32 2
  store i32 %77, i32* %78, align 4
  %79 = load %struct.nlmsghdr*, %struct.nlmsghdr** %6, align 8
  %80 = getelementptr inbounds %struct.nlmsghdr, %struct.nlmsghdr* %79, i32 0, i32 1
  %81 = load i32, i32* %80, align 4
  %82 = getelementptr inbounds %struct.km_event, %struct.km_event* %11, i32 0, i32 1
  store i32 %81, i32* %82, align 4
  %83 = load %struct.nlmsghdr*, %struct.nlmsghdr** %6, align 8
  %84 = getelementptr inbounds %struct.nlmsghdr, %struct.nlmsghdr* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 4
  %86 = getelementptr inbounds %struct.km_event, %struct.km_event* %11, i32 0, i32 0
  store i32 %85, i32* %86, align 4
  %87 = load %struct.xfrm_state*, %struct.xfrm_state** %9, align 8
  %88 = call i32 @km_state_notify(%struct.xfrm_state* %87, %struct.km_event* %11)
  br label %89

89:                                               ; preds = %74, %73, %65, %60
  %90 = load %struct.xfrm_state*, %struct.xfrm_state** %9, align 8
  %91 = load i32, i32* %10, align 4
  %92 = icmp ne i32 %91, 0
  %93 = zext i1 %92 to i64
  %94 = select i1 %92, i32 0, i32 1
  %95 = load i32, i32* %13, align 4
  %96 = load i32, i32* %16, align 4
  %97 = load i32, i32* %19, align 4
  %98 = call i32 @xfrm_audit_state_delete(%struct.xfrm_state* %90, i32 %94, i32 %95, i32 %96, i32 %97)
  %99 = load %struct.xfrm_state*, %struct.xfrm_state** %9, align 8
  %100 = call i32 @xfrm_state_put(%struct.xfrm_state* %99)
  %101 = load i32, i32* %10, align 4
  store i32 %101, i32* %4, align 4
  br label %102

102:                                              ; preds = %89, %54
  %103 = load i32, i32* %4, align 4
  ret i32 %103
}

declare dso_local %struct.net* @sock_net(i32) #1

declare dso_local %struct.xfrm_usersa_id* @nlmsg_data(%struct.nlmsghdr*) #1

declare dso_local { i64, i32 } @NETLINK_CB(%struct.sk_buff*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local %struct.xfrm_state* @xfrm_user_state_lookup(%struct.net*, %struct.xfrm_usersa_id*, %struct.nlattr**, i32*) #1

declare dso_local i32 @security_xfrm_state_delete(%struct.xfrm_state*) #1

declare dso_local i64 @xfrm_state_kern(%struct.xfrm_state*) #1

declare dso_local i32 @xfrm_state_delete(%struct.xfrm_state*) #1

declare dso_local i32 @km_state_notify(%struct.xfrm_state*, %struct.km_event*) #1

declare dso_local i32 @xfrm_audit_state_delete(%struct.xfrm_state*, i32, i32, i32, i32) #1

declare dso_local i32 @xfrm_state_put(%struct.xfrm_state*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

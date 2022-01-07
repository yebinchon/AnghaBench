; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/xfrm/extr_xfrm_user.c_xfrm_add_sa.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/xfrm/extr_xfrm_user.c_xfrm_add_sa.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.nlmsghdr = type { i64, i32, i32 }
%struct.nlattr = type { i32 }
%struct.net = type { i32 }
%struct.xfrm_usersa_info = type { i32 }
%struct.xfrm_state = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }
%struct.km_event = type { i64, i32, i32 }
%struct.TYPE_4__ = type { i32, i32, i32 }

@XFRM_MSG_NEWSA = common dso_local global i64 0, align 8
@XFRM_STATE_DEAD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*, %struct.nlmsghdr*, %struct.nlattr**)* @xfrm_add_sa to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @xfrm_add_sa(%struct.sk_buff* %0, %struct.nlmsghdr* %1, %struct.nlattr** %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.sk_buff*, align 8
  %6 = alloca %struct.nlmsghdr*, align 8
  %7 = alloca %struct.nlattr**, align 8
  %8 = alloca %struct.net*, align 8
  %9 = alloca %struct.xfrm_usersa_info*, align 8
  %10 = alloca %struct.xfrm_state*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.km_event, align 8
  %13 = alloca i32, align 4
  %14 = alloca %struct.TYPE_4__, align 4
  %15 = alloca { i64, i32 }, align 8
  %16 = alloca i32, align 4
  %17 = alloca %struct.TYPE_4__, align 4
  %18 = alloca { i64, i32 }, align 8
  %19 = alloca i32, align 4
  %20 = alloca %struct.TYPE_4__, align 4
  %21 = alloca { i64, i32 }, align 8
  store %struct.sk_buff* %0, %struct.sk_buff** %5, align 8
  store %struct.nlmsghdr* %1, %struct.nlmsghdr** %6, align 8
  store %struct.nlattr** %2, %struct.nlattr*** %7, align 8
  %22 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %23 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = call %struct.net* @sock_net(i32 %24)
  store %struct.net* %25, %struct.net** %8, align 8
  %26 = load %struct.nlmsghdr*, %struct.nlmsghdr** %6, align 8
  %27 = call %struct.xfrm_usersa_info* @nlmsg_data(%struct.nlmsghdr* %26)
  store %struct.xfrm_usersa_info* %27, %struct.xfrm_usersa_info** %9, align 8
  %28 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %29 = call { i64, i32 } @NETLINK_CB(%struct.sk_buff* %28)
  store { i64, i32 } %29, { i64, i32 }* %15, align 8
  %30 = bitcast { i64, i32 }* %15 to i8*
  %31 = bitcast %struct.TYPE_4__* %14 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %31, i8* align 8 %30, i64 12, i1 false)
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 2
  %33 = load i32, i32* %32, align 4
  store i32 %33, i32* %13, align 4
  %34 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %35 = call { i64, i32 } @NETLINK_CB(%struct.sk_buff* %34)
  store { i64, i32 } %35, { i64, i32 }* %18, align 8
  %36 = bitcast { i64, i32 }* %18 to i8*
  %37 = bitcast %struct.TYPE_4__* %17 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %37, i8* align 8 %36, i64 12, i1 false)
  %38 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  store i32 %39, i32* %16, align 4
  %40 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %41 = call { i64, i32 } @NETLINK_CB(%struct.sk_buff* %40)
  store { i64, i32 } %41, { i64, i32 }* %21, align 8
  %42 = bitcast { i64, i32 }* %21 to i8*
  %43 = bitcast %struct.TYPE_4__* %20 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %43, i8* align 8 %42, i64 12, i1 false)
  %44 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  store i32 %45, i32* %19, align 4
  %46 = load %struct.xfrm_usersa_info*, %struct.xfrm_usersa_info** %9, align 8
  %47 = load %struct.nlattr**, %struct.nlattr*** %7, align 8
  %48 = call i32 @verify_newsa_info(%struct.xfrm_usersa_info* %46, %struct.nlattr** %47)
  store i32 %48, i32* %11, align 4
  %49 = load i32, i32* %11, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %53

51:                                               ; preds = %3
  %52 = load i32, i32* %11, align 4
  store i32 %52, i32* %4, align 4
  br label %114

53:                                               ; preds = %3
  %54 = load %struct.net*, %struct.net** %8, align 8
  %55 = load %struct.xfrm_usersa_info*, %struct.xfrm_usersa_info** %9, align 8
  %56 = load %struct.nlattr**, %struct.nlattr*** %7, align 8
  %57 = call %struct.xfrm_state* @xfrm_state_construct(%struct.net* %54, %struct.xfrm_usersa_info* %55, %struct.nlattr** %56, i32* %11)
  store %struct.xfrm_state* %57, %struct.xfrm_state** %10, align 8
  %58 = load %struct.xfrm_state*, %struct.xfrm_state** %10, align 8
  %59 = icmp ne %struct.xfrm_state* %58, null
  br i1 %59, label %62, label %60

60:                                               ; preds = %53
  %61 = load i32, i32* %11, align 4
  store i32 %61, i32* %4, align 4
  br label %114

62:                                               ; preds = %53
  %63 = load %struct.xfrm_state*, %struct.xfrm_state** %10, align 8
  %64 = call i32 @xfrm_state_hold(%struct.xfrm_state* %63)
  %65 = load %struct.nlmsghdr*, %struct.nlmsghdr** %6, align 8
  %66 = getelementptr inbounds %struct.nlmsghdr, %struct.nlmsghdr* %65, i32 0, i32 0
  %67 = load i64, i64* %66, align 8
  %68 = load i64, i64* @XFRM_MSG_NEWSA, align 8
  %69 = icmp eq i64 %67, %68
  br i1 %69, label %70, label %73

70:                                               ; preds = %62
  %71 = load %struct.xfrm_state*, %struct.xfrm_state** %10, align 8
  %72 = call i32 @xfrm_state_add(%struct.xfrm_state* %71)
  store i32 %72, i32* %11, align 4
  br label %76

73:                                               ; preds = %62
  %74 = load %struct.xfrm_state*, %struct.xfrm_state** %10, align 8
  %75 = call i32 @xfrm_state_update(%struct.xfrm_state* %74)
  store i32 %75, i32* %11, align 4
  br label %76

76:                                               ; preds = %73, %70
  %77 = load %struct.xfrm_state*, %struct.xfrm_state** %10, align 8
  %78 = load i32, i32* %11, align 4
  %79 = icmp ne i32 %78, 0
  %80 = zext i1 %79 to i64
  %81 = select i1 %79, i32 0, i32 1
  %82 = load i32, i32* %13, align 4
  %83 = load i32, i32* %16, align 4
  %84 = load i32, i32* %19, align 4
  %85 = call i32 @xfrm_audit_state_add(%struct.xfrm_state* %77, i32 %81, i32 %82, i32 %83, i32 %84)
  %86 = load i32, i32* %11, align 4
  %87 = icmp slt i32 %86, 0
  br i1 %87, label %88, label %95

88:                                               ; preds = %76
  %89 = load i32, i32* @XFRM_STATE_DEAD, align 4
  %90 = load %struct.xfrm_state*, %struct.xfrm_state** %10, align 8
  %91 = getelementptr inbounds %struct.xfrm_state, %struct.xfrm_state* %90, i32 0, i32 0
  %92 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %91, i32 0, i32 0
  store i32 %89, i32* %92, align 4
  %93 = load %struct.xfrm_state*, %struct.xfrm_state** %10, align 8
  %94 = call i32 @__xfrm_state_put(%struct.xfrm_state* %93)
  br label %110

95:                                               ; preds = %76
  %96 = load %struct.nlmsghdr*, %struct.nlmsghdr** %6, align 8
  %97 = getelementptr inbounds %struct.nlmsghdr, %struct.nlmsghdr* %96, i32 0, i32 2
  %98 = load i32, i32* %97, align 4
  %99 = getelementptr inbounds %struct.km_event, %struct.km_event* %12, i32 0, i32 2
  store i32 %98, i32* %99, align 4
  %100 = load %struct.nlmsghdr*, %struct.nlmsghdr** %6, align 8
  %101 = getelementptr inbounds %struct.nlmsghdr, %struct.nlmsghdr* %100, i32 0, i32 1
  %102 = load i32, i32* %101, align 8
  %103 = getelementptr inbounds %struct.km_event, %struct.km_event* %12, i32 0, i32 1
  store i32 %102, i32* %103, align 8
  %104 = load %struct.nlmsghdr*, %struct.nlmsghdr** %6, align 8
  %105 = getelementptr inbounds %struct.nlmsghdr, %struct.nlmsghdr* %104, i32 0, i32 0
  %106 = load i64, i64* %105, align 8
  %107 = getelementptr inbounds %struct.km_event, %struct.km_event* %12, i32 0, i32 0
  store i64 %106, i64* %107, align 8
  %108 = load %struct.xfrm_state*, %struct.xfrm_state** %10, align 8
  %109 = call i32 @km_state_notify(%struct.xfrm_state* %108, %struct.km_event* %12)
  br label %110

110:                                              ; preds = %95, %88
  %111 = load %struct.xfrm_state*, %struct.xfrm_state** %10, align 8
  %112 = call i32 @xfrm_state_put(%struct.xfrm_state* %111)
  %113 = load i32, i32* %11, align 4
  store i32 %113, i32* %4, align 4
  br label %114

114:                                              ; preds = %110, %60, %51
  %115 = load i32, i32* %4, align 4
  ret i32 %115
}

declare dso_local %struct.net* @sock_net(i32) #1

declare dso_local %struct.xfrm_usersa_info* @nlmsg_data(%struct.nlmsghdr*) #1

declare dso_local { i64, i32 } @NETLINK_CB(%struct.sk_buff*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @verify_newsa_info(%struct.xfrm_usersa_info*, %struct.nlattr**) #1

declare dso_local %struct.xfrm_state* @xfrm_state_construct(%struct.net*, %struct.xfrm_usersa_info*, %struct.nlattr**, i32*) #1

declare dso_local i32 @xfrm_state_hold(%struct.xfrm_state*) #1

declare dso_local i32 @xfrm_state_add(%struct.xfrm_state*) #1

declare dso_local i32 @xfrm_state_update(%struct.xfrm_state*) #1

declare dso_local i32 @xfrm_audit_state_add(%struct.xfrm_state*, i32, i32, i32, i32) #1

declare dso_local i32 @__xfrm_state_put(%struct.xfrm_state*) #1

declare dso_local i32 @km_state_notify(%struct.xfrm_state*, %struct.km_event*) #1

declare dso_local i32 @xfrm_state_put(%struct.xfrm_state*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

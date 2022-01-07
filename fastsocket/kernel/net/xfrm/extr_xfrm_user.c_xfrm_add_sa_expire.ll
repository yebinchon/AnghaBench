; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/xfrm/extr_xfrm_user.c_xfrm_add_sa_expire.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/xfrm/extr_xfrm_user.c_xfrm_add_sa_expire.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32 }
%struct.sk_buff = type { i32 }
%struct.nlmsghdr = type { i32 }
%struct.nlattr = type { i32 }
%struct.net = type { i32 }
%struct.xfrm_state = type { i32, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i64 }
%struct.xfrm_user_expire = type { i64, %struct.xfrm_usersa_info }
%struct.xfrm_usersa_info = type { i32, %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32, i32, i32 }
%struct.xfrm_mark = type { i32 }
%struct.TYPE_8__ = type { i32, i32, i32 }

@ENOENT = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@XFRM_STATE_VALID = common dso_local global i64 0, align 8
@current = common dso_local global %struct.TYPE_7__* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*, %struct.nlmsghdr*, %struct.nlattr**)* @xfrm_add_sa_expire to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @xfrm_add_sa_expire(%struct.sk_buff* %0, %struct.nlmsghdr* %1, %struct.nlattr** %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.sk_buff*, align 8
  %6 = alloca %struct.nlmsghdr*, align 8
  %7 = alloca %struct.nlattr**, align 8
  %8 = alloca %struct.net*, align 8
  %9 = alloca %struct.xfrm_state*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.xfrm_user_expire*, align 8
  %12 = alloca %struct.xfrm_usersa_info*, align 8
  %13 = alloca %struct.xfrm_mark, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca %struct.TYPE_8__, align 4
  %17 = alloca { i64, i32 }, align 8
  %18 = alloca i32, align 4
  %19 = alloca %struct.TYPE_8__, align 4
  %20 = alloca { i64, i32 }, align 8
  %21 = alloca i32, align 4
  %22 = alloca %struct.TYPE_8__, align 4
  %23 = alloca { i64, i32 }, align 8
  store %struct.sk_buff* %0, %struct.sk_buff** %5, align 8
  store %struct.nlmsghdr* %1, %struct.nlmsghdr** %6, align 8
  store %struct.nlattr** %2, %struct.nlattr*** %7, align 8
  %24 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %25 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = call %struct.net* @sock_net(i32 %26)
  store %struct.net* %27, %struct.net** %8, align 8
  %28 = load %struct.nlmsghdr*, %struct.nlmsghdr** %6, align 8
  %29 = call %struct.xfrm_user_expire* @nlmsg_data(%struct.nlmsghdr* %28)
  store %struct.xfrm_user_expire* %29, %struct.xfrm_user_expire** %11, align 8
  %30 = load %struct.xfrm_user_expire*, %struct.xfrm_user_expire** %11, align 8
  %31 = getelementptr inbounds %struct.xfrm_user_expire, %struct.xfrm_user_expire* %30, i32 0, i32 1
  store %struct.xfrm_usersa_info* %31, %struct.xfrm_usersa_info** %12, align 8
  %32 = load %struct.nlattr**, %struct.nlattr*** %7, align 8
  %33 = call i32 @xfrm_mark_get(%struct.nlattr** %32, %struct.xfrm_mark* %13)
  store i32 %33, i32* %14, align 4
  %34 = load %struct.net*, %struct.net** %8, align 8
  %35 = load i32, i32* %14, align 4
  %36 = load %struct.xfrm_usersa_info*, %struct.xfrm_usersa_info** %12, align 8
  %37 = getelementptr inbounds %struct.xfrm_usersa_info, %struct.xfrm_usersa_info* %36, i32 0, i32 1
  %38 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %37, i32 0, i32 2
  %39 = load %struct.xfrm_usersa_info*, %struct.xfrm_usersa_info** %12, align 8
  %40 = getelementptr inbounds %struct.xfrm_usersa_info, %struct.xfrm_usersa_info* %39, i32 0, i32 1
  %41 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 4
  %43 = load %struct.xfrm_usersa_info*, %struct.xfrm_usersa_info** %12, align 8
  %44 = getelementptr inbounds %struct.xfrm_usersa_info, %struct.xfrm_usersa_info* %43, i32 0, i32 1
  %45 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = load %struct.xfrm_usersa_info*, %struct.xfrm_usersa_info** %12, align 8
  %48 = getelementptr inbounds %struct.xfrm_usersa_info, %struct.xfrm_usersa_info* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = call %struct.xfrm_state* @xfrm_state_lookup_with_mark(%struct.net* %34, i32 %35, i32* %38, i32 %42, i32 %46, i32 %49)
  store %struct.xfrm_state* %50, %struct.xfrm_state** %9, align 8
  %51 = load i32, i32* @ENOENT, align 4
  %52 = sub nsw i32 0, %51
  store i32 %52, i32* %10, align 4
  %53 = load %struct.xfrm_state*, %struct.xfrm_state** %9, align 8
  %54 = icmp eq %struct.xfrm_state* %53, null
  br i1 %54, label %55, label %57

55:                                               ; preds = %3
  %56 = load i32, i32* %10, align 4
  store i32 %56, i32* %4, align 4
  br label %117

57:                                               ; preds = %3
  %58 = load %struct.xfrm_state*, %struct.xfrm_state** %9, align 8
  %59 = getelementptr inbounds %struct.xfrm_state, %struct.xfrm_state* %58, i32 0, i32 0
  %60 = call i32 @spin_lock_bh(i32* %59)
  %61 = load i32, i32* @EINVAL, align 4
  %62 = sub nsw i32 0, %61
  store i32 %62, i32* %10, align 4
  %63 = load %struct.xfrm_state*, %struct.xfrm_state** %9, align 8
  %64 = getelementptr inbounds %struct.xfrm_state, %struct.xfrm_state* %63, i32 0, i32 1
  %65 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %64, i32 0, i32 0
  %66 = load i64, i64* %65, align 8
  %67 = load i64, i64* @XFRM_STATE_VALID, align 8
  %68 = icmp ne i64 %66, %67
  br i1 %68, label %69, label %70

69:                                               ; preds = %57
  br label %110

70:                                               ; preds = %57
  %71 = load %struct.xfrm_state*, %struct.xfrm_state** %9, align 8
  %72 = load %struct.xfrm_user_expire*, %struct.xfrm_user_expire** %11, align 8
  %73 = getelementptr inbounds %struct.xfrm_user_expire, %struct.xfrm_user_expire* %72, i32 0, i32 0
  %74 = load i64, i64* %73, align 8
  %75 = load %struct.TYPE_7__*, %struct.TYPE_7__** @current, align 8
  %76 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 4
  %78 = call i32 @km_state_expired(%struct.xfrm_state* %71, i64 %74, i32 %77)
  %79 = load %struct.xfrm_user_expire*, %struct.xfrm_user_expire** %11, align 8
  %80 = getelementptr inbounds %struct.xfrm_user_expire, %struct.xfrm_user_expire* %79, i32 0, i32 0
  %81 = load i64, i64* %80, align 8
  %82 = icmp ne i64 %81, 0
  br i1 %82, label %83, label %109

83:                                               ; preds = %70
  %84 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %85 = call { i64, i32 } @NETLINK_CB(%struct.sk_buff* %84)
  store { i64, i32 } %85, { i64, i32 }* %17, align 8
  %86 = bitcast { i64, i32 }* %17 to i8*
  %87 = bitcast %struct.TYPE_8__* %16 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %87, i8* align 8 %86, i64 12, i1 false)
  %88 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %16, i32 0, i32 2
  %89 = load i32, i32* %88, align 4
  store i32 %89, i32* %15, align 4
  %90 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %91 = call { i64, i32 } @NETLINK_CB(%struct.sk_buff* %90)
  store { i64, i32 } %91, { i64, i32 }* %20, align 8
  %92 = bitcast { i64, i32 }* %20 to i8*
  %93 = bitcast %struct.TYPE_8__* %19 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %93, i8* align 8 %92, i64 12, i1 false)
  %94 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %19, i32 0, i32 1
  %95 = load i32, i32* %94, align 4
  store i32 %95, i32* %18, align 4
  %96 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %97 = call { i64, i32 } @NETLINK_CB(%struct.sk_buff* %96)
  store { i64, i32 } %97, { i64, i32 }* %23, align 8
  %98 = bitcast { i64, i32 }* %23 to i8*
  %99 = bitcast %struct.TYPE_8__* %22 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %99, i8* align 8 %98, i64 12, i1 false)
  %100 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %22, i32 0, i32 0
  %101 = load i32, i32* %100, align 4
  store i32 %101, i32* %21, align 4
  %102 = load %struct.xfrm_state*, %struct.xfrm_state** %9, align 8
  %103 = call i32 @__xfrm_state_delete(%struct.xfrm_state* %102)
  %104 = load %struct.xfrm_state*, %struct.xfrm_state** %9, align 8
  %105 = load i32, i32* %15, align 4
  %106 = load i32, i32* %18, align 4
  %107 = load i32, i32* %21, align 4
  %108 = call i32 @xfrm_audit_state_delete(%struct.xfrm_state* %104, i32 1, i32 %105, i32 %106, i32 %107)
  br label %109

109:                                              ; preds = %83, %70
  store i32 0, i32* %10, align 4
  br label %110

110:                                              ; preds = %109, %69
  %111 = load %struct.xfrm_state*, %struct.xfrm_state** %9, align 8
  %112 = getelementptr inbounds %struct.xfrm_state, %struct.xfrm_state* %111, i32 0, i32 0
  %113 = call i32 @spin_unlock_bh(i32* %112)
  %114 = load %struct.xfrm_state*, %struct.xfrm_state** %9, align 8
  %115 = call i32 @xfrm_state_put(%struct.xfrm_state* %114)
  %116 = load i32, i32* %10, align 4
  store i32 %116, i32* %4, align 4
  br label %117

117:                                              ; preds = %110, %55
  %118 = load i32, i32* %4, align 4
  ret i32 %118
}

declare dso_local %struct.net* @sock_net(i32) #1

declare dso_local %struct.xfrm_user_expire* @nlmsg_data(%struct.nlmsghdr*) #1

declare dso_local i32 @xfrm_mark_get(%struct.nlattr**, %struct.xfrm_mark*) #1

declare dso_local %struct.xfrm_state* @xfrm_state_lookup_with_mark(%struct.net*, i32, i32*, i32, i32, i32) #1

declare dso_local i32 @spin_lock_bh(i32*) #1

declare dso_local i32 @km_state_expired(%struct.xfrm_state*, i64, i32) #1

declare dso_local { i64, i32 } @NETLINK_CB(%struct.sk_buff*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @__xfrm_state_delete(%struct.xfrm_state*) #1

declare dso_local i32 @xfrm_audit_state_delete(%struct.xfrm_state*, i32, i32, i32, i32) #1

declare dso_local i32 @spin_unlock_bh(i32*) #1

declare dso_local i32 @xfrm_state_put(%struct.xfrm_state*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

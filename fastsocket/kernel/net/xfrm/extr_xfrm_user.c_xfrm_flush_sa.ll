; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/xfrm/extr_xfrm_user.c_xfrm_flush_sa.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/xfrm/extr_xfrm_user.c_xfrm_flush_sa.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.nlmsghdr = type { i32, i32, i32 }
%struct.nlattr = type { i32 }
%struct.net = type { i32 }
%struct.km_event = type { %struct.net*, i32, i32, i32, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }
%struct.xfrm_usersa_flush = type { i32 }
%struct.xfrm_audit = type { i32, i32, i32 }
%struct.TYPE_4__ = type { i32, i32, i32 }

@ESRCH = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*, %struct.nlmsghdr*, %struct.nlattr**)* @xfrm_flush_sa to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @xfrm_flush_sa(%struct.sk_buff* %0, %struct.nlmsghdr* %1, %struct.nlattr** %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.sk_buff*, align 8
  %6 = alloca %struct.nlmsghdr*, align 8
  %7 = alloca %struct.nlattr**, align 8
  %8 = alloca %struct.net*, align 8
  %9 = alloca %struct.km_event, align 8
  %10 = alloca %struct.xfrm_usersa_flush*, align 8
  %11 = alloca %struct.xfrm_audit, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.TYPE_4__, align 4
  %14 = alloca { i64, i32 }, align 8
  %15 = alloca %struct.TYPE_4__, align 4
  %16 = alloca { i64, i32 }, align 8
  %17 = alloca %struct.TYPE_4__, align 4
  %18 = alloca { i64, i32 }, align 8
  store %struct.sk_buff* %0, %struct.sk_buff** %5, align 8
  store %struct.nlmsghdr* %1, %struct.nlmsghdr** %6, align 8
  store %struct.nlattr** %2, %struct.nlattr*** %7, align 8
  %19 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %20 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = call %struct.net* @sock_net(i32 %21)
  store %struct.net* %22, %struct.net** %8, align 8
  %23 = load %struct.nlmsghdr*, %struct.nlmsghdr** %6, align 8
  %24 = call %struct.xfrm_usersa_flush* @nlmsg_data(%struct.nlmsghdr* %23)
  store %struct.xfrm_usersa_flush* %24, %struct.xfrm_usersa_flush** %10, align 8
  %25 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %26 = call { i64, i32 } @NETLINK_CB(%struct.sk_buff* %25)
  store { i64, i32 } %26, { i64, i32 }* %14, align 8
  %27 = bitcast { i64, i32 }* %14 to i8*
  %28 = bitcast %struct.TYPE_4__* %13 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %28, i8* align 8 %27, i64 12, i1 false)
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i32 0, i32 2
  %30 = load i32, i32* %29, align 4
  %31 = getelementptr inbounds %struct.xfrm_audit, %struct.xfrm_audit* %11, i32 0, i32 2
  store i32 %30, i32* %31, align 4
  %32 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %33 = call { i64, i32 } @NETLINK_CB(%struct.sk_buff* %32)
  store { i64, i32 } %33, { i64, i32 }* %16, align 8
  %34 = bitcast { i64, i32 }* %16 to i8*
  %35 = bitcast %struct.TYPE_4__* %15 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %35, i8* align 8 %34, i64 12, i1 false)
  %36 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = getelementptr inbounds %struct.xfrm_audit, %struct.xfrm_audit* %11, i32 0, i32 1
  store i32 %37, i32* %38, align 4
  %39 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %40 = call { i64, i32 } @NETLINK_CB(%struct.sk_buff* %39)
  store { i64, i32 } %40, { i64, i32 }* %18, align 8
  %41 = bitcast { i64, i32 }* %18 to i8*
  %42 = bitcast %struct.TYPE_4__* %17 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %42, i8* align 8 %41, i64 12, i1 false)
  %43 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = getelementptr inbounds %struct.xfrm_audit, %struct.xfrm_audit* %11, i32 0, i32 0
  store i32 %44, i32* %45, align 4
  %46 = load %struct.net*, %struct.net** %8, align 8
  %47 = load %struct.xfrm_usersa_flush*, %struct.xfrm_usersa_flush** %10, align 8
  %48 = getelementptr inbounds %struct.xfrm_usersa_flush, %struct.xfrm_usersa_flush* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = call i32 @xfrm_state_flush(%struct.net* %46, i32 %49, %struct.xfrm_audit* %11)
  store i32 %50, i32* %12, align 4
  %51 = load i32, i32* %12, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %61

53:                                               ; preds = %3
  %54 = load i32, i32* %12, align 4
  %55 = load i32, i32* @ESRCH, align 4
  %56 = sub nsw i32 0, %55
  %57 = icmp eq i32 %54, %56
  br i1 %57, label %58, label %59

58:                                               ; preds = %53
  store i32 0, i32* %4, align 4
  br label %82

59:                                               ; preds = %53
  %60 = load i32, i32* %12, align 4
  store i32 %60, i32* %4, align 4
  br label %82

61:                                               ; preds = %3
  %62 = load %struct.xfrm_usersa_flush*, %struct.xfrm_usersa_flush** %10, align 8
  %63 = getelementptr inbounds %struct.xfrm_usersa_flush, %struct.xfrm_usersa_flush* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = getelementptr inbounds %struct.km_event, %struct.km_event* %9, i32 0, i32 4
  %66 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %65, i32 0, i32 0
  store i32 %64, i32* %66, align 4
  %67 = load %struct.nlmsghdr*, %struct.nlmsghdr** %6, align 8
  %68 = getelementptr inbounds %struct.nlmsghdr, %struct.nlmsghdr* %67, i32 0, i32 2
  %69 = load i32, i32* %68, align 4
  %70 = getelementptr inbounds %struct.km_event, %struct.km_event* %9, i32 0, i32 3
  store i32 %69, i32* %70, align 8
  %71 = load %struct.nlmsghdr*, %struct.nlmsghdr** %6, align 8
  %72 = getelementptr inbounds %struct.nlmsghdr, %struct.nlmsghdr* %71, i32 0, i32 1
  %73 = load i32, i32* %72, align 4
  %74 = getelementptr inbounds %struct.km_event, %struct.km_event* %9, i32 0, i32 2
  store i32 %73, i32* %74, align 4
  %75 = load %struct.nlmsghdr*, %struct.nlmsghdr** %6, align 8
  %76 = getelementptr inbounds %struct.nlmsghdr, %struct.nlmsghdr* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 4
  %78 = getelementptr inbounds %struct.km_event, %struct.km_event* %9, i32 0, i32 1
  store i32 %77, i32* %78, align 8
  %79 = load %struct.net*, %struct.net** %8, align 8
  %80 = getelementptr inbounds %struct.km_event, %struct.km_event* %9, i32 0, i32 0
  store %struct.net* %79, %struct.net** %80, align 8
  %81 = call i32 @km_state_notify(i32* null, %struct.km_event* %9)
  store i32 0, i32* %4, align 4
  br label %82

82:                                               ; preds = %61, %59, %58
  %83 = load i32, i32* %4, align 4
  ret i32 %83
}

declare dso_local %struct.net* @sock_net(i32) #1

declare dso_local %struct.xfrm_usersa_flush* @nlmsg_data(%struct.nlmsghdr*) #1

declare dso_local { i64, i32 } @NETLINK_CB(%struct.sk_buff*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @xfrm_state_flush(%struct.net*, i32, %struct.xfrm_audit*) #1

declare dso_local i32 @km_state_notify(i32*, %struct.km_event*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

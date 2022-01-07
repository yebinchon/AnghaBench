; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/xfrm/extr_xfrm_user.c_xfrm_flush_policy.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/xfrm/extr_xfrm_user.c_xfrm_flush_policy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.nlmsghdr = type { i32, i32, i32 }
%struct.nlattr = type { i32 }
%struct.net = type { i32 }
%struct.km_event = type { %struct.net*, i32, i32, i32, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }
%struct.xfrm_audit = type { i32, i32, i32 }
%struct.TYPE_4__ = type { i32, i32, i32 }

@XFRM_POLICY_TYPE_MAIN = common dso_local global i32 0, align 4
@ESRCH = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*, %struct.nlmsghdr*, %struct.nlattr**)* @xfrm_flush_policy to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @xfrm_flush_policy(%struct.sk_buff* %0, %struct.nlmsghdr* %1, %struct.nlattr** %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.sk_buff*, align 8
  %6 = alloca %struct.nlmsghdr*, align 8
  %7 = alloca %struct.nlattr**, align 8
  %8 = alloca %struct.net*, align 8
  %9 = alloca %struct.km_event, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.xfrm_audit, align 4
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
  %23 = load i32, i32* @XFRM_POLICY_TYPE_MAIN, align 4
  store i32 %23, i32* %10, align 4
  %24 = load %struct.nlattr**, %struct.nlattr*** %7, align 8
  %25 = call i32 @copy_from_user_policy_type(i32* %10, %struct.nlattr** %24)
  store i32 %25, i32* %11, align 4
  %26 = load i32, i32* %11, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %30

28:                                               ; preds = %3
  %29 = load i32, i32* %11, align 4
  store i32 %29, i32* %4, align 4
  br label %84

30:                                               ; preds = %3
  %31 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %32 = call { i64, i32 } @NETLINK_CB(%struct.sk_buff* %31)
  store { i64, i32 } %32, { i64, i32 }* %14, align 8
  %33 = bitcast { i64, i32 }* %14 to i8*
  %34 = bitcast %struct.TYPE_4__* %13 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %34, i8* align 8 %33, i64 12, i1 false)
  %35 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i32 0, i32 2
  %36 = load i32, i32* %35, align 4
  %37 = getelementptr inbounds %struct.xfrm_audit, %struct.xfrm_audit* %12, i32 0, i32 2
  store i32 %36, i32* %37, align 4
  %38 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %39 = call { i64, i32 } @NETLINK_CB(%struct.sk_buff* %38)
  store { i64, i32 } %39, { i64, i32 }* %16, align 8
  %40 = bitcast { i64, i32 }* %16 to i8*
  %41 = bitcast %struct.TYPE_4__* %15 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %41, i8* align 8 %40, i64 12, i1 false)
  %42 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  %44 = getelementptr inbounds %struct.xfrm_audit, %struct.xfrm_audit* %12, i32 0, i32 1
  store i32 %43, i32* %44, align 4
  %45 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %46 = call { i64, i32 } @NETLINK_CB(%struct.sk_buff* %45)
  store { i64, i32 } %46, { i64, i32 }* %18, align 8
  %47 = bitcast { i64, i32 }* %18 to i8*
  %48 = bitcast %struct.TYPE_4__* %17 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %48, i8* align 8 %47, i64 12, i1 false)
  %49 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = getelementptr inbounds %struct.xfrm_audit, %struct.xfrm_audit* %12, i32 0, i32 0
  store i32 %50, i32* %51, align 4
  %52 = load %struct.net*, %struct.net** %8, align 8
  %53 = load i32, i32* %10, align 4
  %54 = call i32 @xfrm_policy_flush(%struct.net* %52, i32 %53, %struct.xfrm_audit* %12)
  store i32 %54, i32* %11, align 4
  %55 = load i32, i32* %11, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %65

57:                                               ; preds = %30
  %58 = load i32, i32* %11, align 4
  %59 = load i32, i32* @ESRCH, align 4
  %60 = sub nsw i32 0, %59
  %61 = icmp eq i32 %58, %60
  br i1 %61, label %62, label %63

62:                                               ; preds = %57
  store i32 0, i32* %4, align 4
  br label %84

63:                                               ; preds = %57
  %64 = load i32, i32* %11, align 4
  store i32 %64, i32* %4, align 4
  br label %84

65:                                               ; preds = %30
  %66 = load i32, i32* %10, align 4
  %67 = getelementptr inbounds %struct.km_event, %struct.km_event* %9, i32 0, i32 4
  %68 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %67, i32 0, i32 0
  store i32 %66, i32* %68, align 4
  %69 = load %struct.nlmsghdr*, %struct.nlmsghdr** %6, align 8
  %70 = getelementptr inbounds %struct.nlmsghdr, %struct.nlmsghdr* %69, i32 0, i32 2
  %71 = load i32, i32* %70, align 4
  %72 = getelementptr inbounds %struct.km_event, %struct.km_event* %9, i32 0, i32 3
  store i32 %71, i32* %72, align 8
  %73 = load %struct.nlmsghdr*, %struct.nlmsghdr** %6, align 8
  %74 = getelementptr inbounds %struct.nlmsghdr, %struct.nlmsghdr* %73, i32 0, i32 1
  %75 = load i32, i32* %74, align 4
  %76 = getelementptr inbounds %struct.km_event, %struct.km_event* %9, i32 0, i32 2
  store i32 %75, i32* %76, align 4
  %77 = load %struct.nlmsghdr*, %struct.nlmsghdr** %6, align 8
  %78 = getelementptr inbounds %struct.nlmsghdr, %struct.nlmsghdr* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 4
  %80 = getelementptr inbounds %struct.km_event, %struct.km_event* %9, i32 0, i32 1
  store i32 %79, i32* %80, align 8
  %81 = load %struct.net*, %struct.net** %8, align 8
  %82 = getelementptr inbounds %struct.km_event, %struct.km_event* %9, i32 0, i32 0
  store %struct.net* %81, %struct.net** %82, align 8
  %83 = call i32 @km_policy_notify(i32* null, i32 0, %struct.km_event* %9)
  store i32 0, i32* %4, align 4
  br label %84

84:                                               ; preds = %65, %63, %62, %28
  %85 = load i32, i32* %4, align 4
  ret i32 %85
}

declare dso_local %struct.net* @sock_net(i32) #1

declare dso_local i32 @copy_from_user_policy_type(i32*, %struct.nlattr**) #1

declare dso_local { i64, i32 } @NETLINK_CB(%struct.sk_buff*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @xfrm_policy_flush(%struct.net*, i32, %struct.xfrm_audit*) #1

declare dso_local i32 @km_policy_notify(i32*, i32, %struct.km_event*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

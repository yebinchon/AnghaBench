; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/key/extr_af_key.c_pfkey_spdflush.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/key/extr_af_key.c_pfkey_spdflush.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sock = type { i32 }
%struct.sk_buff = type { i32 }
%struct.sadb_msg = type { i32, i32 }
%struct.net = type { i32 }
%struct.km_event = type { %struct.net*, i32, i32, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.xfrm_audit = type { i64, i32, i32 }

@current = common dso_local global i32 0, align 4
@XFRM_POLICY_TYPE_MAIN = common dso_local global i32 0, align 4
@ESRCH = common dso_local global i32 0, align 4
@XFRM_MSG_FLUSHPOLICY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sock*, %struct.sk_buff*, %struct.sadb_msg*, i8**)* @pfkey_spdflush to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pfkey_spdflush(%struct.sock* %0, %struct.sk_buff* %1, %struct.sadb_msg* %2, i8** %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.sock*, align 8
  %7 = alloca %struct.sk_buff*, align 8
  %8 = alloca %struct.sadb_msg*, align 8
  %9 = alloca i8**, align 8
  %10 = alloca %struct.net*, align 8
  %11 = alloca %struct.km_event, align 8
  %12 = alloca %struct.xfrm_audit, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.sock* %0, %struct.sock** %6, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %7, align 8
  store %struct.sadb_msg* %2, %struct.sadb_msg** %8, align 8
  store i8** %3, i8*** %9, align 8
  %15 = load %struct.sock*, %struct.sock** %6, align 8
  %16 = call %struct.net* @sock_net(%struct.sock* %15)
  store %struct.net* %16, %struct.net** %10, align 8
  %17 = load i32, i32* @current, align 4
  %18 = call i32 @audit_get_loginuid(i32 %17)
  %19 = getelementptr inbounds %struct.xfrm_audit, %struct.xfrm_audit* %12, i32 0, i32 2
  store i32 %18, i32* %19, align 4
  %20 = load i32, i32* @current, align 4
  %21 = call i32 @audit_get_sessionid(i32 %20)
  %22 = getelementptr inbounds %struct.xfrm_audit, %struct.xfrm_audit* %12, i32 0, i32 1
  store i32 %21, i32* %22, align 8
  %23 = getelementptr inbounds %struct.xfrm_audit, %struct.xfrm_audit* %12, i32 0, i32 0
  store i64 0, i64* %23, align 8
  %24 = load %struct.net*, %struct.net** %10, align 8
  %25 = load i32, i32* @XFRM_POLICY_TYPE_MAIN, align 4
  %26 = call i32 @xfrm_policy_flush(%struct.net* %24, i32 %25, %struct.xfrm_audit* %12)
  store i32 %26, i32* %13, align 4
  %27 = load %struct.sock*, %struct.sock** %6, align 8
  %28 = load %struct.sadb_msg*, %struct.sadb_msg** %8, align 8
  %29 = call i32 @unicast_flush_resp(%struct.sock* %27, %struct.sadb_msg* %28)
  store i32 %29, i32* %14, align 4
  %30 = load i32, i32* %13, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %35, label %32

32:                                               ; preds = %4
  %33 = load i32, i32* %14, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %43

35:                                               ; preds = %32, %4
  %36 = load i32, i32* %13, align 4
  %37 = load i32, i32* @ESRCH, align 4
  %38 = sub nsw i32 0, %37
  %39 = icmp eq i32 %36, %38
  br i1 %39, label %40, label %41

40:                                               ; preds = %35
  store i32 0, i32* %5, align 4
  br label %60

41:                                               ; preds = %35
  %42 = load i32, i32* %13, align 4
  store i32 %42, i32* %5, align 4
  br label %60

43:                                               ; preds = %32
  %44 = load i32, i32* @XFRM_POLICY_TYPE_MAIN, align 4
  %45 = getelementptr inbounds %struct.km_event, %struct.km_event* %11, i32 0, i32 4
  %46 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %45, i32 0, i32 0
  store i32 %44, i32* %46, align 4
  %47 = load i32, i32* @XFRM_MSG_FLUSHPOLICY, align 4
  %48 = getelementptr inbounds %struct.km_event, %struct.km_event* %11, i32 0, i32 3
  store i32 %47, i32* %48, align 8
  %49 = load %struct.sadb_msg*, %struct.sadb_msg** %8, align 8
  %50 = getelementptr inbounds %struct.sadb_msg, %struct.sadb_msg* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 4
  %52 = getelementptr inbounds %struct.km_event, %struct.km_event* %11, i32 0, i32 2
  store i32 %51, i32* %52, align 4
  %53 = load %struct.sadb_msg*, %struct.sadb_msg** %8, align 8
  %54 = getelementptr inbounds %struct.sadb_msg, %struct.sadb_msg* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = getelementptr inbounds %struct.km_event, %struct.km_event* %11, i32 0, i32 1
  store i32 %55, i32* %56, align 8
  %57 = load %struct.net*, %struct.net** %10, align 8
  %58 = getelementptr inbounds %struct.km_event, %struct.km_event* %11, i32 0, i32 0
  store %struct.net* %57, %struct.net** %58, align 8
  %59 = call i32 @km_policy_notify(i32* null, i32 0, %struct.km_event* %11)
  store i32 0, i32* %5, align 4
  br label %60

60:                                               ; preds = %43, %41, %40
  %61 = load i32, i32* %5, align 4
  ret i32 %61
}

declare dso_local %struct.net* @sock_net(%struct.sock*) #1

declare dso_local i32 @audit_get_loginuid(i32) #1

declare dso_local i32 @audit_get_sessionid(i32) #1

declare dso_local i32 @xfrm_policy_flush(%struct.net*, i32, %struct.xfrm_audit*) #1

declare dso_local i32 @unicast_flush_resp(%struct.sock*, %struct.sadb_msg*) #1

declare dso_local i32 @km_policy_notify(i32*, i32, %struct.km_event*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

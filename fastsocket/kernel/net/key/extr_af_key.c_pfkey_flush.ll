; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/key/extr_af_key.c_pfkey_flush.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/key/extr_af_key.c_pfkey_flush.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sock = type { i32 }
%struct.sk_buff = type { i32 }
%struct.sadb_msg = type { i32, i32, i32 }
%struct.net = type { i32 }
%struct.km_event = type { %struct.net*, i32, i32, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.xfrm_audit = type { i64, i32, i32 }

@EINVAL = common dso_local global i32 0, align 4
@current = common dso_local global i32 0, align 4
@ESRCH = common dso_local global i32 0, align 4
@XFRM_MSG_FLUSHSA = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sock*, %struct.sk_buff*, %struct.sadb_msg*, i8**)* @pfkey_flush to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pfkey_flush(%struct.sock* %0, %struct.sk_buff* %1, %struct.sadb_msg* %2, i8** %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.sock*, align 8
  %7 = alloca %struct.sk_buff*, align 8
  %8 = alloca %struct.sadb_msg*, align 8
  %9 = alloca i8**, align 8
  %10 = alloca %struct.net*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.km_event, align 8
  %13 = alloca %struct.xfrm_audit, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.sock* %0, %struct.sock** %6, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %7, align 8
  store %struct.sadb_msg* %2, %struct.sadb_msg** %8, align 8
  store i8** %3, i8*** %9, align 8
  %16 = load %struct.sock*, %struct.sock** %6, align 8
  %17 = call %struct.net* @sock_net(%struct.sock* %16)
  store %struct.net* %17, %struct.net** %10, align 8
  %18 = load %struct.sadb_msg*, %struct.sadb_msg** %8, align 8
  %19 = getelementptr inbounds %struct.sadb_msg, %struct.sadb_msg* %18, i32 0, i32 2
  %20 = load i32, i32* %19, align 4
  %21 = call i32 @pfkey_satype2proto(i32 %20)
  store i32 %21, i32* %11, align 4
  %22 = load i32, i32* %11, align 4
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %24, label %27

24:                                               ; preds = %4
  %25 = load i32, i32* @EINVAL, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %5, align 4
  br label %78

27:                                               ; preds = %4
  %28 = load i32, i32* @current, align 4
  %29 = call i32 @audit_get_loginuid(i32 %28)
  %30 = getelementptr inbounds %struct.xfrm_audit, %struct.xfrm_audit* %13, i32 0, i32 2
  store i32 %29, i32* %30, align 4
  %31 = load i32, i32* @current, align 4
  %32 = call i32 @audit_get_sessionid(i32 %31)
  %33 = getelementptr inbounds %struct.xfrm_audit, %struct.xfrm_audit* %13, i32 0, i32 1
  store i32 %32, i32* %33, align 8
  %34 = getelementptr inbounds %struct.xfrm_audit, %struct.xfrm_audit* %13, i32 0, i32 0
  store i64 0, i64* %34, align 8
  %35 = load %struct.net*, %struct.net** %10, align 8
  %36 = load i32, i32* %11, align 4
  %37 = call i32 @xfrm_state_flush(%struct.net* %35, i32 %36, %struct.xfrm_audit* %13)
  store i32 %37, i32* %14, align 4
  %38 = load %struct.sock*, %struct.sock** %6, align 8
  %39 = load %struct.sadb_msg*, %struct.sadb_msg** %8, align 8
  %40 = call i32 @unicast_flush_resp(%struct.sock* %38, %struct.sadb_msg* %39)
  store i32 %40, i32* %15, align 4
  %41 = load i32, i32* %14, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %46, label %43

43:                                               ; preds = %27
  %44 = load i32, i32* %15, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %61

46:                                               ; preds = %43, %27
  %47 = load i32, i32* %14, align 4
  %48 = load i32, i32* @ESRCH, align 4
  %49 = sub nsw i32 0, %48
  %50 = icmp eq i32 %47, %49
  br i1 %50, label %51, label %52

51:                                               ; preds = %46
  store i32 0, i32* %14, align 4
  br label %52

52:                                               ; preds = %51, %46
  %53 = load i32, i32* %14, align 4
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %57

55:                                               ; preds = %52
  %56 = load i32, i32* %14, align 4
  br label %59

57:                                               ; preds = %52
  %58 = load i32, i32* %15, align 4
  br label %59

59:                                               ; preds = %57, %55
  %60 = phi i32 [ %56, %55 ], [ %58, %57 ]
  store i32 %60, i32* %5, align 4
  br label %78

61:                                               ; preds = %43
  %62 = load i32, i32* %11, align 4
  %63 = getelementptr inbounds %struct.km_event, %struct.km_event* %12, i32 0, i32 4
  %64 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %63, i32 0, i32 0
  store i32 %62, i32* %64, align 4
  %65 = load %struct.sadb_msg*, %struct.sadb_msg** %8, align 8
  %66 = getelementptr inbounds %struct.sadb_msg, %struct.sadb_msg* %65, i32 0, i32 1
  %67 = load i32, i32* %66, align 4
  %68 = getelementptr inbounds %struct.km_event, %struct.km_event* %12, i32 0, i32 3
  store i32 %67, i32* %68, align 8
  %69 = load %struct.sadb_msg*, %struct.sadb_msg** %8, align 8
  %70 = getelementptr inbounds %struct.sadb_msg, %struct.sadb_msg* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 4
  %72 = getelementptr inbounds %struct.km_event, %struct.km_event* %12, i32 0, i32 2
  store i32 %71, i32* %72, align 4
  %73 = load i32, i32* @XFRM_MSG_FLUSHSA, align 4
  %74 = getelementptr inbounds %struct.km_event, %struct.km_event* %12, i32 0, i32 1
  store i32 %73, i32* %74, align 8
  %75 = load %struct.net*, %struct.net** %10, align 8
  %76 = getelementptr inbounds %struct.km_event, %struct.km_event* %12, i32 0, i32 0
  store %struct.net* %75, %struct.net** %76, align 8
  %77 = call i32 @km_state_notify(i32* null, %struct.km_event* %12)
  store i32 0, i32* %5, align 4
  br label %78

78:                                               ; preds = %61, %59, %24
  %79 = load i32, i32* %5, align 4
  ret i32 %79
}

declare dso_local %struct.net* @sock_net(%struct.sock*) #1

declare dso_local i32 @pfkey_satype2proto(i32) #1

declare dso_local i32 @audit_get_loginuid(i32) #1

declare dso_local i32 @audit_get_sessionid(i32) #1

declare dso_local i32 @xfrm_state_flush(%struct.net*, i32, %struct.xfrm_audit*) #1

declare dso_local i32 @unicast_flush_resp(%struct.sock*, %struct.sadb_msg*) #1

declare dso_local i32 @km_state_notify(i32*, %struct.km_event*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

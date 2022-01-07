; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/key/extr_af_key.c_pfkey_spdget.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/key/extr_af_key.c_pfkey_spdget.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sock = type { i32 }
%struct.sk_buff = type { i32 }
%struct.sadb_msg = type { i64, i32, i32 }
%struct.net = type { i32 }
%struct.sadb_x_policy = type { i32 }
%struct.xfrm_policy = type { i32 }
%struct.km_event = type { i32, %struct.TYPE_2__, i32, i32 }
%struct.TYPE_2__ = type { i32 }

@SADB_X_EXT_POLICY = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@XFRM_POLICY_MAX = common dso_local global i32 0, align 4
@SADB_X_SPDDELETE2 = common dso_local global i64 0, align 8
@DUMMY_MARK = common dso_local global i32 0, align 4
@XFRM_POLICY_TYPE_MAIN = common dso_local global i32 0, align 4
@ENOENT = common dso_local global i32 0, align 4
@current = common dso_local global i32 0, align 4
@XFRM_MSG_DELPOLICY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sock*, %struct.sk_buff*, %struct.sadb_msg*, i8**)* @pfkey_spdget to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pfkey_spdget(%struct.sock* %0, %struct.sk_buff* %1, %struct.sadb_msg* %2, i8** %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.sock*, align 8
  %7 = alloca %struct.sk_buff*, align 8
  %8 = alloca %struct.sadb_msg*, align 8
  %9 = alloca i8**, align 8
  %10 = alloca %struct.net*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.sadb_x_policy*, align 8
  %15 = alloca %struct.xfrm_policy*, align 8
  %16 = alloca %struct.km_event, align 4
  store %struct.sock* %0, %struct.sock** %6, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %7, align 8
  store %struct.sadb_msg* %2, %struct.sadb_msg** %8, align 8
  store i8** %3, i8*** %9, align 8
  %17 = load %struct.sock*, %struct.sock** %6, align 8
  %18 = call %struct.net* @sock_net(%struct.sock* %17)
  store %struct.net* %18, %struct.net** %10, align 8
  store i32 0, i32* %12, align 4
  %19 = load i8**, i8*** %9, align 8
  %20 = load i32, i32* @SADB_X_EXT_POLICY, align 4
  %21 = sub nsw i32 %20, 1
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds i8*, i8** %19, i64 %22
  %24 = load i8*, i8** %23, align 8
  %25 = bitcast i8* %24 to %struct.sadb_x_policy*
  store %struct.sadb_x_policy* %25, %struct.sadb_x_policy** %14, align 8
  %26 = icmp eq %struct.sadb_x_policy* %25, null
  br i1 %26, label %27, label %30

27:                                               ; preds = %4
  %28 = load i32, i32* @EINVAL, align 4
  %29 = sub nsw i32 0, %28
  store i32 %29, i32* %5, align 4
  br label %106

30:                                               ; preds = %4
  %31 = load %struct.sadb_x_policy*, %struct.sadb_x_policy** %14, align 8
  %32 = getelementptr inbounds %struct.sadb_x_policy, %struct.sadb_x_policy* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = call i32 @xfrm_policy_id2dir(i32 %33)
  store i32 %34, i32* %11, align 4
  %35 = load i32, i32* %11, align 4
  %36 = load i32, i32* @XFRM_POLICY_MAX, align 4
  %37 = icmp uge i32 %35, %36
  br i1 %37, label %38, label %41

38:                                               ; preds = %30
  %39 = load i32, i32* @EINVAL, align 4
  %40 = sub nsw i32 0, %39
  store i32 %40, i32* %5, align 4
  br label %106

41:                                               ; preds = %30
  %42 = load %struct.sadb_msg*, %struct.sadb_msg** %8, align 8
  %43 = getelementptr inbounds %struct.sadb_msg, %struct.sadb_msg* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = load i64, i64* @SADB_X_SPDDELETE2, align 8
  %46 = icmp eq i64 %44, %45
  %47 = zext i1 %46 to i32
  store i32 %47, i32* %13, align 4
  %48 = load %struct.net*, %struct.net** %10, align 8
  %49 = load i32, i32* @DUMMY_MARK, align 4
  %50 = load i32, i32* @XFRM_POLICY_TYPE_MAIN, align 4
  %51 = load i32, i32* %11, align 4
  %52 = load %struct.sadb_x_policy*, %struct.sadb_x_policy** %14, align 8
  %53 = getelementptr inbounds %struct.sadb_x_policy, %struct.sadb_x_policy* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = load i32, i32* %13, align 4
  %56 = call %struct.xfrm_policy* @xfrm_policy_byid(%struct.net* %48, i32 %49, i32 %50, i32 %51, i32 %54, i32 %55, i32* %12)
  store %struct.xfrm_policy* %56, %struct.xfrm_policy** %15, align 8
  %57 = load %struct.xfrm_policy*, %struct.xfrm_policy** %15, align 8
  %58 = icmp eq %struct.xfrm_policy* %57, null
  br i1 %58, label %59, label %62

59:                                               ; preds = %41
  %60 = load i32, i32* @ENOENT, align 4
  %61 = sub nsw i32 0, %60
  store i32 %61, i32* %5, align 4
  br label %106

62:                                               ; preds = %41
  %63 = load i32, i32* %13, align 4
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %95

65:                                               ; preds = %62
  %66 = load %struct.xfrm_policy*, %struct.xfrm_policy** %15, align 8
  %67 = load i32, i32* %12, align 4
  %68 = icmp ne i32 %67, 0
  %69 = zext i1 %68 to i64
  %70 = select i1 %68, i32 0, i32 1
  %71 = load i32, i32* @current, align 4
  %72 = call i32 @audit_get_loginuid(i32 %71)
  %73 = load i32, i32* @current, align 4
  %74 = call i32 @audit_get_sessionid(i32 %73)
  %75 = call i32 @xfrm_audit_policy_delete(%struct.xfrm_policy* %66, i32 %70, i32 %72, i32 %74, i32 0)
  %76 = load i32, i32* %12, align 4
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %78, label %79

78:                                               ; preds = %65
  br label %102

79:                                               ; preds = %65
  %80 = load %struct.sadb_msg*, %struct.sadb_msg** %8, align 8
  %81 = getelementptr inbounds %struct.sadb_msg, %struct.sadb_msg* %80, i32 0, i32 2
  %82 = load i32, i32* %81, align 4
  %83 = getelementptr inbounds %struct.km_event, %struct.km_event* %16, i32 0, i32 3
  store i32 %82, i32* %83, align 4
  %84 = load %struct.sadb_msg*, %struct.sadb_msg** %8, align 8
  %85 = getelementptr inbounds %struct.sadb_msg, %struct.sadb_msg* %84, i32 0, i32 1
  %86 = load i32, i32* %85, align 8
  %87 = getelementptr inbounds %struct.km_event, %struct.km_event* %16, i32 0, i32 2
  store i32 %86, i32* %87, align 4
  %88 = getelementptr inbounds %struct.km_event, %struct.km_event* %16, i32 0, i32 1
  %89 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %88, i32 0, i32 0
  store i32 1, i32* %89, align 4
  %90 = load i32, i32* @XFRM_MSG_DELPOLICY, align 4
  %91 = getelementptr inbounds %struct.km_event, %struct.km_event* %16, i32 0, i32 0
  store i32 %90, i32* %91, align 4
  %92 = load %struct.xfrm_policy*, %struct.xfrm_policy** %15, align 8
  %93 = load i32, i32* %11, align 4
  %94 = call i32 @km_policy_notify(%struct.xfrm_policy* %92, i32 %93, %struct.km_event* %16)
  br label %101

95:                                               ; preds = %62
  %96 = load %struct.sock*, %struct.sock** %6, align 8
  %97 = load %struct.xfrm_policy*, %struct.xfrm_policy** %15, align 8
  %98 = load %struct.sadb_msg*, %struct.sadb_msg** %8, align 8
  %99 = load i32, i32* %11, align 4
  %100 = call i32 @key_pol_get_resp(%struct.sock* %96, %struct.xfrm_policy* %97, %struct.sadb_msg* %98, i32 %99)
  store i32 %100, i32* %12, align 4
  br label %101

101:                                              ; preds = %95, %79
  br label %102

102:                                              ; preds = %101, %78
  %103 = load %struct.xfrm_policy*, %struct.xfrm_policy** %15, align 8
  %104 = call i32 @xfrm_pol_put(%struct.xfrm_policy* %103)
  %105 = load i32, i32* %12, align 4
  store i32 %105, i32* %5, align 4
  br label %106

106:                                              ; preds = %102, %59, %38, %27
  %107 = load i32, i32* %5, align 4
  ret i32 %107
}

declare dso_local %struct.net* @sock_net(%struct.sock*) #1

declare dso_local i32 @xfrm_policy_id2dir(i32) #1

declare dso_local %struct.xfrm_policy* @xfrm_policy_byid(%struct.net*, i32, i32, i32, i32, i32, i32*) #1

declare dso_local i32 @xfrm_audit_policy_delete(%struct.xfrm_policy*, i32, i32, i32, i32) #1

declare dso_local i32 @audit_get_loginuid(i32) #1

declare dso_local i32 @audit_get_sessionid(i32) #1

declare dso_local i32 @km_policy_notify(%struct.xfrm_policy*, i32, %struct.km_event*) #1

declare dso_local i32 @key_pol_get_resp(%struct.sock*, %struct.xfrm_policy*, %struct.sadb_msg*, i32) #1

declare dso_local i32 @xfrm_pol_put(%struct.xfrm_policy*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

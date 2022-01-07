; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/key/extr_af_key.c_pfkey_add.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/key/extr_af_key.c_pfkey_add.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sock = type { i32 }
%struct.sk_buff = type { i32 }
%struct.sadb_msg = type { i64, i32, i32 }
%struct.net = type { i32 }
%struct.xfrm_state = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.km_event = type { i32, i32, i32 }

@SADB_ADD = common dso_local global i64 0, align 8
@current = common dso_local global i32 0, align 4
@XFRM_STATE_DEAD = common dso_local global i32 0, align 4
@XFRM_MSG_NEWSA = common dso_local global i32 0, align 4
@XFRM_MSG_UPDSA = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sock*, %struct.sk_buff*, %struct.sadb_msg*, i8**)* @pfkey_add to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pfkey_add(%struct.sock* %0, %struct.sk_buff* %1, %struct.sadb_msg* %2, i8** %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.sock*, align 8
  %7 = alloca %struct.sk_buff*, align 8
  %8 = alloca %struct.sadb_msg*, align 8
  %9 = alloca i8**, align 8
  %10 = alloca %struct.net*, align 8
  %11 = alloca %struct.xfrm_state*, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.km_event, align 4
  store %struct.sock* %0, %struct.sock** %6, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %7, align 8
  store %struct.sadb_msg* %2, %struct.sadb_msg** %8, align 8
  store i8** %3, i8*** %9, align 8
  %14 = load %struct.sock*, %struct.sock** %6, align 8
  %15 = call %struct.net* @sock_net(%struct.sock* %14)
  store %struct.net* %15, %struct.net** %10, align 8
  %16 = load %struct.net*, %struct.net** %10, align 8
  %17 = load %struct.sadb_msg*, %struct.sadb_msg** %8, align 8
  %18 = load i8**, i8*** %9, align 8
  %19 = call %struct.xfrm_state* @pfkey_msg2xfrm_state(%struct.net* %16, %struct.sadb_msg* %17, i8** %18)
  store %struct.xfrm_state* %19, %struct.xfrm_state** %11, align 8
  %20 = load %struct.xfrm_state*, %struct.xfrm_state** %11, align 8
  %21 = call i64 @IS_ERR(%struct.xfrm_state* %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %26

23:                                               ; preds = %4
  %24 = load %struct.xfrm_state*, %struct.xfrm_state** %11, align 8
  %25 = call i32 @PTR_ERR(%struct.xfrm_state* %24)
  store i32 %25, i32* %5, align 4
  br label %87

26:                                               ; preds = %4
  %27 = load %struct.xfrm_state*, %struct.xfrm_state** %11, align 8
  %28 = call i32 @xfrm_state_hold(%struct.xfrm_state* %27)
  %29 = load %struct.sadb_msg*, %struct.sadb_msg** %8, align 8
  %30 = getelementptr inbounds %struct.sadb_msg, %struct.sadb_msg* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = load i64, i64* @SADB_ADD, align 8
  %33 = icmp eq i64 %31, %32
  br i1 %33, label %34, label %37

34:                                               ; preds = %26
  %35 = load %struct.xfrm_state*, %struct.xfrm_state** %11, align 8
  %36 = call i32 @xfrm_state_add(%struct.xfrm_state* %35)
  store i32 %36, i32* %12, align 4
  br label %40

37:                                               ; preds = %26
  %38 = load %struct.xfrm_state*, %struct.xfrm_state** %11, align 8
  %39 = call i32 @xfrm_state_update(%struct.xfrm_state* %38)
  store i32 %39, i32* %12, align 4
  br label %40

40:                                               ; preds = %37, %34
  %41 = load %struct.xfrm_state*, %struct.xfrm_state** %11, align 8
  %42 = load i32, i32* %12, align 4
  %43 = icmp ne i32 %42, 0
  %44 = zext i1 %43 to i64
  %45 = select i1 %43, i32 0, i32 1
  %46 = load i32, i32* @current, align 4
  %47 = call i32 @audit_get_loginuid(i32 %46)
  %48 = load i32, i32* @current, align 4
  %49 = call i32 @audit_get_sessionid(i32 %48)
  %50 = call i32 @xfrm_audit_state_add(%struct.xfrm_state* %41, i32 %45, i32 %47, i32 %49, i32 0)
  %51 = load i32, i32* %12, align 4
  %52 = icmp slt i32 %51, 0
  br i1 %52, label %53, label %60

53:                                               ; preds = %40
  %54 = load i32, i32* @XFRM_STATE_DEAD, align 4
  %55 = load %struct.xfrm_state*, %struct.xfrm_state** %11, align 8
  %56 = getelementptr inbounds %struct.xfrm_state, %struct.xfrm_state* %55, i32 0, i32 0
  %57 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %56, i32 0, i32 0
  store i32 %54, i32* %57, align 4
  %58 = load %struct.xfrm_state*, %struct.xfrm_state** %11, align 8
  %59 = call i32 @__xfrm_state_put(%struct.xfrm_state* %58)
  br label %83

60:                                               ; preds = %40
  %61 = load %struct.sadb_msg*, %struct.sadb_msg** %8, align 8
  %62 = getelementptr inbounds %struct.sadb_msg, %struct.sadb_msg* %61, i32 0, i32 0
  %63 = load i64, i64* %62, align 8
  %64 = load i64, i64* @SADB_ADD, align 8
  %65 = icmp eq i64 %63, %64
  br i1 %65, label %66, label %69

66:                                               ; preds = %60
  %67 = load i32, i32* @XFRM_MSG_NEWSA, align 4
  %68 = getelementptr inbounds %struct.km_event, %struct.km_event* %13, i32 0, i32 2
  store i32 %67, i32* %68, align 4
  br label %72

69:                                               ; preds = %60
  %70 = load i32, i32* @XFRM_MSG_UPDSA, align 4
  %71 = getelementptr inbounds %struct.km_event, %struct.km_event* %13, i32 0, i32 2
  store i32 %70, i32* %71, align 4
  br label %72

72:                                               ; preds = %69, %66
  %73 = load %struct.sadb_msg*, %struct.sadb_msg** %8, align 8
  %74 = getelementptr inbounds %struct.sadb_msg, %struct.sadb_msg* %73, i32 0, i32 2
  %75 = load i32, i32* %74, align 4
  %76 = getelementptr inbounds %struct.km_event, %struct.km_event* %13, i32 0, i32 1
  store i32 %75, i32* %76, align 4
  %77 = load %struct.sadb_msg*, %struct.sadb_msg** %8, align 8
  %78 = getelementptr inbounds %struct.sadb_msg, %struct.sadb_msg* %77, i32 0, i32 1
  %79 = load i32, i32* %78, align 8
  %80 = getelementptr inbounds %struct.km_event, %struct.km_event* %13, i32 0, i32 0
  store i32 %79, i32* %80, align 4
  %81 = load %struct.xfrm_state*, %struct.xfrm_state** %11, align 8
  %82 = call i32 @km_state_notify(%struct.xfrm_state* %81, %struct.km_event* %13)
  br label %83

83:                                               ; preds = %72, %53
  %84 = load %struct.xfrm_state*, %struct.xfrm_state** %11, align 8
  %85 = call i32 @xfrm_state_put(%struct.xfrm_state* %84)
  %86 = load i32, i32* %12, align 4
  store i32 %86, i32* %5, align 4
  br label %87

87:                                               ; preds = %83, %23
  %88 = load i32, i32* %5, align 4
  ret i32 %88
}

declare dso_local %struct.net* @sock_net(%struct.sock*) #1

declare dso_local %struct.xfrm_state* @pfkey_msg2xfrm_state(%struct.net*, %struct.sadb_msg*, i8**) #1

declare dso_local i64 @IS_ERR(%struct.xfrm_state*) #1

declare dso_local i32 @PTR_ERR(%struct.xfrm_state*) #1

declare dso_local i32 @xfrm_state_hold(%struct.xfrm_state*) #1

declare dso_local i32 @xfrm_state_add(%struct.xfrm_state*) #1

declare dso_local i32 @xfrm_state_update(%struct.xfrm_state*) #1

declare dso_local i32 @xfrm_audit_state_add(%struct.xfrm_state*, i32, i32, i32, i32) #1

declare dso_local i32 @audit_get_loginuid(i32) #1

declare dso_local i32 @audit_get_sessionid(i32) #1

declare dso_local i32 @__xfrm_state_put(%struct.xfrm_state*) #1

declare dso_local i32 @km_state_notify(%struct.xfrm_state*, %struct.km_event*) #1

declare dso_local i32 @xfrm_state_put(%struct.xfrm_state*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

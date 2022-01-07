; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/key/extr_af_key.c_pfkey_get.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/key/extr_af_key.c_pfkey_get.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sock = type { i32 }
%struct.sk_buff = type { i64 }
%struct.sadb_msg = type { i32, i32, i64, i64, i32, i32, i32 }
%struct.net = type { i32 }
%struct.xfrm_state = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@SADB_EXT_SA = common dso_local global i32 0, align 4
@SADB_EXT_ADDRESS_SRC = common dso_local global i32 0, align 4
@SADB_EXT_ADDRESS_DST = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@ESRCH = common dso_local global i32 0, align 4
@SADB_GET = common dso_local global i32 0, align 4
@GFP_ATOMIC = common dso_local global i32 0, align 4
@BROADCAST_ONE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sock*, %struct.sk_buff*, %struct.sadb_msg*, i8**)* @pfkey_get to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pfkey_get(%struct.sock* %0, %struct.sk_buff* %1, %struct.sadb_msg* %2, i8** %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.sock*, align 8
  %7 = alloca %struct.sk_buff*, align 8
  %8 = alloca %struct.sadb_msg*, align 8
  %9 = alloca i8**, align 8
  %10 = alloca %struct.net*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.sk_buff*, align 8
  %13 = alloca %struct.sadb_msg*, align 8
  %14 = alloca %struct.xfrm_state*, align 8
  store %struct.sock* %0, %struct.sock** %6, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %7, align 8
  store %struct.sadb_msg* %2, %struct.sadb_msg** %8, align 8
  store i8** %3, i8*** %9, align 8
  %15 = load %struct.sock*, %struct.sock** %6, align 8
  %16 = call %struct.net* @sock_net(%struct.sock* %15)
  store %struct.net* %16, %struct.net** %10, align 8
  %17 = load i8**, i8*** %9, align 8
  %18 = load i32, i32* @SADB_EXT_SA, align 4
  %19 = sub nsw i32 %18, 1
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds i8*, i8** %17, i64 %20
  %22 = load i8*, i8** %21, align 8
  %23 = icmp ne i8* %22, null
  br i1 %23, label %24, label %39

24:                                               ; preds = %4
  %25 = load i8**, i8*** %9, align 8
  %26 = load i32, i32* @SADB_EXT_ADDRESS_SRC, align 4
  %27 = sub nsw i32 %26, 1
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds i8*, i8** %25, i64 %28
  %30 = load i8*, i8** %29, align 8
  %31 = load i8**, i8*** %9, align 8
  %32 = load i32, i32* @SADB_EXT_ADDRESS_DST, align 4
  %33 = sub nsw i32 %32, 1
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds i8*, i8** %31, i64 %34
  %36 = load i8*, i8** %35, align 8
  %37 = call i32 @present_and_same_family(i8* %30, i8* %36)
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %42, label %39

39:                                               ; preds = %24, %4
  %40 = load i32, i32* @EINVAL, align 4
  %41 = sub nsw i32 0, %40
  store i32 %41, i32* %5, align 4
  br label %105

42:                                               ; preds = %24
  %43 = load %struct.net*, %struct.net** %10, align 8
  %44 = load %struct.sadb_msg*, %struct.sadb_msg** %8, align 8
  %45 = load i8**, i8*** %9, align 8
  %46 = call %struct.xfrm_state* @pfkey_xfrm_state_lookup(%struct.net* %43, %struct.sadb_msg* %44, i8** %45)
  store %struct.xfrm_state* %46, %struct.xfrm_state** %14, align 8
  %47 = load %struct.xfrm_state*, %struct.xfrm_state** %14, align 8
  %48 = icmp eq %struct.xfrm_state* %47, null
  br i1 %48, label %49, label %52

49:                                               ; preds = %42
  %50 = load i32, i32* @ESRCH, align 4
  %51 = sub nsw i32 0, %50
  store i32 %51, i32* %5, align 4
  br label %105

52:                                               ; preds = %42
  %53 = load %struct.xfrm_state*, %struct.xfrm_state** %14, align 8
  %54 = call %struct.sk_buff* @pfkey_xfrm_state2msg(%struct.xfrm_state* %53)
  store %struct.sk_buff* %54, %struct.sk_buff** %12, align 8
  %55 = load %struct.xfrm_state*, %struct.xfrm_state** %14, align 8
  %56 = getelementptr inbounds %struct.xfrm_state, %struct.xfrm_state* %55, i32 0, i32 0
  %57 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  store i32 %58, i32* %11, align 4
  %59 = load %struct.xfrm_state*, %struct.xfrm_state** %14, align 8
  %60 = call i32 @xfrm_state_put(%struct.xfrm_state* %59)
  %61 = load %struct.sk_buff*, %struct.sk_buff** %12, align 8
  %62 = call i64 @IS_ERR(%struct.sk_buff* %61)
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %64, label %67

64:                                               ; preds = %52
  %65 = load %struct.sk_buff*, %struct.sk_buff** %12, align 8
  %66 = call i32 @PTR_ERR(%struct.sk_buff* %65)
  store i32 %66, i32* %5, align 4
  br label %105

67:                                               ; preds = %52
  %68 = load %struct.sk_buff*, %struct.sk_buff** %12, align 8
  %69 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %68, i32 0, i32 0
  %70 = load i64, i64* %69, align 8
  %71 = inttoptr i64 %70 to %struct.sadb_msg*
  store %struct.sadb_msg* %71, %struct.sadb_msg** %13, align 8
  %72 = load %struct.sadb_msg*, %struct.sadb_msg** %8, align 8
  %73 = getelementptr inbounds %struct.sadb_msg, %struct.sadb_msg* %72, i32 0, i32 6
  %74 = load i32, i32* %73, align 8
  %75 = load %struct.sadb_msg*, %struct.sadb_msg** %13, align 8
  %76 = getelementptr inbounds %struct.sadb_msg, %struct.sadb_msg* %75, i32 0, i32 6
  store i32 %74, i32* %76, align 8
  %77 = load i32, i32* @SADB_GET, align 4
  %78 = load %struct.sadb_msg*, %struct.sadb_msg** %13, align 8
  %79 = getelementptr inbounds %struct.sadb_msg, %struct.sadb_msg* %78, i32 0, i32 5
  store i32 %77, i32* %79, align 4
  %80 = load i32, i32* %11, align 4
  %81 = call i32 @pfkey_proto2satype(i32 %80)
  %82 = load %struct.sadb_msg*, %struct.sadb_msg** %13, align 8
  %83 = getelementptr inbounds %struct.sadb_msg, %struct.sadb_msg* %82, i32 0, i32 4
  store i32 %81, i32* %83, align 8
  %84 = load %struct.sadb_msg*, %struct.sadb_msg** %13, align 8
  %85 = getelementptr inbounds %struct.sadb_msg, %struct.sadb_msg* %84, i32 0, i32 3
  store i64 0, i64* %85, align 8
  %86 = load %struct.sadb_msg*, %struct.sadb_msg** %13, align 8
  %87 = getelementptr inbounds %struct.sadb_msg, %struct.sadb_msg* %86, i32 0, i32 2
  store i64 0, i64* %87, align 8
  %88 = load %struct.sadb_msg*, %struct.sadb_msg** %8, align 8
  %89 = getelementptr inbounds %struct.sadb_msg, %struct.sadb_msg* %88, i32 0, i32 1
  %90 = load i32, i32* %89, align 4
  %91 = load %struct.sadb_msg*, %struct.sadb_msg** %13, align 8
  %92 = getelementptr inbounds %struct.sadb_msg, %struct.sadb_msg* %91, i32 0, i32 1
  store i32 %90, i32* %92, align 4
  %93 = load %struct.sadb_msg*, %struct.sadb_msg** %8, align 8
  %94 = getelementptr inbounds %struct.sadb_msg, %struct.sadb_msg* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 8
  %96 = load %struct.sadb_msg*, %struct.sadb_msg** %13, align 8
  %97 = getelementptr inbounds %struct.sadb_msg, %struct.sadb_msg* %96, i32 0, i32 0
  store i32 %95, i32* %97, align 8
  %98 = load %struct.sk_buff*, %struct.sk_buff** %12, align 8
  %99 = load i32, i32* @GFP_ATOMIC, align 4
  %100 = load i32, i32* @BROADCAST_ONE, align 4
  %101 = load %struct.sock*, %struct.sock** %6, align 8
  %102 = load %struct.sock*, %struct.sock** %6, align 8
  %103 = call %struct.net* @sock_net(%struct.sock* %102)
  %104 = call i32 @pfkey_broadcast(%struct.sk_buff* %98, i32 %99, i32 %100, %struct.sock* %101, %struct.net* %103)
  store i32 0, i32* %5, align 4
  br label %105

105:                                              ; preds = %67, %64, %49, %39
  %106 = load i32, i32* %5, align 4
  ret i32 %106
}

declare dso_local %struct.net* @sock_net(%struct.sock*) #1

declare dso_local i32 @present_and_same_family(i8*, i8*) #1

declare dso_local %struct.xfrm_state* @pfkey_xfrm_state_lookup(%struct.net*, %struct.sadb_msg*, i8**) #1

declare dso_local %struct.sk_buff* @pfkey_xfrm_state2msg(%struct.xfrm_state*) #1

declare dso_local i32 @xfrm_state_put(%struct.xfrm_state*) #1

declare dso_local i64 @IS_ERR(%struct.sk_buff*) #1

declare dso_local i32 @PTR_ERR(%struct.sk_buff*) #1

declare dso_local i32 @pfkey_proto2satype(i32) #1

declare dso_local i32 @pfkey_broadcast(%struct.sk_buff*, i32, i32, %struct.sock*, %struct.net*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

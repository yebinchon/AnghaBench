; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/key/extr_af_key.c_dump_sp.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/key/extr_af_key.c_dump_sp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xfrm_policy = type { i32 }
%struct.pfkey_sock = type { %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { %struct.sk_buff*, i32, i32 }
%struct.sk_buff = type { i64 }
%struct.sadb_msg = type { i32, i32, i64, i32, i32, i32 }

@ENOBUFS = common dso_local global i32 0, align 4
@SADB_X_SPDDUMP = common dso_local global i32 0, align 4
@SADB_SATYPE_UNSPEC = common dso_local global i32 0, align 4
@GFP_ATOMIC = common dso_local global i32 0, align 4
@BROADCAST_ONE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.xfrm_policy*, i32, i32, i8*)* @dump_sp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dump_sp(%struct.xfrm_policy* %0, i32 %1, i32 %2, i8* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.xfrm_policy*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca %struct.pfkey_sock*, align 8
  %11 = alloca %struct.sk_buff*, align 8
  %12 = alloca %struct.sadb_msg*, align 8
  %13 = alloca i32, align 4
  store %struct.xfrm_policy* %0, %struct.xfrm_policy** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i8* %3, i8** %9, align 8
  %14 = load i8*, i8** %9, align 8
  %15 = bitcast i8* %14 to %struct.pfkey_sock*
  store %struct.pfkey_sock* %15, %struct.pfkey_sock** %10, align 8
  %16 = load %struct.pfkey_sock*, %struct.pfkey_sock** %10, align 8
  %17 = getelementptr inbounds %struct.pfkey_sock, %struct.pfkey_sock* %16, i32 0, i32 1
  %18 = call i32 @pfkey_can_dump(i32* %17)
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %23, label %20

20:                                               ; preds = %4
  %21 = load i32, i32* @ENOBUFS, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %5, align 4
  br label %93

23:                                               ; preds = %4
  %24 = load %struct.xfrm_policy*, %struct.xfrm_policy** %6, align 8
  %25 = call %struct.sk_buff* @pfkey_xfrm_policy2msg_prep(%struct.xfrm_policy* %24)
  store %struct.sk_buff* %25, %struct.sk_buff** %11, align 8
  %26 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %27 = call i64 @IS_ERR(%struct.sk_buff* %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %32

29:                                               ; preds = %23
  %30 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %31 = call i32 @PTR_ERR(%struct.sk_buff* %30)
  store i32 %31, i32* %5, align 4
  br label %93

32:                                               ; preds = %23
  %33 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %34 = load %struct.xfrm_policy*, %struct.xfrm_policy** %6, align 8
  %35 = load i32, i32* %7, align 4
  %36 = call i32 @pfkey_xfrm_policy2msg(%struct.sk_buff* %33, %struct.xfrm_policy* %34, i32 %35)
  store i32 %36, i32* %13, align 4
  %37 = load i32, i32* %13, align 4
  %38 = icmp slt i32 %37, 0
  br i1 %38, label %39, label %41

39:                                               ; preds = %32
  %40 = load i32, i32* %13, align 4
  store i32 %40, i32* %5, align 4
  br label %93

41:                                               ; preds = %32
  %42 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %43 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = inttoptr i64 %44 to %struct.sadb_msg*
  store %struct.sadb_msg* %45, %struct.sadb_msg** %12, align 8
  %46 = load %struct.pfkey_sock*, %struct.pfkey_sock** %10, align 8
  %47 = getelementptr inbounds %struct.pfkey_sock, %struct.pfkey_sock* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %47, i32 0, i32 2
  %49 = load i32, i32* %48, align 4
  %50 = load %struct.sadb_msg*, %struct.sadb_msg** %12, align 8
  %51 = getelementptr inbounds %struct.sadb_msg, %struct.sadb_msg* %50, i32 0, i32 5
  store i32 %49, i32* %51, align 8
  %52 = load i32, i32* @SADB_X_SPDDUMP, align 4
  %53 = load %struct.sadb_msg*, %struct.sadb_msg** %12, align 8
  %54 = getelementptr inbounds %struct.sadb_msg, %struct.sadb_msg* %53, i32 0, i32 4
  store i32 %52, i32* %54, align 4
  %55 = load i32, i32* @SADB_SATYPE_UNSPEC, align 4
  %56 = load %struct.sadb_msg*, %struct.sadb_msg** %12, align 8
  %57 = getelementptr inbounds %struct.sadb_msg, %struct.sadb_msg* %56, i32 0, i32 3
  store i32 %55, i32* %57, align 8
  %58 = load %struct.sadb_msg*, %struct.sadb_msg** %12, align 8
  %59 = getelementptr inbounds %struct.sadb_msg, %struct.sadb_msg* %58, i32 0, i32 2
  store i64 0, i64* %59, align 8
  %60 = load i32, i32* %8, align 4
  %61 = add nsw i32 %60, 1
  %62 = load %struct.sadb_msg*, %struct.sadb_msg** %12, align 8
  %63 = getelementptr inbounds %struct.sadb_msg, %struct.sadb_msg* %62, i32 0, i32 0
  store i32 %61, i32* %63, align 8
  %64 = load %struct.pfkey_sock*, %struct.pfkey_sock** %10, align 8
  %65 = getelementptr inbounds %struct.pfkey_sock, %struct.pfkey_sock* %64, i32 0, i32 0
  %66 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %65, i32 0, i32 1
  %67 = load i32, i32* %66, align 8
  %68 = load %struct.sadb_msg*, %struct.sadb_msg** %12, align 8
  %69 = getelementptr inbounds %struct.sadb_msg, %struct.sadb_msg* %68, i32 0, i32 1
  store i32 %67, i32* %69, align 4
  %70 = load %struct.pfkey_sock*, %struct.pfkey_sock** %10, align 8
  %71 = getelementptr inbounds %struct.pfkey_sock, %struct.pfkey_sock* %70, i32 0, i32 0
  %72 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %71, i32 0, i32 0
  %73 = load %struct.sk_buff*, %struct.sk_buff** %72, align 8
  %74 = icmp ne %struct.sk_buff* %73, null
  br i1 %74, label %75, label %88

75:                                               ; preds = %41
  %76 = load %struct.pfkey_sock*, %struct.pfkey_sock** %10, align 8
  %77 = getelementptr inbounds %struct.pfkey_sock, %struct.pfkey_sock* %76, i32 0, i32 0
  %78 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %77, i32 0, i32 0
  %79 = load %struct.sk_buff*, %struct.sk_buff** %78, align 8
  %80 = load i32, i32* @GFP_ATOMIC, align 4
  %81 = load i32, i32* @BROADCAST_ONE, align 4
  %82 = load %struct.pfkey_sock*, %struct.pfkey_sock** %10, align 8
  %83 = getelementptr inbounds %struct.pfkey_sock, %struct.pfkey_sock* %82, i32 0, i32 1
  %84 = load %struct.pfkey_sock*, %struct.pfkey_sock** %10, align 8
  %85 = getelementptr inbounds %struct.pfkey_sock, %struct.pfkey_sock* %84, i32 0, i32 1
  %86 = call i32 @sock_net(i32* %85)
  %87 = call i32 @pfkey_broadcast(%struct.sk_buff* %79, i32 %80, i32 %81, i32* %83, i32 %86)
  br label %88

88:                                               ; preds = %75, %41
  %89 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %90 = load %struct.pfkey_sock*, %struct.pfkey_sock** %10, align 8
  %91 = getelementptr inbounds %struct.pfkey_sock, %struct.pfkey_sock* %90, i32 0, i32 0
  %92 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %91, i32 0, i32 0
  store %struct.sk_buff* %89, %struct.sk_buff** %92, align 8
  store i32 0, i32* %5, align 4
  br label %93

93:                                               ; preds = %88, %39, %29, %20
  %94 = load i32, i32* %5, align 4
  ret i32 %94
}

declare dso_local i32 @pfkey_can_dump(i32*) #1

declare dso_local %struct.sk_buff* @pfkey_xfrm_policy2msg_prep(%struct.xfrm_policy*) #1

declare dso_local i64 @IS_ERR(%struct.sk_buff*) #1

declare dso_local i32 @PTR_ERR(%struct.sk_buff*) #1

declare dso_local i32 @pfkey_xfrm_policy2msg(%struct.sk_buff*, %struct.xfrm_policy*, i32) #1

declare dso_local i32 @pfkey_broadcast(%struct.sk_buff*, i32, i32, i32*, i32) #1

declare dso_local i32 @sock_net(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/key/extr_af_key.c_pfkey_spddump.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/key/extr_af_key.c_pfkey_spddump.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sock = type { i32 }
%struct.sk_buff = type { i32 }
%struct.sadb_msg = type { i32, i32 }
%struct.pfkey_sock = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__, i32, i32*, i32, i32 }
%struct.TYPE_3__ = type { i32 }

@EBUSY = common dso_local global i32 0, align 4
@pfkey_dump_sp = common dso_local global i32* null, align 8
@pfkey_dump_sp_done = common dso_local global i32 0, align 4
@XFRM_POLICY_TYPE_MAIN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sock*, %struct.sk_buff*, %struct.sadb_msg*, i8**)* @pfkey_spddump to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pfkey_spddump(%struct.sock* %0, %struct.sk_buff* %1, %struct.sadb_msg* %2, i8** %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.sock*, align 8
  %7 = alloca %struct.sk_buff*, align 8
  %8 = alloca %struct.sadb_msg*, align 8
  %9 = alloca i8**, align 8
  %10 = alloca %struct.pfkey_sock*, align 8
  store %struct.sock* %0, %struct.sock** %6, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %7, align 8
  store %struct.sadb_msg* %2, %struct.sadb_msg** %8, align 8
  store i8** %3, i8*** %9, align 8
  %11 = load %struct.sock*, %struct.sock** %6, align 8
  %12 = call %struct.pfkey_sock* @pfkey_sk(%struct.sock* %11)
  store %struct.pfkey_sock* %12, %struct.pfkey_sock** %10, align 8
  %13 = load %struct.pfkey_sock*, %struct.pfkey_sock** %10, align 8
  %14 = getelementptr inbounds %struct.pfkey_sock, %struct.pfkey_sock* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 2
  %16 = load i32*, i32** %15, align 8
  %17 = icmp ne i32* %16, null
  br i1 %17, label %18, label %21

18:                                               ; preds = %4
  %19 = load i32, i32* @EBUSY, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %5, align 4
  br label %50

21:                                               ; preds = %4
  %22 = load %struct.sadb_msg*, %struct.sadb_msg** %8, align 8
  %23 = getelementptr inbounds %struct.sadb_msg, %struct.sadb_msg* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = load %struct.pfkey_sock*, %struct.pfkey_sock** %10, align 8
  %26 = getelementptr inbounds %struct.pfkey_sock, %struct.pfkey_sock* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i32 0, i32 4
  store i32 %24, i32* %27, align 4
  %28 = load %struct.sadb_msg*, %struct.sadb_msg** %8, align 8
  %29 = getelementptr inbounds %struct.sadb_msg, %struct.sadb_msg* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = load %struct.pfkey_sock*, %struct.pfkey_sock** %10, align 8
  %32 = getelementptr inbounds %struct.pfkey_sock, %struct.pfkey_sock* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i32 0, i32 3
  store i32 %30, i32* %33, align 8
  %34 = load i32*, i32** @pfkey_dump_sp, align 8
  %35 = load %struct.pfkey_sock*, %struct.pfkey_sock** %10, align 8
  %36 = getelementptr inbounds %struct.pfkey_sock, %struct.pfkey_sock* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %36, i32 0, i32 2
  store i32* %34, i32** %37, align 8
  %38 = load i32, i32* @pfkey_dump_sp_done, align 4
  %39 = load %struct.pfkey_sock*, %struct.pfkey_sock** %10, align 8
  %40 = getelementptr inbounds %struct.pfkey_sock, %struct.pfkey_sock* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %40, i32 0, i32 1
  store i32 %38, i32* %41, align 4
  %42 = load %struct.pfkey_sock*, %struct.pfkey_sock** %10, align 8
  %43 = getelementptr inbounds %struct.pfkey_sock, %struct.pfkey_sock* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %44, i32 0, i32 0
  %46 = load i32, i32* @XFRM_POLICY_TYPE_MAIN, align 4
  %47 = call i32 @xfrm_policy_walk_init(i32* %45, i32 %46)
  %48 = load %struct.pfkey_sock*, %struct.pfkey_sock** %10, align 8
  %49 = call i32 @pfkey_do_dump(%struct.pfkey_sock* %48)
  store i32 %49, i32* %5, align 4
  br label %50

50:                                               ; preds = %21, %18
  %51 = load i32, i32* %5, align 4
  ret i32 %51
}

declare dso_local %struct.pfkey_sock* @pfkey_sk(%struct.sock*) #1

declare dso_local i32 @xfrm_policy_walk_init(i32*, i32) #1

declare dso_local i32 @pfkey_do_dump(%struct.pfkey_sock*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

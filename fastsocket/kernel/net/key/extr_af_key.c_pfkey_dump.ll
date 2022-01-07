; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/key/extr_af_key.c_pfkey_dump.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/key/extr_af_key.c_pfkey_dump.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sock = type { i32 }
%struct.sk_buff = type { i32 }
%struct.sadb_msg = type { i32, i32, i32 }
%struct.pfkey_sock = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__, i32, i32*, i32, i32 }
%struct.TYPE_3__ = type { i32 }

@EBUSY = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@pfkey_dump_sa = common dso_local global i32* null, align 8
@pfkey_dump_sa_done = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sock*, %struct.sk_buff*, %struct.sadb_msg*, i8**)* @pfkey_dump to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pfkey_dump(%struct.sock* %0, %struct.sk_buff* %1, %struct.sadb_msg* %2, i8** %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.sock*, align 8
  %7 = alloca %struct.sk_buff*, align 8
  %8 = alloca %struct.sadb_msg*, align 8
  %9 = alloca i8**, align 8
  %10 = alloca i64, align 8
  %11 = alloca %struct.pfkey_sock*, align 8
  store %struct.sock* %0, %struct.sock** %6, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %7, align 8
  store %struct.sadb_msg* %2, %struct.sadb_msg** %8, align 8
  store i8** %3, i8*** %9, align 8
  %12 = load %struct.sock*, %struct.sock** %6, align 8
  %13 = call %struct.pfkey_sock* @pfkey_sk(%struct.sock* %12)
  store %struct.pfkey_sock* %13, %struct.pfkey_sock** %11, align 8
  %14 = load %struct.pfkey_sock*, %struct.pfkey_sock** %11, align 8
  %15 = getelementptr inbounds %struct.pfkey_sock, %struct.pfkey_sock* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 2
  %17 = load i32*, i32** %16, align 8
  %18 = icmp ne i32* %17, null
  br i1 %18, label %19, label %22

19:                                               ; preds = %4
  %20 = load i32, i32* @EBUSY, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %5, align 4
  br label %61

22:                                               ; preds = %4
  %23 = load %struct.sadb_msg*, %struct.sadb_msg** %8, align 8
  %24 = getelementptr inbounds %struct.sadb_msg, %struct.sadb_msg* %23, i32 0, i32 2
  %25 = load i32, i32* %24, align 4
  %26 = call i64 @pfkey_satype2proto(i32 %25)
  store i64 %26, i64* %10, align 8
  %27 = load i64, i64* %10, align 8
  %28 = icmp eq i64 %27, 0
  br i1 %28, label %29, label %32

29:                                               ; preds = %22
  %30 = load i32, i32* @EINVAL, align 4
  %31 = sub nsw i32 0, %30
  store i32 %31, i32* %5, align 4
  br label %61

32:                                               ; preds = %22
  %33 = load %struct.sadb_msg*, %struct.sadb_msg** %8, align 8
  %34 = getelementptr inbounds %struct.sadb_msg, %struct.sadb_msg* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = load %struct.pfkey_sock*, %struct.pfkey_sock** %11, align 8
  %37 = getelementptr inbounds %struct.pfkey_sock, %struct.pfkey_sock* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %37, i32 0, i32 4
  store i32 %35, i32* %38, align 4
  %39 = load %struct.sadb_msg*, %struct.sadb_msg** %8, align 8
  %40 = getelementptr inbounds %struct.sadb_msg, %struct.sadb_msg* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = load %struct.pfkey_sock*, %struct.pfkey_sock** %11, align 8
  %43 = getelementptr inbounds %struct.pfkey_sock, %struct.pfkey_sock* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %43, i32 0, i32 3
  store i32 %41, i32* %44, align 8
  %45 = load i32*, i32** @pfkey_dump_sa, align 8
  %46 = load %struct.pfkey_sock*, %struct.pfkey_sock** %11, align 8
  %47 = getelementptr inbounds %struct.pfkey_sock, %struct.pfkey_sock* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %47, i32 0, i32 2
  store i32* %45, i32** %48, align 8
  %49 = load i32, i32* @pfkey_dump_sa_done, align 4
  %50 = load %struct.pfkey_sock*, %struct.pfkey_sock** %11, align 8
  %51 = getelementptr inbounds %struct.pfkey_sock, %struct.pfkey_sock* %50, i32 0, i32 0
  %52 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %51, i32 0, i32 1
  store i32 %49, i32* %52, align 4
  %53 = load %struct.pfkey_sock*, %struct.pfkey_sock** %11, align 8
  %54 = getelementptr inbounds %struct.pfkey_sock, %struct.pfkey_sock* %53, i32 0, i32 0
  %55 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %54, i32 0, i32 0
  %56 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %55, i32 0, i32 0
  %57 = load i64, i64* %10, align 8
  %58 = call i32 @xfrm_state_walk_init(i32* %56, i64 %57)
  %59 = load %struct.pfkey_sock*, %struct.pfkey_sock** %11, align 8
  %60 = call i32 @pfkey_do_dump(%struct.pfkey_sock* %59)
  store i32 %60, i32* %5, align 4
  br label %61

61:                                               ; preds = %32, %29, %19
  %62 = load i32, i32* %5, align 4
  ret i32 %62
}

declare dso_local %struct.pfkey_sock* @pfkey_sk(%struct.sock*) #1

declare dso_local i64 @pfkey_satype2proto(i32) #1

declare dso_local i32 @xfrm_state_walk_init(i32*, i64) #1

declare dso_local i32 @pfkey_do_dump(%struct.pfkey_sock*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

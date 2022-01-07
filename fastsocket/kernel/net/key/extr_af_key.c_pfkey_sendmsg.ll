; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/key/extr_af_key.c_pfkey_sendmsg.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/key/extr_af_key.c_pfkey_sendmsg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kiocb = type { i32 }
%struct.socket = type { %struct.sock* }
%struct.sock = type { i32 }
%struct.msghdr = type { i32, i32 }
%struct.sk_buff = type { i32 }
%struct.sadb_msg = type { i32 }

@EOPNOTSUPP = common dso_local global i32 0, align 4
@MSG_OOB = common dso_local global i32 0, align 4
@EMSGSIZE = common dso_local global i32 0, align 4
@ENOBUFS = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@EFAULT = common dso_local global i32 0, align 4
@xfrm_cfg_mutex = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.kiocb*, %struct.socket*, %struct.msghdr*, i64)* @pfkey_sendmsg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pfkey_sendmsg(%struct.kiocb* %0, %struct.socket* %1, %struct.msghdr* %2, i64 %3) #0 {
  %5 = alloca %struct.kiocb*, align 8
  %6 = alloca %struct.socket*, align 8
  %7 = alloca %struct.msghdr*, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.sock*, align 8
  %10 = alloca %struct.sk_buff*, align 8
  %11 = alloca %struct.sadb_msg*, align 8
  %12 = alloca i32, align 4
  store %struct.kiocb* %0, %struct.kiocb** %5, align 8
  store %struct.socket* %1, %struct.socket** %6, align 8
  store %struct.msghdr* %2, %struct.msghdr** %7, align 8
  store i64 %3, i64* %8, align 8
  %13 = load %struct.socket*, %struct.socket** %6, align 8
  %14 = getelementptr inbounds %struct.socket, %struct.socket* %13, i32 0, i32 0
  %15 = load %struct.sock*, %struct.sock** %14, align 8
  store %struct.sock* %15, %struct.sock** %9, align 8
  store %struct.sk_buff* null, %struct.sk_buff** %10, align 8
  store %struct.sadb_msg* null, %struct.sadb_msg** %11, align 8
  %16 = load i32, i32* @EOPNOTSUPP, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %12, align 4
  %18 = load %struct.msghdr*, %struct.msghdr** %7, align 8
  %19 = getelementptr inbounds %struct.msghdr, %struct.msghdr* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = load i32, i32* @MSG_OOB, align 4
  %22 = and i32 %20, %21
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %25

24:                                               ; preds = %4
  br label %71

25:                                               ; preds = %4
  %26 = load i32, i32* @EMSGSIZE, align 4
  %27 = sub nsw i32 0, %26
  store i32 %27, i32* %12, align 4
  %28 = load i64, i64* %8, align 8
  %29 = trunc i64 %28 to i32
  %30 = load %struct.sock*, %struct.sock** %9, align 8
  %31 = getelementptr inbounds %struct.sock, %struct.sock* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = sub nsw i32 %32, 32
  %34 = icmp ugt i32 %29, %33
  br i1 %34, label %35, label %36

35:                                               ; preds = %25
  br label %71

36:                                               ; preds = %25
  %37 = load i32, i32* @ENOBUFS, align 4
  %38 = sub nsw i32 0, %37
  store i32 %38, i32* %12, align 4
  %39 = load i64, i64* %8, align 8
  %40 = load i32, i32* @GFP_KERNEL, align 4
  %41 = call %struct.sk_buff* @alloc_skb(i64 %39, i32 %40)
  store %struct.sk_buff* %41, %struct.sk_buff** %10, align 8
  %42 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %43 = icmp eq %struct.sk_buff* %42, null
  br i1 %43, label %44, label %45

44:                                               ; preds = %36
  br label %71

45:                                               ; preds = %36
  %46 = load i32, i32* @EFAULT, align 4
  %47 = sub nsw i32 0, %46
  store i32 %47, i32* %12, align 4
  %48 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %49 = load i64, i64* %8, align 8
  %50 = call i32 @skb_put(%struct.sk_buff* %48, i64 %49)
  %51 = load %struct.msghdr*, %struct.msghdr** %7, align 8
  %52 = getelementptr inbounds %struct.msghdr, %struct.msghdr* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 4
  %54 = load i64, i64* %8, align 8
  %55 = call i64 @memcpy_fromiovec(i32 %50, i32 %53, i64 %54)
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %58

57:                                               ; preds = %45
  br label %71

58:                                               ; preds = %45
  %59 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %60 = call %struct.sadb_msg* @pfkey_get_base_msg(%struct.sk_buff* %59, i32* %12)
  store %struct.sadb_msg* %60, %struct.sadb_msg** %11, align 8
  %61 = load %struct.sadb_msg*, %struct.sadb_msg** %11, align 8
  %62 = icmp ne %struct.sadb_msg* %61, null
  br i1 %62, label %64, label %63

63:                                               ; preds = %58
  br label %71

64:                                               ; preds = %58
  %65 = call i32 @mutex_lock(i32* @xfrm_cfg_mutex)
  %66 = load %struct.sock*, %struct.sock** %9, align 8
  %67 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %68 = load %struct.sadb_msg*, %struct.sadb_msg** %11, align 8
  %69 = call i32 @pfkey_process(%struct.sock* %66, %struct.sk_buff* %67, %struct.sadb_msg* %68)
  store i32 %69, i32* %12, align 4
  %70 = call i32 @mutex_unlock(i32* @xfrm_cfg_mutex)
  br label %71

71:                                               ; preds = %64, %63, %57, %44, %35, %24
  %72 = load i32, i32* %12, align 4
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %84

74:                                               ; preds = %71
  %75 = load %struct.sadb_msg*, %struct.sadb_msg** %11, align 8
  %76 = icmp ne %struct.sadb_msg* %75, null
  br i1 %76, label %77, label %84

77:                                               ; preds = %74
  %78 = load %struct.sadb_msg*, %struct.sadb_msg** %11, align 8
  %79 = load i32, i32* %12, align 4
  %80 = load %struct.sock*, %struct.sock** %9, align 8
  %81 = call i64 @pfkey_error(%struct.sadb_msg* %78, i32 %79, %struct.sock* %80)
  %82 = icmp eq i64 %81, 0
  br i1 %82, label %83, label %84

83:                                               ; preds = %77
  store i32 0, i32* %12, align 4
  br label %84

84:                                               ; preds = %83, %77, %74, %71
  %85 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %86 = call i32 @kfree_skb(%struct.sk_buff* %85)
  %87 = load i32, i32* %12, align 4
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %89, label %91

89:                                               ; preds = %84
  %90 = sext i32 %87 to i64
  br label %93

91:                                               ; preds = %84
  %92 = load i64, i64* %8, align 8
  br label %93

93:                                               ; preds = %91, %89
  %94 = phi i64 [ %90, %89 ], [ %92, %91 ]
  %95 = trunc i64 %94 to i32
  ret i32 %95
}

declare dso_local %struct.sk_buff* @alloc_skb(i64, i32) #1

declare dso_local i64 @memcpy_fromiovec(i32, i32, i64) #1

declare dso_local i32 @skb_put(%struct.sk_buff*, i64) #1

declare dso_local %struct.sadb_msg* @pfkey_get_base_msg(%struct.sk_buff*, i32*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @pfkey_process(%struct.sock*, %struct.sk_buff*, %struct.sadb_msg*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i64 @pfkey_error(%struct.sadb_msg*, i32, %struct.sock*) #1

declare dso_local i32 @kfree_skb(%struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

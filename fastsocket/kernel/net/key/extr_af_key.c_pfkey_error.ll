; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/key/extr_af_key.c_pfkey_error.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/key/extr_af_key.c_pfkey_error.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sadb_msg = type { i32, i64 }
%struct.sock = type { i32 }
%struct.sk_buff = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOBUFS = common dso_local global i32 0, align 4
@ERESTARTSYS = common dso_local global i32 0, align 4
@ERESTARTNOHAND = common dso_local global i32 0, align 4
@ERESTARTNOINTR = common dso_local global i32 0, align 4
@EINTR = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@BROADCAST_ONE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sadb_msg*, i32, %struct.sock*)* @pfkey_error to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pfkey_error(%struct.sadb_msg* %0, i32 %1, %struct.sock* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.sadb_msg*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.sock*, align 8
  %8 = alloca %struct.sk_buff*, align 8
  %9 = alloca %struct.sadb_msg*, align 8
  store %struct.sadb_msg* %0, %struct.sadb_msg** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.sock* %2, %struct.sock** %7, align 8
  %10 = load i32, i32* @GFP_KERNEL, align 4
  %11 = call %struct.sk_buff* @alloc_skb(i32 32, i32 %10)
  store %struct.sk_buff* %11, %struct.sk_buff** %8, align 8
  %12 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %13 = icmp ne %struct.sk_buff* %12, null
  br i1 %13, label %17, label %14

14:                                               ; preds = %3
  %15 = load i32, i32* @ENOBUFS, align 4
  %16 = sub nsw i32 0, %15
  store i32 %16, i32* %4, align 4
  br label %67

17:                                               ; preds = %3
  %18 = load i32, i32* %6, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %6, align 4
  %20 = load i32, i32* %6, align 4
  %21 = load i32, i32* @ERESTARTSYS, align 4
  %22 = icmp eq i32 %20, %21
  br i1 %22, label %31, label %23

23:                                               ; preds = %17
  %24 = load i32, i32* %6, align 4
  %25 = load i32, i32* @ERESTARTNOHAND, align 4
  %26 = icmp eq i32 %24, %25
  br i1 %26, label %31, label %27

27:                                               ; preds = %23
  %28 = load i32, i32* %6, align 4
  %29 = load i32, i32* @ERESTARTNOINTR, align 4
  %30 = icmp eq i32 %28, %29
  br i1 %30, label %31, label %33

31:                                               ; preds = %27, %23, %17
  %32 = load i32, i32* @EINTR, align 4
  store i32 %32, i32* %6, align 4
  br label %33

33:                                               ; preds = %31, %27
  %34 = load i32, i32* %6, align 4
  %35 = icmp sge i32 %34, 512
  br i1 %35, label %36, label %38

36:                                               ; preds = %33
  %37 = load i32, i32* @EINVAL, align 4
  store i32 %37, i32* %6, align 4
  br label %38

38:                                               ; preds = %36, %33
  %39 = load i32, i32* %6, align 4
  %40 = icmp sle i32 %39, 0
  br i1 %40, label %44, label %41

41:                                               ; preds = %38
  %42 = load i32, i32* %6, align 4
  %43 = icmp sge i32 %42, 256
  br label %44

44:                                               ; preds = %41, %38
  %45 = phi i1 [ true, %38 ], [ %43, %41 ]
  %46 = zext i1 %45 to i32
  %47 = call i32 @BUG_ON(i32 %46)
  %48 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %49 = call i64 @skb_put(%struct.sk_buff* %48, i32 16)
  %50 = inttoptr i64 %49 to %struct.sadb_msg*
  store %struct.sadb_msg* %50, %struct.sadb_msg** %9, align 8
  %51 = load %struct.sadb_msg*, %struct.sadb_msg** %9, align 8
  %52 = load %struct.sadb_msg*, %struct.sadb_msg** %5, align 8
  %53 = call i32 @pfkey_hdr_dup(%struct.sadb_msg* %51, %struct.sadb_msg* %52)
  %54 = load i32, i32* %6, align 4
  %55 = sext i32 %54 to i64
  %56 = load %struct.sadb_msg*, %struct.sadb_msg** %9, align 8
  %57 = getelementptr inbounds %struct.sadb_msg, %struct.sadb_msg* %56, i32 0, i32 1
  store i64 %55, i64* %57, align 8
  %58 = load %struct.sadb_msg*, %struct.sadb_msg** %9, align 8
  %59 = getelementptr inbounds %struct.sadb_msg, %struct.sadb_msg* %58, i32 0, i32 0
  store i32 4, i32* %59, align 8
  %60 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %61 = load i32, i32* @GFP_KERNEL, align 4
  %62 = load i32, i32* @BROADCAST_ONE, align 4
  %63 = load %struct.sock*, %struct.sock** %7, align 8
  %64 = load %struct.sock*, %struct.sock** %7, align 8
  %65 = call i32 @sock_net(%struct.sock* %64)
  %66 = call i32 @pfkey_broadcast(%struct.sk_buff* %60, i32 %61, i32 %62, %struct.sock* %63, i32 %65)
  store i32 0, i32* %4, align 4
  br label %67

67:                                               ; preds = %44, %14
  %68 = load i32, i32* %4, align 4
  ret i32 %68
}

declare dso_local %struct.sk_buff* @alloc_skb(i32, i32) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i64 @skb_put(%struct.sk_buff*, i32) #1

declare dso_local i32 @pfkey_hdr_dup(%struct.sadb_msg*, %struct.sadb_msg*) #1

declare dso_local i32 @pfkey_broadcast(%struct.sk_buff*, i32, i32, %struct.sock*, i32) #1

declare dso_local i32 @sock_net(%struct.sock*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

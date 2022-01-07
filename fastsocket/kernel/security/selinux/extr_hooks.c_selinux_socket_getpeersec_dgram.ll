; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/security/selinux/extr_hooks.c_selinux_socket_getpeersec_dgram.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/security/selinux/extr_hooks.c_selinux_socket_getpeersec_dgram.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.socket = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64 }
%struct.sk_buff = type { i64 }

@SECSID_NULL = common dso_local global i64 0, align 8
@ETH_P_IP = common dso_local global i32 0, align 4
@PF_INET = common dso_local global i64 0, align 8
@ETH_P_IPV6 = common dso_local global i32 0, align 4
@PF_INET6 = common dso_local global i64 0, align 8
@PF_UNIX = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.socket*, %struct.sk_buff*, i64*)* @selinux_socket_getpeersec_dgram to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @selinux_socket_getpeersec_dgram(%struct.socket* %0, %struct.sk_buff* %1, i64* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.socket*, align 8
  %6 = alloca %struct.sk_buff*, align 8
  %7 = alloca i64*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  store %struct.socket* %0, %struct.socket** %5, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %6, align 8
  store i64* %2, i64** %7, align 8
  %10 = load i64, i64* @SECSID_NULL, align 8
  store i64 %10, i64* %8, align 8
  %11 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %12 = icmp ne %struct.sk_buff* %11, null
  br i1 %12, label %13, label %22

13:                                               ; preds = %3
  %14 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %15 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = load i32, i32* @ETH_P_IP, align 4
  %18 = call i64 @htons(i32 %17)
  %19 = icmp eq i64 %16, %18
  br i1 %19, label %20, label %22

20:                                               ; preds = %13
  %21 = load i64, i64* @PF_INET, align 8
  store i64 %21, i64* %9, align 8
  br label %46

22:                                               ; preds = %13, %3
  %23 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %24 = icmp ne %struct.sk_buff* %23, null
  br i1 %24, label %25, label %34

25:                                               ; preds = %22
  %26 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %27 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = load i32, i32* @ETH_P_IPV6, align 4
  %30 = call i64 @htons(i32 %29)
  %31 = icmp eq i64 %28, %30
  br i1 %31, label %32, label %34

32:                                               ; preds = %25
  %33 = load i64, i64* @PF_INET6, align 8
  store i64 %33, i64* %9, align 8
  br label %45

34:                                               ; preds = %25, %22
  %35 = load %struct.socket*, %struct.socket** %5, align 8
  %36 = icmp ne %struct.socket* %35, null
  br i1 %36, label %37, label %43

37:                                               ; preds = %34
  %38 = load %struct.socket*, %struct.socket** %5, align 8
  %39 = getelementptr inbounds %struct.socket, %struct.socket* %38, i32 0, i32 0
  %40 = load %struct.TYPE_2__*, %struct.TYPE_2__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  store i64 %42, i64* %9, align 8
  br label %44

43:                                               ; preds = %34
  br label %66

44:                                               ; preds = %37
  br label %45

45:                                               ; preds = %44, %32
  br label %46

46:                                               ; preds = %45, %20
  %47 = load %struct.socket*, %struct.socket** %5, align 8
  %48 = icmp ne %struct.socket* %47, null
  br i1 %48, label %49, label %57

49:                                               ; preds = %46
  %50 = load i64, i64* %9, align 8
  %51 = load i64, i64* @PF_UNIX, align 8
  %52 = icmp eq i64 %50, %51
  br i1 %52, label %53, label %57

53:                                               ; preds = %49
  %54 = load %struct.socket*, %struct.socket** %5, align 8
  %55 = call i32 @SOCK_INODE(%struct.socket* %54)
  %56 = call i32 @selinux_inode_getsecid(i32 %55, i64* %8)
  br label %65

57:                                               ; preds = %49, %46
  %58 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %59 = icmp ne %struct.sk_buff* %58, null
  br i1 %59, label %60, label %64

60:                                               ; preds = %57
  %61 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %62 = load i64, i64* %9, align 8
  %63 = call i32 @selinux_skb_peerlbl_sid(%struct.sk_buff* %61, i64 %62, i64* %8)
  br label %64

64:                                               ; preds = %60, %57
  br label %65

65:                                               ; preds = %64, %53
  br label %66

66:                                               ; preds = %65, %43
  %67 = load i64, i64* %8, align 8
  %68 = load i64*, i64** %7, align 8
  store i64 %67, i64* %68, align 8
  %69 = load i64, i64* %8, align 8
  %70 = load i64, i64* @SECSID_NULL, align 8
  %71 = icmp eq i64 %69, %70
  br i1 %71, label %72, label %75

72:                                               ; preds = %66
  %73 = load i32, i32* @EINVAL, align 4
  %74 = sub nsw i32 0, %73
  store i32 %74, i32* %4, align 4
  br label %76

75:                                               ; preds = %66
  store i32 0, i32* %4, align 4
  br label %76

76:                                               ; preds = %75, %72
  %77 = load i32, i32* %4, align 4
  ret i32 %77
}

declare dso_local i64 @htons(i32) #1

declare dso_local i32 @selinux_inode_getsecid(i32, i64*) #1

declare dso_local i32 @SOCK_INODE(%struct.socket*) #1

declare dso_local i32 @selinux_skb_peerlbl_sid(%struct.sk_buff*, i64, i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

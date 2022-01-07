; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/ipv4/extr_ip_sockglue.c_ip_cmsg_recv.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/ipv4/extr_ip_sockglue.c_ip_cmsg_recv.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.msghdr = type { i32 }
%struct.sk_buff = type { i32 }
%struct.inet_sock = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ip_cmsg_recv(%struct.msghdr* %0, %struct.sk_buff* %1) #0 {
  %3 = alloca %struct.msghdr*, align 8
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca %struct.inet_sock*, align 8
  %6 = alloca i32, align 4
  store %struct.msghdr* %0, %struct.msghdr** %3, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %4, align 8
  %7 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %8 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = call %struct.inet_sock* @inet_sk(i32 %9)
  store %struct.inet_sock* %10, %struct.inet_sock** %5, align 8
  %11 = load %struct.inet_sock*, %struct.inet_sock** %5, align 8
  %12 = getelementptr inbounds %struct.inet_sock, %struct.inet_sock* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  store i32 %13, i32* %6, align 4
  %14 = load i32, i32* %6, align 4
  %15 = and i32 %14, 1
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %21

17:                                               ; preds = %2
  %18 = load %struct.msghdr*, %struct.msghdr** %3, align 8
  %19 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %20 = call i32 @ip_cmsg_recv_pktinfo(%struct.msghdr* %18, %struct.sk_buff* %19)
  br label %21

21:                                               ; preds = %17, %2
  %22 = load i32, i32* %6, align 4
  %23 = lshr i32 %22, 1
  store i32 %23, i32* %6, align 4
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %25, label %26

25:                                               ; preds = %21
  br label %99

26:                                               ; preds = %21
  %27 = load i32, i32* %6, align 4
  %28 = and i32 %27, 1
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %34

30:                                               ; preds = %26
  %31 = load %struct.msghdr*, %struct.msghdr** %3, align 8
  %32 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %33 = call i32 @ip_cmsg_recv_ttl(%struct.msghdr* %31, %struct.sk_buff* %32)
  br label %34

34:                                               ; preds = %30, %26
  %35 = load i32, i32* %6, align 4
  %36 = lshr i32 %35, 1
  store i32 %36, i32* %6, align 4
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %38, label %39

38:                                               ; preds = %34
  br label %99

39:                                               ; preds = %34
  %40 = load i32, i32* %6, align 4
  %41 = and i32 %40, 1
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %47

43:                                               ; preds = %39
  %44 = load %struct.msghdr*, %struct.msghdr** %3, align 8
  %45 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %46 = call i32 @ip_cmsg_recv_tos(%struct.msghdr* %44, %struct.sk_buff* %45)
  br label %47

47:                                               ; preds = %43, %39
  %48 = load i32, i32* %6, align 4
  %49 = lshr i32 %48, 1
  store i32 %49, i32* %6, align 4
  %50 = icmp eq i32 %49, 0
  br i1 %50, label %51, label %52

51:                                               ; preds = %47
  br label %99

52:                                               ; preds = %47
  %53 = load i32, i32* %6, align 4
  %54 = and i32 %53, 1
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %60

56:                                               ; preds = %52
  %57 = load %struct.msghdr*, %struct.msghdr** %3, align 8
  %58 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %59 = call i32 @ip_cmsg_recv_opts(%struct.msghdr* %57, %struct.sk_buff* %58)
  br label %60

60:                                               ; preds = %56, %52
  %61 = load i32, i32* %6, align 4
  %62 = lshr i32 %61, 1
  store i32 %62, i32* %6, align 4
  %63 = icmp eq i32 %62, 0
  br i1 %63, label %64, label %65

64:                                               ; preds = %60
  br label %99

65:                                               ; preds = %60
  %66 = load i32, i32* %6, align 4
  %67 = and i32 %66, 1
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %73

69:                                               ; preds = %65
  %70 = load %struct.msghdr*, %struct.msghdr** %3, align 8
  %71 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %72 = call i32 @ip_cmsg_recv_retopts(%struct.msghdr* %70, %struct.sk_buff* %71)
  br label %73

73:                                               ; preds = %69, %65
  %74 = load i32, i32* %6, align 4
  %75 = lshr i32 %74, 1
  store i32 %75, i32* %6, align 4
  %76 = icmp eq i32 %75, 0
  br i1 %76, label %77, label %78

77:                                               ; preds = %73
  br label %99

78:                                               ; preds = %73
  %79 = load i32, i32* %6, align 4
  %80 = and i32 %79, 1
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %82, label %86

82:                                               ; preds = %78
  %83 = load %struct.msghdr*, %struct.msghdr** %3, align 8
  %84 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %85 = call i32 @ip_cmsg_recv_security(%struct.msghdr* %83, %struct.sk_buff* %84)
  br label %86

86:                                               ; preds = %82, %78
  %87 = load i32, i32* %6, align 4
  %88 = lshr i32 %87, 1
  store i32 %88, i32* %6, align 4
  %89 = icmp eq i32 %88, 0
  br i1 %89, label %90, label %91

90:                                               ; preds = %86
  br label %99

91:                                               ; preds = %86
  %92 = load i32, i32* %6, align 4
  %93 = and i32 %92, 1
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %95, label %99

95:                                               ; preds = %91
  %96 = load %struct.msghdr*, %struct.msghdr** %3, align 8
  %97 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %98 = call i32 @ip_cmsg_recv_dstaddr(%struct.msghdr* %96, %struct.sk_buff* %97)
  br label %99

99:                                               ; preds = %25, %38, %51, %64, %77, %90, %95, %91
  ret void
}

declare dso_local %struct.inet_sock* @inet_sk(i32) #1

declare dso_local i32 @ip_cmsg_recv_pktinfo(%struct.msghdr*, %struct.sk_buff*) #1

declare dso_local i32 @ip_cmsg_recv_ttl(%struct.msghdr*, %struct.sk_buff*) #1

declare dso_local i32 @ip_cmsg_recv_tos(%struct.msghdr*, %struct.sk_buff*) #1

declare dso_local i32 @ip_cmsg_recv_opts(%struct.msghdr*, %struct.sk_buff*) #1

declare dso_local i32 @ip_cmsg_recv_retopts(%struct.msghdr*, %struct.sk_buff*) #1

declare dso_local i32 @ip_cmsg_recv_security(%struct.msghdr*, %struct.sk_buff*) #1

declare dso_local i32 @ip_cmsg_recv_dstaddr(%struct.msghdr*, %struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

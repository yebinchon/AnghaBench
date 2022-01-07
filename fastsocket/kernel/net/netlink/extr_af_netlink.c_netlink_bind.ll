; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/netlink/extr_af_netlink.c_netlink_bind.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/netlink/extr_af_netlink.c_netlink_bind.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.socket = type { %struct.sock* }
%struct.sock = type { i32 }
%struct.sockaddr = type { i32 }
%struct.net = type { i32 }
%struct.netlink_sock = type { i64, i32*, i64 }
%struct.sockaddr_nl = type { i64, i32, i64 }

@AF_NETLINK = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@NL_NONROOT_RECV = common dso_local global i32 0, align 4
@EPERM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.socket*, %struct.sockaddr*, i32)* @netlink_bind to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @netlink_bind(%struct.socket* %0, %struct.sockaddr* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.socket*, align 8
  %6 = alloca %struct.sockaddr*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.sock*, align 8
  %9 = alloca %struct.net*, align 8
  %10 = alloca %struct.netlink_sock*, align 8
  %11 = alloca %struct.sockaddr_nl*, align 8
  %12 = alloca i32, align 4
  store %struct.socket* %0, %struct.socket** %5, align 8
  store %struct.sockaddr* %1, %struct.sockaddr** %6, align 8
  store i32 %2, i32* %7, align 4
  %13 = load %struct.socket*, %struct.socket** %5, align 8
  %14 = getelementptr inbounds %struct.socket, %struct.socket* %13, i32 0, i32 0
  %15 = load %struct.sock*, %struct.sock** %14, align 8
  store %struct.sock* %15, %struct.sock** %8, align 8
  %16 = load %struct.sock*, %struct.sock** %8, align 8
  %17 = call %struct.net* @sock_net(%struct.sock* %16)
  store %struct.net* %17, %struct.net** %9, align 8
  %18 = load %struct.sock*, %struct.sock** %8, align 8
  %19 = call %struct.netlink_sock* @nlk_sk(%struct.sock* %18)
  store %struct.netlink_sock* %19, %struct.netlink_sock** %10, align 8
  %20 = load %struct.sockaddr*, %struct.sockaddr** %6, align 8
  %21 = bitcast %struct.sockaddr* %20 to %struct.sockaddr_nl*
  store %struct.sockaddr_nl* %21, %struct.sockaddr_nl** %11, align 8
  %22 = load %struct.sockaddr_nl*, %struct.sockaddr_nl** %11, align 8
  %23 = getelementptr inbounds %struct.sockaddr_nl, %struct.sockaddr_nl* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = load i64, i64* @AF_NETLINK, align 8
  %26 = icmp ne i64 %24, %25
  br i1 %26, label %27, label %30

27:                                               ; preds = %3
  %28 = load i32, i32* @EINVAL, align 4
  %29 = sub nsw i32 0, %28
  store i32 %29, i32* %4, align 4
  br label %147

30:                                               ; preds = %3
  %31 = load %struct.sockaddr_nl*, %struct.sockaddr_nl** %11, align 8
  %32 = getelementptr inbounds %struct.sockaddr_nl, %struct.sockaddr_nl* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 8
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %51

35:                                               ; preds = %30
  %36 = load %struct.socket*, %struct.socket** %5, align 8
  %37 = load i32, i32* @NL_NONROOT_RECV, align 4
  %38 = call i32 @netlink_capable(%struct.socket* %36, i32 %37)
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %43, label %40

40:                                               ; preds = %35
  %41 = load i32, i32* @EPERM, align 4
  %42 = sub nsw i32 0, %41
  store i32 %42, i32* %4, align 4
  br label %147

43:                                               ; preds = %35
  %44 = load %struct.sock*, %struct.sock** %8, align 8
  %45 = call i32 @netlink_realloc_groups(%struct.sock* %44)
  store i32 %45, i32* %12, align 4
  %46 = load i32, i32* %12, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %50

48:                                               ; preds = %43
  %49 = load i32, i32* %12, align 4
  store i32 %49, i32* %4, align 4
  br label %147

50:                                               ; preds = %43
  br label %51

51:                                               ; preds = %50, %30
  %52 = load %struct.netlink_sock*, %struct.netlink_sock** %10, align 8
  %53 = getelementptr inbounds %struct.netlink_sock, %struct.netlink_sock* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %68

56:                                               ; preds = %51
  %57 = load %struct.sockaddr_nl*, %struct.sockaddr_nl** %11, align 8
  %58 = getelementptr inbounds %struct.sockaddr_nl, %struct.sockaddr_nl* %57, i32 0, i32 2
  %59 = load i64, i64* %58, align 8
  %60 = load %struct.netlink_sock*, %struct.netlink_sock** %10, align 8
  %61 = getelementptr inbounds %struct.netlink_sock, %struct.netlink_sock* %60, i32 0, i32 0
  %62 = load i64, i64* %61, align 8
  %63 = icmp ne i64 %59, %62
  br i1 %63, label %64, label %67

64:                                               ; preds = %56
  %65 = load i32, i32* @EINVAL, align 4
  %66 = sub nsw i32 0, %65
  store i32 %66, i32* %4, align 4
  br label %147

67:                                               ; preds = %56
  br label %90

68:                                               ; preds = %51
  %69 = load %struct.sockaddr_nl*, %struct.sockaddr_nl** %11, align 8
  %70 = getelementptr inbounds %struct.sockaddr_nl, %struct.sockaddr_nl* %69, i32 0, i32 2
  %71 = load i64, i64* %70, align 8
  %72 = icmp ne i64 %71, 0
  br i1 %72, label %73, label %80

73:                                               ; preds = %68
  %74 = load %struct.sock*, %struct.sock** %8, align 8
  %75 = load %struct.net*, %struct.net** %9, align 8
  %76 = load %struct.sockaddr_nl*, %struct.sockaddr_nl** %11, align 8
  %77 = getelementptr inbounds %struct.sockaddr_nl, %struct.sockaddr_nl* %76, i32 0, i32 2
  %78 = load i64, i64* %77, align 8
  %79 = call i32 @netlink_insert(%struct.sock* %74, %struct.net* %75, i64 %78)
  br label %83

80:                                               ; preds = %68
  %81 = load %struct.socket*, %struct.socket** %5, align 8
  %82 = call i32 @netlink_autobind(%struct.socket* %81)
  br label %83

83:                                               ; preds = %80, %73
  %84 = phi i32 [ %79, %73 ], [ %82, %80 ]
  store i32 %84, i32* %12, align 4
  %85 = load i32, i32* %12, align 4
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %87, label %89

87:                                               ; preds = %83
  %88 = load i32, i32* %12, align 4
  store i32 %88, i32* %4, align 4
  br label %147

89:                                               ; preds = %83
  br label %90

90:                                               ; preds = %89, %67
  %91 = load %struct.sockaddr_nl*, %struct.sockaddr_nl** %11, align 8
  %92 = getelementptr inbounds %struct.sockaddr_nl, %struct.sockaddr_nl* %91, i32 0, i32 1
  %93 = load i32, i32* %92, align 8
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %108, label %95

95:                                               ; preds = %90
  %96 = load %struct.netlink_sock*, %struct.netlink_sock** %10, align 8
  %97 = getelementptr inbounds %struct.netlink_sock, %struct.netlink_sock* %96, i32 0, i32 1
  %98 = load i32*, i32** %97, align 8
  %99 = icmp eq i32* %98, null
  br i1 %99, label %107, label %100

100:                                              ; preds = %95
  %101 = load %struct.netlink_sock*, %struct.netlink_sock** %10, align 8
  %102 = getelementptr inbounds %struct.netlink_sock, %struct.netlink_sock* %101, i32 0, i32 1
  %103 = load i32*, i32** %102, align 8
  %104 = getelementptr inbounds i32, i32* %103, i64 0
  %105 = load i32, i32* %104, align 4
  %106 = icmp ne i32 %105, 0
  br i1 %106, label %108, label %107

107:                                              ; preds = %100, %95
  store i32 0, i32* %4, align 4
  br label %147

108:                                              ; preds = %100, %90
  %109 = call i32 (...) @netlink_table_grab()
  %110 = load %struct.sock*, %struct.sock** %8, align 8
  %111 = load %struct.netlink_sock*, %struct.netlink_sock** %10, align 8
  %112 = getelementptr inbounds %struct.netlink_sock, %struct.netlink_sock* %111, i32 0, i32 2
  %113 = load i64, i64* %112, align 8
  %114 = load %struct.sockaddr_nl*, %struct.sockaddr_nl** %11, align 8
  %115 = getelementptr inbounds %struct.sockaddr_nl, %struct.sockaddr_nl* %114, i32 0, i32 1
  %116 = load i32, i32* %115, align 8
  %117 = call i64 @hweight32(i32 %116)
  %118 = add nsw i64 %113, %117
  %119 = load %struct.netlink_sock*, %struct.netlink_sock** %10, align 8
  %120 = getelementptr inbounds %struct.netlink_sock, %struct.netlink_sock* %119, i32 0, i32 1
  %121 = load i32*, i32** %120, align 8
  %122 = getelementptr inbounds i32, i32* %121, i64 0
  %123 = load i32, i32* %122, align 4
  %124 = call i64 @hweight32(i32 %123)
  %125 = sub nsw i64 %118, %124
  %126 = call i32 @netlink_update_subscriptions(%struct.sock* %110, i64 %125)
  %127 = load %struct.netlink_sock*, %struct.netlink_sock** %10, align 8
  %128 = getelementptr inbounds %struct.netlink_sock, %struct.netlink_sock* %127, i32 0, i32 1
  %129 = load i32*, i32** %128, align 8
  %130 = getelementptr inbounds i32, i32* %129, i64 0
  %131 = load i32, i32* %130, align 4
  %132 = sext i32 %131 to i64
  %133 = and i64 %132, -4294967296
  %134 = load %struct.sockaddr_nl*, %struct.sockaddr_nl** %11, align 8
  %135 = getelementptr inbounds %struct.sockaddr_nl, %struct.sockaddr_nl* %134, i32 0, i32 1
  %136 = load i32, i32* %135, align 8
  %137 = sext i32 %136 to i64
  %138 = or i64 %133, %137
  %139 = trunc i64 %138 to i32
  %140 = load %struct.netlink_sock*, %struct.netlink_sock** %10, align 8
  %141 = getelementptr inbounds %struct.netlink_sock, %struct.netlink_sock* %140, i32 0, i32 1
  %142 = load i32*, i32** %141, align 8
  %143 = getelementptr inbounds i32, i32* %142, i64 0
  store i32 %139, i32* %143, align 4
  %144 = load %struct.sock*, %struct.sock** %8, align 8
  %145 = call i32 @netlink_update_listeners(%struct.sock* %144)
  %146 = call i32 (...) @netlink_table_ungrab()
  store i32 0, i32* %4, align 4
  br label %147

147:                                              ; preds = %108, %107, %87, %64, %48, %40, %27
  %148 = load i32, i32* %4, align 4
  ret i32 %148
}

declare dso_local %struct.net* @sock_net(%struct.sock*) #1

declare dso_local %struct.netlink_sock* @nlk_sk(%struct.sock*) #1

declare dso_local i32 @netlink_capable(%struct.socket*, i32) #1

declare dso_local i32 @netlink_realloc_groups(%struct.sock*) #1

declare dso_local i32 @netlink_insert(%struct.sock*, %struct.net*, i64) #1

declare dso_local i32 @netlink_autobind(%struct.socket*) #1

declare dso_local i32 @netlink_table_grab(...) #1

declare dso_local i32 @netlink_update_subscriptions(%struct.sock*, i64) #1

declare dso_local i64 @hweight32(i32) #1

declare dso_local i32 @netlink_update_listeners(%struct.sock*) #1

declare dso_local i32 @netlink_table_ungrab(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

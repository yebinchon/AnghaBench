; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/appletalk/extr_ddp.c_atalk_bind.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/appletalk/extr_ddp.c_atalk_bind.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.socket = type { %struct.sock* }
%struct.sock = type { i32 }
%struct.sockaddr = type { i32 }
%struct.sockaddr_at = type { i64, i64, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64, i32 }
%struct.atalk_sock = type { i64, i64, i32 }
%struct.atalk_addr = type { i64, i32 }

@SOCK_ZAPPED = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@AF_APPLETALK = common dso_local global i64 0, align 8
@EAFNOSUPPORT = common dso_local global i32 0, align 4
@ATADDR_ANYNET = common dso_local global i32 0, align 4
@EADDRNOTAVAIL = common dso_local global i32 0, align 4
@ATADDR_ANYPORT = common dso_local global i64 0, align 8
@EADDRINUSE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.socket*, %struct.sockaddr*, i32)* @atalk_bind to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @atalk_bind(%struct.socket* %0, %struct.sockaddr* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.socket*, align 8
  %6 = alloca %struct.sockaddr*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.sockaddr_at*, align 8
  %9 = alloca %struct.sock*, align 8
  %10 = alloca %struct.atalk_sock*, align 8
  %11 = alloca %struct.atalk_addr*, align 8
  %12 = alloca i32, align 4
  store %struct.socket* %0, %struct.socket** %5, align 8
  store %struct.sockaddr* %1, %struct.sockaddr** %6, align 8
  store i32 %2, i32* %7, align 4
  %13 = load %struct.sockaddr*, %struct.sockaddr** %6, align 8
  %14 = bitcast %struct.sockaddr* %13 to %struct.sockaddr_at*
  store %struct.sockaddr_at* %14, %struct.sockaddr_at** %8, align 8
  %15 = load %struct.socket*, %struct.socket** %5, align 8
  %16 = getelementptr inbounds %struct.socket, %struct.socket* %15, i32 0, i32 0
  %17 = load %struct.sock*, %struct.sock** %16, align 8
  store %struct.sock* %17, %struct.sock** %9, align 8
  %18 = load %struct.sock*, %struct.sock** %9, align 8
  %19 = call %struct.atalk_sock* @at_sk(%struct.sock* %18)
  store %struct.atalk_sock* %19, %struct.atalk_sock** %10, align 8
  %20 = load %struct.sock*, %struct.sock** %9, align 8
  %21 = load i32, i32* @SOCK_ZAPPED, align 4
  %22 = call i32 @sock_flag(%struct.sock* %20, i32 %21)
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %28

24:                                               ; preds = %3
  %25 = load i32, i32* %7, align 4
  %26 = sext i32 %25 to i64
  %27 = icmp ne i64 %26, 32
  br i1 %27, label %28, label %31

28:                                               ; preds = %24, %3
  %29 = load i32, i32* @EINVAL, align 4
  %30 = sub nsw i32 0, %29
  store i32 %30, i32* %4, align 4
  br label %132

31:                                               ; preds = %24
  %32 = load %struct.sockaddr_at*, %struct.sockaddr_at** %8, align 8
  %33 = getelementptr inbounds %struct.sockaddr_at, %struct.sockaddr_at* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = load i64, i64* @AF_APPLETALK, align 8
  %36 = icmp ne i64 %34, %35
  br i1 %36, label %37, label %40

37:                                               ; preds = %31
  %38 = load i32, i32* @EAFNOSUPPORT, align 4
  %39 = sub nsw i32 0, %38
  store i32 %39, i32* %4, align 4
  br label %132

40:                                               ; preds = %31
  %41 = load %struct.sockaddr_at*, %struct.sockaddr_at** %8, align 8
  %42 = getelementptr inbounds %struct.sockaddr_at, %struct.sockaddr_at* %41, i32 0, i32 2
  %43 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = load i32, i32* @ATADDR_ANYNET, align 4
  %46 = call i64 @htons(i32 %45)
  %47 = icmp eq i64 %44, %46
  br i1 %47, label %48, label %72

48:                                               ; preds = %40
  %49 = call %struct.atalk_addr* (...) @atalk_find_primary()
  store %struct.atalk_addr* %49, %struct.atalk_addr** %11, align 8
  %50 = load %struct.atalk_addr*, %struct.atalk_addr** %11, align 8
  %51 = icmp ne %struct.atalk_addr* %50, null
  br i1 %51, label %55, label %52

52:                                               ; preds = %48
  %53 = load i32, i32* @EADDRNOTAVAIL, align 4
  %54 = sub nsw i32 0, %53
  store i32 %54, i32* %4, align 4
  br label %132

55:                                               ; preds = %48
  %56 = load %struct.atalk_addr*, %struct.atalk_addr** %11, align 8
  %57 = getelementptr inbounds %struct.atalk_addr, %struct.atalk_addr* %56, i32 0, i32 0
  %58 = load i64, i64* %57, align 8
  %59 = load %struct.sockaddr_at*, %struct.sockaddr_at** %8, align 8
  %60 = getelementptr inbounds %struct.sockaddr_at, %struct.sockaddr_at* %59, i32 0, i32 2
  %61 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %60, i32 0, i32 0
  store i64 %58, i64* %61, align 8
  %62 = load %struct.atalk_sock*, %struct.atalk_sock** %10, align 8
  %63 = getelementptr inbounds %struct.atalk_sock, %struct.atalk_sock* %62, i32 0, i32 0
  store i64 %58, i64* %63, align 8
  %64 = load %struct.atalk_addr*, %struct.atalk_addr** %11, align 8
  %65 = getelementptr inbounds %struct.atalk_addr, %struct.atalk_addr* %64, i32 0, i32 1
  %66 = load i32, i32* %65, align 8
  %67 = load %struct.sockaddr_at*, %struct.sockaddr_at** %8, align 8
  %68 = getelementptr inbounds %struct.sockaddr_at, %struct.sockaddr_at* %67, i32 0, i32 2
  %69 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %68, i32 0, i32 1
  store i32 %66, i32* %69, align 8
  %70 = load %struct.atalk_sock*, %struct.atalk_sock** %10, align 8
  %71 = getelementptr inbounds %struct.atalk_sock, %struct.atalk_sock* %70, i32 0, i32 2
  store i32 %66, i32* %71, align 8
  br label %99

72:                                               ; preds = %40
  %73 = load %struct.sockaddr_at*, %struct.sockaddr_at** %8, align 8
  %74 = getelementptr inbounds %struct.sockaddr_at, %struct.sockaddr_at* %73, i32 0, i32 2
  %75 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %74, i32 0, i32 0
  %76 = load i64, i64* %75, align 8
  %77 = load %struct.sockaddr_at*, %struct.sockaddr_at** %8, align 8
  %78 = getelementptr inbounds %struct.sockaddr_at, %struct.sockaddr_at* %77, i32 0, i32 2
  %79 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %78, i32 0, i32 1
  %80 = load i32, i32* %79, align 8
  %81 = call i32 @atalk_find_interface(i64 %76, i32 %80)
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %86, label %83

83:                                               ; preds = %72
  %84 = load i32, i32* @EADDRNOTAVAIL, align 4
  %85 = sub nsw i32 0, %84
  store i32 %85, i32* %4, align 4
  br label %132

86:                                               ; preds = %72
  %87 = load %struct.sockaddr_at*, %struct.sockaddr_at** %8, align 8
  %88 = getelementptr inbounds %struct.sockaddr_at, %struct.sockaddr_at* %87, i32 0, i32 2
  %89 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %88, i32 0, i32 0
  %90 = load i64, i64* %89, align 8
  %91 = load %struct.atalk_sock*, %struct.atalk_sock** %10, align 8
  %92 = getelementptr inbounds %struct.atalk_sock, %struct.atalk_sock* %91, i32 0, i32 0
  store i64 %90, i64* %92, align 8
  %93 = load %struct.sockaddr_at*, %struct.sockaddr_at** %8, align 8
  %94 = getelementptr inbounds %struct.sockaddr_at, %struct.sockaddr_at* %93, i32 0, i32 2
  %95 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %94, i32 0, i32 1
  %96 = load i32, i32* %95, align 8
  %97 = load %struct.atalk_sock*, %struct.atalk_sock** %10, align 8
  %98 = getelementptr inbounds %struct.atalk_sock, %struct.atalk_sock* %97, i32 0, i32 2
  store i32 %96, i32* %98, align 8
  br label %99

99:                                               ; preds = %86, %55
  %100 = load %struct.sockaddr_at*, %struct.sockaddr_at** %8, align 8
  %101 = getelementptr inbounds %struct.sockaddr_at, %struct.sockaddr_at* %100, i32 0, i32 1
  %102 = load i64, i64* %101, align 8
  %103 = load i64, i64* @ATADDR_ANYPORT, align 8
  %104 = icmp eq i64 %102, %103
  br i1 %104, label %105, label %114

105:                                              ; preds = %99
  %106 = load %struct.sock*, %struct.sock** %9, align 8
  %107 = load %struct.sockaddr_at*, %struct.sockaddr_at** %8, align 8
  %108 = call i32 @atalk_pick_and_bind_port(%struct.sock* %106, %struct.sockaddr_at* %107)
  store i32 %108, i32* %12, align 4
  %109 = load i32, i32* %12, align 4
  %110 = icmp slt i32 %109, 0
  br i1 %110, label %111, label %113

111:                                              ; preds = %105
  %112 = load i32, i32* %12, align 4
  store i32 %112, i32* %4, align 4
  br label %132

113:                                              ; preds = %105
  br label %128

114:                                              ; preds = %99
  %115 = load %struct.sockaddr_at*, %struct.sockaddr_at** %8, align 8
  %116 = getelementptr inbounds %struct.sockaddr_at, %struct.sockaddr_at* %115, i32 0, i32 1
  %117 = load i64, i64* %116, align 8
  %118 = load %struct.atalk_sock*, %struct.atalk_sock** %10, align 8
  %119 = getelementptr inbounds %struct.atalk_sock, %struct.atalk_sock* %118, i32 0, i32 1
  store i64 %117, i64* %119, align 8
  %120 = load %struct.sock*, %struct.sock** %9, align 8
  %121 = load %struct.sockaddr_at*, %struct.sockaddr_at** %8, align 8
  %122 = call i64 @atalk_find_or_insert_socket(%struct.sock* %120, %struct.sockaddr_at* %121)
  %123 = icmp ne i64 %122, 0
  br i1 %123, label %124, label %127

124:                                              ; preds = %114
  %125 = load i32, i32* @EADDRINUSE, align 4
  %126 = sub nsw i32 0, %125
  store i32 %126, i32* %4, align 4
  br label %132

127:                                              ; preds = %114
  br label %128

128:                                              ; preds = %127, %113
  %129 = load %struct.sock*, %struct.sock** %9, align 8
  %130 = load i32, i32* @SOCK_ZAPPED, align 4
  %131 = call i32 @sock_reset_flag(%struct.sock* %129, i32 %130)
  store i32 0, i32* %4, align 4
  br label %132

132:                                              ; preds = %128, %124, %111, %83, %52, %37, %28
  %133 = load i32, i32* %4, align 4
  ret i32 %133
}

declare dso_local %struct.atalk_sock* @at_sk(%struct.sock*) #1

declare dso_local i32 @sock_flag(%struct.sock*, i32) #1

declare dso_local i64 @htons(i32) #1

declare dso_local %struct.atalk_addr* @atalk_find_primary(...) #1

declare dso_local i32 @atalk_find_interface(i64, i32) #1

declare dso_local i32 @atalk_pick_and_bind_port(%struct.sock*, %struct.sockaddr_at*) #1

declare dso_local i64 @atalk_find_or_insert_socket(%struct.sock*, %struct.sockaddr_at*) #1

declare dso_local i32 @sock_reset_flag(%struct.sock*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/can/extr_raw.c_raw_bind.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/can/extr_raw.c_raw_bind.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.socket = type { %struct.sock* }
%struct.sock = type { i32 (%struct.sock*)*, i32 }
%struct.sockaddr = type { i32 }
%struct.sockaddr_can = type { i32 }
%struct.raw_sock = type { i32, i32 }
%struct.net_device = type { i64, i32, i32 }

@EINVAL = common dso_local global i32 0, align 4
@init_net = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@ARPHRD_CAN = common dso_local global i64 0, align 8
@IFF_UP = common dso_local global i32 0, align 4
@ENETDOWN = common dso_local global i32 0, align 4
@SOCK_DEAD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.socket*, %struct.sockaddr*, i32)* @raw_bind to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @raw_bind(%struct.socket* %0, %struct.sockaddr* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.socket*, align 8
  %6 = alloca %struct.sockaddr*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.sockaddr_can*, align 8
  %9 = alloca %struct.sock*, align 8
  %10 = alloca %struct.raw_sock*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.net_device*, align 8
  %15 = alloca %struct.net_device*, align 8
  store %struct.socket* %0, %struct.socket** %5, align 8
  store %struct.sockaddr* %1, %struct.sockaddr** %6, align 8
  store i32 %2, i32* %7, align 4
  %16 = load %struct.sockaddr*, %struct.sockaddr** %6, align 8
  %17 = bitcast %struct.sockaddr* %16 to %struct.sockaddr_can*
  store %struct.sockaddr_can* %17, %struct.sockaddr_can** %8, align 8
  %18 = load %struct.socket*, %struct.socket** %5, align 8
  %19 = getelementptr inbounds %struct.socket, %struct.socket* %18, i32 0, i32 0
  %20 = load %struct.sock*, %struct.sock** %19, align 8
  store %struct.sock* %20, %struct.sock** %9, align 8
  %21 = load %struct.sock*, %struct.sock** %9, align 8
  %22 = call %struct.raw_sock* @raw_sk(%struct.sock* %21)
  store %struct.raw_sock* %22, %struct.raw_sock** %10, align 8
  store i32 0, i32* %12, align 4
  store i32 0, i32* %13, align 4
  %23 = load i32, i32* %7, align 4
  %24 = sext i32 %23 to i64
  %25 = icmp ult i64 %24, 4
  br i1 %25, label %26, label %29

26:                                               ; preds = %3
  %27 = load i32, i32* @EINVAL, align 4
  %28 = sub nsw i32 0, %27
  store i32 %28, i32* %4, align 4
  br label %151

29:                                               ; preds = %3
  %30 = load %struct.sock*, %struct.sock** %9, align 8
  %31 = call i32 @lock_sock(%struct.sock* %30)
  %32 = load %struct.raw_sock*, %struct.raw_sock** %10, align 8
  %33 = getelementptr inbounds %struct.raw_sock, %struct.raw_sock* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %45

36:                                               ; preds = %29
  %37 = load %struct.sockaddr_can*, %struct.sockaddr_can** %8, align 8
  %38 = getelementptr inbounds %struct.sockaddr_can, %struct.sockaddr_can* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = load %struct.raw_sock*, %struct.raw_sock** %10, align 8
  %41 = getelementptr inbounds %struct.raw_sock, %struct.raw_sock* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 4
  %43 = icmp eq i32 %39, %42
  br i1 %43, label %44, label %45

44:                                               ; preds = %36
  br label %129

45:                                               ; preds = %36, %29
  %46 = load %struct.sockaddr_can*, %struct.sockaddr_can** %8, align 8
  %47 = getelementptr inbounds %struct.sockaddr_can, %struct.sockaddr_can* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %88

50:                                               ; preds = %45
  %51 = load %struct.sockaddr_can*, %struct.sockaddr_can** %8, align 8
  %52 = getelementptr inbounds %struct.sockaddr_can, %struct.sockaddr_can* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = call %struct.net_device* @dev_get_by_index(i32* @init_net, i32 %53)
  store %struct.net_device* %54, %struct.net_device** %14, align 8
  %55 = load %struct.net_device*, %struct.net_device** %14, align 8
  %56 = icmp ne %struct.net_device* %55, null
  br i1 %56, label %60, label %57

57:                                               ; preds = %50
  %58 = load i32, i32* @ENODEV, align 4
  %59 = sub nsw i32 0, %58
  store i32 %59, i32* %12, align 4
  br label %129

60:                                               ; preds = %50
  %61 = load %struct.net_device*, %struct.net_device** %14, align 8
  %62 = getelementptr inbounds %struct.net_device, %struct.net_device* %61, i32 0, i32 0
  %63 = load i64, i64* %62, align 8
  %64 = load i64, i64* @ARPHRD_CAN, align 8
  %65 = icmp ne i64 %63, %64
  br i1 %65, label %66, label %71

66:                                               ; preds = %60
  %67 = load %struct.net_device*, %struct.net_device** %14, align 8
  %68 = call i32 @dev_put(%struct.net_device* %67)
  %69 = load i32, i32* @ENODEV, align 4
  %70 = sub nsw i32 0, %69
  store i32 %70, i32* %12, align 4
  br label %129

71:                                               ; preds = %60
  %72 = load %struct.net_device*, %struct.net_device** %14, align 8
  %73 = getelementptr inbounds %struct.net_device, %struct.net_device* %72, i32 0, i32 1
  %74 = load i32, i32* %73, align 8
  %75 = load i32, i32* @IFF_UP, align 4
  %76 = and i32 %74, %75
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %79, label %78

78:                                               ; preds = %71
  store i32 1, i32* %13, align 4
  br label %79

79:                                               ; preds = %78, %71
  %80 = load %struct.net_device*, %struct.net_device** %14, align 8
  %81 = getelementptr inbounds %struct.net_device, %struct.net_device* %80, i32 0, i32 2
  %82 = load i32, i32* %81, align 4
  store i32 %82, i32* %11, align 4
  %83 = load %struct.net_device*, %struct.net_device** %14, align 8
  %84 = load %struct.sock*, %struct.sock** %9, align 8
  %85 = call i32 @raw_enable_allfilters(%struct.net_device* %83, %struct.sock* %84)
  store i32 %85, i32* %12, align 4
  %86 = load %struct.net_device*, %struct.net_device** %14, align 8
  %87 = call i32 @dev_put(%struct.net_device* %86)
  br label %91

88:                                               ; preds = %45
  store i32 0, i32* %11, align 4
  %89 = load %struct.sock*, %struct.sock** %9, align 8
  %90 = call i32 @raw_enable_allfilters(%struct.net_device* null, %struct.sock* %89)
  store i32 %90, i32* %12, align 4
  br label %91

91:                                               ; preds = %88, %79
  %92 = load i32, i32* %12, align 4
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %128, label %94

94:                                               ; preds = %91
  %95 = load %struct.raw_sock*, %struct.raw_sock** %10, align 8
  %96 = getelementptr inbounds %struct.raw_sock, %struct.raw_sock* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 4
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %99, label %122

99:                                               ; preds = %94
  %100 = load %struct.raw_sock*, %struct.raw_sock** %10, align 8
  %101 = getelementptr inbounds %struct.raw_sock, %struct.raw_sock* %100, i32 0, i32 1
  %102 = load i32, i32* %101, align 4
  %103 = icmp ne i32 %102, 0
  br i1 %103, label %104, label %118

104:                                              ; preds = %99
  %105 = load %struct.raw_sock*, %struct.raw_sock** %10, align 8
  %106 = getelementptr inbounds %struct.raw_sock, %struct.raw_sock* %105, i32 0, i32 1
  %107 = load i32, i32* %106, align 4
  %108 = call %struct.net_device* @dev_get_by_index(i32* @init_net, i32 %107)
  store %struct.net_device* %108, %struct.net_device** %15, align 8
  %109 = load %struct.net_device*, %struct.net_device** %15, align 8
  %110 = icmp ne %struct.net_device* %109, null
  br i1 %110, label %111, label %117

111:                                              ; preds = %104
  %112 = load %struct.net_device*, %struct.net_device** %15, align 8
  %113 = load %struct.sock*, %struct.sock** %9, align 8
  %114 = call i32 @raw_disable_allfilters(%struct.net_device* %112, %struct.sock* %113)
  %115 = load %struct.net_device*, %struct.net_device** %15, align 8
  %116 = call i32 @dev_put(%struct.net_device* %115)
  br label %117

117:                                              ; preds = %111, %104
  br label %121

118:                                              ; preds = %99
  %119 = load %struct.sock*, %struct.sock** %9, align 8
  %120 = call i32 @raw_disable_allfilters(%struct.net_device* null, %struct.sock* %119)
  br label %121

121:                                              ; preds = %118, %117
  br label %122

122:                                              ; preds = %121, %94
  %123 = load i32, i32* %11, align 4
  %124 = load %struct.raw_sock*, %struct.raw_sock** %10, align 8
  %125 = getelementptr inbounds %struct.raw_sock, %struct.raw_sock* %124, i32 0, i32 1
  store i32 %123, i32* %125, align 4
  %126 = load %struct.raw_sock*, %struct.raw_sock** %10, align 8
  %127 = getelementptr inbounds %struct.raw_sock, %struct.raw_sock* %126, i32 0, i32 0
  store i32 1, i32* %127, align 4
  br label %128

128:                                              ; preds = %122, %91
  br label %129

129:                                              ; preds = %128, %66, %57, %44
  %130 = load %struct.sock*, %struct.sock** %9, align 8
  %131 = call i32 @release_sock(%struct.sock* %130)
  %132 = load i32, i32* %13, align 4
  %133 = icmp ne i32 %132, 0
  br i1 %133, label %134, label %149

134:                                              ; preds = %129
  %135 = load i32, i32* @ENETDOWN, align 4
  %136 = load %struct.sock*, %struct.sock** %9, align 8
  %137 = getelementptr inbounds %struct.sock, %struct.sock* %136, i32 0, i32 1
  store i32 %135, i32* %137, align 8
  %138 = load %struct.sock*, %struct.sock** %9, align 8
  %139 = load i32, i32* @SOCK_DEAD, align 4
  %140 = call i32 @sock_flag(%struct.sock* %138, i32 %139)
  %141 = icmp ne i32 %140, 0
  br i1 %141, label %148, label %142

142:                                              ; preds = %134
  %143 = load %struct.sock*, %struct.sock** %9, align 8
  %144 = getelementptr inbounds %struct.sock, %struct.sock* %143, i32 0, i32 0
  %145 = load i32 (%struct.sock*)*, i32 (%struct.sock*)** %144, align 8
  %146 = load %struct.sock*, %struct.sock** %9, align 8
  %147 = call i32 %145(%struct.sock* %146)
  br label %148

148:                                              ; preds = %142, %134
  br label %149

149:                                              ; preds = %148, %129
  %150 = load i32, i32* %12, align 4
  store i32 %150, i32* %4, align 4
  br label %151

151:                                              ; preds = %149, %26
  %152 = load i32, i32* %4, align 4
  ret i32 %152
}

declare dso_local %struct.raw_sock* @raw_sk(%struct.sock*) #1

declare dso_local i32 @lock_sock(%struct.sock*) #1

declare dso_local %struct.net_device* @dev_get_by_index(i32*, i32) #1

declare dso_local i32 @dev_put(%struct.net_device*) #1

declare dso_local i32 @raw_enable_allfilters(%struct.net_device*, %struct.sock*) #1

declare dso_local i32 @raw_disable_allfilters(%struct.net_device*, %struct.sock*) #1

declare dso_local i32 @release_sock(%struct.sock*) #1

declare dso_local i32 @sock_flag(%struct.sock*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

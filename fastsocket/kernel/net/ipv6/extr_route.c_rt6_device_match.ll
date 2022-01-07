; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/ipv6/extr_route.c_rt6_device_match.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/ipv6/extr_route.c_rt6_device_match.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net = type { %struct.TYPE_10__ }
%struct.TYPE_10__ = type { %struct.rt6_info* }
%struct.rt6_info = type { %struct.TYPE_9__*, %struct.net_device*, %struct.TYPE_7__ }
%struct.TYPE_9__ = type { %struct.TYPE_8__* }
%struct.TYPE_8__ = type { i32 }
%struct.net_device = type { i32, i32 }
%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.rt6_info* }
%struct.in6_addr = type { i32 }

@IFF_LOOPBACK = common dso_local global i32 0, align 4
@RT6_LOOKUP_F_IFACE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.rt6_info* (%struct.net*, %struct.rt6_info*, %struct.in6_addr*, i32, i32)* @rt6_device_match to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.rt6_info* @rt6_device_match(%struct.net* %0, %struct.rt6_info* %1, %struct.in6_addr* %2, i32 %3, i32 %4) #0 {
  %6 = alloca %struct.rt6_info*, align 8
  %7 = alloca %struct.net*, align 8
  %8 = alloca %struct.rt6_info*, align 8
  %9 = alloca %struct.in6_addr*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.rt6_info*, align 8
  %13 = alloca %struct.rt6_info*, align 8
  %14 = alloca %struct.net_device*, align 8
  store %struct.net* %0, %struct.net** %7, align 8
  store %struct.rt6_info* %1, %struct.rt6_info** %8, align 8
  store %struct.in6_addr* %2, %struct.in6_addr** %9, align 8
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  store %struct.rt6_info* null, %struct.rt6_info** %12, align 8
  %15 = load i32, i32* %10, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %22, label %17

17:                                               ; preds = %5
  %18 = load %struct.in6_addr*, %struct.in6_addr** %9, align 8
  %19 = call i64 @ipv6_addr_any(%struct.in6_addr* %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %22

21:                                               ; preds = %17
  br label %132

22:                                               ; preds = %17, %5
  %23 = load %struct.rt6_info*, %struct.rt6_info** %8, align 8
  store %struct.rt6_info* %23, %struct.rt6_info** %13, align 8
  br label %24

24:                                               ; preds = %106, %22
  %25 = load %struct.rt6_info*, %struct.rt6_info** %13, align 8
  %26 = icmp ne %struct.rt6_info* %25, null
  br i1 %26, label %27, label %112

27:                                               ; preds = %24
  %28 = load %struct.rt6_info*, %struct.rt6_info** %13, align 8
  %29 = getelementptr inbounds %struct.rt6_info, %struct.rt6_info* %28, i32 0, i32 1
  %30 = load %struct.net_device*, %struct.net_device** %29, align 8
  store %struct.net_device* %30, %struct.net_device** %14, align 8
  %31 = load i32, i32* %10, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %93

33:                                               ; preds = %27
  %34 = load %struct.net_device*, %struct.net_device** %14, align 8
  %35 = getelementptr inbounds %struct.net_device, %struct.net_device* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = load i32, i32* %10, align 4
  %38 = icmp eq i32 %36, %37
  br i1 %38, label %39, label %41

39:                                               ; preds = %33
  %40 = load %struct.rt6_info*, %struct.rt6_info** %13, align 8
  store %struct.rt6_info* %40, %struct.rt6_info** %6, align 8
  br label %134

41:                                               ; preds = %33
  %42 = load %struct.net_device*, %struct.net_device** %14, align 8
  %43 = getelementptr inbounds %struct.net_device, %struct.net_device* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 4
  %45 = load i32, i32* @IFF_LOOPBACK, align 4
  %46 = and i32 %44, %45
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %92

48:                                               ; preds = %41
  %49 = load %struct.rt6_info*, %struct.rt6_info** %13, align 8
  %50 = getelementptr inbounds %struct.rt6_info, %struct.rt6_info* %49, i32 0, i32 0
  %51 = load %struct.TYPE_9__*, %struct.TYPE_9__** %50, align 8
  %52 = icmp eq %struct.TYPE_9__* %51, null
  br i1 %52, label %63, label %53

53:                                               ; preds = %48
  %54 = load %struct.rt6_info*, %struct.rt6_info** %13, align 8
  %55 = getelementptr inbounds %struct.rt6_info, %struct.rt6_info* %54, i32 0, i32 0
  %56 = load %struct.TYPE_9__*, %struct.TYPE_9__** %55, align 8
  %57 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %56, i32 0, i32 0
  %58 = load %struct.TYPE_8__*, %struct.TYPE_8__** %57, align 8
  %59 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = load i32, i32* %10, align 4
  %62 = icmp ne i32 %60, %61
  br i1 %62, label %63, label %90

63:                                               ; preds = %53, %48
  %64 = load i32, i32* %11, align 4
  %65 = load i32, i32* @RT6_LOOKUP_F_IFACE, align 4
  %66 = and i32 %64, %65
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %72

68:                                               ; preds = %63
  %69 = load i32, i32* %10, align 4
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %72

71:                                               ; preds = %68
  br label %106

72:                                               ; preds = %68, %63
  %73 = load %struct.rt6_info*, %struct.rt6_info** %12, align 8
  %74 = icmp ne %struct.rt6_info* %73, null
  br i1 %74, label %75, label %89

75:                                               ; preds = %72
  %76 = load i32, i32* %10, align 4
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %78, label %88

78:                                               ; preds = %75
  %79 = load %struct.rt6_info*, %struct.rt6_info** %12, align 8
  %80 = getelementptr inbounds %struct.rt6_info, %struct.rt6_info* %79, i32 0, i32 0
  %81 = load %struct.TYPE_9__*, %struct.TYPE_9__** %80, align 8
  %82 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %81, i32 0, i32 0
  %83 = load %struct.TYPE_8__*, %struct.TYPE_8__** %82, align 8
  %84 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 4
  %86 = load i32, i32* %10, align 4
  %87 = icmp eq i32 %85, %86
  br i1 %87, label %88, label %89

88:                                               ; preds = %78, %75
  br label %106

89:                                               ; preds = %78, %72
  br label %90

90:                                               ; preds = %89, %53
  %91 = load %struct.rt6_info*, %struct.rt6_info** %13, align 8
  store %struct.rt6_info* %91, %struct.rt6_info** %12, align 8
  br label %92

92:                                               ; preds = %90, %41
  br label %105

93:                                               ; preds = %27
  %94 = load %struct.net*, %struct.net** %7, align 8
  %95 = load %struct.in6_addr*, %struct.in6_addr** %9, align 8
  %96 = load %struct.net_device*, %struct.net_device** %14, align 8
  %97 = load i32, i32* %11, align 4
  %98 = load i32, i32* @RT6_LOOKUP_F_IFACE, align 4
  %99 = and i32 %97, %98
  %100 = call i64 @ipv6_chk_addr(%struct.net* %94, %struct.in6_addr* %95, %struct.net_device* %96, i32 %99)
  %101 = icmp ne i64 %100, 0
  br i1 %101, label %102, label %104

102:                                              ; preds = %93
  %103 = load %struct.rt6_info*, %struct.rt6_info** %13, align 8
  store %struct.rt6_info* %103, %struct.rt6_info** %6, align 8
  br label %134

104:                                              ; preds = %93
  br label %105

105:                                              ; preds = %104, %92
  br label %106

106:                                              ; preds = %105, %88, %71
  %107 = load %struct.rt6_info*, %struct.rt6_info** %13, align 8
  %108 = getelementptr inbounds %struct.rt6_info, %struct.rt6_info* %107, i32 0, i32 2
  %109 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %108, i32 0, i32 0
  %110 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %109, i32 0, i32 0
  %111 = load %struct.rt6_info*, %struct.rt6_info** %110, align 8
  store %struct.rt6_info* %111, %struct.rt6_info** %13, align 8
  br label %24

112:                                              ; preds = %24
  %113 = load i32, i32* %10, align 4
  %114 = icmp ne i32 %113, 0
  br i1 %114, label %115, label %131

115:                                              ; preds = %112
  %116 = load %struct.rt6_info*, %struct.rt6_info** %12, align 8
  %117 = icmp ne %struct.rt6_info* %116, null
  br i1 %117, label %118, label %120

118:                                              ; preds = %115
  %119 = load %struct.rt6_info*, %struct.rt6_info** %12, align 8
  store %struct.rt6_info* %119, %struct.rt6_info** %6, align 8
  br label %134

120:                                              ; preds = %115
  %121 = load i32, i32* %11, align 4
  %122 = load i32, i32* @RT6_LOOKUP_F_IFACE, align 4
  %123 = and i32 %121, %122
  %124 = icmp ne i32 %123, 0
  br i1 %124, label %125, label %130

125:                                              ; preds = %120
  %126 = load %struct.net*, %struct.net** %7, align 8
  %127 = getelementptr inbounds %struct.net, %struct.net* %126, i32 0, i32 0
  %128 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %127, i32 0, i32 0
  %129 = load %struct.rt6_info*, %struct.rt6_info** %128, align 8
  store %struct.rt6_info* %129, %struct.rt6_info** %6, align 8
  br label %134

130:                                              ; preds = %120
  br label %131

131:                                              ; preds = %130, %112
  br label %132

132:                                              ; preds = %131, %21
  %133 = load %struct.rt6_info*, %struct.rt6_info** %8, align 8
  store %struct.rt6_info* %133, %struct.rt6_info** %6, align 8
  br label %134

134:                                              ; preds = %132, %125, %118, %102, %39
  %135 = load %struct.rt6_info*, %struct.rt6_info** %6, align 8
  ret %struct.rt6_info* %135
}

declare dso_local i64 @ipv6_addr_any(%struct.in6_addr*) #1

declare dso_local i64 @ipv6_chk_addr(%struct.net*, %struct.in6_addr*, %struct.net_device*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

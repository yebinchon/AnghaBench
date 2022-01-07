; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/ipv4/extr_ipip.c_ipip_tunnel_lookup.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/ipv4/extr_ipip.c_ipip_tunnel_lookup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ip_tunnel = type { %struct.TYPE_6__*, %struct.TYPE_5__, %struct.ip_tunnel* }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i64, i64 }
%struct.net = type { i32 }
%struct.ipip_net = type { %struct.ip_tunnel**, %struct.ip_tunnel**, %struct.ip_tunnel**, %struct.ip_tunnel** }

@ipip_net_id = common dso_local global i32 0, align 4
@IFF_UP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.ip_tunnel* (%struct.net*, i64, i64)* @ipip_tunnel_lookup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.ip_tunnel* @ipip_tunnel_lookup(%struct.net* %0, i64 %1, i64 %2) #0 {
  %4 = alloca %struct.ip_tunnel*, align 8
  %5 = alloca %struct.net*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.ip_tunnel*, align 8
  %11 = alloca %struct.ipip_net*, align 8
  store %struct.net* %0, %struct.net** %5, align 8
  store i64 %1, i64* %6, align 8
  store i64 %2, i64* %7, align 8
  %12 = load i64, i64* %6, align 8
  %13 = call i32 @HASH(i64 %12)
  store i32 %13, i32* %8, align 4
  %14 = load i64, i64* %7, align 8
  %15 = call i32 @HASH(i64 %14)
  store i32 %15, i32* %9, align 4
  %16 = load %struct.net*, %struct.net** %5, align 8
  %17 = load i32, i32* @ipip_net_id, align 4
  %18 = call %struct.ipip_net* @net_generic(%struct.net* %16, i32 %17)
  store %struct.ipip_net* %18, %struct.ipip_net** %11, align 8
  %19 = load %struct.ipip_net*, %struct.ipip_net** %11, align 8
  %20 = getelementptr inbounds %struct.ipip_net, %struct.ipip_net* %19, i32 0, i32 3
  %21 = load %struct.ip_tunnel**, %struct.ip_tunnel*** %20, align 8
  %22 = load i32, i32* %8, align 4
  %23 = load i32, i32* %9, align 4
  %24 = xor i32 %22, %23
  %25 = zext i32 %24 to i64
  %26 = getelementptr inbounds %struct.ip_tunnel*, %struct.ip_tunnel** %21, i64 %25
  %27 = load %struct.ip_tunnel*, %struct.ip_tunnel** %26, align 8
  store %struct.ip_tunnel* %27, %struct.ip_tunnel** %10, align 8
  br label %28

28:                                               ; preds = %59, %3
  %29 = load %struct.ip_tunnel*, %struct.ip_tunnel** %10, align 8
  %30 = icmp ne %struct.ip_tunnel* %29, null
  br i1 %30, label %31, label %63

31:                                               ; preds = %28
  %32 = load i64, i64* %7, align 8
  %33 = load %struct.ip_tunnel*, %struct.ip_tunnel** %10, align 8
  %34 = getelementptr inbounds %struct.ip_tunnel, %struct.ip_tunnel* %33, i32 0, i32 1
  %35 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = icmp eq i64 %32, %37
  br i1 %38, label %39, label %58

39:                                               ; preds = %31
  %40 = load i64, i64* %6, align 8
  %41 = load %struct.ip_tunnel*, %struct.ip_tunnel** %10, align 8
  %42 = getelementptr inbounds %struct.ip_tunnel, %struct.ip_tunnel* %41, i32 0, i32 1
  %43 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %43, i32 0, i32 1
  %45 = load i64, i64* %44, align 8
  %46 = icmp eq i64 %40, %45
  br i1 %46, label %47, label %58

47:                                               ; preds = %39
  %48 = load %struct.ip_tunnel*, %struct.ip_tunnel** %10, align 8
  %49 = getelementptr inbounds %struct.ip_tunnel, %struct.ip_tunnel* %48, i32 0, i32 0
  %50 = load %struct.TYPE_6__*, %struct.TYPE_6__** %49, align 8
  %51 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = load i32, i32* @IFF_UP, align 4
  %54 = and i32 %52, %53
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %58

56:                                               ; preds = %47
  %57 = load %struct.ip_tunnel*, %struct.ip_tunnel** %10, align 8
  store %struct.ip_tunnel* %57, %struct.ip_tunnel** %4, align 8
  br label %152

58:                                               ; preds = %47, %39, %31
  br label %59

59:                                               ; preds = %58
  %60 = load %struct.ip_tunnel*, %struct.ip_tunnel** %10, align 8
  %61 = getelementptr inbounds %struct.ip_tunnel, %struct.ip_tunnel* %60, i32 0, i32 2
  %62 = load %struct.ip_tunnel*, %struct.ip_tunnel** %61, align 8
  store %struct.ip_tunnel* %62, %struct.ip_tunnel** %10, align 8
  br label %28

63:                                               ; preds = %28
  %64 = load %struct.ipip_net*, %struct.ipip_net** %11, align 8
  %65 = getelementptr inbounds %struct.ipip_net, %struct.ipip_net* %64, i32 0, i32 2
  %66 = load %struct.ip_tunnel**, %struct.ip_tunnel*** %65, align 8
  %67 = load i32, i32* %8, align 4
  %68 = zext i32 %67 to i64
  %69 = getelementptr inbounds %struct.ip_tunnel*, %struct.ip_tunnel** %66, i64 %68
  %70 = load %struct.ip_tunnel*, %struct.ip_tunnel** %69, align 8
  store %struct.ip_tunnel* %70, %struct.ip_tunnel** %10, align 8
  br label %71

71:                                               ; preds = %94, %63
  %72 = load %struct.ip_tunnel*, %struct.ip_tunnel** %10, align 8
  %73 = icmp ne %struct.ip_tunnel* %72, null
  br i1 %73, label %74, label %98

74:                                               ; preds = %71
  %75 = load i64, i64* %6, align 8
  %76 = load %struct.ip_tunnel*, %struct.ip_tunnel** %10, align 8
  %77 = getelementptr inbounds %struct.ip_tunnel, %struct.ip_tunnel* %76, i32 0, i32 1
  %78 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %77, i32 0, i32 0
  %79 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %78, i32 0, i32 1
  %80 = load i64, i64* %79, align 8
  %81 = icmp eq i64 %75, %80
  br i1 %81, label %82, label %93

82:                                               ; preds = %74
  %83 = load %struct.ip_tunnel*, %struct.ip_tunnel** %10, align 8
  %84 = getelementptr inbounds %struct.ip_tunnel, %struct.ip_tunnel* %83, i32 0, i32 0
  %85 = load %struct.TYPE_6__*, %struct.TYPE_6__** %84, align 8
  %86 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 4
  %88 = load i32, i32* @IFF_UP, align 4
  %89 = and i32 %87, %88
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %91, label %93

91:                                               ; preds = %82
  %92 = load %struct.ip_tunnel*, %struct.ip_tunnel** %10, align 8
  store %struct.ip_tunnel* %92, %struct.ip_tunnel** %4, align 8
  br label %152

93:                                               ; preds = %82, %74
  br label %94

94:                                               ; preds = %93
  %95 = load %struct.ip_tunnel*, %struct.ip_tunnel** %10, align 8
  %96 = getelementptr inbounds %struct.ip_tunnel, %struct.ip_tunnel* %95, i32 0, i32 2
  %97 = load %struct.ip_tunnel*, %struct.ip_tunnel** %96, align 8
  store %struct.ip_tunnel* %97, %struct.ip_tunnel** %10, align 8
  br label %71

98:                                               ; preds = %71
  %99 = load %struct.ipip_net*, %struct.ipip_net** %11, align 8
  %100 = getelementptr inbounds %struct.ipip_net, %struct.ipip_net* %99, i32 0, i32 1
  %101 = load %struct.ip_tunnel**, %struct.ip_tunnel*** %100, align 8
  %102 = load i32, i32* %9, align 4
  %103 = zext i32 %102 to i64
  %104 = getelementptr inbounds %struct.ip_tunnel*, %struct.ip_tunnel** %101, i64 %103
  %105 = load %struct.ip_tunnel*, %struct.ip_tunnel** %104, align 8
  store %struct.ip_tunnel* %105, %struct.ip_tunnel** %10, align 8
  br label %106

106:                                              ; preds = %129, %98
  %107 = load %struct.ip_tunnel*, %struct.ip_tunnel** %10, align 8
  %108 = icmp ne %struct.ip_tunnel* %107, null
  br i1 %108, label %109, label %133

109:                                              ; preds = %106
  %110 = load i64, i64* %7, align 8
  %111 = load %struct.ip_tunnel*, %struct.ip_tunnel** %10, align 8
  %112 = getelementptr inbounds %struct.ip_tunnel, %struct.ip_tunnel* %111, i32 0, i32 1
  %113 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %112, i32 0, i32 0
  %114 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %113, i32 0, i32 0
  %115 = load i64, i64* %114, align 8
  %116 = icmp eq i64 %110, %115
  br i1 %116, label %117, label %128

117:                                              ; preds = %109
  %118 = load %struct.ip_tunnel*, %struct.ip_tunnel** %10, align 8
  %119 = getelementptr inbounds %struct.ip_tunnel, %struct.ip_tunnel* %118, i32 0, i32 0
  %120 = load %struct.TYPE_6__*, %struct.TYPE_6__** %119, align 8
  %121 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %120, i32 0, i32 0
  %122 = load i32, i32* %121, align 4
  %123 = load i32, i32* @IFF_UP, align 4
  %124 = and i32 %122, %123
  %125 = icmp ne i32 %124, 0
  br i1 %125, label %126, label %128

126:                                              ; preds = %117
  %127 = load %struct.ip_tunnel*, %struct.ip_tunnel** %10, align 8
  store %struct.ip_tunnel* %127, %struct.ip_tunnel** %4, align 8
  br label %152

128:                                              ; preds = %117, %109
  br label %129

129:                                              ; preds = %128
  %130 = load %struct.ip_tunnel*, %struct.ip_tunnel** %10, align 8
  %131 = getelementptr inbounds %struct.ip_tunnel, %struct.ip_tunnel* %130, i32 0, i32 2
  %132 = load %struct.ip_tunnel*, %struct.ip_tunnel** %131, align 8
  store %struct.ip_tunnel* %132, %struct.ip_tunnel** %10, align 8
  br label %106

133:                                              ; preds = %106
  %134 = load %struct.ipip_net*, %struct.ipip_net** %11, align 8
  %135 = getelementptr inbounds %struct.ipip_net, %struct.ipip_net* %134, i32 0, i32 0
  %136 = load %struct.ip_tunnel**, %struct.ip_tunnel*** %135, align 8
  %137 = getelementptr inbounds %struct.ip_tunnel*, %struct.ip_tunnel** %136, i64 0
  %138 = load %struct.ip_tunnel*, %struct.ip_tunnel** %137, align 8
  store %struct.ip_tunnel* %138, %struct.ip_tunnel** %10, align 8
  %139 = icmp ne %struct.ip_tunnel* %138, null
  br i1 %139, label %140, label %151

140:                                              ; preds = %133
  %141 = load %struct.ip_tunnel*, %struct.ip_tunnel** %10, align 8
  %142 = getelementptr inbounds %struct.ip_tunnel, %struct.ip_tunnel* %141, i32 0, i32 0
  %143 = load %struct.TYPE_6__*, %struct.TYPE_6__** %142, align 8
  %144 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %143, i32 0, i32 0
  %145 = load i32, i32* %144, align 4
  %146 = load i32, i32* @IFF_UP, align 4
  %147 = and i32 %145, %146
  %148 = icmp ne i32 %147, 0
  br i1 %148, label %149, label %151

149:                                              ; preds = %140
  %150 = load %struct.ip_tunnel*, %struct.ip_tunnel** %10, align 8
  store %struct.ip_tunnel* %150, %struct.ip_tunnel** %4, align 8
  br label %152

151:                                              ; preds = %140, %133
  store %struct.ip_tunnel* null, %struct.ip_tunnel** %4, align 8
  br label %152

152:                                              ; preds = %151, %149, %126, %91, %56
  %153 = load %struct.ip_tunnel*, %struct.ip_tunnel** %4, align 8
  ret %struct.ip_tunnel* %153
}

declare dso_local i32 @HASH(i64) #1

declare dso_local %struct.ipip_net* @net_generic(%struct.net*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

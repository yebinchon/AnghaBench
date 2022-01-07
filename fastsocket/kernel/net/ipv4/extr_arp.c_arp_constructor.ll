; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/ipv4/extr_arp.c_arp_constructor.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/ipv4/extr_arp.c_arp_constructor.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32, i32, i32 }
%struct.neighbour = type { i32, %struct.TYPE_7__*, i32, i32, i32, i32, %struct.net_device*, i64 }
%struct.net_device = type { i32, i32, %struct.TYPE_6__*, i32, i32, i32 }
%struct.TYPE_6__ = type { i64 }
%struct.in_device = type { %struct.neigh_parms* }
%struct.neigh_parms = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@NUD_NOARP = common dso_local global i8* null, align 8
@arp_direct_ops = common dso_local global %struct.TYPE_7__ zeroinitializer, align 4
@RTN_MULTICAST = common dso_local global i32 0, align 4
@IFF_NOARP = common dso_local global i32 0, align 4
@IFF_LOOPBACK = common dso_local global i32 0, align 4
@RTN_BROADCAST = common dso_local global i32 0, align 4
@IFF_POINTOPOINT = common dso_local global i32 0, align 4
@arp_hh_ops = common dso_local global %struct.TYPE_7__ zeroinitializer, align 4
@arp_generic_ops = common dso_local global %struct.TYPE_7__ zeroinitializer, align 4
@NUD_VALID = common dso_local global i32 0, align 4
@arp_broken_ops = common dso_local global %struct.TYPE_7__ zeroinitializer, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.neighbour*)* @arp_constructor to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @arp_constructor(%struct.neighbour* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.neighbour*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.net_device*, align 8
  %6 = alloca %struct.in_device*, align 8
  %7 = alloca %struct.neigh_parms*, align 8
  store %struct.neighbour* %0, %struct.neighbour** %3, align 8
  %8 = load %struct.neighbour*, %struct.neighbour** %3, align 8
  %9 = getelementptr inbounds %struct.neighbour, %struct.neighbour* %8, i32 0, i32 7
  %10 = load i64, i64* %9, align 8
  %11 = inttoptr i64 %10 to i32*
  %12 = load i32, i32* %11, align 4
  store i32 %12, i32* %4, align 4
  %13 = load %struct.neighbour*, %struct.neighbour** %3, align 8
  %14 = getelementptr inbounds %struct.neighbour, %struct.neighbour* %13, i32 0, i32 6
  %15 = load %struct.net_device*, %struct.net_device** %14, align 8
  store %struct.net_device* %15, %struct.net_device** %5, align 8
  %16 = call i32 (...) @rcu_read_lock()
  %17 = load %struct.net_device*, %struct.net_device** %5, align 8
  %18 = call %struct.in_device* @__in_dev_get_rcu(%struct.net_device* %17)
  store %struct.in_device* %18, %struct.in_device** %6, align 8
  %19 = load %struct.in_device*, %struct.in_device** %6, align 8
  %20 = icmp eq %struct.in_device* %19, null
  br i1 %20, label %21, label %25

21:                                               ; preds = %1
  %22 = call i32 (...) @rcu_read_unlock()
  %23 = load i32, i32* @EINVAL, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %2, align 4
  br label %177

25:                                               ; preds = %1
  %26 = load %struct.net_device*, %struct.net_device** %5, align 8
  %27 = call i32 @dev_net(%struct.net_device* %26)
  %28 = load i32, i32* %4, align 4
  %29 = call i32 @inet_addr_type(i32 %27, i32 %28)
  %30 = load %struct.neighbour*, %struct.neighbour** %3, align 8
  %31 = getelementptr inbounds %struct.neighbour, %struct.neighbour* %30, i32 0, i32 4
  store i32 %29, i32* %31, align 8
  %32 = load %struct.in_device*, %struct.in_device** %6, align 8
  %33 = getelementptr inbounds %struct.in_device, %struct.in_device* %32, i32 0, i32 0
  %34 = load %struct.neigh_parms*, %struct.neigh_parms** %33, align 8
  store %struct.neigh_parms* %34, %struct.neigh_parms** %7, align 8
  %35 = load %struct.neighbour*, %struct.neighbour** %3, align 8
  %36 = getelementptr inbounds %struct.neighbour, %struct.neighbour* %35, i32 0, i32 5
  %37 = load i32, i32* %36, align 4
  %38 = call i32 @__neigh_parms_put(i32 %37)
  %39 = load %struct.neigh_parms*, %struct.neigh_parms** %7, align 8
  %40 = call i32 @neigh_parms_clone(%struct.neigh_parms* %39)
  %41 = load %struct.neighbour*, %struct.neighbour** %3, align 8
  %42 = getelementptr inbounds %struct.neighbour, %struct.neighbour* %41, i32 0, i32 5
  store i32 %40, i32* %42, align 4
  %43 = call i32 (...) @rcu_read_unlock()
  %44 = load %struct.net_device*, %struct.net_device** %5, align 8
  %45 = getelementptr inbounds %struct.net_device, %struct.net_device* %44, i32 0, i32 2
  %46 = load %struct.TYPE_6__*, %struct.TYPE_6__** %45, align 8
  %47 = icmp ne %struct.TYPE_6__* %46, null
  br i1 %47, label %62, label %48

48:                                               ; preds = %25
  %49 = load i8*, i8** @NUD_NOARP, align 8
  %50 = ptrtoint i8* %49 to i32
  %51 = load %struct.neighbour*, %struct.neighbour** %3, align 8
  %52 = getelementptr inbounds %struct.neighbour, %struct.neighbour* %51, i32 0, i32 0
  store i32 %50, i32* %52, align 8
  %53 = load %struct.neighbour*, %struct.neighbour** %3, align 8
  %54 = getelementptr inbounds %struct.neighbour, %struct.neighbour* %53, i32 0, i32 1
  store %struct.TYPE_7__* @arp_direct_ops, %struct.TYPE_7__** %54, align 8
  %55 = load %struct.neighbour*, %struct.neighbour** %3, align 8
  %56 = getelementptr inbounds %struct.neighbour, %struct.neighbour* %55, i32 0, i32 1
  %57 = load %struct.TYPE_7__*, %struct.TYPE_7__** %56, align 8
  %58 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %57, i32 0, i32 2
  %59 = load i32, i32* %58, align 4
  %60 = load %struct.neighbour*, %struct.neighbour** %3, align 8
  %61 = getelementptr inbounds %struct.neighbour, %struct.neighbour* %60, i32 0, i32 2
  store i32 %59, i32* %61, align 8
  br label %176

62:                                               ; preds = %25
  %63 = load %struct.net_device*, %struct.net_device** %5, align 8
  %64 = getelementptr inbounds %struct.net_device, %struct.net_device* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 8
  switch i32 %65, label %66 [
    i32 128, label %67
  ]

66:                                               ; preds = %62
  br label %68

67:                                               ; preds = %62
  br label %68

68:                                               ; preds = %67, %66
  %69 = load %struct.neighbour*, %struct.neighbour** %3, align 8
  %70 = getelementptr inbounds %struct.neighbour, %struct.neighbour* %69, i32 0, i32 4
  %71 = load i32, i32* %70, align 8
  %72 = load i32, i32* @RTN_MULTICAST, align 4
  %73 = icmp eq i32 %71, %72
  br i1 %73, label %74, label %85

74:                                               ; preds = %68
  %75 = load i8*, i8** @NUD_NOARP, align 8
  %76 = ptrtoint i8* %75 to i32
  %77 = load %struct.neighbour*, %struct.neighbour** %3, align 8
  %78 = getelementptr inbounds %struct.neighbour, %struct.neighbour* %77, i32 0, i32 0
  store i32 %76, i32* %78, align 8
  %79 = load i32, i32* %4, align 4
  %80 = load %struct.neighbour*, %struct.neighbour** %3, align 8
  %81 = getelementptr inbounds %struct.neighbour, %struct.neighbour* %80, i32 0, i32 3
  %82 = load i32, i32* %81, align 4
  %83 = load %struct.net_device*, %struct.net_device** %5, align 8
  %84 = call i32 @arp_mc_map(i32 %79, i32 %82, %struct.net_device* %83, i32 1)
  br label %139

85:                                               ; preds = %68
  %86 = load %struct.net_device*, %struct.net_device** %5, align 8
  %87 = getelementptr inbounds %struct.net_device, %struct.net_device* %86, i32 0, i32 1
  %88 = load i32, i32* %87, align 4
  %89 = load i32, i32* @IFF_NOARP, align 4
  %90 = load i32, i32* @IFF_LOOPBACK, align 4
  %91 = or i32 %89, %90
  %92 = and i32 %88, %91
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %94, label %109

94:                                               ; preds = %85
  %95 = load i8*, i8** @NUD_NOARP, align 8
  %96 = ptrtoint i8* %95 to i32
  %97 = load %struct.neighbour*, %struct.neighbour** %3, align 8
  %98 = getelementptr inbounds %struct.neighbour, %struct.neighbour* %97, i32 0, i32 0
  store i32 %96, i32* %98, align 8
  %99 = load %struct.neighbour*, %struct.neighbour** %3, align 8
  %100 = getelementptr inbounds %struct.neighbour, %struct.neighbour* %99, i32 0, i32 3
  %101 = load i32, i32* %100, align 4
  %102 = load %struct.net_device*, %struct.net_device** %5, align 8
  %103 = getelementptr inbounds %struct.net_device, %struct.net_device* %102, i32 0, i32 5
  %104 = load i32, i32* %103, align 8
  %105 = load %struct.net_device*, %struct.net_device** %5, align 8
  %106 = getelementptr inbounds %struct.net_device, %struct.net_device* %105, i32 0, i32 3
  %107 = load i32, i32* %106, align 8
  %108 = call i32 @memcpy(i32 %101, i32 %104, i32 %107)
  br label %138

109:                                              ; preds = %85
  %110 = load %struct.neighbour*, %struct.neighbour** %3, align 8
  %111 = getelementptr inbounds %struct.neighbour, %struct.neighbour* %110, i32 0, i32 4
  %112 = load i32, i32* %111, align 8
  %113 = load i32, i32* @RTN_BROADCAST, align 4
  %114 = icmp eq i32 %112, %113
  br i1 %114, label %122, label %115

115:                                              ; preds = %109
  %116 = load %struct.net_device*, %struct.net_device** %5, align 8
  %117 = getelementptr inbounds %struct.net_device, %struct.net_device* %116, i32 0, i32 1
  %118 = load i32, i32* %117, align 4
  %119 = load i32, i32* @IFF_POINTOPOINT, align 4
  %120 = and i32 %118, %119
  %121 = icmp ne i32 %120, 0
  br i1 %121, label %122, label %137

122:                                              ; preds = %115, %109
  %123 = load i8*, i8** @NUD_NOARP, align 8
  %124 = ptrtoint i8* %123 to i32
  %125 = load %struct.neighbour*, %struct.neighbour** %3, align 8
  %126 = getelementptr inbounds %struct.neighbour, %struct.neighbour* %125, i32 0, i32 0
  store i32 %124, i32* %126, align 8
  %127 = load %struct.neighbour*, %struct.neighbour** %3, align 8
  %128 = getelementptr inbounds %struct.neighbour, %struct.neighbour* %127, i32 0, i32 3
  %129 = load i32, i32* %128, align 4
  %130 = load %struct.net_device*, %struct.net_device** %5, align 8
  %131 = getelementptr inbounds %struct.net_device, %struct.net_device* %130, i32 0, i32 4
  %132 = load i32, i32* %131, align 4
  %133 = load %struct.net_device*, %struct.net_device** %5, align 8
  %134 = getelementptr inbounds %struct.net_device, %struct.net_device* %133, i32 0, i32 3
  %135 = load i32, i32* %134, align 8
  %136 = call i32 @memcpy(i32 %129, i32 %132, i32 %135)
  br label %137

137:                                              ; preds = %122, %115
  br label %138

138:                                              ; preds = %137, %94
  br label %139

139:                                              ; preds = %138, %74
  %140 = load %struct.net_device*, %struct.net_device** %5, align 8
  %141 = getelementptr inbounds %struct.net_device, %struct.net_device* %140, i32 0, i32 2
  %142 = load %struct.TYPE_6__*, %struct.TYPE_6__** %141, align 8
  %143 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %142, i32 0, i32 0
  %144 = load i64, i64* %143, align 8
  %145 = icmp ne i64 %144, 0
  br i1 %145, label %146, label %149

146:                                              ; preds = %139
  %147 = load %struct.neighbour*, %struct.neighbour** %3, align 8
  %148 = getelementptr inbounds %struct.neighbour, %struct.neighbour* %147, i32 0, i32 1
  store %struct.TYPE_7__* @arp_hh_ops, %struct.TYPE_7__** %148, align 8
  br label %152

149:                                              ; preds = %139
  %150 = load %struct.neighbour*, %struct.neighbour** %3, align 8
  %151 = getelementptr inbounds %struct.neighbour, %struct.neighbour* %150, i32 0, i32 1
  store %struct.TYPE_7__* @arp_generic_ops, %struct.TYPE_7__** %151, align 8
  br label %152

152:                                              ; preds = %149, %146
  %153 = load %struct.neighbour*, %struct.neighbour** %3, align 8
  %154 = getelementptr inbounds %struct.neighbour, %struct.neighbour* %153, i32 0, i32 0
  %155 = load i32, i32* %154, align 8
  %156 = load i32, i32* @NUD_VALID, align 4
  %157 = and i32 %155, %156
  %158 = icmp ne i32 %157, 0
  br i1 %158, label %159, label %167

159:                                              ; preds = %152
  %160 = load %struct.neighbour*, %struct.neighbour** %3, align 8
  %161 = getelementptr inbounds %struct.neighbour, %struct.neighbour* %160, i32 0, i32 1
  %162 = load %struct.TYPE_7__*, %struct.TYPE_7__** %161, align 8
  %163 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %162, i32 0, i32 1
  %164 = load i32, i32* %163, align 4
  %165 = load %struct.neighbour*, %struct.neighbour** %3, align 8
  %166 = getelementptr inbounds %struct.neighbour, %struct.neighbour* %165, i32 0, i32 2
  store i32 %164, i32* %166, align 8
  br label %175

167:                                              ; preds = %152
  %168 = load %struct.neighbour*, %struct.neighbour** %3, align 8
  %169 = getelementptr inbounds %struct.neighbour, %struct.neighbour* %168, i32 0, i32 1
  %170 = load %struct.TYPE_7__*, %struct.TYPE_7__** %169, align 8
  %171 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %170, i32 0, i32 0
  %172 = load i32, i32* %171, align 4
  %173 = load %struct.neighbour*, %struct.neighbour** %3, align 8
  %174 = getelementptr inbounds %struct.neighbour, %struct.neighbour* %173, i32 0, i32 2
  store i32 %172, i32* %174, align 8
  br label %175

175:                                              ; preds = %167, %159
  br label %176

176:                                              ; preds = %175, %48
  store i32 0, i32* %2, align 4
  br label %177

177:                                              ; preds = %176, %21
  %178 = load i32, i32* %2, align 4
  ret i32 %178
}

declare dso_local i32 @rcu_read_lock(...) #1

declare dso_local %struct.in_device* @__in_dev_get_rcu(%struct.net_device*) #1

declare dso_local i32 @rcu_read_unlock(...) #1

declare dso_local i32 @inet_addr_type(i32, i32) #1

declare dso_local i32 @dev_net(%struct.net_device*) #1

declare dso_local i32 @__neigh_parms_put(i32) #1

declare dso_local i32 @neigh_parms_clone(%struct.neigh_parms*) #1

declare dso_local i32 @arp_mc_map(i32, i32, %struct.net_device*, i32) #1

declare dso_local i32 @memcpy(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

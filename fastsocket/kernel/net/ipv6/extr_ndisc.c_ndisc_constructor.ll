; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/ipv6/extr_ndisc.c_ndisc_constructor.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/ipv6/extr_ndisc.c_ndisc_constructor.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, i32, i32 }
%struct.neighbour = type { i32, %struct.TYPE_6__*, i32, i32, i32, i32, %struct.net_device*, i32 }
%struct.net_device = type { i32, %struct.TYPE_5__*, i32, i32, i32 }
%struct.TYPE_5__ = type { i64 }
%struct.in6_addr = type { i32 }
%struct.inet6_dev = type { %struct.neigh_parms* }
%struct.neigh_parms = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@RTN_MULTICAST = common dso_local global i32 0, align 4
@RTN_UNICAST = common dso_local global i32 0, align 4
@NUD_NOARP = common dso_local global i8* null, align 8
@ndisc_direct_ops = common dso_local global %struct.TYPE_6__ zeroinitializer, align 4
@IFF_NOARP = common dso_local global i32 0, align 4
@IFF_LOOPBACK = common dso_local global i32 0, align 4
@RTN_LOCAL = common dso_local global i32 0, align 4
@IFF_POINTOPOINT = common dso_local global i32 0, align 4
@ndisc_hh_ops = common dso_local global %struct.TYPE_6__ zeroinitializer, align 4
@ndisc_generic_ops = common dso_local global %struct.TYPE_6__ zeroinitializer, align 4
@NUD_VALID = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.neighbour*)* @ndisc_constructor to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ndisc_constructor(%struct.neighbour* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.neighbour*, align 8
  %4 = alloca %struct.in6_addr*, align 8
  %5 = alloca %struct.net_device*, align 8
  %6 = alloca %struct.inet6_dev*, align 8
  %7 = alloca %struct.neigh_parms*, align 8
  %8 = alloca i32, align 4
  store %struct.neighbour* %0, %struct.neighbour** %3, align 8
  %9 = load %struct.neighbour*, %struct.neighbour** %3, align 8
  %10 = getelementptr inbounds %struct.neighbour, %struct.neighbour* %9, i32 0, i32 7
  %11 = bitcast i32* %10 to %struct.in6_addr*
  store %struct.in6_addr* %11, %struct.in6_addr** %4, align 8
  %12 = load %struct.neighbour*, %struct.neighbour** %3, align 8
  %13 = getelementptr inbounds %struct.neighbour, %struct.neighbour* %12, i32 0, i32 6
  %14 = load %struct.net_device*, %struct.net_device** %13, align 8
  store %struct.net_device* %14, %struct.net_device** %5, align 8
  %15 = load %struct.in6_addr*, %struct.in6_addr** %4, align 8
  %16 = call i32 @ipv6_addr_is_multicast(%struct.in6_addr* %15)
  store i32 %16, i32* %8, align 4
  %17 = call i32 (...) @rcu_read_lock()
  %18 = load %struct.net_device*, %struct.net_device** %5, align 8
  %19 = call %struct.inet6_dev* @in6_dev_get(%struct.net_device* %18)
  store %struct.inet6_dev* %19, %struct.inet6_dev** %6, align 8
  %20 = load %struct.inet6_dev*, %struct.inet6_dev** %6, align 8
  %21 = icmp eq %struct.inet6_dev* %20, null
  br i1 %21, label %22, label %26

22:                                               ; preds = %1
  %23 = call i32 (...) @rcu_read_unlock()
  %24 = load i32, i32* @EINVAL, align 4
  %25 = sub nsw i32 0, %24
  store i32 %25, i32* %2, align 4
  br label %180

26:                                               ; preds = %1
  %27 = load %struct.inet6_dev*, %struct.inet6_dev** %6, align 8
  %28 = getelementptr inbounds %struct.inet6_dev, %struct.inet6_dev* %27, i32 0, i32 0
  %29 = load %struct.neigh_parms*, %struct.neigh_parms** %28, align 8
  store %struct.neigh_parms* %29, %struct.neigh_parms** %7, align 8
  %30 = load %struct.neighbour*, %struct.neighbour** %3, align 8
  %31 = getelementptr inbounds %struct.neighbour, %struct.neighbour* %30, i32 0, i32 5
  %32 = load i32, i32* %31, align 4
  %33 = call i32 @__neigh_parms_put(i32 %32)
  %34 = load %struct.neigh_parms*, %struct.neigh_parms** %7, align 8
  %35 = call i32 @neigh_parms_clone(%struct.neigh_parms* %34)
  %36 = load %struct.neighbour*, %struct.neighbour** %3, align 8
  %37 = getelementptr inbounds %struct.neighbour, %struct.neighbour* %36, i32 0, i32 5
  store i32 %35, i32* %37, align 4
  %38 = call i32 (...) @rcu_read_unlock()
  %39 = load i32, i32* %8, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %43

41:                                               ; preds = %26
  %42 = load i32, i32* @RTN_MULTICAST, align 4
  br label %45

43:                                               ; preds = %26
  %44 = load i32, i32* @RTN_UNICAST, align 4
  br label %45

45:                                               ; preds = %43, %41
  %46 = phi i32 [ %42, %41 ], [ %44, %43 ]
  %47 = load %struct.neighbour*, %struct.neighbour** %3, align 8
  %48 = getelementptr inbounds %struct.neighbour, %struct.neighbour* %47, i32 0, i32 4
  store i32 %46, i32* %48, align 8
  %49 = load %struct.net_device*, %struct.net_device** %5, align 8
  %50 = getelementptr inbounds %struct.net_device, %struct.net_device* %49, i32 0, i32 1
  %51 = load %struct.TYPE_5__*, %struct.TYPE_5__** %50, align 8
  %52 = icmp ne %struct.TYPE_5__* %51, null
  br i1 %52, label %67, label %53

53:                                               ; preds = %45
  %54 = load i8*, i8** @NUD_NOARP, align 8
  %55 = ptrtoint i8* %54 to i32
  %56 = load %struct.neighbour*, %struct.neighbour** %3, align 8
  %57 = getelementptr inbounds %struct.neighbour, %struct.neighbour* %56, i32 0, i32 0
  store i32 %55, i32* %57, align 8
  %58 = load %struct.neighbour*, %struct.neighbour** %3, align 8
  %59 = getelementptr inbounds %struct.neighbour, %struct.neighbour* %58, i32 0, i32 1
  store %struct.TYPE_6__* @ndisc_direct_ops, %struct.TYPE_6__** %59, align 8
  %60 = load %struct.neighbour*, %struct.neighbour** %3, align 8
  %61 = getelementptr inbounds %struct.neighbour, %struct.neighbour* %60, i32 0, i32 1
  %62 = load %struct.TYPE_6__*, %struct.TYPE_6__** %61, align 8
  %63 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %62, i32 0, i32 2
  %64 = load i32, i32* %63, align 4
  %65 = load %struct.neighbour*, %struct.neighbour** %3, align 8
  %66 = getelementptr inbounds %struct.neighbour, %struct.neighbour* %65, i32 0, i32 2
  store i32 %64, i32* %66, align 8
  br label %177

67:                                               ; preds = %45
  %68 = load i32, i32* %8, align 4
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %81

70:                                               ; preds = %67
  %71 = load i8*, i8** @NUD_NOARP, align 8
  %72 = ptrtoint i8* %71 to i32
  %73 = load %struct.neighbour*, %struct.neighbour** %3, align 8
  %74 = getelementptr inbounds %struct.neighbour, %struct.neighbour* %73, i32 0, i32 0
  store i32 %72, i32* %74, align 8
  %75 = load %struct.in6_addr*, %struct.in6_addr** %4, align 8
  %76 = load %struct.neighbour*, %struct.neighbour** %3, align 8
  %77 = getelementptr inbounds %struct.neighbour, %struct.neighbour* %76, i32 0, i32 3
  %78 = load i32, i32* %77, align 4
  %79 = load %struct.net_device*, %struct.net_device** %5, align 8
  %80 = call i32 @ndisc_mc_map(%struct.in6_addr* %75, i32 %78, %struct.net_device* %79, i32 1)
  br label %140

81:                                               ; preds = %67
  %82 = load %struct.net_device*, %struct.net_device** %5, align 8
  %83 = getelementptr inbounds %struct.net_device, %struct.net_device* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 8
  %85 = load i32, i32* @IFF_NOARP, align 4
  %86 = load i32, i32* @IFF_LOOPBACK, align 4
  %87 = or i32 %85, %86
  %88 = and i32 %84, %87
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %90, label %116

90:                                               ; preds = %81
  %91 = load i8*, i8** @NUD_NOARP, align 8
  %92 = ptrtoint i8* %91 to i32
  %93 = load %struct.neighbour*, %struct.neighbour** %3, align 8
  %94 = getelementptr inbounds %struct.neighbour, %struct.neighbour* %93, i32 0, i32 0
  store i32 %92, i32* %94, align 8
  %95 = load %struct.neighbour*, %struct.neighbour** %3, align 8
  %96 = getelementptr inbounds %struct.neighbour, %struct.neighbour* %95, i32 0, i32 3
  %97 = load i32, i32* %96, align 4
  %98 = load %struct.net_device*, %struct.net_device** %5, align 8
  %99 = getelementptr inbounds %struct.net_device, %struct.net_device* %98, i32 0, i32 4
  %100 = load i32, i32* %99, align 8
  %101 = load %struct.net_device*, %struct.net_device** %5, align 8
  %102 = getelementptr inbounds %struct.net_device, %struct.net_device* %101, i32 0, i32 2
  %103 = load i32, i32* %102, align 8
  %104 = call i32 @memcpy(i32 %97, i32 %100, i32 %103)
  %105 = load %struct.net_device*, %struct.net_device** %5, align 8
  %106 = getelementptr inbounds %struct.net_device, %struct.net_device* %105, i32 0, i32 0
  %107 = load i32, i32* %106, align 8
  %108 = load i32, i32* @IFF_LOOPBACK, align 4
  %109 = and i32 %107, %108
  %110 = icmp ne i32 %109, 0
  br i1 %110, label %111, label %115

111:                                              ; preds = %90
  %112 = load i32, i32* @RTN_LOCAL, align 4
  %113 = load %struct.neighbour*, %struct.neighbour** %3, align 8
  %114 = getelementptr inbounds %struct.neighbour, %struct.neighbour* %113, i32 0, i32 4
  store i32 %112, i32* %114, align 8
  br label %115

115:                                              ; preds = %111, %90
  br label %139

116:                                              ; preds = %81
  %117 = load %struct.net_device*, %struct.net_device** %5, align 8
  %118 = getelementptr inbounds %struct.net_device, %struct.net_device* %117, i32 0, i32 0
  %119 = load i32, i32* %118, align 8
  %120 = load i32, i32* @IFF_POINTOPOINT, align 4
  %121 = and i32 %119, %120
  %122 = icmp ne i32 %121, 0
  br i1 %122, label %123, label %138

123:                                              ; preds = %116
  %124 = load i8*, i8** @NUD_NOARP, align 8
  %125 = ptrtoint i8* %124 to i32
  %126 = load %struct.neighbour*, %struct.neighbour** %3, align 8
  %127 = getelementptr inbounds %struct.neighbour, %struct.neighbour* %126, i32 0, i32 0
  store i32 %125, i32* %127, align 8
  %128 = load %struct.neighbour*, %struct.neighbour** %3, align 8
  %129 = getelementptr inbounds %struct.neighbour, %struct.neighbour* %128, i32 0, i32 3
  %130 = load i32, i32* %129, align 4
  %131 = load %struct.net_device*, %struct.net_device** %5, align 8
  %132 = getelementptr inbounds %struct.net_device, %struct.net_device* %131, i32 0, i32 3
  %133 = load i32, i32* %132, align 4
  %134 = load %struct.net_device*, %struct.net_device** %5, align 8
  %135 = getelementptr inbounds %struct.net_device, %struct.net_device* %134, i32 0, i32 2
  %136 = load i32, i32* %135, align 8
  %137 = call i32 @memcpy(i32 %130, i32 %133, i32 %136)
  br label %138

138:                                              ; preds = %123, %116
  br label %139

139:                                              ; preds = %138, %115
  br label %140

140:                                              ; preds = %139, %70
  %141 = load %struct.net_device*, %struct.net_device** %5, align 8
  %142 = getelementptr inbounds %struct.net_device, %struct.net_device* %141, i32 0, i32 1
  %143 = load %struct.TYPE_5__*, %struct.TYPE_5__** %142, align 8
  %144 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %143, i32 0, i32 0
  %145 = load i64, i64* %144, align 8
  %146 = icmp ne i64 %145, 0
  br i1 %146, label %147, label %150

147:                                              ; preds = %140
  %148 = load %struct.neighbour*, %struct.neighbour** %3, align 8
  %149 = getelementptr inbounds %struct.neighbour, %struct.neighbour* %148, i32 0, i32 1
  store %struct.TYPE_6__* @ndisc_hh_ops, %struct.TYPE_6__** %149, align 8
  br label %153

150:                                              ; preds = %140
  %151 = load %struct.neighbour*, %struct.neighbour** %3, align 8
  %152 = getelementptr inbounds %struct.neighbour, %struct.neighbour* %151, i32 0, i32 1
  store %struct.TYPE_6__* @ndisc_generic_ops, %struct.TYPE_6__** %152, align 8
  br label %153

153:                                              ; preds = %150, %147
  %154 = load %struct.neighbour*, %struct.neighbour** %3, align 8
  %155 = getelementptr inbounds %struct.neighbour, %struct.neighbour* %154, i32 0, i32 0
  %156 = load i32, i32* %155, align 8
  %157 = load i32, i32* @NUD_VALID, align 4
  %158 = and i32 %156, %157
  %159 = icmp ne i32 %158, 0
  br i1 %159, label %160, label %168

160:                                              ; preds = %153
  %161 = load %struct.neighbour*, %struct.neighbour** %3, align 8
  %162 = getelementptr inbounds %struct.neighbour, %struct.neighbour* %161, i32 0, i32 1
  %163 = load %struct.TYPE_6__*, %struct.TYPE_6__** %162, align 8
  %164 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %163, i32 0, i32 1
  %165 = load i32, i32* %164, align 4
  %166 = load %struct.neighbour*, %struct.neighbour** %3, align 8
  %167 = getelementptr inbounds %struct.neighbour, %struct.neighbour* %166, i32 0, i32 2
  store i32 %165, i32* %167, align 8
  br label %176

168:                                              ; preds = %153
  %169 = load %struct.neighbour*, %struct.neighbour** %3, align 8
  %170 = getelementptr inbounds %struct.neighbour, %struct.neighbour* %169, i32 0, i32 1
  %171 = load %struct.TYPE_6__*, %struct.TYPE_6__** %170, align 8
  %172 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %171, i32 0, i32 0
  %173 = load i32, i32* %172, align 4
  %174 = load %struct.neighbour*, %struct.neighbour** %3, align 8
  %175 = getelementptr inbounds %struct.neighbour, %struct.neighbour* %174, i32 0, i32 2
  store i32 %173, i32* %175, align 8
  br label %176

176:                                              ; preds = %168, %160
  br label %177

177:                                              ; preds = %176, %53
  %178 = load %struct.inet6_dev*, %struct.inet6_dev** %6, align 8
  %179 = call i32 @in6_dev_put(%struct.inet6_dev* %178)
  store i32 0, i32* %2, align 4
  br label %180

180:                                              ; preds = %177, %22
  %181 = load i32, i32* %2, align 4
  ret i32 %181
}

declare dso_local i32 @ipv6_addr_is_multicast(%struct.in6_addr*) #1

declare dso_local i32 @rcu_read_lock(...) #1

declare dso_local %struct.inet6_dev* @in6_dev_get(%struct.net_device*) #1

declare dso_local i32 @rcu_read_unlock(...) #1

declare dso_local i32 @__neigh_parms_put(i32) #1

declare dso_local i32 @neigh_parms_clone(%struct.neigh_parms*) #1

declare dso_local i32 @ndisc_mc_map(%struct.in6_addr*, i32, %struct.net_device*, i32) #1

declare dso_local i32 @memcpy(i32, i32, i32) #1

declare dso_local i32 @in6_dev_put(%struct.inet6_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/ipv6/extr_sit.c_ipip6_tunnel_locate.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/ipv6/extr_sit.c_ipip6_tunnel_locate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ip_tunnel = type { %struct.ip_tunnel_parm, %struct.ip_tunnel* }
%struct.ip_tunnel_parm = type { i64, i32, i64*, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64, i64 }
%struct.net = type { i32 }
%struct.net_device = type { i32 }
%struct.sit_net = type { i32 }

@IFNAMSIZ = common dso_local global i32 0, align 4
@sit_net_id = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [7 x i8] c"sit%%d\00", align 1
@ipip6_tunnel_setup = common dso_local global i32 0, align 4
@SIT_ISATAP = common dso_local global i32 0, align 4
@IFF_ISATAP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.ip_tunnel* (%struct.net*, %struct.ip_tunnel_parm*, i32)* @ipip6_tunnel_locate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.ip_tunnel* @ipip6_tunnel_locate(%struct.net* %0, %struct.ip_tunnel_parm* %1, i32 %2) #0 {
  %4 = alloca %struct.ip_tunnel*, align 8
  %5 = alloca %struct.net*, align 8
  %6 = alloca %struct.ip_tunnel_parm*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.ip_tunnel*, align 8
  %11 = alloca %struct.ip_tunnel**, align 8
  %12 = alloca %struct.ip_tunnel*, align 8
  %13 = alloca %struct.net_device*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i64, align 8
  %16 = alloca %struct.sit_net*, align 8
  %17 = alloca i32, align 4
  store %struct.net* %0, %struct.net** %5, align 8
  store %struct.ip_tunnel_parm* %1, %struct.ip_tunnel_parm** %6, align 8
  store i32 %2, i32* %7, align 4
  %18 = load %struct.ip_tunnel_parm*, %struct.ip_tunnel_parm** %6, align 8
  %19 = getelementptr inbounds %struct.ip_tunnel_parm, %struct.ip_tunnel_parm* %18, i32 0, i32 3
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  store i64 %21, i64* %8, align 8
  %22 = load %struct.ip_tunnel_parm*, %struct.ip_tunnel_parm** %6, align 8
  %23 = getelementptr inbounds %struct.ip_tunnel_parm, %struct.ip_tunnel_parm* %22, i32 0, i32 3
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 1
  %25 = load i64, i64* %24, align 8
  store i64 %25, i64* %9, align 8
  %26 = load i32, i32* @IFNAMSIZ, align 4
  %27 = zext i32 %26 to i64
  %28 = call i8* @llvm.stacksave()
  store i8* %28, i8** %14, align 8
  %29 = alloca i8, i64 %27, align 16
  store i64 %27, i64* %15, align 8
  %30 = load %struct.net*, %struct.net** %5, align 8
  %31 = load i32, i32* @sit_net_id, align 4
  %32 = call %struct.sit_net* @net_generic(%struct.net* %30, i32 %31)
  store %struct.sit_net* %32, %struct.sit_net** %16, align 8
  %33 = load %struct.sit_net*, %struct.sit_net** %16, align 8
  %34 = load %struct.ip_tunnel_parm*, %struct.ip_tunnel_parm** %6, align 8
  %35 = call %struct.ip_tunnel** @__ipip6_bucket(%struct.sit_net* %33, %struct.ip_tunnel_parm* %34)
  store %struct.ip_tunnel** %35, %struct.ip_tunnel*** %11, align 8
  br label %36

36:                                               ; preds = %72, %3
  %37 = load %struct.ip_tunnel**, %struct.ip_tunnel*** %11, align 8
  %38 = load %struct.ip_tunnel*, %struct.ip_tunnel** %37, align 8
  store %struct.ip_tunnel* %38, %struct.ip_tunnel** %10, align 8
  %39 = icmp ne %struct.ip_tunnel* %38, null
  br i1 %39, label %40, label %75

40:                                               ; preds = %36
  %41 = load i64, i64* %9, align 8
  %42 = load %struct.ip_tunnel*, %struct.ip_tunnel** %10, align 8
  %43 = getelementptr inbounds %struct.ip_tunnel, %struct.ip_tunnel* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.ip_tunnel_parm, %struct.ip_tunnel_parm* %43, i32 0, i32 3
  %45 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %44, i32 0, i32 1
  %46 = load i64, i64* %45, align 8
  %47 = icmp eq i64 %41, %46
  br i1 %47, label %48, label %71

48:                                               ; preds = %40
  %49 = load i64, i64* %8, align 8
  %50 = load %struct.ip_tunnel*, %struct.ip_tunnel** %10, align 8
  %51 = getelementptr inbounds %struct.ip_tunnel, %struct.ip_tunnel* %50, i32 0, i32 0
  %52 = getelementptr inbounds %struct.ip_tunnel_parm, %struct.ip_tunnel_parm* %51, i32 0, i32 3
  %53 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = icmp eq i64 %49, %54
  br i1 %55, label %56, label %71

56:                                               ; preds = %48
  %57 = load %struct.ip_tunnel_parm*, %struct.ip_tunnel_parm** %6, align 8
  %58 = getelementptr inbounds %struct.ip_tunnel_parm, %struct.ip_tunnel_parm* %57, i32 0, i32 0
  %59 = load i64, i64* %58, align 8
  %60 = load %struct.ip_tunnel*, %struct.ip_tunnel** %10, align 8
  %61 = getelementptr inbounds %struct.ip_tunnel, %struct.ip_tunnel* %60, i32 0, i32 0
  %62 = getelementptr inbounds %struct.ip_tunnel_parm, %struct.ip_tunnel_parm* %61, i32 0, i32 0
  %63 = load i64, i64* %62, align 8
  %64 = icmp eq i64 %59, %63
  br i1 %64, label %65, label %71

65:                                               ; preds = %56
  %66 = load i32, i32* %7, align 4
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %69

68:                                               ; preds = %65
  store %struct.ip_tunnel* null, %struct.ip_tunnel** %4, align 8
  store i32 1, i32* %17, align 4
  br label %150

69:                                               ; preds = %65
  %70 = load %struct.ip_tunnel*, %struct.ip_tunnel** %10, align 8
  store %struct.ip_tunnel* %70, %struct.ip_tunnel** %4, align 8
  store i32 1, i32* %17, align 4
  br label %150

71:                                               ; preds = %56, %48, %40
  br label %72

72:                                               ; preds = %71
  %73 = load %struct.ip_tunnel*, %struct.ip_tunnel** %10, align 8
  %74 = getelementptr inbounds %struct.ip_tunnel, %struct.ip_tunnel* %73, i32 0, i32 1
  store %struct.ip_tunnel** %74, %struct.ip_tunnel*** %11, align 8
  br label %36

75:                                               ; preds = %36
  %76 = load i32, i32* %7, align 4
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %79, label %78

78:                                               ; preds = %75
  br label %149

79:                                               ; preds = %75
  %80 = load %struct.ip_tunnel_parm*, %struct.ip_tunnel_parm** %6, align 8
  %81 = getelementptr inbounds %struct.ip_tunnel_parm, %struct.ip_tunnel_parm* %80, i32 0, i32 2
  %82 = load i64*, i64** %81, align 8
  %83 = getelementptr inbounds i64, i64* %82, i64 0
  %84 = load i64, i64* %83, align 8
  %85 = icmp ne i64 %84, 0
  br i1 %85, label %86, label %92

86:                                               ; preds = %79
  %87 = load %struct.ip_tunnel_parm*, %struct.ip_tunnel_parm** %6, align 8
  %88 = getelementptr inbounds %struct.ip_tunnel_parm, %struct.ip_tunnel_parm* %87, i32 0, i32 2
  %89 = load i64*, i64** %88, align 8
  %90 = load i32, i32* @IFNAMSIZ, align 4
  %91 = call i32 @strlcpy(i8* %29, i64* %89, i32 %90)
  br label %94

92:                                               ; preds = %79
  %93 = call i32 @sprintf(i8* %29, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  br label %94

94:                                               ; preds = %92, %86
  %95 = load i32, i32* @ipip6_tunnel_setup, align 4
  %96 = call %struct.net_device* @alloc_netdev(i32 48, i8* %29, i32 %95)
  store %struct.net_device* %96, %struct.net_device** %13, align 8
  %97 = load %struct.net_device*, %struct.net_device** %13, align 8
  %98 = icmp eq %struct.net_device* %97, null
  br i1 %98, label %99, label %100

99:                                               ; preds = %94
  store %struct.ip_tunnel* null, %struct.ip_tunnel** %4, align 8
  store i32 1, i32* %17, align 4
  br label %150

100:                                              ; preds = %94
  %101 = load %struct.net_device*, %struct.net_device** %13, align 8
  %102 = load %struct.net*, %struct.net** %5, align 8
  %103 = call i32 @dev_net_set(%struct.net_device* %101, %struct.net* %102)
  %104 = call i64 @strchr(i8* %29, i8 signext 37)
  %105 = icmp ne i64 %104, 0
  br i1 %105, label %106, label %112

106:                                              ; preds = %100
  %107 = load %struct.net_device*, %struct.net_device** %13, align 8
  %108 = call i64 @dev_alloc_name(%struct.net_device* %107, i8* %29)
  %109 = icmp slt i64 %108, 0
  br i1 %109, label %110, label %111

110:                                              ; preds = %106
  br label %146

111:                                              ; preds = %106
  br label %112

112:                                              ; preds = %111, %100
  %113 = load %struct.net_device*, %struct.net_device** %13, align 8
  %114 = call %struct.ip_tunnel* @netdev_priv(%struct.net_device* %113)
  store %struct.ip_tunnel* %114, %struct.ip_tunnel** %12, align 8
  %115 = load %struct.ip_tunnel*, %struct.ip_tunnel** %12, align 8
  %116 = getelementptr inbounds %struct.ip_tunnel, %struct.ip_tunnel* %115, i32 0, i32 0
  %117 = load %struct.ip_tunnel_parm*, %struct.ip_tunnel_parm** %6, align 8
  %118 = bitcast %struct.ip_tunnel_parm* %116 to i8*
  %119 = bitcast %struct.ip_tunnel_parm* %117 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %118, i8* align 8 %119, i64 40, i1 false)
  %120 = load %struct.net_device*, %struct.net_device** %13, align 8
  %121 = call i32 @ipip6_tunnel_init(%struct.net_device* %120)
  %122 = load %struct.ip_tunnel_parm*, %struct.ip_tunnel_parm** %6, align 8
  %123 = getelementptr inbounds %struct.ip_tunnel_parm, %struct.ip_tunnel_parm* %122, i32 0, i32 1
  %124 = load i32, i32* %123, align 8
  %125 = load i32, i32* @SIT_ISATAP, align 4
  %126 = and i32 %124, %125
  %127 = icmp ne i32 %126, 0
  br i1 %127, label %128, label %134

128:                                              ; preds = %112
  %129 = load i32, i32* @IFF_ISATAP, align 4
  %130 = load %struct.net_device*, %struct.net_device** %13, align 8
  %131 = getelementptr inbounds %struct.net_device, %struct.net_device* %130, i32 0, i32 0
  %132 = load i32, i32* %131, align 4
  %133 = or i32 %132, %129
  store i32 %133, i32* %131, align 4
  br label %134

134:                                              ; preds = %128, %112
  %135 = load %struct.net_device*, %struct.net_device** %13, align 8
  %136 = call i64 @register_netdevice(%struct.net_device* %135)
  %137 = icmp slt i64 %136, 0
  br i1 %137, label %138, label %139

138:                                              ; preds = %134
  br label %146

139:                                              ; preds = %134
  %140 = load %struct.net_device*, %struct.net_device** %13, align 8
  %141 = call i32 @dev_hold(%struct.net_device* %140)
  %142 = load %struct.sit_net*, %struct.sit_net** %16, align 8
  %143 = load %struct.ip_tunnel*, %struct.ip_tunnel** %12, align 8
  %144 = call i32 @ipip6_tunnel_link(%struct.sit_net* %142, %struct.ip_tunnel* %143)
  %145 = load %struct.ip_tunnel*, %struct.ip_tunnel** %12, align 8
  store %struct.ip_tunnel* %145, %struct.ip_tunnel** %4, align 8
  store i32 1, i32* %17, align 4
  br label %150

146:                                              ; preds = %138, %110
  %147 = load %struct.net_device*, %struct.net_device** %13, align 8
  %148 = call i32 @free_netdev(%struct.net_device* %147)
  br label %149

149:                                              ; preds = %146, %78
  store %struct.ip_tunnel* null, %struct.ip_tunnel** %4, align 8
  store i32 1, i32* %17, align 4
  br label %150

150:                                              ; preds = %149, %139, %99, %69, %68
  %151 = load i8*, i8** %14, align 8
  call void @llvm.stackrestore(i8* %151)
  %152 = load %struct.ip_tunnel*, %struct.ip_tunnel** %4, align 8
  ret %struct.ip_tunnel* %152
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local %struct.sit_net* @net_generic(%struct.net*, i32) #2

declare dso_local %struct.ip_tunnel** @__ipip6_bucket(%struct.sit_net*, %struct.ip_tunnel_parm*) #2

declare dso_local i32 @strlcpy(i8*, i64*, i32) #2

declare dso_local i32 @sprintf(i8*, i8*) #2

declare dso_local %struct.net_device* @alloc_netdev(i32, i8*, i32) #2

declare dso_local i32 @dev_net_set(%struct.net_device*, %struct.net*) #2

declare dso_local i64 @strchr(i8*, i8 signext) #2

declare dso_local i64 @dev_alloc_name(%struct.net_device*, i8*) #2

declare dso_local %struct.ip_tunnel* @netdev_priv(%struct.net_device*) #2

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #3

declare dso_local i32 @ipip6_tunnel_init(%struct.net_device*) #2

declare dso_local i64 @register_netdevice(%struct.net_device*) #2

declare dso_local i32 @dev_hold(%struct.net_device*) #2

declare dso_local i32 @ipip6_tunnel_link(%struct.sit_net*, %struct.ip_tunnel*) #2

declare dso_local i32 @free_netdev(%struct.net_device*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

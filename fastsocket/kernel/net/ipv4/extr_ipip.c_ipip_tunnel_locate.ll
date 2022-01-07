; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/ipv4/extr_ipip.c_ipip_tunnel_locate.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/ipv4/extr_ipip.c_ipip_tunnel_locate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ip_tunnel = type { %struct.ip_tunnel_parm, %struct.ip_tunnel* }
%struct.ip_tunnel_parm = type { i64*, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64, i64 }
%struct.net = type { i32 }
%struct.net_device = type { i32 }
%struct.ipip_net = type { i32 }

@IFNAMSIZ = common dso_local global i32 0, align 4
@ipip_net_id = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [8 x i8] c"tunl%%d\00", align 1
@ipip_tunnel_setup = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.ip_tunnel* (%struct.net*, %struct.ip_tunnel_parm*, i32)* @ipip_tunnel_locate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.ip_tunnel* @ipip_tunnel_locate(%struct.net* %0, %struct.ip_tunnel_parm* %1, i32 %2) #0 {
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
  %16 = alloca %struct.ipip_net*, align 8
  %17 = alloca i32, align 4
  store %struct.net* %0, %struct.net** %5, align 8
  store %struct.ip_tunnel_parm* %1, %struct.ip_tunnel_parm** %6, align 8
  store i32 %2, i32* %7, align 4
  %18 = load %struct.ip_tunnel_parm*, %struct.ip_tunnel_parm** %6, align 8
  %19 = getelementptr inbounds %struct.ip_tunnel_parm, %struct.ip_tunnel_parm* %18, i32 0, i32 1
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  store i64 %21, i64* %8, align 8
  %22 = load %struct.ip_tunnel_parm*, %struct.ip_tunnel_parm** %6, align 8
  %23 = getelementptr inbounds %struct.ip_tunnel_parm, %struct.ip_tunnel_parm* %22, i32 0, i32 1
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
  %31 = load i32, i32* @ipip_net_id, align 4
  %32 = call %struct.ipip_net* @net_generic(%struct.net* %30, i32 %31)
  store %struct.ipip_net* %32, %struct.ipip_net** %16, align 8
  %33 = load %struct.ipip_net*, %struct.ipip_net** %16, align 8
  %34 = load %struct.ip_tunnel_parm*, %struct.ip_tunnel_parm** %6, align 8
  %35 = call %struct.ip_tunnel** @__ipip_bucket(%struct.ipip_net* %33, %struct.ip_tunnel_parm* %34)
  store %struct.ip_tunnel** %35, %struct.ip_tunnel*** %11, align 8
  br label %36

36:                                               ; preds = %59, %3
  %37 = load %struct.ip_tunnel**, %struct.ip_tunnel*** %11, align 8
  %38 = load %struct.ip_tunnel*, %struct.ip_tunnel** %37, align 8
  store %struct.ip_tunnel* %38, %struct.ip_tunnel** %10, align 8
  %39 = icmp ne %struct.ip_tunnel* %38, null
  br i1 %39, label %40, label %62

40:                                               ; preds = %36
  %41 = load i64, i64* %9, align 8
  %42 = load %struct.ip_tunnel*, %struct.ip_tunnel** %10, align 8
  %43 = getelementptr inbounds %struct.ip_tunnel, %struct.ip_tunnel* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.ip_tunnel_parm, %struct.ip_tunnel_parm* %43, i32 0, i32 1
  %45 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %44, i32 0, i32 1
  %46 = load i64, i64* %45, align 8
  %47 = icmp eq i64 %41, %46
  br i1 %47, label %48, label %58

48:                                               ; preds = %40
  %49 = load i64, i64* %8, align 8
  %50 = load %struct.ip_tunnel*, %struct.ip_tunnel** %10, align 8
  %51 = getelementptr inbounds %struct.ip_tunnel, %struct.ip_tunnel* %50, i32 0, i32 0
  %52 = getelementptr inbounds %struct.ip_tunnel_parm, %struct.ip_tunnel_parm* %51, i32 0, i32 1
  %53 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = icmp eq i64 %49, %54
  br i1 %55, label %56, label %58

56:                                               ; preds = %48
  %57 = load %struct.ip_tunnel*, %struct.ip_tunnel** %10, align 8
  store %struct.ip_tunnel* %57, %struct.ip_tunnel** %4, align 8
  store i32 1, i32* %17, align 4
  br label %123

58:                                               ; preds = %48, %40
  br label %59

59:                                               ; preds = %58
  %60 = load %struct.ip_tunnel*, %struct.ip_tunnel** %10, align 8
  %61 = getelementptr inbounds %struct.ip_tunnel, %struct.ip_tunnel* %60, i32 0, i32 1
  store %struct.ip_tunnel** %61, %struct.ip_tunnel*** %11, align 8
  br label %36

62:                                               ; preds = %36
  %63 = load i32, i32* %7, align 4
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %66, label %65

65:                                               ; preds = %62
  store %struct.ip_tunnel* null, %struct.ip_tunnel** %4, align 8
  store i32 1, i32* %17, align 4
  br label %123

66:                                               ; preds = %62
  %67 = load %struct.ip_tunnel_parm*, %struct.ip_tunnel_parm** %6, align 8
  %68 = getelementptr inbounds %struct.ip_tunnel_parm, %struct.ip_tunnel_parm* %67, i32 0, i32 0
  %69 = load i64*, i64** %68, align 8
  %70 = getelementptr inbounds i64, i64* %69, i64 0
  %71 = load i64, i64* %70, align 8
  %72 = icmp ne i64 %71, 0
  br i1 %72, label %73, label %79

73:                                               ; preds = %66
  %74 = load %struct.ip_tunnel_parm*, %struct.ip_tunnel_parm** %6, align 8
  %75 = getelementptr inbounds %struct.ip_tunnel_parm, %struct.ip_tunnel_parm* %74, i32 0, i32 0
  %76 = load i64*, i64** %75, align 8
  %77 = load i32, i32* @IFNAMSIZ, align 4
  %78 = call i32 @strlcpy(i8* %29, i64* %76, i32 %77)
  br label %81

79:                                               ; preds = %66
  %80 = call i32 @sprintf(i8* %29, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0))
  br label %81

81:                                               ; preds = %79, %73
  %82 = load i32, i32* @ipip_tunnel_setup, align 4
  %83 = call %struct.net_device* @alloc_netdev(i32 32, i8* %29, i32 %82)
  store %struct.net_device* %83, %struct.net_device** %13, align 8
  %84 = load %struct.net_device*, %struct.net_device** %13, align 8
  %85 = icmp eq %struct.net_device* %84, null
  br i1 %85, label %86, label %87

86:                                               ; preds = %81
  store %struct.ip_tunnel* null, %struct.ip_tunnel** %4, align 8
  store i32 1, i32* %17, align 4
  br label %123

87:                                               ; preds = %81
  %88 = load %struct.net_device*, %struct.net_device** %13, align 8
  %89 = load %struct.net*, %struct.net** %5, align 8
  %90 = call i32 @dev_net_set(%struct.net_device* %88, %struct.net* %89)
  %91 = call i64 @strchr(i8* %29, i8 signext 37)
  %92 = icmp ne i64 %91, 0
  br i1 %92, label %93, label %99

93:                                               ; preds = %87
  %94 = load %struct.net_device*, %struct.net_device** %13, align 8
  %95 = call i64 @dev_alloc_name(%struct.net_device* %94, i8* %29)
  %96 = icmp slt i64 %95, 0
  br i1 %96, label %97, label %98

97:                                               ; preds = %93
  br label %120

98:                                               ; preds = %93
  br label %99

99:                                               ; preds = %98, %87
  %100 = load %struct.net_device*, %struct.net_device** %13, align 8
  %101 = call %struct.ip_tunnel* @netdev_priv(%struct.net_device* %100)
  store %struct.ip_tunnel* %101, %struct.ip_tunnel** %12, align 8
  %102 = load %struct.ip_tunnel*, %struct.ip_tunnel** %12, align 8
  %103 = getelementptr inbounds %struct.ip_tunnel, %struct.ip_tunnel* %102, i32 0, i32 0
  %104 = load %struct.ip_tunnel_parm*, %struct.ip_tunnel_parm** %6, align 8
  %105 = bitcast %struct.ip_tunnel_parm* %103 to i8*
  %106 = bitcast %struct.ip_tunnel_parm* %104 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %105, i8* align 8 %106, i64 24, i1 false)
  %107 = load %struct.net_device*, %struct.net_device** %13, align 8
  %108 = call i32 @ipip_tunnel_init(%struct.net_device* %107)
  %109 = load %struct.net_device*, %struct.net_device** %13, align 8
  %110 = call i64 @register_netdevice(%struct.net_device* %109)
  %111 = icmp slt i64 %110, 0
  br i1 %111, label %112, label %113

112:                                              ; preds = %99
  br label %120

113:                                              ; preds = %99
  %114 = load %struct.net_device*, %struct.net_device** %13, align 8
  %115 = call i32 @dev_hold(%struct.net_device* %114)
  %116 = load %struct.ipip_net*, %struct.ipip_net** %16, align 8
  %117 = load %struct.ip_tunnel*, %struct.ip_tunnel** %12, align 8
  %118 = call i32 @ipip_tunnel_link(%struct.ipip_net* %116, %struct.ip_tunnel* %117)
  %119 = load %struct.ip_tunnel*, %struct.ip_tunnel** %12, align 8
  store %struct.ip_tunnel* %119, %struct.ip_tunnel** %4, align 8
  store i32 1, i32* %17, align 4
  br label %123

120:                                              ; preds = %112, %97
  %121 = load %struct.net_device*, %struct.net_device** %13, align 8
  %122 = call i32 @free_netdev(%struct.net_device* %121)
  store %struct.ip_tunnel* null, %struct.ip_tunnel** %4, align 8
  store i32 1, i32* %17, align 4
  br label %123

123:                                              ; preds = %120, %113, %86, %65, %56
  %124 = load i8*, i8** %14, align 8
  call void @llvm.stackrestore(i8* %124)
  %125 = load %struct.ip_tunnel*, %struct.ip_tunnel** %4, align 8
  ret %struct.ip_tunnel* %125
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local %struct.ipip_net* @net_generic(%struct.net*, i32) #2

declare dso_local %struct.ip_tunnel** @__ipip_bucket(%struct.ipip_net*, %struct.ip_tunnel_parm*) #2

declare dso_local i32 @strlcpy(i8*, i64*, i32) #2

declare dso_local i32 @sprintf(i8*, i8*) #2

declare dso_local %struct.net_device* @alloc_netdev(i32, i8*, i32) #2

declare dso_local i32 @dev_net_set(%struct.net_device*, %struct.net*) #2

declare dso_local i64 @strchr(i8*, i8 signext) #2

declare dso_local i64 @dev_alloc_name(%struct.net_device*, i8*) #2

declare dso_local %struct.ip_tunnel* @netdev_priv(%struct.net_device*) #2

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #3

declare dso_local i32 @ipip_tunnel_init(%struct.net_device*) #2

declare dso_local i64 @register_netdevice(%struct.net_device*) #2

declare dso_local i32 @dev_hold(%struct.net_device*) #2

declare dso_local i32 @ipip_tunnel_link(%struct.ipip_net*, %struct.ip_tunnel*) #2

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

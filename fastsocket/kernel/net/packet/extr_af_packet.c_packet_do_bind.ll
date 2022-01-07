; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/packet/extr_af_packet.c_packet_do_bind.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/packet/extr_af_packet.c_packet_do_bind.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sock = type { i32 (%struct.sock*)*, i32 }
%struct.net_device = type { i32, i32 }
%struct.packet_sock = type { i32, i32, %struct.TYPE_3__, i32, i64 }
%struct.TYPE_3__ = type { i64, %struct.net_device* }

@IFF_UP = common dso_local global i32 0, align 4
@ENETDOWN = common dso_local global i32 0, align 4
@SOCK_DEAD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sock*, %struct.net_device*, i64)* @packet_do_bind to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @packet_do_bind(%struct.sock* %0, %struct.net_device* %1, i64 %2) #0 {
  %4 = alloca %struct.sock*, align 8
  %5 = alloca %struct.net_device*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.packet_sock*, align 8
  %8 = alloca %struct.net_device*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  store %struct.sock* %0, %struct.sock** %4, align 8
  store %struct.net_device* %1, %struct.net_device** %5, align 8
  store i64 %2, i64* %6, align 8
  %11 = load %struct.sock*, %struct.sock** %4, align 8
  %12 = call %struct.packet_sock* @pkt_sk(%struct.sock* %11)
  store %struct.packet_sock* %12, %struct.packet_sock** %7, align 8
  %13 = load %struct.sock*, %struct.sock** %4, align 8
  %14 = call i32 @lock_sock(%struct.sock* %13)
  %15 = load %struct.packet_sock*, %struct.packet_sock** %7, align 8
  %16 = getelementptr inbounds %struct.packet_sock, %struct.packet_sock* %15, i32 0, i32 1
  %17 = call i32 @spin_lock(i32* %16)
  %18 = load %struct.packet_sock*, %struct.packet_sock** %7, align 8
  %19 = getelementptr inbounds %struct.packet_sock, %struct.packet_sock* %18, i32 0, i32 2
  %20 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  store i64 %21, i64* %9, align 8
  %22 = load %struct.packet_sock*, %struct.packet_sock** %7, align 8
  %23 = getelementptr inbounds %struct.packet_sock, %struct.packet_sock* %22, i32 0, i32 2
  %24 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %23, i32 0, i32 1
  %25 = load %struct.net_device*, %struct.net_device** %24, align 8
  store %struct.net_device* %25, %struct.net_device** %8, align 8
  %26 = load i64, i64* %9, align 8
  %27 = load i64, i64* %6, align 8
  %28 = icmp ne i64 %26, %27
  br i1 %28, label %33, label %29

29:                                               ; preds = %3
  %30 = load %struct.net_device*, %struct.net_device** %8, align 8
  %31 = load %struct.net_device*, %struct.net_device** %5, align 8
  %32 = icmp ne %struct.net_device* %30, %31
  br label %33

33:                                               ; preds = %29, %3
  %34 = phi i1 [ true, %3 ], [ %32, %29 ]
  %35 = zext i1 %34 to i32
  store i32 %35, i32* %10, align 4
  %36 = load i32, i32* %10, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %82

38:                                               ; preds = %33
  %39 = load %struct.packet_sock*, %struct.packet_sock** %7, align 8
  %40 = getelementptr inbounds %struct.packet_sock, %struct.packet_sock* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %59

43:                                               ; preds = %38
  %44 = load %struct.sock*, %struct.sock** %4, align 8
  %45 = call i32 @__sock_put(%struct.sock* %44)
  %46 = load %struct.packet_sock*, %struct.packet_sock** %7, align 8
  %47 = getelementptr inbounds %struct.packet_sock, %struct.packet_sock* %46, i32 0, i32 0
  store i32 0, i32* %47, align 8
  %48 = load %struct.packet_sock*, %struct.packet_sock** %7, align 8
  %49 = getelementptr inbounds %struct.packet_sock, %struct.packet_sock* %48, i32 0, i32 4
  store i64 0, i64* %49, align 8
  %50 = load %struct.packet_sock*, %struct.packet_sock** %7, align 8
  %51 = getelementptr inbounds %struct.packet_sock, %struct.packet_sock* %50, i32 0, i32 1
  %52 = call i32 @spin_unlock(i32* %51)
  %53 = load %struct.packet_sock*, %struct.packet_sock** %7, align 8
  %54 = getelementptr inbounds %struct.packet_sock, %struct.packet_sock* %53, i32 0, i32 2
  %55 = call i32 @dev_remove_pack(%struct.TYPE_3__* %54)
  %56 = load %struct.packet_sock*, %struct.packet_sock** %7, align 8
  %57 = getelementptr inbounds %struct.packet_sock, %struct.packet_sock* %56, i32 0, i32 1
  %58 = call i32 @spin_lock(i32* %57)
  br label %59

59:                                               ; preds = %43, %38
  %60 = load i64, i64* %6, align 8
  %61 = load %struct.packet_sock*, %struct.packet_sock** %7, align 8
  %62 = getelementptr inbounds %struct.packet_sock, %struct.packet_sock* %61, i32 0, i32 4
  store i64 %60, i64* %62, align 8
  %63 = load i64, i64* %6, align 8
  %64 = load %struct.packet_sock*, %struct.packet_sock** %7, align 8
  %65 = getelementptr inbounds %struct.packet_sock, %struct.packet_sock* %64, i32 0, i32 2
  %66 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %65, i32 0, i32 0
  store i64 %63, i64* %66, align 8
  %67 = load %struct.net_device*, %struct.net_device** %5, align 8
  %68 = load %struct.packet_sock*, %struct.packet_sock** %7, align 8
  %69 = getelementptr inbounds %struct.packet_sock, %struct.packet_sock* %68, i32 0, i32 2
  %70 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %69, i32 0, i32 1
  store %struct.net_device* %67, %struct.net_device** %70, align 8
  %71 = load %struct.net_device*, %struct.net_device** %5, align 8
  %72 = icmp ne %struct.net_device* %71, null
  br i1 %72, label %73, label %77

73:                                               ; preds = %59
  %74 = load %struct.net_device*, %struct.net_device** %5, align 8
  %75 = getelementptr inbounds %struct.net_device, %struct.net_device* %74, i32 0, i32 1
  %76 = load i32, i32* %75, align 4
  br label %78

77:                                               ; preds = %59
  br label %78

78:                                               ; preds = %77, %73
  %79 = phi i32 [ %76, %73 ], [ 0, %77 ]
  %80 = load %struct.packet_sock*, %struct.packet_sock** %7, align 8
  %81 = getelementptr inbounds %struct.packet_sock, %struct.packet_sock* %80, i32 0, i32 3
  store i32 %79, i32* %81, align 8
  br label %82

82:                                               ; preds = %78, %33
  %83 = load i64, i64* %6, align 8
  %84 = icmp eq i64 %83, 0
  br i1 %84, label %88, label %85

85:                                               ; preds = %82
  %86 = load i32, i32* %10, align 4
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %89, label %88

88:                                               ; preds = %85, %82
  br label %123

89:                                               ; preds = %85
  %90 = load %struct.net_device*, %struct.net_device** %5, align 8
  %91 = icmp ne %struct.net_device* %90, null
  br i1 %91, label %92, label %99

92:                                               ; preds = %89
  %93 = load %struct.net_device*, %struct.net_device** %5, align 8
  %94 = getelementptr inbounds %struct.net_device, %struct.net_device* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 4
  %96 = load i32, i32* @IFF_UP, align 4
  %97 = and i32 %95, %96
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %99, label %107

99:                                               ; preds = %92, %89
  %100 = load %struct.packet_sock*, %struct.packet_sock** %7, align 8
  %101 = getelementptr inbounds %struct.packet_sock, %struct.packet_sock* %100, i32 0, i32 2
  %102 = call i32 @dev_add_pack(%struct.TYPE_3__* %101)
  %103 = load %struct.sock*, %struct.sock** %4, align 8
  %104 = call i32 @sock_hold(%struct.sock* %103)
  %105 = load %struct.packet_sock*, %struct.packet_sock** %7, align 8
  %106 = getelementptr inbounds %struct.packet_sock, %struct.packet_sock* %105, i32 0, i32 0
  store i32 1, i32* %106, align 8
  br label %122

107:                                              ; preds = %92
  %108 = load i32, i32* @ENETDOWN, align 4
  %109 = load %struct.sock*, %struct.sock** %4, align 8
  %110 = getelementptr inbounds %struct.sock, %struct.sock* %109, i32 0, i32 1
  store i32 %108, i32* %110, align 8
  %111 = load %struct.sock*, %struct.sock** %4, align 8
  %112 = load i32, i32* @SOCK_DEAD, align 4
  %113 = call i32 @sock_flag(%struct.sock* %111, i32 %112)
  %114 = icmp ne i32 %113, 0
  br i1 %114, label %121, label %115

115:                                              ; preds = %107
  %116 = load %struct.sock*, %struct.sock** %4, align 8
  %117 = getelementptr inbounds %struct.sock, %struct.sock* %116, i32 0, i32 0
  %118 = load i32 (%struct.sock*)*, i32 (%struct.sock*)** %117, align 8
  %119 = load %struct.sock*, %struct.sock** %4, align 8
  %120 = call i32 %118(%struct.sock* %119)
  br label %121

121:                                              ; preds = %115, %107
  br label %122

122:                                              ; preds = %121, %99
  br label %123

123:                                              ; preds = %122, %88
  %124 = load %struct.packet_sock*, %struct.packet_sock** %7, align 8
  %125 = getelementptr inbounds %struct.packet_sock, %struct.packet_sock* %124, i32 0, i32 1
  %126 = call i32 @spin_unlock(i32* %125)
  %127 = load %struct.sock*, %struct.sock** %4, align 8
  %128 = call i32 @release_sock(%struct.sock* %127)
  ret i32 0
}

declare dso_local %struct.packet_sock* @pkt_sk(%struct.sock*) #1

declare dso_local i32 @lock_sock(%struct.sock*) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @__sock_put(%struct.sock*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @dev_remove_pack(%struct.TYPE_3__*) #1

declare dso_local i32 @dev_add_pack(%struct.TYPE_3__*) #1

declare dso_local i32 @sock_hold(%struct.sock*) #1

declare dso_local i32 @sock_flag(%struct.sock*, i32) #1

declare dso_local i32 @release_sock(%struct.sock*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

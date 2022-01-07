; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/appletalk/extr_ddp.c_atrtr_create.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/appletalk/extr_ddp.c_atrtr_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.atalk_route = type { i32, %struct.TYPE_6__, %struct.net_device*, %struct.TYPE_6__, %struct.atalk_route* }
%struct.net_device = type { i32 }
%struct.TYPE_6__ = type { i64, i64 }
%struct.atalk_iface = type { %struct.net_device*, %struct.TYPE_5__, %struct.TYPE_4__, %struct.atalk_iface* }
%struct.TYPE_5__ = type { i64, i64 }
%struct.TYPE_4__ = type { i64, i64 }
%struct.rtentry = type { i32, i32, i32 }
%struct.sockaddr_at = type { i64, %struct.TYPE_6__ }

@EINVAL = common dso_local global i32 0, align 4
@AF_APPLETALK = common dso_local global i64 0, align 8
@atalk_routes_lock = common dso_local global i32 0, align 4
@atalk_routes = common dso_local global %struct.atalk_route* null, align 8
@RTF_HOST = common dso_local global i32 0, align 4
@atalk_interfaces_lock = common dso_local global i32 0, align 4
@atalk_interfaces = common dso_local global %struct.atalk_iface* null, align 8
@ENETUNREACH = common dso_local global i32 0, align 4
@GFP_ATOMIC = common dso_local global i32 0, align 4
@ENOBUFS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rtentry*, %struct.net_device*)* @atrtr_create to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @atrtr_create(%struct.rtentry* %0, %struct.net_device* %1) #0 {
  %3 = alloca %struct.rtentry*, align 8
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca %struct.sockaddr_at*, align 8
  %6 = alloca %struct.sockaddr_at*, align 8
  %7 = alloca %struct.atalk_route*, align 8
  %8 = alloca %struct.atalk_iface*, align 8
  %9 = alloca %struct.atalk_iface*, align 8
  %10 = alloca i32, align 4
  store %struct.rtentry* %0, %struct.rtentry** %3, align 8
  store %struct.net_device* %1, %struct.net_device** %4, align 8
  %11 = load %struct.rtentry*, %struct.rtentry** %3, align 8
  %12 = getelementptr inbounds %struct.rtentry, %struct.rtentry* %11, i32 0, i32 2
  %13 = bitcast i32* %12 to %struct.sockaddr_at*
  store %struct.sockaddr_at* %13, %struct.sockaddr_at** %5, align 8
  %14 = load %struct.rtentry*, %struct.rtentry** %3, align 8
  %15 = getelementptr inbounds %struct.rtentry, %struct.rtentry* %14, i32 0, i32 1
  %16 = bitcast i32* %15 to %struct.sockaddr_at*
  store %struct.sockaddr_at* %16, %struct.sockaddr_at** %6, align 8
  %17 = load i32, i32* @EINVAL, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %10, align 4
  %19 = load %struct.sockaddr_at*, %struct.sockaddr_at** %5, align 8
  %20 = getelementptr inbounds %struct.sockaddr_at, %struct.sockaddr_at* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = load i64, i64* @AF_APPLETALK, align 8
  %23 = icmp ne i64 %21, %22
  br i1 %23, label %33, label %24

24:                                               ; preds = %2
  %25 = load %struct.net_device*, %struct.net_device** %4, align 8
  %26 = icmp ne %struct.net_device* %25, null
  br i1 %26, label %34, label %27

27:                                               ; preds = %24
  %28 = load %struct.sockaddr_at*, %struct.sockaddr_at** %6, align 8
  %29 = getelementptr inbounds %struct.sockaddr_at, %struct.sockaddr_at* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = load i64, i64* @AF_APPLETALK, align 8
  %32 = icmp ne i64 %30, %31
  br i1 %32, label %33, label %34

33:                                               ; preds = %27, %2
  br label %201

34:                                               ; preds = %27, %24
  %35 = call i32 @write_lock_bh(i32* @atalk_routes_lock)
  %36 = load %struct.atalk_route*, %struct.atalk_route** @atalk_routes, align 8
  store %struct.atalk_route* %36, %struct.atalk_route** %7, align 8
  br label %37

37:                                               ; preds = %80, %34
  %38 = load %struct.atalk_route*, %struct.atalk_route** %7, align 8
  %39 = icmp ne %struct.atalk_route* %38, null
  br i1 %39, label %40, label %84

40:                                               ; preds = %37
  %41 = load %struct.rtentry*, %struct.rtentry** %3, align 8
  %42 = getelementptr inbounds %struct.rtentry, %struct.rtentry* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = load %struct.atalk_route*, %struct.atalk_route** %7, align 8
  %45 = getelementptr inbounds %struct.atalk_route, %struct.atalk_route* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = icmp ne i32 %43, %46
  br i1 %47, label %48, label %49

48:                                               ; preds = %40
  br label %80

49:                                               ; preds = %40
  %50 = load %struct.sockaddr_at*, %struct.sockaddr_at** %5, align 8
  %51 = getelementptr inbounds %struct.sockaddr_at, %struct.sockaddr_at* %50, i32 0, i32 1
  %52 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = load %struct.atalk_route*, %struct.atalk_route** %7, align 8
  %55 = getelementptr inbounds %struct.atalk_route, %struct.atalk_route* %54, i32 0, i32 3
  %56 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %55, i32 0, i32 0
  %57 = load i64, i64* %56, align 8
  %58 = icmp eq i64 %53, %57
  br i1 %58, label %59, label %79

59:                                               ; preds = %49
  %60 = load %struct.atalk_route*, %struct.atalk_route** %7, align 8
  %61 = getelementptr inbounds %struct.atalk_route, %struct.atalk_route* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 8
  %63 = load i32, i32* @RTF_HOST, align 4
  %64 = and i32 %62, %63
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %67, label %66

66:                                               ; preds = %59
  br label %84

67:                                               ; preds = %59
  %68 = load %struct.sockaddr_at*, %struct.sockaddr_at** %5, align 8
  %69 = getelementptr inbounds %struct.sockaddr_at, %struct.sockaddr_at* %68, i32 0, i32 1
  %70 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %69, i32 0, i32 1
  %71 = load i64, i64* %70, align 8
  %72 = load %struct.atalk_route*, %struct.atalk_route** %7, align 8
  %73 = getelementptr inbounds %struct.atalk_route, %struct.atalk_route* %72, i32 0, i32 3
  %74 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %73, i32 0, i32 1
  %75 = load i64, i64* %74, align 8
  %76 = icmp eq i64 %71, %75
  br i1 %76, label %77, label %78

77:                                               ; preds = %67
  br label %84

78:                                               ; preds = %67
  br label %79

79:                                               ; preds = %78, %49
  br label %80

80:                                               ; preds = %79, %48
  %81 = load %struct.atalk_route*, %struct.atalk_route** %7, align 8
  %82 = getelementptr inbounds %struct.atalk_route, %struct.atalk_route* %81, i32 0, i32 4
  %83 = load %struct.atalk_route*, %struct.atalk_route** %82, align 8
  store %struct.atalk_route* %83, %struct.atalk_route** %7, align 8
  br label %37

84:                                               ; preds = %77, %66, %37
  %85 = load %struct.net_device*, %struct.net_device** %4, align 8
  %86 = icmp ne %struct.net_device* %85, null
  br i1 %86, label %160, label %87

87:                                               ; preds = %84
  store %struct.atalk_iface* null, %struct.atalk_iface** %9, align 8
  %88 = call i32 @read_lock_bh(i32* @atalk_interfaces_lock)
  %89 = load %struct.atalk_iface*, %struct.atalk_iface** @atalk_interfaces, align 8
  store %struct.atalk_iface* %89, %struct.atalk_iface** %8, align 8
  br label %90

90:                                               ; preds = %145, %87
  %91 = load %struct.atalk_iface*, %struct.atalk_iface** %8, align 8
  %92 = icmp ne %struct.atalk_iface* %91, null
  br i1 %92, label %93, label %149

93:                                               ; preds = %90
  %94 = load %struct.atalk_iface*, %struct.atalk_iface** %9, align 8
  %95 = icmp ne %struct.atalk_iface* %94, null
  br i1 %95, label %122, label %96

96:                                               ; preds = %93
  %97 = load %struct.sockaddr_at*, %struct.sockaddr_at** %6, align 8
  %98 = getelementptr inbounds %struct.sockaddr_at, %struct.sockaddr_at* %97, i32 0, i32 1
  %99 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %98, i32 0, i32 0
  %100 = load i64, i64* %99, align 8
  %101 = call i64 @ntohs(i64 %100)
  %102 = load %struct.atalk_iface*, %struct.atalk_iface** %8, align 8
  %103 = getelementptr inbounds %struct.atalk_iface, %struct.atalk_iface* %102, i32 0, i32 2
  %104 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %103, i32 0, i32 0
  %105 = load i64, i64* %104, align 8
  %106 = call i64 @ntohs(i64 %105)
  %107 = icmp sge i64 %101, %106
  br i1 %107, label %108, label %122

108:                                              ; preds = %96
  %109 = load %struct.sockaddr_at*, %struct.sockaddr_at** %6, align 8
  %110 = getelementptr inbounds %struct.sockaddr_at, %struct.sockaddr_at* %109, i32 0, i32 1
  %111 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %110, i32 0, i32 0
  %112 = load i64, i64* %111, align 8
  %113 = call i64 @ntohs(i64 %112)
  %114 = load %struct.atalk_iface*, %struct.atalk_iface** %8, align 8
  %115 = getelementptr inbounds %struct.atalk_iface, %struct.atalk_iface* %114, i32 0, i32 2
  %116 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %115, i32 0, i32 1
  %117 = load i64, i64* %116, align 8
  %118 = call i64 @ntohs(i64 %117)
  %119 = icmp sle i64 %113, %118
  br i1 %119, label %120, label %122

120:                                              ; preds = %108
  %121 = load %struct.atalk_iface*, %struct.atalk_iface** %8, align 8
  store %struct.atalk_iface* %121, %struct.atalk_iface** %9, align 8
  br label %122

122:                                              ; preds = %120, %108, %96, %93
  %123 = load %struct.sockaddr_at*, %struct.sockaddr_at** %6, align 8
  %124 = getelementptr inbounds %struct.sockaddr_at, %struct.sockaddr_at* %123, i32 0, i32 1
  %125 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %124, i32 0, i32 0
  %126 = load i64, i64* %125, align 8
  %127 = load %struct.atalk_iface*, %struct.atalk_iface** %8, align 8
  %128 = getelementptr inbounds %struct.atalk_iface, %struct.atalk_iface* %127, i32 0, i32 1
  %129 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %128, i32 0, i32 0
  %130 = load i64, i64* %129, align 8
  %131 = icmp eq i64 %126, %130
  br i1 %131, label %132, label %144

132:                                              ; preds = %122
  %133 = load %struct.sockaddr_at*, %struct.sockaddr_at** %6, align 8
  %134 = getelementptr inbounds %struct.sockaddr_at, %struct.sockaddr_at* %133, i32 0, i32 1
  %135 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %134, i32 0, i32 1
  %136 = load i64, i64* %135, align 8
  %137 = load %struct.atalk_iface*, %struct.atalk_iface** %8, align 8
  %138 = getelementptr inbounds %struct.atalk_iface, %struct.atalk_iface* %137, i32 0, i32 1
  %139 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %138, i32 0, i32 1
  %140 = load i64, i64* %139, align 8
  %141 = icmp eq i64 %136, %140
  br i1 %141, label %142, label %144

142:                                              ; preds = %132
  %143 = load %struct.atalk_iface*, %struct.atalk_iface** %8, align 8
  store %struct.atalk_iface* %143, %struct.atalk_iface** %9, align 8
  br label %144

144:                                              ; preds = %142, %132, %122
  br label %145

145:                                              ; preds = %144
  %146 = load %struct.atalk_iface*, %struct.atalk_iface** %8, align 8
  %147 = getelementptr inbounds %struct.atalk_iface, %struct.atalk_iface* %146, i32 0, i32 3
  %148 = load %struct.atalk_iface*, %struct.atalk_iface** %147, align 8
  store %struct.atalk_iface* %148, %struct.atalk_iface** %8, align 8
  br label %90

149:                                              ; preds = %90
  %150 = call i32 @read_unlock_bh(i32* @atalk_interfaces_lock)
  %151 = load i32, i32* @ENETUNREACH, align 4
  %152 = sub nsw i32 0, %151
  store i32 %152, i32* %10, align 4
  %153 = load %struct.atalk_iface*, %struct.atalk_iface** %9, align 8
  %154 = icmp ne %struct.atalk_iface* %153, null
  br i1 %154, label %156, label %155

155:                                              ; preds = %149
  br label %199

156:                                              ; preds = %149
  %157 = load %struct.atalk_iface*, %struct.atalk_iface** %9, align 8
  %158 = getelementptr inbounds %struct.atalk_iface, %struct.atalk_iface* %157, i32 0, i32 0
  %159 = load %struct.net_device*, %struct.net_device** %158, align 8
  store %struct.net_device* %159, %struct.net_device** %4, align 8
  br label %160

160:                                              ; preds = %156, %84
  %161 = load %struct.atalk_route*, %struct.atalk_route** %7, align 8
  %162 = icmp ne %struct.atalk_route* %161, null
  br i1 %162, label %176, label %163

163:                                              ; preds = %160
  %164 = load i32, i32* @GFP_ATOMIC, align 4
  %165 = call %struct.atalk_route* @kzalloc(i32 56, i32 %164)
  store %struct.atalk_route* %165, %struct.atalk_route** %7, align 8
  %166 = load i32, i32* @ENOBUFS, align 4
  %167 = sub nsw i32 0, %166
  store i32 %167, i32* %10, align 4
  %168 = load %struct.atalk_route*, %struct.atalk_route** %7, align 8
  %169 = icmp ne %struct.atalk_route* %168, null
  br i1 %169, label %171, label %170

170:                                              ; preds = %163
  br label %199

171:                                              ; preds = %163
  %172 = load %struct.atalk_route*, %struct.atalk_route** @atalk_routes, align 8
  %173 = load %struct.atalk_route*, %struct.atalk_route** %7, align 8
  %174 = getelementptr inbounds %struct.atalk_route, %struct.atalk_route* %173, i32 0, i32 4
  store %struct.atalk_route* %172, %struct.atalk_route** %174, align 8
  %175 = load %struct.atalk_route*, %struct.atalk_route** %7, align 8
  store %struct.atalk_route* %175, %struct.atalk_route** @atalk_routes, align 8
  br label %176

176:                                              ; preds = %171, %160
  %177 = load %struct.atalk_route*, %struct.atalk_route** %7, align 8
  %178 = getelementptr inbounds %struct.atalk_route, %struct.atalk_route* %177, i32 0, i32 3
  %179 = load %struct.sockaddr_at*, %struct.sockaddr_at** %5, align 8
  %180 = getelementptr inbounds %struct.sockaddr_at, %struct.sockaddr_at* %179, i32 0, i32 1
  %181 = bitcast %struct.TYPE_6__* %178 to i8*
  %182 = bitcast %struct.TYPE_6__* %180 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %181, i8* align 8 %182, i64 16, i1 false)
  %183 = load %struct.net_device*, %struct.net_device** %4, align 8
  %184 = call i32 @dev_hold(%struct.net_device* %183)
  %185 = load %struct.net_device*, %struct.net_device** %4, align 8
  %186 = load %struct.atalk_route*, %struct.atalk_route** %7, align 8
  %187 = getelementptr inbounds %struct.atalk_route, %struct.atalk_route* %186, i32 0, i32 2
  store %struct.net_device* %185, %struct.net_device** %187, align 8
  %188 = load %struct.rtentry*, %struct.rtentry** %3, align 8
  %189 = getelementptr inbounds %struct.rtentry, %struct.rtentry* %188, i32 0, i32 0
  %190 = load i32, i32* %189, align 4
  %191 = load %struct.atalk_route*, %struct.atalk_route** %7, align 8
  %192 = getelementptr inbounds %struct.atalk_route, %struct.atalk_route* %191, i32 0, i32 0
  store i32 %190, i32* %192, align 8
  %193 = load %struct.atalk_route*, %struct.atalk_route** %7, align 8
  %194 = getelementptr inbounds %struct.atalk_route, %struct.atalk_route* %193, i32 0, i32 1
  %195 = load %struct.sockaddr_at*, %struct.sockaddr_at** %6, align 8
  %196 = getelementptr inbounds %struct.sockaddr_at, %struct.sockaddr_at* %195, i32 0, i32 1
  %197 = bitcast %struct.TYPE_6__* %194 to i8*
  %198 = bitcast %struct.TYPE_6__* %196 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %197, i8* align 8 %198, i64 16, i1 false)
  store i32 0, i32* %10, align 4
  br label %199

199:                                              ; preds = %176, %170, %155
  %200 = call i32 @write_unlock_bh(i32* @atalk_routes_lock)
  br label %201

201:                                              ; preds = %199, %33
  %202 = load i32, i32* %10, align 4
  ret i32 %202
}

declare dso_local i32 @write_lock_bh(i32*) #1

declare dso_local i32 @read_lock_bh(i32*) #1

declare dso_local i64 @ntohs(i64) #1

declare dso_local i32 @read_unlock_bh(i32*) #1

declare dso_local %struct.atalk_route* @kzalloc(i32, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @dev_hold(%struct.net_device*) #1

declare dso_local i32 @write_unlock_bh(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

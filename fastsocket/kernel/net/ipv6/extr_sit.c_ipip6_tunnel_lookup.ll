; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/ipv6/extr_sit.c_ipip6_tunnel_lookup.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/ipv6/extr_sit.c_ipip6_tunnel_lookup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ip_tunnel = type { %struct.TYPE_6__*, %struct.TYPE_5__, %struct.ip_tunnel* }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_5__ = type { i64, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i64, i64 }
%struct.net = type { i32 }
%struct.net_device = type { i64 }
%struct.sit_net = type { %struct.ip_tunnel**, %struct.ip_tunnel**, %struct.ip_tunnel**, %struct.ip_tunnel** }

@sit_net_id = common dso_local global i32 0, align 4
@IFF_UP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.ip_tunnel* (%struct.net*, %struct.net_device*, i64, i64)* @ipip6_tunnel_lookup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.ip_tunnel* @ipip6_tunnel_lookup(%struct.net* %0, %struct.net_device* %1, i64 %2, i64 %3) #0 {
  %5 = alloca %struct.ip_tunnel*, align 8
  %6 = alloca %struct.net*, align 8
  %7 = alloca %struct.net_device*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.ip_tunnel*, align 8
  %13 = alloca %struct.sit_net*, align 8
  store %struct.net* %0, %struct.net** %6, align 8
  store %struct.net_device* %1, %struct.net_device** %7, align 8
  store i64 %2, i64* %8, align 8
  store i64 %3, i64* %9, align 8
  %14 = load i64, i64* %8, align 8
  %15 = call i32 @HASH(i64 %14)
  store i32 %15, i32* %10, align 4
  %16 = load i64, i64* %9, align 8
  %17 = call i32 @HASH(i64 %16)
  store i32 %17, i32* %11, align 4
  %18 = load %struct.net*, %struct.net** %6, align 8
  %19 = load i32, i32* @sit_net_id, align 4
  %20 = call %struct.sit_net* @net_generic(%struct.net* %18, i32 %19)
  store %struct.sit_net* %20, %struct.sit_net** %13, align 8
  %21 = load %struct.sit_net*, %struct.sit_net** %13, align 8
  %22 = getelementptr inbounds %struct.sit_net, %struct.sit_net* %21, i32 0, i32 3
  %23 = load %struct.ip_tunnel**, %struct.ip_tunnel*** %22, align 8
  %24 = load i32, i32* %10, align 4
  %25 = load i32, i32* %11, align 4
  %26 = xor i32 %24, %25
  %27 = zext i32 %26 to i64
  %28 = getelementptr inbounds %struct.ip_tunnel*, %struct.ip_tunnel** %23, i64 %27
  %29 = load %struct.ip_tunnel*, %struct.ip_tunnel** %28, align 8
  store %struct.ip_tunnel* %29, %struct.ip_tunnel** %12, align 8
  br label %30

30:                                               ; preds = %79, %4
  %31 = load %struct.ip_tunnel*, %struct.ip_tunnel** %12, align 8
  %32 = icmp ne %struct.ip_tunnel* %31, null
  br i1 %32, label %33, label %83

33:                                               ; preds = %30
  %34 = load i64, i64* %9, align 8
  %35 = load %struct.ip_tunnel*, %struct.ip_tunnel** %12, align 8
  %36 = getelementptr inbounds %struct.ip_tunnel, %struct.ip_tunnel* %35, i32 0, i32 1
  %37 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %36, i32 0, i32 1
  %38 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = icmp eq i64 %34, %39
  br i1 %40, label %41, label %78

41:                                               ; preds = %33
  %42 = load i64, i64* %8, align 8
  %43 = load %struct.ip_tunnel*, %struct.ip_tunnel** %12, align 8
  %44 = getelementptr inbounds %struct.ip_tunnel, %struct.ip_tunnel* %43, i32 0, i32 1
  %45 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %44, i32 0, i32 1
  %46 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %45, i32 0, i32 1
  %47 = load i64, i64* %46, align 8
  %48 = icmp eq i64 %42, %47
  br i1 %48, label %49, label %78

49:                                               ; preds = %41
  %50 = load %struct.net_device*, %struct.net_device** %7, align 8
  %51 = icmp ne %struct.net_device* %50, null
  br i1 %51, label %52, label %67

52:                                               ; preds = %49
  %53 = load %struct.ip_tunnel*, %struct.ip_tunnel** %12, align 8
  %54 = getelementptr inbounds %struct.ip_tunnel, %struct.ip_tunnel* %53, i32 0, i32 1
  %55 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %54, i32 0, i32 0
  %56 = load i64, i64* %55, align 8
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %67

58:                                               ; preds = %52
  %59 = load %struct.net_device*, %struct.net_device** %7, align 8
  %60 = getelementptr inbounds %struct.net_device, %struct.net_device* %59, i32 0, i32 0
  %61 = load i64, i64* %60, align 8
  %62 = load %struct.ip_tunnel*, %struct.ip_tunnel** %12, align 8
  %63 = getelementptr inbounds %struct.ip_tunnel, %struct.ip_tunnel* %62, i32 0, i32 1
  %64 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %63, i32 0, i32 0
  %65 = load i64, i64* %64, align 8
  %66 = icmp eq i64 %61, %65
  br i1 %66, label %67, label %78

67:                                               ; preds = %58, %52, %49
  %68 = load %struct.ip_tunnel*, %struct.ip_tunnel** %12, align 8
  %69 = getelementptr inbounds %struct.ip_tunnel, %struct.ip_tunnel* %68, i32 0, i32 0
  %70 = load %struct.TYPE_6__*, %struct.TYPE_6__** %69, align 8
  %71 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 4
  %73 = load i32, i32* @IFF_UP, align 4
  %74 = and i32 %72, %73
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %76, label %78

76:                                               ; preds = %67
  %77 = load %struct.ip_tunnel*, %struct.ip_tunnel** %12, align 8
  store %struct.ip_tunnel* %77, %struct.ip_tunnel** %5, align 8
  br label %209

78:                                               ; preds = %67, %58, %41, %33
  br label %79

79:                                               ; preds = %78
  %80 = load %struct.ip_tunnel*, %struct.ip_tunnel** %12, align 8
  %81 = getelementptr inbounds %struct.ip_tunnel, %struct.ip_tunnel* %80, i32 0, i32 2
  %82 = load %struct.ip_tunnel*, %struct.ip_tunnel** %81, align 8
  store %struct.ip_tunnel* %82, %struct.ip_tunnel** %12, align 8
  br label %30

83:                                               ; preds = %30
  %84 = load %struct.sit_net*, %struct.sit_net** %13, align 8
  %85 = getelementptr inbounds %struct.sit_net, %struct.sit_net* %84, i32 0, i32 2
  %86 = load %struct.ip_tunnel**, %struct.ip_tunnel*** %85, align 8
  %87 = load i32, i32* %10, align 4
  %88 = zext i32 %87 to i64
  %89 = getelementptr inbounds %struct.ip_tunnel*, %struct.ip_tunnel** %86, i64 %88
  %90 = load %struct.ip_tunnel*, %struct.ip_tunnel** %89, align 8
  store %struct.ip_tunnel* %90, %struct.ip_tunnel** %12, align 8
  br label %91

91:                                               ; preds = %132, %83
  %92 = load %struct.ip_tunnel*, %struct.ip_tunnel** %12, align 8
  %93 = icmp ne %struct.ip_tunnel* %92, null
  br i1 %93, label %94, label %136

94:                                               ; preds = %91
  %95 = load i64, i64* %8, align 8
  %96 = load %struct.ip_tunnel*, %struct.ip_tunnel** %12, align 8
  %97 = getelementptr inbounds %struct.ip_tunnel, %struct.ip_tunnel* %96, i32 0, i32 1
  %98 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %97, i32 0, i32 1
  %99 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %98, i32 0, i32 1
  %100 = load i64, i64* %99, align 8
  %101 = icmp eq i64 %95, %100
  br i1 %101, label %102, label %131

102:                                              ; preds = %94
  %103 = load %struct.net_device*, %struct.net_device** %7, align 8
  %104 = icmp ne %struct.net_device* %103, null
  br i1 %104, label %105, label %120

105:                                              ; preds = %102
  %106 = load %struct.ip_tunnel*, %struct.ip_tunnel** %12, align 8
  %107 = getelementptr inbounds %struct.ip_tunnel, %struct.ip_tunnel* %106, i32 0, i32 1
  %108 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %107, i32 0, i32 0
  %109 = load i64, i64* %108, align 8
  %110 = icmp ne i64 %109, 0
  br i1 %110, label %111, label %120

111:                                              ; preds = %105
  %112 = load %struct.net_device*, %struct.net_device** %7, align 8
  %113 = getelementptr inbounds %struct.net_device, %struct.net_device* %112, i32 0, i32 0
  %114 = load i64, i64* %113, align 8
  %115 = load %struct.ip_tunnel*, %struct.ip_tunnel** %12, align 8
  %116 = getelementptr inbounds %struct.ip_tunnel, %struct.ip_tunnel* %115, i32 0, i32 1
  %117 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %116, i32 0, i32 0
  %118 = load i64, i64* %117, align 8
  %119 = icmp eq i64 %114, %118
  br i1 %119, label %120, label %131

120:                                              ; preds = %111, %105, %102
  %121 = load %struct.ip_tunnel*, %struct.ip_tunnel** %12, align 8
  %122 = getelementptr inbounds %struct.ip_tunnel, %struct.ip_tunnel* %121, i32 0, i32 0
  %123 = load %struct.TYPE_6__*, %struct.TYPE_6__** %122, align 8
  %124 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %123, i32 0, i32 0
  %125 = load i32, i32* %124, align 4
  %126 = load i32, i32* @IFF_UP, align 4
  %127 = and i32 %125, %126
  %128 = icmp ne i32 %127, 0
  br i1 %128, label %129, label %131

129:                                              ; preds = %120
  %130 = load %struct.ip_tunnel*, %struct.ip_tunnel** %12, align 8
  store %struct.ip_tunnel* %130, %struct.ip_tunnel** %5, align 8
  br label %209

131:                                              ; preds = %120, %111, %94
  br label %132

132:                                              ; preds = %131
  %133 = load %struct.ip_tunnel*, %struct.ip_tunnel** %12, align 8
  %134 = getelementptr inbounds %struct.ip_tunnel, %struct.ip_tunnel* %133, i32 0, i32 2
  %135 = load %struct.ip_tunnel*, %struct.ip_tunnel** %134, align 8
  store %struct.ip_tunnel* %135, %struct.ip_tunnel** %12, align 8
  br label %91

136:                                              ; preds = %91
  %137 = load %struct.sit_net*, %struct.sit_net** %13, align 8
  %138 = getelementptr inbounds %struct.sit_net, %struct.sit_net* %137, i32 0, i32 1
  %139 = load %struct.ip_tunnel**, %struct.ip_tunnel*** %138, align 8
  %140 = load i32, i32* %11, align 4
  %141 = zext i32 %140 to i64
  %142 = getelementptr inbounds %struct.ip_tunnel*, %struct.ip_tunnel** %139, i64 %141
  %143 = load %struct.ip_tunnel*, %struct.ip_tunnel** %142, align 8
  store %struct.ip_tunnel* %143, %struct.ip_tunnel** %12, align 8
  br label %144

144:                                              ; preds = %185, %136
  %145 = load %struct.ip_tunnel*, %struct.ip_tunnel** %12, align 8
  %146 = icmp ne %struct.ip_tunnel* %145, null
  br i1 %146, label %147, label %189

147:                                              ; preds = %144
  %148 = load i64, i64* %9, align 8
  %149 = load %struct.ip_tunnel*, %struct.ip_tunnel** %12, align 8
  %150 = getelementptr inbounds %struct.ip_tunnel, %struct.ip_tunnel* %149, i32 0, i32 1
  %151 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %150, i32 0, i32 1
  %152 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %151, i32 0, i32 0
  %153 = load i64, i64* %152, align 8
  %154 = icmp eq i64 %148, %153
  br i1 %154, label %155, label %184

155:                                              ; preds = %147
  %156 = load %struct.net_device*, %struct.net_device** %7, align 8
  %157 = icmp ne %struct.net_device* %156, null
  br i1 %157, label %158, label %173

158:                                              ; preds = %155
  %159 = load %struct.ip_tunnel*, %struct.ip_tunnel** %12, align 8
  %160 = getelementptr inbounds %struct.ip_tunnel, %struct.ip_tunnel* %159, i32 0, i32 1
  %161 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %160, i32 0, i32 0
  %162 = load i64, i64* %161, align 8
  %163 = icmp ne i64 %162, 0
  br i1 %163, label %164, label %173

164:                                              ; preds = %158
  %165 = load %struct.net_device*, %struct.net_device** %7, align 8
  %166 = getelementptr inbounds %struct.net_device, %struct.net_device* %165, i32 0, i32 0
  %167 = load i64, i64* %166, align 8
  %168 = load %struct.ip_tunnel*, %struct.ip_tunnel** %12, align 8
  %169 = getelementptr inbounds %struct.ip_tunnel, %struct.ip_tunnel* %168, i32 0, i32 1
  %170 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %169, i32 0, i32 0
  %171 = load i64, i64* %170, align 8
  %172 = icmp eq i64 %167, %171
  br i1 %172, label %173, label %184

173:                                              ; preds = %164, %158, %155
  %174 = load %struct.ip_tunnel*, %struct.ip_tunnel** %12, align 8
  %175 = getelementptr inbounds %struct.ip_tunnel, %struct.ip_tunnel* %174, i32 0, i32 0
  %176 = load %struct.TYPE_6__*, %struct.TYPE_6__** %175, align 8
  %177 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %176, i32 0, i32 0
  %178 = load i32, i32* %177, align 4
  %179 = load i32, i32* @IFF_UP, align 4
  %180 = and i32 %178, %179
  %181 = icmp ne i32 %180, 0
  br i1 %181, label %182, label %184

182:                                              ; preds = %173
  %183 = load %struct.ip_tunnel*, %struct.ip_tunnel** %12, align 8
  store %struct.ip_tunnel* %183, %struct.ip_tunnel** %5, align 8
  br label %209

184:                                              ; preds = %173, %164, %147
  br label %185

185:                                              ; preds = %184
  %186 = load %struct.ip_tunnel*, %struct.ip_tunnel** %12, align 8
  %187 = getelementptr inbounds %struct.ip_tunnel, %struct.ip_tunnel* %186, i32 0, i32 2
  %188 = load %struct.ip_tunnel*, %struct.ip_tunnel** %187, align 8
  store %struct.ip_tunnel* %188, %struct.ip_tunnel** %12, align 8
  br label %144

189:                                              ; preds = %144
  %190 = load %struct.sit_net*, %struct.sit_net** %13, align 8
  %191 = getelementptr inbounds %struct.sit_net, %struct.sit_net* %190, i32 0, i32 0
  %192 = load %struct.ip_tunnel**, %struct.ip_tunnel*** %191, align 8
  %193 = getelementptr inbounds %struct.ip_tunnel*, %struct.ip_tunnel** %192, i64 0
  %194 = load %struct.ip_tunnel*, %struct.ip_tunnel** %193, align 8
  store %struct.ip_tunnel* %194, %struct.ip_tunnel** %12, align 8
  %195 = load %struct.ip_tunnel*, %struct.ip_tunnel** %12, align 8
  %196 = icmp ne %struct.ip_tunnel* %195, null
  br i1 %196, label %197, label %208

197:                                              ; preds = %189
  %198 = load %struct.ip_tunnel*, %struct.ip_tunnel** %12, align 8
  %199 = getelementptr inbounds %struct.ip_tunnel, %struct.ip_tunnel* %198, i32 0, i32 0
  %200 = load %struct.TYPE_6__*, %struct.TYPE_6__** %199, align 8
  %201 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %200, i32 0, i32 0
  %202 = load i32, i32* %201, align 4
  %203 = load i32, i32* @IFF_UP, align 4
  %204 = and i32 %202, %203
  %205 = icmp ne i32 %204, 0
  br i1 %205, label %206, label %208

206:                                              ; preds = %197
  %207 = load %struct.ip_tunnel*, %struct.ip_tunnel** %12, align 8
  store %struct.ip_tunnel* %207, %struct.ip_tunnel** %5, align 8
  br label %209

208:                                              ; preds = %197, %189
  store %struct.ip_tunnel* null, %struct.ip_tunnel** %5, align 8
  br label %209

209:                                              ; preds = %208, %206, %182, %129, %76
  %210 = load %struct.ip_tunnel*, %struct.ip_tunnel** %5, align 8
  ret %struct.ip_tunnel* %210
}

declare dso_local i32 @HASH(i64) #1

declare dso_local %struct.sit_net* @net_generic(%struct.net*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

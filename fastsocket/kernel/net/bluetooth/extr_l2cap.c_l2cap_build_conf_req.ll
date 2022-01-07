; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/bluetooth/extr_l2cap.c_l2cap_build_conf_req.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/bluetooth/extr_l2cap.c_l2cap_build_conf_req.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.l2cap_conf_rfc = type { i32, i8*, i32, i32, i32, i32 }
%struct.sock = type { i32 }
%struct.l2cap_pinfo = type { i32, i32, i64, i8*, i32, %struct.TYPE_2__*, i64, i64 }
%struct.TYPE_2__ = type { i32 }
%struct.l2cap_conf_req = type { i8*, i8*, i8* }

@__const.l2cap_build_conf_req.rfc = private unnamed_addr constant %struct.l2cap_conf_rfc { i32 130, i8* null, i32 0, i32 0, i32 0, i32 0 }, align 8
@.str = private unnamed_addr constant [6 x i8] c"sk %p\00", align 1
@L2CAP_CONF_STATE2_DEVICE = common dso_local global i32 0, align 4
@L2CAP_DEFAULT_MTU = common dso_local global i64 0, align 8
@L2CAP_CONF_MTU = common dso_local global i32 0, align 4
@L2CAP_DEFAULT_TX_WINDOW = common dso_local global i32 0, align 4
@L2CAP_DEFAULT_MAX_TX = common dso_local global i32 0, align 4
@L2CAP_DEFAULT_MAX_PDU_SIZE = common dso_local global i32 0, align 4
@L2CAP_CONF_RFC = common dso_local global i32 0, align 4
@L2CAP_FEAT_FCS = common dso_local global i32 0, align 4
@L2CAP_FCS_NONE = common dso_local global i8* null, align 8
@L2CAP_CONF_NO_FCS_RECV = common dso_local global i32 0, align 4
@L2CAP_CONF_FCS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sock*, i8*)* @l2cap_build_conf_req to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @l2cap_build_conf_req(%struct.sock* %0, i8* %1) #0 {
  %3 = alloca %struct.sock*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.l2cap_pinfo*, align 8
  %6 = alloca %struct.l2cap_conf_req*, align 8
  %7 = alloca %struct.l2cap_conf_rfc, align 8
  %8 = alloca i8*, align 8
  store %struct.sock* %0, %struct.sock** %3, align 8
  store i8* %1, i8** %4, align 8
  %9 = load %struct.sock*, %struct.sock** %3, align 8
  %10 = call %struct.l2cap_pinfo* @l2cap_pi(%struct.sock* %9)
  store %struct.l2cap_pinfo* %10, %struct.l2cap_pinfo** %5, align 8
  %11 = load i8*, i8** %4, align 8
  %12 = bitcast i8* %11 to %struct.l2cap_conf_req*
  store %struct.l2cap_conf_req* %12, %struct.l2cap_conf_req** %6, align 8
  %13 = bitcast %struct.l2cap_conf_rfc* %7 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %13, i8* align 8 bitcast (%struct.l2cap_conf_rfc* @__const.l2cap_build_conf_req.rfc to i8*), i64 32, i1 false)
  %14 = load %struct.l2cap_conf_req*, %struct.l2cap_conf_req** %6, align 8
  %15 = getelementptr inbounds %struct.l2cap_conf_req, %struct.l2cap_conf_req* %14, i32 0, i32 2
  %16 = load i8*, i8** %15, align 8
  store i8* %16, i8** %8, align 8
  %17 = load %struct.sock*, %struct.sock** %3, align 8
  %18 = call i32 @BT_DBG(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), %struct.sock* %17)
  %19 = load %struct.l2cap_pinfo*, %struct.l2cap_pinfo** %5, align 8
  %20 = getelementptr inbounds %struct.l2cap_pinfo, %struct.l2cap_pinfo* %19, i32 0, i32 7
  %21 = load i64, i64* %20, align 8
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %28, label %23

23:                                               ; preds = %2
  %24 = load %struct.l2cap_pinfo*, %struct.l2cap_pinfo** %5, align 8
  %25 = getelementptr inbounds %struct.l2cap_pinfo, %struct.l2cap_pinfo* %24, i32 0, i32 6
  %26 = load i64, i64* %25, align 8
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %29

28:                                               ; preds = %23, %2
  br label %68

29:                                               ; preds = %23
  %30 = load %struct.l2cap_pinfo*, %struct.l2cap_pinfo** %5, align 8
  %31 = getelementptr inbounds %struct.l2cap_pinfo, %struct.l2cap_pinfo* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  switch i32 %32, label %56 [
    i32 128, label %33
    i32 129, label %33
  ]

33:                                               ; preds = %29, %29
  %34 = load i32, i32* @L2CAP_CONF_STATE2_DEVICE, align 4
  %35 = load %struct.l2cap_pinfo*, %struct.l2cap_pinfo** %5, align 8
  %36 = getelementptr inbounds %struct.l2cap_pinfo, %struct.l2cap_pinfo* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = or i32 %37, %34
  store i32 %38, i32* %36, align 4
  %39 = load %struct.l2cap_pinfo*, %struct.l2cap_pinfo** %5, align 8
  %40 = getelementptr inbounds %struct.l2cap_pinfo, %struct.l2cap_pinfo* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = load %struct.l2cap_pinfo*, %struct.l2cap_pinfo** %5, align 8
  %43 = getelementptr inbounds %struct.l2cap_pinfo, %struct.l2cap_pinfo* %42, i32 0, i32 5
  %44 = load %struct.TYPE_2__*, %struct.TYPE_2__** %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = call i32 @l2cap_mode_supported(i32 %41, i32 %46)
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %55, label %49

49:                                               ; preds = %33
  %50 = load %struct.l2cap_pinfo*, %struct.l2cap_pinfo** %5, align 8
  %51 = getelementptr inbounds %struct.l2cap_pinfo, %struct.l2cap_pinfo* %50, i32 0, i32 5
  %52 = load %struct.TYPE_2__*, %struct.TYPE_2__** %51, align 8
  %53 = load %struct.sock*, %struct.sock** %3, align 8
  %54 = call i32 @l2cap_send_disconn_req(%struct.TYPE_2__* %52, %struct.sock* %53)
  br label %55

55:                                               ; preds = %49, %33
  br label %67

56:                                               ; preds = %29
  %57 = getelementptr inbounds %struct.l2cap_conf_rfc, %struct.l2cap_conf_rfc* %7, i32 0, i32 0
  %58 = load i32, i32* %57, align 8
  %59 = load %struct.l2cap_pinfo*, %struct.l2cap_pinfo** %5, align 8
  %60 = getelementptr inbounds %struct.l2cap_pinfo, %struct.l2cap_pinfo* %59, i32 0, i32 5
  %61 = load %struct.TYPE_2__*, %struct.TYPE_2__** %60, align 8
  %62 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = call i32 @l2cap_select_mode(i32 %58, i32 %63)
  %65 = load %struct.l2cap_pinfo*, %struct.l2cap_pinfo** %5, align 8
  %66 = getelementptr inbounds %struct.l2cap_pinfo, %struct.l2cap_pinfo* %65, i32 0, i32 0
  store i32 %64, i32* %66, align 8
  br label %67

67:                                               ; preds = %56, %55
  br label %68

68:                                               ; preds = %67, %28
  %69 = load %struct.l2cap_pinfo*, %struct.l2cap_pinfo** %5, align 8
  %70 = getelementptr inbounds %struct.l2cap_pinfo, %struct.l2cap_pinfo* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 8
  switch i32 %71, label %177 [
    i32 130, label %72
    i32 129, label %85
    i32 128, label %132
  ]

72:                                               ; preds = %68
  %73 = load %struct.l2cap_pinfo*, %struct.l2cap_pinfo** %5, align 8
  %74 = getelementptr inbounds %struct.l2cap_pinfo, %struct.l2cap_pinfo* %73, i32 0, i32 2
  %75 = load i64, i64* %74, align 8
  %76 = load i64, i64* @L2CAP_DEFAULT_MTU, align 8
  %77 = icmp ne i64 %75, %76
  br i1 %77, label %78, label %84

78:                                               ; preds = %72
  %79 = load i32, i32* @L2CAP_CONF_MTU, align 4
  %80 = load %struct.l2cap_pinfo*, %struct.l2cap_pinfo** %5, align 8
  %81 = getelementptr inbounds %struct.l2cap_pinfo, %struct.l2cap_pinfo* %80, i32 0, i32 2
  %82 = load i64, i64* %81, align 8
  %83 = call i32 @l2cap_add_conf_opt(i8** %8, i32 %79, i32 2, i64 %82)
  br label %84

84:                                               ; preds = %78, %72
  br label %177

85:                                               ; preds = %68
  %86 = getelementptr inbounds %struct.l2cap_conf_rfc, %struct.l2cap_conf_rfc* %7, i32 0, i32 0
  store i32 129, i32* %86, align 8
  %87 = load i32, i32* @L2CAP_DEFAULT_TX_WINDOW, align 4
  %88 = getelementptr inbounds %struct.l2cap_conf_rfc, %struct.l2cap_conf_rfc* %7, i32 0, i32 5
  store i32 %87, i32* %88, align 4
  %89 = load i32, i32* @L2CAP_DEFAULT_MAX_TX, align 4
  %90 = getelementptr inbounds %struct.l2cap_conf_rfc, %struct.l2cap_conf_rfc* %7, i32 0, i32 4
  store i32 %89, i32* %90, align 8
  %91 = getelementptr inbounds %struct.l2cap_conf_rfc, %struct.l2cap_conf_rfc* %7, i32 0, i32 3
  store i32 0, i32* %91, align 4
  %92 = getelementptr inbounds %struct.l2cap_conf_rfc, %struct.l2cap_conf_rfc* %7, i32 0, i32 2
  store i32 0, i32* %92, align 8
  %93 = load i32, i32* @L2CAP_DEFAULT_MAX_PDU_SIZE, align 4
  %94 = call i8* @cpu_to_le16(i32 %93)
  %95 = getelementptr inbounds %struct.l2cap_conf_rfc, %struct.l2cap_conf_rfc* %7, i32 0, i32 1
  store i8* %94, i8** %95, align 8
  %96 = load i32, i32* @L2CAP_CONF_RFC, align 4
  %97 = ptrtoint %struct.l2cap_conf_rfc* %7 to i64
  %98 = call i32 @l2cap_add_conf_opt(i8** %8, i32 %96, i32 32, i64 %97)
  %99 = load %struct.l2cap_pinfo*, %struct.l2cap_pinfo** %5, align 8
  %100 = getelementptr inbounds %struct.l2cap_pinfo, %struct.l2cap_pinfo* %99, i32 0, i32 5
  %101 = load %struct.TYPE_2__*, %struct.TYPE_2__** %100, align 8
  %102 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %101, i32 0, i32 0
  %103 = load i32, i32* %102, align 4
  %104 = load i32, i32* @L2CAP_FEAT_FCS, align 4
  %105 = and i32 %103, %104
  %106 = icmp ne i32 %105, 0
  br i1 %106, label %108, label %107

107:                                              ; preds = %85
  br label %177

108:                                              ; preds = %85
  %109 = load %struct.l2cap_pinfo*, %struct.l2cap_pinfo** %5, align 8
  %110 = getelementptr inbounds %struct.l2cap_pinfo, %struct.l2cap_pinfo* %109, i32 0, i32 3
  %111 = load i8*, i8** %110, align 8
  %112 = load i8*, i8** @L2CAP_FCS_NONE, align 8
  %113 = icmp eq i8* %111, %112
  br i1 %113, label %121, label %114

114:                                              ; preds = %108
  %115 = load %struct.l2cap_pinfo*, %struct.l2cap_pinfo** %5, align 8
  %116 = getelementptr inbounds %struct.l2cap_pinfo, %struct.l2cap_pinfo* %115, i32 0, i32 1
  %117 = load i32, i32* %116, align 4
  %118 = load i32, i32* @L2CAP_CONF_NO_FCS_RECV, align 4
  %119 = and i32 %117, %118
  %120 = icmp ne i32 %119, 0
  br i1 %120, label %121, label %131

121:                                              ; preds = %114, %108
  %122 = load i8*, i8** @L2CAP_FCS_NONE, align 8
  %123 = load %struct.l2cap_pinfo*, %struct.l2cap_pinfo** %5, align 8
  %124 = getelementptr inbounds %struct.l2cap_pinfo, %struct.l2cap_pinfo* %123, i32 0, i32 3
  store i8* %122, i8** %124, align 8
  %125 = load i32, i32* @L2CAP_CONF_FCS, align 4
  %126 = load %struct.l2cap_pinfo*, %struct.l2cap_pinfo** %5, align 8
  %127 = getelementptr inbounds %struct.l2cap_pinfo, %struct.l2cap_pinfo* %126, i32 0, i32 3
  %128 = load i8*, i8** %127, align 8
  %129 = ptrtoint i8* %128 to i64
  %130 = call i32 @l2cap_add_conf_opt(i8** %8, i32 %125, i32 1, i64 %129)
  br label %131

131:                                              ; preds = %121, %114
  br label %177

132:                                              ; preds = %68
  %133 = getelementptr inbounds %struct.l2cap_conf_rfc, %struct.l2cap_conf_rfc* %7, i32 0, i32 0
  store i32 128, i32* %133, align 8
  %134 = getelementptr inbounds %struct.l2cap_conf_rfc, %struct.l2cap_conf_rfc* %7, i32 0, i32 5
  store i32 0, i32* %134, align 4
  %135 = getelementptr inbounds %struct.l2cap_conf_rfc, %struct.l2cap_conf_rfc* %7, i32 0, i32 4
  store i32 0, i32* %135, align 8
  %136 = getelementptr inbounds %struct.l2cap_conf_rfc, %struct.l2cap_conf_rfc* %7, i32 0, i32 3
  store i32 0, i32* %136, align 4
  %137 = getelementptr inbounds %struct.l2cap_conf_rfc, %struct.l2cap_conf_rfc* %7, i32 0, i32 2
  store i32 0, i32* %137, align 8
  %138 = load i32, i32* @L2CAP_DEFAULT_MAX_PDU_SIZE, align 4
  %139 = call i8* @cpu_to_le16(i32 %138)
  %140 = getelementptr inbounds %struct.l2cap_conf_rfc, %struct.l2cap_conf_rfc* %7, i32 0, i32 1
  store i8* %139, i8** %140, align 8
  %141 = load i32, i32* @L2CAP_CONF_RFC, align 4
  %142 = ptrtoint %struct.l2cap_conf_rfc* %7 to i64
  %143 = call i32 @l2cap_add_conf_opt(i8** %8, i32 %141, i32 32, i64 %142)
  %144 = load %struct.l2cap_pinfo*, %struct.l2cap_pinfo** %5, align 8
  %145 = getelementptr inbounds %struct.l2cap_pinfo, %struct.l2cap_pinfo* %144, i32 0, i32 5
  %146 = load %struct.TYPE_2__*, %struct.TYPE_2__** %145, align 8
  %147 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %146, i32 0, i32 0
  %148 = load i32, i32* %147, align 4
  %149 = load i32, i32* @L2CAP_FEAT_FCS, align 4
  %150 = and i32 %148, %149
  %151 = icmp ne i32 %150, 0
  br i1 %151, label %153, label %152

152:                                              ; preds = %132
  br label %177

153:                                              ; preds = %132
  %154 = load %struct.l2cap_pinfo*, %struct.l2cap_pinfo** %5, align 8
  %155 = getelementptr inbounds %struct.l2cap_pinfo, %struct.l2cap_pinfo* %154, i32 0, i32 3
  %156 = load i8*, i8** %155, align 8
  %157 = load i8*, i8** @L2CAP_FCS_NONE, align 8
  %158 = icmp eq i8* %156, %157
  br i1 %158, label %166, label %159

159:                                              ; preds = %153
  %160 = load %struct.l2cap_pinfo*, %struct.l2cap_pinfo** %5, align 8
  %161 = getelementptr inbounds %struct.l2cap_pinfo, %struct.l2cap_pinfo* %160, i32 0, i32 1
  %162 = load i32, i32* %161, align 4
  %163 = load i32, i32* @L2CAP_CONF_NO_FCS_RECV, align 4
  %164 = and i32 %162, %163
  %165 = icmp ne i32 %164, 0
  br i1 %165, label %166, label %176

166:                                              ; preds = %159, %153
  %167 = load i8*, i8** @L2CAP_FCS_NONE, align 8
  %168 = load %struct.l2cap_pinfo*, %struct.l2cap_pinfo** %5, align 8
  %169 = getelementptr inbounds %struct.l2cap_pinfo, %struct.l2cap_pinfo* %168, i32 0, i32 3
  store i8* %167, i8** %169, align 8
  %170 = load i32, i32* @L2CAP_CONF_FCS, align 4
  %171 = load %struct.l2cap_pinfo*, %struct.l2cap_pinfo** %5, align 8
  %172 = getelementptr inbounds %struct.l2cap_pinfo, %struct.l2cap_pinfo* %171, i32 0, i32 3
  %173 = load i8*, i8** %172, align 8
  %174 = ptrtoint i8* %173 to i64
  %175 = call i32 @l2cap_add_conf_opt(i8** %8, i32 %170, i32 1, i64 %174)
  br label %176

176:                                              ; preds = %166, %159
  br label %177

177:                                              ; preds = %68, %176, %152, %131, %107, %84
  %178 = load %struct.l2cap_pinfo*, %struct.l2cap_pinfo** %5, align 8
  %179 = getelementptr inbounds %struct.l2cap_pinfo, %struct.l2cap_pinfo* %178, i32 0, i32 4
  %180 = load i32, i32* %179, align 8
  %181 = call i8* @cpu_to_le16(i32 %180)
  %182 = load %struct.l2cap_conf_req*, %struct.l2cap_conf_req** %6, align 8
  %183 = getelementptr inbounds %struct.l2cap_conf_req, %struct.l2cap_conf_req* %182, i32 0, i32 1
  store i8* %181, i8** %183, align 8
  %184 = call i8* @cpu_to_le16(i32 0)
  %185 = load %struct.l2cap_conf_req*, %struct.l2cap_conf_req** %6, align 8
  %186 = getelementptr inbounds %struct.l2cap_conf_req, %struct.l2cap_conf_req* %185, i32 0, i32 0
  store i8* %184, i8** %186, align 8
  %187 = load i8*, i8** %8, align 8
  %188 = load i8*, i8** %4, align 8
  %189 = ptrtoint i8* %187 to i64
  %190 = ptrtoint i8* %188 to i64
  %191 = sub i64 %189, %190
  %192 = trunc i64 %191 to i32
  ret i32 %192
}

declare dso_local %struct.l2cap_pinfo* @l2cap_pi(%struct.sock*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @BT_DBG(i8*, %struct.sock*) #1

declare dso_local i32 @l2cap_mode_supported(i32, i32) #1

declare dso_local i32 @l2cap_send_disconn_req(%struct.TYPE_2__*, %struct.sock*) #1

declare dso_local i32 @l2cap_select_mode(i32, i32) #1

declare dso_local i32 @l2cap_add_conf_opt(i8**, i32, i32, i64) #1

declare dso_local i8* @cpu_to_le16(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

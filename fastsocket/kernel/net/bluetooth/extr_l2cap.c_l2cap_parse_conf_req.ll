; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/bluetooth/extr_l2cap.c_l2cap_parse_conf_req.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/bluetooth/extr_l2cap.c_l2cap_parse_conf_req.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.l2cap_conf_rfc = type { i32, i32, i32, i32, i32, i32 }
%struct.sock = type { i32 }
%struct.l2cap_pinfo = type { i32, i64, i32, i32, i64, i64, i32, i32, i32, i32, i32, %struct.TYPE_2__*, i64, i8* }
%struct.TYPE_2__ = type { i32 }
%struct.l2cap_conf_rsp = type { i8*, i8*, i8*, i8* }

@__const.l2cap_parse_conf_req.rfc = private unnamed_addr constant %struct.l2cap_conf_rfc { i32 130, i32 0, i32 0, i32 0, i32 0, i32 0 }, align 4
@L2CAP_DEFAULT_MTU = common dso_local global i64 0, align 8
@L2CAP_CONF_SUCCESS = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [6 x i8] c"sk %p\00", align 1
@L2CAP_CONF_OPT_SIZE = common dso_local global i32 0, align 4
@L2CAP_CONF_HINT = common dso_local global i32 0, align 4
@L2CAP_CONF_MASK = common dso_local global i32 0, align 4
@L2CAP_FCS_NONE = common dso_local global i64 0, align 8
@L2CAP_CONF_NO_FCS_RECV = common dso_local global i32 0, align 4
@L2CAP_CONF_UNKNOWN = common dso_local global i64 0, align 8
@L2CAP_CONF_STATE2_DEVICE = common dso_local global i32 0, align 4
@ECONNREFUSED = common dso_local global i32 0, align 4
@L2CAP_CONF_UNACCEPT = common dso_local global i64 0, align 8
@L2CAP_DEFAULT_MIN_MTU = common dso_local global i64 0, align 8
@L2CAP_CONF_MTU_DONE = common dso_local global i32 0, align 4
@L2CAP_CONF_MODE_DONE = common dso_local global i32 0, align 4
@L2CAP_DEFAULT_RETRANS_TO = common dso_local global i32 0, align 4
@L2CAP_DEFAULT_MONITOR_TO = common dso_local global i32 0, align 4
@L2CAP_CONF_OUTPUT_DONE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sock*, i8*)* @l2cap_parse_conf_req to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @l2cap_parse_conf_req(%struct.sock* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.sock*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.l2cap_pinfo*, align 8
  %7 = alloca %struct.l2cap_conf_rsp*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i64, align 8
  %15 = alloca %struct.l2cap_conf_rfc, align 4
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  store %struct.sock* %0, %struct.sock** %4, align 8
  store i8* %1, i8** %5, align 8
  %18 = load %struct.sock*, %struct.sock** %4, align 8
  %19 = call %struct.l2cap_pinfo* @l2cap_pi(%struct.sock* %18)
  store %struct.l2cap_pinfo* %19, %struct.l2cap_pinfo** %6, align 8
  %20 = load i8*, i8** %5, align 8
  %21 = bitcast i8* %20 to %struct.l2cap_conf_rsp*
  store %struct.l2cap_conf_rsp* %21, %struct.l2cap_conf_rsp** %7, align 8
  %22 = load %struct.l2cap_conf_rsp*, %struct.l2cap_conf_rsp** %7, align 8
  %23 = getelementptr inbounds %struct.l2cap_conf_rsp, %struct.l2cap_conf_rsp* %22, i32 0, i32 3
  %24 = load i8*, i8** %23, align 8
  store i8* %24, i8** %8, align 8
  %25 = load %struct.l2cap_pinfo*, %struct.l2cap_pinfo** %6, align 8
  %26 = getelementptr inbounds %struct.l2cap_pinfo, %struct.l2cap_pinfo* %25, i32 0, i32 13
  %27 = load i8*, i8** %26, align 8
  store i8* %27, i8** %9, align 8
  %28 = load %struct.l2cap_pinfo*, %struct.l2cap_pinfo** %6, align 8
  %29 = getelementptr inbounds %struct.l2cap_pinfo, %struct.l2cap_pinfo* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  store i32 %30, i32* %10, align 4
  %31 = bitcast %struct.l2cap_conf_rfc* %15 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %31, i8* align 4 bitcast (%struct.l2cap_conf_rfc* @__const.l2cap_parse_conf_req.rfc to i8*), i64 24, i1 false)
  %32 = load i64, i64* @L2CAP_DEFAULT_MTU, align 8
  store i64 %32, i64* %16, align 8
  %33 = load i64, i64* @L2CAP_CONF_SUCCESS, align 8
  store i64 %33, i64* %17, align 8
  %34 = load %struct.sock*, %struct.sock** %4, align 8
  %35 = call i32 @BT_DBG(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), %struct.sock* %34)
  br label %36

36:                                               ; preds = %91, %2
  %37 = load i32, i32* %10, align 4
  %38 = load i32, i32* @L2CAP_CONF_OPT_SIZE, align 4
  %39 = icmp sge i32 %37, %38
  br i1 %39, label %40, label %92

40:                                               ; preds = %36
  %41 = call i64 @l2cap_get_conf_opt(i8** %9, i32* %11, i32* %13, i64* %14)
  %42 = load i32, i32* %10, align 4
  %43 = sext i32 %42 to i64
  %44 = sub nsw i64 %43, %41
  %45 = trunc i64 %44 to i32
  store i32 %45, i32* %10, align 4
  %46 = load i32, i32* %11, align 4
  %47 = load i32, i32* @L2CAP_CONF_HINT, align 4
  %48 = and i32 %46, %47
  store i32 %48, i32* %12, align 4
  %49 = load i32, i32* @L2CAP_CONF_MASK, align 4
  %50 = load i32, i32* %11, align 4
  %51 = and i32 %50, %49
  store i32 %51, i32* %11, align 4
  %52 = load i32, i32* %11, align 4
  switch i32 %52, label %81 [
    i32 133, label %53
    i32 134, label %55
    i32 132, label %59
    i32 131, label %60
    i32 135, label %70
  ]

53:                                               ; preds = %40
  %54 = load i64, i64* %14, align 8
  store i64 %54, i64* %16, align 8
  br label %91

55:                                               ; preds = %40
  %56 = load i64, i64* %14, align 8
  %57 = load %struct.l2cap_pinfo*, %struct.l2cap_pinfo** %6, align 8
  %58 = getelementptr inbounds %struct.l2cap_pinfo, %struct.l2cap_pinfo* %57, i32 0, i32 1
  store i64 %56, i64* %58, align 8
  br label %91

59:                                               ; preds = %40
  br label %91

60:                                               ; preds = %40
  %61 = load i32, i32* %13, align 4
  %62 = sext i32 %61 to i64
  %63 = icmp eq i64 %62, 24
  br i1 %63, label %64, label %69

64:                                               ; preds = %60
  %65 = load i64, i64* %14, align 8
  %66 = inttoptr i64 %65 to i8*
  %67 = load i32, i32* %13, align 4
  %68 = call i32 @memcpy(%struct.l2cap_conf_rfc* %15, i8* %66, i32 %67)
  br label %69

69:                                               ; preds = %64, %60
  br label %91

70:                                               ; preds = %40
  %71 = load i64, i64* %14, align 8
  %72 = load i64, i64* @L2CAP_FCS_NONE, align 8
  %73 = icmp eq i64 %71, %72
  br i1 %73, label %74, label %80

74:                                               ; preds = %70
  %75 = load i32, i32* @L2CAP_CONF_NO_FCS_RECV, align 4
  %76 = load %struct.l2cap_pinfo*, %struct.l2cap_pinfo** %6, align 8
  %77 = getelementptr inbounds %struct.l2cap_pinfo, %struct.l2cap_pinfo* %76, i32 0, i32 7
  %78 = load i32, i32* %77, align 4
  %79 = or i32 %78, %75
  store i32 %79, i32* %77, align 4
  br label %80

80:                                               ; preds = %74, %70
  br label %91

81:                                               ; preds = %40
  %82 = load i32, i32* %12, align 4
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %84, label %85

84:                                               ; preds = %81
  br label %91

85:                                               ; preds = %81
  %86 = load i64, i64* @L2CAP_CONF_UNKNOWN, align 8
  store i64 %86, i64* %17, align 8
  %87 = load i32, i32* %11, align 4
  %88 = load i8*, i8** %8, align 8
  %89 = getelementptr inbounds i8, i8* %88, i32 1
  store i8* %89, i8** %8, align 8
  %90 = bitcast i8* %88 to i32*
  store i32 %87, i32* %90, align 4
  br label %91

91:                                               ; preds = %85, %84, %80, %69, %59, %55, %53
  br label %36

92:                                               ; preds = %36
  %93 = load %struct.l2cap_pinfo*, %struct.l2cap_pinfo** %6, align 8
  %94 = getelementptr inbounds %struct.l2cap_pinfo, %struct.l2cap_pinfo* %93, i32 0, i32 2
  %95 = load i32, i32* %94, align 8
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %102, label %97

97:                                               ; preds = %92
  %98 = load %struct.l2cap_pinfo*, %struct.l2cap_pinfo** %6, align 8
  %99 = getelementptr inbounds %struct.l2cap_pinfo, %struct.l2cap_pinfo* %98, i32 0, i32 12
  %100 = load i64, i64* %99, align 8
  %101 = icmp ne i64 %100, 0
  br i1 %101, label %102, label %103

102:                                              ; preds = %97, %92
  br label %139

103:                                              ; preds = %97
  %104 = load %struct.l2cap_pinfo*, %struct.l2cap_pinfo** %6, align 8
  %105 = getelementptr inbounds %struct.l2cap_pinfo, %struct.l2cap_pinfo* %104, i32 0, i32 3
  %106 = load i32, i32* %105, align 4
  switch i32 %106, label %127 [
    i32 128, label %107
    i32 129, label %107
  ]

107:                                              ; preds = %103, %103
  %108 = load i32, i32* @L2CAP_CONF_STATE2_DEVICE, align 4
  %109 = load %struct.l2cap_pinfo*, %struct.l2cap_pinfo** %6, align 8
  %110 = getelementptr inbounds %struct.l2cap_pinfo, %struct.l2cap_pinfo* %109, i32 0, i32 7
  %111 = load i32, i32* %110, align 4
  %112 = or i32 %111, %108
  store i32 %112, i32* %110, align 4
  %113 = load %struct.l2cap_pinfo*, %struct.l2cap_pinfo** %6, align 8
  %114 = getelementptr inbounds %struct.l2cap_pinfo, %struct.l2cap_pinfo* %113, i32 0, i32 3
  %115 = load i32, i32* %114, align 4
  %116 = load %struct.l2cap_pinfo*, %struct.l2cap_pinfo** %6, align 8
  %117 = getelementptr inbounds %struct.l2cap_pinfo, %struct.l2cap_pinfo* %116, i32 0, i32 11
  %118 = load %struct.TYPE_2__*, %struct.TYPE_2__** %117, align 8
  %119 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %118, i32 0, i32 0
  %120 = load i32, i32* %119, align 4
  %121 = call i32 @l2cap_mode_supported(i32 %115, i32 %120)
  %122 = icmp ne i32 %121, 0
  br i1 %122, label %126, label %123

123:                                              ; preds = %107
  %124 = load i32, i32* @ECONNREFUSED, align 4
  %125 = sub nsw i32 0, %124
  store i32 %125, i32* %3, align 4
  br label %276

126:                                              ; preds = %107
  br label %138

127:                                              ; preds = %103
  %128 = getelementptr inbounds %struct.l2cap_conf_rfc, %struct.l2cap_conf_rfc* %15, i32 0, i32 0
  %129 = load i32, i32* %128, align 4
  %130 = load %struct.l2cap_pinfo*, %struct.l2cap_pinfo** %6, align 8
  %131 = getelementptr inbounds %struct.l2cap_pinfo, %struct.l2cap_pinfo* %130, i32 0, i32 11
  %132 = load %struct.TYPE_2__*, %struct.TYPE_2__** %131, align 8
  %133 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %132, i32 0, i32 0
  %134 = load i32, i32* %133, align 4
  %135 = call i32 @l2cap_select_mode(i32 %129, i32 %134)
  %136 = load %struct.l2cap_pinfo*, %struct.l2cap_pinfo** %6, align 8
  %137 = getelementptr inbounds %struct.l2cap_pinfo, %struct.l2cap_pinfo* %136, i32 0, i32 3
  store i32 %135, i32* %137, align 4
  br label %138

138:                                              ; preds = %127, %126
  br label %139

139:                                              ; preds = %138, %102
  %140 = load %struct.l2cap_pinfo*, %struct.l2cap_pinfo** %6, align 8
  %141 = getelementptr inbounds %struct.l2cap_pinfo, %struct.l2cap_pinfo* %140, i32 0, i32 3
  %142 = load i32, i32* %141, align 4
  %143 = getelementptr inbounds %struct.l2cap_conf_rfc, %struct.l2cap_conf_rfc* %15, i32 0, i32 0
  %144 = load i32, i32* %143, align 4
  %145 = icmp ne i32 %142, %144
  br i1 %145, label %146, label %162

146:                                              ; preds = %139
  %147 = load i64, i64* @L2CAP_CONF_UNACCEPT, align 8
  store i64 %147, i64* %17, align 8
  %148 = load %struct.l2cap_pinfo*, %struct.l2cap_pinfo** %6, align 8
  %149 = getelementptr inbounds %struct.l2cap_pinfo, %struct.l2cap_pinfo* %148, i32 0, i32 3
  %150 = load i32, i32* %149, align 4
  %151 = getelementptr inbounds %struct.l2cap_conf_rfc, %struct.l2cap_conf_rfc* %15, i32 0, i32 0
  store i32 %150, i32* %151, align 4
  %152 = load %struct.l2cap_pinfo*, %struct.l2cap_pinfo** %6, align 8
  %153 = getelementptr inbounds %struct.l2cap_pinfo, %struct.l2cap_pinfo* %152, i32 0, i32 2
  %154 = load i32, i32* %153, align 8
  %155 = icmp eq i32 %154, 1
  br i1 %155, label %156, label %159

156:                                              ; preds = %146
  %157 = load i32, i32* @ECONNREFUSED, align 4
  %158 = sub nsw i32 0, %157
  store i32 %158, i32* %3, align 4
  br label %276

159:                                              ; preds = %146
  %160 = ptrtoint %struct.l2cap_conf_rfc* %15 to i64
  %161 = call i32 @l2cap_add_conf_opt(i8** %8, i32 131, i32 24, i64 %160)
  br label %162

162:                                              ; preds = %159, %139
  %163 = load i64, i64* %17, align 8
  %164 = load i64, i64* @L2CAP_CONF_SUCCESS, align 8
  %165 = icmp eq i64 %163, %164
  br i1 %165, label %166, label %255

166:                                              ; preds = %162
  %167 = load i64, i64* %16, align 8
  %168 = load i64, i64* @L2CAP_DEFAULT_MIN_MTU, align 8
  %169 = icmp slt i64 %167, %168
  br i1 %169, label %170, label %172

170:                                              ; preds = %166
  %171 = load i64, i64* @L2CAP_CONF_UNACCEPT, align 8
  store i64 %171, i64* %17, align 8
  br label %181

172:                                              ; preds = %166
  %173 = load i64, i64* %16, align 8
  %174 = load %struct.l2cap_pinfo*, %struct.l2cap_pinfo** %6, align 8
  %175 = getelementptr inbounds %struct.l2cap_pinfo, %struct.l2cap_pinfo* %174, i32 0, i32 4
  store i64 %173, i64* %175, align 8
  %176 = load i32, i32* @L2CAP_CONF_MTU_DONE, align 4
  %177 = load %struct.l2cap_pinfo*, %struct.l2cap_pinfo** %6, align 8
  %178 = getelementptr inbounds %struct.l2cap_pinfo, %struct.l2cap_pinfo* %177, i32 0, i32 7
  %179 = load i32, i32* %178, align 4
  %180 = or i32 %179, %176
  store i32 %180, i32* %178, align 4
  br label %181

181:                                              ; preds = %172, %170
  %182 = load %struct.l2cap_pinfo*, %struct.l2cap_pinfo** %6, align 8
  %183 = getelementptr inbounds %struct.l2cap_pinfo, %struct.l2cap_pinfo* %182, i32 0, i32 4
  %184 = load i64, i64* %183, align 8
  %185 = call i32 @l2cap_add_conf_opt(i8** %8, i32 133, i32 2, i64 %184)
  %186 = getelementptr inbounds %struct.l2cap_conf_rfc, %struct.l2cap_conf_rfc* %15, i32 0, i32 0
  %187 = load i32, i32* %186, align 4
  switch i32 %187, label %237 [
    i32 130, label %188
    i32 129, label %197
    i32 128, label %221
  ]

188:                                              ; preds = %181
  %189 = load i64, i64* @L2CAP_FCS_NONE, align 8
  %190 = load %struct.l2cap_pinfo*, %struct.l2cap_pinfo** %6, align 8
  %191 = getelementptr inbounds %struct.l2cap_pinfo, %struct.l2cap_pinfo* %190, i32 0, i32 5
  store i64 %189, i64* %191, align 8
  %192 = load i32, i32* @L2CAP_CONF_MODE_DONE, align 4
  %193 = load %struct.l2cap_pinfo*, %struct.l2cap_pinfo** %6, align 8
  %194 = getelementptr inbounds %struct.l2cap_pinfo, %struct.l2cap_pinfo* %193, i32 0, i32 7
  %195 = load i32, i32* %194, align 4
  %196 = or i32 %195, %192
  store i32 %196, i32* %194, align 4
  br label %244

197:                                              ; preds = %181
  %198 = getelementptr inbounds %struct.l2cap_conf_rfc, %struct.l2cap_conf_rfc* %15, i32 0, i32 2
  %199 = load i32, i32* %198, align 4
  %200 = load %struct.l2cap_pinfo*, %struct.l2cap_pinfo** %6, align 8
  %201 = getelementptr inbounds %struct.l2cap_pinfo, %struct.l2cap_pinfo* %200, i32 0, i32 9
  store i32 %199, i32* %201, align 4
  %202 = getelementptr inbounds %struct.l2cap_conf_rfc, %struct.l2cap_conf_rfc* %15, i32 0, i32 5
  %203 = load i32, i32* %202, align 4
  %204 = load %struct.l2cap_pinfo*, %struct.l2cap_pinfo** %6, align 8
  %205 = getelementptr inbounds %struct.l2cap_pinfo, %struct.l2cap_pinfo* %204, i32 0, i32 10
  store i32 %203, i32* %205, align 8
  %206 = getelementptr inbounds %struct.l2cap_conf_rfc, %struct.l2cap_conf_rfc* %15, i32 0, i32 1
  %207 = load i32, i32* %206, align 4
  %208 = load %struct.l2cap_pinfo*, %struct.l2cap_pinfo** %6, align 8
  %209 = getelementptr inbounds %struct.l2cap_pinfo, %struct.l2cap_pinfo* %208, i32 0, i32 8
  store i32 %207, i32* %209, align 8
  %210 = load i32, i32* @L2CAP_DEFAULT_RETRANS_TO, align 4
  %211 = getelementptr inbounds %struct.l2cap_conf_rfc, %struct.l2cap_conf_rfc* %15, i32 0, i32 4
  store i32 %210, i32* %211, align 4
  %212 = load i32, i32* @L2CAP_DEFAULT_MONITOR_TO, align 4
  %213 = getelementptr inbounds %struct.l2cap_conf_rfc, %struct.l2cap_conf_rfc* %15, i32 0, i32 3
  store i32 %212, i32* %213, align 4
  %214 = load i32, i32* @L2CAP_CONF_MODE_DONE, align 4
  %215 = load %struct.l2cap_pinfo*, %struct.l2cap_pinfo** %6, align 8
  %216 = getelementptr inbounds %struct.l2cap_pinfo, %struct.l2cap_pinfo* %215, i32 0, i32 7
  %217 = load i32, i32* %216, align 4
  %218 = or i32 %217, %214
  store i32 %218, i32* %216, align 4
  %219 = ptrtoint %struct.l2cap_conf_rfc* %15 to i64
  %220 = call i32 @l2cap_add_conf_opt(i8** %8, i32 131, i32 24, i64 %219)
  br label %244

221:                                              ; preds = %181
  %222 = getelementptr inbounds %struct.l2cap_conf_rfc, %struct.l2cap_conf_rfc* %15, i32 0, i32 2
  %223 = load i32, i32* %222, align 4
  %224 = load %struct.l2cap_pinfo*, %struct.l2cap_pinfo** %6, align 8
  %225 = getelementptr inbounds %struct.l2cap_pinfo, %struct.l2cap_pinfo* %224, i32 0, i32 9
  store i32 %223, i32* %225, align 4
  %226 = getelementptr inbounds %struct.l2cap_conf_rfc, %struct.l2cap_conf_rfc* %15, i32 0, i32 1
  %227 = load i32, i32* %226, align 4
  %228 = load %struct.l2cap_pinfo*, %struct.l2cap_pinfo** %6, align 8
  %229 = getelementptr inbounds %struct.l2cap_pinfo, %struct.l2cap_pinfo* %228, i32 0, i32 8
  store i32 %227, i32* %229, align 8
  %230 = load i32, i32* @L2CAP_CONF_MODE_DONE, align 4
  %231 = load %struct.l2cap_pinfo*, %struct.l2cap_pinfo** %6, align 8
  %232 = getelementptr inbounds %struct.l2cap_pinfo, %struct.l2cap_pinfo* %231, i32 0, i32 7
  %233 = load i32, i32* %232, align 4
  %234 = or i32 %233, %230
  store i32 %234, i32* %232, align 4
  %235 = ptrtoint %struct.l2cap_conf_rfc* %15 to i64
  %236 = call i32 @l2cap_add_conf_opt(i8** %8, i32 131, i32 24, i64 %235)
  br label %244

237:                                              ; preds = %181
  %238 = load i64, i64* @L2CAP_CONF_UNACCEPT, align 8
  store i64 %238, i64* %17, align 8
  %239 = call i32 @memset(%struct.l2cap_conf_rfc* %15, i32 0, i32 24)
  %240 = load %struct.l2cap_pinfo*, %struct.l2cap_pinfo** %6, align 8
  %241 = getelementptr inbounds %struct.l2cap_pinfo, %struct.l2cap_pinfo* %240, i32 0, i32 3
  %242 = load i32, i32* %241, align 4
  %243 = getelementptr inbounds %struct.l2cap_conf_rfc, %struct.l2cap_conf_rfc* %15, i32 0, i32 0
  store i32 %242, i32* %243, align 4
  br label %244

244:                                              ; preds = %237, %221, %197, %188
  %245 = load i64, i64* %17, align 8
  %246 = load i64, i64* @L2CAP_CONF_SUCCESS, align 8
  %247 = icmp eq i64 %245, %246
  br i1 %247, label %248, label %254

248:                                              ; preds = %244
  %249 = load i32, i32* @L2CAP_CONF_OUTPUT_DONE, align 4
  %250 = load %struct.l2cap_pinfo*, %struct.l2cap_pinfo** %6, align 8
  %251 = getelementptr inbounds %struct.l2cap_pinfo, %struct.l2cap_pinfo* %250, i32 0, i32 7
  %252 = load i32, i32* %251, align 4
  %253 = or i32 %252, %249
  store i32 %253, i32* %251, align 4
  br label %254

254:                                              ; preds = %248, %244
  br label %255

255:                                              ; preds = %254, %162
  %256 = load %struct.l2cap_pinfo*, %struct.l2cap_pinfo** %6, align 8
  %257 = getelementptr inbounds %struct.l2cap_pinfo, %struct.l2cap_pinfo* %256, i32 0, i32 6
  %258 = load i32, i32* %257, align 8
  %259 = call i8* @cpu_to_le16(i32 %258)
  %260 = load %struct.l2cap_conf_rsp*, %struct.l2cap_conf_rsp** %7, align 8
  %261 = getelementptr inbounds %struct.l2cap_conf_rsp, %struct.l2cap_conf_rsp* %260, i32 0, i32 2
  store i8* %259, i8** %261, align 8
  %262 = load i64, i64* %17, align 8
  %263 = trunc i64 %262 to i32
  %264 = call i8* @cpu_to_le16(i32 %263)
  %265 = load %struct.l2cap_conf_rsp*, %struct.l2cap_conf_rsp** %7, align 8
  %266 = getelementptr inbounds %struct.l2cap_conf_rsp, %struct.l2cap_conf_rsp* %265, i32 0, i32 1
  store i8* %264, i8** %266, align 8
  %267 = call i8* @cpu_to_le16(i32 0)
  %268 = load %struct.l2cap_conf_rsp*, %struct.l2cap_conf_rsp** %7, align 8
  %269 = getelementptr inbounds %struct.l2cap_conf_rsp, %struct.l2cap_conf_rsp* %268, i32 0, i32 0
  store i8* %267, i8** %269, align 8
  %270 = load i8*, i8** %8, align 8
  %271 = load i8*, i8** %5, align 8
  %272 = ptrtoint i8* %270 to i64
  %273 = ptrtoint i8* %271 to i64
  %274 = sub i64 %272, %273
  %275 = trunc i64 %274 to i32
  store i32 %275, i32* %3, align 4
  br label %276

276:                                              ; preds = %255, %156, %123
  %277 = load i32, i32* %3, align 4
  ret i32 %277
}

declare dso_local %struct.l2cap_pinfo* @l2cap_pi(%struct.sock*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @BT_DBG(i8*, %struct.sock*) #1

declare dso_local i64 @l2cap_get_conf_opt(i8**, i32*, i32*, i64*) #1

declare dso_local i32 @memcpy(%struct.l2cap_conf_rfc*, i8*, i32) #1

declare dso_local i32 @l2cap_mode_supported(i32, i32) #1

declare dso_local i32 @l2cap_select_mode(i32, i32) #1

declare dso_local i32 @l2cap_add_conf_opt(i8**, i32, i32, i64) #1

declare dso_local i32 @memset(%struct.l2cap_conf_rfc*, i32, i32) #1

declare dso_local i8* @cpu_to_le16(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

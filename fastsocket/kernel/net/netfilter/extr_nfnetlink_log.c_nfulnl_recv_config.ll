; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/netfilter/extr_nfnetlink_log.c_nfulnl_recv_config.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/netfilter/extr_nfnetlink_log.c_nfulnl_recv_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sock = type { i32 }
%struct.sk_buff = type { i32 }
%struct.nlmsghdr = type { i32 }
%struct.nlattr = type { i32 }
%struct.nfgenmsg = type { i32, i32 }
%struct.nfulnl_instance = type { i64 }
%struct.nfulnl_msg_config_cmd = type { i32 }
%struct.TYPE_2__ = type { i64 }
%struct.nfulnl_msg_config_mode = type { i32, i32 }

@NFULA_CFG_CMD = common dso_local global i64 0, align 8
@nfulnl_logger = common dso_local global i32 0, align 4
@EPERM = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@ENOTSUPP = common dso_local global i32 0, align 4
@NFULA_CFG_MODE = common dso_local global i64 0, align 8
@NFULA_CFG_TIMEOUT = common dso_local global i64 0, align 8
@NFULA_CFG_NLBUFSIZ = common dso_local global i64 0, align 8
@NFULA_CFG_QTHRESH = common dso_local global i64 0, align 8
@NFULA_CFG_FLAGS = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sock*, %struct.sk_buff*, %struct.nlmsghdr*, %struct.nlattr**)* @nfulnl_recv_config to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nfulnl_recv_config(%struct.sock* %0, %struct.sk_buff* %1, %struct.nlmsghdr* %2, %struct.nlattr** %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.sock*, align 8
  %7 = alloca %struct.sk_buff*, align 8
  %8 = alloca %struct.nlmsghdr*, align 8
  %9 = alloca %struct.nlattr**, align 8
  %10 = alloca %struct.nfgenmsg*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.nfulnl_instance*, align 8
  %13 = alloca %struct.nfulnl_msg_config_cmd*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca %struct.TYPE_2__, align 8
  %17 = alloca %struct.TYPE_2__, align 8
  %18 = alloca %struct.nfulnl_msg_config_mode*, align 8
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  store %struct.sock* %0, %struct.sock** %6, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %7, align 8
  store %struct.nlmsghdr* %2, %struct.nlmsghdr** %8, align 8
  store %struct.nlattr** %3, %struct.nlattr*** %9, align 8
  %23 = load %struct.nlmsghdr*, %struct.nlmsghdr** %8, align 8
  %24 = call %struct.nfgenmsg* @NLMSG_DATA(%struct.nlmsghdr* %23)
  store %struct.nfgenmsg* %24, %struct.nfgenmsg** %10, align 8
  %25 = load %struct.nfgenmsg*, %struct.nfgenmsg** %10, align 8
  %26 = getelementptr inbounds %struct.nfgenmsg, %struct.nfgenmsg* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @ntohs(i32 %27)
  store i32 %28, i32* %11, align 4
  store %struct.nfulnl_msg_config_cmd* null, %struct.nfulnl_msg_config_cmd** %13, align 8
  store i32 0, i32* %14, align 4
  %29 = load %struct.nlattr**, %struct.nlattr*** %9, align 8
  %30 = load i64, i64* @NFULA_CFG_CMD, align 8
  %31 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %29, i64 %30
  %32 = load %struct.nlattr*, %struct.nlattr** %31, align 8
  %33 = icmp ne %struct.nlattr* %32, null
  br i1 %33, label %34, label %54

34:                                               ; preds = %4
  %35 = load %struct.nfgenmsg*, %struct.nfgenmsg** %10, align 8
  %36 = getelementptr inbounds %struct.nfgenmsg, %struct.nfgenmsg* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  store i32 %37, i32* %15, align 4
  %38 = load %struct.nlattr**, %struct.nlattr*** %9, align 8
  %39 = load i64, i64* @NFULA_CFG_CMD, align 8
  %40 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %38, i64 %39
  %41 = load %struct.nlattr*, %struct.nlattr** %40, align 8
  %42 = call i8* @nla_data(%struct.nlattr* %41)
  %43 = bitcast i8* %42 to %struct.nfulnl_msg_config_cmd*
  store %struct.nfulnl_msg_config_cmd* %43, %struct.nfulnl_msg_config_cmd** %13, align 8
  %44 = load %struct.nfulnl_msg_config_cmd*, %struct.nfulnl_msg_config_cmd** %13, align 8
  %45 = getelementptr inbounds %struct.nfulnl_msg_config_cmd, %struct.nfulnl_msg_config_cmd* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  switch i32 %46, label %53 [
    i32 130, label %47
    i32 129, label %50
  ]

47:                                               ; preds = %34
  %48 = load i32, i32* %15, align 4
  %49 = call i32 @nf_log_bind_pf(i32 %48, i32* @nfulnl_logger)
  store i32 %49, i32* %5, align 4
  br label %235

50:                                               ; preds = %34
  %51 = load i32, i32* %15, align 4
  %52 = call i32 @nf_log_unbind_pf(i32 %51)
  store i32 0, i32* %5, align 4
  br label %235

53:                                               ; preds = %34
  br label %54

54:                                               ; preds = %53, %4
  %55 = load i32, i32* %11, align 4
  %56 = call %struct.nfulnl_instance* @instance_lookup_get(i32 %55)
  store %struct.nfulnl_instance* %56, %struct.nfulnl_instance** %12, align 8
  %57 = load %struct.nfulnl_instance*, %struct.nfulnl_instance** %12, align 8
  %58 = icmp ne %struct.nfulnl_instance* %57, null
  br i1 %58, label %59, label %72

59:                                               ; preds = %54
  %60 = load %struct.nfulnl_instance*, %struct.nfulnl_instance** %12, align 8
  %61 = getelementptr inbounds %struct.nfulnl_instance, %struct.nfulnl_instance* %60, i32 0, i32 0
  %62 = load i64, i64* %61, align 8
  %63 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %64 = call i64 @NETLINK_CB(%struct.sk_buff* %63)
  %65 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  store i64 %64, i64* %65, align 8
  %66 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  %67 = load i64, i64* %66, align 8
  %68 = icmp ne i64 %62, %67
  br i1 %68, label %69, label %72

69:                                               ; preds = %59
  %70 = load i32, i32* @EPERM, align 4
  %71 = sub nsw i32 0, %70
  store i32 %71, i32* %14, align 4
  br label %230

72:                                               ; preds = %59, %54
  %73 = load %struct.nfulnl_msg_config_cmd*, %struct.nfulnl_msg_config_cmd** %13, align 8
  %74 = icmp ne %struct.nfulnl_msg_config_cmd* %73, null
  br i1 %74, label %75, label %113

75:                                               ; preds = %72
  %76 = load %struct.nfulnl_msg_config_cmd*, %struct.nfulnl_msg_config_cmd** %13, align 8
  %77 = getelementptr inbounds %struct.nfulnl_msg_config_cmd, %struct.nfulnl_msg_config_cmd* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 4
  switch i32 %78, label %109 [
    i32 131, label %79
    i32 128, label %100
  ]

79:                                               ; preds = %75
  %80 = load %struct.nfulnl_instance*, %struct.nfulnl_instance** %12, align 8
  %81 = icmp ne %struct.nfulnl_instance* %80, null
  br i1 %81, label %82, label %85

82:                                               ; preds = %79
  %83 = load i32, i32* @EBUSY, align 4
  %84 = sub nsw i32 0, %83
  store i32 %84, i32* %14, align 4
  br label %230

85:                                               ; preds = %79
  %86 = load i32, i32* %11, align 4
  %87 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %88 = call i64 @NETLINK_CB(%struct.sk_buff* %87)
  %89 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  store i64 %88, i64* %89, align 8
  %90 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  %91 = load i64, i64* %90, align 8
  %92 = call %struct.nfulnl_instance* @instance_create(i32 %86, i64 %91)
  store %struct.nfulnl_instance* %92, %struct.nfulnl_instance** %12, align 8
  %93 = load %struct.nfulnl_instance*, %struct.nfulnl_instance** %12, align 8
  %94 = call i32 @IS_ERR(%struct.nfulnl_instance* %93)
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %96, label %99

96:                                               ; preds = %85
  %97 = load %struct.nfulnl_instance*, %struct.nfulnl_instance** %12, align 8
  %98 = call i32 @PTR_ERR(%struct.nfulnl_instance* %97)
  store i32 %98, i32* %14, align 4
  br label %233

99:                                               ; preds = %85
  br label %112

100:                                              ; preds = %75
  %101 = load %struct.nfulnl_instance*, %struct.nfulnl_instance** %12, align 8
  %102 = icmp ne %struct.nfulnl_instance* %101, null
  br i1 %102, label %106, label %103

103:                                              ; preds = %100
  %104 = load i32, i32* @ENODEV, align 4
  %105 = sub nsw i32 0, %104
  store i32 %105, i32* %14, align 4
  br label %233

106:                                              ; preds = %100
  %107 = load %struct.nfulnl_instance*, %struct.nfulnl_instance** %12, align 8
  %108 = call i32 @instance_destroy(%struct.nfulnl_instance* %107)
  br label %233

109:                                              ; preds = %75
  %110 = load i32, i32* @ENOTSUPP, align 4
  %111 = sub nsw i32 0, %110
  store i32 %111, i32* %14, align 4
  br label %112

112:                                              ; preds = %109, %99
  br label %113

113:                                              ; preds = %112, %72
  %114 = load %struct.nlattr**, %struct.nlattr*** %9, align 8
  %115 = load i64, i64* @NFULA_CFG_MODE, align 8
  %116 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %114, i64 %115
  %117 = load %struct.nlattr*, %struct.nlattr** %116, align 8
  %118 = icmp ne %struct.nlattr* %117, null
  br i1 %118, label %119, label %141

119:                                              ; preds = %113
  %120 = load %struct.nlattr**, %struct.nlattr*** %9, align 8
  %121 = load i64, i64* @NFULA_CFG_MODE, align 8
  %122 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %120, i64 %121
  %123 = load %struct.nlattr*, %struct.nlattr** %122, align 8
  %124 = call i8* @nla_data(%struct.nlattr* %123)
  %125 = bitcast i8* %124 to %struct.nfulnl_msg_config_mode*
  store %struct.nfulnl_msg_config_mode* %125, %struct.nfulnl_msg_config_mode** %18, align 8
  %126 = load %struct.nfulnl_instance*, %struct.nfulnl_instance** %12, align 8
  %127 = icmp ne %struct.nfulnl_instance* %126, null
  br i1 %127, label %131, label %128

128:                                              ; preds = %119
  %129 = load i32, i32* @ENODEV, align 4
  %130 = sub nsw i32 0, %129
  store i32 %130, i32* %14, align 4
  br label %233

131:                                              ; preds = %119
  %132 = load %struct.nfulnl_instance*, %struct.nfulnl_instance** %12, align 8
  %133 = load %struct.nfulnl_msg_config_mode*, %struct.nfulnl_msg_config_mode** %18, align 8
  %134 = getelementptr inbounds %struct.nfulnl_msg_config_mode, %struct.nfulnl_msg_config_mode* %133, i32 0, i32 1
  %135 = load i32, i32* %134, align 4
  %136 = load %struct.nfulnl_msg_config_mode*, %struct.nfulnl_msg_config_mode** %18, align 8
  %137 = getelementptr inbounds %struct.nfulnl_msg_config_mode, %struct.nfulnl_msg_config_mode* %136, i32 0, i32 0
  %138 = load i32, i32* %137, align 4
  %139 = call i32 @ntohl(i32 %138)
  %140 = call i32 @nfulnl_set_mode(%struct.nfulnl_instance* %132, i32 %135, i32 %139)
  br label %141

141:                                              ; preds = %131, %113
  %142 = load %struct.nlattr**, %struct.nlattr*** %9, align 8
  %143 = load i64, i64* @NFULA_CFG_TIMEOUT, align 8
  %144 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %142, i64 %143
  %145 = load %struct.nlattr*, %struct.nlattr** %144, align 8
  %146 = icmp ne %struct.nlattr* %145, null
  br i1 %146, label %147, label %163

147:                                              ; preds = %141
  %148 = load %struct.nlattr**, %struct.nlattr*** %9, align 8
  %149 = load i64, i64* @NFULA_CFG_TIMEOUT, align 8
  %150 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %148, i64 %149
  %151 = load %struct.nlattr*, %struct.nlattr** %150, align 8
  %152 = call i32 @nla_get_be32(%struct.nlattr* %151)
  store i32 %152, i32* %19, align 4
  %153 = load %struct.nfulnl_instance*, %struct.nfulnl_instance** %12, align 8
  %154 = icmp ne %struct.nfulnl_instance* %153, null
  br i1 %154, label %158, label %155

155:                                              ; preds = %147
  %156 = load i32, i32* @ENODEV, align 4
  %157 = sub nsw i32 0, %156
  store i32 %157, i32* %14, align 4
  br label %233

158:                                              ; preds = %147
  %159 = load %struct.nfulnl_instance*, %struct.nfulnl_instance** %12, align 8
  %160 = load i32, i32* %19, align 4
  %161 = call i32 @ntohl(i32 %160)
  %162 = call i32 @nfulnl_set_timeout(%struct.nfulnl_instance* %159, i32 %161)
  br label %163

163:                                              ; preds = %158, %141
  %164 = load %struct.nlattr**, %struct.nlattr*** %9, align 8
  %165 = load i64, i64* @NFULA_CFG_NLBUFSIZ, align 8
  %166 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %164, i64 %165
  %167 = load %struct.nlattr*, %struct.nlattr** %166, align 8
  %168 = icmp ne %struct.nlattr* %167, null
  br i1 %168, label %169, label %185

169:                                              ; preds = %163
  %170 = load %struct.nlattr**, %struct.nlattr*** %9, align 8
  %171 = load i64, i64* @NFULA_CFG_NLBUFSIZ, align 8
  %172 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %170, i64 %171
  %173 = load %struct.nlattr*, %struct.nlattr** %172, align 8
  %174 = call i32 @nla_get_be32(%struct.nlattr* %173)
  store i32 %174, i32* %20, align 4
  %175 = load %struct.nfulnl_instance*, %struct.nfulnl_instance** %12, align 8
  %176 = icmp ne %struct.nfulnl_instance* %175, null
  br i1 %176, label %180, label %177

177:                                              ; preds = %169
  %178 = load i32, i32* @ENODEV, align 4
  %179 = sub nsw i32 0, %178
  store i32 %179, i32* %14, align 4
  br label %233

180:                                              ; preds = %169
  %181 = load %struct.nfulnl_instance*, %struct.nfulnl_instance** %12, align 8
  %182 = load i32, i32* %20, align 4
  %183 = call i32 @ntohl(i32 %182)
  %184 = call i32 @nfulnl_set_nlbufsiz(%struct.nfulnl_instance* %181, i32 %183)
  br label %185

185:                                              ; preds = %180, %163
  %186 = load %struct.nlattr**, %struct.nlattr*** %9, align 8
  %187 = load i64, i64* @NFULA_CFG_QTHRESH, align 8
  %188 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %186, i64 %187
  %189 = load %struct.nlattr*, %struct.nlattr** %188, align 8
  %190 = icmp ne %struct.nlattr* %189, null
  br i1 %190, label %191, label %207

191:                                              ; preds = %185
  %192 = load %struct.nlattr**, %struct.nlattr*** %9, align 8
  %193 = load i64, i64* @NFULA_CFG_QTHRESH, align 8
  %194 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %192, i64 %193
  %195 = load %struct.nlattr*, %struct.nlattr** %194, align 8
  %196 = call i32 @nla_get_be32(%struct.nlattr* %195)
  store i32 %196, i32* %21, align 4
  %197 = load %struct.nfulnl_instance*, %struct.nfulnl_instance** %12, align 8
  %198 = icmp ne %struct.nfulnl_instance* %197, null
  br i1 %198, label %202, label %199

199:                                              ; preds = %191
  %200 = load i32, i32* @ENODEV, align 4
  %201 = sub nsw i32 0, %200
  store i32 %201, i32* %14, align 4
  br label %233

202:                                              ; preds = %191
  %203 = load %struct.nfulnl_instance*, %struct.nfulnl_instance** %12, align 8
  %204 = load i32, i32* %21, align 4
  %205 = call i32 @ntohl(i32 %204)
  %206 = call i32 @nfulnl_set_qthresh(%struct.nfulnl_instance* %203, i32 %205)
  br label %207

207:                                              ; preds = %202, %185
  %208 = load %struct.nlattr**, %struct.nlattr*** %9, align 8
  %209 = load i64, i64* @NFULA_CFG_FLAGS, align 8
  %210 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %208, i64 %209
  %211 = load %struct.nlattr*, %struct.nlattr** %210, align 8
  %212 = icmp ne %struct.nlattr* %211, null
  br i1 %212, label %213, label %229

213:                                              ; preds = %207
  %214 = load %struct.nlattr**, %struct.nlattr*** %9, align 8
  %215 = load i64, i64* @NFULA_CFG_FLAGS, align 8
  %216 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %214, i64 %215
  %217 = load %struct.nlattr*, %struct.nlattr** %216, align 8
  %218 = call i32 @nla_get_be16(%struct.nlattr* %217)
  store i32 %218, i32* %22, align 4
  %219 = load %struct.nfulnl_instance*, %struct.nfulnl_instance** %12, align 8
  %220 = icmp ne %struct.nfulnl_instance* %219, null
  br i1 %220, label %224, label %221

221:                                              ; preds = %213
  %222 = load i32, i32* @ENODEV, align 4
  %223 = sub nsw i32 0, %222
  store i32 %223, i32* %14, align 4
  br label %233

224:                                              ; preds = %213
  %225 = load %struct.nfulnl_instance*, %struct.nfulnl_instance** %12, align 8
  %226 = load i32, i32* %22, align 4
  %227 = call i32 @ntohs(i32 %226)
  %228 = call i32 @nfulnl_set_flags(%struct.nfulnl_instance* %225, i32 %227)
  br label %229

229:                                              ; preds = %224, %207
  br label %230

230:                                              ; preds = %229, %82, %69
  %231 = load %struct.nfulnl_instance*, %struct.nfulnl_instance** %12, align 8
  %232 = call i32 @instance_put(%struct.nfulnl_instance* %231)
  br label %233

233:                                              ; preds = %230, %221, %199, %177, %155, %128, %106, %103, %96
  %234 = load i32, i32* %14, align 4
  store i32 %234, i32* %5, align 4
  br label %235

235:                                              ; preds = %233, %50, %47
  %236 = load i32, i32* %5, align 4
  ret i32 %236
}

declare dso_local %struct.nfgenmsg* @NLMSG_DATA(%struct.nlmsghdr*) #1

declare dso_local i32 @ntohs(i32) #1

declare dso_local i8* @nla_data(%struct.nlattr*) #1

declare dso_local i32 @nf_log_bind_pf(i32, i32*) #1

declare dso_local i32 @nf_log_unbind_pf(i32) #1

declare dso_local %struct.nfulnl_instance* @instance_lookup_get(i32) #1

declare dso_local i64 @NETLINK_CB(%struct.sk_buff*) #1

declare dso_local %struct.nfulnl_instance* @instance_create(i32, i64) #1

declare dso_local i32 @IS_ERR(%struct.nfulnl_instance*) #1

declare dso_local i32 @PTR_ERR(%struct.nfulnl_instance*) #1

declare dso_local i32 @instance_destroy(%struct.nfulnl_instance*) #1

declare dso_local i32 @nfulnl_set_mode(%struct.nfulnl_instance*, i32, i32) #1

declare dso_local i32 @ntohl(i32) #1

declare dso_local i32 @nla_get_be32(%struct.nlattr*) #1

declare dso_local i32 @nfulnl_set_timeout(%struct.nfulnl_instance*, i32) #1

declare dso_local i32 @nfulnl_set_nlbufsiz(%struct.nfulnl_instance*, i32) #1

declare dso_local i32 @nfulnl_set_qthresh(%struct.nfulnl_instance*, i32) #1

declare dso_local i32 @nla_get_be16(%struct.nlattr*) #1

declare dso_local i32 @nfulnl_set_flags(%struct.nfulnl_instance*, i32) #1

declare dso_local i32 @instance_put(%struct.nfulnl_instance*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/core/extr_neighbour.c_neightbl_set.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/core/extr_neighbour.c_neightbl_set.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.neigh_table = type { i64, i32, i8*, i8*, i8*, i8*, i32, %struct.neigh_table* }
%struct.sk_buff = type { i32 }
%struct.nlmsghdr = type { i32 }
%struct.net = type { i32 }
%struct.ndtmsg = type { i64 }
%struct.neigh_parms = type { i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8* }
%struct.nlattr = type { i32 }

@NDTA_MAX = common dso_local global i32 0, align 4
@nl_neightbl_policy = common dso_local global i32 0, align 4
@NDTA_NAME = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@neigh_tbl_lock = common dso_local global i32 0, align 4
@neigh_tables = common dso_local global %struct.neigh_table* null, align 8
@ENOENT = common dso_local global i32 0, align 4
@NDTA_PARMS = common dso_local global i64 0, align 8
@NDTPA_MAX = common dso_local global i32 0, align 4
@nl_ntbl_parm_policy = common dso_local global i32 0, align 4
@NDTPA_IFINDEX = common dso_local global i64 0, align 8
@NDTA_THRESH1 = common dso_local global i64 0, align 8
@NDTA_THRESH2 = common dso_local global i64 0, align 8
@NDTA_THRESH3 = common dso_local global i64 0, align 8
@NDTA_GC_INTERVAL = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*, %struct.nlmsghdr*, i8*)* @neightbl_set to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @neightbl_set(%struct.sk_buff* %0, %struct.nlmsghdr* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.sk_buff*, align 8
  %6 = alloca %struct.nlmsghdr*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.net*, align 8
  %9 = alloca %struct.neigh_table*, align 8
  %10 = alloca %struct.ndtmsg*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  %14 = alloca i8*, align 8
  %15 = alloca i64, align 8
  %16 = alloca %struct.neigh_parms*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  store %struct.sk_buff* %0, %struct.sk_buff** %5, align 8
  store %struct.nlmsghdr* %1, %struct.nlmsghdr** %6, align 8
  store i8* %2, i8** %7, align 8
  %20 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %21 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = call %struct.net* @sock_net(i32 %22)
  store %struct.net* %23, %struct.net** %8, align 8
  %24 = load i32, i32* @NDTA_MAX, align 4
  %25 = add nsw i32 %24, 1
  %26 = zext i32 %25 to i64
  %27 = call i8* @llvm.stacksave()
  store i8* %27, i8** %11, align 8
  %28 = alloca %struct.nlattr*, i64 %26, align 16
  store i64 %26, i64* %12, align 8
  %29 = load %struct.nlmsghdr*, %struct.nlmsghdr** %6, align 8
  %30 = load i32, i32* @NDTA_MAX, align 4
  %31 = load i32, i32* @nl_neightbl_policy, align 4
  %32 = call i32 @nlmsg_parse(%struct.nlmsghdr* %29, i32 8, %struct.nlattr** %28, i32 %30, i32 %31)
  store i32 %32, i32* %13, align 4
  %33 = load i32, i32* %13, align 4
  %34 = icmp slt i32 %33, 0
  br i1 %34, label %35, label %36

35:                                               ; preds = %3
  br label %305

36:                                               ; preds = %3
  %37 = load i64, i64* @NDTA_NAME, align 8
  %38 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %28, i64 %37
  %39 = load %struct.nlattr*, %struct.nlattr** %38, align 8
  %40 = icmp eq %struct.nlattr* %39, null
  br i1 %40, label %41, label %44

41:                                               ; preds = %36
  %42 = load i32, i32* @EINVAL, align 4
  %43 = sub nsw i32 0, %42
  store i32 %43, i32* %13, align 4
  br label %305

44:                                               ; preds = %36
  %45 = load %struct.nlmsghdr*, %struct.nlmsghdr** %6, align 8
  %46 = call %struct.ndtmsg* @nlmsg_data(%struct.nlmsghdr* %45)
  store %struct.ndtmsg* %46, %struct.ndtmsg** %10, align 8
  %47 = call i32 @read_lock(i32* @neigh_tbl_lock)
  %48 = load %struct.neigh_table*, %struct.neigh_table** @neigh_tables, align 8
  store %struct.neigh_table* %48, %struct.neigh_table** %9, align 8
  br label %49

49:                                               ; preds = %77, %44
  %50 = load %struct.neigh_table*, %struct.neigh_table** %9, align 8
  %51 = icmp ne %struct.neigh_table* %50, null
  br i1 %51, label %52, label %81

52:                                               ; preds = %49
  %53 = load %struct.ndtmsg*, %struct.ndtmsg** %10, align 8
  %54 = getelementptr inbounds %struct.ndtmsg, %struct.ndtmsg* %53, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %66

57:                                               ; preds = %52
  %58 = load %struct.neigh_table*, %struct.neigh_table** %9, align 8
  %59 = getelementptr inbounds %struct.neigh_table, %struct.neigh_table* %58, i32 0, i32 0
  %60 = load i64, i64* %59, align 8
  %61 = load %struct.ndtmsg*, %struct.ndtmsg** %10, align 8
  %62 = getelementptr inbounds %struct.ndtmsg, %struct.ndtmsg* %61, i32 0, i32 0
  %63 = load i64, i64* %62, align 8
  %64 = icmp ne i64 %60, %63
  br i1 %64, label %65, label %66

65:                                               ; preds = %57
  br label %77

66:                                               ; preds = %57, %52
  %67 = load i64, i64* @NDTA_NAME, align 8
  %68 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %28, i64 %67
  %69 = load %struct.nlattr*, %struct.nlattr** %68, align 8
  %70 = load %struct.neigh_table*, %struct.neigh_table** %9, align 8
  %71 = getelementptr inbounds %struct.neigh_table, %struct.neigh_table* %70, i32 0, i32 6
  %72 = load i32, i32* %71, align 8
  %73 = call i64 @nla_strcmp(%struct.nlattr* %69, i32 %72)
  %74 = icmp eq i64 %73, 0
  br i1 %74, label %75, label %76

75:                                               ; preds = %66
  br label %81

76:                                               ; preds = %66
  br label %77

77:                                               ; preds = %76, %65
  %78 = load %struct.neigh_table*, %struct.neigh_table** %9, align 8
  %79 = getelementptr inbounds %struct.neigh_table, %struct.neigh_table* %78, i32 0, i32 7
  %80 = load %struct.neigh_table*, %struct.neigh_table** %79, align 8
  store %struct.neigh_table* %80, %struct.neigh_table** %9, align 8
  br label %49

81:                                               ; preds = %75, %49
  %82 = load %struct.neigh_table*, %struct.neigh_table** %9, align 8
  %83 = icmp eq %struct.neigh_table* %82, null
  br i1 %83, label %84, label %87

84:                                               ; preds = %81
  %85 = load i32, i32* @ENOENT, align 4
  %86 = sub nsw i32 0, %85
  store i32 %86, i32* %13, align 4
  br label %303

87:                                               ; preds = %81
  %88 = load %struct.neigh_table*, %struct.neigh_table** %9, align 8
  %89 = getelementptr inbounds %struct.neigh_table, %struct.neigh_table* %88, i32 0, i32 1
  %90 = call i32 @write_lock_bh(i32* %89)
  %91 = load i64, i64* @NDTA_PARMS, align 8
  %92 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %28, i64 %91
  %93 = load %struct.nlattr*, %struct.nlattr** %92, align 8
  %94 = icmp ne %struct.nlattr* %93, null
  br i1 %94, label %95, label %250

95:                                               ; preds = %87
  %96 = load i32, i32* @NDTPA_MAX, align 4
  %97 = add nsw i32 %96, 1
  %98 = zext i32 %97 to i64
  %99 = call i8* @llvm.stacksave()
  store i8* %99, i8** %14, align 8
  %100 = alloca %struct.nlattr*, i64 %98, align 16
  store i64 %98, i64* %15, align 8
  store i32 0, i32* %18, align 4
  %101 = load i32, i32* @NDTPA_MAX, align 4
  %102 = load i64, i64* @NDTA_PARMS, align 8
  %103 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %28, i64 %102
  %104 = load %struct.nlattr*, %struct.nlattr** %103, align 8
  %105 = load i32, i32* @nl_ntbl_parm_policy, align 4
  %106 = call i32 @nla_parse_nested(%struct.nlattr** %100, i32 %101, %struct.nlattr* %104, i32 %105)
  store i32 %106, i32* %13, align 4
  %107 = load i32, i32* %13, align 4
  %108 = icmp slt i32 %107, 0
  br i1 %108, label %109, label %110

109:                                              ; preds = %95
  store i32 7, i32* %19, align 4
  br label %246

110:                                              ; preds = %95
  %111 = load i64, i64* @NDTPA_IFINDEX, align 8
  %112 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %100, i64 %111
  %113 = load %struct.nlattr*, %struct.nlattr** %112, align 8
  %114 = icmp ne %struct.nlattr* %113, null
  br i1 %114, label %115, label %121

115:                                              ; preds = %110
  %116 = load i64, i64* @NDTPA_IFINDEX, align 8
  %117 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %100, i64 %116
  %118 = load %struct.nlattr*, %struct.nlattr** %117, align 8
  %119 = call i8* @nla_get_u32(%struct.nlattr* %118)
  %120 = ptrtoint i8* %119 to i32
  store i32 %120, i32* %18, align 4
  br label %121

121:                                              ; preds = %115, %110
  %122 = load %struct.neigh_table*, %struct.neigh_table** %9, align 8
  %123 = load %struct.net*, %struct.net** %8, align 8
  %124 = load i32, i32* %18, align 4
  %125 = call %struct.neigh_parms* @lookup_neigh_parms(%struct.neigh_table* %122, %struct.net* %123, i32 %124)
  store %struct.neigh_parms* %125, %struct.neigh_parms** %16, align 8
  %126 = load %struct.neigh_parms*, %struct.neigh_parms** %16, align 8
  %127 = icmp eq %struct.neigh_parms* %126, null
  br i1 %127, label %128, label %131

128:                                              ; preds = %121
  %129 = load i32, i32* @ENOENT, align 4
  %130 = sub nsw i32 0, %129
  store i32 %130, i32* %13, align 4
  store i32 7, i32* %19, align 4
  br label %246

131:                                              ; preds = %121
  store i32 1, i32* %17, align 4
  br label %132

132:                                              ; preds = %242, %131
  %133 = load i32, i32* %17, align 4
  %134 = load i32, i32* @NDTPA_MAX, align 4
  %135 = icmp sle i32 %133, %134
  br i1 %135, label %136, label %245

136:                                              ; preds = %132
  %137 = load i32, i32* %17, align 4
  %138 = sext i32 %137 to i64
  %139 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %100, i64 %138
  %140 = load %struct.nlattr*, %struct.nlattr** %139, align 8
  %141 = icmp eq %struct.nlattr* %140, null
  br i1 %141, label %142, label %143

142:                                              ; preds = %136
  br label %242

143:                                              ; preds = %136
  %144 = load i32, i32* %17, align 4
  switch i32 %144, label %241 [
    i32 130, label %145
    i32 131, label %153
    i32 138, label %161
    i32 128, label %169
    i32 133, label %177
    i32 137, label %185
    i32 135, label %193
    i32 136, label %201
    i32 129, label %209
    i32 139, label %217
    i32 132, label %225
    i32 134, label %233
  ]

145:                                              ; preds = %143
  %146 = load i32, i32* %17, align 4
  %147 = sext i32 %146 to i64
  %148 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %100, i64 %147
  %149 = load %struct.nlattr*, %struct.nlattr** %148, align 8
  %150 = call i8* @nla_get_u32(%struct.nlattr* %149)
  %151 = load %struct.neigh_parms*, %struct.neigh_parms** %16, align 8
  %152 = getelementptr inbounds %struct.neigh_parms, %struct.neigh_parms* %151, i32 0, i32 11
  store i8* %150, i8** %152, align 8
  br label %241

153:                                              ; preds = %143
  %154 = load i32, i32* %17, align 4
  %155 = sext i32 %154 to i64
  %156 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %100, i64 %155
  %157 = load %struct.nlattr*, %struct.nlattr** %156, align 8
  %158 = call i8* @nla_get_u32(%struct.nlattr* %157)
  %159 = load %struct.neigh_parms*, %struct.neigh_parms** %16, align 8
  %160 = getelementptr inbounds %struct.neigh_parms, %struct.neigh_parms* %159, i32 0, i32 10
  store i8* %158, i8** %160, align 8
  br label %241

161:                                              ; preds = %143
  %162 = load i32, i32* %17, align 4
  %163 = sext i32 %162 to i64
  %164 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %100, i64 %163
  %165 = load %struct.nlattr*, %struct.nlattr** %164, align 8
  %166 = call i8* @nla_get_u32(%struct.nlattr* %165)
  %167 = load %struct.neigh_parms*, %struct.neigh_parms** %16, align 8
  %168 = getelementptr inbounds %struct.neigh_parms, %struct.neigh_parms* %167, i32 0, i32 9
  store i8* %166, i8** %168, align 8
  br label %241

169:                                              ; preds = %143
  %170 = load i32, i32* %17, align 4
  %171 = sext i32 %170 to i64
  %172 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %100, i64 %171
  %173 = load %struct.nlattr*, %struct.nlattr** %172, align 8
  %174 = call i8* @nla_get_u32(%struct.nlattr* %173)
  %175 = load %struct.neigh_parms*, %struct.neigh_parms** %16, align 8
  %176 = getelementptr inbounds %struct.neigh_parms, %struct.neigh_parms* %175, i32 0, i32 8
  store i8* %174, i8** %176, align 8
  br label %241

177:                                              ; preds = %143
  %178 = load i32, i32* %17, align 4
  %179 = sext i32 %178 to i64
  %180 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %100, i64 %179
  %181 = load %struct.nlattr*, %struct.nlattr** %180, align 8
  %182 = call i8* @nla_get_u32(%struct.nlattr* %181)
  %183 = load %struct.neigh_parms*, %struct.neigh_parms** %16, align 8
  %184 = getelementptr inbounds %struct.neigh_parms, %struct.neigh_parms* %183, i32 0, i32 7
  store i8* %182, i8** %184, align 8
  br label %241

185:                                              ; preds = %143
  %186 = load i32, i32* %17, align 4
  %187 = sext i32 %186 to i64
  %188 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %100, i64 %187
  %189 = load %struct.nlattr*, %struct.nlattr** %188, align 8
  %190 = call i8* @nla_get_msecs(%struct.nlattr* %189)
  %191 = load %struct.neigh_parms*, %struct.neigh_parms** %16, align 8
  %192 = getelementptr inbounds %struct.neigh_parms, %struct.neigh_parms* %191, i32 0, i32 6
  store i8* %190, i8** %192, align 8
  br label %241

193:                                              ; preds = %143
  %194 = load i32, i32* %17, align 4
  %195 = sext i32 %194 to i64
  %196 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %100, i64 %195
  %197 = load %struct.nlattr*, %struct.nlattr** %196, align 8
  %198 = call i8* @nla_get_msecs(%struct.nlattr* %197)
  %199 = load %struct.neigh_parms*, %struct.neigh_parms** %16, align 8
  %200 = getelementptr inbounds %struct.neigh_parms, %struct.neigh_parms* %199, i32 0, i32 5
  store i8* %198, i8** %200, align 8
  br label %241

201:                                              ; preds = %143
  %202 = load i32, i32* %17, align 4
  %203 = sext i32 %202 to i64
  %204 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %100, i64 %203
  %205 = load %struct.nlattr*, %struct.nlattr** %204, align 8
  %206 = call i8* @nla_get_msecs(%struct.nlattr* %205)
  %207 = load %struct.neigh_parms*, %struct.neigh_parms** %16, align 8
  %208 = getelementptr inbounds %struct.neigh_parms, %struct.neigh_parms* %207, i32 0, i32 4
  store i8* %206, i8** %208, align 8
  br label %241

209:                                              ; preds = %143
  %210 = load i32, i32* %17, align 4
  %211 = sext i32 %210 to i64
  %212 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %100, i64 %211
  %213 = load %struct.nlattr*, %struct.nlattr** %212, align 8
  %214 = call i8* @nla_get_msecs(%struct.nlattr* %213)
  %215 = load %struct.neigh_parms*, %struct.neigh_parms** %16, align 8
  %216 = getelementptr inbounds %struct.neigh_parms, %struct.neigh_parms* %215, i32 0, i32 3
  store i8* %214, i8** %216, align 8
  br label %241

217:                                              ; preds = %143
  %218 = load i32, i32* %17, align 4
  %219 = sext i32 %218 to i64
  %220 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %100, i64 %219
  %221 = load %struct.nlattr*, %struct.nlattr** %220, align 8
  %222 = call i8* @nla_get_msecs(%struct.nlattr* %221)
  %223 = load %struct.neigh_parms*, %struct.neigh_parms** %16, align 8
  %224 = getelementptr inbounds %struct.neigh_parms, %struct.neigh_parms* %223, i32 0, i32 2
  store i8* %222, i8** %224, align 8
  br label %241

225:                                              ; preds = %143
  %226 = load i32, i32* %17, align 4
  %227 = sext i32 %226 to i64
  %228 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %100, i64 %227
  %229 = load %struct.nlattr*, %struct.nlattr** %228, align 8
  %230 = call i8* @nla_get_msecs(%struct.nlattr* %229)
  %231 = load %struct.neigh_parms*, %struct.neigh_parms** %16, align 8
  %232 = getelementptr inbounds %struct.neigh_parms, %struct.neigh_parms* %231, i32 0, i32 1
  store i8* %230, i8** %232, align 8
  br label %241

233:                                              ; preds = %143
  %234 = load i32, i32* %17, align 4
  %235 = sext i32 %234 to i64
  %236 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %100, i64 %235
  %237 = load %struct.nlattr*, %struct.nlattr** %236, align 8
  %238 = call i8* @nla_get_msecs(%struct.nlattr* %237)
  %239 = load %struct.neigh_parms*, %struct.neigh_parms** %16, align 8
  %240 = getelementptr inbounds %struct.neigh_parms, %struct.neigh_parms* %239, i32 0, i32 0
  store i8* %238, i8** %240, align 8
  br label %241

241:                                              ; preds = %143, %233, %225, %217, %209, %201, %193, %185, %177, %169, %161, %153, %145
  br label %242

242:                                              ; preds = %241, %142
  %243 = load i32, i32* %17, align 4
  %244 = add nsw i32 %243, 1
  store i32 %244, i32* %17, align 4
  br label %132

245:                                              ; preds = %132
  store i32 0, i32* %19, align 4
  br label %246

246:                                              ; preds = %128, %109, %245
  %247 = load i8*, i8** %14, align 8
  call void @llvm.stackrestore(i8* %247)
  %248 = load i32, i32* %19, align 4
  switch i32 %248, label %307 [
    i32 0, label %249
    i32 7, label %299
  ]

249:                                              ; preds = %246
  br label %250

250:                                              ; preds = %249, %87
  %251 = load i64, i64* @NDTA_THRESH1, align 8
  %252 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %28, i64 %251
  %253 = load %struct.nlattr*, %struct.nlattr** %252, align 8
  %254 = icmp ne %struct.nlattr* %253, null
  br i1 %254, label %255, label %262

255:                                              ; preds = %250
  %256 = load i64, i64* @NDTA_THRESH1, align 8
  %257 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %28, i64 %256
  %258 = load %struct.nlattr*, %struct.nlattr** %257, align 8
  %259 = call i8* @nla_get_u32(%struct.nlattr* %258)
  %260 = load %struct.neigh_table*, %struct.neigh_table** %9, align 8
  %261 = getelementptr inbounds %struct.neigh_table, %struct.neigh_table* %260, i32 0, i32 5
  store i8* %259, i8** %261, align 8
  br label %262

262:                                              ; preds = %255, %250
  %263 = load i64, i64* @NDTA_THRESH2, align 8
  %264 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %28, i64 %263
  %265 = load %struct.nlattr*, %struct.nlattr** %264, align 8
  %266 = icmp ne %struct.nlattr* %265, null
  br i1 %266, label %267, label %274

267:                                              ; preds = %262
  %268 = load i64, i64* @NDTA_THRESH2, align 8
  %269 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %28, i64 %268
  %270 = load %struct.nlattr*, %struct.nlattr** %269, align 8
  %271 = call i8* @nla_get_u32(%struct.nlattr* %270)
  %272 = load %struct.neigh_table*, %struct.neigh_table** %9, align 8
  %273 = getelementptr inbounds %struct.neigh_table, %struct.neigh_table* %272, i32 0, i32 4
  store i8* %271, i8** %273, align 8
  br label %274

274:                                              ; preds = %267, %262
  %275 = load i64, i64* @NDTA_THRESH3, align 8
  %276 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %28, i64 %275
  %277 = load %struct.nlattr*, %struct.nlattr** %276, align 8
  %278 = icmp ne %struct.nlattr* %277, null
  br i1 %278, label %279, label %286

279:                                              ; preds = %274
  %280 = load i64, i64* @NDTA_THRESH3, align 8
  %281 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %28, i64 %280
  %282 = load %struct.nlattr*, %struct.nlattr** %281, align 8
  %283 = call i8* @nla_get_u32(%struct.nlattr* %282)
  %284 = load %struct.neigh_table*, %struct.neigh_table** %9, align 8
  %285 = getelementptr inbounds %struct.neigh_table, %struct.neigh_table* %284, i32 0, i32 3
  store i8* %283, i8** %285, align 8
  br label %286

286:                                              ; preds = %279, %274
  %287 = load i64, i64* @NDTA_GC_INTERVAL, align 8
  %288 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %28, i64 %287
  %289 = load %struct.nlattr*, %struct.nlattr** %288, align 8
  %290 = icmp ne %struct.nlattr* %289, null
  br i1 %290, label %291, label %298

291:                                              ; preds = %286
  %292 = load i64, i64* @NDTA_GC_INTERVAL, align 8
  %293 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %28, i64 %292
  %294 = load %struct.nlattr*, %struct.nlattr** %293, align 8
  %295 = call i8* @nla_get_msecs(%struct.nlattr* %294)
  %296 = load %struct.neigh_table*, %struct.neigh_table** %9, align 8
  %297 = getelementptr inbounds %struct.neigh_table, %struct.neigh_table* %296, i32 0, i32 2
  store i8* %295, i8** %297, align 8
  br label %298

298:                                              ; preds = %291, %286
  store i32 0, i32* %13, align 4
  br label %299

299:                                              ; preds = %298, %246
  %300 = load %struct.neigh_table*, %struct.neigh_table** %9, align 8
  %301 = getelementptr inbounds %struct.neigh_table, %struct.neigh_table* %300, i32 0, i32 1
  %302 = call i32 @write_unlock_bh(i32* %301)
  br label %303

303:                                              ; preds = %299, %84
  %304 = call i32 @read_unlock(i32* @neigh_tbl_lock)
  br label %305

305:                                              ; preds = %303, %41, %35
  %306 = load i32, i32* %13, align 4
  store i32 %306, i32* %4, align 4
  store i32 1, i32* %19, align 4
  br label %307

307:                                              ; preds = %305, %246
  %308 = load i8*, i8** %11, align 8
  call void @llvm.stackrestore(i8* %308)
  %309 = load i32, i32* %4, align 4
  ret i32 %309
}

declare dso_local %struct.net* @sock_net(i32) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32 @nlmsg_parse(%struct.nlmsghdr*, i32, %struct.nlattr**, i32, i32) #1

declare dso_local %struct.ndtmsg* @nlmsg_data(%struct.nlmsghdr*) #1

declare dso_local i32 @read_lock(i32*) #1

declare dso_local i64 @nla_strcmp(%struct.nlattr*, i32) #1

declare dso_local i32 @write_lock_bh(i32*) #1

declare dso_local i32 @nla_parse_nested(%struct.nlattr**, i32, %struct.nlattr*, i32) #1

declare dso_local i8* @nla_get_u32(%struct.nlattr*) #1

declare dso_local %struct.neigh_parms* @lookup_neigh_parms(%struct.neigh_table*, %struct.net*, i32) #1

declare dso_local i8* @nla_get_msecs(%struct.nlattr*) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

declare dso_local i32 @write_unlock_bh(i32*) #1

declare dso_local i32 @read_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

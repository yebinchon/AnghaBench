; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/xfrm/extr_xfrm_input.c_xfrm_input.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/xfrm/extr_xfrm_input.c_xfrm_input.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i64, %struct.sec_path*, i32, i32 }
%struct.sec_path = type { i64, %struct.xfrm_state**, i32 }
%struct.xfrm_state = type { i32, %struct.xfrm_mode*, %struct.TYPE_17__*, %struct.TYPE_30__, %struct.TYPE_29__, %struct.TYPE_28__, %struct.TYPE_27__, %struct.TYPE_26__, %struct.TYPE_25__*, %struct.TYPE_23__*, %struct.TYPE_22__ }
%struct.xfrm_mode = type { %struct.TYPE_18__*, i64 (%struct.xfrm_state*, %struct.sk_buff.0*)* }
%struct.TYPE_18__ = type { i32 (%struct.sk_buff*, i32)* }
%struct.sk_buff.0 = type opaque
%struct.TYPE_17__ = type { i32, %struct.TYPE_16__* }
%struct.TYPE_16__ = type { i32 }
%struct.TYPE_30__ = type { i32 }
%struct.TYPE_29__ = type { i64 }
%struct.TYPE_28__ = type { i32, i32 }
%struct.TYPE_27__ = type { i64 }
%struct.TYPE_26__ = type { i32 }
%struct.TYPE_25__ = type { i32 (%struct.xfrm_state*, %struct.sk_buff*)*, i32 }
%struct.TYPE_23__ = type { i32 }
%struct.TYPE_22__ = type { i64 }
%struct.net = type { i32 }
%struct.TYPE_20__ = type { %struct.TYPE_24__ }
%struct.TYPE_24__ = type { i64 }
%struct.TYPE_19__ = type { i32, i64 }
%struct.TYPE_21__ = type { i32 }

@LINUX_MIB_XFRMINERROR = common dso_local global i32 0, align 4
@LINUX_MIB_XFRMINHDRERROR = common dso_local global i32 0, align 4
@XFRM_MAX_DEPTH = common dso_local global i64 0, align 8
@LINUX_MIB_XFRMINBUFFERERROR = common dso_local global i32 0, align 4
@LINUX_MIB_XFRMINNOSTATES = common dso_local global i32 0, align 4
@XFRM_STATE_VALID = common dso_local global i64 0, align 8
@LINUX_MIB_XFRMINSTATEINVALID = common dso_local global i32 0, align 4
@LINUX_MIB_XFRMINSTATEMISMATCH = common dso_local global i32 0, align 4
@LINUX_MIB_XFRMINSTATESEQERROR = common dso_local global i32 0, align 4
@LINUX_MIB_XFRMINSTATEEXPIRED = common dso_local global i32 0, align 4
@EINPROGRESS = common dso_local global i32 0, align 4
@EBADMSG = common dso_local global i32 0, align 4
@LINUX_MIB_XFRMINSTATEPROTOERROR = common dso_local global i32 0, align 4
@AF_UNSPEC = common dso_local global i64 0, align 8
@LINUX_MIB_XFRMINSTATEMODEERROR = common dso_local global i32 0, align 4
@XFRM_MODE_FLAG_TUNNEL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @xfrm_input(%struct.sk_buff* %0, i32 %1, i64 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.sk_buff*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.net*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  %13 = alloca %struct.xfrm_state*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca %struct.xfrm_mode*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca %struct.sec_path*, align 8
  store %struct.sk_buff* %0, %struct.sk_buff** %6, align 8
  store i32 %1, i32* %7, align 4
  store i64 %2, i64* %8, align 8
  store i32 %3, i32* %9, align 4
  %20 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %21 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %20, i32 0, i32 3
  %22 = load i32, i32* %21, align 4
  %23 = call %struct.net* @dev_net(i32 %22)
  store %struct.net* %23, %struct.net** %10, align 8
  store i32 0, i32* %17, align 4
  store i32 0, i32* %18, align 4
  %24 = load i32, i32* %9, align 4
  %25 = icmp slt i32 %24, 0
  br i1 %25, label %26, label %34

26:                                               ; preds = %4
  store i32 1, i32* %18, align 4
  %27 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %28 = call %struct.xfrm_state* @xfrm_input_state(%struct.sk_buff* %27)
  store %struct.xfrm_state* %28, %struct.xfrm_state** %13, align 8
  %29 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %30 = call %struct.TYPE_20__* @XFRM_SKB_CB(%struct.sk_buff* %29)
  %31 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  store i64 %33, i64* %12, align 8
  br label %226

34:                                               ; preds = %4
  %35 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %36 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %35, i32 0, i32 1
  %37 = load %struct.sec_path*, %struct.sec_path** %36, align 8
  %38 = icmp ne %struct.sec_path* %37, null
  br i1 %38, label %39, label %46

39:                                               ; preds = %34
  %40 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %41 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %40, i32 0, i32 1
  %42 = load %struct.sec_path*, %struct.sec_path** %41, align 8
  %43 = getelementptr inbounds %struct.sec_path, %struct.sec_path* %42, i32 0, i32 2
  %44 = call i32 @atomic_read(i32* %43)
  %45 = icmp ne i32 %44, 1
  br i1 %45, label %46, label %71

46:                                               ; preds = %39, %34
  %47 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %48 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %47, i32 0, i32 1
  %49 = load %struct.sec_path*, %struct.sec_path** %48, align 8
  %50 = call %struct.sec_path* @secpath_dup(%struct.sec_path* %49)
  store %struct.sec_path* %50, %struct.sec_path** %19, align 8
  %51 = load %struct.sec_path*, %struct.sec_path** %19, align 8
  %52 = icmp ne %struct.sec_path* %51, null
  br i1 %52, label %57, label %53

53:                                               ; preds = %46
  %54 = load %struct.net*, %struct.net** %10, align 8
  %55 = load i32, i32* @LINUX_MIB_XFRMINERROR, align 4
  %56 = call i32 @XFRM_INC_STATS(%struct.net* %54, i32 %55)
  br label %381

57:                                               ; preds = %46
  %58 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %59 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %58, i32 0, i32 1
  %60 = load %struct.sec_path*, %struct.sec_path** %59, align 8
  %61 = icmp ne %struct.sec_path* %60, null
  br i1 %61, label %62, label %67

62:                                               ; preds = %57
  %63 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %64 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %63, i32 0, i32 1
  %65 = load %struct.sec_path*, %struct.sec_path** %64, align 8
  %66 = call i32 @secpath_put(%struct.sec_path* %65)
  br label %67

67:                                               ; preds = %62, %57
  %68 = load %struct.sec_path*, %struct.sec_path** %19, align 8
  %69 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %70 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %69, i32 0, i32 1
  store %struct.sec_path* %68, %struct.sec_path** %70, align 8
  br label %71

71:                                               ; preds = %67, %39
  %72 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %73 = call i64 @skb_network_header(%struct.sk_buff* %72)
  %74 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %75 = call %struct.TYPE_19__* @XFRM_SPI_SKB_CB(%struct.sk_buff* %74)
  %76 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %75, i32 0, i32 1
  %77 = load i64, i64* %76, align 8
  %78 = add nsw i64 %73, %77
  %79 = inttoptr i64 %78 to i32*
  store i32* %79, i32** %14, align 8
  %80 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %81 = call %struct.TYPE_19__* @XFRM_SPI_SKB_CB(%struct.sk_buff* %80)
  %82 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 8
  store i32 %83, i32* %16, align 4
  store i64 0, i64* %12, align 8
  %84 = load i64, i64* %8, align 8
  %85 = icmp ne i64 %84, 0
  br i1 %85, label %95, label %86

86:                                               ; preds = %71
  %87 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %88 = load i32, i32* %7, align 4
  %89 = call i32 @xfrm_parse_spi(%struct.sk_buff* %87, i32 %88, i64* %8, i64* %12)
  store i32 %89, i32* %11, align 4
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %91, label %95

91:                                               ; preds = %86
  %92 = load %struct.net*, %struct.net** %10, align 8
  %93 = load i32, i32* @LINUX_MIB_XFRMINHDRERROR, align 4
  %94 = call i32 @XFRM_INC_STATS(%struct.net* %92, i32 %93)
  br label %381

95:                                               ; preds = %86, %71
  br label %96

96:                                               ; preds = %352, %95
  %97 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %98 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %97, i32 0, i32 1
  %99 = load %struct.sec_path*, %struct.sec_path** %98, align 8
  %100 = getelementptr inbounds %struct.sec_path, %struct.sec_path* %99, i32 0, i32 0
  %101 = load i64, i64* %100, align 8
  %102 = load i64, i64* @XFRM_MAX_DEPTH, align 8
  %103 = icmp eq i64 %101, %102
  br i1 %103, label %104, label %108

104:                                              ; preds = %96
  %105 = load %struct.net*, %struct.net** %10, align 8
  %106 = load i32, i32* @LINUX_MIB_XFRMINBUFFERERROR, align 4
  %107 = call i32 @XFRM_INC_STATS(%struct.net* %105, i32 %106)
  br label %381

108:                                              ; preds = %96
  %109 = load %struct.net*, %struct.net** %10, align 8
  %110 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %111 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %110, i32 0, i32 2
  %112 = load i32, i32* %111, align 8
  %113 = load i32*, i32** %14, align 8
  %114 = load i64, i64* %8, align 8
  %115 = load i32, i32* %7, align 4
  %116 = load i32, i32* %16, align 4
  %117 = call %struct.xfrm_state* @xfrm_state_lookup_with_mark(%struct.net* %109, i32 %112, i32* %113, i64 %114, i32 %115, i32 %116)
  store %struct.xfrm_state* %117, %struct.xfrm_state** %13, align 8
  %118 = load %struct.xfrm_state*, %struct.xfrm_state** %13, align 8
  %119 = icmp eq %struct.xfrm_state* %118, null
  br i1 %119, label %120, label %129

120:                                              ; preds = %108
  %121 = load %struct.net*, %struct.net** %10, align 8
  %122 = load i32, i32* @LINUX_MIB_XFRMINNOSTATES, align 4
  %123 = call i32 @XFRM_INC_STATS(%struct.net* %121, i32 %122)
  %124 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %125 = load i32, i32* %16, align 4
  %126 = load i64, i64* %8, align 8
  %127 = load i64, i64* %12, align 8
  %128 = call i32 @xfrm_audit_state_notfound(%struct.sk_buff* %124, i32 %125, i64 %126, i64 %127)
  br label %381

129:                                              ; preds = %108
  %130 = load %struct.xfrm_state*, %struct.xfrm_state** %13, align 8
  %131 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %132 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %131, i32 0, i32 1
  %133 = load %struct.sec_path*, %struct.sec_path** %132, align 8
  %134 = getelementptr inbounds %struct.sec_path, %struct.sec_path* %133, i32 0, i32 1
  %135 = load %struct.xfrm_state**, %struct.xfrm_state*** %134, align 8
  %136 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %137 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %136, i32 0, i32 1
  %138 = load %struct.sec_path*, %struct.sec_path** %137, align 8
  %139 = getelementptr inbounds %struct.sec_path, %struct.sec_path* %138, i32 0, i32 0
  %140 = load i64, i64* %139, align 8
  %141 = add nsw i64 %140, 1
  store i64 %141, i64* %139, align 8
  %142 = getelementptr inbounds %struct.xfrm_state*, %struct.xfrm_state** %135, i64 %140
  store %struct.xfrm_state* %130, %struct.xfrm_state** %142, align 8
  %143 = load %struct.xfrm_state*, %struct.xfrm_state** %13, align 8
  %144 = getelementptr inbounds %struct.xfrm_state, %struct.xfrm_state* %143, i32 0, i32 0
  %145 = call i32 @spin_lock(i32* %144)
  %146 = load %struct.xfrm_state*, %struct.xfrm_state** %13, align 8
  %147 = getelementptr inbounds %struct.xfrm_state, %struct.xfrm_state* %146, i32 0, i32 10
  %148 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %147, i32 0, i32 0
  %149 = load i64, i64* %148, align 8
  %150 = load i64, i64* @XFRM_STATE_VALID, align 8
  %151 = icmp ne i64 %149, %150
  %152 = zext i1 %151 to i32
  %153 = call i64 @unlikely(i32 %152)
  %154 = icmp ne i64 %153, 0
  br i1 %154, label %155, label %159

155:                                              ; preds = %129
  %156 = load %struct.net*, %struct.net** %10, align 8
  %157 = load i32, i32* @LINUX_MIB_XFRMINSTATEINVALID, align 4
  %158 = call i32 @XFRM_INC_STATS(%struct.net* %156, i32 %157)
  br label %377

159:                                              ; preds = %129
  %160 = load %struct.xfrm_state*, %struct.xfrm_state** %13, align 8
  %161 = getelementptr inbounds %struct.xfrm_state, %struct.xfrm_state* %160, i32 0, i32 9
  %162 = load %struct.TYPE_23__*, %struct.TYPE_23__** %161, align 8
  %163 = icmp ne %struct.TYPE_23__* %162, null
  br i1 %163, label %164, label %170

164:                                              ; preds = %159
  %165 = load %struct.xfrm_state*, %struct.xfrm_state** %13, align 8
  %166 = getelementptr inbounds %struct.xfrm_state, %struct.xfrm_state* %165, i32 0, i32 9
  %167 = load %struct.TYPE_23__*, %struct.TYPE_23__** %166, align 8
  %168 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %167, i32 0, i32 0
  %169 = load i32, i32* %168, align 4
  br label %171

170:                                              ; preds = %159
  br label %171

171:                                              ; preds = %170, %164
  %172 = phi i32 [ %169, %164 ], [ 0, %170 ]
  %173 = load i32, i32* %9, align 4
  %174 = icmp ne i32 %172, %173
  br i1 %174, label %175, label %179

175:                                              ; preds = %171
  %176 = load %struct.net*, %struct.net** %10, align 8
  %177 = load i32, i32* @LINUX_MIB_XFRMINSTATEMISMATCH, align 4
  %178 = call i32 @XFRM_INC_STATS(%struct.net* %176, i32 %177)
  br label %377

179:                                              ; preds = %171
  %180 = load %struct.xfrm_state*, %struct.xfrm_state** %13, align 8
  %181 = getelementptr inbounds %struct.xfrm_state, %struct.xfrm_state* %180, i32 0, i32 6
  %182 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %181, i32 0, i32 0
  %183 = load i64, i64* %182, align 8
  %184 = icmp ne i64 %183, 0
  br i1 %184, label %185, label %195

185:                                              ; preds = %179
  %186 = load %struct.xfrm_state*, %struct.xfrm_state** %13, align 8
  %187 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %188 = load i64, i64* %12, align 8
  %189 = call i64 @xfrm_replay_check(%struct.xfrm_state* %186, %struct.sk_buff* %187, i64 %188)
  %190 = icmp ne i64 %189, 0
  br i1 %190, label %191, label %195

191:                                              ; preds = %185
  %192 = load %struct.net*, %struct.net** %10, align 8
  %193 = load i32, i32* @LINUX_MIB_XFRMINSTATESEQERROR, align 4
  %194 = call i32 @XFRM_INC_STATS(%struct.net* %192, i32 %193)
  br label %377

195:                                              ; preds = %185, %179
  %196 = load %struct.xfrm_state*, %struct.xfrm_state** %13, align 8
  %197 = call i64 @xfrm_state_check_expire(%struct.xfrm_state* %196)
  %198 = icmp ne i64 %197, 0
  br i1 %198, label %199, label %203

199:                                              ; preds = %195
  %200 = load %struct.net*, %struct.net** %10, align 8
  %201 = load i32, i32* @LINUX_MIB_XFRMINSTATEEXPIRED, align 4
  %202 = call i32 @XFRM_INC_STATS(%struct.net* %200, i32 %201)
  br label %377

203:                                              ; preds = %195
  %204 = load %struct.xfrm_state*, %struct.xfrm_state** %13, align 8
  %205 = getelementptr inbounds %struct.xfrm_state, %struct.xfrm_state* %204, i32 0, i32 0
  %206 = call i32 @spin_unlock(i32* %205)
  %207 = load i64, i64* %12, align 8
  %208 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %209 = call %struct.TYPE_20__* @XFRM_SKB_CB(%struct.sk_buff* %208)
  %210 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %209, i32 0, i32 0
  %211 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %210, i32 0, i32 0
  store i64 %207, i64* %211, align 8
  %212 = load %struct.xfrm_state*, %struct.xfrm_state** %13, align 8
  %213 = getelementptr inbounds %struct.xfrm_state, %struct.xfrm_state* %212, i32 0, i32 8
  %214 = load %struct.TYPE_25__*, %struct.TYPE_25__** %213, align 8
  %215 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %214, i32 0, i32 0
  %216 = load i32 (%struct.xfrm_state*, %struct.sk_buff*)*, i32 (%struct.xfrm_state*, %struct.sk_buff*)** %215, align 8
  %217 = load %struct.xfrm_state*, %struct.xfrm_state** %13, align 8
  %218 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %219 = call i32 %216(%struct.xfrm_state* %217, %struct.sk_buff* %218)
  store i32 %219, i32* %7, align 4
  %220 = load i32, i32* %7, align 4
  %221 = load i32, i32* @EINPROGRESS, align 4
  %222 = sub nsw i32 0, %221
  %223 = icmp eq i32 %220, %222
  br i1 %223, label %224, label %225

224:                                              ; preds = %203
  store i32 0, i32* %5, align 4
  br label %384

225:                                              ; preds = %203
  br label %226

226:                                              ; preds = %225, %26
  %227 = load %struct.xfrm_state*, %struct.xfrm_state** %13, align 8
  %228 = getelementptr inbounds %struct.xfrm_state, %struct.xfrm_state* %227, i32 0, i32 0
  %229 = call i32 @spin_lock(i32* %228)
  %230 = load i32, i32* %7, align 4
  %231 = icmp sle i32 %230, 0
  br i1 %231, label %232, label %255

232:                                              ; preds = %226
  %233 = load i32, i32* %7, align 4
  %234 = load i32, i32* @EBADMSG, align 4
  %235 = sub nsw i32 0, %234
  %236 = icmp eq i32 %233, %235
  br i1 %236, label %237, label %251

237:                                              ; preds = %232
  %238 = load %struct.xfrm_state*, %struct.xfrm_state** %13, align 8
  %239 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %240 = load %struct.xfrm_state*, %struct.xfrm_state** %13, align 8
  %241 = getelementptr inbounds %struct.xfrm_state, %struct.xfrm_state* %240, i32 0, i32 8
  %242 = load %struct.TYPE_25__*, %struct.TYPE_25__** %241, align 8
  %243 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %242, i32 0, i32 1
  %244 = load i32, i32* %243, align 8
  %245 = call i32 @xfrm_audit_state_icvfail(%struct.xfrm_state* %238, %struct.sk_buff* %239, i32 %244)
  %246 = load %struct.xfrm_state*, %struct.xfrm_state** %13, align 8
  %247 = getelementptr inbounds %struct.xfrm_state, %struct.xfrm_state* %246, i32 0, i32 7
  %248 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %247, i32 0, i32 0
  %249 = load i32, i32* %248, align 8
  %250 = add nsw i32 %249, 1
  store i32 %250, i32* %248, align 8
  br label %251

251:                                              ; preds = %237, %232
  %252 = load %struct.net*, %struct.net** %10, align 8
  %253 = load i32, i32* @LINUX_MIB_XFRMINSTATEPROTOERROR, align 4
  %254 = call i32 @XFRM_INC_STATS(%struct.net* %252, i32 %253)
  br label %377

255:                                              ; preds = %226
  store i32 0, i32* %9, align 4
  %256 = load %struct.xfrm_state*, %struct.xfrm_state** %13, align 8
  %257 = getelementptr inbounds %struct.xfrm_state, %struct.xfrm_state* %256, i32 0, i32 6
  %258 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %257, i32 0, i32 0
  %259 = load i64, i64* %258, align 8
  %260 = icmp ne i64 %259, 0
  br i1 %260, label %261, label %265

261:                                              ; preds = %255
  %262 = load %struct.xfrm_state*, %struct.xfrm_state** %13, align 8
  %263 = load i64, i64* %12, align 8
  %264 = call i32 @xfrm_replay_advance(%struct.xfrm_state* %262, i64 %263)
  br label %265

265:                                              ; preds = %261, %255
  %266 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %267 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %266, i32 0, i32 0
  %268 = load i64, i64* %267, align 8
  %269 = load %struct.xfrm_state*, %struct.xfrm_state** %13, align 8
  %270 = getelementptr inbounds %struct.xfrm_state, %struct.xfrm_state* %269, i32 0, i32 5
  %271 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %270, i32 0, i32 1
  %272 = load i32, i32* %271, align 4
  %273 = sext i32 %272 to i64
  %274 = add nsw i64 %273, %268
  %275 = trunc i64 %274 to i32
  store i32 %275, i32* %271, align 4
  %276 = load %struct.xfrm_state*, %struct.xfrm_state** %13, align 8
  %277 = getelementptr inbounds %struct.xfrm_state, %struct.xfrm_state* %276, i32 0, i32 5
  %278 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %277, i32 0, i32 0
  %279 = load i32, i32* %278, align 8
  %280 = add nsw i32 %279, 1
  store i32 %280, i32* %278, align 8
  %281 = load %struct.xfrm_state*, %struct.xfrm_state** %13, align 8
  %282 = getelementptr inbounds %struct.xfrm_state, %struct.xfrm_state* %281, i32 0, i32 0
  %283 = call i32 @spin_unlock(i32* %282)
  %284 = load i32, i32* %7, align 4
  %285 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %286 = call %struct.TYPE_21__* @XFRM_MODE_SKB_CB(%struct.sk_buff* %285)
  %287 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %286, i32 0, i32 0
  store i32 %284, i32* %287, align 4
  %288 = load %struct.xfrm_state*, %struct.xfrm_state** %13, align 8
  %289 = getelementptr inbounds %struct.xfrm_state, %struct.xfrm_state* %288, i32 0, i32 1
  %290 = load %struct.xfrm_mode*, %struct.xfrm_mode** %289, align 8
  store %struct.xfrm_mode* %290, %struct.xfrm_mode** %15, align 8
  %291 = load %struct.xfrm_state*, %struct.xfrm_state** %13, align 8
  %292 = getelementptr inbounds %struct.xfrm_state, %struct.xfrm_state* %291, i32 0, i32 4
  %293 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %292, i32 0, i32 0
  %294 = load i64, i64* %293, align 8
  %295 = load i64, i64* @AF_UNSPEC, align 8
  %296 = icmp eq i64 %294, %295
  br i1 %296, label %297, label %308

297:                                              ; preds = %265
  %298 = load %struct.xfrm_state*, %struct.xfrm_state** %13, align 8
  %299 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %300 = call %struct.TYPE_21__* @XFRM_MODE_SKB_CB(%struct.sk_buff* %299)
  %301 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %300, i32 0, i32 0
  %302 = load i32, i32* %301, align 4
  %303 = call %struct.xfrm_mode* @xfrm_ip2inner_mode(%struct.xfrm_state* %298, i32 %302)
  store %struct.xfrm_mode* %303, %struct.xfrm_mode** %15, align 8
  %304 = load %struct.xfrm_mode*, %struct.xfrm_mode** %15, align 8
  %305 = icmp eq %struct.xfrm_mode* %304, null
  br i1 %305, label %306, label %307

306:                                              ; preds = %297
  br label %381

307:                                              ; preds = %297
  br label %308

308:                                              ; preds = %307, %265
  %309 = load %struct.xfrm_mode*, %struct.xfrm_mode** %15, align 8
  %310 = getelementptr inbounds %struct.xfrm_mode, %struct.xfrm_mode* %309, i32 0, i32 1
  %311 = load i64 (%struct.xfrm_state*, %struct.sk_buff.0*)*, i64 (%struct.xfrm_state*, %struct.sk_buff.0*)** %310, align 8
  %312 = load %struct.xfrm_state*, %struct.xfrm_state** %13, align 8
  %313 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %314 = bitcast %struct.sk_buff* %313 to %struct.sk_buff.0*
  %315 = call i64 %311(%struct.xfrm_state* %312, %struct.sk_buff.0* %314)
  %316 = icmp ne i64 %315, 0
  br i1 %316, label %317, label %321

317:                                              ; preds = %308
  %318 = load %struct.net*, %struct.net** %10, align 8
  %319 = load i32, i32* @LINUX_MIB_XFRMINSTATEMODEERROR, align 4
  %320 = call i32 @XFRM_INC_STATS(%struct.net* %318, i32 %319)
  br label %381

321:                                              ; preds = %308
  %322 = load %struct.xfrm_state*, %struct.xfrm_state** %13, align 8
  %323 = getelementptr inbounds %struct.xfrm_state, %struct.xfrm_state* %322, i32 0, i32 2
  %324 = load %struct.TYPE_17__*, %struct.TYPE_17__** %323, align 8
  %325 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %324, i32 0, i32 0
  %326 = load i32, i32* %325, align 8
  %327 = load i32, i32* @XFRM_MODE_FLAG_TUNNEL, align 4
  %328 = and i32 %326, %327
  %329 = icmp ne i32 %328, 0
  br i1 %329, label %330, label %331

330:                                              ; preds = %321
  store i32 1, i32* %17, align 4
  br label %356

331:                                              ; preds = %321
  %332 = load %struct.xfrm_state*, %struct.xfrm_state** %13, align 8
  %333 = getelementptr inbounds %struct.xfrm_state, %struct.xfrm_state* %332, i32 0, i32 3
  %334 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %333, i32 0, i32 0
  store i32* %334, i32** %14, align 8
  %335 = load %struct.xfrm_state*, %struct.xfrm_state** %13, align 8
  %336 = getelementptr inbounds %struct.xfrm_state, %struct.xfrm_state* %335, i32 0, i32 2
  %337 = load %struct.TYPE_17__*, %struct.TYPE_17__** %336, align 8
  %338 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %337, i32 0, i32 1
  %339 = load %struct.TYPE_16__*, %struct.TYPE_16__** %338, align 8
  %340 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %339, i32 0, i32 0
  %341 = load i32, i32* %340, align 4
  store i32 %341, i32* %16, align 4
  %342 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %343 = load i32, i32* %7, align 4
  %344 = call i32 @xfrm_parse_spi(%struct.sk_buff* %342, i32 %343, i64* %8, i64* %12)
  store i32 %344, i32* %11, align 4
  %345 = load i32, i32* %11, align 4
  %346 = icmp slt i32 %345, 0
  br i1 %346, label %347, label %351

347:                                              ; preds = %331
  %348 = load %struct.net*, %struct.net** %10, align 8
  %349 = load i32, i32* @LINUX_MIB_XFRMINHDRERROR, align 4
  %350 = call i32 @XFRM_INC_STATS(%struct.net* %348, i32 %349)
  br label %381

351:                                              ; preds = %331
  br label %352

352:                                              ; preds = %351
  %353 = load i32, i32* %11, align 4
  %354 = icmp ne i32 %353, 0
  %355 = xor i1 %354, true
  br i1 %355, label %96, label %356

356:                                              ; preds = %352, %330
  %357 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %358 = call i32 @nf_reset(%struct.sk_buff* %357)
  %359 = load i32, i32* %17, align 4
  %360 = icmp ne i32 %359, 0
  br i1 %360, label %361, label %366

361:                                              ; preds = %356
  %362 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %363 = call i32 @skb_dst_drop(%struct.sk_buff* %362)
  %364 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %365 = call i32 @netif_rx(%struct.sk_buff* %364)
  store i32 0, i32* %5, align 4
  br label %384

366:                                              ; preds = %356
  %367 = load %struct.xfrm_state*, %struct.xfrm_state** %13, align 8
  %368 = getelementptr inbounds %struct.xfrm_state, %struct.xfrm_state* %367, i32 0, i32 1
  %369 = load %struct.xfrm_mode*, %struct.xfrm_mode** %368, align 8
  %370 = getelementptr inbounds %struct.xfrm_mode, %struct.xfrm_mode* %369, i32 0, i32 0
  %371 = load %struct.TYPE_18__*, %struct.TYPE_18__** %370, align 8
  %372 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %371, i32 0, i32 0
  %373 = load i32 (%struct.sk_buff*, i32)*, i32 (%struct.sk_buff*, i32)** %372, align 8
  %374 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %375 = load i32, i32* %18, align 4
  %376 = call i32 %373(%struct.sk_buff* %374, i32 %375)
  store i32 %376, i32* %5, align 4
  br label %384

377:                                              ; preds = %251, %199, %191, %175, %155
  %378 = load %struct.xfrm_state*, %struct.xfrm_state** %13, align 8
  %379 = getelementptr inbounds %struct.xfrm_state, %struct.xfrm_state* %378, i32 0, i32 0
  %380 = call i32 @spin_unlock(i32* %379)
  br label %381

381:                                              ; preds = %377, %347, %317, %306, %120, %104, %91, %53
  %382 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %383 = call i32 @kfree_skb(%struct.sk_buff* %382)
  store i32 0, i32* %5, align 4
  br label %384

384:                                              ; preds = %381, %366, %361, %224
  %385 = load i32, i32* %5, align 4
  ret i32 %385
}

declare dso_local %struct.net* @dev_net(i32) #1

declare dso_local %struct.xfrm_state* @xfrm_input_state(%struct.sk_buff*) #1

declare dso_local %struct.TYPE_20__* @XFRM_SKB_CB(%struct.sk_buff*) #1

declare dso_local i32 @atomic_read(i32*) #1

declare dso_local %struct.sec_path* @secpath_dup(%struct.sec_path*) #1

declare dso_local i32 @XFRM_INC_STATS(%struct.net*, i32) #1

declare dso_local i32 @secpath_put(%struct.sec_path*) #1

declare dso_local i64 @skb_network_header(%struct.sk_buff*) #1

declare dso_local %struct.TYPE_19__* @XFRM_SPI_SKB_CB(%struct.sk_buff*) #1

declare dso_local i32 @xfrm_parse_spi(%struct.sk_buff*, i32, i64*, i64*) #1

declare dso_local %struct.xfrm_state* @xfrm_state_lookup_with_mark(%struct.net*, i32, i32*, i64, i32, i32) #1

declare dso_local i32 @xfrm_audit_state_notfound(%struct.sk_buff*, i32, i64, i64) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i64 @xfrm_replay_check(%struct.xfrm_state*, %struct.sk_buff*, i64) #1

declare dso_local i64 @xfrm_state_check_expire(%struct.xfrm_state*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @xfrm_audit_state_icvfail(%struct.xfrm_state*, %struct.sk_buff*, i32) #1

declare dso_local i32 @xfrm_replay_advance(%struct.xfrm_state*, i64) #1

declare dso_local %struct.TYPE_21__* @XFRM_MODE_SKB_CB(%struct.sk_buff*) #1

declare dso_local %struct.xfrm_mode* @xfrm_ip2inner_mode(%struct.xfrm_state*, i32) #1

declare dso_local i32 @nf_reset(%struct.sk_buff*) #1

declare dso_local i32 @skb_dst_drop(%struct.sk_buff*) #1

declare dso_local i32 @netif_rx(%struct.sk_buff*) #1

declare dso_local i32 @kfree_skb(%struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

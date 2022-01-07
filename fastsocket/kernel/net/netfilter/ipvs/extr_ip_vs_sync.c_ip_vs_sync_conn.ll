; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/netfilter/ipvs/extr_ip_vs_sync.c_ip_vs_sync_conn.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/netfilter/ipvs/extr_ip_vs_sync.c_ip_vs_sync_conn.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_16__ = type { i64, i64, %struct.ip_vs_sync_mesg* }
%struct.ip_vs_sync_mesg = type { i32, i32 }
%struct.ip_vs_conn = type { i32, i32, i64, i32, i32, i32, i32, %struct.ip_vs_conn*, %struct.TYPE_10__*, i32, i32, i32, %struct.TYPE_15__, %struct.TYPE_13__, %struct.TYPE_12__, i32, i32, i32, i32, i32 }
%struct.TYPE_10__ = type { i32 }
%struct.TYPE_15__ = type { i32, i32 }
%struct.TYPE_13__ = type { i32, i32 }
%struct.TYPE_12__ = type { i32, i32 }
%union.ip_vs_sync_conn = type { %struct.TYPE_14__ }
%struct.TYPE_14__ = type { i32, i32, i32, i8*, i8*, i32, i32, i32, i32, i8*, i8*, i8*, i32 }
%struct.ip_vs_seq = type { i32 }

@sysctl_ip_vs_sync_ver = common dso_local global i64 0, align 8
@IP_VS_CONN_F_ONE_PACKET = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [34 x i8] c"SYNC, connection pe_data invalid\0A\00", align 1
@IP_VS_PENAME_MAXLEN = common dso_local global i32 0, align 4
@curr_sb_lock = common dso_local global i32 0, align 4
@IP_VS_CONN_F_SEQ_MASK = common dso_local global i32 0, align 4
@curr_sb = common dso_local global %struct.TYPE_16__* null, align 8
@.str.1 = private unnamed_addr constant [32 x i8] c"ip_vs_sync_buff_create failed.\0A\00", align 1
@AF_INET6 = common dso_local global i64 0, align 8
@STYPE_F_INET6 = common dso_local global i32 0, align 4
@SVER_MASK = common dso_local global i32 0, align 4
@IP_VS_CONN_F_HASHED = common dso_local global i32 0, align 4
@HZ = common dso_local global i32 0, align 4
@IPVS_OPT_SEQ_DATA = common dso_local global i32 0, align 4
@IPVS_OPT_PE_DATA = common dso_local global i32 0, align 4
@IPVS_OPT_PE_NAME = common dso_local global i32 0, align 4
@IP_VS_CONN_F_TEMPLATE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ip_vs_sync_conn(%struct.ip_vs_conn* %0, i32 %1) #0 {
  %3 = alloca %struct.ip_vs_conn*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.ip_vs_sync_mesg*, align 8
  %6 = alloca %union.ip_vs_sync_conn*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.ip_vs_conn* %0, %struct.ip_vs_conn** %3, align 8
  store i32 %1, i32* %4, align 4
  %11 = load i64, i64* @sysctl_ip_vs_sync_ver, align 8
  %12 = icmp eq i64 %11, 0
  br i1 %12, label %13, label %17

13:                                               ; preds = %2
  %14 = load %struct.ip_vs_conn*, %struct.ip_vs_conn** %3, align 8
  %15 = load i32, i32* %4, align 4
  %16 = call i32 @ip_vs_sync_conn_v0(%struct.ip_vs_conn* %14, i32 %15)
  br label %368

17:                                               ; preds = %2
  %18 = load %struct.ip_vs_conn*, %struct.ip_vs_conn** %3, align 8
  %19 = getelementptr inbounds %struct.ip_vs_conn, %struct.ip_vs_conn* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = load i32, i32* @IP_VS_CONN_F_ONE_PACKET, align 4
  %22 = and i32 %20, %21
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %25

24:                                               ; preds = %17
  br label %347

25:                                               ; preds = %17
  br label %26

26:                                               ; preds = %367, %25
  %27 = load %struct.ip_vs_conn*, %struct.ip_vs_conn** %3, align 8
  %28 = load i32, i32* %4, align 4
  %29 = call i32 @ip_vs_sync_conn_needed(%struct.ip_vs_conn* %27, i32 %28)
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %32, label %31

31:                                               ; preds = %26
  br label %347

32:                                               ; preds = %26
  store i32 0, i32* %9, align 4
  %33 = load %struct.ip_vs_conn*, %struct.ip_vs_conn** %3, align 8
  %34 = getelementptr inbounds %struct.ip_vs_conn, %struct.ip_vs_conn* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %57

37:                                               ; preds = %32
  %38 = load %struct.ip_vs_conn*, %struct.ip_vs_conn** %3, align 8
  %39 = getelementptr inbounds %struct.ip_vs_conn, %struct.ip_vs_conn* %38, i32 0, i32 9
  %40 = load i32, i32* %39, align 8
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %47

42:                                               ; preds = %37
  %43 = load %struct.ip_vs_conn*, %struct.ip_vs_conn** %3, align 8
  %44 = getelementptr inbounds %struct.ip_vs_conn, %struct.ip_vs_conn* %43, i32 0, i32 19
  %45 = load i32, i32* %44, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %49, label %47

47:                                               ; preds = %42, %37
  %48 = call i32 @IP_VS_ERR_RL(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0))
  br label %368

49:                                               ; preds = %42
  %50 = load %struct.ip_vs_conn*, %struct.ip_vs_conn** %3, align 8
  %51 = getelementptr inbounds %struct.ip_vs_conn, %struct.ip_vs_conn* %50, i32 0, i32 8
  %52 = load %struct.TYPE_10__*, %struct.TYPE_10__** %51, align 8
  %53 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = load i32, i32* @IP_VS_PENAME_MAXLEN, align 4
  %56 = call i32 @strnlen(i32 %54, i32 %55)
  store i32 %56, i32* %9, align 4
  br label %57

57:                                               ; preds = %49, %32
  %58 = call i32 @spin_lock(i32* @curr_sb_lock)
  store i32 4, i32* %8, align 4
  %59 = load %struct.ip_vs_conn*, %struct.ip_vs_conn** %3, align 8
  %60 = getelementptr inbounds %struct.ip_vs_conn, %struct.ip_vs_conn* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 8
  %62 = load i32, i32* @IP_VS_CONN_F_SEQ_MASK, align 4
  %63 = and i32 %61, %62
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %70

65:                                               ; preds = %57
  %66 = load i32, i32* %8, align 4
  %67 = zext i32 %66 to i64
  %68 = add i64 %67, 6
  %69 = trunc i64 %68 to i32
  store i32 %69, i32* %8, align 4
  br label %70

70:                                               ; preds = %65, %57
  %71 = load %struct.ip_vs_conn*, %struct.ip_vs_conn** %3, align 8
  %72 = getelementptr inbounds %struct.ip_vs_conn, %struct.ip_vs_conn* %71, i32 0, i32 1
  %73 = load i32, i32* %72, align 4
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %75, label %82

75:                                               ; preds = %70
  %76 = load %struct.ip_vs_conn*, %struct.ip_vs_conn** %3, align 8
  %77 = getelementptr inbounds %struct.ip_vs_conn, %struct.ip_vs_conn* %76, i32 0, i32 1
  %78 = load i32, i32* %77, align 4
  %79 = add nsw i32 %78, 2
  %80 = load i32, i32* %8, align 4
  %81 = add i32 %80, %79
  store i32 %81, i32* %8, align 4
  br label %82

82:                                               ; preds = %75, %70
  %83 = load i32, i32* %9, align 4
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %85, label %90

85:                                               ; preds = %82
  %86 = load i32, i32* %9, align 4
  %87 = add i32 %86, 2
  %88 = load i32, i32* %8, align 4
  %89 = add i32 %88, %87
  store i32 %89, i32* %8, align 4
  br label %90

90:                                               ; preds = %85, %82
  store i32 0, i32* %10, align 4
  %91 = load %struct.TYPE_16__*, %struct.TYPE_16__** @curr_sb, align 8
  %92 = icmp ne %struct.TYPE_16__* %91, null
  br i1 %92, label %93, label %117

93:                                               ; preds = %90
  %94 = load %struct.TYPE_16__*, %struct.TYPE_16__** @curr_sb, align 8
  %95 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %94, i32 0, i32 0
  %96 = load i64, i64* %95, align 8
  %97 = sub i64 4, %96
  %98 = and i64 %97, 3
  %99 = trunc i64 %98 to i32
  store i32 %99, i32* %10, align 4
  %100 = load %struct.TYPE_16__*, %struct.TYPE_16__** @curr_sb, align 8
  %101 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %100, i32 0, i32 0
  %102 = load i64, i64* %101, align 8
  %103 = load i32, i32* %8, align 4
  %104 = zext i32 %103 to i64
  %105 = add nsw i64 %102, %104
  %106 = load i32, i32* %10, align 4
  %107 = zext i32 %106 to i64
  %108 = add nsw i64 %105, %107
  %109 = load %struct.TYPE_16__*, %struct.TYPE_16__** @curr_sb, align 8
  %110 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %109, i32 0, i32 1
  %111 = load i64, i64* %110, align 8
  %112 = icmp sgt i64 %108, %111
  br i1 %112, label %113, label %116

113:                                              ; preds = %93
  %114 = load %struct.TYPE_16__*, %struct.TYPE_16__** @curr_sb, align 8
  %115 = call i32 @sb_queue_tail(%struct.TYPE_16__* %114)
  store %struct.TYPE_16__* null, %struct.TYPE_16__** @curr_sb, align 8
  store i32 0, i32* %10, align 4
  br label %116

116:                                              ; preds = %113, %93
  br label %117

117:                                              ; preds = %116, %90
  %118 = load %struct.TYPE_16__*, %struct.TYPE_16__** @curr_sb, align 8
  %119 = icmp ne %struct.TYPE_16__* %118, null
  br i1 %119, label %127, label %120

120:                                              ; preds = %117
  %121 = call %struct.TYPE_16__* (...) @ip_vs_sync_buff_create()
  store %struct.TYPE_16__* %121, %struct.TYPE_16__** @curr_sb, align 8
  %122 = icmp ne %struct.TYPE_16__* %121, null
  br i1 %122, label %126, label %123

123:                                              ; preds = %120
  %124 = call i32 @spin_unlock(i32* @curr_sb_lock)
  %125 = call i32 @pr_err(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0))
  br label %368

126:                                              ; preds = %120
  br label %127

127:                                              ; preds = %126, %117
  %128 = load %struct.TYPE_16__*, %struct.TYPE_16__** @curr_sb, align 8
  %129 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %128, i32 0, i32 2
  %130 = load %struct.ip_vs_sync_mesg*, %struct.ip_vs_sync_mesg** %129, align 8
  store %struct.ip_vs_sync_mesg* %130, %struct.ip_vs_sync_mesg** %5, align 8
  %131 = load %struct.TYPE_16__*, %struct.TYPE_16__** @curr_sb, align 8
  %132 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %131, i32 0, i32 0
  %133 = load i64, i64* %132, align 8
  %134 = inttoptr i64 %133 to i32*
  store i32* %134, i32** %7, align 8
  %135 = load i32, i32* %10, align 4
  %136 = load i32, i32* %8, align 4
  %137 = add i32 %135, %136
  %138 = zext i32 %137 to i64
  %139 = load %struct.TYPE_16__*, %struct.TYPE_16__** @curr_sb, align 8
  %140 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %139, i32 0, i32 0
  %141 = load i64, i64* %140, align 8
  %142 = add nsw i64 %141, %138
  store i64 %142, i64* %140, align 8
  %143 = load i32, i32* %10, align 4
  %144 = load i32, i32* %8, align 4
  %145 = add i32 %143, %144
  %146 = load %struct.ip_vs_sync_mesg*, %struct.ip_vs_sync_mesg** %5, align 8
  %147 = getelementptr inbounds %struct.ip_vs_sync_mesg, %struct.ip_vs_sync_mesg* %146, i32 0, i32 0
  %148 = load i32, i32* %147, align 4
  %149 = add i32 %148, %145
  store i32 %149, i32* %147, align 4
  br label %150

150:                                              ; preds = %154, %127
  %151 = load i32, i32* %10, align 4
  %152 = add i32 %151, -1
  store i32 %152, i32* %10, align 4
  %153 = icmp ne i32 %151, 0
  br i1 %153, label %154, label %157

154:                                              ; preds = %150
  %155 = load i32*, i32** %7, align 8
  %156 = getelementptr inbounds i32, i32* %155, i32 1
  store i32* %156, i32** %7, align 8
  store i32 0, i32* %155, align 4
  br label %150

157:                                              ; preds = %150
  %158 = load i32*, i32** %7, align 8
  %159 = bitcast i32* %158 to %union.ip_vs_sync_conn*
  store %union.ip_vs_sync_conn* %159, %union.ip_vs_sync_conn** %6, align 8
  %160 = load %struct.ip_vs_conn*, %struct.ip_vs_conn** %3, align 8
  %161 = getelementptr inbounds %struct.ip_vs_conn, %struct.ip_vs_conn* %160, i32 0, i32 2
  %162 = load i64, i64* %161, align 8
  %163 = load i64, i64* @AF_INET6, align 8
  %164 = icmp eq i64 %162, %163
  br i1 %164, label %165, label %167

165:                                              ; preds = %157
  %166 = load i32, i32* @STYPE_F_INET6, align 4
  br label %168

167:                                              ; preds = %157
  br label %168

168:                                              ; preds = %167, %165
  %169 = phi i32 [ %166, %165 ], [ 0, %167 ]
  %170 = load %union.ip_vs_sync_conn*, %union.ip_vs_sync_conn** %6, align 8
  %171 = bitcast %union.ip_vs_sync_conn* %170 to %struct.TYPE_14__*
  %172 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %171, i32 0, i32 12
  store i32 %169, i32* %172, align 8
  %173 = load i32, i32* %8, align 4
  %174 = load i32, i32* @SVER_MASK, align 4
  %175 = and i32 %173, %174
  %176 = call i8* @htons(i32 %175)
  %177 = load %union.ip_vs_sync_conn*, %union.ip_vs_sync_conn** %6, align 8
  %178 = bitcast %union.ip_vs_sync_conn* %177 to %struct.TYPE_14__*
  %179 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %178, i32 0, i32 11
  store i8* %176, i8** %179, align 8
  %180 = load %struct.ip_vs_conn*, %struct.ip_vs_conn** %3, align 8
  %181 = getelementptr inbounds %struct.ip_vs_conn, %struct.ip_vs_conn* %180, i32 0, i32 0
  %182 = load i32, i32* %181, align 8
  %183 = load i32, i32* @IP_VS_CONN_F_HASHED, align 4
  %184 = xor i32 %183, -1
  %185 = and i32 %182, %184
  %186 = call i8* @htonl(i32 %185)
  %187 = load %union.ip_vs_sync_conn*, %union.ip_vs_sync_conn** %6, align 8
  %188 = bitcast %union.ip_vs_sync_conn* %187 to %struct.TYPE_14__*
  %189 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %188, i32 0, i32 10
  store i8* %186, i8** %189, align 8
  %190 = load %struct.ip_vs_conn*, %struct.ip_vs_conn** %3, align 8
  %191 = getelementptr inbounds %struct.ip_vs_conn, %struct.ip_vs_conn* %190, i32 0, i32 3
  %192 = load i32, i32* %191, align 8
  %193 = call i8* @htons(i32 %192)
  %194 = load %union.ip_vs_sync_conn*, %union.ip_vs_sync_conn** %6, align 8
  %195 = bitcast %union.ip_vs_sync_conn* %194 to %struct.TYPE_14__*
  %196 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %195, i32 0, i32 9
  store i8* %193, i8** %196, align 8
  %197 = load %struct.ip_vs_conn*, %struct.ip_vs_conn** %3, align 8
  %198 = getelementptr inbounds %struct.ip_vs_conn, %struct.ip_vs_conn* %197, i32 0, i32 18
  %199 = load i32, i32* %198, align 8
  %200 = load %union.ip_vs_sync_conn*, %union.ip_vs_sync_conn** %6, align 8
  %201 = bitcast %union.ip_vs_sync_conn* %200 to %struct.TYPE_14__*
  %202 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %201, i32 0, i32 8
  store i32 %199, i32* %202, align 4
  %203 = load %struct.ip_vs_conn*, %struct.ip_vs_conn** %3, align 8
  %204 = getelementptr inbounds %struct.ip_vs_conn, %struct.ip_vs_conn* %203, i32 0, i32 17
  %205 = load i32, i32* %204, align 4
  %206 = load %union.ip_vs_sync_conn*, %union.ip_vs_sync_conn** %6, align 8
  %207 = bitcast %union.ip_vs_sync_conn* %206 to %struct.TYPE_14__*
  %208 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %207, i32 0, i32 7
  store i32 %205, i32* %208, align 8
  %209 = load %struct.ip_vs_conn*, %struct.ip_vs_conn** %3, align 8
  %210 = getelementptr inbounds %struct.ip_vs_conn, %struct.ip_vs_conn* %209, i32 0, i32 16
  %211 = load i32, i32* %210, align 8
  %212 = load %union.ip_vs_sync_conn*, %union.ip_vs_sync_conn** %6, align 8
  %213 = bitcast %union.ip_vs_sync_conn* %212 to %struct.TYPE_14__*
  %214 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %213, i32 0, i32 6
  store i32 %211, i32* %214, align 4
  %215 = load %struct.ip_vs_conn*, %struct.ip_vs_conn** %3, align 8
  %216 = getelementptr inbounds %struct.ip_vs_conn, %struct.ip_vs_conn* %215, i32 0, i32 15
  %217 = load i32, i32* %216, align 4
  %218 = load %union.ip_vs_sync_conn*, %union.ip_vs_sync_conn** %6, align 8
  %219 = bitcast %union.ip_vs_sync_conn* %218 to %struct.TYPE_14__*
  %220 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %219, i32 0, i32 5
  store i32 %217, i32* %220, align 8
  %221 = load %struct.ip_vs_conn*, %struct.ip_vs_conn** %3, align 8
  %222 = getelementptr inbounds %struct.ip_vs_conn, %struct.ip_vs_conn* %221, i32 0, i32 4
  %223 = load i32, i32* %222, align 4
  %224 = call i8* @htonl(i32 %223)
  %225 = load %union.ip_vs_sync_conn*, %union.ip_vs_sync_conn** %6, align 8
  %226 = bitcast %union.ip_vs_sync_conn* %225 to %struct.TYPE_14__*
  %227 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %226, i32 0, i32 4
  store i8* %224, i8** %227, align 8
  %228 = load %struct.ip_vs_conn*, %struct.ip_vs_conn** %3, align 8
  %229 = getelementptr inbounds %struct.ip_vs_conn, %struct.ip_vs_conn* %228, i32 0, i32 5
  %230 = load i32, i32* %229, align 8
  %231 = load i32, i32* @HZ, align 4
  %232 = sdiv i32 %230, %231
  %233 = call i8* @htonl(i32 %232)
  %234 = load %union.ip_vs_sync_conn*, %union.ip_vs_sync_conn** %6, align 8
  %235 = bitcast %union.ip_vs_sync_conn* %234 to %struct.TYPE_14__*
  %236 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %235, i32 0, i32 3
  store i8* %233, i8** %236, align 8
  %237 = load %struct.ip_vs_sync_mesg*, %struct.ip_vs_sync_mesg** %5, align 8
  %238 = getelementptr inbounds %struct.ip_vs_sync_mesg, %struct.ip_vs_sync_mesg* %237, i32 0, i32 1
  %239 = load i32, i32* %238, align 4
  %240 = add nsw i32 %239, 1
  store i32 %240, i32* %238, align 4
  %241 = load i32*, i32** %7, align 8
  %242 = getelementptr inbounds i32, i32* %241, i64 4
  store i32* %242, i32** %7, align 8
  %243 = load %struct.ip_vs_conn*, %struct.ip_vs_conn** %3, align 8
  %244 = getelementptr inbounds %struct.ip_vs_conn, %struct.ip_vs_conn* %243, i32 0, i32 14
  %245 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %244, i32 0, i32 0
  %246 = load i32, i32* %245, align 4
  %247 = load %union.ip_vs_sync_conn*, %union.ip_vs_sync_conn** %6, align 8
  %248 = bitcast %union.ip_vs_sync_conn* %247 to %struct.TYPE_14__*
  %249 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %248, i32 0, i32 2
  store i32 %246, i32* %249, align 8
  %250 = load %struct.ip_vs_conn*, %struct.ip_vs_conn** %3, align 8
  %251 = getelementptr inbounds %struct.ip_vs_conn, %struct.ip_vs_conn* %250, i32 0, i32 13
  %252 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %251, i32 0, i32 0
  %253 = load i32, i32* %252, align 4
  %254 = load %union.ip_vs_sync_conn*, %union.ip_vs_sync_conn** %6, align 8
  %255 = bitcast %union.ip_vs_sync_conn* %254 to %struct.TYPE_14__*
  %256 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %255, i32 0, i32 1
  store i32 %253, i32* %256, align 4
  %257 = load %struct.ip_vs_conn*, %struct.ip_vs_conn** %3, align 8
  %258 = getelementptr inbounds %struct.ip_vs_conn, %struct.ip_vs_conn* %257, i32 0, i32 12
  %259 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %258, i32 0, i32 0
  %260 = load i32, i32* %259, align 4
  %261 = load %union.ip_vs_sync_conn*, %union.ip_vs_sync_conn** %6, align 8
  %262 = bitcast %union.ip_vs_sync_conn* %261 to %struct.TYPE_14__*
  %263 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %262, i32 0, i32 0
  store i32 %260, i32* %263, align 8
  %264 = load %struct.ip_vs_conn*, %struct.ip_vs_conn** %3, align 8
  %265 = getelementptr inbounds %struct.ip_vs_conn, %struct.ip_vs_conn* %264, i32 0, i32 0
  %266 = load i32, i32* %265, align 8
  %267 = load i32, i32* @IP_VS_CONN_F_SEQ_MASK, align 4
  %268 = and i32 %266, %267
  %269 = icmp ne i32 %268, 0
  br i1 %269, label %270, label %290

270:                                              ; preds = %168
  %271 = load i32, i32* @IPVS_OPT_SEQ_DATA, align 4
  %272 = load i32*, i32** %7, align 8
  %273 = getelementptr inbounds i32, i32* %272, i32 1
  store i32* %273, i32** %7, align 8
  store i32 %271, i32* %272, align 4
  %274 = load i32*, i32** %7, align 8
  %275 = getelementptr inbounds i32, i32* %274, i32 1
  store i32* %275, i32** %7, align 8
  store i32 4, i32* %274, align 4
  %276 = load i32*, i32** %7, align 8
  %277 = bitcast i32* %276 to %struct.ip_vs_seq*
  %278 = load %struct.ip_vs_conn*, %struct.ip_vs_conn** %3, align 8
  %279 = getelementptr inbounds %struct.ip_vs_conn, %struct.ip_vs_conn* %278, i32 0, i32 11
  %280 = call i32 @hton_seq(%struct.ip_vs_seq* %277, i32* %279)
  %281 = load i32*, i32** %7, align 8
  %282 = getelementptr inbounds i32, i32* %281, i64 4
  store i32* %282, i32** %7, align 8
  %283 = load i32*, i32** %7, align 8
  %284 = bitcast i32* %283 to %struct.ip_vs_seq*
  %285 = load %struct.ip_vs_conn*, %struct.ip_vs_conn** %3, align 8
  %286 = getelementptr inbounds %struct.ip_vs_conn, %struct.ip_vs_conn* %285, i32 0, i32 10
  %287 = call i32 @hton_seq(%struct.ip_vs_seq* %284, i32* %286)
  %288 = load i32*, i32** %7, align 8
  %289 = getelementptr inbounds i32, i32* %288, i64 4
  store i32* %289, i32** %7, align 8
  br label %290

290:                                              ; preds = %270, %168
  %291 = load %struct.ip_vs_conn*, %struct.ip_vs_conn** %3, align 8
  %292 = getelementptr inbounds %struct.ip_vs_conn, %struct.ip_vs_conn* %291, i32 0, i32 1
  %293 = load i32, i32* %292, align 4
  %294 = icmp ne i32 %293, 0
  br i1 %294, label %295, label %345

295:                                              ; preds = %290
  %296 = load %struct.ip_vs_conn*, %struct.ip_vs_conn** %3, align 8
  %297 = getelementptr inbounds %struct.ip_vs_conn, %struct.ip_vs_conn* %296, i32 0, i32 9
  %298 = load i32, i32* %297, align 8
  %299 = icmp ne i32 %298, 0
  br i1 %299, label %300, label %345

300:                                              ; preds = %295
  %301 = load i32, i32* @IPVS_OPT_PE_DATA, align 4
  %302 = load i32*, i32** %7, align 8
  %303 = getelementptr inbounds i32, i32* %302, i32 1
  store i32* %303, i32** %7, align 8
  store i32 %301, i32* %302, align 4
  %304 = load %struct.ip_vs_conn*, %struct.ip_vs_conn** %3, align 8
  %305 = getelementptr inbounds %struct.ip_vs_conn, %struct.ip_vs_conn* %304, i32 0, i32 1
  %306 = load i32, i32* %305, align 4
  %307 = load i32*, i32** %7, align 8
  %308 = getelementptr inbounds i32, i32* %307, i32 1
  store i32* %308, i32** %7, align 8
  store i32 %306, i32* %307, align 4
  %309 = load i32*, i32** %7, align 8
  %310 = load %struct.ip_vs_conn*, %struct.ip_vs_conn** %3, align 8
  %311 = getelementptr inbounds %struct.ip_vs_conn, %struct.ip_vs_conn* %310, i32 0, i32 9
  %312 = load i32, i32* %311, align 8
  %313 = load %struct.ip_vs_conn*, %struct.ip_vs_conn** %3, align 8
  %314 = getelementptr inbounds %struct.ip_vs_conn, %struct.ip_vs_conn* %313, i32 0, i32 1
  %315 = load i32, i32* %314, align 4
  %316 = call i32 @memcpy(i32* %309, i32 %312, i32 %315)
  %317 = load %struct.ip_vs_conn*, %struct.ip_vs_conn** %3, align 8
  %318 = getelementptr inbounds %struct.ip_vs_conn, %struct.ip_vs_conn* %317, i32 0, i32 1
  %319 = load i32, i32* %318, align 4
  %320 = load i32*, i32** %7, align 8
  %321 = sext i32 %319 to i64
  %322 = getelementptr inbounds i32, i32* %320, i64 %321
  store i32* %322, i32** %7, align 8
  %323 = load i32, i32* %9, align 4
  %324 = icmp ne i32 %323, 0
  br i1 %324, label %325, label %344

325:                                              ; preds = %300
  %326 = load i32, i32* @IPVS_OPT_PE_NAME, align 4
  %327 = load i32*, i32** %7, align 8
  %328 = getelementptr inbounds i32, i32* %327, i32 1
  store i32* %328, i32** %7, align 8
  store i32 %326, i32* %327, align 4
  %329 = load i32, i32* %9, align 4
  %330 = load i32*, i32** %7, align 8
  %331 = getelementptr inbounds i32, i32* %330, i32 1
  store i32* %331, i32** %7, align 8
  store i32 %329, i32* %330, align 4
  %332 = load i32*, i32** %7, align 8
  %333 = load %struct.ip_vs_conn*, %struct.ip_vs_conn** %3, align 8
  %334 = getelementptr inbounds %struct.ip_vs_conn, %struct.ip_vs_conn* %333, i32 0, i32 8
  %335 = load %struct.TYPE_10__*, %struct.TYPE_10__** %334, align 8
  %336 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %335, i32 0, i32 0
  %337 = load i32, i32* %336, align 4
  %338 = load i32, i32* %9, align 4
  %339 = call i32 @memcpy(i32* %332, i32 %337, i32 %338)
  %340 = load i32, i32* %9, align 4
  %341 = load i32*, i32** %7, align 8
  %342 = zext i32 %340 to i64
  %343 = getelementptr inbounds i32, i32* %341, i64 %342
  store i32* %343, i32** %7, align 8
  br label %344

344:                                              ; preds = %325, %300
  br label %345

345:                                              ; preds = %344, %295, %290
  %346 = call i32 @spin_unlock(i32* @curr_sb_lock)
  br label %347

347:                                              ; preds = %345, %31, %24
  %348 = load %struct.ip_vs_conn*, %struct.ip_vs_conn** %3, align 8
  %349 = getelementptr inbounds %struct.ip_vs_conn, %struct.ip_vs_conn* %348, i32 0, i32 7
  %350 = load %struct.ip_vs_conn*, %struct.ip_vs_conn** %349, align 8
  store %struct.ip_vs_conn* %350, %struct.ip_vs_conn** %3, align 8
  %351 = load %struct.ip_vs_conn*, %struct.ip_vs_conn** %3, align 8
  %352 = icmp ne %struct.ip_vs_conn* %351, null
  br i1 %352, label %354, label %353

353:                                              ; preds = %347
  br label %368

354:                                              ; preds = %347
  %355 = load %struct.ip_vs_conn*, %struct.ip_vs_conn** %3, align 8
  %356 = getelementptr inbounds %struct.ip_vs_conn, %struct.ip_vs_conn* %355, i32 0, i32 0
  %357 = load i32, i32* %356, align 8
  %358 = load i32, i32* @IP_VS_CONN_F_TEMPLATE, align 4
  %359 = and i32 %357, %358
  %360 = icmp ne i32 %359, 0
  br i1 %360, label %361, label %365

361:                                              ; preds = %354
  %362 = load %struct.ip_vs_conn*, %struct.ip_vs_conn** %3, align 8
  %363 = getelementptr inbounds %struct.ip_vs_conn, %struct.ip_vs_conn* %362, i32 0, i32 6
  %364 = call i32 @atomic_add_return(i32 1, i32* %363)
  store i32 %364, i32* %4, align 4
  br label %367

365:                                              ; preds = %354
  %366 = call i32 (...) @sysctl_sync_threshold()
  store i32 %366, i32* %4, align 4
  br label %367

367:                                              ; preds = %365, %361
  br label %26

368:                                              ; preds = %353, %123, %47, %13
  ret void
}

declare dso_local i32 @ip_vs_sync_conn_v0(%struct.ip_vs_conn*, i32) #1

declare dso_local i32 @ip_vs_sync_conn_needed(%struct.ip_vs_conn*, i32) #1

declare dso_local i32 @IP_VS_ERR_RL(i8*) #1

declare dso_local i32 @strnlen(i32, i32) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @sb_queue_tail(%struct.TYPE_16__*) #1

declare dso_local %struct.TYPE_16__* @ip_vs_sync_buff_create(...) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @pr_err(i8*) #1

declare dso_local i8* @htons(i32) #1

declare dso_local i8* @htonl(i32) #1

declare dso_local i32 @hton_seq(%struct.ip_vs_seq*, i32*) #1

declare dso_local i32 @memcpy(i32*, i32, i32) #1

declare dso_local i32 @atomic_add_return(i32, i32*) #1

declare dso_local i32 @sysctl_sync_threshold(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

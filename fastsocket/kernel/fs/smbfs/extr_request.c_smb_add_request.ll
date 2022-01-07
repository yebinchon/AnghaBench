; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/smbfs/extr_request.c_smb_add_request.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/smbfs/extr_request.c_smb_add_request.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.smb_request = type { i64*, i32, i64, i32, i32, i32, i32, i32, i32*, i64, %struct.smb_sb_info* }
%struct.smb_sb_info = type { i32, i64, i32, i32 }

@.str = private unnamed_addr constant [43 x i8] c"trans2 attempted without response buffer!\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@EINTR = common dso_local global i32 0, align 4
@smb_mid = common dso_local global i32 0, align 4
@CONN_VALID = common dso_local global i64 0, align 8
@CONN_INVALID = common dso_local global i64 0, align 8
@SMB_REQ_RECEIVED = common dso_local global i32 0, align 4
@HZ = common dso_local global i32 0, align 4
@current = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [33 x i8] c"request [%p, mid=%d] timed out!\0A\00", align 1
@.str.2 = private unnamed_addr constant [16 x i8] c"smb_com:  %02x\0A\00", align 1
@smb_com = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [16 x i8] c"smb_rcls: %02x\0A\00", align 1
@smb_rcls = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [16 x i8] c"smb_flg:  %02x\0A\00", align 1
@smb_flg = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [16 x i8] c"smb_tid:  %04x\0A\00", align 1
@smb_tid = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [16 x i8] c"smb_pid:  %04x\0A\00", align 1
@smb_pid = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [16 x i8] c"smb_uid:  %04x\0A\00", align 1
@smb_uid = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [16 x i8] c"smb_mid:  %04x\0A\00", align 1
@.str.9 = private unnamed_addr constant [16 x i8] c"smb_wct:  %02x\0A\00", align 1
@smb_wct = common dso_local global i32 0, align 4
@ERRSRV = common dso_local global i64 0, align 8
@ERRtimeout = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [18 x i8] c"woke up, rcls=%d\0A\00", align 1
@ERESTARTSYS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @smb_add_request(%struct.smb_request* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.smb_request*, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.smb_sb_info*, align 8
  %6 = alloca i32, align 4
  store %struct.smb_request* %0, %struct.smb_request** %3, align 8
  %7 = load %struct.smb_request*, %struct.smb_request** %3, align 8
  %8 = getelementptr inbounds %struct.smb_request, %struct.smb_request* %7, i32 0, i32 10
  %9 = load %struct.smb_sb_info*, %struct.smb_sb_info** %8, align 8
  store %struct.smb_sb_info* %9, %struct.smb_sb_info** %5, align 8
  store i32 0, i32* %6, align 4
  %10 = load %struct.smb_request*, %struct.smb_request** %3, align 8
  %11 = call i32 @smb_setup_request(%struct.smb_request* %10)
  %12 = load %struct.smb_request*, %struct.smb_request** %3, align 8
  %13 = getelementptr inbounds %struct.smb_request, %struct.smb_request* %12, i32 0, i32 9
  %14 = load i64, i64* %13, align 8
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %28

16:                                               ; preds = %1
  %17 = load %struct.smb_request*, %struct.smb_request** %3, align 8
  %18 = getelementptr inbounds %struct.smb_request, %struct.smb_request* %17, i32 0, i32 8
  %19 = load i32*, i32** %18, align 8
  %20 = icmp eq i32* %19, null
  br i1 %20, label %21, label %25

21:                                               ; preds = %16
  %22 = call i32 (i8*, ...) @PARANOIA(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i64 0, i64 0))
  %23 = load i32, i32* @EIO, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %2, align 4
  br label %243

25:                                               ; preds = %16
  %26 = load %struct.smb_request*, %struct.smb_request** %3, align 8
  %27 = call i32 @smb_setup_trans2request(%struct.smb_request* %26)
  store i32 %27, i32* %6, align 4
  br label %28

28:                                               ; preds = %25, %1
  %29 = load i32, i32* %6, align 4
  %30 = icmp slt i32 %29, 0
  br i1 %30, label %31, label %33

31:                                               ; preds = %28
  %32 = load i32, i32* %6, align 4
  store i32 %32, i32* %2, align 4
  br label %243

33:                                               ; preds = %28
  %34 = load %struct.smb_sb_info*, %struct.smb_sb_info** %5, align 8
  %35 = call i64 @smb_lock_server_interruptible(%struct.smb_sb_info* %34)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %40

37:                                               ; preds = %33
  %38 = load i32, i32* @EINTR, align 4
  %39 = sub nsw i32 0, %38
  store i32 %39, i32* %2, align 4
  br label %243

40:                                               ; preds = %33
  %41 = load %struct.smb_sb_info*, %struct.smb_sb_info** %5, align 8
  %42 = getelementptr inbounds %struct.smb_sb_info, %struct.smb_sb_info* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = icmp sgt i32 %43, 61440
  br i1 %44, label %45, label %48

45:                                               ; preds = %40
  %46 = load %struct.smb_sb_info*, %struct.smb_sb_info** %5, align 8
  %47 = getelementptr inbounds %struct.smb_sb_info, %struct.smb_sb_info* %46, i32 0, i32 0
  store i32 0, i32* %47, align 8
  br label %48

48:                                               ; preds = %45, %40
  %49 = load %struct.smb_sb_info*, %struct.smb_sb_info** %5, align 8
  %50 = getelementptr inbounds %struct.smb_sb_info, %struct.smb_sb_info* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  %52 = add nsw i32 %51, 1
  store i32 %52, i32* %50, align 8
  %53 = load %struct.smb_request*, %struct.smb_request** %3, align 8
  %54 = getelementptr inbounds %struct.smb_request, %struct.smb_request* %53, i32 0, i32 5
  store i32 %51, i32* %54, align 8
  %55 = load %struct.smb_request*, %struct.smb_request** %3, align 8
  %56 = getelementptr inbounds %struct.smb_request, %struct.smb_request* %55, i32 0, i32 0
  %57 = load i64*, i64** %56, align 8
  %58 = load i32, i32* @smb_mid, align 4
  %59 = load %struct.smb_request*, %struct.smb_request** %3, align 8
  %60 = getelementptr inbounds %struct.smb_request, %struct.smb_request* %59, i32 0, i32 5
  %61 = load i32, i32* %60, align 8
  %62 = call i32 @WSET(i64* %57, i32 %58, i32 %61)
  store i32 0, i32* %6, align 4
  %63 = load %struct.smb_sb_info*, %struct.smb_sb_info** %5, align 8
  %64 = getelementptr inbounds %struct.smb_sb_info, %struct.smb_sb_info* %63, i32 0, i32 1
  %65 = load i64, i64* %64, align 8
  %66 = load i64, i64* @CONN_VALID, align 8
  %67 = icmp eq i64 %65, %66
  br i1 %67, label %68, label %87

68:                                               ; preds = %48
  %69 = load %struct.smb_sb_info*, %struct.smb_sb_info** %5, align 8
  %70 = getelementptr inbounds %struct.smb_sb_info, %struct.smb_sb_info* %69, i32 0, i32 3
  %71 = call i64 @list_empty(i32* %70)
  %72 = icmp ne i64 %71, 0
  br i1 %72, label %73, label %76

73:                                               ; preds = %68
  %74 = load %struct.smb_request*, %struct.smb_request** %3, align 8
  %75 = call i32 @smb_request_send_req(%struct.smb_request* %74)
  store i32 %75, i32* %6, align 4
  br label %76

76:                                               ; preds = %73, %68
  %77 = load i32, i32* %6, align 4
  %78 = icmp slt i32 %77, 0
  br i1 %78, label %79, label %86

79:                                               ; preds = %76
  %80 = load i32, i32* %6, align 4
  %81 = load %struct.smb_sb_info*, %struct.smb_sb_info** %5, align 8
  %82 = getelementptr inbounds %struct.smb_sb_info, %struct.smb_sb_info* %81, i32 0, i32 2
  store i32 %80, i32* %82, align 8
  %83 = load i64, i64* @CONN_INVALID, align 8
  %84 = load %struct.smb_sb_info*, %struct.smb_sb_info** %5, align 8
  %85 = getelementptr inbounds %struct.smb_sb_info, %struct.smb_sb_info* %84, i32 0, i32 1
  store i64 %83, i64* %85, align 8
  br label %86

86:                                               ; preds = %79, %76
  br label %87

87:                                               ; preds = %86, %48
  %88 = load i32, i32* %6, align 4
  %89 = icmp ne i32 %88, 1
  br i1 %89, label %90, label %96

90:                                               ; preds = %87
  %91 = load %struct.smb_request*, %struct.smb_request** %3, align 8
  %92 = getelementptr inbounds %struct.smb_request, %struct.smb_request* %91, i32 0, i32 6
  %93 = load %struct.smb_sb_info*, %struct.smb_sb_info** %5, align 8
  %94 = getelementptr inbounds %struct.smb_sb_info, %struct.smb_sb_info* %93, i32 0, i32 3
  %95 = call i32 @list_add_tail(i32* %92, i32* %94)
  br label %96

96:                                               ; preds = %90, %87
  %97 = load %struct.smb_request*, %struct.smb_request** %3, align 8
  %98 = call i32 @smb_rget(%struct.smb_request* %97)
  %99 = load %struct.smb_sb_info*, %struct.smb_sb_info** %5, align 8
  %100 = getelementptr inbounds %struct.smb_sb_info, %struct.smb_sb_info* %99, i32 0, i32 1
  %101 = load i64, i64* %100, align 8
  %102 = load i64, i64* @CONN_VALID, align 8
  %103 = icmp ne i64 %101, %102
  br i1 %103, label %104, label %107

104:                                              ; preds = %96
  %105 = load %struct.smb_sb_info*, %struct.smb_sb_info** %5, align 8
  %106 = call i32 @smbiod_retry(%struct.smb_sb_info* %105)
  br label %107

107:                                              ; preds = %104, %96
  %108 = load %struct.smb_sb_info*, %struct.smb_sb_info** %5, align 8
  %109 = call i32 @smb_unlock_server(%struct.smb_sb_info* %108)
  %110 = call i32 (...) @smbiod_wake_up()
  %111 = load %struct.smb_request*, %struct.smb_request** %3, align 8
  %112 = getelementptr inbounds %struct.smb_request, %struct.smb_request* %111, i32 0, i32 7
  %113 = load i32, i32* %112, align 8
  %114 = load %struct.smb_request*, %struct.smb_request** %3, align 8
  %115 = getelementptr inbounds %struct.smb_request, %struct.smb_request* %114, i32 0, i32 1
  %116 = load i32, i32* %115, align 8
  %117 = load i32, i32* @SMB_REQ_RECEIVED, align 4
  %118 = and i32 %116, %117
  %119 = load i32, i32* @HZ, align 4
  %120 = mul nsw i32 30, %119
  %121 = call i64 @wait_event_interruptible_timeout(i32 %113, i32 %118, i32 %120)
  store i64 %121, i64* %4, align 8
  %122 = load i64, i64* %4, align 8
  %123 = icmp ne i64 %122, 0
  br i1 %123, label %124, label %128

124:                                              ; preds = %107
  %125 = load i32, i32* @current, align 4
  %126 = call i64 @signal_pending(i32 %125)
  %127 = icmp ne i64 %126, 0
  br i1 %127, label %128, label %144

128:                                              ; preds = %124, %107
  %129 = load %struct.smb_sb_info*, %struct.smb_sb_info** %5, align 8
  %130 = call i32 @smb_lock_server(%struct.smb_sb_info* %129)
  %131 = load %struct.smb_request*, %struct.smb_request** %3, align 8
  %132 = getelementptr inbounds %struct.smb_request, %struct.smb_request* %131, i32 0, i32 6
  %133 = call i64 @list_empty(i32* %132)
  %134 = icmp ne i64 %133, 0
  br i1 %134, label %141, label %135

135:                                              ; preds = %128
  %136 = load %struct.smb_request*, %struct.smb_request** %3, align 8
  %137 = getelementptr inbounds %struct.smb_request, %struct.smb_request* %136, i32 0, i32 6
  %138 = call i32 @list_del_init(i32* %137)
  %139 = load %struct.smb_request*, %struct.smb_request** %3, align 8
  %140 = call i32 @smb_rput(%struct.smb_request* %139)
  br label %141

141:                                              ; preds = %135, %128
  %142 = load %struct.smb_sb_info*, %struct.smb_sb_info** %5, align 8
  %143 = call i32 @smb_unlock_server(%struct.smb_sb_info* %142)
  br label %144

144:                                              ; preds = %141, %124
  %145 = load i64, i64* %4, align 8
  %146 = icmp ne i64 %145, 0
  br i1 %146, label %216, label %147

147:                                              ; preds = %144
  %148 = load %struct.smb_request*, %struct.smb_request** %3, align 8
  %149 = load %struct.smb_request*, %struct.smb_request** %3, align 8
  %150 = getelementptr inbounds %struct.smb_request, %struct.smb_request* %149, i32 0, i32 5
  %151 = load i32, i32* %150, align 8
  %152 = call i32 (i8*, ...) @PARANOIA(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0), %struct.smb_request* %148, i32 %151)
  %153 = load %struct.smb_request*, %struct.smb_request** %3, align 8
  %154 = getelementptr inbounds %struct.smb_request, %struct.smb_request* %153, i32 0, i32 0
  %155 = load i64*, i64** %154, align 8
  %156 = load i32, i32* @smb_com, align 4
  %157 = sext i32 %156 to i64
  %158 = getelementptr inbounds i64, i64* %155, i64 %157
  %159 = load i64, i64* %158, align 8
  %160 = call i32 @VERBOSE(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.2, i64 0, i64 0), i64 %159)
  %161 = load %struct.smb_request*, %struct.smb_request** %3, align 8
  %162 = getelementptr inbounds %struct.smb_request, %struct.smb_request* %161, i32 0, i32 0
  %163 = load i64*, i64** %162, align 8
  %164 = load i32, i32* @smb_rcls, align 4
  %165 = sext i32 %164 to i64
  %166 = getelementptr inbounds i64, i64* %163, i64 %165
  %167 = load i64, i64* %166, align 8
  %168 = call i32 @VERBOSE(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.3, i64 0, i64 0), i64 %167)
  %169 = load %struct.smb_request*, %struct.smb_request** %3, align 8
  %170 = getelementptr inbounds %struct.smb_request, %struct.smb_request* %169, i32 0, i32 0
  %171 = load i64*, i64** %170, align 8
  %172 = load i32, i32* @smb_flg, align 4
  %173 = sext i32 %172 to i64
  %174 = getelementptr inbounds i64, i64* %171, i64 %173
  %175 = load i64, i64* %174, align 8
  %176 = call i32 @VERBOSE(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.4, i64 0, i64 0), i64 %175)
  %177 = load %struct.smb_request*, %struct.smb_request** %3, align 8
  %178 = getelementptr inbounds %struct.smb_request, %struct.smb_request* %177, i32 0, i32 0
  %179 = load i64*, i64** %178, align 8
  %180 = load i32, i32* @smb_tid, align 4
  %181 = call i64 @WVAL(i64* %179, i32 %180)
  %182 = call i32 @VERBOSE(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.5, i64 0, i64 0), i64 %181)
  %183 = load %struct.smb_request*, %struct.smb_request** %3, align 8
  %184 = getelementptr inbounds %struct.smb_request, %struct.smb_request* %183, i32 0, i32 0
  %185 = load i64*, i64** %184, align 8
  %186 = load i32, i32* @smb_pid, align 4
  %187 = call i64 @WVAL(i64* %185, i32 %186)
  %188 = call i32 @VERBOSE(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.6, i64 0, i64 0), i64 %187)
  %189 = load %struct.smb_request*, %struct.smb_request** %3, align 8
  %190 = getelementptr inbounds %struct.smb_request, %struct.smb_request* %189, i32 0, i32 0
  %191 = load i64*, i64** %190, align 8
  %192 = load i32, i32* @smb_uid, align 4
  %193 = call i64 @WVAL(i64* %191, i32 %192)
  %194 = call i32 @VERBOSE(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.7, i64 0, i64 0), i64 %193)
  %195 = load %struct.smb_request*, %struct.smb_request** %3, align 8
  %196 = getelementptr inbounds %struct.smb_request, %struct.smb_request* %195, i32 0, i32 0
  %197 = load i64*, i64** %196, align 8
  %198 = load i32, i32* @smb_mid, align 4
  %199 = call i64 @WVAL(i64* %197, i32 %198)
  %200 = call i32 @VERBOSE(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.8, i64 0, i64 0), i64 %199)
  %201 = load %struct.smb_request*, %struct.smb_request** %3, align 8
  %202 = getelementptr inbounds %struct.smb_request, %struct.smb_request* %201, i32 0, i32 0
  %203 = load i64*, i64** %202, align 8
  %204 = load i32, i32* @smb_wct, align 4
  %205 = sext i32 %204 to i64
  %206 = getelementptr inbounds i64, i64* %203, i64 %205
  %207 = load i64, i64* %206, align 8
  %208 = call i32 @VERBOSE(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.9, i64 0, i64 0), i64 %207)
  %209 = load i64, i64* @ERRSRV, align 8
  %210 = load %struct.smb_request*, %struct.smb_request** %3, align 8
  %211 = getelementptr inbounds %struct.smb_request, %struct.smb_request* %210, i32 0, i32 2
  store i64 %209, i64* %211, align 8
  %212 = load i32, i32* @ERRtimeout, align 4
  %213 = load %struct.smb_request*, %struct.smb_request** %3, align 8
  %214 = getelementptr inbounds %struct.smb_request, %struct.smb_request* %213, i32 0, i32 4
  store i32 %212, i32* %214, align 4
  %215 = call i32 (...) @smbiod_wake_up()
  br label %216

216:                                              ; preds = %147, %144
  %217 = load %struct.smb_request*, %struct.smb_request** %3, align 8
  %218 = getelementptr inbounds %struct.smb_request, %struct.smb_request* %217, i32 0, i32 2
  %219 = load i64, i64* %218, align 8
  %220 = call i32 @VERBOSE(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.10, i64 0, i64 0), i64 %219)
  %221 = load %struct.smb_request*, %struct.smb_request** %3, align 8
  %222 = getelementptr inbounds %struct.smb_request, %struct.smb_request* %221, i32 0, i32 2
  %223 = load i64, i64* %222, align 8
  %224 = icmp ne i64 %223, 0
  br i1 %224, label %225, label %230

225:                                              ; preds = %216
  %226 = load %struct.smb_request*, %struct.smb_request** %3, align 8
  %227 = call i32 @smb_errno(%struct.smb_request* %226)
  %228 = load %struct.smb_request*, %struct.smb_request** %3, align 8
  %229 = getelementptr inbounds %struct.smb_request, %struct.smb_request* %228, i32 0, i32 3
  store i32 %227, i32* %229, align 8
  br label %230

230:                                              ; preds = %225, %216
  %231 = load i32, i32* @current, align 4
  %232 = call i64 @signal_pending(i32 %231)
  %233 = icmp ne i64 %232, 0
  br i1 %233, label %234, label %239

234:                                              ; preds = %230
  %235 = load i32, i32* @ERESTARTSYS, align 4
  %236 = sub nsw i32 0, %235
  %237 = load %struct.smb_request*, %struct.smb_request** %3, align 8
  %238 = getelementptr inbounds %struct.smb_request, %struct.smb_request* %237, i32 0, i32 3
  store i32 %236, i32* %238, align 8
  br label %239

239:                                              ; preds = %234, %230
  %240 = load %struct.smb_request*, %struct.smb_request** %3, align 8
  %241 = getelementptr inbounds %struct.smb_request, %struct.smb_request* %240, i32 0, i32 3
  %242 = load i32, i32* %241, align 8
  store i32 %242, i32* %2, align 4
  br label %243

243:                                              ; preds = %239, %37, %31, %21
  %244 = load i32, i32* %2, align 4
  ret i32 %244
}

declare dso_local i32 @smb_setup_request(%struct.smb_request*) #1

declare dso_local i32 @PARANOIA(i8*, ...) #1

declare dso_local i32 @smb_setup_trans2request(%struct.smb_request*) #1

declare dso_local i64 @smb_lock_server_interruptible(%struct.smb_sb_info*) #1

declare dso_local i32 @WSET(i64*, i32, i32) #1

declare dso_local i64 @list_empty(i32*) #1

declare dso_local i32 @smb_request_send_req(%struct.smb_request*) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

declare dso_local i32 @smb_rget(%struct.smb_request*) #1

declare dso_local i32 @smbiod_retry(%struct.smb_sb_info*) #1

declare dso_local i32 @smb_unlock_server(%struct.smb_sb_info*) #1

declare dso_local i32 @smbiod_wake_up(...) #1

declare dso_local i64 @wait_event_interruptible_timeout(i32, i32, i32) #1

declare dso_local i64 @signal_pending(i32) #1

declare dso_local i32 @smb_lock_server(%struct.smb_sb_info*) #1

declare dso_local i32 @list_del_init(i32*) #1

declare dso_local i32 @smb_rput(%struct.smb_request*) #1

declare dso_local i32 @VERBOSE(i8*, i64) #1

declare dso_local i64 @WVAL(i64*, i32) #1

declare dso_local i32 @smb_errno(%struct.smb_request*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

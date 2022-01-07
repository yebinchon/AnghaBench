; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/nfs/extr_nfs4state.c_nfs4_state_manager.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/nfs/extr_nfs4state.c_nfs4_state_manager.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nfs_client = type { i64, i64, i32, %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32, i32 }

@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@NFS4CLNT_LEASE_EXPIRED = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [14 x i8] c"lease expired\00", align 1
@NFS_CS_SESSION_INITING = common dso_local global i64 0, align 8
@NFS4CLNT_CHECK_LEASE = common dso_local global i32 0, align 4
@NFS4CLNT_RECLAIM_REBOOT = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [12 x i8] c"check lease\00", align 1
@NFS4ERR_CB_PATH_DOWN = common dso_local global i32 0, align 4
@NFS4CLNT_SESSION_RESET = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [14 x i8] c"reset session\00", align 1
@.str.4 = private unnamed_addr constant [15 x i8] c"reclaim reboot\00", align 1
@NFS4CLNT_RECLAIM_NOGRACE = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [16 x i8] c"reclaim nograce\00", align 1
@NFS4CLNT_DELEGRETURN = common dso_local global i32 0, align 4
@NFS4CLNT_RECALL_SLOT = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [12 x i8] c"recall slot\00", align 1
@NFS4CLNT_MANAGER_RUNNING = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [3 x i8] c": \00", align 1
@.str.8 = private unnamed_addr constant [64 x i8] c"NFS: state manager%s%s failed on NFSv4 server %s with error %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.nfs_client*)* @nfs4_state_manager to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nfs4_state_manager(%struct.nfs_client* %0) #0 {
  %2 = alloca %struct.nfs_client*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  store %struct.nfs_client* %0, %struct.nfs_client** %2, align 8
  store i32 0, i32* %3, align 4
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0), i8** %4, align 8
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0), i8** %5, align 8
  br label %6

6:                                                ; preds = %219, %1
  %7 = load i32, i32* @NFS4CLNT_LEASE_EXPIRED, align 4
  %8 = load %struct.nfs_client*, %struct.nfs_client** %2, align 8
  %9 = getelementptr inbounds %struct.nfs_client, %struct.nfs_client* %8, i32 0, i32 0
  %10 = call i64 @test_and_clear_bit(i32 %7, i64* %9)
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %49

12:                                               ; preds = %6
  store i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0), i8** %4, align 8
  %13 = load %struct.nfs_client*, %struct.nfs_client** %2, align 8
  %14 = call i32 @nfs4_reclaim_lease(%struct.nfs_client* %13)
  store i32 %14, i32* %3, align 4
  %15 = load i32, i32* %3, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %38

17:                                               ; preds = %12
  %18 = load %struct.nfs_client*, %struct.nfs_client** %2, align 8
  %19 = load i32, i32* %3, align 4
  %20 = call i32 @nfs4_set_lease_expired(%struct.nfs_client* %18, i32 %19)
  %21 = load i32, i32* @NFS4CLNT_LEASE_EXPIRED, align 4
  %22 = load %struct.nfs_client*, %struct.nfs_client** %2, align 8
  %23 = getelementptr inbounds %struct.nfs_client, %struct.nfs_client* %22, i32 0, i32 0
  %24 = call i64 @test_bit(i32 %21, i64* %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %27

26:                                               ; preds = %17
  br label %219

27:                                               ; preds = %17
  %28 = load %struct.nfs_client*, %struct.nfs_client** %2, align 8
  %29 = getelementptr inbounds %struct.nfs_client, %struct.nfs_client* %28, i32 0, i32 1
  %30 = load i64, i64* %29, align 8
  %31 = load i64, i64* @NFS_CS_SESSION_INITING, align 8
  %32 = icmp eq i64 %30, %31
  br i1 %32, label %33, label %37

33:                                               ; preds = %27
  %34 = load %struct.nfs_client*, %struct.nfs_client** %2, align 8
  %35 = load i32, i32* %3, align 4
  %36 = call i32 @nfs_mark_client_ready(%struct.nfs_client* %34, i32 %35)
  br label %37

37:                                               ; preds = %33, %27
  br label %225

38:                                               ; preds = %12
  %39 = load i32, i32* @NFS4CLNT_CHECK_LEASE, align 4
  %40 = load %struct.nfs_client*, %struct.nfs_client** %2, align 8
  %41 = getelementptr inbounds %struct.nfs_client, %struct.nfs_client* %40, i32 0, i32 0
  %42 = call i32 @clear_bit(i32 %39, i64* %41)
  %43 = load i32, i32* @NFS4CLNT_RECLAIM_REBOOT, align 4
  %44 = load %struct.nfs_client*, %struct.nfs_client** %2, align 8
  %45 = getelementptr inbounds %struct.nfs_client, %struct.nfs_client* %44, i32 0, i32 0
  %46 = call i32 @set_bit(i32 %43, i64* %45)
  %47 = load %struct.nfs_client*, %struct.nfs_client** %2, align 8
  %48 = call i32 @pnfs_destroy_all_layouts(%struct.nfs_client* %47)
  br label %49

49:                                               ; preds = %38, %6
  %50 = load i32, i32* @NFS4CLNT_CHECK_LEASE, align 4
  %51 = load %struct.nfs_client*, %struct.nfs_client** %2, align 8
  %52 = getelementptr inbounds %struct.nfs_client, %struct.nfs_client* %51, i32 0, i32 0
  %53 = call i64 @test_and_clear_bit(i32 %50, i64* %52)
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %74

55:                                               ; preds = %49
  store i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i64 0, i64 0), i8** %4, align 8
  %56 = load %struct.nfs_client*, %struct.nfs_client** %2, align 8
  %57 = call i32 @nfs4_check_lease(%struct.nfs_client* %56)
  store i32 %57, i32* %3, align 4
  %58 = load i32, i32* @NFS4CLNT_LEASE_EXPIRED, align 4
  %59 = load %struct.nfs_client*, %struct.nfs_client** %2, align 8
  %60 = getelementptr inbounds %struct.nfs_client, %struct.nfs_client* %59, i32 0, i32 0
  %61 = call i64 @test_bit(i32 %58, i64* %60)
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %64

63:                                               ; preds = %55
  br label %219

64:                                               ; preds = %55
  %65 = load i32, i32* %3, align 4
  %66 = icmp slt i32 %65, 0
  br i1 %66, label %67, label %73

67:                                               ; preds = %64
  %68 = load i32, i32* %3, align 4
  %69 = load i32, i32* @NFS4ERR_CB_PATH_DOWN, align 4
  %70 = sub nsw i32 0, %69
  %71 = icmp ne i32 %68, %70
  br i1 %71, label %72, label %73

72:                                               ; preds = %67
  br label %225

73:                                               ; preds = %67, %64
  br label %74

74:                                               ; preds = %73, %49
  %75 = load i32, i32* @NFS4CLNT_SESSION_RESET, align 4
  %76 = load %struct.nfs_client*, %struct.nfs_client** %2, align 8
  %77 = getelementptr inbounds %struct.nfs_client, %struct.nfs_client* %76, i32 0, i32 0
  %78 = call i64 @test_and_clear_bit(i32 %75, i64* %77)
  %79 = icmp ne i64 %78, 0
  br i1 %79, label %80, label %98

80:                                               ; preds = %74
  %81 = load %struct.nfs_client*, %struct.nfs_client** %2, align 8
  %82 = call i64 @nfs4_has_session(%struct.nfs_client* %81)
  %83 = icmp ne i64 %82, 0
  br i1 %83, label %84, label %98

84:                                               ; preds = %80
  store i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.3, i64 0, i64 0), i8** %4, align 8
  %85 = load %struct.nfs_client*, %struct.nfs_client** %2, align 8
  %86 = call i32 @nfs4_reset_session(%struct.nfs_client* %85)
  store i32 %86, i32* %3, align 4
  %87 = load i32, i32* @NFS4CLNT_LEASE_EXPIRED, align 4
  %88 = load %struct.nfs_client*, %struct.nfs_client** %2, align 8
  %89 = getelementptr inbounds %struct.nfs_client, %struct.nfs_client* %88, i32 0, i32 0
  %90 = call i64 @test_bit(i32 %87, i64* %89)
  %91 = icmp ne i64 %90, 0
  br i1 %91, label %92, label %93

92:                                               ; preds = %84
  br label %219

93:                                               ; preds = %84
  %94 = load i32, i32* %3, align 4
  %95 = icmp slt i32 %94, 0
  br i1 %95, label %96, label %97

96:                                               ; preds = %93
  br label %225

97:                                               ; preds = %93
  br label %98

98:                                               ; preds = %97, %80, %74
  %99 = load i32, i32* @NFS4CLNT_RECLAIM_REBOOT, align 4
  %100 = load %struct.nfs_client*, %struct.nfs_client** %2, align 8
  %101 = getelementptr inbounds %struct.nfs_client, %struct.nfs_client* %100, i32 0, i32 0
  %102 = call i64 @test_bit(i32 %99, i64* %101)
  %103 = icmp ne i64 %102, 0
  br i1 %103, label %104, label %138

104:                                              ; preds = %98
  store i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.4, i64 0, i64 0), i8** %4, align 8
  %105 = load %struct.nfs_client*, %struct.nfs_client** %2, align 8
  %106 = load %struct.nfs_client*, %struct.nfs_client** %2, align 8
  %107 = getelementptr inbounds %struct.nfs_client, %struct.nfs_client* %106, i32 0, i32 3
  %108 = load %struct.TYPE_2__*, %struct.TYPE_2__** %107, align 8
  %109 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %108, i32 0, i32 1
  %110 = load i32, i32* %109, align 4
  %111 = call i32 @nfs4_do_reclaim(%struct.nfs_client* %105, i32 %110)
  store i32 %111, i32* %3, align 4
  %112 = load i32, i32* @NFS4CLNT_LEASE_EXPIRED, align 4
  %113 = load %struct.nfs_client*, %struct.nfs_client** %2, align 8
  %114 = getelementptr inbounds %struct.nfs_client, %struct.nfs_client* %113, i32 0, i32 0
  %115 = call i64 @test_bit(i32 %112, i64* %114)
  %116 = icmp ne i64 %115, 0
  br i1 %116, label %123, label %117

117:                                              ; preds = %104
  %118 = load i32, i32* @NFS4CLNT_SESSION_RESET, align 4
  %119 = load %struct.nfs_client*, %struct.nfs_client** %2, align 8
  %120 = getelementptr inbounds %struct.nfs_client, %struct.nfs_client* %119, i32 0, i32 0
  %121 = call i64 @test_bit(i32 %118, i64* %120)
  %122 = icmp ne i64 %121, 0
  br i1 %122, label %123, label %124

123:                                              ; preds = %117, %104
  br label %219

124:                                              ; preds = %117
  %125 = load %struct.nfs_client*, %struct.nfs_client** %2, align 8
  %126 = call i32 @nfs4_state_end_reclaim_reboot(%struct.nfs_client* %125)
  %127 = load i32, i32* @NFS4CLNT_RECLAIM_NOGRACE, align 4
  %128 = load %struct.nfs_client*, %struct.nfs_client** %2, align 8
  %129 = getelementptr inbounds %struct.nfs_client, %struct.nfs_client* %128, i32 0, i32 0
  %130 = call i64 @test_bit(i32 %127, i64* %129)
  %131 = icmp ne i64 %130, 0
  br i1 %131, label %132, label %133

132:                                              ; preds = %124
  br label %219

133:                                              ; preds = %124
  %134 = load i32, i32* %3, align 4
  %135 = icmp slt i32 %134, 0
  br i1 %135, label %136, label %137

136:                                              ; preds = %133
  br label %225

137:                                              ; preds = %133
  br label %138

138:                                              ; preds = %137, %98
  %139 = load i32, i32* @NFS4CLNT_RECLAIM_NOGRACE, align 4
  %140 = load %struct.nfs_client*, %struct.nfs_client** %2, align 8
  %141 = getelementptr inbounds %struct.nfs_client, %struct.nfs_client* %140, i32 0, i32 0
  %142 = call i64 @test_and_clear_bit(i32 %139, i64* %141)
  %143 = icmp ne i64 %142, 0
  br i1 %143, label %144, label %175

144:                                              ; preds = %138
  store i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.5, i64 0, i64 0), i8** %4, align 8
  %145 = load %struct.nfs_client*, %struct.nfs_client** %2, align 8
  %146 = load %struct.nfs_client*, %struct.nfs_client** %2, align 8
  %147 = getelementptr inbounds %struct.nfs_client, %struct.nfs_client* %146, i32 0, i32 3
  %148 = load %struct.TYPE_2__*, %struct.TYPE_2__** %147, align 8
  %149 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %148, i32 0, i32 0
  %150 = load i32, i32* %149, align 4
  %151 = call i32 @nfs4_do_reclaim(%struct.nfs_client* %145, i32 %150)
  store i32 %151, i32* %3, align 4
  %152 = load i32, i32* @NFS4CLNT_LEASE_EXPIRED, align 4
  %153 = load %struct.nfs_client*, %struct.nfs_client** %2, align 8
  %154 = getelementptr inbounds %struct.nfs_client, %struct.nfs_client* %153, i32 0, i32 0
  %155 = call i64 @test_bit(i32 %152, i64* %154)
  %156 = icmp ne i64 %155, 0
  br i1 %156, label %169, label %157

157:                                              ; preds = %144
  %158 = load i32, i32* @NFS4CLNT_SESSION_RESET, align 4
  %159 = load %struct.nfs_client*, %struct.nfs_client** %2, align 8
  %160 = getelementptr inbounds %struct.nfs_client, %struct.nfs_client* %159, i32 0, i32 0
  %161 = call i64 @test_bit(i32 %158, i64* %160)
  %162 = icmp ne i64 %161, 0
  br i1 %162, label %169, label %163

163:                                              ; preds = %157
  %164 = load i32, i32* @NFS4CLNT_RECLAIM_REBOOT, align 4
  %165 = load %struct.nfs_client*, %struct.nfs_client** %2, align 8
  %166 = getelementptr inbounds %struct.nfs_client, %struct.nfs_client* %165, i32 0, i32 0
  %167 = call i64 @test_bit(i32 %164, i64* %166)
  %168 = icmp ne i64 %167, 0
  br i1 %168, label %169, label %170

169:                                              ; preds = %163, %157, %144
  br label %219

170:                                              ; preds = %163
  %171 = load i32, i32* %3, align 4
  %172 = icmp slt i32 %171, 0
  br i1 %172, label %173, label %174

173:                                              ; preds = %170
  br label %225

174:                                              ; preds = %170
  br label %175

175:                                              ; preds = %174, %138
  %176 = load %struct.nfs_client*, %struct.nfs_client** %2, align 8
  %177 = call i32 @nfs4_end_drain_session(%struct.nfs_client* %176)
  %178 = load i32, i32* @NFS4CLNT_DELEGRETURN, align 4
  %179 = load %struct.nfs_client*, %struct.nfs_client** %2, align 8
  %180 = getelementptr inbounds %struct.nfs_client, %struct.nfs_client* %179, i32 0, i32 0
  %181 = call i64 @test_and_clear_bit(i32 %178, i64* %180)
  %182 = icmp ne i64 %181, 0
  br i1 %182, label %183, label %186

183:                                              ; preds = %175
  %184 = load %struct.nfs_client*, %struct.nfs_client** %2, align 8
  %185 = call i32 @nfs_client_return_marked_delegations(%struct.nfs_client* %184)
  br label %219

186:                                              ; preds = %175
  %187 = load i32, i32* @NFS4CLNT_RECALL_SLOT, align 4
  %188 = load %struct.nfs_client*, %struct.nfs_client** %2, align 8
  %189 = getelementptr inbounds %struct.nfs_client, %struct.nfs_client* %188, i32 0, i32 0
  %190 = call i64 @test_and_clear_bit(i32 %187, i64* %189)
  %191 = icmp ne i64 %190, 0
  br i1 %191, label %192, label %203

192:                                              ; preds = %186
  %193 = load %struct.nfs_client*, %struct.nfs_client** %2, align 8
  %194 = call i64 @nfs4_has_session(%struct.nfs_client* %193)
  %195 = icmp ne i64 %194, 0
  br i1 %195, label %196, label %203

196:                                              ; preds = %192
  store i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.6, i64 0, i64 0), i8** %4, align 8
  %197 = load %struct.nfs_client*, %struct.nfs_client** %2, align 8
  %198 = call i32 @nfs4_recall_slot(%struct.nfs_client* %197)
  store i32 %198, i32* %3, align 4
  %199 = load i32, i32* %3, align 4
  %200 = icmp slt i32 %199, 0
  br i1 %200, label %201, label %202

201:                                              ; preds = %196
  br label %225

202:                                              ; preds = %196
  br label %219

203:                                              ; preds = %192, %186
  %204 = load %struct.nfs_client*, %struct.nfs_client** %2, align 8
  %205 = call i32 @nfs4_clear_state_manager_bit(%struct.nfs_client* %204)
  %206 = load %struct.nfs_client*, %struct.nfs_client** %2, align 8
  %207 = getelementptr inbounds %struct.nfs_client, %struct.nfs_client* %206, i32 0, i32 0
  %208 = load i64, i64* %207, align 8
  %209 = icmp eq i64 %208, 0
  br i1 %209, label %210, label %211

210:                                              ; preds = %203
  br label %224

211:                                              ; preds = %203
  %212 = load i32, i32* @NFS4CLNT_MANAGER_RUNNING, align 4
  %213 = load %struct.nfs_client*, %struct.nfs_client** %2, align 8
  %214 = getelementptr inbounds %struct.nfs_client, %struct.nfs_client* %213, i32 0, i32 0
  %215 = call i64 @test_and_set_bit(i32 %212, i64* %214)
  %216 = icmp ne i64 %215, 0
  br i1 %216, label %217, label %218

217:                                              ; preds = %211
  br label %224

218:                                              ; preds = %211
  br label %219

219:                                              ; preds = %218, %202, %183, %169, %132, %123, %92, %63, %26
  %220 = load %struct.nfs_client*, %struct.nfs_client** %2, align 8
  %221 = getelementptr inbounds %struct.nfs_client, %struct.nfs_client* %220, i32 0, i32 4
  %222 = call i32 @atomic_read(i32* %221)
  %223 = icmp sgt i32 %222, 1
  br i1 %223, label %6, label %224

224:                                              ; preds = %219, %217, %210
  br label %243

225:                                              ; preds = %201, %173, %136, %96, %72, %37
  %226 = load i8*, i8** %4, align 8
  %227 = call i64 @strlen(i8* %226)
  %228 = icmp ne i64 %227, 0
  br i1 %228, label %229, label %230

229:                                              ; preds = %225
  store i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.7, i64 0, i64 0), i8** %5, align 8
  br label %230

230:                                              ; preds = %229, %225
  %231 = load i8*, i8** %5, align 8
  %232 = load i8*, i8** %4, align 8
  %233 = load %struct.nfs_client*, %struct.nfs_client** %2, align 8
  %234 = getelementptr inbounds %struct.nfs_client, %struct.nfs_client* %233, i32 0, i32 2
  %235 = load i32, i32* %234, align 8
  %236 = load i32, i32* %3, align 4
  %237 = sub nsw i32 0, %236
  %238 = call i32 @pr_warn_ratelimited(i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str.8, i64 0, i64 0), i8* %231, i8* %232, i32 %235, i32 %237)
  %239 = load %struct.nfs_client*, %struct.nfs_client** %2, align 8
  %240 = call i32 @nfs4_end_drain_session(%struct.nfs_client* %239)
  %241 = load %struct.nfs_client*, %struct.nfs_client** %2, align 8
  %242 = call i32 @nfs4_clear_state_manager_bit(%struct.nfs_client* %241)
  br label %243

243:                                              ; preds = %230, %224
  ret void
}

declare dso_local i64 @test_and_clear_bit(i32, i64*) #1

declare dso_local i32 @nfs4_reclaim_lease(%struct.nfs_client*) #1

declare dso_local i32 @nfs4_set_lease_expired(%struct.nfs_client*, i32) #1

declare dso_local i64 @test_bit(i32, i64*) #1

declare dso_local i32 @nfs_mark_client_ready(%struct.nfs_client*, i32) #1

declare dso_local i32 @clear_bit(i32, i64*) #1

declare dso_local i32 @set_bit(i32, i64*) #1

declare dso_local i32 @pnfs_destroy_all_layouts(%struct.nfs_client*) #1

declare dso_local i32 @nfs4_check_lease(%struct.nfs_client*) #1

declare dso_local i64 @nfs4_has_session(%struct.nfs_client*) #1

declare dso_local i32 @nfs4_reset_session(%struct.nfs_client*) #1

declare dso_local i32 @nfs4_do_reclaim(%struct.nfs_client*, i32) #1

declare dso_local i32 @nfs4_state_end_reclaim_reboot(%struct.nfs_client*) #1

declare dso_local i32 @nfs4_end_drain_session(%struct.nfs_client*) #1

declare dso_local i32 @nfs_client_return_marked_delegations(%struct.nfs_client*) #1

declare dso_local i32 @nfs4_recall_slot(%struct.nfs_client*) #1

declare dso_local i32 @nfs4_clear_state_manager_bit(%struct.nfs_client*) #1

declare dso_local i64 @test_and_set_bit(i32, i64*) #1

declare dso_local i32 @atomic_read(i32*) #1

declare dso_local i64 @strlen(i8*) #1

declare dso_local i32 @pr_warn_ratelimited(i8*, i8*, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

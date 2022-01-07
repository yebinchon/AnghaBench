; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/security/selinux/extr_hooks.c_selinux_bprm_set_creds.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/security/selinux/extr_hooks.c_selinux_bprm_set_creds.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.linux_binprm = type { i32, i32, %struct.TYPE_15__*, %struct.TYPE_10__*, i64 }
%struct.TYPE_15__ = type { %struct.TYPE_14__ }
%struct.TYPE_14__ = type { %struct.TYPE_13__*, %struct.TYPE_9__* }
%struct.TYPE_13__ = type { i32 }
%struct.TYPE_9__ = type { %struct.inode* }
%struct.inode = type { %struct.inode_security_struct* }
%struct.inode_security_struct = type { i64 }
%struct.TYPE_10__ = type { %struct.task_security_struct* }
%struct.task_security_struct = type { i64, i64, i64, i64, i64, i64 }
%struct.common_audit_data = type { %struct.TYPE_12__ }
%struct.TYPE_12__ = type { %struct.TYPE_11__ }
%struct.TYPE_11__ = type { %struct.TYPE_14__ }
%struct.task_struct = type { i32 }
%struct.TYPE_16__ = type { %struct.task_security_struct* }

@SECCLASS_PROCESS = common dso_local global i32 0, align 4
@FS = common dso_local global i32 0, align 4
@MNT_NOSUID = common dso_local global i32 0, align 4
@SECCLASS_FILE = common dso_local global i32 0, align 4
@FILE__EXECUTE_NO_TRANS = common dso_local global i32 0, align 4
@PROCESS__TRANSITION = common dso_local global i32 0, align 4
@FILE__ENTRYPOINT = common dso_local global i32 0, align 4
@LSM_UNSAFE_SHARE = common dso_local global i32 0, align 4
@PROCESS__SHARE = common dso_local global i32 0, align 4
@EPERM = common dso_local global i32 0, align 4
@LSM_UNSAFE_PTRACE = common dso_local global i32 0, align 4
@LSM_UNSAFE_PTRACE_CAP = common dso_local global i32 0, align 4
@current = common dso_local global i32 0, align 4
@PROCESS__PTRACE = common dso_local global i32 0, align 4
@PER_CLEAR_ON_SETID = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.linux_binprm*)* @selinux_bprm_set_creds to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @selinux_bprm_set_creds(%struct.linux_binprm* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.linux_binprm*, align 8
  %4 = alloca %struct.task_security_struct*, align 8
  %5 = alloca %struct.task_security_struct*, align 8
  %6 = alloca %struct.inode_security_struct*, align 8
  %7 = alloca %struct.common_audit_data, align 8
  %8 = alloca %struct.inode*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.task_struct*, align 8
  %11 = alloca %struct.task_security_struct*, align 8
  %12 = alloca i64, align 8
  store %struct.linux_binprm* %0, %struct.linux_binprm** %3, align 8
  %13 = load %struct.linux_binprm*, %struct.linux_binprm** %3, align 8
  %14 = getelementptr inbounds %struct.linux_binprm, %struct.linux_binprm* %13, i32 0, i32 2
  %15 = load %struct.TYPE_15__*, %struct.TYPE_15__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %16, i32 0, i32 1
  %18 = load %struct.TYPE_9__*, %struct.TYPE_9__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %18, i32 0, i32 0
  %20 = load %struct.inode*, %struct.inode** %19, align 8
  store %struct.inode* %20, %struct.inode** %8, align 8
  %21 = load %struct.linux_binprm*, %struct.linux_binprm** %3, align 8
  %22 = call i32 @cap_bprm_set_creds(%struct.linux_binprm* %21)
  store i32 %22, i32* %9, align 4
  %23 = load i32, i32* %9, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %27

25:                                               ; preds = %1
  %26 = load i32, i32* %9, align 4
  store i32 %26, i32* %2, align 4
  br label %242

27:                                               ; preds = %1
  %28 = load %struct.linux_binprm*, %struct.linux_binprm** %3, align 8
  %29 = getelementptr inbounds %struct.linux_binprm, %struct.linux_binprm* %28, i32 0, i32 4
  %30 = load i64, i64* %29, align 8
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %33

32:                                               ; preds = %27
  store i32 0, i32* %2, align 4
  br label %242

33:                                               ; preds = %27
  %34 = call %struct.task_security_struct* (...) @current_security()
  store %struct.task_security_struct* %34, %struct.task_security_struct** %4, align 8
  %35 = load %struct.linux_binprm*, %struct.linux_binprm** %3, align 8
  %36 = getelementptr inbounds %struct.linux_binprm, %struct.linux_binprm* %35, i32 0, i32 3
  %37 = load %struct.TYPE_10__*, %struct.TYPE_10__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %37, i32 0, i32 0
  %39 = load %struct.task_security_struct*, %struct.task_security_struct** %38, align 8
  store %struct.task_security_struct* %39, %struct.task_security_struct** %5, align 8
  %40 = load %struct.inode*, %struct.inode** %8, align 8
  %41 = getelementptr inbounds %struct.inode, %struct.inode* %40, i32 0, i32 0
  %42 = load %struct.inode_security_struct*, %struct.inode_security_struct** %41, align 8
  store %struct.inode_security_struct* %42, %struct.inode_security_struct** %6, align 8
  %43 = load %struct.task_security_struct*, %struct.task_security_struct** %4, align 8
  %44 = getelementptr inbounds %struct.task_security_struct, %struct.task_security_struct* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = load %struct.task_security_struct*, %struct.task_security_struct** %5, align 8
  %47 = getelementptr inbounds %struct.task_security_struct, %struct.task_security_struct* %46, i32 0, i32 0
  store i64 %45, i64* %47, align 8
  %48 = load %struct.task_security_struct*, %struct.task_security_struct** %4, align 8
  %49 = getelementptr inbounds %struct.task_security_struct, %struct.task_security_struct* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = load %struct.task_security_struct*, %struct.task_security_struct** %5, align 8
  %52 = getelementptr inbounds %struct.task_security_struct, %struct.task_security_struct* %51, i32 0, i32 1
  store i64 %50, i64* %52, align 8
  %53 = load %struct.task_security_struct*, %struct.task_security_struct** %5, align 8
  %54 = getelementptr inbounds %struct.task_security_struct, %struct.task_security_struct* %53, i32 0, i32 5
  store i64 0, i64* %54, align 8
  %55 = load %struct.task_security_struct*, %struct.task_security_struct** %5, align 8
  %56 = getelementptr inbounds %struct.task_security_struct, %struct.task_security_struct* %55, i32 0, i32 4
  store i64 0, i64* %56, align 8
  %57 = load %struct.task_security_struct*, %struct.task_security_struct** %5, align 8
  %58 = getelementptr inbounds %struct.task_security_struct, %struct.task_security_struct* %57, i32 0, i32 3
  store i64 0, i64* %58, align 8
  %59 = load %struct.task_security_struct*, %struct.task_security_struct** %4, align 8
  %60 = getelementptr inbounds %struct.task_security_struct, %struct.task_security_struct* %59, i32 0, i32 2
  %61 = load i64, i64* %60, align 8
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %71

63:                                               ; preds = %33
  %64 = load %struct.task_security_struct*, %struct.task_security_struct** %4, align 8
  %65 = getelementptr inbounds %struct.task_security_struct, %struct.task_security_struct* %64, i32 0, i32 2
  %66 = load i64, i64* %65, align 8
  %67 = load %struct.task_security_struct*, %struct.task_security_struct** %5, align 8
  %68 = getelementptr inbounds %struct.task_security_struct, %struct.task_security_struct* %67, i32 0, i32 0
  store i64 %66, i64* %68, align 8
  %69 = load %struct.task_security_struct*, %struct.task_security_struct** %5, align 8
  %70 = getelementptr inbounds %struct.task_security_struct, %struct.task_security_struct* %69, i32 0, i32 2
  store i64 0, i64* %70, align 8
  br label %87

71:                                               ; preds = %33
  %72 = load %struct.task_security_struct*, %struct.task_security_struct** %4, align 8
  %73 = getelementptr inbounds %struct.task_security_struct, %struct.task_security_struct* %72, i32 0, i32 0
  %74 = load i64, i64* %73, align 8
  %75 = load %struct.inode_security_struct*, %struct.inode_security_struct** %6, align 8
  %76 = getelementptr inbounds %struct.inode_security_struct, %struct.inode_security_struct* %75, i32 0, i32 0
  %77 = load i64, i64* %76, align 8
  %78 = load i32, i32* @SECCLASS_PROCESS, align 4
  %79 = load %struct.task_security_struct*, %struct.task_security_struct** %5, align 8
  %80 = getelementptr inbounds %struct.task_security_struct, %struct.task_security_struct* %79, i32 0, i32 0
  %81 = call i32 @security_transition_sid(i64 %74, i64 %77, i32 %78, i64* %80)
  store i32 %81, i32* %9, align 4
  %82 = load i32, i32* %9, align 4
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %84, label %86

84:                                               ; preds = %71
  %85 = load i32, i32* %9, align 4
  store i32 %85, i32* %2, align 4
  br label %242

86:                                               ; preds = %71
  br label %87

87:                                               ; preds = %86, %63
  %88 = load i32, i32* @FS, align 4
  %89 = call i32 @COMMON_AUDIT_DATA_INIT(%struct.common_audit_data* %7, i32 %88)
  %90 = getelementptr inbounds %struct.common_audit_data, %struct.common_audit_data* %7, i32 0, i32 0
  %91 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %90, i32 0, i32 0
  %92 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %91, i32 0, i32 0
  %93 = load %struct.linux_binprm*, %struct.linux_binprm** %3, align 8
  %94 = getelementptr inbounds %struct.linux_binprm, %struct.linux_binprm* %93, i32 0, i32 2
  %95 = load %struct.TYPE_15__*, %struct.TYPE_15__** %94, align 8
  %96 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %95, i32 0, i32 0
  %97 = bitcast %struct.TYPE_14__* %92 to i8*
  %98 = bitcast %struct.TYPE_14__* %96 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %97, i8* align 8 %98, i64 16, i1 false)
  %99 = load %struct.linux_binprm*, %struct.linux_binprm** %3, align 8
  %100 = getelementptr inbounds %struct.linux_binprm, %struct.linux_binprm* %99, i32 0, i32 2
  %101 = load %struct.TYPE_15__*, %struct.TYPE_15__** %100, align 8
  %102 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %101, i32 0, i32 0
  %103 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %102, i32 0, i32 0
  %104 = load %struct.TYPE_13__*, %struct.TYPE_13__** %103, align 8
  %105 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %104, i32 0, i32 0
  %106 = load i32, i32* %105, align 4
  %107 = load i32, i32* @MNT_NOSUID, align 4
  %108 = and i32 %106, %107
  %109 = icmp ne i32 %108, 0
  br i1 %109, label %110, label %116

110:                                              ; preds = %87
  %111 = load %struct.task_security_struct*, %struct.task_security_struct** %4, align 8
  %112 = getelementptr inbounds %struct.task_security_struct, %struct.task_security_struct* %111, i32 0, i32 0
  %113 = load i64, i64* %112, align 8
  %114 = load %struct.task_security_struct*, %struct.task_security_struct** %5, align 8
  %115 = getelementptr inbounds %struct.task_security_struct, %struct.task_security_struct* %114, i32 0, i32 0
  store i64 %113, i64* %115, align 8
  br label %116

116:                                              ; preds = %110, %87
  %117 = load %struct.task_security_struct*, %struct.task_security_struct** %5, align 8
  %118 = getelementptr inbounds %struct.task_security_struct, %struct.task_security_struct* %117, i32 0, i32 0
  %119 = load i64, i64* %118, align 8
  %120 = load %struct.task_security_struct*, %struct.task_security_struct** %4, align 8
  %121 = getelementptr inbounds %struct.task_security_struct, %struct.task_security_struct* %120, i32 0, i32 0
  %122 = load i64, i64* %121, align 8
  %123 = icmp eq i64 %119, %122
  br i1 %123, label %124, label %139

124:                                              ; preds = %116
  %125 = load %struct.task_security_struct*, %struct.task_security_struct** %4, align 8
  %126 = getelementptr inbounds %struct.task_security_struct, %struct.task_security_struct* %125, i32 0, i32 0
  %127 = load i64, i64* %126, align 8
  %128 = load %struct.inode_security_struct*, %struct.inode_security_struct** %6, align 8
  %129 = getelementptr inbounds %struct.inode_security_struct, %struct.inode_security_struct* %128, i32 0, i32 0
  %130 = load i64, i64* %129, align 8
  %131 = load i32, i32* @SECCLASS_FILE, align 4
  %132 = load i32, i32* @FILE__EXECUTE_NO_TRANS, align 4
  %133 = call i32 @avc_has_perm(i64 %127, i64 %130, i32 %131, i32 %132, %struct.common_audit_data* %7)
  store i32 %133, i32* %9, align 4
  %134 = load i32, i32* %9, align 4
  %135 = icmp ne i32 %134, 0
  br i1 %135, label %136, label %138

136:                                              ; preds = %124
  %137 = load i32, i32* %9, align 4
  store i32 %137, i32* %2, align 4
  br label %242

138:                                              ; preds = %124
  br label %241

139:                                              ; preds = %116
  %140 = load %struct.task_security_struct*, %struct.task_security_struct** %4, align 8
  %141 = getelementptr inbounds %struct.task_security_struct, %struct.task_security_struct* %140, i32 0, i32 0
  %142 = load i64, i64* %141, align 8
  %143 = load %struct.task_security_struct*, %struct.task_security_struct** %5, align 8
  %144 = getelementptr inbounds %struct.task_security_struct, %struct.task_security_struct* %143, i32 0, i32 0
  %145 = load i64, i64* %144, align 8
  %146 = load i32, i32* @SECCLASS_PROCESS, align 4
  %147 = load i32, i32* @PROCESS__TRANSITION, align 4
  %148 = call i32 @avc_has_perm(i64 %142, i64 %145, i32 %146, i32 %147, %struct.common_audit_data* %7)
  store i32 %148, i32* %9, align 4
  %149 = load i32, i32* %9, align 4
  %150 = icmp ne i32 %149, 0
  br i1 %150, label %151, label %153

151:                                              ; preds = %139
  %152 = load i32, i32* %9, align 4
  store i32 %152, i32* %2, align 4
  br label %242

153:                                              ; preds = %139
  %154 = load %struct.task_security_struct*, %struct.task_security_struct** %5, align 8
  %155 = getelementptr inbounds %struct.task_security_struct, %struct.task_security_struct* %154, i32 0, i32 0
  %156 = load i64, i64* %155, align 8
  %157 = load %struct.inode_security_struct*, %struct.inode_security_struct** %6, align 8
  %158 = getelementptr inbounds %struct.inode_security_struct, %struct.inode_security_struct* %157, i32 0, i32 0
  %159 = load i64, i64* %158, align 8
  %160 = load i32, i32* @SECCLASS_FILE, align 4
  %161 = load i32, i32* @FILE__ENTRYPOINT, align 4
  %162 = call i32 @avc_has_perm(i64 %156, i64 %159, i32 %160, i32 %161, %struct.common_audit_data* %7)
  store i32 %162, i32* %9, align 4
  %163 = load i32, i32* %9, align 4
  %164 = icmp ne i32 %163, 0
  br i1 %164, label %165, label %167

165:                                              ; preds = %153
  %166 = load i32, i32* %9, align 4
  store i32 %166, i32* %2, align 4
  br label %242

167:                                              ; preds = %153
  %168 = load %struct.linux_binprm*, %struct.linux_binprm** %3, align 8
  %169 = getelementptr inbounds %struct.linux_binprm, %struct.linux_binprm* %168, i32 0, i32 0
  %170 = load i32, i32* %169, align 8
  %171 = load i32, i32* @LSM_UNSAFE_SHARE, align 4
  %172 = and i32 %170, %171
  %173 = icmp ne i32 %172, 0
  br i1 %173, label %174, label %190

174:                                              ; preds = %167
  %175 = load %struct.task_security_struct*, %struct.task_security_struct** %4, align 8
  %176 = getelementptr inbounds %struct.task_security_struct, %struct.task_security_struct* %175, i32 0, i32 0
  %177 = load i64, i64* %176, align 8
  %178 = load %struct.task_security_struct*, %struct.task_security_struct** %5, align 8
  %179 = getelementptr inbounds %struct.task_security_struct, %struct.task_security_struct* %178, i32 0, i32 0
  %180 = load i64, i64* %179, align 8
  %181 = load i32, i32* @SECCLASS_PROCESS, align 4
  %182 = load i32, i32* @PROCESS__SHARE, align 4
  %183 = call i32 @avc_has_perm(i64 %177, i64 %180, i32 %181, i32 %182, %struct.common_audit_data* null)
  store i32 %183, i32* %9, align 4
  %184 = load i32, i32* %9, align 4
  %185 = icmp ne i32 %184, 0
  br i1 %185, label %186, label %189

186:                                              ; preds = %174
  %187 = load i32, i32* @EPERM, align 4
  %188 = sub nsw i32 0, %187
  store i32 %188, i32* %2, align 4
  br label %242

189:                                              ; preds = %174
  br label %190

190:                                              ; preds = %189, %167
  %191 = load %struct.linux_binprm*, %struct.linux_binprm** %3, align 8
  %192 = getelementptr inbounds %struct.linux_binprm, %struct.linux_binprm* %191, i32 0, i32 0
  %193 = load i32, i32* %192, align 8
  %194 = load i32, i32* @LSM_UNSAFE_PTRACE, align 4
  %195 = load i32, i32* @LSM_UNSAFE_PTRACE_CAP, align 4
  %196 = or i32 %194, %195
  %197 = and i32 %193, %196
  %198 = icmp ne i32 %197, 0
  br i1 %198, label %199, label %235

199:                                              ; preds = %190
  store i64 0, i64* %12, align 8
  %200 = call i32 (...) @rcu_read_lock()
  %201 = load i32, i32* @current, align 4
  %202 = call %struct.task_struct* @tracehook_tracer_task(i32 %201)
  store %struct.task_struct* %202, %struct.task_struct** %10, align 8
  %203 = load %struct.task_struct*, %struct.task_struct** %10, align 8
  %204 = icmp ne %struct.task_struct* %203, null
  %205 = zext i1 %204 to i32
  %206 = call i64 @likely(i32 %205)
  %207 = icmp ne i64 %206, 0
  br i1 %207, label %208, label %216

208:                                              ; preds = %199
  %209 = load %struct.task_struct*, %struct.task_struct** %10, align 8
  %210 = call %struct.TYPE_16__* @__task_cred(%struct.task_struct* %209)
  %211 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %210, i32 0, i32 0
  %212 = load %struct.task_security_struct*, %struct.task_security_struct** %211, align 8
  store %struct.task_security_struct* %212, %struct.task_security_struct** %11, align 8
  %213 = load %struct.task_security_struct*, %struct.task_security_struct** %11, align 8
  %214 = getelementptr inbounds %struct.task_security_struct, %struct.task_security_struct* %213, i32 0, i32 0
  %215 = load i64, i64* %214, align 8
  store i64 %215, i64* %12, align 8
  br label %216

216:                                              ; preds = %208, %199
  %217 = call i32 (...) @rcu_read_unlock()
  %218 = load i64, i64* %12, align 8
  %219 = icmp ne i64 %218, 0
  br i1 %219, label %220, label %234

220:                                              ; preds = %216
  %221 = load i64, i64* %12, align 8
  %222 = load %struct.task_security_struct*, %struct.task_security_struct** %5, align 8
  %223 = getelementptr inbounds %struct.task_security_struct, %struct.task_security_struct* %222, i32 0, i32 0
  %224 = load i64, i64* %223, align 8
  %225 = load i32, i32* @SECCLASS_PROCESS, align 4
  %226 = load i32, i32* @PROCESS__PTRACE, align 4
  %227 = call i32 @avc_has_perm(i64 %221, i64 %224, i32 %225, i32 %226, %struct.common_audit_data* null)
  store i32 %227, i32* %9, align 4
  %228 = load i32, i32* %9, align 4
  %229 = icmp ne i32 %228, 0
  br i1 %229, label %230, label %233

230:                                              ; preds = %220
  %231 = load i32, i32* @EPERM, align 4
  %232 = sub nsw i32 0, %231
  store i32 %232, i32* %2, align 4
  br label %242

233:                                              ; preds = %220
  br label %234

234:                                              ; preds = %233, %216
  br label %235

235:                                              ; preds = %234, %190
  %236 = load i32, i32* @PER_CLEAR_ON_SETID, align 4
  %237 = load %struct.linux_binprm*, %struct.linux_binprm** %3, align 8
  %238 = getelementptr inbounds %struct.linux_binprm, %struct.linux_binprm* %237, i32 0, i32 1
  %239 = load i32, i32* %238, align 4
  %240 = or i32 %239, %236
  store i32 %240, i32* %238, align 4
  br label %241

241:                                              ; preds = %235, %138
  store i32 0, i32* %2, align 4
  br label %242

242:                                              ; preds = %241, %230, %186, %165, %151, %136, %84, %32, %25
  %243 = load i32, i32* %2, align 4
  ret i32 %243
}

declare dso_local i32 @cap_bprm_set_creds(%struct.linux_binprm*) #1

declare dso_local %struct.task_security_struct* @current_security(...) #1

declare dso_local i32 @security_transition_sid(i64, i64, i32, i64*) #1

declare dso_local i32 @COMMON_AUDIT_DATA_INIT(%struct.common_audit_data*, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @avc_has_perm(i64, i64, i32, i32, %struct.common_audit_data*) #1

declare dso_local i32 @rcu_read_lock(...) #1

declare dso_local %struct.task_struct* @tracehook_tracer_task(i32) #1

declare dso_local i64 @likely(i32) #1

declare dso_local %struct.TYPE_16__* @__task_cred(%struct.task_struct*) #1

declare dso_local i32 @rcu_read_unlock(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

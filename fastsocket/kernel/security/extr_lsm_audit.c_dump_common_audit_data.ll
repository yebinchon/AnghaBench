; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/security/extr_lsm_audit.c_dump_common_audit_data.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/security/extr_lsm_audit.c_dump_common_audit_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.task_struct = type { i8*, i64 }
%struct.audit_buffer = type { i32 }
%struct.common_audit_data = type { i32, %struct.TYPE_11__, %struct.task_struct* }
%struct.TYPE_11__ = type { i8*, %struct.TYPE_12__, %struct.TYPE_20__, %struct.task_struct*, %struct.TYPE_13__, i32, i32 }
%struct.TYPE_12__ = type { i8*, i32 }
%struct.TYPE_20__ = type { i32, i32, %struct.TYPE_19__, i32, %struct.TYPE_18__, i32, %struct.sock* }
%struct.TYPE_19__ = type { i32, i32 }
%struct.TYPE_18__ = type { i32, i32 }
%struct.sock = type { i32 }
%struct.TYPE_13__ = type { %struct.inode*, %struct.path }
%struct.inode = type { i32, %struct.TYPE_15__* }
%struct.TYPE_15__ = type { i32 }
%struct.path = type { i32, %struct.dentry* }
%struct.dentry = type { %struct.TYPE_14__, %struct.inode* }
%struct.TYPE_14__ = type { i8* }
%struct.unix_sock = type { %struct.TYPE_17__*, i32, %struct.dentry* }
%struct.TYPE_17__ = type { %struct.TYPE_16__*, i32 }
%struct.TYPE_16__ = type { i8* }
%struct.inet_sock = type { i32, i32, i32, i32 }
%struct.ipv6_pinfo = type { i32, i32 }
%struct.net_device = type { i32 }

@current = common dso_local global %struct.task_struct* null, align 8
@.str = private unnamed_addr constant [14 x i8] c" pid=%d comm=\00", align 1
@.str.1 = private unnamed_addr constant [9 x i8] c" key=%d \00", align 1
@.str.2 = private unnamed_addr constant [16 x i8] c" capability=%d \00", align 1
@.str.3 = private unnamed_addr constant [6 x i8] c"path=\00", align 1
@.str.4 = private unnamed_addr constant [7 x i8] c" name=\00", align 1
@.str.5 = private unnamed_addr constant [16 x i8] c" dev=%s ino=%lu\00", align 1
@.str.6 = private unnamed_addr constant [6 x i8] c"laddr\00", align 1
@.str.7 = private unnamed_addr constant [6 x i8] c"lport\00", align 1
@.str.8 = private unnamed_addr constant [6 x i8] c"faddr\00", align 1
@.str.9 = private unnamed_addr constant [6 x i8] c"fport\00", align 1
@.str.10 = private unnamed_addr constant [7 x i8] c" path=\00", align 1
@.str.11 = private unnamed_addr constant [6 x i8] c"saddr\00", align 1
@.str.12 = private unnamed_addr constant [4 x i8] c"src\00", align 1
@.str.13 = private unnamed_addr constant [6 x i8] c"daddr\00", align 1
@.str.14 = private unnamed_addr constant [5 x i8] c"dest\00", align 1
@init_net = common dso_local global i32 0, align 4
@.str.15 = private unnamed_addr constant [10 x i8] c" netif=%s\00", align 1
@.str.16 = private unnamed_addr constant [7 x i8] c" kmod=\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.audit_buffer*, %struct.common_audit_data*)* @dump_common_audit_data to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dump_common_audit_data(%struct.audit_buffer* %0, %struct.common_audit_data* %1) #0 {
  %3 = alloca %struct.audit_buffer*, align 8
  %4 = alloca %struct.common_audit_data*, align 8
  %5 = alloca %struct.inode*, align 8
  %6 = alloca %struct.task_struct*, align 8
  %7 = alloca %struct.dentry*, align 8
  %8 = alloca %struct.dentry*, align 8
  %9 = alloca %struct.sock*, align 8
  %10 = alloca %struct.unix_sock*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  %13 = alloca %struct.inet_sock*, align 8
  %14 = alloca %struct.inet_sock*, align 8
  %15 = alloca %struct.ipv6_pinfo*, align 8
  %16 = alloca %struct.path, align 8
  %17 = alloca %struct.net_device*, align 8
  store %struct.audit_buffer* %0, %struct.audit_buffer** %3, align 8
  store %struct.common_audit_data* %1, %struct.common_audit_data** %4, align 8
  store %struct.inode* null, %struct.inode** %5, align 8
  %18 = load %struct.task_struct*, %struct.task_struct** @current, align 8
  store %struct.task_struct* %18, %struct.task_struct** %6, align 8
  %19 = load %struct.common_audit_data*, %struct.common_audit_data** %4, align 8
  %20 = getelementptr inbounds %struct.common_audit_data, %struct.common_audit_data* %19, i32 0, i32 2
  %21 = load %struct.task_struct*, %struct.task_struct** %20, align 8
  %22 = icmp ne %struct.task_struct* %21, null
  br i1 %22, label %23, label %27

23:                                               ; preds = %2
  %24 = load %struct.common_audit_data*, %struct.common_audit_data** %4, align 8
  %25 = getelementptr inbounds %struct.common_audit_data, %struct.common_audit_data* %24, i32 0, i32 2
  %26 = load %struct.task_struct*, %struct.task_struct** %25, align 8
  store %struct.task_struct* %26, %struct.task_struct** %6, align 8
  br label %27

27:                                               ; preds = %23, %2
  %28 = load %struct.task_struct*, %struct.task_struct** %6, align 8
  %29 = icmp ne %struct.task_struct* %28, null
  br i1 %29, label %30, label %46

30:                                               ; preds = %27
  %31 = load %struct.task_struct*, %struct.task_struct** %6, align 8
  %32 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %31, i32 0, i32 1
  %33 = load i64, i64* %32, align 8
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %46

35:                                               ; preds = %30
  %36 = load %struct.audit_buffer*, %struct.audit_buffer** %3, align 8
  %37 = load %struct.task_struct*, %struct.task_struct** %6, align 8
  %38 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %37, i32 0, i32 1
  %39 = load i64, i64* %38, align 8
  %40 = call i32 (%struct.audit_buffer*, i8*, ...) @audit_log_format(%struct.audit_buffer* %36, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i64 %39)
  %41 = load %struct.audit_buffer*, %struct.audit_buffer** %3, align 8
  %42 = load %struct.task_struct*, %struct.task_struct** %6, align 8
  %43 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %42, i32 0, i32 0
  %44 = load i8*, i8** %43, align 8
  %45 = call i32 @audit_log_untrustedstring(%struct.audit_buffer* %41, i8* %44)
  br label %46

46:                                               ; preds = %35, %30, %27
  %47 = load %struct.common_audit_data*, %struct.common_audit_data** %4, align 8
  %48 = getelementptr inbounds %struct.common_audit_data, %struct.common_audit_data* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  switch i32 %49, label %380 [
    i32 128, label %50
    i32 133, label %51
    i32 135, label %58
    i32 134, label %65
    i32 129, label %152
    i32 130, label %176
    i32 131, label %371
  ]

50:                                               ; preds = %46
  br label %380

51:                                               ; preds = %46
  %52 = load %struct.audit_buffer*, %struct.audit_buffer** %3, align 8
  %53 = load %struct.common_audit_data*, %struct.common_audit_data** %4, align 8
  %54 = getelementptr inbounds %struct.common_audit_data, %struct.common_audit_data* %53, i32 0, i32 1
  %55 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %54, i32 0, i32 6
  %56 = load i32, i32* %55, align 4
  %57 = call i32 (%struct.audit_buffer*, i8*, ...) @audit_log_format(%struct.audit_buffer* %52, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), i32 %56)
  br label %380

58:                                               ; preds = %46
  %59 = load %struct.audit_buffer*, %struct.audit_buffer** %3, align 8
  %60 = load %struct.common_audit_data*, %struct.common_audit_data** %4, align 8
  %61 = getelementptr inbounds %struct.common_audit_data, %struct.common_audit_data* %60, i32 0, i32 1
  %62 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %61, i32 0, i32 5
  %63 = load i32, i32* %62, align 8
  %64 = call i32 (%struct.audit_buffer*, i8*, ...) @audit_log_format(%struct.audit_buffer* %59, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.2, i64 0, i64 0), i32 %63)
  br label %380

65:                                               ; preds = %46
  %66 = load %struct.common_audit_data*, %struct.common_audit_data** %4, align 8
  %67 = getelementptr inbounds %struct.common_audit_data, %struct.common_audit_data* %66, i32 0, i32 1
  %68 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %67, i32 0, i32 4
  %69 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %68, i32 0, i32 1
  %70 = getelementptr inbounds %struct.path, %struct.path* %69, i32 0, i32 1
  %71 = load %struct.dentry*, %struct.dentry** %70, align 8
  %72 = icmp ne %struct.dentry* %71, null
  br i1 %72, label %73, label %107

73:                                               ; preds = %65
  %74 = load %struct.common_audit_data*, %struct.common_audit_data** %4, align 8
  %75 = getelementptr inbounds %struct.common_audit_data, %struct.common_audit_data* %74, i32 0, i32 1
  %76 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %75, i32 0, i32 4
  %77 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %76, i32 0, i32 1
  %78 = getelementptr inbounds %struct.path, %struct.path* %77, i32 0, i32 1
  %79 = load %struct.dentry*, %struct.dentry** %78, align 8
  store %struct.dentry* %79, %struct.dentry** %7, align 8
  %80 = load %struct.common_audit_data*, %struct.common_audit_data** %4, align 8
  %81 = getelementptr inbounds %struct.common_audit_data, %struct.common_audit_data* %80, i32 0, i32 1
  %82 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %81, i32 0, i32 4
  %83 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %82, i32 0, i32 1
  %84 = getelementptr inbounds %struct.path, %struct.path* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 8
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %87, label %94

87:                                               ; preds = %73
  %88 = load %struct.audit_buffer*, %struct.audit_buffer** %3, align 8
  %89 = load %struct.common_audit_data*, %struct.common_audit_data** %4, align 8
  %90 = getelementptr inbounds %struct.common_audit_data, %struct.common_audit_data* %89, i32 0, i32 1
  %91 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %90, i32 0, i32 4
  %92 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %91, i32 0, i32 1
  %93 = call i32 @audit_log_d_path(%struct.audit_buffer* %88, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0), %struct.path* %92)
  br label %103

94:                                               ; preds = %73
  %95 = load %struct.audit_buffer*, %struct.audit_buffer** %3, align 8
  %96 = call i32 (%struct.audit_buffer*, i8*, ...) @audit_log_format(%struct.audit_buffer* %95, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i64 0, i64 0))
  %97 = load %struct.audit_buffer*, %struct.audit_buffer** %3, align 8
  %98 = load %struct.dentry*, %struct.dentry** %7, align 8
  %99 = getelementptr inbounds %struct.dentry, %struct.dentry* %98, i32 0, i32 0
  %100 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %99, i32 0, i32 0
  %101 = load i8*, i8** %100, align 8
  %102 = call i32 @audit_log_untrustedstring(%struct.audit_buffer* %97, i8* %101)
  br label %103

103:                                              ; preds = %94, %87
  %104 = load %struct.dentry*, %struct.dentry** %7, align 8
  %105 = getelementptr inbounds %struct.dentry, %struct.dentry* %104, i32 0, i32 1
  %106 = load %struct.inode*, %struct.inode** %105, align 8
  store %struct.inode* %106, %struct.inode** %5, align 8
  br label %137

107:                                              ; preds = %65
  %108 = load %struct.common_audit_data*, %struct.common_audit_data** %4, align 8
  %109 = getelementptr inbounds %struct.common_audit_data, %struct.common_audit_data* %108, i32 0, i32 1
  %110 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %109, i32 0, i32 4
  %111 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %110, i32 0, i32 0
  %112 = load %struct.inode*, %struct.inode** %111, align 8
  %113 = icmp ne %struct.inode* %112, null
  br i1 %113, label %114, label %136

114:                                              ; preds = %107
  %115 = load %struct.common_audit_data*, %struct.common_audit_data** %4, align 8
  %116 = getelementptr inbounds %struct.common_audit_data, %struct.common_audit_data* %115, i32 0, i32 1
  %117 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %116, i32 0, i32 4
  %118 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %117, i32 0, i32 0
  %119 = load %struct.inode*, %struct.inode** %118, align 8
  store %struct.inode* %119, %struct.inode** %5, align 8
  %120 = load %struct.inode*, %struct.inode** %5, align 8
  %121 = call %struct.dentry* @d_find_alias(%struct.inode* %120)
  store %struct.dentry* %121, %struct.dentry** %8, align 8
  %122 = load %struct.dentry*, %struct.dentry** %8, align 8
  %123 = icmp ne %struct.dentry* %122, null
  br i1 %123, label %124, label %135

124:                                              ; preds = %114
  %125 = load %struct.audit_buffer*, %struct.audit_buffer** %3, align 8
  %126 = call i32 (%struct.audit_buffer*, i8*, ...) @audit_log_format(%struct.audit_buffer* %125, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i64 0, i64 0))
  %127 = load %struct.audit_buffer*, %struct.audit_buffer** %3, align 8
  %128 = load %struct.dentry*, %struct.dentry** %8, align 8
  %129 = getelementptr inbounds %struct.dentry, %struct.dentry* %128, i32 0, i32 0
  %130 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %129, i32 0, i32 0
  %131 = load i8*, i8** %130, align 8
  %132 = call i32 @audit_log_untrustedstring(%struct.audit_buffer* %127, i8* %131)
  %133 = load %struct.dentry*, %struct.dentry** %8, align 8
  %134 = call i32 @dput(%struct.dentry* %133)
  br label %135

135:                                              ; preds = %124, %114
  br label %136

136:                                              ; preds = %135, %107
  br label %137

137:                                              ; preds = %136, %103
  %138 = load %struct.inode*, %struct.inode** %5, align 8
  %139 = icmp ne %struct.inode* %138, null
  br i1 %139, label %140, label %151

140:                                              ; preds = %137
  %141 = load %struct.audit_buffer*, %struct.audit_buffer** %3, align 8
  %142 = load %struct.inode*, %struct.inode** %5, align 8
  %143 = getelementptr inbounds %struct.inode, %struct.inode* %142, i32 0, i32 1
  %144 = load %struct.TYPE_15__*, %struct.TYPE_15__** %143, align 8
  %145 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %144, i32 0, i32 0
  %146 = load i32, i32* %145, align 4
  %147 = load %struct.inode*, %struct.inode** %5, align 8
  %148 = getelementptr inbounds %struct.inode, %struct.inode* %147, i32 0, i32 0
  %149 = load i32, i32* %148, align 8
  %150 = call i32 (%struct.audit_buffer*, i8*, ...) @audit_log_format(%struct.audit_buffer* %141, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.5, i64 0, i64 0), i32 %146, i32 %149)
  br label %151

151:                                              ; preds = %140, %137
  br label %380

152:                                              ; preds = %46
  %153 = load %struct.common_audit_data*, %struct.common_audit_data** %4, align 8
  %154 = getelementptr inbounds %struct.common_audit_data, %struct.common_audit_data* %153, i32 0, i32 1
  %155 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %154, i32 0, i32 3
  %156 = load %struct.task_struct*, %struct.task_struct** %155, align 8
  store %struct.task_struct* %156, %struct.task_struct** %6, align 8
  %157 = load %struct.task_struct*, %struct.task_struct** %6, align 8
  %158 = icmp ne %struct.task_struct* %157, null
  br i1 %158, label %159, label %175

159:                                              ; preds = %152
  %160 = load %struct.task_struct*, %struct.task_struct** %6, align 8
  %161 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %160, i32 0, i32 1
  %162 = load i64, i64* %161, align 8
  %163 = icmp ne i64 %162, 0
  br i1 %163, label %164, label %175

164:                                              ; preds = %159
  %165 = load %struct.audit_buffer*, %struct.audit_buffer** %3, align 8
  %166 = load %struct.task_struct*, %struct.task_struct** %6, align 8
  %167 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %166, i32 0, i32 1
  %168 = load i64, i64* %167, align 8
  %169 = call i32 (%struct.audit_buffer*, i8*, ...) @audit_log_format(%struct.audit_buffer* %165, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i64 %168)
  %170 = load %struct.audit_buffer*, %struct.audit_buffer** %3, align 8
  %171 = load %struct.task_struct*, %struct.task_struct** %6, align 8
  %172 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %171, i32 0, i32 0
  %173 = load i8*, i8** %172, align 8
  %174 = call i32 @audit_log_untrustedstring(%struct.audit_buffer* %170, i8* %173)
  br label %175

175:                                              ; preds = %164, %159, %152
  br label %380

176:                                              ; preds = %46
  %177 = load %struct.common_audit_data*, %struct.common_audit_data** %4, align 8
  %178 = getelementptr inbounds %struct.common_audit_data, %struct.common_audit_data* %177, i32 0, i32 1
  %179 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %178, i32 0, i32 2
  %180 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %179, i32 0, i32 6
  %181 = load %struct.sock*, %struct.sock** %180, align 8
  %182 = icmp ne %struct.sock* %181, null
  br i1 %182, label %183, label %287

183:                                              ; preds = %176
  %184 = load %struct.common_audit_data*, %struct.common_audit_data** %4, align 8
  %185 = getelementptr inbounds %struct.common_audit_data, %struct.common_audit_data* %184, i32 0, i32 1
  %186 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %185, i32 0, i32 2
  %187 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %186, i32 0, i32 6
  %188 = load %struct.sock*, %struct.sock** %187, align 8
  store %struct.sock* %188, %struct.sock** %9, align 8
  store i32 0, i32* %11, align 4
  store i8* null, i8** %12, align 8
  %189 = load %struct.sock*, %struct.sock** %9, align 8
  %190 = getelementptr inbounds %struct.sock, %struct.sock* %189, i32 0, i32 0
  %191 = load i32, i32* %190, align 4
  switch i32 %191, label %286 [
    i32 138, label %192
    i32 137, label %211
    i32 136, label %230
  ]

192:                                              ; preds = %183
  %193 = load %struct.sock*, %struct.sock** %9, align 8
  %194 = call %struct.inet_sock* @inet_sk(%struct.sock* %193)
  store %struct.inet_sock* %194, %struct.inet_sock** %13, align 8
  %195 = load %struct.audit_buffer*, %struct.audit_buffer** %3, align 8
  %196 = load %struct.inet_sock*, %struct.inet_sock** %13, align 8
  %197 = getelementptr inbounds %struct.inet_sock, %struct.inet_sock* %196, i32 0, i32 3
  %198 = load i32, i32* %197, align 4
  %199 = load %struct.inet_sock*, %struct.inet_sock** %13, align 8
  %200 = getelementptr inbounds %struct.inet_sock, %struct.inet_sock* %199, i32 0, i32 1
  %201 = load i32, i32* %200, align 4
  %202 = call i32 @print_ipv4_addr(%struct.audit_buffer* %195, i32 %198, i32 %201, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.7, i64 0, i64 0))
  %203 = load %struct.audit_buffer*, %struct.audit_buffer** %3, align 8
  %204 = load %struct.inet_sock*, %struct.inet_sock** %13, align 8
  %205 = getelementptr inbounds %struct.inet_sock, %struct.inet_sock* %204, i32 0, i32 2
  %206 = load i32, i32* %205, align 4
  %207 = load %struct.inet_sock*, %struct.inet_sock** %13, align 8
  %208 = getelementptr inbounds %struct.inet_sock, %struct.inet_sock* %207, i32 0, i32 0
  %209 = load i32, i32* %208, align 4
  %210 = call i32 @print_ipv4_addr(%struct.audit_buffer* %203, i32 %206, i32 %209, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.8, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.9, i64 0, i64 0))
  br label %286

211:                                              ; preds = %183
  %212 = load %struct.sock*, %struct.sock** %9, align 8
  %213 = call %struct.inet_sock* @inet_sk(%struct.sock* %212)
  store %struct.inet_sock* %213, %struct.inet_sock** %14, align 8
  %214 = load %struct.sock*, %struct.sock** %9, align 8
  %215 = call %struct.ipv6_pinfo* @inet6_sk(%struct.sock* %214)
  store %struct.ipv6_pinfo* %215, %struct.ipv6_pinfo** %15, align 8
  %216 = load %struct.audit_buffer*, %struct.audit_buffer** %3, align 8
  %217 = load %struct.ipv6_pinfo*, %struct.ipv6_pinfo** %15, align 8
  %218 = getelementptr inbounds %struct.ipv6_pinfo, %struct.ipv6_pinfo* %217, i32 0, i32 1
  %219 = load %struct.inet_sock*, %struct.inet_sock** %14, align 8
  %220 = getelementptr inbounds %struct.inet_sock, %struct.inet_sock* %219, i32 0, i32 1
  %221 = load i32, i32* %220, align 4
  %222 = call i32 @print_ipv6_addr(%struct.audit_buffer* %216, i32* %218, i32 %221, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.7, i64 0, i64 0))
  %223 = load %struct.audit_buffer*, %struct.audit_buffer** %3, align 8
  %224 = load %struct.ipv6_pinfo*, %struct.ipv6_pinfo** %15, align 8
  %225 = getelementptr inbounds %struct.ipv6_pinfo, %struct.ipv6_pinfo* %224, i32 0, i32 0
  %226 = load %struct.inet_sock*, %struct.inet_sock** %14, align 8
  %227 = getelementptr inbounds %struct.inet_sock, %struct.inet_sock* %226, i32 0, i32 0
  %228 = load i32, i32* %227, align 4
  %229 = call i32 @print_ipv6_addr(%struct.audit_buffer* %223, i32* %225, i32 %228, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.8, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.9, i64 0, i64 0))
  br label %286

230:                                              ; preds = %183
  %231 = load %struct.sock*, %struct.sock** %9, align 8
  %232 = call %struct.unix_sock* @unix_sk(%struct.sock* %231)
  store %struct.unix_sock* %232, %struct.unix_sock** %10, align 8
  %233 = load %struct.unix_sock*, %struct.unix_sock** %10, align 8
  %234 = getelementptr inbounds %struct.unix_sock, %struct.unix_sock* %233, i32 0, i32 2
  %235 = load %struct.dentry*, %struct.dentry** %234, align 8
  %236 = icmp ne %struct.dentry* %235, null
  br i1 %236, label %237, label %248

237:                                              ; preds = %230
  %238 = getelementptr inbounds %struct.path, %struct.path* %16, i32 0, i32 0
  %239 = load %struct.unix_sock*, %struct.unix_sock** %10, align 8
  %240 = getelementptr inbounds %struct.unix_sock, %struct.unix_sock* %239, i32 0, i32 1
  %241 = load i32, i32* %240, align 8
  store i32 %241, i32* %238, align 8
  %242 = getelementptr inbounds %struct.path, %struct.path* %16, i32 0, i32 1
  %243 = load %struct.unix_sock*, %struct.unix_sock** %10, align 8
  %244 = getelementptr inbounds %struct.unix_sock, %struct.unix_sock* %243, i32 0, i32 2
  %245 = load %struct.dentry*, %struct.dentry** %244, align 8
  store %struct.dentry* %245, %struct.dentry** %242, align 8
  %246 = load %struct.audit_buffer*, %struct.audit_buffer** %3, align 8
  %247 = call i32 @audit_log_d_path(%struct.audit_buffer* %246, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0), %struct.path* %16)
  br label %286

248:                                              ; preds = %230
  %249 = load %struct.unix_sock*, %struct.unix_sock** %10, align 8
  %250 = getelementptr inbounds %struct.unix_sock, %struct.unix_sock* %249, i32 0, i32 0
  %251 = load %struct.TYPE_17__*, %struct.TYPE_17__** %250, align 8
  %252 = icmp ne %struct.TYPE_17__* %251, null
  br i1 %252, label %254, label %253

253:                                              ; preds = %248
  br label %286

254:                                              ; preds = %248
  %255 = load %struct.unix_sock*, %struct.unix_sock** %10, align 8
  %256 = getelementptr inbounds %struct.unix_sock, %struct.unix_sock* %255, i32 0, i32 0
  %257 = load %struct.TYPE_17__*, %struct.TYPE_17__** %256, align 8
  %258 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %257, i32 0, i32 1
  %259 = load i32, i32* %258, align 8
  %260 = sext i32 %259 to i64
  %261 = sub i64 %260, 2
  %262 = trunc i64 %261 to i32
  store i32 %262, i32* %11, align 4
  %263 = load %struct.unix_sock*, %struct.unix_sock** %10, align 8
  %264 = getelementptr inbounds %struct.unix_sock, %struct.unix_sock* %263, i32 0, i32 0
  %265 = load %struct.TYPE_17__*, %struct.TYPE_17__** %264, align 8
  %266 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %265, i32 0, i32 0
  %267 = load %struct.TYPE_16__*, %struct.TYPE_16__** %266, align 8
  %268 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %267, i32 0, i32 0
  %269 = load i8*, i8** %268, align 8
  %270 = getelementptr inbounds i8, i8* %269, i64 0
  store i8* %270, i8** %12, align 8
  %271 = load %struct.audit_buffer*, %struct.audit_buffer** %3, align 8
  %272 = call i32 (%struct.audit_buffer*, i8*, ...) @audit_log_format(%struct.audit_buffer* %271, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.10, i64 0, i64 0))
  %273 = load i8*, i8** %12, align 8
  %274 = load i8, i8* %273, align 1
  %275 = icmp ne i8 %274, 0
  br i1 %275, label %276, label %280

276:                                              ; preds = %254
  %277 = load %struct.audit_buffer*, %struct.audit_buffer** %3, align 8
  %278 = load i8*, i8** %12, align 8
  %279 = call i32 @audit_log_untrustedstring(%struct.audit_buffer* %277, i8* %278)
  br label %285

280:                                              ; preds = %254
  %281 = load %struct.audit_buffer*, %struct.audit_buffer** %3, align 8
  %282 = load i8*, i8** %12, align 8
  %283 = load i32, i32* %11, align 4
  %284 = call i32 @audit_log_n_hex(%struct.audit_buffer* %281, i8* %282, i32 %283)
  br label %285

285:                                              ; preds = %280, %276
  br label %286

286:                                              ; preds = %183, %285, %253, %237, %211, %192
  br label %287

287:                                              ; preds = %286, %176
  %288 = load %struct.common_audit_data*, %struct.common_audit_data** %4, align 8
  %289 = getelementptr inbounds %struct.common_audit_data, %struct.common_audit_data* %288, i32 0, i32 1
  %290 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %289, i32 0, i32 2
  %291 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %290, i32 0, i32 5
  %292 = load i32, i32* %291, align 4
  switch i32 %292, label %345 [
    i32 138, label %293
    i32 137, label %320
  ]

293:                                              ; preds = %287
  %294 = load %struct.audit_buffer*, %struct.audit_buffer** %3, align 8
  %295 = load %struct.common_audit_data*, %struct.common_audit_data** %4, align 8
  %296 = getelementptr inbounds %struct.common_audit_data, %struct.common_audit_data* %295, i32 0, i32 1
  %297 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %296, i32 0, i32 2
  %298 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %297, i32 0, i32 4
  %299 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %298, i32 0, i32 1
  %300 = load i32, i32* %299, align 4
  %301 = load %struct.common_audit_data*, %struct.common_audit_data** %4, align 8
  %302 = getelementptr inbounds %struct.common_audit_data, %struct.common_audit_data* %301, i32 0, i32 1
  %303 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %302, i32 0, i32 2
  %304 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %303, i32 0, i32 3
  %305 = load i32, i32* %304, align 8
  %306 = call i32 @print_ipv4_addr(%struct.audit_buffer* %294, i32 %300, i32 %305, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.11, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.12, i64 0, i64 0))
  %307 = load %struct.audit_buffer*, %struct.audit_buffer** %3, align 8
  %308 = load %struct.common_audit_data*, %struct.common_audit_data** %4, align 8
  %309 = getelementptr inbounds %struct.common_audit_data, %struct.common_audit_data* %308, i32 0, i32 1
  %310 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %309, i32 0, i32 2
  %311 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %310, i32 0, i32 4
  %312 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %311, i32 0, i32 0
  %313 = load i32, i32* %312, align 4
  %314 = load %struct.common_audit_data*, %struct.common_audit_data** %4, align 8
  %315 = getelementptr inbounds %struct.common_audit_data, %struct.common_audit_data* %314, i32 0, i32 1
  %316 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %315, i32 0, i32 2
  %317 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %316, i32 0, i32 1
  %318 = load i32, i32* %317, align 4
  %319 = call i32 @print_ipv4_addr(%struct.audit_buffer* %307, i32 %313, i32 %318, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.13, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.14, i64 0, i64 0))
  br label %345

320:                                              ; preds = %287
  %321 = load %struct.audit_buffer*, %struct.audit_buffer** %3, align 8
  %322 = load %struct.common_audit_data*, %struct.common_audit_data** %4, align 8
  %323 = getelementptr inbounds %struct.common_audit_data, %struct.common_audit_data* %322, i32 0, i32 1
  %324 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %323, i32 0, i32 2
  %325 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %324, i32 0, i32 2
  %326 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %325, i32 0, i32 1
  %327 = load %struct.common_audit_data*, %struct.common_audit_data** %4, align 8
  %328 = getelementptr inbounds %struct.common_audit_data, %struct.common_audit_data* %327, i32 0, i32 1
  %329 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %328, i32 0, i32 2
  %330 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %329, i32 0, i32 3
  %331 = load i32, i32* %330, align 8
  %332 = call i32 @print_ipv6_addr(%struct.audit_buffer* %321, i32* %326, i32 %331, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.11, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.12, i64 0, i64 0))
  %333 = load %struct.audit_buffer*, %struct.audit_buffer** %3, align 8
  %334 = load %struct.common_audit_data*, %struct.common_audit_data** %4, align 8
  %335 = getelementptr inbounds %struct.common_audit_data, %struct.common_audit_data* %334, i32 0, i32 1
  %336 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %335, i32 0, i32 2
  %337 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %336, i32 0, i32 2
  %338 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %337, i32 0, i32 0
  %339 = load %struct.common_audit_data*, %struct.common_audit_data** %4, align 8
  %340 = getelementptr inbounds %struct.common_audit_data, %struct.common_audit_data* %339, i32 0, i32 1
  %341 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %340, i32 0, i32 2
  %342 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %341, i32 0, i32 1
  %343 = load i32, i32* %342, align 4
  %344 = call i32 @print_ipv6_addr(%struct.audit_buffer* %333, i32* %338, i32 %343, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.13, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.14, i64 0, i64 0))
  br label %345

345:                                              ; preds = %287, %320, %293
  %346 = load %struct.common_audit_data*, %struct.common_audit_data** %4, align 8
  %347 = getelementptr inbounds %struct.common_audit_data, %struct.common_audit_data* %346, i32 0, i32 1
  %348 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %347, i32 0, i32 2
  %349 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %348, i32 0, i32 0
  %350 = load i32, i32* %349, align 8
  %351 = icmp sgt i32 %350, 0
  br i1 %351, label %352, label %370

352:                                              ; preds = %345
  %353 = load %struct.common_audit_data*, %struct.common_audit_data** %4, align 8
  %354 = getelementptr inbounds %struct.common_audit_data, %struct.common_audit_data* %353, i32 0, i32 1
  %355 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %354, i32 0, i32 2
  %356 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %355, i32 0, i32 0
  %357 = load i32, i32* %356, align 8
  %358 = call %struct.net_device* @dev_get_by_index(i32* @init_net, i32 %357)
  store %struct.net_device* %358, %struct.net_device** %17, align 8
  %359 = load %struct.net_device*, %struct.net_device** %17, align 8
  %360 = icmp ne %struct.net_device* %359, null
  br i1 %360, label %361, label %369

361:                                              ; preds = %352
  %362 = load %struct.audit_buffer*, %struct.audit_buffer** %3, align 8
  %363 = load %struct.net_device*, %struct.net_device** %17, align 8
  %364 = getelementptr inbounds %struct.net_device, %struct.net_device* %363, i32 0, i32 0
  %365 = load i32, i32* %364, align 4
  %366 = call i32 (%struct.audit_buffer*, i8*, ...) @audit_log_format(%struct.audit_buffer* %362, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.15, i64 0, i64 0), i32 %365)
  %367 = load %struct.net_device*, %struct.net_device** %17, align 8
  %368 = call i32 @dev_put(%struct.net_device* %367)
  br label %369

369:                                              ; preds = %361, %352
  br label %370

370:                                              ; preds = %369, %345
  br label %380

371:                                              ; preds = %46
  %372 = load %struct.audit_buffer*, %struct.audit_buffer** %3, align 8
  %373 = call i32 (%struct.audit_buffer*, i8*, ...) @audit_log_format(%struct.audit_buffer* %372, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.16, i64 0, i64 0))
  %374 = load %struct.audit_buffer*, %struct.audit_buffer** %3, align 8
  %375 = load %struct.common_audit_data*, %struct.common_audit_data** %4, align 8
  %376 = getelementptr inbounds %struct.common_audit_data, %struct.common_audit_data* %375, i32 0, i32 1
  %377 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %376, i32 0, i32 0
  %378 = load i8*, i8** %377, align 8
  %379 = call i32 @audit_log_untrustedstring(%struct.audit_buffer* %374, i8* %378)
  br label %380

380:                                              ; preds = %50, %46, %371, %370, %175, %151, %58, %51
  ret void
}

declare dso_local i32 @audit_log_format(%struct.audit_buffer*, i8*, ...) #1

declare dso_local i32 @audit_log_untrustedstring(%struct.audit_buffer*, i8*) #1

declare dso_local i32 @audit_log_d_path(%struct.audit_buffer*, i8*, %struct.path*) #1

declare dso_local %struct.dentry* @d_find_alias(%struct.inode*) #1

declare dso_local i32 @dput(%struct.dentry*) #1

declare dso_local %struct.inet_sock* @inet_sk(%struct.sock*) #1

declare dso_local i32 @print_ipv4_addr(%struct.audit_buffer*, i32, i32, i8*, i8*) #1

declare dso_local %struct.ipv6_pinfo* @inet6_sk(%struct.sock*) #1

declare dso_local i32 @print_ipv6_addr(%struct.audit_buffer*, i32*, i32, i8*, i8*) #1

declare dso_local %struct.unix_sock* @unix_sk(%struct.sock*) #1

declare dso_local i32 @audit_log_n_hex(%struct.audit_buffer*, i8*, i32) #1

declare dso_local %struct.net_device* @dev_get_by_index(i32*, i32) #1

declare dso_local i32 @dev_put(%struct.net_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

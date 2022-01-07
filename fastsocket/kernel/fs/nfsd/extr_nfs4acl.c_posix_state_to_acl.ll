; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/nfsd/extr_nfs4acl.c_posix_state_to_acl.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/nfsd/extr_nfs4acl.c_posix_state_to_acl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.posix_acl = type { %struct.posix_acl_entry* }
%struct.posix_acl_entry = type { i8*, i32, i32 }
%struct.posix_acl_state = type { %struct.TYPE_15__, %struct.TYPE_14__, %struct.TYPE_13__*, %struct.TYPE_16__, %struct.TYPE_11__*, %struct.TYPE_9__, i64 }
%struct.TYPE_15__ = type { i32, i32 }
%struct.TYPE_14__ = type { i32 }
%struct.TYPE_13__ = type { i32, %struct.TYPE_12__* }
%struct.TYPE_12__ = type { %struct.TYPE_16__, i8* }
%struct.TYPE_16__ = type { i32, i32 }
%struct.TYPE_11__ = type { i32, %struct.TYPE_10__* }
%struct.TYPE_10__ = type { %struct.TYPE_16__, i8* }
%struct.TYPE_9__ = type { i32, i32 }

@NFS4_ACL_TYPE_DEFAULT = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@ACL_USER_OBJ = common dso_local global i32 0, align 4
@ACL_UNDEFINED_ID = common dso_local global i8* null, align 8
@ACL_USER = common dso_local global i32 0, align 4
@ACL_GROUP_OBJ = common dso_local global i32 0, align 4
@ACL_GROUP = common dso_local global i32 0, align 4
@ACL_MASK = common dso_local global i32 0, align 4
@ACL_OTHER = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.posix_acl* (%struct.posix_acl_state*, i32)* @posix_state_to_acl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.posix_acl* @posix_state_to_acl(%struct.posix_acl_state* %0, i32 %1) #0 {
  %3 = alloca %struct.posix_acl*, align 8
  %4 = alloca %struct.posix_acl_state*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.posix_acl_entry*, align 8
  %7 = alloca %struct.posix_acl*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.posix_acl_state* %0, %struct.posix_acl_state** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 0, i32* %10, align 4
  %11 = load %struct.posix_acl_state*, %struct.posix_acl_state** %4, align 8
  %12 = getelementptr inbounds %struct.posix_acl_state, %struct.posix_acl_state* %11, i32 0, i32 6
  %13 = load i64, i64* %12, align 8
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %33

15:                                               ; preds = %2
  %16 = load i32, i32* %5, align 4
  %17 = load i32, i32* @NFS4_ACL_TYPE_DEFAULT, align 4
  %18 = and i32 %16, %17
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %33

20:                                               ; preds = %15
  %21 = load i32, i32* @GFP_KERNEL, align 4
  %22 = call %struct.posix_acl* @posix_acl_alloc(i32 0, i32 %21)
  store %struct.posix_acl* %22, %struct.posix_acl** %7, align 8
  %23 = load %struct.posix_acl*, %struct.posix_acl** %7, align 8
  %24 = icmp ne %struct.posix_acl* %23, null
  br i1 %24, label %25, label %27

25:                                               ; preds = %20
  %26 = load %struct.posix_acl*, %struct.posix_acl** %7, align 8
  br label %31

27:                                               ; preds = %20
  %28 = load i32, i32* @ENOMEM, align 4
  %29 = sub nsw i32 0, %28
  %30 = call %struct.posix_acl* @ERR_PTR(i32 %29)
  br label %31

31:                                               ; preds = %27, %25
  %32 = phi %struct.posix_acl* [ %26, %25 ], [ %30, %27 ]
  store %struct.posix_acl* %32, %struct.posix_acl** %3, align 8
  br label %302

33:                                               ; preds = %15, %2
  %34 = load %struct.posix_acl_state*, %struct.posix_acl_state** %4, align 8
  %35 = getelementptr inbounds %struct.posix_acl_state, %struct.posix_acl_state* %34, i32 0, i32 4
  %36 = load %struct.TYPE_11__*, %struct.TYPE_11__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = add nsw i32 4, %38
  %40 = load %struct.posix_acl_state*, %struct.posix_acl_state** %4, align 8
  %41 = getelementptr inbounds %struct.posix_acl_state, %struct.posix_acl_state* %40, i32 0, i32 2
  %42 = load %struct.TYPE_13__*, %struct.TYPE_13__** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = add nsw i32 %39, %44
  store i32 %45, i32* %8, align 4
  %46 = load i32, i32* %8, align 4
  %47 = load i32, i32* @GFP_KERNEL, align 4
  %48 = call %struct.posix_acl* @posix_acl_alloc(i32 %46, i32 %47)
  store %struct.posix_acl* %48, %struct.posix_acl** %7, align 8
  %49 = load %struct.posix_acl*, %struct.posix_acl** %7, align 8
  %50 = icmp ne %struct.posix_acl* %49, null
  br i1 %50, label %55, label %51

51:                                               ; preds = %33
  %52 = load i32, i32* @ENOMEM, align 4
  %53 = sub nsw i32 0, %52
  %54 = call %struct.posix_acl* @ERR_PTR(i32 %53)
  store %struct.posix_acl* %54, %struct.posix_acl** %3, align 8
  br label %302

55:                                               ; preds = %33
  %56 = load %struct.posix_acl*, %struct.posix_acl** %7, align 8
  %57 = getelementptr inbounds %struct.posix_acl, %struct.posix_acl* %56, i32 0, i32 0
  %58 = load %struct.posix_acl_entry*, %struct.posix_acl_entry** %57, align 8
  store %struct.posix_acl_entry* %58, %struct.posix_acl_entry** %6, align 8
  %59 = load i32, i32* @ACL_USER_OBJ, align 4
  %60 = load %struct.posix_acl_entry*, %struct.posix_acl_entry** %6, align 8
  %61 = getelementptr inbounds %struct.posix_acl_entry, %struct.posix_acl_entry* %60, i32 0, i32 2
  store i32 %59, i32* %61, align 4
  %62 = load %struct.posix_acl_state*, %struct.posix_acl_state** %4, align 8
  %63 = getelementptr inbounds %struct.posix_acl_state, %struct.posix_acl_state* %62, i32 0, i32 5
  %64 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %63, i32 0, i32 1
  %65 = load i32, i32* %64, align 4
  %66 = call i32 @check_deny(i32 %65, i32 1)
  store i32 %66, i32* %10, align 4
  %67 = load i32, i32* %10, align 4
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %70

69:                                               ; preds = %55
  br label %297

70:                                               ; preds = %55
  %71 = load %struct.posix_acl_state*, %struct.posix_acl_state** %4, align 8
  %72 = getelementptr inbounds %struct.posix_acl_state, %struct.posix_acl_state* %71, i32 0, i32 5
  %73 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 8
  %75 = load %struct.posix_acl_entry*, %struct.posix_acl_entry** %6, align 8
  %76 = getelementptr inbounds %struct.posix_acl_entry, %struct.posix_acl_entry* %75, i32 0, i32 1
  %77 = load i32, i32* %5, align 4
  %78 = call i32 @low_mode_from_nfs4(i32 %74, i32* %76, i32 %77)
  %79 = load i8*, i8** @ACL_UNDEFINED_ID, align 8
  %80 = load %struct.posix_acl_entry*, %struct.posix_acl_entry** %6, align 8
  %81 = getelementptr inbounds %struct.posix_acl_entry, %struct.posix_acl_entry* %80, i32 0, i32 0
  store i8* %79, i8** %81, align 8
  store i32 0, i32* %9, align 4
  br label %82

82:                                               ; preds = %150, %70
  %83 = load i32, i32* %9, align 4
  %84 = load %struct.posix_acl_state*, %struct.posix_acl_state** %4, align 8
  %85 = getelementptr inbounds %struct.posix_acl_state, %struct.posix_acl_state* %84, i32 0, i32 4
  %86 = load %struct.TYPE_11__*, %struct.TYPE_11__** %85, align 8
  %87 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 8
  %89 = icmp slt i32 %83, %88
  br i1 %89, label %90, label %153

90:                                               ; preds = %82
  %91 = load %struct.posix_acl_entry*, %struct.posix_acl_entry** %6, align 8
  %92 = getelementptr inbounds %struct.posix_acl_entry, %struct.posix_acl_entry* %91, i32 1
  store %struct.posix_acl_entry* %92, %struct.posix_acl_entry** %6, align 8
  %93 = load i32, i32* @ACL_USER, align 4
  %94 = load %struct.posix_acl_entry*, %struct.posix_acl_entry** %6, align 8
  %95 = getelementptr inbounds %struct.posix_acl_entry, %struct.posix_acl_entry* %94, i32 0, i32 2
  store i32 %93, i32* %95, align 4
  %96 = load %struct.posix_acl_state*, %struct.posix_acl_state** %4, align 8
  %97 = getelementptr inbounds %struct.posix_acl_state, %struct.posix_acl_state* %96, i32 0, i32 4
  %98 = load %struct.TYPE_11__*, %struct.TYPE_11__** %97, align 8
  %99 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %98, i32 0, i32 1
  %100 = load %struct.TYPE_10__*, %struct.TYPE_10__** %99, align 8
  %101 = load i32, i32* %9, align 4
  %102 = sext i32 %101 to i64
  %103 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %100, i64 %102
  %104 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %103, i32 0, i32 0
  %105 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %104, i32 0, i32 1
  %106 = load i32, i32* %105, align 4
  %107 = call i32 @check_deny(i32 %106, i32 0)
  store i32 %107, i32* %10, align 4
  %108 = load i32, i32* %10, align 4
  %109 = icmp ne i32 %108, 0
  br i1 %109, label %110, label %111

110:                                              ; preds = %90
  br label %297

111:                                              ; preds = %90
  %112 = load %struct.posix_acl_state*, %struct.posix_acl_state** %4, align 8
  %113 = getelementptr inbounds %struct.posix_acl_state, %struct.posix_acl_state* %112, i32 0, i32 4
  %114 = load %struct.TYPE_11__*, %struct.TYPE_11__** %113, align 8
  %115 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %114, i32 0, i32 1
  %116 = load %struct.TYPE_10__*, %struct.TYPE_10__** %115, align 8
  %117 = load i32, i32* %9, align 4
  %118 = sext i32 %117 to i64
  %119 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %116, i64 %118
  %120 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %119, i32 0, i32 0
  %121 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %120, i32 0, i32 0
  %122 = load i32, i32* %121, align 8
  %123 = load %struct.posix_acl_entry*, %struct.posix_acl_entry** %6, align 8
  %124 = getelementptr inbounds %struct.posix_acl_entry, %struct.posix_acl_entry* %123, i32 0, i32 1
  %125 = load i32, i32* %5, align 4
  %126 = call i32 @low_mode_from_nfs4(i32 %122, i32* %124, i32 %125)
  %127 = load %struct.posix_acl_state*, %struct.posix_acl_state** %4, align 8
  %128 = getelementptr inbounds %struct.posix_acl_state, %struct.posix_acl_state* %127, i32 0, i32 4
  %129 = load %struct.TYPE_11__*, %struct.TYPE_11__** %128, align 8
  %130 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %129, i32 0, i32 1
  %131 = load %struct.TYPE_10__*, %struct.TYPE_10__** %130, align 8
  %132 = load i32, i32* %9, align 4
  %133 = sext i32 %132 to i64
  %134 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %131, i64 %133
  %135 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %134, i32 0, i32 1
  %136 = load i8*, i8** %135, align 8
  %137 = load %struct.posix_acl_entry*, %struct.posix_acl_entry** %6, align 8
  %138 = getelementptr inbounds %struct.posix_acl_entry, %struct.posix_acl_entry* %137, i32 0, i32 0
  store i8* %136, i8** %138, align 8
  %139 = load %struct.posix_acl_state*, %struct.posix_acl_state** %4, align 8
  %140 = load %struct.posix_acl_state*, %struct.posix_acl_state** %4, align 8
  %141 = getelementptr inbounds %struct.posix_acl_state, %struct.posix_acl_state* %140, i32 0, i32 4
  %142 = load %struct.TYPE_11__*, %struct.TYPE_11__** %141, align 8
  %143 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %142, i32 0, i32 1
  %144 = load %struct.TYPE_10__*, %struct.TYPE_10__** %143, align 8
  %145 = load i32, i32* %9, align 4
  %146 = sext i32 %145 to i64
  %147 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %144, i64 %146
  %148 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %147, i32 0, i32 0
  %149 = call i32 @add_to_mask(%struct.posix_acl_state* %139, %struct.TYPE_16__* %148)
  br label %150

150:                                              ; preds = %111
  %151 = load i32, i32* %9, align 4
  %152 = add nsw i32 %151, 1
  store i32 %152, i32* %9, align 4
  br label %82

153:                                              ; preds = %82
  %154 = load %struct.posix_acl_entry*, %struct.posix_acl_entry** %6, align 8
  %155 = getelementptr inbounds %struct.posix_acl_entry, %struct.posix_acl_entry* %154, i32 1
  store %struct.posix_acl_entry* %155, %struct.posix_acl_entry** %6, align 8
  %156 = load i32, i32* @ACL_GROUP_OBJ, align 4
  %157 = load %struct.posix_acl_entry*, %struct.posix_acl_entry** %6, align 8
  %158 = getelementptr inbounds %struct.posix_acl_entry, %struct.posix_acl_entry* %157, i32 0, i32 2
  store i32 %156, i32* %158, align 4
  %159 = load %struct.posix_acl_state*, %struct.posix_acl_state** %4, align 8
  %160 = getelementptr inbounds %struct.posix_acl_state, %struct.posix_acl_state* %159, i32 0, i32 3
  %161 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %160, i32 0, i32 1
  %162 = load i32, i32* %161, align 4
  %163 = call i32 @check_deny(i32 %162, i32 0)
  store i32 %163, i32* %10, align 4
  %164 = load i32, i32* %10, align 4
  %165 = icmp ne i32 %164, 0
  br i1 %165, label %166, label %167

166:                                              ; preds = %153
  br label %297

167:                                              ; preds = %153
  %168 = load %struct.posix_acl_state*, %struct.posix_acl_state** %4, align 8
  %169 = getelementptr inbounds %struct.posix_acl_state, %struct.posix_acl_state* %168, i32 0, i32 3
  %170 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %169, i32 0, i32 0
  %171 = load i32, i32* %170, align 8
  %172 = load %struct.posix_acl_entry*, %struct.posix_acl_entry** %6, align 8
  %173 = getelementptr inbounds %struct.posix_acl_entry, %struct.posix_acl_entry* %172, i32 0, i32 1
  %174 = load i32, i32* %5, align 4
  %175 = call i32 @low_mode_from_nfs4(i32 %171, i32* %173, i32 %174)
  %176 = load i8*, i8** @ACL_UNDEFINED_ID, align 8
  %177 = load %struct.posix_acl_entry*, %struct.posix_acl_entry** %6, align 8
  %178 = getelementptr inbounds %struct.posix_acl_entry, %struct.posix_acl_entry* %177, i32 0, i32 0
  store i8* %176, i8** %178, align 8
  %179 = load %struct.posix_acl_state*, %struct.posix_acl_state** %4, align 8
  %180 = load %struct.posix_acl_state*, %struct.posix_acl_state** %4, align 8
  %181 = getelementptr inbounds %struct.posix_acl_state, %struct.posix_acl_state* %180, i32 0, i32 3
  %182 = call i32 @add_to_mask(%struct.posix_acl_state* %179, %struct.TYPE_16__* %181)
  store i32 0, i32* %9, align 4
  br label %183

183:                                              ; preds = %251, %167
  %184 = load i32, i32* %9, align 4
  %185 = load %struct.posix_acl_state*, %struct.posix_acl_state** %4, align 8
  %186 = getelementptr inbounds %struct.posix_acl_state, %struct.posix_acl_state* %185, i32 0, i32 2
  %187 = load %struct.TYPE_13__*, %struct.TYPE_13__** %186, align 8
  %188 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %187, i32 0, i32 0
  %189 = load i32, i32* %188, align 8
  %190 = icmp slt i32 %184, %189
  br i1 %190, label %191, label %254

191:                                              ; preds = %183
  %192 = load %struct.posix_acl_entry*, %struct.posix_acl_entry** %6, align 8
  %193 = getelementptr inbounds %struct.posix_acl_entry, %struct.posix_acl_entry* %192, i32 1
  store %struct.posix_acl_entry* %193, %struct.posix_acl_entry** %6, align 8
  %194 = load i32, i32* @ACL_GROUP, align 4
  %195 = load %struct.posix_acl_entry*, %struct.posix_acl_entry** %6, align 8
  %196 = getelementptr inbounds %struct.posix_acl_entry, %struct.posix_acl_entry* %195, i32 0, i32 2
  store i32 %194, i32* %196, align 4
  %197 = load %struct.posix_acl_state*, %struct.posix_acl_state** %4, align 8
  %198 = getelementptr inbounds %struct.posix_acl_state, %struct.posix_acl_state* %197, i32 0, i32 2
  %199 = load %struct.TYPE_13__*, %struct.TYPE_13__** %198, align 8
  %200 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %199, i32 0, i32 1
  %201 = load %struct.TYPE_12__*, %struct.TYPE_12__** %200, align 8
  %202 = load i32, i32* %9, align 4
  %203 = sext i32 %202 to i64
  %204 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %201, i64 %203
  %205 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %204, i32 0, i32 0
  %206 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %205, i32 0, i32 1
  %207 = load i32, i32* %206, align 4
  %208 = call i32 @check_deny(i32 %207, i32 0)
  store i32 %208, i32* %10, align 4
  %209 = load i32, i32* %10, align 4
  %210 = icmp ne i32 %209, 0
  br i1 %210, label %211, label %212

211:                                              ; preds = %191
  br label %297

212:                                              ; preds = %191
  %213 = load %struct.posix_acl_state*, %struct.posix_acl_state** %4, align 8
  %214 = getelementptr inbounds %struct.posix_acl_state, %struct.posix_acl_state* %213, i32 0, i32 2
  %215 = load %struct.TYPE_13__*, %struct.TYPE_13__** %214, align 8
  %216 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %215, i32 0, i32 1
  %217 = load %struct.TYPE_12__*, %struct.TYPE_12__** %216, align 8
  %218 = load i32, i32* %9, align 4
  %219 = sext i32 %218 to i64
  %220 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %217, i64 %219
  %221 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %220, i32 0, i32 0
  %222 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %221, i32 0, i32 0
  %223 = load i32, i32* %222, align 8
  %224 = load %struct.posix_acl_entry*, %struct.posix_acl_entry** %6, align 8
  %225 = getelementptr inbounds %struct.posix_acl_entry, %struct.posix_acl_entry* %224, i32 0, i32 1
  %226 = load i32, i32* %5, align 4
  %227 = call i32 @low_mode_from_nfs4(i32 %223, i32* %225, i32 %226)
  %228 = load %struct.posix_acl_state*, %struct.posix_acl_state** %4, align 8
  %229 = getelementptr inbounds %struct.posix_acl_state, %struct.posix_acl_state* %228, i32 0, i32 2
  %230 = load %struct.TYPE_13__*, %struct.TYPE_13__** %229, align 8
  %231 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %230, i32 0, i32 1
  %232 = load %struct.TYPE_12__*, %struct.TYPE_12__** %231, align 8
  %233 = load i32, i32* %9, align 4
  %234 = sext i32 %233 to i64
  %235 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %232, i64 %234
  %236 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %235, i32 0, i32 1
  %237 = load i8*, i8** %236, align 8
  %238 = load %struct.posix_acl_entry*, %struct.posix_acl_entry** %6, align 8
  %239 = getelementptr inbounds %struct.posix_acl_entry, %struct.posix_acl_entry* %238, i32 0, i32 0
  store i8* %237, i8** %239, align 8
  %240 = load %struct.posix_acl_state*, %struct.posix_acl_state** %4, align 8
  %241 = load %struct.posix_acl_state*, %struct.posix_acl_state** %4, align 8
  %242 = getelementptr inbounds %struct.posix_acl_state, %struct.posix_acl_state* %241, i32 0, i32 2
  %243 = load %struct.TYPE_13__*, %struct.TYPE_13__** %242, align 8
  %244 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %243, i32 0, i32 1
  %245 = load %struct.TYPE_12__*, %struct.TYPE_12__** %244, align 8
  %246 = load i32, i32* %9, align 4
  %247 = sext i32 %246 to i64
  %248 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %245, i64 %247
  %249 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %248, i32 0, i32 0
  %250 = call i32 @add_to_mask(%struct.posix_acl_state* %240, %struct.TYPE_16__* %249)
  br label %251

251:                                              ; preds = %212
  %252 = load i32, i32* %9, align 4
  %253 = add nsw i32 %252, 1
  store i32 %253, i32* %9, align 4
  br label %183

254:                                              ; preds = %183
  %255 = load %struct.posix_acl_entry*, %struct.posix_acl_entry** %6, align 8
  %256 = getelementptr inbounds %struct.posix_acl_entry, %struct.posix_acl_entry* %255, i32 1
  store %struct.posix_acl_entry* %256, %struct.posix_acl_entry** %6, align 8
  %257 = load i32, i32* @ACL_MASK, align 4
  %258 = load %struct.posix_acl_entry*, %struct.posix_acl_entry** %6, align 8
  %259 = getelementptr inbounds %struct.posix_acl_entry, %struct.posix_acl_entry* %258, i32 0, i32 2
  store i32 %257, i32* %259, align 4
  %260 = load %struct.posix_acl_state*, %struct.posix_acl_state** %4, align 8
  %261 = getelementptr inbounds %struct.posix_acl_state, %struct.posix_acl_state* %260, i32 0, i32 1
  %262 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %261, i32 0, i32 0
  %263 = load i32, i32* %262, align 8
  %264 = load %struct.posix_acl_entry*, %struct.posix_acl_entry** %6, align 8
  %265 = getelementptr inbounds %struct.posix_acl_entry, %struct.posix_acl_entry* %264, i32 0, i32 1
  %266 = load i32, i32* %5, align 4
  %267 = call i32 @low_mode_from_nfs4(i32 %263, i32* %265, i32 %266)
  %268 = load i8*, i8** @ACL_UNDEFINED_ID, align 8
  %269 = load %struct.posix_acl_entry*, %struct.posix_acl_entry** %6, align 8
  %270 = getelementptr inbounds %struct.posix_acl_entry, %struct.posix_acl_entry* %269, i32 0, i32 0
  store i8* %268, i8** %270, align 8
  %271 = load %struct.posix_acl_entry*, %struct.posix_acl_entry** %6, align 8
  %272 = getelementptr inbounds %struct.posix_acl_entry, %struct.posix_acl_entry* %271, i32 1
  store %struct.posix_acl_entry* %272, %struct.posix_acl_entry** %6, align 8
  %273 = load i32, i32* @ACL_OTHER, align 4
  %274 = load %struct.posix_acl_entry*, %struct.posix_acl_entry** %6, align 8
  %275 = getelementptr inbounds %struct.posix_acl_entry, %struct.posix_acl_entry* %274, i32 0, i32 2
  store i32 %273, i32* %275, align 4
  %276 = load %struct.posix_acl_state*, %struct.posix_acl_state** %4, align 8
  %277 = getelementptr inbounds %struct.posix_acl_state, %struct.posix_acl_state* %276, i32 0, i32 0
  %278 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %277, i32 0, i32 1
  %279 = load i32, i32* %278, align 4
  %280 = call i32 @check_deny(i32 %279, i32 0)
  store i32 %280, i32* %10, align 4
  %281 = load i32, i32* %10, align 4
  %282 = icmp ne i32 %281, 0
  br i1 %282, label %283, label %284

283:                                              ; preds = %254
  br label %297

284:                                              ; preds = %254
  %285 = load %struct.posix_acl_state*, %struct.posix_acl_state** %4, align 8
  %286 = getelementptr inbounds %struct.posix_acl_state, %struct.posix_acl_state* %285, i32 0, i32 0
  %287 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %286, i32 0, i32 0
  %288 = load i32, i32* %287, align 8
  %289 = load %struct.posix_acl_entry*, %struct.posix_acl_entry** %6, align 8
  %290 = getelementptr inbounds %struct.posix_acl_entry, %struct.posix_acl_entry* %289, i32 0, i32 1
  %291 = load i32, i32* %5, align 4
  %292 = call i32 @low_mode_from_nfs4(i32 %288, i32* %290, i32 %291)
  %293 = load i8*, i8** @ACL_UNDEFINED_ID, align 8
  %294 = load %struct.posix_acl_entry*, %struct.posix_acl_entry** %6, align 8
  %295 = getelementptr inbounds %struct.posix_acl_entry, %struct.posix_acl_entry* %294, i32 0, i32 0
  store i8* %293, i8** %295, align 8
  %296 = load %struct.posix_acl*, %struct.posix_acl** %7, align 8
  store %struct.posix_acl* %296, %struct.posix_acl** %3, align 8
  br label %302

297:                                              ; preds = %283, %211, %166, %110, %69
  %298 = load %struct.posix_acl*, %struct.posix_acl** %7, align 8
  %299 = call i32 @posix_acl_release(%struct.posix_acl* %298)
  %300 = load i32, i32* %10, align 4
  %301 = call %struct.posix_acl* @ERR_PTR(i32 %300)
  store %struct.posix_acl* %301, %struct.posix_acl** %3, align 8
  br label %302

302:                                              ; preds = %297, %284, %51, %31
  %303 = load %struct.posix_acl*, %struct.posix_acl** %3, align 8
  ret %struct.posix_acl* %303
}

declare dso_local %struct.posix_acl* @posix_acl_alloc(i32, i32) #1

declare dso_local %struct.posix_acl* @ERR_PTR(i32) #1

declare dso_local i32 @check_deny(i32, i32) #1

declare dso_local i32 @low_mode_from_nfs4(i32, i32*, i32) #1

declare dso_local i32 @add_to_mask(%struct.posix_acl_state*, %struct.TYPE_16__*) #1

declare dso_local i32 @posix_acl_release(%struct.posix_acl*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

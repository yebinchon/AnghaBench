; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/nfsd/extr_nfs4acl.c_process_one_v4_ace.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/nfsd/extr_nfs4acl.c_process_one_v4_ace.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.posix_acl_state = type { %struct.TYPE_8__*, %struct.TYPE_8__*, %struct.TYPE_9__, %struct.TYPE_9__, %struct.TYPE_9__, %struct.TYPE_9__, i64 }
%struct.TYPE_8__ = type { %struct.TYPE_7__* }
%struct.TYPE_7__ = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i32 }
%struct.nfs4_ace = type { i32, i32, i32 }

@NFS4_ACE_ACCESS_ALLOWED_ACE_TYPE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.posix_acl_state*, %struct.nfs4_ace*)* @process_one_v4_ace to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @process_one_v4_ace(%struct.posix_acl_state* %0, %struct.nfs4_ace* %1) #0 {
  %3 = alloca %struct.posix_acl_state*, align 8
  %4 = alloca %struct.nfs4_ace*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.posix_acl_state* %0, %struct.posix_acl_state** %3, align 8
  store %struct.nfs4_ace* %1, %struct.nfs4_ace** %4, align 8
  %7 = load %struct.nfs4_ace*, %struct.nfs4_ace** %4, align 8
  %8 = getelementptr inbounds %struct.nfs4_ace, %struct.nfs4_ace* %7, i32 0, i32 2
  %9 = load i32, i32* %8, align 4
  store i32 %9, i32* %5, align 4
  %10 = load %struct.posix_acl_state*, %struct.posix_acl_state** %3, align 8
  %11 = getelementptr inbounds %struct.posix_acl_state, %struct.posix_acl_state* %10, i32 0, i32 6
  store i64 0, i64* %11, align 8
  %12 = load %struct.nfs4_ace*, %struct.nfs4_ace** %4, align 8
  %13 = call i32 @ace2type(%struct.nfs4_ace* %12)
  switch i32 %13, label %257 [
    i32 128, label %14
    i32 129, label %31
    i32 131, label %85
    i32 132, label %124
    i32 130, label %196
  ]

14:                                               ; preds = %2
  %15 = load %struct.nfs4_ace*, %struct.nfs4_ace** %4, align 8
  %16 = getelementptr inbounds %struct.nfs4_ace, %struct.nfs4_ace* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = load i32, i32* @NFS4_ACE_ACCESS_ALLOWED_ACE_TYPE, align 4
  %19 = icmp eq i32 %17, %18
  br i1 %19, label %20, label %25

20:                                               ; preds = %14
  %21 = load %struct.posix_acl_state*, %struct.posix_acl_state** %3, align 8
  %22 = getelementptr inbounds %struct.posix_acl_state, %struct.posix_acl_state* %21, i32 0, i32 5
  %23 = load i32, i32* %5, align 4
  %24 = call i32 @allow_bits(%struct.TYPE_9__* %22, i32 %23)
  br label %30

25:                                               ; preds = %14
  %26 = load %struct.posix_acl_state*, %struct.posix_acl_state** %3, align 8
  %27 = getelementptr inbounds %struct.posix_acl_state, %struct.posix_acl_state* %26, i32 0, i32 5
  %28 = load i32, i32* %5, align 4
  %29 = call i32 @deny_bits(%struct.TYPE_9__* %27, i32 %28)
  br label %30

30:                                               ; preds = %25, %20
  br label %257

31:                                               ; preds = %2
  %32 = load %struct.posix_acl_state*, %struct.posix_acl_state** %3, align 8
  %33 = load %struct.posix_acl_state*, %struct.posix_acl_state** %3, align 8
  %34 = getelementptr inbounds %struct.posix_acl_state, %struct.posix_acl_state* %33, i32 0, i32 1
  %35 = load %struct.TYPE_8__*, %struct.TYPE_8__** %34, align 8
  %36 = load %struct.nfs4_ace*, %struct.nfs4_ace** %4, align 8
  %37 = getelementptr inbounds %struct.nfs4_ace, %struct.nfs4_ace* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = call i32 @find_uid(%struct.posix_acl_state* %32, %struct.TYPE_8__* %35, i32 %38)
  store i32 %39, i32* %6, align 4
  %40 = load %struct.nfs4_ace*, %struct.nfs4_ace** %4, align 8
  %41 = getelementptr inbounds %struct.nfs4_ace, %struct.nfs4_ace* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = load i32, i32* @NFS4_ACE_ACCESS_ALLOWED_ACE_TYPE, align 4
  %44 = icmp eq i32 %42, %43
  br i1 %44, label %45, label %57

45:                                               ; preds = %31
  %46 = load %struct.posix_acl_state*, %struct.posix_acl_state** %3, align 8
  %47 = getelementptr inbounds %struct.posix_acl_state, %struct.posix_acl_state* %46, i32 0, i32 1
  %48 = load %struct.TYPE_8__*, %struct.TYPE_8__** %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %48, i32 0, i32 0
  %50 = load %struct.TYPE_7__*, %struct.TYPE_7__** %49, align 8
  %51 = load i32, i32* %6, align 4
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %50, i64 %52
  %54 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %53, i32 0, i32 0
  %55 = load i32, i32* %5, align 4
  %56 = call i32 @allow_bits(%struct.TYPE_9__* %54, i32 %55)
  br label %84

57:                                               ; preds = %31
  %58 = load %struct.posix_acl_state*, %struct.posix_acl_state** %3, align 8
  %59 = getelementptr inbounds %struct.posix_acl_state, %struct.posix_acl_state* %58, i32 0, i32 1
  %60 = load %struct.TYPE_8__*, %struct.TYPE_8__** %59, align 8
  %61 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %60, i32 0, i32 0
  %62 = load %struct.TYPE_7__*, %struct.TYPE_7__** %61, align 8
  %63 = load i32, i32* %6, align 4
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %62, i64 %64
  %66 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %65, i32 0, i32 0
  %67 = load i32, i32* %5, align 4
  %68 = call i32 @deny_bits(%struct.TYPE_9__* %66, i32 %67)
  %69 = load %struct.posix_acl_state*, %struct.posix_acl_state** %3, align 8
  %70 = getelementptr inbounds %struct.posix_acl_state, %struct.posix_acl_state* %69, i32 0, i32 1
  %71 = load %struct.TYPE_8__*, %struct.TYPE_8__** %70, align 8
  %72 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %71, i32 0, i32 0
  %73 = load %struct.TYPE_7__*, %struct.TYPE_7__** %72, align 8
  %74 = load i32, i32* %6, align 4
  %75 = sext i32 %74 to i64
  %76 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %73, i64 %75
  %77 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %76, i32 0, i32 0
  %78 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 4
  store i32 %79, i32* %5, align 4
  %80 = load %struct.posix_acl_state*, %struct.posix_acl_state** %3, align 8
  %81 = getelementptr inbounds %struct.posix_acl_state, %struct.posix_acl_state* %80, i32 0, i32 5
  %82 = load i32, i32* %5, align 4
  %83 = call i32 @deny_bits(%struct.TYPE_9__* %81, i32 %82)
  br label %84

84:                                               ; preds = %57, %45
  br label %257

85:                                               ; preds = %2
  %86 = load %struct.nfs4_ace*, %struct.nfs4_ace** %4, align 8
  %87 = getelementptr inbounds %struct.nfs4_ace, %struct.nfs4_ace* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 4
  %89 = load i32, i32* @NFS4_ACE_ACCESS_ALLOWED_ACE_TYPE, align 4
  %90 = icmp eq i32 %88, %89
  br i1 %90, label %91, label %96

91:                                               ; preds = %85
  %92 = load %struct.posix_acl_state*, %struct.posix_acl_state** %3, align 8
  %93 = getelementptr inbounds %struct.posix_acl_state, %struct.posix_acl_state* %92, i32 0, i32 4
  %94 = load i32, i32* %5, align 4
  %95 = call i32 @allow_bits(%struct.TYPE_9__* %93, i32 %94)
  br label %123

96:                                               ; preds = %85
  %97 = load %struct.posix_acl_state*, %struct.posix_acl_state** %3, align 8
  %98 = getelementptr inbounds %struct.posix_acl_state, %struct.posix_acl_state* %97, i32 0, i32 4
  %99 = load i32, i32* %5, align 4
  %100 = call i32 @deny_bits(%struct.TYPE_9__* %98, i32 %99)
  %101 = load %struct.posix_acl_state*, %struct.posix_acl_state** %3, align 8
  %102 = getelementptr inbounds %struct.posix_acl_state, %struct.posix_acl_state* %101, i32 0, i32 4
  %103 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %102, i32 0, i32 0
  %104 = load i32, i32* %103, align 8
  store i32 %104, i32* %5, align 4
  %105 = load %struct.posix_acl_state*, %struct.posix_acl_state** %3, align 8
  %106 = getelementptr inbounds %struct.posix_acl_state, %struct.posix_acl_state* %105, i32 0, i32 5
  %107 = load i32, i32* %5, align 4
  %108 = call i32 @deny_bits(%struct.TYPE_9__* %106, i32 %107)
  %109 = load %struct.posix_acl_state*, %struct.posix_acl_state** %3, align 8
  %110 = getelementptr inbounds %struct.posix_acl_state, %struct.posix_acl_state* %109, i32 0, i32 2
  %111 = load i32, i32* %5, align 4
  %112 = call i32 @deny_bits(%struct.TYPE_9__* %110, i32 %111)
  %113 = load %struct.posix_acl_state*, %struct.posix_acl_state** %3, align 8
  %114 = getelementptr inbounds %struct.posix_acl_state, %struct.posix_acl_state* %113, i32 0, i32 1
  %115 = load %struct.TYPE_8__*, %struct.TYPE_8__** %114, align 8
  %116 = load i32, i32* %5, align 4
  %117 = call i32 @deny_bits_array(%struct.TYPE_8__* %115, i32 %116)
  %118 = load %struct.posix_acl_state*, %struct.posix_acl_state** %3, align 8
  %119 = getelementptr inbounds %struct.posix_acl_state, %struct.posix_acl_state* %118, i32 0, i32 0
  %120 = load %struct.TYPE_8__*, %struct.TYPE_8__** %119, align 8
  %121 = load i32, i32* %5, align 4
  %122 = call i32 @deny_bits_array(%struct.TYPE_8__* %120, i32 %121)
  br label %123

123:                                              ; preds = %96, %91
  br label %257

124:                                              ; preds = %2
  %125 = load %struct.posix_acl_state*, %struct.posix_acl_state** %3, align 8
  %126 = load %struct.posix_acl_state*, %struct.posix_acl_state** %3, align 8
  %127 = getelementptr inbounds %struct.posix_acl_state, %struct.posix_acl_state* %126, i32 0, i32 0
  %128 = load %struct.TYPE_8__*, %struct.TYPE_8__** %127, align 8
  %129 = load %struct.nfs4_ace*, %struct.nfs4_ace** %4, align 8
  %130 = getelementptr inbounds %struct.nfs4_ace, %struct.nfs4_ace* %129, i32 0, i32 1
  %131 = load i32, i32* %130, align 4
  %132 = call i32 @find_uid(%struct.posix_acl_state* %125, %struct.TYPE_8__* %128, i32 %131)
  store i32 %132, i32* %6, align 4
  %133 = load %struct.nfs4_ace*, %struct.nfs4_ace** %4, align 8
  %134 = getelementptr inbounds %struct.nfs4_ace, %struct.nfs4_ace* %133, i32 0, i32 0
  %135 = load i32, i32* %134, align 4
  %136 = load i32, i32* @NFS4_ACE_ACCESS_ALLOWED_ACE_TYPE, align 4
  %137 = icmp eq i32 %135, %136
  br i1 %137, label %138, label %150

138:                                              ; preds = %124
  %139 = load %struct.posix_acl_state*, %struct.posix_acl_state** %3, align 8
  %140 = getelementptr inbounds %struct.posix_acl_state, %struct.posix_acl_state* %139, i32 0, i32 0
  %141 = load %struct.TYPE_8__*, %struct.TYPE_8__** %140, align 8
  %142 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %141, i32 0, i32 0
  %143 = load %struct.TYPE_7__*, %struct.TYPE_7__** %142, align 8
  %144 = load i32, i32* %6, align 4
  %145 = sext i32 %144 to i64
  %146 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %143, i64 %145
  %147 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %146, i32 0, i32 0
  %148 = load i32, i32* %5, align 4
  %149 = call i32 @allow_bits(%struct.TYPE_9__* %147, i32 %148)
  br label %195

150:                                              ; preds = %124
  %151 = load %struct.posix_acl_state*, %struct.posix_acl_state** %3, align 8
  %152 = getelementptr inbounds %struct.posix_acl_state, %struct.posix_acl_state* %151, i32 0, i32 0
  %153 = load %struct.TYPE_8__*, %struct.TYPE_8__** %152, align 8
  %154 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %153, i32 0, i32 0
  %155 = load %struct.TYPE_7__*, %struct.TYPE_7__** %154, align 8
  %156 = load i32, i32* %6, align 4
  %157 = sext i32 %156 to i64
  %158 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %155, i64 %157
  %159 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %158, i32 0, i32 0
  %160 = load i32, i32* %5, align 4
  %161 = call i32 @deny_bits(%struct.TYPE_9__* %159, i32 %160)
  %162 = load %struct.posix_acl_state*, %struct.posix_acl_state** %3, align 8
  %163 = getelementptr inbounds %struct.posix_acl_state, %struct.posix_acl_state* %162, i32 0, i32 0
  %164 = load %struct.TYPE_8__*, %struct.TYPE_8__** %163, align 8
  %165 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %164, i32 0, i32 0
  %166 = load %struct.TYPE_7__*, %struct.TYPE_7__** %165, align 8
  %167 = load i32, i32* %6, align 4
  %168 = sext i32 %167 to i64
  %169 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %166, i64 %168
  %170 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %169, i32 0, i32 0
  %171 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %170, i32 0, i32 0
  %172 = load i32, i32* %171, align 4
  store i32 %172, i32* %5, align 4
  %173 = load %struct.posix_acl_state*, %struct.posix_acl_state** %3, align 8
  %174 = getelementptr inbounds %struct.posix_acl_state, %struct.posix_acl_state* %173, i32 0, i32 5
  %175 = load i32, i32* %5, align 4
  %176 = call i32 @deny_bits(%struct.TYPE_9__* %174, i32 %175)
  %177 = load %struct.posix_acl_state*, %struct.posix_acl_state** %3, align 8
  %178 = getelementptr inbounds %struct.posix_acl_state, %struct.posix_acl_state* %177, i32 0, i32 4
  %179 = load i32, i32* %5, align 4
  %180 = call i32 @deny_bits(%struct.TYPE_9__* %178, i32 %179)
  %181 = load %struct.posix_acl_state*, %struct.posix_acl_state** %3, align 8
  %182 = getelementptr inbounds %struct.posix_acl_state, %struct.posix_acl_state* %181, i32 0, i32 2
  %183 = load i32, i32* %5, align 4
  %184 = call i32 @deny_bits(%struct.TYPE_9__* %182, i32 %183)
  %185 = load %struct.posix_acl_state*, %struct.posix_acl_state** %3, align 8
  %186 = getelementptr inbounds %struct.posix_acl_state, %struct.posix_acl_state* %185, i32 0, i32 1
  %187 = load %struct.TYPE_8__*, %struct.TYPE_8__** %186, align 8
  %188 = load i32, i32* %5, align 4
  %189 = call i32 @deny_bits_array(%struct.TYPE_8__* %187, i32 %188)
  %190 = load %struct.posix_acl_state*, %struct.posix_acl_state** %3, align 8
  %191 = getelementptr inbounds %struct.posix_acl_state, %struct.posix_acl_state* %190, i32 0, i32 0
  %192 = load %struct.TYPE_8__*, %struct.TYPE_8__** %191, align 8
  %193 = load i32, i32* %5, align 4
  %194 = call i32 @deny_bits_array(%struct.TYPE_8__* %192, i32 %193)
  br label %195

195:                                              ; preds = %150, %138
  br label %257

196:                                              ; preds = %2
  %197 = load %struct.nfs4_ace*, %struct.nfs4_ace** %4, align 8
  %198 = getelementptr inbounds %struct.nfs4_ace, %struct.nfs4_ace* %197, i32 0, i32 0
  %199 = load i32, i32* %198, align 4
  %200 = load i32, i32* @NFS4_ACE_ACCESS_ALLOWED_ACE_TYPE, align 4
  %201 = icmp eq i32 %199, %200
  br i1 %201, label %202, label %229

202:                                              ; preds = %196
  %203 = load %struct.posix_acl_state*, %struct.posix_acl_state** %3, align 8
  %204 = getelementptr inbounds %struct.posix_acl_state, %struct.posix_acl_state* %203, i32 0, i32 5
  %205 = load i32, i32* %5, align 4
  %206 = call i32 @allow_bits(%struct.TYPE_9__* %204, i32 %205)
  %207 = load %struct.posix_acl_state*, %struct.posix_acl_state** %3, align 8
  %208 = getelementptr inbounds %struct.posix_acl_state, %struct.posix_acl_state* %207, i32 0, i32 4
  %209 = load i32, i32* %5, align 4
  %210 = call i32 @allow_bits(%struct.TYPE_9__* %208, i32 %209)
  %211 = load %struct.posix_acl_state*, %struct.posix_acl_state** %3, align 8
  %212 = getelementptr inbounds %struct.posix_acl_state, %struct.posix_acl_state* %211, i32 0, i32 3
  %213 = load i32, i32* %5, align 4
  %214 = call i32 @allow_bits(%struct.TYPE_9__* %212, i32 %213)
  %215 = load %struct.posix_acl_state*, %struct.posix_acl_state** %3, align 8
  %216 = getelementptr inbounds %struct.posix_acl_state, %struct.posix_acl_state* %215, i32 0, i32 2
  %217 = load i32, i32* %5, align 4
  %218 = call i32 @allow_bits(%struct.TYPE_9__* %216, i32 %217)
  %219 = load %struct.posix_acl_state*, %struct.posix_acl_state** %3, align 8
  %220 = getelementptr inbounds %struct.posix_acl_state, %struct.posix_acl_state* %219, i32 0, i32 1
  %221 = load %struct.TYPE_8__*, %struct.TYPE_8__** %220, align 8
  %222 = load i32, i32* %5, align 4
  %223 = call i32 @allow_bits_array(%struct.TYPE_8__* %221, i32 %222)
  %224 = load %struct.posix_acl_state*, %struct.posix_acl_state** %3, align 8
  %225 = getelementptr inbounds %struct.posix_acl_state, %struct.posix_acl_state* %224, i32 0, i32 0
  %226 = load %struct.TYPE_8__*, %struct.TYPE_8__** %225, align 8
  %227 = load i32, i32* %5, align 4
  %228 = call i32 @allow_bits_array(%struct.TYPE_8__* %226, i32 %227)
  br label %256

229:                                              ; preds = %196
  %230 = load %struct.posix_acl_state*, %struct.posix_acl_state** %3, align 8
  %231 = getelementptr inbounds %struct.posix_acl_state, %struct.posix_acl_state* %230, i32 0, i32 5
  %232 = load i32, i32* %5, align 4
  %233 = call i32 @deny_bits(%struct.TYPE_9__* %231, i32 %232)
  %234 = load %struct.posix_acl_state*, %struct.posix_acl_state** %3, align 8
  %235 = getelementptr inbounds %struct.posix_acl_state, %struct.posix_acl_state* %234, i32 0, i32 4
  %236 = load i32, i32* %5, align 4
  %237 = call i32 @deny_bits(%struct.TYPE_9__* %235, i32 %236)
  %238 = load %struct.posix_acl_state*, %struct.posix_acl_state** %3, align 8
  %239 = getelementptr inbounds %struct.posix_acl_state, %struct.posix_acl_state* %238, i32 0, i32 3
  %240 = load i32, i32* %5, align 4
  %241 = call i32 @deny_bits(%struct.TYPE_9__* %239, i32 %240)
  %242 = load %struct.posix_acl_state*, %struct.posix_acl_state** %3, align 8
  %243 = getelementptr inbounds %struct.posix_acl_state, %struct.posix_acl_state* %242, i32 0, i32 2
  %244 = load i32, i32* %5, align 4
  %245 = call i32 @deny_bits(%struct.TYPE_9__* %243, i32 %244)
  %246 = load %struct.posix_acl_state*, %struct.posix_acl_state** %3, align 8
  %247 = getelementptr inbounds %struct.posix_acl_state, %struct.posix_acl_state* %246, i32 0, i32 1
  %248 = load %struct.TYPE_8__*, %struct.TYPE_8__** %247, align 8
  %249 = load i32, i32* %5, align 4
  %250 = call i32 @deny_bits_array(%struct.TYPE_8__* %248, i32 %249)
  %251 = load %struct.posix_acl_state*, %struct.posix_acl_state** %3, align 8
  %252 = getelementptr inbounds %struct.posix_acl_state, %struct.posix_acl_state* %251, i32 0, i32 0
  %253 = load %struct.TYPE_8__*, %struct.TYPE_8__** %252, align 8
  %254 = load i32, i32* %5, align 4
  %255 = call i32 @deny_bits_array(%struct.TYPE_8__* %253, i32 %254)
  br label %256

256:                                              ; preds = %229, %202
  br label %257

257:                                              ; preds = %256, %2, %195, %123, %84, %30
  ret void
}

declare dso_local i32 @ace2type(%struct.nfs4_ace*) #1

declare dso_local i32 @allow_bits(%struct.TYPE_9__*, i32) #1

declare dso_local i32 @deny_bits(%struct.TYPE_9__*, i32) #1

declare dso_local i32 @find_uid(%struct.posix_acl_state*, %struct.TYPE_8__*, i32) #1

declare dso_local i32 @deny_bits_array(%struct.TYPE_8__*, i32) #1

declare dso_local i32 @allow_bits_array(%struct.TYPE_8__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

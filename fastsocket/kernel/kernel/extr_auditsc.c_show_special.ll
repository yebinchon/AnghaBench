; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/kernel/extr_auditsc.c_show_special.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/kernel/extr_auditsc.c_show_special.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.audit_context = type { i32, %struct.TYPE_13__, %struct.TYPE_12__, %struct.TYPE_21__, %struct.TYPE_20__, %struct.TYPE_19__, %struct.TYPE_17__, %struct.TYPE_15__, %struct.TYPE_14__ }
%struct.TYPE_13__ = type { i32, i32 }
%struct.TYPE_12__ = type { %struct.TYPE_22__, i32 }
%struct.TYPE_22__ = type { i32, i32, i32 }
%struct.TYPE_21__ = type { i32, %struct.mq_attr }
%struct.mq_attr = type { i32, i32, i32, i32 }
%struct.TYPE_20__ = type { i32, i32 }
%struct.TYPE_19__ = type { %struct.TYPE_18__, i32, i32, i32 }
%struct.TYPE_18__ = type { i32, i32 }
%struct.TYPE_17__ = type { %struct.TYPE_16__, i32, i32 }
%struct.TYPE_16__ = type { i32, i32, i32, i32 }
%struct.TYPE_15__ = type { i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_14__ = type { i32, i32* }
%struct.audit_buffer = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [9 x i8] c"nargs=%d\00", align 1
@.str.1 = private unnamed_addr constant [9 x i8] c" a%d=%lx\00", align 1
@.str.2 = private unnamed_addr constant [25 x i8] c"ouid=%u ogid=%u mode=%#o\00", align 1
@.str.3 = private unnamed_addr constant [9 x i8] c" osid=%u\00", align 1
@.str.4 = private unnamed_addr constant [8 x i8] c" obj=%s\00", align 1
@AUDIT_IPC_SET_PERM = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [36 x i8] c"qbytes=%lx ouid=%u ogid=%u mode=%#o\00", align 1
@.str.6 = private unnamed_addr constant [79 x i8] c"oflag=0x%x mode=%#o mq_flags=0x%lx mq_maxmsg=%ld mq_msgsize=%ld mq_curmsgs=%ld\00", align 1
@.str.7 = private unnamed_addr constant [74 x i8] c"mqdes=%d msg_len=%zd msg_prio=%u abs_timeout_sec=%ld abs_timeout_nsec=%ld\00", align 1
@.str.8 = private unnamed_addr constant [24 x i8] c"mqdes=%d sigev_signo=%d\00", align 1
@.str.9 = private unnamed_addr constant [69 x i8] c"mqdes=%d mq_flags=0x%lx mq_maxmsg=%ld mq_msgsize=%ld mq_curmsgs=%ld \00", align 1
@.str.10 = private unnamed_addr constant [7 x i8] c"pid=%d\00", align 1
@.str.11 = private unnamed_addr constant [7 x i8] c"cap_pi\00", align 1
@.str.12 = private unnamed_addr constant [7 x i8] c"cap_pp\00", align 1
@.str.13 = private unnamed_addr constant [7 x i8] c"cap_pe\00", align 1
@.str.14 = private unnamed_addr constant [17 x i8] c"fd=%d flags=0x%x\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.audit_context*, i32*)* @show_special to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @show_special(%struct.audit_context* %0, i32* %1) #0 {
  %3 = alloca %struct.audit_context*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca %struct.audit_buffer*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.mq_attr*, align 8
  store %struct.audit_context* %0, %struct.audit_context** %3, align 8
  store i32* %1, i32** %4, align 8
  %12 = load %struct.audit_context*, %struct.audit_context** %3, align 8
  %13 = load i32, i32* @GFP_KERNEL, align 4
  %14 = load %struct.audit_context*, %struct.audit_context** %3, align 8
  %15 = getelementptr inbounds %struct.audit_context, %struct.audit_context* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = call %struct.audit_buffer* @audit_log_start(%struct.audit_context* %12, i32 %13, i32 %16)
  store %struct.audit_buffer* %17, %struct.audit_buffer** %5, align 8
  %18 = load %struct.audit_buffer*, %struct.audit_buffer** %5, align 8
  %19 = icmp ne %struct.audit_buffer* %18, null
  br i1 %19, label %21, label %20

20:                                               ; preds = %2
  br label %255

21:                                               ; preds = %2
  %22 = load %struct.audit_context*, %struct.audit_context** %3, align 8
  %23 = getelementptr inbounds %struct.audit_context, %struct.audit_context* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  switch i32 %24, label %252 [
    i32 128, label %25
    i32 134, label %53
    i32 130, label %127
    i32 129, label %158
    i32 131, label %183
    i32 132, label %194
    i32 135, label %216
    i32 133, label %241
  ]

25:                                               ; preds = %21
  %26 = load %struct.audit_context*, %struct.audit_context** %3, align 8
  %27 = getelementptr inbounds %struct.audit_context, %struct.audit_context* %26, i32 0, i32 8
  %28 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  store i32 %29, i32* %7, align 4
  %30 = load %struct.audit_buffer*, %struct.audit_buffer** %5, align 8
  %31 = load i32, i32* %7, align 4
  %32 = call i32 (%struct.audit_buffer*, i8*, ...) @audit_log_format(%struct.audit_buffer* %30, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i32 %31)
  store i32 0, i32* %6, align 4
  br label %33

33:                                               ; preds = %49, %25
  %34 = load i32, i32* %6, align 4
  %35 = load i32, i32* %7, align 4
  %36 = icmp slt i32 %34, %35
  br i1 %36, label %37, label %52

37:                                               ; preds = %33
  %38 = load %struct.audit_buffer*, %struct.audit_buffer** %5, align 8
  %39 = load i32, i32* %6, align 4
  %40 = load %struct.audit_context*, %struct.audit_context** %3, align 8
  %41 = getelementptr inbounds %struct.audit_context, %struct.audit_context* %40, i32 0, i32 8
  %42 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %41, i32 0, i32 1
  %43 = load i32*, i32** %42, align 8
  %44 = load i32, i32* %6, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds i32, i32* %43, i64 %45
  %47 = load i32, i32* %46, align 4
  %48 = call i32 (%struct.audit_buffer*, i8*, ...) @audit_log_format(%struct.audit_buffer* %38, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), i32 %39, i32 %47)
  br label %49

49:                                               ; preds = %37
  %50 = load i32, i32* %6, align 4
  %51 = add nsw i32 %50, 1
  store i32 %51, i32* %6, align 4
  br label %33

52:                                               ; preds = %33
  br label %252

53:                                               ; preds = %21
  %54 = load %struct.audit_context*, %struct.audit_context** %3, align 8
  %55 = getelementptr inbounds %struct.audit_context, %struct.audit_context* %54, i32 0, i32 7
  %56 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %55, i32 0, i32 8
  %57 = load i32, i32* %56, align 4
  store i32 %57, i32* %8, align 4
  %58 = load %struct.audit_buffer*, %struct.audit_buffer** %5, align 8
  %59 = load %struct.audit_context*, %struct.audit_context** %3, align 8
  %60 = getelementptr inbounds %struct.audit_context, %struct.audit_context* %59, i32 0, i32 7
  %61 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %60, i32 0, i32 7
  %62 = load i32, i32* %61, align 4
  %63 = load %struct.audit_context*, %struct.audit_context** %3, align 8
  %64 = getelementptr inbounds %struct.audit_context, %struct.audit_context* %63, i32 0, i32 7
  %65 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %64, i32 0, i32 6
  %66 = load i32, i32* %65, align 4
  %67 = load %struct.audit_context*, %struct.audit_context** %3, align 8
  %68 = getelementptr inbounds %struct.audit_context, %struct.audit_context* %67, i32 0, i32 7
  %69 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %68, i32 0, i32 5
  %70 = load i32, i32* %69, align 4
  %71 = call i32 (%struct.audit_buffer*, i8*, ...) @audit_log_format(%struct.audit_buffer* %58, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i64 0, i64 0), i32 %62, i32 %66, i32 %70)
  %72 = load i32, i32* %8, align 4
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %91

74:                                               ; preds = %53
  store i8* null, i8** %9, align 8
  %75 = load i32, i32* %8, align 4
  %76 = call i32 @security_secid_to_secctx(i32 %75, i8** %9, i32* %10)
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %78, label %83

78:                                               ; preds = %74
  %79 = load %struct.audit_buffer*, %struct.audit_buffer** %5, align 8
  %80 = load i32, i32* %8, align 4
  %81 = call i32 (%struct.audit_buffer*, i8*, ...) @audit_log_format(%struct.audit_buffer* %79, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0), i32 %80)
  %82 = load i32*, i32** %4, align 8
  store i32 1, i32* %82, align 4
  br label %90

83:                                               ; preds = %74
  %84 = load %struct.audit_buffer*, %struct.audit_buffer** %5, align 8
  %85 = load i8*, i8** %9, align 8
  %86 = call i32 (%struct.audit_buffer*, i8*, ...) @audit_log_format(%struct.audit_buffer* %84, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i64 0, i64 0), i8* %85)
  %87 = load i8*, i8** %9, align 8
  %88 = load i32, i32* %10, align 4
  %89 = call i32 @security_release_secctx(i8* %87, i32 %88)
  br label %90

90:                                               ; preds = %83, %78
  br label %91

91:                                               ; preds = %90, %53
  %92 = load %struct.audit_context*, %struct.audit_context** %3, align 8
  %93 = getelementptr inbounds %struct.audit_context, %struct.audit_context* %92, i32 0, i32 7
  %94 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %93, i32 0, i32 4
  %95 = load i32, i32* %94, align 4
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %97, label %126

97:                                               ; preds = %91
  %98 = load %struct.audit_buffer*, %struct.audit_buffer** %5, align 8
  %99 = call i32 @audit_log_end(%struct.audit_buffer* %98)
  %100 = load %struct.audit_context*, %struct.audit_context** %3, align 8
  %101 = load i32, i32* @GFP_KERNEL, align 4
  %102 = load i32, i32* @AUDIT_IPC_SET_PERM, align 4
  %103 = call %struct.audit_buffer* @audit_log_start(%struct.audit_context* %100, i32 %101, i32 %102)
  store %struct.audit_buffer* %103, %struct.audit_buffer** %5, align 8
  %104 = load %struct.audit_buffer*, %struct.audit_buffer** %5, align 8
  %105 = load %struct.audit_context*, %struct.audit_context** %3, align 8
  %106 = getelementptr inbounds %struct.audit_context, %struct.audit_context* %105, i32 0, i32 7
  %107 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %106, i32 0, i32 3
  %108 = load i32, i32* %107, align 4
  %109 = load %struct.audit_context*, %struct.audit_context** %3, align 8
  %110 = getelementptr inbounds %struct.audit_context, %struct.audit_context* %109, i32 0, i32 7
  %111 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %110, i32 0, i32 2
  %112 = load i32, i32* %111, align 4
  %113 = load %struct.audit_context*, %struct.audit_context** %3, align 8
  %114 = getelementptr inbounds %struct.audit_context, %struct.audit_context* %113, i32 0, i32 7
  %115 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %114, i32 0, i32 1
  %116 = load i32, i32* %115, align 4
  %117 = load %struct.audit_context*, %struct.audit_context** %3, align 8
  %118 = getelementptr inbounds %struct.audit_context, %struct.audit_context* %117, i32 0, i32 7
  %119 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %118, i32 0, i32 0
  %120 = load i32, i32* %119, align 4
  %121 = call i32 (%struct.audit_buffer*, i8*, ...) @audit_log_format(%struct.audit_buffer* %104, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.5, i64 0, i64 0), i32 %108, i32 %112, i32 %116, i32 %120)
  %122 = load %struct.audit_buffer*, %struct.audit_buffer** %5, align 8
  %123 = icmp ne %struct.audit_buffer* %122, null
  br i1 %123, label %125, label %124

124:                                              ; preds = %97
  br label %255

125:                                              ; preds = %97
  br label %126

126:                                              ; preds = %125, %91
  br label %252

127:                                              ; preds = %21
  %128 = load %struct.audit_buffer*, %struct.audit_buffer** %5, align 8
  %129 = load %struct.audit_context*, %struct.audit_context** %3, align 8
  %130 = getelementptr inbounds %struct.audit_context, %struct.audit_context* %129, i32 0, i32 6
  %131 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %130, i32 0, i32 2
  %132 = load i32, i32* %131, align 4
  %133 = load %struct.audit_context*, %struct.audit_context** %3, align 8
  %134 = getelementptr inbounds %struct.audit_context, %struct.audit_context* %133, i32 0, i32 6
  %135 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %134, i32 0, i32 1
  %136 = load i32, i32* %135, align 4
  %137 = load %struct.audit_context*, %struct.audit_context** %3, align 8
  %138 = getelementptr inbounds %struct.audit_context, %struct.audit_context* %137, i32 0, i32 6
  %139 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %138, i32 0, i32 0
  %140 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %139, i32 0, i32 3
  %141 = load i32, i32* %140, align 4
  %142 = load %struct.audit_context*, %struct.audit_context** %3, align 8
  %143 = getelementptr inbounds %struct.audit_context, %struct.audit_context* %142, i32 0, i32 6
  %144 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %143, i32 0, i32 0
  %145 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %144, i32 0, i32 2
  %146 = load i32, i32* %145, align 4
  %147 = load %struct.audit_context*, %struct.audit_context** %3, align 8
  %148 = getelementptr inbounds %struct.audit_context, %struct.audit_context* %147, i32 0, i32 6
  %149 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %148, i32 0, i32 0
  %150 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %149, i32 0, i32 1
  %151 = load i32, i32* %150, align 4
  %152 = load %struct.audit_context*, %struct.audit_context** %3, align 8
  %153 = getelementptr inbounds %struct.audit_context, %struct.audit_context* %152, i32 0, i32 6
  %154 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %153, i32 0, i32 0
  %155 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %154, i32 0, i32 0
  %156 = load i32, i32* %155, align 4
  %157 = call i32 (%struct.audit_buffer*, i8*, ...) @audit_log_format(%struct.audit_buffer* %128, i8* getelementptr inbounds ([79 x i8], [79 x i8]* @.str.6, i64 0, i64 0), i32 %132, i32 %136, i32 %141, i32 %146, i32 %151, i32 %156)
  br label %252

158:                                              ; preds = %21
  %159 = load %struct.audit_buffer*, %struct.audit_buffer** %5, align 8
  %160 = load %struct.audit_context*, %struct.audit_context** %3, align 8
  %161 = getelementptr inbounds %struct.audit_context, %struct.audit_context* %160, i32 0, i32 5
  %162 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %161, i32 0, i32 3
  %163 = load i32, i32* %162, align 8
  %164 = load %struct.audit_context*, %struct.audit_context** %3, align 8
  %165 = getelementptr inbounds %struct.audit_context, %struct.audit_context* %164, i32 0, i32 5
  %166 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %165, i32 0, i32 2
  %167 = load i32, i32* %166, align 4
  %168 = load %struct.audit_context*, %struct.audit_context** %3, align 8
  %169 = getelementptr inbounds %struct.audit_context, %struct.audit_context* %168, i32 0, i32 5
  %170 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %169, i32 0, i32 1
  %171 = load i32, i32* %170, align 8
  %172 = load %struct.audit_context*, %struct.audit_context** %3, align 8
  %173 = getelementptr inbounds %struct.audit_context, %struct.audit_context* %172, i32 0, i32 5
  %174 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %173, i32 0, i32 0
  %175 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %174, i32 0, i32 1
  %176 = load i32, i32* %175, align 4
  %177 = load %struct.audit_context*, %struct.audit_context** %3, align 8
  %178 = getelementptr inbounds %struct.audit_context, %struct.audit_context* %177, i32 0, i32 5
  %179 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %178, i32 0, i32 0
  %180 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %179, i32 0, i32 0
  %181 = load i32, i32* %180, align 8
  %182 = call i32 (%struct.audit_buffer*, i8*, ...) @audit_log_format(%struct.audit_buffer* %159, i8* getelementptr inbounds ([74 x i8], [74 x i8]* @.str.7, i64 0, i64 0), i32 %163, i32 %167, i32 %171, i32 %176, i32 %181)
  br label %252

183:                                              ; preds = %21
  %184 = load %struct.audit_buffer*, %struct.audit_buffer** %5, align 8
  %185 = load %struct.audit_context*, %struct.audit_context** %3, align 8
  %186 = getelementptr inbounds %struct.audit_context, %struct.audit_context* %185, i32 0, i32 4
  %187 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %186, i32 0, i32 0
  %188 = load i32, i32* %187, align 8
  %189 = load %struct.audit_context*, %struct.audit_context** %3, align 8
  %190 = getelementptr inbounds %struct.audit_context, %struct.audit_context* %189, i32 0, i32 4
  %191 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %190, i32 0, i32 1
  %192 = load i32, i32* %191, align 4
  %193 = call i32 (%struct.audit_buffer*, i8*, ...) @audit_log_format(%struct.audit_buffer* %184, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.8, i64 0, i64 0), i32 %188, i32 %192)
  br label %252

194:                                              ; preds = %21
  %195 = load %struct.audit_context*, %struct.audit_context** %3, align 8
  %196 = getelementptr inbounds %struct.audit_context, %struct.audit_context* %195, i32 0, i32 3
  %197 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %196, i32 0, i32 1
  store %struct.mq_attr* %197, %struct.mq_attr** %11, align 8
  %198 = load %struct.audit_buffer*, %struct.audit_buffer** %5, align 8
  %199 = load %struct.audit_context*, %struct.audit_context** %3, align 8
  %200 = getelementptr inbounds %struct.audit_context, %struct.audit_context* %199, i32 0, i32 3
  %201 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %200, i32 0, i32 0
  %202 = load i32, i32* %201, align 4
  %203 = load %struct.mq_attr*, %struct.mq_attr** %11, align 8
  %204 = getelementptr inbounds %struct.mq_attr, %struct.mq_attr* %203, i32 0, i32 3
  %205 = load i32, i32* %204, align 4
  %206 = load %struct.mq_attr*, %struct.mq_attr** %11, align 8
  %207 = getelementptr inbounds %struct.mq_attr, %struct.mq_attr* %206, i32 0, i32 2
  %208 = load i32, i32* %207, align 4
  %209 = load %struct.mq_attr*, %struct.mq_attr** %11, align 8
  %210 = getelementptr inbounds %struct.mq_attr, %struct.mq_attr* %209, i32 0, i32 1
  %211 = load i32, i32* %210, align 4
  %212 = load %struct.mq_attr*, %struct.mq_attr** %11, align 8
  %213 = getelementptr inbounds %struct.mq_attr, %struct.mq_attr* %212, i32 0, i32 0
  %214 = load i32, i32* %213, align 4
  %215 = call i32 (%struct.audit_buffer*, i8*, ...) @audit_log_format(%struct.audit_buffer* %198, i8* getelementptr inbounds ([69 x i8], [69 x i8]* @.str.9, i64 0, i64 0), i32 %202, i32 %205, i32 %208, i32 %211, i32 %214)
  br label %252

216:                                              ; preds = %21
  %217 = load %struct.audit_buffer*, %struct.audit_buffer** %5, align 8
  %218 = load %struct.audit_context*, %struct.audit_context** %3, align 8
  %219 = getelementptr inbounds %struct.audit_context, %struct.audit_context* %218, i32 0, i32 2
  %220 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %219, i32 0, i32 1
  %221 = load i32, i32* %220, align 4
  %222 = call i32 (%struct.audit_buffer*, i8*, ...) @audit_log_format(%struct.audit_buffer* %217, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.10, i64 0, i64 0), i32 %221)
  %223 = load %struct.audit_buffer*, %struct.audit_buffer** %5, align 8
  %224 = load %struct.audit_context*, %struct.audit_context** %3, align 8
  %225 = getelementptr inbounds %struct.audit_context, %struct.audit_context* %224, i32 0, i32 2
  %226 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %225, i32 0, i32 0
  %227 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %226, i32 0, i32 2
  %228 = call i32 @audit_log_cap(%struct.audit_buffer* %223, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.11, i64 0, i64 0), i32* %227)
  %229 = load %struct.audit_buffer*, %struct.audit_buffer** %5, align 8
  %230 = load %struct.audit_context*, %struct.audit_context** %3, align 8
  %231 = getelementptr inbounds %struct.audit_context, %struct.audit_context* %230, i32 0, i32 2
  %232 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %231, i32 0, i32 0
  %233 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %232, i32 0, i32 1
  %234 = call i32 @audit_log_cap(%struct.audit_buffer* %229, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.12, i64 0, i64 0), i32* %233)
  %235 = load %struct.audit_buffer*, %struct.audit_buffer** %5, align 8
  %236 = load %struct.audit_context*, %struct.audit_context** %3, align 8
  %237 = getelementptr inbounds %struct.audit_context, %struct.audit_context* %236, i32 0, i32 2
  %238 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %237, i32 0, i32 0
  %239 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %238, i32 0, i32 0
  %240 = call i32 @audit_log_cap(%struct.audit_buffer* %235, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.13, i64 0, i64 0), i32* %239)
  br label %252

241:                                              ; preds = %21
  %242 = load %struct.audit_buffer*, %struct.audit_buffer** %5, align 8
  %243 = load %struct.audit_context*, %struct.audit_context** %3, align 8
  %244 = getelementptr inbounds %struct.audit_context, %struct.audit_context* %243, i32 0, i32 1
  %245 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %244, i32 0, i32 0
  %246 = load i32, i32* %245, align 4
  %247 = load %struct.audit_context*, %struct.audit_context** %3, align 8
  %248 = getelementptr inbounds %struct.audit_context, %struct.audit_context* %247, i32 0, i32 1
  %249 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %248, i32 0, i32 1
  %250 = load i32, i32* %249, align 4
  %251 = call i32 (%struct.audit_buffer*, i8*, ...) @audit_log_format(%struct.audit_buffer* %242, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.14, i64 0, i64 0), i32 %246, i32 %250)
  br label %252

252:                                              ; preds = %21, %241, %216, %194, %183, %158, %127, %126, %52
  %253 = load %struct.audit_buffer*, %struct.audit_buffer** %5, align 8
  %254 = call i32 @audit_log_end(%struct.audit_buffer* %253)
  br label %255

255:                                              ; preds = %252, %124, %20
  ret void
}

declare dso_local %struct.audit_buffer* @audit_log_start(%struct.audit_context*, i32, i32) #1

declare dso_local i32 @audit_log_format(%struct.audit_buffer*, i8*, ...) #1

declare dso_local i32 @security_secid_to_secctx(i32, i8**, i32*) #1

declare dso_local i32 @security_release_secctx(i8*, i32) #1

declare dso_local i32 @audit_log_end(%struct.audit_buffer*) #1

declare dso_local i32 @audit_log_cap(%struct.audit_buffer*, i8*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

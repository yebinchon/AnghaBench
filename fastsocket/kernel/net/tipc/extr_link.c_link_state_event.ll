; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/tipc/extr_link.c_link_state_event.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/tipc/extr_link.c_link_state_event.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.link = type { i32, i32, i32, i32, %struct.TYPE_2__*, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_2__ = type { %struct.link** }

@.str = private unnamed_addr constant [16 x i8] c"STATE_EV: <%s> \00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"WW/\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"TRF-\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"ACT\0A\00", align 1
@.str.4 = private unnamed_addr constant [5 x i8] c"TIM \00", align 1
@STATE_MSG = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [8 x i8] c" -> WU\0A\00", align 1
@.str.6 = private unnamed_addr constant [11 x i8] c"RES -> RR\0A\00", align 1
@.str.7 = private unnamed_addr constant [40 x i8] c"Resetting link <%s>, requested by peer\0A\00", align 1
@.str.8 = private unnamed_addr constant [35 x i8] c"Unknown link event %u in WW state\0A\00", align 1
@.str.9 = private unnamed_addr constant [4 x i8] c"WU/\00", align 1
@.str.10 = private unnamed_addr constant [11 x i8] c"ACT -> WW\0A\00", align 1
@.str.11 = private unnamed_addr constant [54 x i8] c"Resetting link <%s>, requested by peer while probing\0A\00", align 1
@.str.12 = private unnamed_addr constant [8 x i8] c"-> WW \0A\00", align 1
@.str.13 = private unnamed_addr constant [30 x i8] c"Probing %u/%u,timer = %u ms)\0A\00", align 1
@.str.14 = private unnamed_addr constant [30 x i8] c"-> RU (%u probes unanswered)\0A\00", align 1
@.str.15 = private unnamed_addr constant [42 x i8] c"Resetting link <%s>, peer not responding\0A\00", align 1
@.str.16 = private unnamed_addr constant [35 x i8] c"Unknown link event %u in WU state\0A\00", align 1
@.str.17 = private unnamed_addr constant [4 x i8] c"RU/\00", align 1
@.str.18 = private unnamed_addr constant [6 x i8] c"TRF-\0A\00", align 1
@.str.19 = private unnamed_addr constant [6 x i8] c"RES \0A\00", align 1
@.str.20 = private unnamed_addr constant [8 x i8] c" -> RR\0A\00", align 1
@.str.21 = private unnamed_addr constant [7 x i8] c"START-\00", align 1
@.str.22 = private unnamed_addr constant [6 x i8] c"TIM \0A\00", align 1
@.str.23 = private unnamed_addr constant [35 x i8] c"Unknown link event %u in RU state\0A\00", align 1
@.str.24 = private unnamed_addr constant [5 x i8] c"RR/ \00", align 1
@.str.25 = private unnamed_addr constant [5 x i8] c"RES\0A\00", align 1
@.str.26 = private unnamed_addr constant [5 x i8] c"TIM\0A\00", align 1
@.str.27 = private unnamed_addr constant [16 x i8] c"fsm_msg_cnt %u\0A\00", align 1
@.str.28 = private unnamed_addr constant [35 x i8] c"Unknown link event %u in RR state\0A\00", align 1
@.str.29 = private unnamed_addr constant [26 x i8] c"Unknown link state %u/%u\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.link*, i32)* @link_state_event to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @link_state_event(%struct.link* %0, i32 %1) #0 {
  %3 = alloca %struct.link*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.link*, align 8
  %6 = alloca i32, align 4
  store %struct.link* %0, %struct.link** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.link*, %struct.link** %3, align 8
  %8 = getelementptr inbounds %struct.link, %struct.link* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 8
  store i32 %9, i32* %6, align 4
  %10 = load %struct.link*, %struct.link** %3, align 8
  %11 = getelementptr inbounds %struct.link, %struct.link* %10, i32 0, i32 1
  %12 = load i32, i32* %11, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %18, label %14

14:                                               ; preds = %2
  %15 = load i32, i32* %4, align 4
  %16 = icmp ne i32 %15, 132
  br i1 %16, label %17, label %18

17:                                               ; preds = %14
  br label %407

18:                                               ; preds = %14, %2
  %19 = load %struct.link*, %struct.link** %3, align 8
  %20 = call i64 @link_blocked(%struct.link* %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %30

22:                                               ; preds = %18
  %23 = load i32, i32* %4, align 4
  %24 = icmp eq i32 %23, 131
  br i1 %24, label %25, label %29

25:                                               ; preds = %22
  %26 = load %struct.link*, %struct.link** %3, align 8
  %27 = load i32, i32* %6, align 4
  %28 = call i32 @link_set_timer(%struct.link* %26, i32 %27)
  br label %29

29:                                               ; preds = %25, %22
  br label %407

30:                                               ; preds = %18
  %31 = load %struct.link*, %struct.link** %3, align 8
  %32 = getelementptr inbounds %struct.link, %struct.link* %31, i32 0, i32 5
  %33 = load i32, i32* %32, align 8
  %34 = call i32 (i8*, ...) @dbg_link(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), i32 %33)
  %35 = load %struct.link*, %struct.link** %3, align 8
  %36 = getelementptr inbounds %struct.link, %struct.link* %35, i32 0, i32 2
  %37 = load i32, i32* %36, align 8
  switch i32 %37, label %401 [
    i32 128, label %38
    i32 129, label %136
    i32 133, label %267
    i32 134, label %341
  ]

38:                                               ; preds = %30
  %39 = call i32 (i8*, ...) @dbg_link(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0))
  %40 = load i32, i32* %4, align 4
  switch i32 %40, label %132 [
    i32 130, label %41
    i32 136, label %43
    i32 131, label %45
    i32 135, label %111
  ]

41:                                               ; preds = %38
  %42 = call i32 (i8*, ...) @dbg_link(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0))
  br label %43

43:                                               ; preds = %38, %41
  %44 = call i32 (i8*, ...) @dbg_link(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0))
  br label %135

45:                                               ; preds = %38
  %46 = call i32 (i8*, ...) @dbg_link(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0))
  %47 = load %struct.link*, %struct.link** %3, align 8
  %48 = getelementptr inbounds %struct.link, %struct.link* %47, i32 0, i32 7
  %49 = load i32, i32* %48, align 8
  %50 = load %struct.link*, %struct.link** %3, align 8
  %51 = getelementptr inbounds %struct.link, %struct.link* %50, i32 0, i32 8
  %52 = load i32, i32* %51, align 4
  %53 = icmp ne i32 %49, %52
  br i1 %53, label %54, label %94

54:                                               ; preds = %45
  %55 = load %struct.link*, %struct.link** %3, align 8
  %56 = getelementptr inbounds %struct.link, %struct.link* %55, i32 0, i32 7
  %57 = load i32, i32* %56, align 8
  %58 = load %struct.link*, %struct.link** %3, align 8
  %59 = getelementptr inbounds %struct.link, %struct.link* %58, i32 0, i32 8
  store i32 %57, i32* %59, align 4
  %60 = load %struct.link*, %struct.link** %3, align 8
  %61 = getelementptr inbounds %struct.link, %struct.link* %60, i32 0, i32 4
  %62 = load %struct.TYPE_2__*, %struct.TYPE_2__** %61, align 8
  %63 = call i32 @tipc_bclink_acks_missing(%struct.TYPE_2__* %62)
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %73

65:                                               ; preds = %54
  %66 = load %struct.link*, %struct.link** %3, align 8
  %67 = load i32, i32* @STATE_MSG, align 4
  %68 = call i32 @tipc_link_send_proto_msg(%struct.link* %66, i32 %67, i32 0, i32 0, i32 0, i32 0, i32 0)
  %69 = load %struct.link*, %struct.link** %3, align 8
  %70 = getelementptr inbounds %struct.link, %struct.link* %69, i32 0, i32 3
  %71 = load i32, i32* %70, align 4
  %72 = add nsw i32 %71, 1
  store i32 %72, i32* %70, align 4
  br label %90

73:                                               ; preds = %54
  %74 = load %struct.link*, %struct.link** %3, align 8
  %75 = getelementptr inbounds %struct.link, %struct.link* %74, i32 0, i32 10
  %76 = load i32, i32* %75, align 4
  %77 = load %struct.link*, %struct.link** %3, align 8
  %78 = getelementptr inbounds %struct.link, %struct.link* %77, i32 0, i32 9
  %79 = load i32, i32* %78, align 8
  %80 = icmp slt i32 %76, %79
  br i1 %80, label %81, label %89

81:                                               ; preds = %73
  %82 = load %struct.link*, %struct.link** %3, align 8
  %83 = load i32, i32* @STATE_MSG, align 4
  %84 = call i32 @tipc_link_send_proto_msg(%struct.link* %82, i32 %83, i32 1, i32 0, i32 0, i32 0, i32 0)
  %85 = load %struct.link*, %struct.link** %3, align 8
  %86 = getelementptr inbounds %struct.link, %struct.link* %85, i32 0, i32 3
  %87 = load i32, i32* %86, align 4
  %88 = add nsw i32 %87, 1
  store i32 %88, i32* %86, align 4
  br label %89

89:                                               ; preds = %81, %73
  br label %90

90:                                               ; preds = %89, %65
  %91 = load %struct.link*, %struct.link** %3, align 8
  %92 = load i32, i32* %6, align 4
  %93 = call i32 @link_set_timer(%struct.link* %91, i32 %92)
  br label %135

94:                                               ; preds = %45
  %95 = call i32 (i8*, ...) @dbg_link(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i64 0, i64 0))
  %96 = load %struct.link*, %struct.link** %3, align 8
  %97 = getelementptr inbounds %struct.link, %struct.link* %96, i32 0, i32 2
  store i32 129, i32* %97, align 8
  %98 = load %struct.link*, %struct.link** %3, align 8
  %99 = getelementptr inbounds %struct.link, %struct.link* %98, i32 0, i32 3
  store i32 0, i32* %99, align 4
  %100 = load %struct.link*, %struct.link** %3, align 8
  %101 = load i32, i32* @STATE_MSG, align 4
  %102 = call i32 @tipc_link_send_proto_msg(%struct.link* %100, i32 %101, i32 1, i32 0, i32 0, i32 0, i32 0)
  %103 = load %struct.link*, %struct.link** %3, align 8
  %104 = getelementptr inbounds %struct.link, %struct.link* %103, i32 0, i32 3
  %105 = load i32, i32* %104, align 4
  %106 = add nsw i32 %105, 1
  store i32 %106, i32* %104, align 4
  %107 = load %struct.link*, %struct.link** %3, align 8
  %108 = load i32, i32* %6, align 4
  %109 = sdiv i32 %108, 4
  %110 = call i32 @link_set_timer(%struct.link* %107, i32 %109)
  br label %135

111:                                              ; preds = %38
  %112 = call i32 (i8*, ...) @dbg_link(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.6, i64 0, i64 0))
  %113 = load %struct.link*, %struct.link** %3, align 8
  %114 = getelementptr inbounds %struct.link, %struct.link* %113, i32 0, i32 5
  %115 = load i32, i32* %114, align 8
  %116 = call i32 @info(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.7, i64 0, i64 0), i32 %115)
  %117 = load %struct.link*, %struct.link** %3, align 8
  %118 = call i32 @tipc_link_reset(%struct.link* %117)
  %119 = load %struct.link*, %struct.link** %3, align 8
  %120 = getelementptr inbounds %struct.link, %struct.link* %119, i32 0, i32 2
  store i32 134, i32* %120, align 8
  %121 = load %struct.link*, %struct.link** %3, align 8
  %122 = getelementptr inbounds %struct.link, %struct.link* %121, i32 0, i32 3
  store i32 0, i32* %122, align 4
  %123 = load %struct.link*, %struct.link** %3, align 8
  %124 = call i32 @tipc_link_send_proto_msg(%struct.link* %123, i32 136, i32 0, i32 0, i32 0, i32 0, i32 0)
  %125 = load %struct.link*, %struct.link** %3, align 8
  %126 = getelementptr inbounds %struct.link, %struct.link* %125, i32 0, i32 3
  %127 = load i32, i32* %126, align 4
  %128 = add nsw i32 %127, 1
  store i32 %128, i32* %126, align 4
  %129 = load %struct.link*, %struct.link** %3, align 8
  %130 = load i32, i32* %6, align 4
  %131 = call i32 @link_set_timer(%struct.link* %129, i32 %130)
  br label %135

132:                                              ; preds = %38
  %133 = load i32, i32* %4, align 4
  %134 = call i32 (i8*, i32, ...) @err(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.8, i64 0, i64 0), i32 %133)
  br label %135

135:                                              ; preds = %132, %111, %94, %90, %43
  br label %407

136:                                              ; preds = %30
  %137 = call i32 (i8*, ...) @dbg_link(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.9, i64 0, i64 0))
  %138 = load i32, i32* %4, align 4
  switch i32 %138, label %263 [
    i32 130, label %139
    i32 136, label %141
    i32 135, label %150
    i32 131, label %171
  ]

139:                                              ; preds = %136
  %140 = call i32 (i8*, ...) @dbg_link(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0))
  br label %141

141:                                              ; preds = %136, %139
  %142 = call i32 (i8*, ...) @dbg_link(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.10, i64 0, i64 0))
  %143 = load %struct.link*, %struct.link** %3, align 8
  %144 = getelementptr inbounds %struct.link, %struct.link* %143, i32 0, i32 2
  store i32 128, i32* %144, align 8
  %145 = load %struct.link*, %struct.link** %3, align 8
  %146 = getelementptr inbounds %struct.link, %struct.link* %145, i32 0, i32 3
  store i32 0, i32* %146, align 4
  %147 = load %struct.link*, %struct.link** %3, align 8
  %148 = load i32, i32* %6, align 4
  %149 = call i32 @link_set_timer(%struct.link* %147, i32 %148)
  br label %266

150:                                              ; preds = %136
  %151 = call i32 (i8*, ...) @dbg_link(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.6, i64 0, i64 0))
  %152 = load %struct.link*, %struct.link** %3, align 8
  %153 = getelementptr inbounds %struct.link, %struct.link* %152, i32 0, i32 5
  %154 = load i32, i32* %153, align 8
  %155 = call i32 @info(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.11, i64 0, i64 0), i32 %154)
  %156 = load %struct.link*, %struct.link** %3, align 8
  %157 = call i32 @tipc_link_reset(%struct.link* %156)
  %158 = load %struct.link*, %struct.link** %3, align 8
  %159 = getelementptr inbounds %struct.link, %struct.link* %158, i32 0, i32 2
  store i32 134, i32* %159, align 8
  %160 = load %struct.link*, %struct.link** %3, align 8
  %161 = getelementptr inbounds %struct.link, %struct.link* %160, i32 0, i32 3
  store i32 0, i32* %161, align 4
  %162 = load %struct.link*, %struct.link** %3, align 8
  %163 = call i32 @tipc_link_send_proto_msg(%struct.link* %162, i32 136, i32 0, i32 0, i32 0, i32 0, i32 0)
  %164 = load %struct.link*, %struct.link** %3, align 8
  %165 = getelementptr inbounds %struct.link, %struct.link* %164, i32 0, i32 3
  %166 = load i32, i32* %165, align 4
  %167 = add nsw i32 %166, 1
  store i32 %167, i32* %165, align 4
  %168 = load %struct.link*, %struct.link** %3, align 8
  %169 = load i32, i32* %6, align 4
  %170 = call i32 @link_set_timer(%struct.link* %168, i32 %169)
  br label %266

171:                                              ; preds = %136
  %172 = call i32 (i8*, ...) @dbg_link(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0))
  %173 = load %struct.link*, %struct.link** %3, align 8
  %174 = getelementptr inbounds %struct.link, %struct.link* %173, i32 0, i32 7
  %175 = load i32, i32* %174, align 8
  %176 = load %struct.link*, %struct.link** %3, align 8
  %177 = getelementptr inbounds %struct.link, %struct.link* %176, i32 0, i32 8
  %178 = load i32, i32* %177, align 4
  %179 = icmp ne i32 %175, %178
  br i1 %179, label %180, label %208

180:                                              ; preds = %171
  %181 = call i32 (i8*, ...) @dbg_link(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.12, i64 0, i64 0))
  %182 = load %struct.link*, %struct.link** %3, align 8
  %183 = getelementptr inbounds %struct.link, %struct.link* %182, i32 0, i32 2
  store i32 128, i32* %183, align 8
  %184 = load %struct.link*, %struct.link** %3, align 8
  %185 = getelementptr inbounds %struct.link, %struct.link* %184, i32 0, i32 3
  store i32 0, i32* %185, align 4
  %186 = load %struct.link*, %struct.link** %3, align 8
  %187 = getelementptr inbounds %struct.link, %struct.link* %186, i32 0, i32 7
  %188 = load i32, i32* %187, align 8
  %189 = load %struct.link*, %struct.link** %3, align 8
  %190 = getelementptr inbounds %struct.link, %struct.link* %189, i32 0, i32 8
  store i32 %188, i32* %190, align 4
  %191 = load %struct.link*, %struct.link** %3, align 8
  %192 = getelementptr inbounds %struct.link, %struct.link* %191, i32 0, i32 4
  %193 = load %struct.TYPE_2__*, %struct.TYPE_2__** %192, align 8
  %194 = call i32 @tipc_bclink_acks_missing(%struct.TYPE_2__* %193)
  %195 = icmp ne i32 %194, 0
  br i1 %195, label %196, label %204

196:                                              ; preds = %180
  %197 = load %struct.link*, %struct.link** %3, align 8
  %198 = load i32, i32* @STATE_MSG, align 4
  %199 = call i32 @tipc_link_send_proto_msg(%struct.link* %197, i32 %198, i32 0, i32 0, i32 0, i32 0, i32 0)
  %200 = load %struct.link*, %struct.link** %3, align 8
  %201 = getelementptr inbounds %struct.link, %struct.link* %200, i32 0, i32 3
  %202 = load i32, i32* %201, align 4
  %203 = add nsw i32 %202, 1
  store i32 %203, i32* %201, align 4
  br label %204

204:                                              ; preds = %196, %180
  %205 = load %struct.link*, %struct.link** %3, align 8
  %206 = load i32, i32* %6, align 4
  %207 = call i32 @link_set_timer(%struct.link* %205, i32 %206)
  br label %262

208:                                              ; preds = %171
  %209 = load %struct.link*, %struct.link** %3, align 8
  %210 = getelementptr inbounds %struct.link, %struct.link* %209, i32 0, i32 3
  %211 = load i32, i32* %210, align 4
  %212 = load %struct.link*, %struct.link** %3, align 8
  %213 = getelementptr inbounds %struct.link, %struct.link* %212, i32 0, i32 6
  %214 = load i32, i32* %213, align 4
  %215 = icmp slt i32 %211, %214
  br i1 %215, label %216, label %237

216:                                              ; preds = %208
  %217 = load %struct.link*, %struct.link** %3, align 8
  %218 = getelementptr inbounds %struct.link, %struct.link* %217, i32 0, i32 3
  %219 = load i32, i32* %218, align 4
  %220 = load %struct.link*, %struct.link** %3, align 8
  %221 = getelementptr inbounds %struct.link, %struct.link* %220, i32 0, i32 6
  %222 = load i32, i32* %221, align 4
  %223 = load i32, i32* %6, align 4
  %224 = sdiv i32 %223, 4
  %225 = call i32 (i8*, ...) @dbg_link(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.13, i64 0, i64 0), i32 %219, i32 %222, i32 %224)
  %226 = load %struct.link*, %struct.link** %3, align 8
  %227 = load i32, i32* @STATE_MSG, align 4
  %228 = call i32 @tipc_link_send_proto_msg(%struct.link* %226, i32 %227, i32 1, i32 0, i32 0, i32 0, i32 0)
  %229 = load %struct.link*, %struct.link** %3, align 8
  %230 = getelementptr inbounds %struct.link, %struct.link* %229, i32 0, i32 3
  %231 = load i32, i32* %230, align 4
  %232 = add nsw i32 %231, 1
  store i32 %232, i32* %230, align 4
  %233 = load %struct.link*, %struct.link** %3, align 8
  %234 = load i32, i32* %6, align 4
  %235 = sdiv i32 %234, 4
  %236 = call i32 @link_set_timer(%struct.link* %233, i32 %235)
  br label %261

237:                                              ; preds = %208
  %238 = load %struct.link*, %struct.link** %3, align 8
  %239 = getelementptr inbounds %struct.link, %struct.link* %238, i32 0, i32 3
  %240 = load i32, i32* %239, align 4
  %241 = call i32 (i8*, ...) @dbg_link(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.14, i64 0, i64 0), i32 %240)
  %242 = load %struct.link*, %struct.link** %3, align 8
  %243 = getelementptr inbounds %struct.link, %struct.link* %242, i32 0, i32 5
  %244 = load i32, i32* %243, align 8
  %245 = call i32 @warn(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.15, i64 0, i64 0), i32 %244)
  %246 = load %struct.link*, %struct.link** %3, align 8
  %247 = call i32 @tipc_link_reset(%struct.link* %246)
  %248 = load %struct.link*, %struct.link** %3, align 8
  %249 = getelementptr inbounds %struct.link, %struct.link* %248, i32 0, i32 2
  store i32 133, i32* %249, align 8
  %250 = load %struct.link*, %struct.link** %3, align 8
  %251 = getelementptr inbounds %struct.link, %struct.link* %250, i32 0, i32 3
  store i32 0, i32* %251, align 4
  %252 = load %struct.link*, %struct.link** %3, align 8
  %253 = call i32 @tipc_link_send_proto_msg(%struct.link* %252, i32 135, i32 0, i32 0, i32 0, i32 0, i32 0)
  %254 = load %struct.link*, %struct.link** %3, align 8
  %255 = getelementptr inbounds %struct.link, %struct.link* %254, i32 0, i32 3
  %256 = load i32, i32* %255, align 4
  %257 = add nsw i32 %256, 1
  store i32 %257, i32* %255, align 4
  %258 = load %struct.link*, %struct.link** %3, align 8
  %259 = load i32, i32* %6, align 4
  %260 = call i32 @link_set_timer(%struct.link* %258, i32 %259)
  br label %261

261:                                              ; preds = %237, %216
  br label %262

262:                                              ; preds = %261, %204
  br label %266

263:                                              ; preds = %136
  %264 = load i32, i32* %4, align 4
  %265 = call i32 (i8*, i32, ...) @err(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.16, i64 0, i64 0), i32 %264)
  br label %266

266:                                              ; preds = %263, %262, %150, %141
  br label %407

267:                                              ; preds = %30
  %268 = call i32 (i8*, ...) @dbg_link(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.17, i64 0, i64 0))
  %269 = load i32, i32* %4, align 4
  switch i32 %269, label %337 [
    i32 130, label %270
    i32 136, label %272
    i32 135, label %306
    i32 132, label %322
    i32 131, label %326
  ]

270:                                              ; preds = %267
  %271 = call i32 (i8*, ...) @dbg_link(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.18, i64 0, i64 0))
  br label %340

272:                                              ; preds = %267
  %273 = load %struct.link*, %struct.link** %3, align 8
  %274 = getelementptr inbounds %struct.link, %struct.link* %273, i32 0, i32 4
  %275 = load %struct.TYPE_2__*, %struct.TYPE_2__** %274, align 8
  %276 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %275, i32 0, i32 0
  %277 = load %struct.link**, %struct.link*** %276, align 8
  %278 = getelementptr inbounds %struct.link*, %struct.link** %277, i64 0
  %279 = load %struct.link*, %struct.link** %278, align 8
  store %struct.link* %279, %struct.link** %5, align 8
  %280 = load %struct.link*, %struct.link** %5, align 8
  %281 = icmp ne %struct.link* %280, null
  br i1 %281, label %282, label %288

282:                                              ; preds = %272
  %283 = load %struct.link*, %struct.link** %5, align 8
  %284 = call i32 @link_working_unknown(%struct.link* %283)
  %285 = icmp ne i32 %284, 0
  br i1 %285, label %286, label %288

286:                                              ; preds = %282
  %287 = call i32 (i8*, ...) @dbg_link(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0))
  br label %340

288:                                              ; preds = %282, %272
  %289 = call i32 (i8*, ...) @dbg_link(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.10, i64 0, i64 0))
  %290 = load %struct.link*, %struct.link** %3, align 8
  %291 = getelementptr inbounds %struct.link, %struct.link* %290, i32 0, i32 2
  store i32 128, i32* %291, align 8
  %292 = load %struct.link*, %struct.link** %3, align 8
  %293 = getelementptr inbounds %struct.link, %struct.link* %292, i32 0, i32 3
  store i32 0, i32* %293, align 4
  %294 = load %struct.link*, %struct.link** %3, align 8
  %295 = call i32 @link_activate(%struct.link* %294)
  %296 = load %struct.link*, %struct.link** %3, align 8
  %297 = load i32, i32* @STATE_MSG, align 4
  %298 = call i32 @tipc_link_send_proto_msg(%struct.link* %296, i32 %297, i32 1, i32 0, i32 0, i32 0, i32 0)
  %299 = load %struct.link*, %struct.link** %3, align 8
  %300 = getelementptr inbounds %struct.link, %struct.link* %299, i32 0, i32 3
  %301 = load i32, i32* %300, align 4
  %302 = add nsw i32 %301, 1
  store i32 %302, i32* %300, align 4
  %303 = load %struct.link*, %struct.link** %3, align 8
  %304 = load i32, i32* %6, align 4
  %305 = call i32 @link_set_timer(%struct.link* %303, i32 %304)
  br label %340

306:                                              ; preds = %267
  %307 = call i32 (i8*, ...) @dbg_link(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.19, i64 0, i64 0))
  %308 = call i32 (i8*, ...) @dbg_link(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.20, i64 0, i64 0))
  %309 = load %struct.link*, %struct.link** %3, align 8
  %310 = getelementptr inbounds %struct.link, %struct.link* %309, i32 0, i32 2
  store i32 134, i32* %310, align 8
  %311 = load %struct.link*, %struct.link** %3, align 8
  %312 = getelementptr inbounds %struct.link, %struct.link* %311, i32 0, i32 3
  store i32 0, i32* %312, align 4
  %313 = load %struct.link*, %struct.link** %3, align 8
  %314 = call i32 @tipc_link_send_proto_msg(%struct.link* %313, i32 136, i32 1, i32 0, i32 0, i32 0, i32 0)
  %315 = load %struct.link*, %struct.link** %3, align 8
  %316 = getelementptr inbounds %struct.link, %struct.link* %315, i32 0, i32 3
  %317 = load i32, i32* %316, align 4
  %318 = add nsw i32 %317, 1
  store i32 %318, i32* %316, align 4
  %319 = load %struct.link*, %struct.link** %3, align 8
  %320 = load i32, i32* %6, align 4
  %321 = call i32 @link_set_timer(%struct.link* %319, i32 %320)
  br label %340

322:                                              ; preds = %267
  %323 = call i32 (i8*, ...) @dbg_link(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.21, i64 0, i64 0))
  %324 = load %struct.link*, %struct.link** %3, align 8
  %325 = getelementptr inbounds %struct.link, %struct.link* %324, i32 0, i32 1
  store i32 1, i32* %325, align 4
  br label %326

326:                                              ; preds = %267, %322
  %327 = call i32 (i8*, ...) @dbg_link(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.22, i64 0, i64 0))
  %328 = load %struct.link*, %struct.link** %3, align 8
  %329 = call i32 @tipc_link_send_proto_msg(%struct.link* %328, i32 135, i32 0, i32 0, i32 0, i32 0, i32 0)
  %330 = load %struct.link*, %struct.link** %3, align 8
  %331 = getelementptr inbounds %struct.link, %struct.link* %330, i32 0, i32 3
  %332 = load i32, i32* %331, align 4
  %333 = add nsw i32 %332, 1
  store i32 %333, i32* %331, align 4
  %334 = load %struct.link*, %struct.link** %3, align 8
  %335 = load i32, i32* %6, align 4
  %336 = call i32 @link_set_timer(%struct.link* %334, i32 %335)
  br label %340

337:                                              ; preds = %267
  %338 = load i32, i32* %4, align 4
  %339 = call i32 (i8*, i32, ...) @err(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.23, i64 0, i64 0), i32 %338)
  br label %340

340:                                              ; preds = %337, %326, %306, %288, %286, %270
  br label %407

341:                                              ; preds = %30
  %342 = call i32 (i8*, ...) @dbg_link(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.24, i64 0, i64 0))
  %343 = load i32, i32* %4, align 4
  switch i32 %343, label %397 [
    i32 130, label %344
    i32 136, label %346
    i32 135, label %380
    i32 131, label %382
  ]

344:                                              ; preds = %341
  %345 = call i32 (i8*, ...) @dbg_link(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0))
  br label %346

346:                                              ; preds = %341, %344
  %347 = load %struct.link*, %struct.link** %3, align 8
  %348 = getelementptr inbounds %struct.link, %struct.link* %347, i32 0, i32 4
  %349 = load %struct.TYPE_2__*, %struct.TYPE_2__** %348, align 8
  %350 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %349, i32 0, i32 0
  %351 = load %struct.link**, %struct.link*** %350, align 8
  %352 = getelementptr inbounds %struct.link*, %struct.link** %351, i64 0
  %353 = load %struct.link*, %struct.link** %352, align 8
  store %struct.link* %353, %struct.link** %5, align 8
  %354 = load %struct.link*, %struct.link** %5, align 8
  %355 = icmp ne %struct.link* %354, null
  br i1 %355, label %356, label %362

356:                                              ; preds = %346
  %357 = load %struct.link*, %struct.link** %5, align 8
  %358 = call i32 @link_working_unknown(%struct.link* %357)
  %359 = icmp ne i32 %358, 0
  br i1 %359, label %360, label %362

360:                                              ; preds = %356
  %361 = call i32 (i8*, ...) @dbg_link(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0))
  br label %400

362:                                              ; preds = %356, %346
  %363 = call i32 (i8*, ...) @dbg_link(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.10, i64 0, i64 0))
  %364 = load %struct.link*, %struct.link** %3, align 8
  %365 = getelementptr inbounds %struct.link, %struct.link* %364, i32 0, i32 2
  store i32 128, i32* %365, align 8
  %366 = load %struct.link*, %struct.link** %3, align 8
  %367 = getelementptr inbounds %struct.link, %struct.link* %366, i32 0, i32 3
  store i32 0, i32* %367, align 4
  %368 = load %struct.link*, %struct.link** %3, align 8
  %369 = call i32 @link_activate(%struct.link* %368)
  %370 = load %struct.link*, %struct.link** %3, align 8
  %371 = load i32, i32* @STATE_MSG, align 4
  %372 = call i32 @tipc_link_send_proto_msg(%struct.link* %370, i32 %371, i32 1, i32 0, i32 0, i32 0, i32 0)
  %373 = load %struct.link*, %struct.link** %3, align 8
  %374 = getelementptr inbounds %struct.link, %struct.link* %373, i32 0, i32 3
  %375 = load i32, i32* %374, align 4
  %376 = add nsw i32 %375, 1
  store i32 %376, i32* %374, align 4
  %377 = load %struct.link*, %struct.link** %3, align 8
  %378 = load i32, i32* %6, align 4
  %379 = call i32 @link_set_timer(%struct.link* %377, i32 %378)
  br label %400

380:                                              ; preds = %341
  %381 = call i32 (i8*, ...) @dbg_link(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.25, i64 0, i64 0))
  br label %400

382:                                              ; preds = %341
  %383 = call i32 (i8*, ...) @dbg_link(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.26, i64 0, i64 0))
  %384 = load %struct.link*, %struct.link** %3, align 8
  %385 = call i32 @tipc_link_send_proto_msg(%struct.link* %384, i32 136, i32 0, i32 0, i32 0, i32 0, i32 0)
  %386 = load %struct.link*, %struct.link** %3, align 8
  %387 = getelementptr inbounds %struct.link, %struct.link* %386, i32 0, i32 3
  %388 = load i32, i32* %387, align 4
  %389 = add nsw i32 %388, 1
  store i32 %389, i32* %387, align 4
  %390 = load %struct.link*, %struct.link** %3, align 8
  %391 = load i32, i32* %6, align 4
  %392 = call i32 @link_set_timer(%struct.link* %390, i32 %391)
  %393 = load %struct.link*, %struct.link** %3, align 8
  %394 = getelementptr inbounds %struct.link, %struct.link* %393, i32 0, i32 3
  %395 = load i32, i32* %394, align 4
  %396 = call i32 (i8*, ...) @dbg_link(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.27, i64 0, i64 0), i32 %395)
  br label %400

397:                                              ; preds = %341
  %398 = load i32, i32* %4, align 4
  %399 = call i32 (i8*, i32, ...) @err(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.28, i64 0, i64 0), i32 %398)
  br label %400

400:                                              ; preds = %397, %382, %380, %362, %360
  br label %407

401:                                              ; preds = %30
  %402 = load %struct.link*, %struct.link** %3, align 8
  %403 = getelementptr inbounds %struct.link, %struct.link* %402, i32 0, i32 2
  %404 = load i32, i32* %403, align 8
  %405 = load i32, i32* %4, align 4
  %406 = call i32 (i8*, i32, ...) @err(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.29, i64 0, i64 0), i32 %404, i32 %405)
  br label %407

407:                                              ; preds = %17, %29, %401, %400, %340, %266, %135
  ret void
}

declare dso_local i64 @link_blocked(%struct.link*) #1

declare dso_local i32 @link_set_timer(%struct.link*, i32) #1

declare dso_local i32 @dbg_link(i8*, ...) #1

declare dso_local i32 @tipc_bclink_acks_missing(%struct.TYPE_2__*) #1

declare dso_local i32 @tipc_link_send_proto_msg(%struct.link*, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @info(i8*, i32) #1

declare dso_local i32 @tipc_link_reset(%struct.link*) #1

declare dso_local i32 @err(i8*, i32, ...) #1

declare dso_local i32 @warn(i8*, i32) #1

declare dso_local i32 @link_working_unknown(%struct.link*) #1

declare dso_local i32 @link_activate(%struct.link*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

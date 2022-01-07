; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/uwb/wlp/extr_wss-lc.c_wlp_wss_is_active.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/uwb/wlp/extr_wss-lc.c_wlp_wss_is_active.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wlp = type { i32, %struct.wlp_session*, %struct.TYPE_4__* }
%struct.wlp_session = type { %struct.sk_buff*, %struct.uwb_dev_addr, i32*, i32, i32 }
%struct.sk_buff = type { i64, i64 }
%struct.uwb_dev_addr = type { i32* }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { %struct.device }
%struct.device = type { i32 }
%struct.wlp_wss = type { i32 }
%struct.wlp_frame_assoc = type { i64 }
%struct.wlp_uuid = type { i32 }

@completion = common dso_local global i32 0, align 4
@WLP_ASSOC_C1 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [52 x i8] c"Unable to send C1 frame to neighbor %02x:%02x (%d)\0A\00", align 1
@WLP_ASSOC_C2 = common dso_local global i32 0, align 4
@wlp_session_cb = common dso_local global i32 0, align 4
@WLP_PER_MSG_TIMEOUT = common dso_local global i32 0, align 4
@HZ = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [49 x i8] c"Timeout while sending C1 to neighbor %02x:%02x.\0A\00", align 1
@.str.2 = private unnamed_addr constant [42 x i8] c"Unable to send C1 to neighbor %02x:%02x.\0A\00", align 1
@WLP_ASSOC_F0 = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [66 x i8] c"WLP:  unable to parse incoming F0 frame from neighbor %02x:%02x.\0A\00", align 1
@.str.4 = private unnamed_addr constant [44 x i8] c"WLP: unable to obtain WSSID from C2 frame.\0A\00", align 1
@.str.5 = private unnamed_addr constant [50 x i8] c"WLP: Received a C2 frame without matching WSSID.\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @wlp_wss_is_active(%struct.wlp* %0, %struct.wlp_wss* %1, %struct.uwb_dev_addr* %2) #0 {
  %4 = alloca %struct.wlp*, align 8
  %5 = alloca %struct.wlp_wss*, align 8
  %6 = alloca %struct.uwb_dev_addr*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.device*, align 8
  %9 = alloca %struct.wlp_session, align 8
  %10 = alloca %struct.sk_buff*, align 8
  %11 = alloca %struct.wlp_frame_assoc*, align 8
  %12 = alloca %struct.wlp_uuid, align 4
  store %struct.wlp* %0, %struct.wlp** %4, align 8
  store %struct.wlp_wss* %1, %struct.wlp_wss** %5, align 8
  store %struct.uwb_dev_addr* %2, %struct.uwb_dev_addr** %6, align 8
  store i32 0, i32* %7, align 4
  %13 = load %struct.wlp*, %struct.wlp** %4, align 8
  %14 = getelementptr inbounds %struct.wlp, %struct.wlp* %13, i32 0, i32 2
  %15 = load %struct.TYPE_4__*, %struct.TYPE_4__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %16, i32 0, i32 0
  store %struct.device* %17, %struct.device** %8, align 8
  %18 = load i32, i32* @completion, align 4
  %19 = call i32 @DECLARE_COMPLETION_ONSTACK(i32 %18)
  %20 = load %struct.wlp*, %struct.wlp** %4, align 8
  %21 = getelementptr inbounds %struct.wlp, %struct.wlp* %20, i32 0, i32 0
  %22 = call i32 @mutex_lock(i32* %21)
  %23 = load %struct.wlp*, %struct.wlp** %4, align 8
  %24 = load %struct.wlp_wss*, %struct.wlp_wss** %5, align 8
  %25 = load %struct.uwb_dev_addr*, %struct.uwb_dev_addr** %6, align 8
  %26 = load i32, i32* @WLP_ASSOC_C1, align 4
  %27 = call i32 @wlp_send_assoc_frame(%struct.wlp* %23, %struct.wlp_wss* %24, %struct.uwb_dev_addr* %25, i32 %26)
  store i32 %27, i32* %7, align 4
  %28 = load i32, i32* %7, align 4
  %29 = icmp slt i32 %28, 0
  br i1 %29, label %30, label %44

30:                                               ; preds = %3
  %31 = load %struct.device*, %struct.device** %8, align 8
  %32 = load %struct.uwb_dev_addr*, %struct.uwb_dev_addr** %6, align 8
  %33 = getelementptr inbounds %struct.uwb_dev_addr, %struct.uwb_dev_addr* %32, i32 0, i32 0
  %34 = load i32*, i32** %33, align 8
  %35 = getelementptr inbounds i32, i32* %34, i64 1
  %36 = load i32, i32* %35, align 4
  %37 = load %struct.uwb_dev_addr*, %struct.uwb_dev_addr** %6, align 8
  %38 = getelementptr inbounds %struct.uwb_dev_addr, %struct.uwb_dev_addr* %37, i32 0, i32 0
  %39 = load i32*, i32** %38, align 8
  %40 = getelementptr inbounds i32, i32* %39, i64 0
  %41 = load i32, i32* %40, align 4
  %42 = load i32, i32* %7, align 4
  %43 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %31, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str, i64 0, i64 0), i32 %36, i32 %41, i32 %42)
  store i32 0, i32* %7, align 4
  br label %158

44:                                               ; preds = %3
  %45 = load i32, i32* @WLP_ASSOC_C2, align 4
  %46 = getelementptr inbounds %struct.wlp_session, %struct.wlp_session* %9, i32 0, i32 4
  store i32 %45, i32* %46, align 4
  %47 = load i32, i32* @wlp_session_cb, align 4
  %48 = getelementptr inbounds %struct.wlp_session, %struct.wlp_session* %9, i32 0, i32 3
  store i32 %47, i32* %48, align 8
  %49 = getelementptr inbounds %struct.wlp_session, %struct.wlp_session* %9, i32 0, i32 2
  store i32* @completion, i32** %49, align 8
  %50 = getelementptr inbounds %struct.wlp_session, %struct.wlp_session* %9, i32 0, i32 1
  %51 = load %struct.uwb_dev_addr*, %struct.uwb_dev_addr** %6, align 8
  %52 = bitcast %struct.uwb_dev_addr* %50 to i8*
  %53 = bitcast %struct.uwb_dev_addr* %51 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %52, i8* align 8 %53, i64 8, i1 false)
  %54 = load %struct.wlp*, %struct.wlp** %4, align 8
  %55 = getelementptr inbounds %struct.wlp, %struct.wlp* %54, i32 0, i32 1
  %56 = load %struct.wlp_session*, %struct.wlp_session** %55, align 8
  %57 = icmp ne %struct.wlp_session* %56, null
  %58 = zext i1 %57 to i32
  %59 = call i32 @BUG_ON(i32 %58)
  %60 = load %struct.wlp*, %struct.wlp** %4, align 8
  %61 = getelementptr inbounds %struct.wlp, %struct.wlp* %60, i32 0, i32 1
  store %struct.wlp_session* %9, %struct.wlp_session** %61, align 8
  %62 = load i32, i32* @WLP_PER_MSG_TIMEOUT, align 4
  %63 = load i32, i32* @HZ, align 4
  %64 = mul nsw i32 %62, %63
  %65 = call i32 @wait_for_completion_interruptible_timeout(i32* @completion, i32 %64)
  store i32 %65, i32* %7, align 4
  %66 = load i32, i32* %7, align 4
  %67 = icmp eq i32 %66, 0
  br i1 %67, label %68, label %81

68:                                               ; preds = %44
  %69 = load %struct.device*, %struct.device** %8, align 8
  %70 = load %struct.uwb_dev_addr*, %struct.uwb_dev_addr** %6, align 8
  %71 = getelementptr inbounds %struct.uwb_dev_addr, %struct.uwb_dev_addr* %70, i32 0, i32 0
  %72 = load i32*, i32** %71, align 8
  %73 = getelementptr inbounds i32, i32* %72, i64 1
  %74 = load i32, i32* %73, align 4
  %75 = load %struct.uwb_dev_addr*, %struct.uwb_dev_addr** %6, align 8
  %76 = getelementptr inbounds %struct.uwb_dev_addr, %struct.uwb_dev_addr* %75, i32 0, i32 0
  %77 = load i32*, i32** %76, align 8
  %78 = getelementptr inbounds i32, i32* %77, i64 0
  %79 = load i32, i32* %78, align 4
  %80 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %69, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.1, i64 0, i64 0), i32 %74, i32 %79)
  br label %158

81:                                               ; preds = %44
  %82 = load i32, i32* %7, align 4
  %83 = icmp slt i32 %82, 0
  br i1 %83, label %84, label %97

84:                                               ; preds = %81
  %85 = load %struct.device*, %struct.device** %8, align 8
  %86 = load %struct.uwb_dev_addr*, %struct.uwb_dev_addr** %6, align 8
  %87 = getelementptr inbounds %struct.uwb_dev_addr, %struct.uwb_dev_addr* %86, i32 0, i32 0
  %88 = load i32*, i32** %87, align 8
  %89 = getelementptr inbounds i32, i32* %88, i64 1
  %90 = load i32, i32* %89, align 4
  %91 = load %struct.uwb_dev_addr*, %struct.uwb_dev_addr** %6, align 8
  %92 = getelementptr inbounds %struct.uwb_dev_addr, %struct.uwb_dev_addr* %91, i32 0, i32 0
  %93 = load i32*, i32** %92, align 8
  %94 = getelementptr inbounds i32, i32* %93, i64 0
  %95 = load i32, i32* %94, align 4
  %96 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %85, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.2, i64 0, i64 0), i32 %90, i32 %95)
  store i32 0, i32* %7, align 4
  br label %158

97:                                               ; preds = %81
  %98 = getelementptr inbounds %struct.wlp_session, %struct.wlp_session* %9, i32 0, i32 0
  %99 = load %struct.sk_buff*, %struct.sk_buff** %98, align 8
  store %struct.sk_buff* %99, %struct.sk_buff** %10, align 8
  %100 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %101 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %100, i32 0, i32 1
  %102 = load i64, i64* %101, align 8
  %103 = inttoptr i64 %102 to i8*
  %104 = bitcast i8* %103 to %struct.wlp_frame_assoc*
  store %struct.wlp_frame_assoc* %104, %struct.wlp_frame_assoc** %11, align 8
  %105 = load %struct.wlp_frame_assoc*, %struct.wlp_frame_assoc** %11, align 8
  %106 = getelementptr inbounds %struct.wlp_frame_assoc, %struct.wlp_frame_assoc* %105, i32 0, i32 0
  %107 = load i64, i64* %106, align 8
  %108 = load i64, i64* @WLP_ASSOC_F0, align 8
  %109 = icmp eq i64 %107, %108
  br i1 %109, label %110, label %130

110:                                              ; preds = %97
  %111 = load %struct.wlp*, %struct.wlp** %4, align 8
  %112 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %113 = call i32 @wlp_parse_f0(%struct.wlp* %111, %struct.sk_buff* %112)
  store i32 %113, i32* %7, align 4
  %114 = load i32, i32* %7, align 4
  %115 = icmp slt i32 %114, 0
  br i1 %115, label %116, label %129

116:                                              ; preds = %110
  %117 = load %struct.device*, %struct.device** %8, align 8
  %118 = load %struct.uwb_dev_addr*, %struct.uwb_dev_addr** %6, align 8
  %119 = getelementptr inbounds %struct.uwb_dev_addr, %struct.uwb_dev_addr* %118, i32 0, i32 0
  %120 = load i32*, i32** %119, align 8
  %121 = getelementptr inbounds i32, i32* %120, i64 1
  %122 = load i32, i32* %121, align 4
  %123 = load %struct.uwb_dev_addr*, %struct.uwb_dev_addr** %6, align 8
  %124 = getelementptr inbounds %struct.uwb_dev_addr, %struct.uwb_dev_addr* %123, i32 0, i32 0
  %125 = load i32*, i32** %124, align 8
  %126 = getelementptr inbounds i32, i32* %125, i64 0
  %127 = load i32, i32* %126, align 4
  %128 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %117, i8* getelementptr inbounds ([66 x i8], [66 x i8]* @.str.3, i64 0, i64 0), i32 %122, i32 %127)
  br label %129

129:                                              ; preds = %116, %110
  store i32 0, i32* %7, align 4
  br label %155

130:                                              ; preds = %97
  %131 = load %struct.wlp*, %struct.wlp** %4, align 8
  %132 = load %struct.wlp_frame_assoc*, %struct.wlp_frame_assoc** %11, align 8
  %133 = bitcast %struct.wlp_frame_assoc* %132 to i8*
  %134 = getelementptr i8, i8* %133, i64 8
  %135 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %136 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %135, i32 0, i32 0
  %137 = load i64, i64* %136, align 8
  %138 = sub i64 %137, 8
  %139 = call i32 @wlp_get_wssid(%struct.wlp* %131, i8* %134, %struct.wlp_uuid* %12, i64 %138)
  store i32 %139, i32* %7, align 4
  %140 = load i32, i32* %7, align 4
  %141 = icmp slt i32 %140, 0
  br i1 %141, label %142, label %145

142:                                              ; preds = %130
  %143 = load %struct.device*, %struct.device** %8, align 8
  %144 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %143, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.4, i64 0, i64 0))
  store i32 0, i32* %7, align 4
  br label %155

145:                                              ; preds = %130
  %146 = load %struct.wlp_wss*, %struct.wlp_wss** %5, align 8
  %147 = getelementptr inbounds %struct.wlp_wss, %struct.wlp_wss* %146, i32 0, i32 0
  %148 = call i32 @memcmp(%struct.wlp_uuid* %12, i32* %147, i32 4)
  %149 = icmp ne i32 %148, 0
  br i1 %149, label %151, label %150

150:                                              ; preds = %145
  store i32 1, i32* %7, align 4
  br label %154

151:                                              ; preds = %145
  %152 = load %struct.device*, %struct.device** %8, align 8
  %153 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %152, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.5, i64 0, i64 0))
  store i32 0, i32* %7, align 4
  br label %154

154:                                              ; preds = %151, %150
  br label %155

155:                                              ; preds = %154, %142, %129
  %156 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %157 = call i32 @kfree_skb(%struct.sk_buff* %156)
  br label %158

158:                                              ; preds = %155, %84, %68, %30
  %159 = load %struct.wlp*, %struct.wlp** %4, align 8
  %160 = getelementptr inbounds %struct.wlp, %struct.wlp* %159, i32 0, i32 1
  store %struct.wlp_session* null, %struct.wlp_session** %160, align 8
  %161 = load %struct.wlp*, %struct.wlp** %4, align 8
  %162 = getelementptr inbounds %struct.wlp, %struct.wlp* %161, i32 0, i32 0
  %163 = call i32 @mutex_unlock(i32* %162)
  %164 = load i32, i32* %7, align 4
  ret i32 %164
}

declare dso_local i32 @DECLARE_COMPLETION_ONSTACK(i32) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @wlp_send_assoc_frame(%struct.wlp*, %struct.wlp_wss*, %struct.uwb_dev_addr*, i32) #1

declare dso_local i32 @dev_err(%struct.device*, i8*, ...) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @wait_for_completion_interruptible_timeout(i32*, i32) #1

declare dso_local i32 @wlp_parse_f0(%struct.wlp*, %struct.sk_buff*) #1

declare dso_local i32 @wlp_get_wssid(%struct.wlp*, i8*, %struct.wlp_uuid*, i64) #1

declare dso_local i32 @memcmp(%struct.wlp_uuid*, i32*, i32) #1

declare dso_local i32 @kfree_skb(%struct.sk_buff*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

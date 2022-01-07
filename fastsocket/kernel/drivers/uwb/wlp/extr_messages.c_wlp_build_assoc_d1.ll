; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/uwb/wlp/extr_messages.c_wlp_build_assoc_d1.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/uwb/wlp/extr_messages.c_wlp_build_assoc_d1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wlp = type { i32, %struct.wlp_device_info*, %struct.TYPE_5__* }
%struct.wlp_device_info = type { i32, i32, i32, i32, i32, i32 }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.device }
%struct.device = type { i32 }
%struct.wlp_wss = type { i32 }
%struct.sk_buff = type { i64 }
%struct.wlp_frame_assoc = type { i8*, i32, i32, i32, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32, i32 }

@.str = private unnamed_addr constant [57 x i8] c"WLP: Unable to setup device information for D1 message.\0A\00", align 1
@.str.1 = private unnamed_addr constant [54 x i8] c"WLP: Cannot allocate memory for association message.\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@WLP_PROTOCOL_ID = common dso_local global i32 0, align 4
@WLP_FRAME_ASSOCIATION = common dso_local global i32 0, align 4
@WLP_ASSOC_D1 = common dso_local global i32 0, align 4
@WLP_VERSION = common dso_local global i32 0, align 4
@WLP_WSS_REG_SELECT = common dso_local global i32 0, align 4
@WLP_ASSOC_ERROR_NONE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.wlp*, %struct.wlp_wss*, %struct.sk_buff**)* @wlp_build_assoc_d1 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wlp_build_assoc_d1(%struct.wlp* %0, %struct.wlp_wss* %1, %struct.sk_buff** %2) #0 {
  %4 = alloca %struct.wlp*, align 8
  %5 = alloca %struct.wlp_wss*, align 8
  %6 = alloca %struct.sk_buff**, align 8
  %7 = alloca %struct.device*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.wlp_device_info*, align 8
  %10 = alloca i64, align 8
  %11 = alloca %struct.wlp_frame_assoc*, align 8
  %12 = alloca %struct.sk_buff*, align 8
  %13 = alloca i8*, align 8
  store %struct.wlp* %0, %struct.wlp** %4, align 8
  store %struct.wlp_wss* %1, %struct.wlp_wss** %5, align 8
  store %struct.sk_buff** %2, %struct.sk_buff*** %6, align 8
  %14 = load %struct.wlp*, %struct.wlp** %4, align 8
  %15 = getelementptr inbounds %struct.wlp, %struct.wlp* %14, i32 0, i32 2
  %16 = load %struct.TYPE_5__*, %struct.TYPE_5__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 0
  store %struct.device* %18, %struct.device** %7, align 8
  store i32 0, i32* %8, align 4
  store i64 0, i64* %10, align 8
  %19 = load %struct.wlp*, %struct.wlp** %4, align 8
  %20 = getelementptr inbounds %struct.wlp, %struct.wlp* %19, i32 0, i32 1
  %21 = load %struct.wlp_device_info*, %struct.wlp_device_info** %20, align 8
  %22 = icmp eq %struct.wlp_device_info* %21, null
  br i1 %22, label %23, label %32

23:                                               ; preds = %3
  %24 = load %struct.wlp*, %struct.wlp** %4, align 8
  %25 = call i32 @__wlp_setup_device_info(%struct.wlp* %24)
  store i32 %25, i32* %8, align 4
  %26 = load i32, i32* %8, align 4
  %27 = icmp slt i32 %26, 0
  br i1 %27, label %28, label %31

28:                                               ; preds = %23
  %29 = load %struct.device*, %struct.device** %7, align 8
  %30 = call i32 @dev_err(%struct.device* %29, i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str, i64 0, i64 0))
  br label %202

31:                                               ; preds = %23
  br label %32

32:                                               ; preds = %31, %3
  %33 = load %struct.wlp*, %struct.wlp** %4, align 8
  %34 = getelementptr inbounds %struct.wlp, %struct.wlp* %33, i32 0, i32 1
  %35 = load %struct.wlp_device_info*, %struct.wlp_device_info** %34, align 8
  store %struct.wlp_device_info* %35, %struct.wlp_device_info** %9, align 8
  %36 = load %struct.wlp_device_info*, %struct.wlp_device_info** %9, align 8
  %37 = getelementptr inbounds %struct.wlp_device_info, %struct.wlp_device_info* %36, i32 0, i32 5
  %38 = load i32, i32* %37, align 4
  %39 = call i64 @strlen(i32 %38)
  %40 = add i64 44, %39
  %41 = add i64 %40, 4
  %42 = load %struct.wlp_device_info*, %struct.wlp_device_info** %9, align 8
  %43 = getelementptr inbounds %struct.wlp_device_info, %struct.wlp_device_info* %42, i32 0, i32 4
  %44 = load i32, i32* %43, align 4
  %45 = call i64 @strlen(i32 %44)
  %46 = add i64 %41, %45
  %47 = add i64 %46, 4
  %48 = load %struct.wlp_device_info*, %struct.wlp_device_info** %9, align 8
  %49 = getelementptr inbounds %struct.wlp_device_info, %struct.wlp_device_info* %48, i32 0, i32 3
  %50 = load i32, i32* %49, align 4
  %51 = call i64 @strlen(i32 %50)
  %52 = add i64 %47, %51
  %53 = add i64 %52, 4
  %54 = load %struct.wlp_device_info*, %struct.wlp_device_info** %9, align 8
  %55 = getelementptr inbounds %struct.wlp_device_info, %struct.wlp_device_info* %54, i32 0, i32 2
  %56 = load i32, i32* %55, align 4
  %57 = call i64 @strlen(i32 %56)
  %58 = add i64 %53, %57
  %59 = add i64 %58, 4
  %60 = load %struct.wlp_device_info*, %struct.wlp_device_info** %9, align 8
  %61 = getelementptr inbounds %struct.wlp_device_info, %struct.wlp_device_info* %60, i32 0, i32 1
  %62 = load i32, i32* %61, align 4
  %63 = call i64 @strlen(i32 %62)
  %64 = add i64 %59, %63
  %65 = add i64 %64, 4
  %66 = add i64 %65, 4
  %67 = call %struct.sk_buff* @dev_alloc_skb(i64 %66)
  store %struct.sk_buff* %67, %struct.sk_buff** %12, align 8
  %68 = load %struct.sk_buff*, %struct.sk_buff** %12, align 8
  %69 = icmp eq %struct.sk_buff* %68, null
  br i1 %69, label %70, label %75

70:                                               ; preds = %32
  %71 = load %struct.device*, %struct.device** %7, align 8
  %72 = call i32 @dev_err(%struct.device* %71, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.1, i64 0, i64 0))
  %73 = load i32, i32* @ENOMEM, align 4
  %74 = sub nsw i32 0, %73
  store i32 %74, i32* %8, align 4
  br label %202

75:                                               ; preds = %32
  %76 = load %struct.sk_buff*, %struct.sk_buff** %12, align 8
  %77 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %76, i32 0, i32 0
  %78 = load i64, i64* %77, align 8
  %79 = inttoptr i64 %78 to i8*
  %80 = bitcast i8* %79 to %struct.wlp_frame_assoc*
  store %struct.wlp_frame_assoc* %80, %struct.wlp_frame_assoc** %11, align 8
  %81 = load i32, i32* @WLP_PROTOCOL_ID, align 4
  %82 = call i32 @cpu_to_le16(i32 %81)
  %83 = load %struct.wlp_frame_assoc*, %struct.wlp_frame_assoc** %11, align 8
  %84 = getelementptr inbounds %struct.wlp_frame_assoc, %struct.wlp_frame_assoc* %83, i32 0, i32 4
  %85 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %84, i32 0, i32 1
  store i32 %82, i32* %85, align 4
  %86 = load i32, i32* @WLP_FRAME_ASSOCIATION, align 4
  %87 = load %struct.wlp_frame_assoc*, %struct.wlp_frame_assoc** %11, align 8
  %88 = getelementptr inbounds %struct.wlp_frame_assoc, %struct.wlp_frame_assoc* %87, i32 0, i32 4
  %89 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %88, i32 0, i32 0
  store i32 %86, i32* %89, align 4
  %90 = load i32, i32* @WLP_ASSOC_D1, align 4
  %91 = load %struct.wlp_frame_assoc*, %struct.wlp_frame_assoc** %11, align 8
  %92 = getelementptr inbounds %struct.wlp_frame_assoc, %struct.wlp_frame_assoc* %91, i32 0, i32 3
  store i32 %90, i32* %92, align 8
  %93 = load %struct.wlp_frame_assoc*, %struct.wlp_frame_assoc** %11, align 8
  %94 = getelementptr inbounds %struct.wlp_frame_assoc, %struct.wlp_frame_assoc* %93, i32 0, i32 2
  %95 = load i32, i32* @WLP_VERSION, align 4
  %96 = call i32 @wlp_set_version(i32* %94, i32 %95)
  %97 = load %struct.wlp_frame_assoc*, %struct.wlp_frame_assoc** %11, align 8
  %98 = getelementptr inbounds %struct.wlp_frame_assoc, %struct.wlp_frame_assoc* %97, i32 0, i32 1
  %99 = load i32, i32* @WLP_ASSOC_D1, align 4
  %100 = call i32 @wlp_set_msg_type(i32* %98, i32 %99)
  %101 = load %struct.wlp_frame_assoc*, %struct.wlp_frame_assoc** %11, align 8
  %102 = getelementptr inbounds %struct.wlp_frame_assoc, %struct.wlp_frame_assoc* %101, i32 0, i32 0
  %103 = load i8*, i8** %102, align 8
  store i8* %103, i8** %13, align 8
  %104 = load i8*, i8** %13, align 8
  %105 = load %struct.wlp*, %struct.wlp** %4, align 8
  %106 = getelementptr inbounds %struct.wlp, %struct.wlp* %105, i32 0, i32 0
  %107 = call i64 @wlp_set_uuid_e(i8* %104, i32* %106)
  store i64 %107, i64* %10, align 8
  %108 = load i8*, i8** %13, align 8
  %109 = load i64, i64* %10, align 8
  %110 = getelementptr i8, i8* %108, i64 %109
  %111 = load i32, i32* @WLP_WSS_REG_SELECT, align 4
  %112 = call i64 @wlp_set_wss_sel_mthd(i8* %110, i32 %111)
  %113 = load i64, i64* %10, align 8
  %114 = add i64 %113, %112
  store i64 %114, i64* %10, align 8
  %115 = load i8*, i8** %13, align 8
  %116 = load i64, i64* %10, align 8
  %117 = getelementptr i8, i8* %115, i64 %116
  %118 = load %struct.wlp_device_info*, %struct.wlp_device_info** %9, align 8
  %119 = getelementptr inbounds %struct.wlp_device_info, %struct.wlp_device_info* %118, i32 0, i32 5
  %120 = load i32, i32* %119, align 4
  %121 = load %struct.wlp_device_info*, %struct.wlp_device_info** %9, align 8
  %122 = getelementptr inbounds %struct.wlp_device_info, %struct.wlp_device_info* %121, i32 0, i32 5
  %123 = load i32, i32* %122, align 4
  %124 = call i64 @strlen(i32 %123)
  %125 = call i64 @wlp_set_dev_name(i8* %117, i32 %120, i64 %124)
  %126 = load i64, i64* %10, align 8
  %127 = add i64 %126, %125
  store i64 %127, i64* %10, align 8
  %128 = load i8*, i8** %13, align 8
  %129 = load i64, i64* %10, align 8
  %130 = getelementptr i8, i8* %128, i64 %129
  %131 = load %struct.wlp_device_info*, %struct.wlp_device_info** %9, align 8
  %132 = getelementptr inbounds %struct.wlp_device_info, %struct.wlp_device_info* %131, i32 0, i32 4
  %133 = load i32, i32* %132, align 4
  %134 = load %struct.wlp_device_info*, %struct.wlp_device_info** %9, align 8
  %135 = getelementptr inbounds %struct.wlp_device_info, %struct.wlp_device_info* %134, i32 0, i32 4
  %136 = load i32, i32* %135, align 4
  %137 = call i64 @strlen(i32 %136)
  %138 = call i64 @wlp_set_manufacturer(i8* %130, i32 %133, i64 %137)
  %139 = load i64, i64* %10, align 8
  %140 = add i64 %139, %138
  store i64 %140, i64* %10, align 8
  %141 = load i8*, i8** %13, align 8
  %142 = load i64, i64* %10, align 8
  %143 = getelementptr i8, i8* %141, i64 %142
  %144 = load %struct.wlp_device_info*, %struct.wlp_device_info** %9, align 8
  %145 = getelementptr inbounds %struct.wlp_device_info, %struct.wlp_device_info* %144, i32 0, i32 3
  %146 = load i32, i32* %145, align 4
  %147 = load %struct.wlp_device_info*, %struct.wlp_device_info** %9, align 8
  %148 = getelementptr inbounds %struct.wlp_device_info, %struct.wlp_device_info* %147, i32 0, i32 3
  %149 = load i32, i32* %148, align 4
  %150 = call i64 @strlen(i32 %149)
  %151 = call i64 @wlp_set_model_name(i8* %143, i32 %146, i64 %150)
  %152 = load i64, i64* %10, align 8
  %153 = add i64 %152, %151
  store i64 %153, i64* %10, align 8
  %154 = load i8*, i8** %13, align 8
  %155 = load i64, i64* %10, align 8
  %156 = getelementptr i8, i8* %154, i64 %155
  %157 = load %struct.wlp_device_info*, %struct.wlp_device_info** %9, align 8
  %158 = getelementptr inbounds %struct.wlp_device_info, %struct.wlp_device_info* %157, i32 0, i32 2
  %159 = load i32, i32* %158, align 4
  %160 = load %struct.wlp_device_info*, %struct.wlp_device_info** %9, align 8
  %161 = getelementptr inbounds %struct.wlp_device_info, %struct.wlp_device_info* %160, i32 0, i32 2
  %162 = load i32, i32* %161, align 4
  %163 = call i64 @strlen(i32 %162)
  %164 = call i64 @wlp_set_model_nr(i8* %156, i32 %159, i64 %163)
  %165 = load i64, i64* %10, align 8
  %166 = add i64 %165, %164
  store i64 %166, i64* %10, align 8
  %167 = load i8*, i8** %13, align 8
  %168 = load i64, i64* %10, align 8
  %169 = getelementptr i8, i8* %167, i64 %168
  %170 = load %struct.wlp_device_info*, %struct.wlp_device_info** %9, align 8
  %171 = getelementptr inbounds %struct.wlp_device_info, %struct.wlp_device_info* %170, i32 0, i32 1
  %172 = load i32, i32* %171, align 4
  %173 = load %struct.wlp_device_info*, %struct.wlp_device_info** %9, align 8
  %174 = getelementptr inbounds %struct.wlp_device_info, %struct.wlp_device_info* %173, i32 0, i32 1
  %175 = load i32, i32* %174, align 4
  %176 = call i64 @strlen(i32 %175)
  %177 = call i64 @wlp_set_serial(i8* %169, i32 %172, i64 %176)
  %178 = load i64, i64* %10, align 8
  %179 = add i64 %178, %177
  store i64 %179, i64* %10, align 8
  %180 = load i8*, i8** %13, align 8
  %181 = load i64, i64* %10, align 8
  %182 = getelementptr i8, i8* %180, i64 %181
  %183 = load %struct.wlp_device_info*, %struct.wlp_device_info** %9, align 8
  %184 = getelementptr inbounds %struct.wlp_device_info, %struct.wlp_device_info* %183, i32 0, i32 0
  %185 = call i64 @wlp_set_prim_dev_type(i8* %182, i32* %184)
  %186 = load i64, i64* %10, align 8
  %187 = add i64 %186, %185
  store i64 %187, i64* %10, align 8
  %188 = load i8*, i8** %13, align 8
  %189 = load i64, i64* %10, align 8
  %190 = getelementptr i8, i8* %188, i64 %189
  %191 = load i32, i32* @WLP_ASSOC_ERROR_NONE, align 4
  %192 = call i64 @wlp_set_wlp_assc_err(i8* %190, i32 %191)
  %193 = load i64, i64* %10, align 8
  %194 = add i64 %193, %192
  store i64 %194, i64* %10, align 8
  %195 = load %struct.sk_buff*, %struct.sk_buff** %12, align 8
  %196 = load i64, i64* %10, align 8
  %197 = add i64 32, %196
  %198 = trunc i64 %197 to i32
  %199 = call i32 @skb_put(%struct.sk_buff* %195, i32 %198)
  %200 = load %struct.sk_buff*, %struct.sk_buff** %12, align 8
  %201 = load %struct.sk_buff**, %struct.sk_buff*** %6, align 8
  store %struct.sk_buff* %200, %struct.sk_buff** %201, align 8
  br label %202

202:                                              ; preds = %75, %70, %28
  %203 = load i32, i32* %8, align 4
  ret i32 %203
}

declare dso_local i32 @__wlp_setup_device_info(%struct.wlp*) #1

declare dso_local i32 @dev_err(%struct.device*, i8*) #1

declare dso_local %struct.sk_buff* @dev_alloc_skb(i64) #1

declare dso_local i64 @strlen(i32) #1

declare dso_local i32 @cpu_to_le16(i32) #1

declare dso_local i32 @wlp_set_version(i32*, i32) #1

declare dso_local i32 @wlp_set_msg_type(i32*, i32) #1

declare dso_local i64 @wlp_set_uuid_e(i8*, i32*) #1

declare dso_local i64 @wlp_set_wss_sel_mthd(i8*, i32) #1

declare dso_local i64 @wlp_set_dev_name(i8*, i32, i64) #1

declare dso_local i64 @wlp_set_manufacturer(i8*, i32, i64) #1

declare dso_local i64 @wlp_set_model_name(i8*, i32, i64) #1

declare dso_local i64 @wlp_set_model_nr(i8*, i32, i64) #1

declare dso_local i64 @wlp_set_serial(i8*, i32, i64) #1

declare dso_local i64 @wlp_set_prim_dev_type(i8*, i32*) #1

declare dso_local i64 @wlp_set_wlp_assc_err(i8*, i32) #1

declare dso_local i32 @skb_put(%struct.sk_buff*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

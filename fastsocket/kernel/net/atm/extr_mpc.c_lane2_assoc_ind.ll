; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/atm/extr_mpc.c_lane2_assoc_ind.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/atm/extr_mpc.c_lane2_assoc_ind.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.mpoa_client = type { i32 }

@.str = private unnamed_addr constant [46 x i8] c"mpoa: (%s) lane2_assoc_ind: received TLV(s), \00", align 1
@.str.1 = private unnamed_addr constant [29 x i8] c"total length of all TLVs %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [36 x i8] c"mpoa: (%s) lane2_assoc_ind: no mpc\0A\00", align 1
@.str.3 = private unnamed_addr constant [27 x i8] c"    type 0x%x length %02x\0A\00", align 1
@.str.4 = private unnamed_addr constant [51 x i8] c"TLV value extends past its buffer, aborting parse\0A\00", align 1
@.str.5 = private unnamed_addr constant [55 x i8] c"mpoa: (%s) lane2_assoc_ind: TLV type was 0, returning\0A\00", align 1
@TLV_MPOA_DEVICE_TYPE = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [35 x i8] c"mpoa: (%s) MPOA device type '%s', \00", align 1
@MPS_AND_MPC = common dso_local global i32 0, align 4
@ETH_ALEN = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [57 x i8] c"\0Ampoa: (%s) lane2_assoc_ind: short MPOA Device Type TLV\0A\00", align 1
@MPS = common dso_local global i32 0, align 4
@MPC = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [25 x i8] c"ignoring non-MPS device\0A\00", align 1
@.str.9 = private unnamed_addr constant [56 x i8] c"\0Ampoa: (%s) lane2_assoc_ind: MPS_AND_MPC has zero MACs\0A\00", align 1
@.str.10 = private unnamed_addr constant [31 x i8] c"this MPS has %d MAC addresses\0A\00", align 1
@.str.11 = private unnamed_addr constant [72 x i8] c"mpoa: (%s) lane2_assoc_ind: ignoring %Zd bytes of trailing TLV carbage\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.net_device*, i32*, i32*, i32)* @lane2_assoc_ind to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @lane2_assoc_ind(%struct.net_device* %0, i32* %1, i32* %2, i32 %3) #0 {
  %5 = alloca %struct.net_device*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32*, align 8
  %14 = alloca %struct.mpoa_client*, align 8
  store %struct.net_device* %0, %struct.net_device** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32* %2, i32** %7, align 8
  store i32 %3, i32* %8, align 4
  store i32 0, i32* %12, align 4
  store i32 0, i32* %11, align 4
  %15 = load %struct.net_device*, %struct.net_device** %5, align 8
  %16 = getelementptr inbounds %struct.net_device, %struct.net_device* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = call i32 (i8*, ...) @dprintk(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str, i64 0, i64 0), i32 %17)
  %19 = load i32, i32* %8, align 4
  %20 = call i32 (i8*, ...) @dprintk(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0), i32 %19)
  %21 = load %struct.net_device*, %struct.net_device** %5, align 8
  %22 = call %struct.mpoa_client* @find_mpc_by_lec(%struct.net_device* %21)
  store %struct.mpoa_client* %22, %struct.mpoa_client** %14, align 8
  %23 = load %struct.mpoa_client*, %struct.mpoa_client** %14, align 8
  %24 = icmp eq %struct.mpoa_client* %23, null
  br i1 %24, label %25, label %30

25:                                               ; preds = %4
  %26 = load %struct.net_device*, %struct.net_device** %5, align 8
  %27 = getelementptr inbounds %struct.net_device, %struct.net_device* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.2, i64 0, i64 0), i32 %28)
  br label %208

30:                                               ; preds = %4
  %31 = load i32*, i32** %7, align 8
  %32 = load i32, i32* %8, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds i32, i32* %31, i64 %33
  store i32* %34, i32** %13, align 8
  br label %35

35:                                               ; preds = %187, %167, %159, %138, %118, %90, %30
  %36 = load i32*, i32** %13, align 8
  %37 = load i32*, i32** %7, align 8
  %38 = ptrtoint i32* %36 to i64
  %39 = ptrtoint i32* %37 to i64
  %40 = sub i64 %38, %39
  %41 = sdiv exact i64 %40, 4
  %42 = icmp sge i64 %41, 5
  br i1 %42, label %43, label %188

43:                                               ; preds = %35
  %44 = load i32*, i32** %7, align 8
  %45 = getelementptr inbounds i32, i32* %44, i64 0
  %46 = load i32, i32* %45, align 4
  %47 = shl i32 %46, 24
  %48 = load i32*, i32** %7, align 8
  %49 = getelementptr inbounds i32, i32* %48, i64 1
  %50 = load i32, i32* %49, align 4
  %51 = shl i32 %50, 16
  %52 = or i32 %47, %51
  %53 = load i32*, i32** %7, align 8
  %54 = getelementptr inbounds i32, i32* %53, i64 2
  %55 = load i32, i32* %54, align 4
  %56 = shl i32 %55, 8
  %57 = or i32 %52, %56
  %58 = load i32*, i32** %7, align 8
  %59 = getelementptr inbounds i32, i32* %58, i64 3
  %60 = load i32, i32* %59, align 4
  %61 = or i32 %57, %60
  store i32 %61, i32* %9, align 4
  %62 = load i32*, i32** %7, align 8
  %63 = getelementptr inbounds i32, i32* %62, i64 4
  %64 = load i32, i32* %63, align 4
  store i32 %64, i32* %10, align 4
  %65 = load i32*, i32** %7, align 8
  %66 = getelementptr inbounds i32, i32* %65, i64 5
  store i32* %66, i32** %7, align 8
  %67 = load i32, i32* %9, align 4
  %68 = load i32, i32* %10, align 4
  %69 = call i32 (i8*, ...) @dprintk(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.3, i64 0, i64 0), i32 %67, i32 %68)
  %70 = load i32*, i32** %7, align 8
  %71 = load i32, i32* %10, align 4
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds i32, i32* %70, i64 %72
  %74 = load i32*, i32** %13, align 8
  %75 = icmp ugt i32* %73, %74
  br i1 %75, label %76, label %78

76:                                               ; preds = %43
  %77 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.4, i64 0, i64 0))
  br label %208

78:                                               ; preds = %43
  %79 = load i32, i32* %9, align 4
  %80 = icmp eq i32 %79, 0
  br i1 %80, label %81, label %86

81:                                               ; preds = %78
  %82 = load %struct.net_device*, %struct.net_device** %5, align 8
  %83 = getelementptr inbounds %struct.net_device, %struct.net_device* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 4
  %85 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.5, i64 0, i64 0), i32 %84)
  br label %208

86:                                               ; preds = %78
  %87 = load i32, i32* %9, align 4
  %88 = load i32, i32* @TLV_MPOA_DEVICE_TYPE, align 4
  %89 = icmp ne i32 %87, %88
  br i1 %89, label %90, label %95

90:                                               ; preds = %86
  %91 = load i32, i32* %10, align 4
  %92 = load i32*, i32** %7, align 8
  %93 = sext i32 %91 to i64
  %94 = getelementptr inbounds i32, i32* %92, i64 %93
  store i32* %94, i32** %7, align 8
  br label %35

95:                                               ; preds = %86
  %96 = load i32*, i32** %7, align 8
  %97 = getelementptr inbounds i32, i32* %96, i32 1
  store i32* %97, i32** %7, align 8
  %98 = load i32, i32* %96, align 4
  store i32 %98, i32* %11, align 4
  %99 = load i32*, i32** %7, align 8
  %100 = getelementptr inbounds i32, i32* %99, i32 1
  store i32* %100, i32** %7, align 8
  %101 = load i32, i32* %99, align 4
  store i32 %101, i32* %12, align 4
  %102 = load %struct.net_device*, %struct.net_device** %5, align 8
  %103 = getelementptr inbounds %struct.net_device, %struct.net_device* %102, i32 0, i32 0
  %104 = load i32, i32* %103, align 4
  %105 = load i32, i32* %11, align 4
  %106 = call i32 @mpoa_device_type_string(i32 %105)
  %107 = call i32 (i8*, ...) @dprintk(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.6, i64 0, i64 0), i32 %104, i32 %106)
  %108 = load i32, i32* %11, align 4
  %109 = load i32, i32* @MPS_AND_MPC, align 4
  %110 = icmp eq i32 %108, %109
  br i1 %110, label %111, label %123

111:                                              ; preds = %95
  %112 = load i32, i32* %10, align 4
  %113 = load i32, i32* %12, align 4
  %114 = load i32, i32* @ETH_ALEN, align 4
  %115 = mul nsw i32 %113, %114
  %116 = add nsw i32 42, %115
  %117 = icmp slt i32 %112, %116
  br i1 %117, label %118, label %123

118:                                              ; preds = %111
  %119 = load %struct.net_device*, %struct.net_device** %5, align 8
  %120 = getelementptr inbounds %struct.net_device, %struct.net_device* %119, i32 0, i32 0
  %121 = load i32, i32* %120, align 4
  %122 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.7, i64 0, i64 0), i32 %121)
  br label %35

123:                                              ; preds = %111, %95
  %124 = load i32, i32* %11, align 4
  %125 = load i32, i32* @MPS, align 4
  %126 = icmp eq i32 %124, %125
  br i1 %126, label %131, label %127

127:                                              ; preds = %123
  %128 = load i32, i32* %11, align 4
  %129 = load i32, i32* @MPC, align 4
  %130 = icmp eq i32 %128, %129
  br i1 %130, label %131, label %143

131:                                              ; preds = %127, %123
  %132 = load i32, i32* %10, align 4
  %133 = load i32, i32* %12, align 4
  %134 = load i32, i32* @ETH_ALEN, align 4
  %135 = mul nsw i32 %133, %134
  %136 = add nsw i32 22, %135
  %137 = icmp slt i32 %132, %136
  br i1 %137, label %138, label %143

138:                                              ; preds = %131
  %139 = load %struct.net_device*, %struct.net_device** %5, align 8
  %140 = getelementptr inbounds %struct.net_device, %struct.net_device* %139, i32 0, i32 0
  %141 = load i32, i32* %140, align 4
  %142 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.7, i64 0, i64 0), i32 %141)
  br label %35

143:                                              ; preds = %131, %127
  %144 = load i32, i32* %11, align 4
  %145 = load i32, i32* @MPS, align 4
  %146 = icmp ne i32 %144, %145
  br i1 %146, label %147, label %160

147:                                              ; preds = %143
  %148 = load i32, i32* %11, align 4
  %149 = load i32, i32* @MPS_AND_MPC, align 4
  %150 = icmp ne i32 %148, %149
  br i1 %150, label %151, label %160

151:                                              ; preds = %147
  %152 = call i32 (i8*, ...) @dprintk(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.8, i64 0, i64 0))
  %153 = load i32, i32* %11, align 4
  %154 = load i32, i32* @MPC, align 4
  %155 = icmp eq i32 %153, %154
  br i1 %155, label %156, label %159

156:                                              ; preds = %151
  %157 = load i32*, i32** %7, align 8
  %158 = getelementptr inbounds i32, i32* %157, i64 20
  store i32* %158, i32** %7, align 8
  br label %159

159:                                              ; preds = %156, %151
  br label %35

160:                                              ; preds = %147, %143
  %161 = load i32, i32* %12, align 4
  %162 = icmp eq i32 %161, 0
  br i1 %162, label %163, label %172

163:                                              ; preds = %160
  %164 = load i32, i32* %11, align 4
  %165 = load i32, i32* @MPS_AND_MPC, align 4
  %166 = icmp eq i32 %164, %165
  br i1 %166, label %167, label %172

167:                                              ; preds = %163
  %168 = load %struct.net_device*, %struct.net_device** %5, align 8
  %169 = getelementptr inbounds %struct.net_device, %struct.net_device* %168, i32 0, i32 0
  %170 = load i32, i32* %169, align 4
  %171 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.9, i64 0, i64 0), i32 %170)
  br label %35

172:                                              ; preds = %163, %160
  %173 = load i32, i32* %12, align 4
  %174 = call i32 (i8*, ...) @dprintk(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.10, i64 0, i64 0), i32 %173)
  %175 = load i32*, i32** %7, align 8
  %176 = load %struct.mpoa_client*, %struct.mpoa_client** %14, align 8
  %177 = call i32 @send_set_mps_ctrl_addr(i32* %175, %struct.mpoa_client* %176)
  %178 = load %struct.mpoa_client*, %struct.mpoa_client** %14, align 8
  %179 = load i32*, i32** %6, align 8
  %180 = load i32*, i32** %7, align 8
  %181 = load i32, i32* %12, align 4
  %182 = load i32, i32* %11, align 4
  %183 = call i32* @copy_macs(%struct.mpoa_client* %178, i32* %179, i32* %180, i32 %181, i32 %182)
  store i32* %183, i32** %7, align 8
  %184 = load i32*, i32** %7, align 8
  %185 = icmp eq i32* %184, null
  br i1 %185, label %186, label %187

186:                                              ; preds = %172
  br label %208

187:                                              ; preds = %172
  br label %35

188:                                              ; preds = %35
  %189 = load i32*, i32** %13, align 8
  %190 = load i32*, i32** %7, align 8
  %191 = ptrtoint i32* %189 to i64
  %192 = ptrtoint i32* %190 to i64
  %193 = sub i64 %191, %192
  %194 = sdiv exact i64 %193, 4
  %195 = icmp ne i64 %194, 0
  br i1 %195, label %196, label %207

196:                                              ; preds = %188
  %197 = load %struct.net_device*, %struct.net_device** %5, align 8
  %198 = getelementptr inbounds %struct.net_device, %struct.net_device* %197, i32 0, i32 0
  %199 = load i32, i32* %198, align 4
  %200 = load i32*, i32** %13, align 8
  %201 = load i32*, i32** %7, align 8
  %202 = ptrtoint i32* %200 to i64
  %203 = ptrtoint i32* %201 to i64
  %204 = sub i64 %202, %203
  %205 = sdiv exact i64 %204, 4
  %206 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([72 x i8], [72 x i8]* @.str.11, i64 0, i64 0), i32 %199, i64 %205)
  br label %207

207:                                              ; preds = %196, %188
  br label %208

208:                                              ; preds = %207, %186, %81, %76, %25
  ret void
}

declare dso_local i32 @dprintk(i8*, ...) #1

declare dso_local %struct.mpoa_client* @find_mpc_by_lec(%struct.net_device*) #1

declare dso_local i32 @printk(i8*, ...) #1

declare dso_local i32 @mpoa_device_type_string(i32) #1

declare dso_local i32 @send_set_mps_ctrl_addr(i32*, %struct.mpoa_client*) #1

declare dso_local i32* @copy_macs(%struct.mpoa_client*, i32*, i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

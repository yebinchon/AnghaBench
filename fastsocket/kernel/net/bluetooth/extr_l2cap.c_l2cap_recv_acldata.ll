; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/bluetooth/extr_l2cap.c_l2cap_recv_acldata.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/bluetooth/extr_l2cap.c_l2cap_recv_acldata.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hci_conn = type { %struct.l2cap_conn* }
%struct.l2cap_conn = type { i32, %struct.sk_buff* }
%struct.sk_buff = type { i32, i64 }
%struct.l2cap_hdr = type { i32 }

@.str = private unnamed_addr constant [26 x i8] c"conn %p len %d flags 0x%x\00", align 1
@ACL_START = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [32 x i8] c"Unexpected start frame (len %d)\00", align 1
@ECOMM = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [28 x i8] c"Frame is too short (len %d)\00", align 1
@L2CAP_HDR_SIZE = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [33 x i8] c"Start: total len %d, frag len %d\00", align 1
@.str.4 = private unnamed_addr constant [44 x i8] c"Frame is too long (len %d, expected len %d)\00", align 1
@GFP_ATOMIC = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [33 x i8] c"Cont: frag len %d (expecting %d)\00", align 1
@.str.6 = private unnamed_addr constant [39 x i8] c"Unexpected continuation frame (len %d)\00", align 1
@.str.7 = private unnamed_addr constant [43 x i8] c"Fragment is too long (len %d, expected %d)\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hci_conn*, %struct.sk_buff*, i32)* @l2cap_recv_acldata to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @l2cap_recv_acldata(%struct.hci_conn* %0, %struct.sk_buff* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.hci_conn*, align 8
  %6 = alloca %struct.sk_buff*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.l2cap_conn*, align 8
  %9 = alloca %struct.l2cap_hdr*, align 8
  %10 = alloca i32, align 4
  store %struct.hci_conn* %0, %struct.hci_conn** %5, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %6, align 8
  store i32 %2, i32* %7, align 4
  %11 = load %struct.hci_conn*, %struct.hci_conn** %5, align 8
  %12 = getelementptr inbounds %struct.hci_conn, %struct.hci_conn* %11, i32 0, i32 0
  %13 = load %struct.l2cap_conn*, %struct.l2cap_conn** %12, align 8
  store %struct.l2cap_conn* %13, %struct.l2cap_conn** %8, align 8
  %14 = load %struct.l2cap_conn*, %struct.l2cap_conn** %8, align 8
  %15 = icmp ne %struct.l2cap_conn* %14, null
  br i1 %15, label %21, label %16

16:                                               ; preds = %3
  %17 = load %struct.hci_conn*, %struct.hci_conn** %5, align 8
  %18 = call %struct.l2cap_conn* @l2cap_conn_add(%struct.hci_conn* %17, i32 0)
  store %struct.l2cap_conn* %18, %struct.l2cap_conn** %8, align 8
  %19 = icmp ne %struct.l2cap_conn* %18, null
  br i1 %19, label %21, label %20

20:                                               ; preds = %16
  br label %218

21:                                               ; preds = %16, %3
  %22 = load %struct.l2cap_conn*, %struct.l2cap_conn** %8, align 8
  %23 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %24 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = load i32, i32* %7, align 4
  %27 = call i32 (i8*, ...) @BT_DBG(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), %struct.l2cap_conn* %22, i32 %25, i32 %26)
  %28 = load i32, i32* %7, align 4
  %29 = load i32, i32* @ACL_START, align 4
  %30 = and i32 %28, %29
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %137

32:                                               ; preds = %21
  %33 = load %struct.l2cap_conn*, %struct.l2cap_conn** %8, align 8
  %34 = getelementptr inbounds %struct.l2cap_conn, %struct.l2cap_conn* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %53

37:                                               ; preds = %32
  %38 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %39 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = call i32 (i8*, i32, ...) @BT_ERR(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0), i32 %40)
  %42 = load %struct.l2cap_conn*, %struct.l2cap_conn** %8, align 8
  %43 = getelementptr inbounds %struct.l2cap_conn, %struct.l2cap_conn* %42, i32 0, i32 1
  %44 = load %struct.sk_buff*, %struct.sk_buff** %43, align 8
  %45 = call i32 @kfree_skb(%struct.sk_buff* %44)
  %46 = load %struct.l2cap_conn*, %struct.l2cap_conn** %8, align 8
  %47 = getelementptr inbounds %struct.l2cap_conn, %struct.l2cap_conn* %46, i32 0, i32 1
  store %struct.sk_buff* null, %struct.sk_buff** %47, align 8
  %48 = load %struct.l2cap_conn*, %struct.l2cap_conn** %8, align 8
  %49 = getelementptr inbounds %struct.l2cap_conn, %struct.l2cap_conn* %48, i32 0, i32 0
  store i32 0, i32* %49, align 8
  %50 = load %struct.l2cap_conn*, %struct.l2cap_conn** %8, align 8
  %51 = load i32, i32* @ECOMM, align 4
  %52 = call i32 @l2cap_conn_unreliable(%struct.l2cap_conn* %50, i32 %51)
  br label %53

53:                                               ; preds = %37, %32
  %54 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %55 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 8
  %57 = icmp slt i32 %56, 2
  br i1 %57, label %58, label %66

58:                                               ; preds = %53
  %59 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %60 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 8
  %62 = call i32 (i8*, i32, ...) @BT_ERR(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.2, i64 0, i64 0), i32 %61)
  %63 = load %struct.l2cap_conn*, %struct.l2cap_conn** %8, align 8
  %64 = load i32, i32* @ECOMM, align 4
  %65 = call i32 @l2cap_conn_unreliable(%struct.l2cap_conn* %63, i32 %64)
  br label %218

66:                                               ; preds = %53
  %67 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %68 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %67, i32 0, i32 1
  %69 = load i64, i64* %68, align 8
  %70 = inttoptr i64 %69 to %struct.l2cap_hdr*
  store %struct.l2cap_hdr* %70, %struct.l2cap_hdr** %9, align 8
  %71 = load %struct.l2cap_hdr*, %struct.l2cap_hdr** %9, align 8
  %72 = getelementptr inbounds %struct.l2cap_hdr, %struct.l2cap_hdr* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 4
  %74 = call i32 @__le16_to_cpu(i32 %73)
  %75 = load i32, i32* @L2CAP_HDR_SIZE, align 4
  %76 = add nsw i32 %74, %75
  store i32 %76, i32* %10, align 4
  %77 = load i32, i32* %10, align 4
  %78 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %79 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 8
  %81 = icmp eq i32 %77, %80
  br i1 %81, label %82, label %86

82:                                               ; preds = %66
  %83 = load %struct.l2cap_conn*, %struct.l2cap_conn** %8, align 8
  %84 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %85 = call i32 @l2cap_recv_frame(%struct.l2cap_conn* %83, %struct.sk_buff* %84)
  store i32 0, i32* %4, align 4
  br label %221

86:                                               ; preds = %66
  %87 = load i32, i32* %10, align 4
  %88 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %89 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 8
  %91 = call i32 (i8*, ...) @BT_DBG(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.3, i64 0, i64 0), i32 %87, i32 %90)
  %92 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %93 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 8
  %95 = load i32, i32* %10, align 4
  %96 = icmp sgt i32 %94, %95
  br i1 %96, label %97, label %106

97:                                               ; preds = %86
  %98 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %99 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %98, i32 0, i32 0
  %100 = load i32, i32* %99, align 8
  %101 = load i32, i32* %10, align 4
  %102 = call i32 (i8*, i32, ...) @BT_ERR(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.4, i64 0, i64 0), i32 %100, i32 %101)
  %103 = load %struct.l2cap_conn*, %struct.l2cap_conn** %8, align 8
  %104 = load i32, i32* @ECOMM, align 4
  %105 = call i32 @l2cap_conn_unreliable(%struct.l2cap_conn* %103, i32 %104)
  br label %218

106:                                              ; preds = %86
  %107 = load i32, i32* %10, align 4
  %108 = load i32, i32* @GFP_ATOMIC, align 4
  %109 = call %struct.sk_buff* @bt_skb_alloc(i32 %107, i32 %108)
  %110 = load %struct.l2cap_conn*, %struct.l2cap_conn** %8, align 8
  %111 = getelementptr inbounds %struct.l2cap_conn, %struct.l2cap_conn* %110, i32 0, i32 1
  store %struct.sk_buff* %109, %struct.sk_buff** %111, align 8
  %112 = load %struct.l2cap_conn*, %struct.l2cap_conn** %8, align 8
  %113 = getelementptr inbounds %struct.l2cap_conn, %struct.l2cap_conn* %112, i32 0, i32 1
  %114 = load %struct.sk_buff*, %struct.sk_buff** %113, align 8
  %115 = icmp ne %struct.sk_buff* %114, null
  br i1 %115, label %117, label %116

116:                                              ; preds = %106
  br label %218

117:                                              ; preds = %106
  %118 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %119 = load %struct.l2cap_conn*, %struct.l2cap_conn** %8, align 8
  %120 = getelementptr inbounds %struct.l2cap_conn, %struct.l2cap_conn* %119, i32 0, i32 1
  %121 = load %struct.sk_buff*, %struct.sk_buff** %120, align 8
  %122 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %123 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %122, i32 0, i32 0
  %124 = load i32, i32* %123, align 8
  %125 = call i32 @skb_put(%struct.sk_buff* %121, i32 %124)
  %126 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %127 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %126, i32 0, i32 0
  %128 = load i32, i32* %127, align 8
  %129 = call i32 @skb_copy_from_linear_data(%struct.sk_buff* %118, i32 %125, i32 %128)
  %130 = load i32, i32* %10, align 4
  %131 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %132 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %131, i32 0, i32 0
  %133 = load i32, i32* %132, align 8
  %134 = sub nsw i32 %130, %133
  %135 = load %struct.l2cap_conn*, %struct.l2cap_conn** %8, align 8
  %136 = getelementptr inbounds %struct.l2cap_conn, %struct.l2cap_conn* %135, i32 0, i32 0
  store i32 %134, i32* %136, align 8
  br label %217

137:                                              ; preds = %21
  %138 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %139 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %138, i32 0, i32 0
  %140 = load i32, i32* %139, align 8
  %141 = load %struct.l2cap_conn*, %struct.l2cap_conn** %8, align 8
  %142 = getelementptr inbounds %struct.l2cap_conn, %struct.l2cap_conn* %141, i32 0, i32 0
  %143 = load i32, i32* %142, align 8
  %144 = call i32 (i8*, ...) @BT_DBG(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.5, i64 0, i64 0), i32 %140, i32 %143)
  %145 = load %struct.l2cap_conn*, %struct.l2cap_conn** %8, align 8
  %146 = getelementptr inbounds %struct.l2cap_conn, %struct.l2cap_conn* %145, i32 0, i32 0
  %147 = load i32, i32* %146, align 8
  %148 = icmp ne i32 %147, 0
  br i1 %148, label %157, label %149

149:                                              ; preds = %137
  %150 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %151 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %150, i32 0, i32 0
  %152 = load i32, i32* %151, align 8
  %153 = call i32 (i8*, i32, ...) @BT_ERR(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.6, i64 0, i64 0), i32 %152)
  %154 = load %struct.l2cap_conn*, %struct.l2cap_conn** %8, align 8
  %155 = load i32, i32* @ECOMM, align 4
  %156 = call i32 @l2cap_conn_unreliable(%struct.l2cap_conn* %154, i32 %155)
  br label %218

157:                                              ; preds = %137
  %158 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %159 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %158, i32 0, i32 0
  %160 = load i32, i32* %159, align 8
  %161 = load %struct.l2cap_conn*, %struct.l2cap_conn** %8, align 8
  %162 = getelementptr inbounds %struct.l2cap_conn, %struct.l2cap_conn* %161, i32 0, i32 0
  %163 = load i32, i32* %162, align 8
  %164 = icmp sgt i32 %160, %163
  br i1 %164, label %165, label %184

165:                                              ; preds = %157
  %166 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %167 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %166, i32 0, i32 0
  %168 = load i32, i32* %167, align 8
  %169 = load %struct.l2cap_conn*, %struct.l2cap_conn** %8, align 8
  %170 = getelementptr inbounds %struct.l2cap_conn, %struct.l2cap_conn* %169, i32 0, i32 0
  %171 = load i32, i32* %170, align 8
  %172 = call i32 (i8*, i32, ...) @BT_ERR(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.7, i64 0, i64 0), i32 %168, i32 %171)
  %173 = load %struct.l2cap_conn*, %struct.l2cap_conn** %8, align 8
  %174 = getelementptr inbounds %struct.l2cap_conn, %struct.l2cap_conn* %173, i32 0, i32 1
  %175 = load %struct.sk_buff*, %struct.sk_buff** %174, align 8
  %176 = call i32 @kfree_skb(%struct.sk_buff* %175)
  %177 = load %struct.l2cap_conn*, %struct.l2cap_conn** %8, align 8
  %178 = getelementptr inbounds %struct.l2cap_conn, %struct.l2cap_conn* %177, i32 0, i32 1
  store %struct.sk_buff* null, %struct.sk_buff** %178, align 8
  %179 = load %struct.l2cap_conn*, %struct.l2cap_conn** %8, align 8
  %180 = getelementptr inbounds %struct.l2cap_conn, %struct.l2cap_conn* %179, i32 0, i32 0
  store i32 0, i32* %180, align 8
  %181 = load %struct.l2cap_conn*, %struct.l2cap_conn** %8, align 8
  %182 = load i32, i32* @ECOMM, align 4
  %183 = call i32 @l2cap_conn_unreliable(%struct.l2cap_conn* %181, i32 %182)
  br label %218

184:                                              ; preds = %157
  %185 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %186 = load %struct.l2cap_conn*, %struct.l2cap_conn** %8, align 8
  %187 = getelementptr inbounds %struct.l2cap_conn, %struct.l2cap_conn* %186, i32 0, i32 1
  %188 = load %struct.sk_buff*, %struct.sk_buff** %187, align 8
  %189 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %190 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %189, i32 0, i32 0
  %191 = load i32, i32* %190, align 8
  %192 = call i32 @skb_put(%struct.sk_buff* %188, i32 %191)
  %193 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %194 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %193, i32 0, i32 0
  %195 = load i32, i32* %194, align 8
  %196 = call i32 @skb_copy_from_linear_data(%struct.sk_buff* %185, i32 %192, i32 %195)
  %197 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %198 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %197, i32 0, i32 0
  %199 = load i32, i32* %198, align 8
  %200 = load %struct.l2cap_conn*, %struct.l2cap_conn** %8, align 8
  %201 = getelementptr inbounds %struct.l2cap_conn, %struct.l2cap_conn* %200, i32 0, i32 0
  %202 = load i32, i32* %201, align 8
  %203 = sub nsw i32 %202, %199
  store i32 %203, i32* %201, align 8
  %204 = load %struct.l2cap_conn*, %struct.l2cap_conn** %8, align 8
  %205 = getelementptr inbounds %struct.l2cap_conn, %struct.l2cap_conn* %204, i32 0, i32 0
  %206 = load i32, i32* %205, align 8
  %207 = icmp ne i32 %206, 0
  br i1 %207, label %216, label %208

208:                                              ; preds = %184
  %209 = load %struct.l2cap_conn*, %struct.l2cap_conn** %8, align 8
  %210 = load %struct.l2cap_conn*, %struct.l2cap_conn** %8, align 8
  %211 = getelementptr inbounds %struct.l2cap_conn, %struct.l2cap_conn* %210, i32 0, i32 1
  %212 = load %struct.sk_buff*, %struct.sk_buff** %211, align 8
  %213 = call i32 @l2cap_recv_frame(%struct.l2cap_conn* %209, %struct.sk_buff* %212)
  %214 = load %struct.l2cap_conn*, %struct.l2cap_conn** %8, align 8
  %215 = getelementptr inbounds %struct.l2cap_conn, %struct.l2cap_conn* %214, i32 0, i32 1
  store %struct.sk_buff* null, %struct.sk_buff** %215, align 8
  br label %216

216:                                              ; preds = %208, %184
  br label %217

217:                                              ; preds = %216, %117
  br label %218

218:                                              ; preds = %217, %165, %149, %116, %97, %58, %20
  %219 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %220 = call i32 @kfree_skb(%struct.sk_buff* %219)
  store i32 0, i32* %4, align 4
  br label %221

221:                                              ; preds = %218, %82
  %222 = load i32, i32* %4, align 4
  ret i32 %222
}

declare dso_local %struct.l2cap_conn* @l2cap_conn_add(%struct.hci_conn*, i32) #1

declare dso_local i32 @BT_DBG(i8*, ...) #1

declare dso_local i32 @BT_ERR(i8*, i32, ...) #1

declare dso_local i32 @kfree_skb(%struct.sk_buff*) #1

declare dso_local i32 @l2cap_conn_unreliable(%struct.l2cap_conn*, i32) #1

declare dso_local i32 @__le16_to_cpu(i32) #1

declare dso_local i32 @l2cap_recv_frame(%struct.l2cap_conn*, %struct.sk_buff*) #1

declare dso_local %struct.sk_buff* @bt_skb_alloc(i32, i32) #1

declare dso_local i32 @skb_copy_from_linear_data(%struct.sk_buff*, i32, i32) #1

declare dso_local i32 @skb_put(%struct.sk_buff*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

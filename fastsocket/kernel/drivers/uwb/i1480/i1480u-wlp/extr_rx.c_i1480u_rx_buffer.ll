; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/uwb/i1480/i1480u-wlp/extr_rx.c_i1480u_rx_buffer.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/uwb/i1480/i1480u-wlp/extr_rx.c_i1480u_rx_buffer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i1480u_rx_buf = type { %struct.sk_buff*, %struct.TYPE_3__*, %struct.i1480u* }
%struct.sk_buff = type { i32, %struct.net_device* }
%struct.net_device = type { i32 }
%struct.TYPE_3__ = type { i32, i8* }
%struct.i1480u = type { i64, %struct.sk_buff*, i32, i32, i32, %struct.TYPE_4__*, %struct.net_device* }
%struct.TYPE_4__ = type { %struct.device }
%struct.device = type { i32 }
%struct.wlp_rx_hdr = type { i32, i32, i32 }
%struct.untd_hdr = type { i32 }
%struct.untd_hdr_1st = type { i32 }

@.str = private unnamed_addr constant [63 x i8] c"RX: fragment follows completedpacket in same buffer. Dropping\0A\00", align 1
@.str.1 = private unnamed_addr constant [33 x i8] c"RX: short UNTD header! Dropping\0A\00", align 1
@.str.2 = private unnamed_addr constant [26 x i8] c"RX: TX bit set! Dropping\0A\00", align 1
@.str.3 = private unnamed_addr constant [14 x i8] c"1st fragment\0A\00", align 1
@.str.4 = private unnamed_addr constant [42 x i8] c"RX: 1st fragment out of sequence! Fixing\0A\00", align 1
@.str.5 = private unnamed_addr constant [34 x i8] c"RX: short 1st fragment! Dropping\0A\00", align 1
@.str.6 = private unnamed_addr constant [29 x i8] c"RX: short payload! Dropping\0A\00", align 1
@.str.7 = private unnamed_addr constant [14 x i8] c"nxt fragment\0A\00", align 1
@.str.8 = private unnamed_addr constant [45 x i8] c"RX: next fragment out of sequence! Dropping\0A\00", align 1
@.str.9 = private unnamed_addr constant [34 x i8] c"RX: short NXT fragment! Dropping\0A\00", align 1
@.str.10 = private unnamed_addr constant [14 x i8] c"Lst fragment\0A\00", align 1
@.str.11 = private unnamed_addr constant [45 x i8] c"RX: last fragment out of sequence! Dropping\0A\00", align 1
@.str.12 = private unnamed_addr constant [34 x i8] c"RX: short LST fragment! Dropping\0A\00", align 1
@.str.13 = private unnamed_addr constant [14 x i8] c"cmp fragment\0A\00", align 1
@.str.14 = private unnamed_addr constant [39 x i8] c"RX: fix out-of-sequence CMP fragment!\0A\00", align 1
@.str.15 = private unnamed_addr constant [34 x i8] c"RX: short CMP fragment! Dropping\0A\00", align 1
@.str.16 = private unnamed_addr constant [38 x i8] c"RX: unknown packet type %u! Dropping\0A\00", align 1
@i1480u_MAX_RX_PKT_SIZE = common dso_local global i32 0, align 4
@.str.17 = private unnamed_addr constant [31 x i8] c"RX: cannot allocate RX buffer\0A\00", align 1
@CHECKSUM_NONE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.i1480u_rx_buf*)* @i1480u_rx_buffer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @i1480u_rx_buffer(%struct.i1480u_rx_buf* %0) #0 {
  %2 = alloca %struct.i1480u_rx_buf*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.wlp_rx_hdr*, align 8
  %8 = alloca %struct.i1480u*, align 8
  %9 = alloca %struct.sk_buff*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca %struct.untd_hdr*, align 8
  %13 = alloca %struct.net_device*, align 8
  %14 = alloca %struct.device*, align 8
  %15 = alloca %struct.sk_buff*, align 8
  %16 = alloca %struct.untd_hdr_1st*, align 8
  store %struct.i1480u_rx_buf* %0, %struct.i1480u_rx_buf** %2, align 8
  store i32 0, i32* %3, align 4
  store %struct.wlp_rx_hdr* null, %struct.wlp_rx_hdr** %7, align 8
  %17 = load %struct.i1480u_rx_buf*, %struct.i1480u_rx_buf** %2, align 8
  %18 = getelementptr inbounds %struct.i1480u_rx_buf, %struct.i1480u_rx_buf* %17, i32 0, i32 2
  %19 = load %struct.i1480u*, %struct.i1480u** %18, align 8
  store %struct.i1480u* %19, %struct.i1480u** %8, align 8
  %20 = load %struct.i1480u_rx_buf*, %struct.i1480u_rx_buf** %2, align 8
  %21 = getelementptr inbounds %struct.i1480u_rx_buf, %struct.i1480u_rx_buf* %20, i32 0, i32 0
  %22 = load %struct.sk_buff*, %struct.sk_buff** %21, align 8
  store %struct.sk_buff* %22, %struct.sk_buff** %9, align 8
  %23 = load %struct.i1480u_rx_buf*, %struct.i1480u_rx_buf** %2, align 8
  %24 = getelementptr inbounds %struct.i1480u_rx_buf, %struct.i1480u_rx_buf* %23, i32 0, i32 1
  %25 = load %struct.TYPE_3__*, %struct.TYPE_3__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  store i32 %27, i32* %10, align 4
  %28 = load %struct.i1480u_rx_buf*, %struct.i1480u_rx_buf** %2, align 8
  %29 = getelementptr inbounds %struct.i1480u_rx_buf, %struct.i1480u_rx_buf* %28, i32 0, i32 1
  %30 = load %struct.TYPE_3__*, %struct.TYPE_3__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %30, i32 0, i32 1
  %32 = load i8*, i8** %31, align 8
  store i8* %32, i8** %11, align 8
  %33 = load %struct.i1480u*, %struct.i1480u** %8, align 8
  %34 = getelementptr inbounds %struct.i1480u, %struct.i1480u* %33, i32 0, i32 6
  %35 = load %struct.net_device*, %struct.net_device** %34, align 8
  store %struct.net_device* %35, %struct.net_device** %13, align 8
  %36 = load %struct.i1480u*, %struct.i1480u** %8, align 8
  %37 = getelementptr inbounds %struct.i1480u, %struct.i1480u* %36, i32 0, i32 5
  %38 = load %struct.TYPE_4__*, %struct.TYPE_4__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %38, i32 0, i32 0
  store %struct.device* %39, %struct.device** %14, align 8
  store i64 12, i64* %6, align 8
  br label %40

40:                                               ; preds = %365, %1
  %41 = load i32, i32* %10, align 4
  %42 = icmp sgt i32 %41, 0
  br i1 %42, label %43, label %366

43:                                               ; preds = %40
  %44 = load i32, i32* %3, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %49

46:                                               ; preds = %43
  %47 = load %struct.i1480u*, %struct.i1480u** %8, align 8
  %48 = call i32 (%struct.i1480u*, i8*, ...) @i1480u_drop(%struct.i1480u* %47, i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str, i64 0, i64 0))
  br label %366

49:                                               ; preds = %43
  %50 = load i8*, i8** %11, align 8
  %51 = bitcast i8* %50 to %struct.untd_hdr*
  store %struct.untd_hdr* %51, %struct.untd_hdr** %12, align 8
  %52 = load i32, i32* %10, align 4
  %53 = sext i32 %52 to i64
  %54 = icmp ult i64 %53, 4
  br i1 %54, label %55, label %58

55:                                               ; preds = %49
  %56 = load %struct.i1480u*, %struct.i1480u** %8, align 8
  %57 = call i32 (%struct.i1480u*, i8*, ...) @i1480u_drop(%struct.i1480u* %56, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0))
  br label %373

58:                                               ; preds = %49
  %59 = load %struct.untd_hdr*, %struct.untd_hdr** %12, align 8
  %60 = call i64 @untd_hdr_rx_tx(%struct.untd_hdr* %59)
  %61 = icmp eq i64 %60, 0
  %62 = zext i1 %61 to i32
  %63 = call i64 @unlikely(i32 %62)
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %65, label %68

65:                                               ; preds = %58
  %66 = load %struct.i1480u*, %struct.i1480u** %8, align 8
  %67 = call i32 (%struct.i1480u*, i8*, ...) @i1480u_drop(%struct.i1480u* %66, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i64 0, i64 0))
  br label %373

68:                                               ; preds = %58
  %69 = load %struct.untd_hdr*, %struct.untd_hdr** %12, align 8
  %70 = call i32 @untd_hdr_type(%struct.untd_hdr* %69)
  switch i32 %70, label %344 [
    i32 131, label %71
    i32 128, label %163
    i32 129, label %207
    i32 130, label %251
  ]

71:                                               ; preds = %68
  %72 = load %struct.untd_hdr*, %struct.untd_hdr** %12, align 8
  %73 = bitcast %struct.untd_hdr* %72 to i8*
  %74 = bitcast i8* %73 to %struct.untd_hdr_1st*
  store %struct.untd_hdr_1st* %74, %struct.untd_hdr_1st** %16, align 8
  %75 = load %struct.device*, %struct.device** %14, align 8
  %76 = call i32 @dev_dbg(%struct.device* %75, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.3, i64 0, i64 0))
  store i64 4, i64* %4, align 8
  %77 = load %struct.i1480u*, %struct.i1480u** %8, align 8
  %78 = getelementptr inbounds %struct.i1480u, %struct.i1480u* %77, i32 0, i32 1
  %79 = load %struct.sk_buff*, %struct.sk_buff** %78, align 8
  %80 = icmp ne %struct.sk_buff* %79, null
  br i1 %80, label %81, label %84

81:                                               ; preds = %71
  %82 = load %struct.i1480u*, %struct.i1480u** %8, align 8
  %83 = call i32 @i1480u_fix(%struct.i1480u* %82, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.4, i64 0, i64 0))
  br label %84

84:                                               ; preds = %81, %71
  %85 = load i32, i32* %10, align 4
  %86 = sext i32 %85 to i64
  %87 = load i64, i64* %4, align 8
  %88 = load i64, i64* %6, align 8
  %89 = add i64 %87, %88
  %90 = icmp ult i64 %86, %89
  br i1 %90, label %91, label %94

91:                                               ; preds = %84
  %92 = load %struct.i1480u*, %struct.i1480u** %8, align 8
  %93 = call i32 (%struct.i1480u*, i8*, ...) @i1480u_drop(%struct.i1480u* %92, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.5, i64 0, i64 0))
  br label %373

94:                                               ; preds = %84
  %95 = load %struct.untd_hdr*, %struct.untd_hdr** %12, align 8
  %96 = getelementptr inbounds %struct.untd_hdr, %struct.untd_hdr* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 4
  %98 = call i8* @le16_to_cpu(i32 %97)
  %99 = load i64, i64* %6, align 8
  %100 = sub i64 0, %99
  %101 = getelementptr i8, i8* %98, i64 %100
  %102 = ptrtoint i8* %101 to i64
  %103 = load %struct.i1480u*, %struct.i1480u** %8, align 8
  %104 = getelementptr inbounds %struct.i1480u, %struct.i1480u* %103, i32 0, i32 0
  store i64 %102, i64* %104, align 8
  %105 = load %struct.untd_hdr_1st*, %struct.untd_hdr_1st** %16, align 8
  %106 = getelementptr inbounds %struct.untd_hdr_1st, %struct.untd_hdr_1st* %105, i32 0, i32 0
  %107 = load i32, i32* %106, align 4
  %108 = call i8* @le16_to_cpu(i32 %107)
  %109 = ptrtoint i8* %108 to i64
  store i64 %109, i64* %5, align 8
  %110 = load i32, i32* %10, align 4
  %111 = sext i32 %110 to i64
  %112 = load i64, i64* %4, align 8
  %113 = load i64, i64* %5, align 8
  %114 = add i64 %112, %113
  %115 = icmp ult i64 %111, %114
  br i1 %115, label %116, label %119

116:                                              ; preds = %94
  %117 = load %struct.i1480u*, %struct.i1480u** %8, align 8
  %118 = call i32 (%struct.i1480u*, i8*, ...) @i1480u_drop(%struct.i1480u* %117, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.6, i64 0, i64 0))
  br label %373

119:                                              ; preds = %94
  %120 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %121 = load %struct.i1480u*, %struct.i1480u** %8, align 8
  %122 = getelementptr inbounds %struct.i1480u, %struct.i1480u* %121, i32 0, i32 1
  store %struct.sk_buff* %120, %struct.sk_buff** %122, align 8
  %123 = load %struct.untd_hdr_1st*, %struct.untd_hdr_1st** %16, align 8
  %124 = bitcast %struct.untd_hdr_1st* %123 to i8*
  %125 = load i64, i64* %4, align 8
  %126 = getelementptr i8, i8* %124, i64 %125
  %127 = bitcast i8* %126 to %struct.wlp_rx_hdr*
  store %struct.wlp_rx_hdr* %127, %struct.wlp_rx_hdr** %7, align 8
  %128 = load %struct.wlp_rx_hdr*, %struct.wlp_rx_hdr** %7, align 8
  %129 = getelementptr inbounds %struct.wlp_rx_hdr, %struct.wlp_rx_hdr* %128, i32 0, i32 2
  %130 = load i32, i32* %129, align 4
  %131 = load %struct.i1480u*, %struct.i1480u** %8, align 8
  %132 = getelementptr inbounds %struct.i1480u, %struct.i1480u* %131, i32 0, i32 4
  store i32 %130, i32* %132, align 8
  %133 = load %struct.i1480u*, %struct.i1480u** %8, align 8
  %134 = getelementptr inbounds %struct.i1480u, %struct.i1480u* %133, i32 0, i32 1
  %135 = load %struct.sk_buff*, %struct.sk_buff** %134, align 8
  %136 = load i64, i64* %4, align 8
  %137 = load i64, i64* %5, align 8
  %138 = add i64 %136, %137
  %139 = call i32 @skb_put(%struct.sk_buff* %135, i64 %138)
  %140 = load %struct.i1480u*, %struct.i1480u** %8, align 8
  %141 = getelementptr inbounds %struct.i1480u, %struct.i1480u* %140, i32 0, i32 1
  %142 = load %struct.sk_buff*, %struct.sk_buff** %141, align 8
  %143 = load i64, i64* %4, align 8
  %144 = load i64, i64* %6, align 8
  %145 = add i64 %143, %144
  %146 = call i32 @skb_pull(%struct.sk_buff* %142, i64 %145)
  %147 = load %struct.i1480u*, %struct.i1480u** %8, align 8
  %148 = getelementptr inbounds %struct.i1480u, %struct.i1480u* %147, i32 0, i32 3
  %149 = load %struct.wlp_rx_hdr*, %struct.wlp_rx_hdr** %7, align 8
  %150 = getelementptr inbounds %struct.wlp_rx_hdr, %struct.wlp_rx_hdr* %149, i32 0, i32 1
  %151 = load i32, i32* %150, align 4
  %152 = sub nsw i32 %151, 7
  %153 = call i32 @stats_add_sample(i32* %148, i32 %152)
  %154 = load %struct.i1480u*, %struct.i1480u** %8, align 8
  %155 = getelementptr inbounds %struct.i1480u, %struct.i1480u* %154, i32 0, i32 2
  %156 = load %struct.wlp_rx_hdr*, %struct.wlp_rx_hdr** %7, align 8
  %157 = getelementptr inbounds %struct.wlp_rx_hdr, %struct.wlp_rx_hdr* %156, i32 0, i32 0
  %158 = load i32, i32* %157, align 4
  %159 = add nsw i32 %158, 18
  %160 = call i32 @stats_add_sample(i32* %155, i32 %159)
  %161 = load %struct.i1480u_rx_buf*, %struct.i1480u_rx_buf** %2, align 8
  %162 = getelementptr inbounds %struct.i1480u_rx_buf, %struct.i1480u_rx_buf* %161, i32 0, i32 0
  store %struct.sk_buff* null, %struct.sk_buff** %162, align 8
  br label %349

163:                                              ; preds = %68
  %164 = load %struct.device*, %struct.device** %14, align 8
  %165 = call i32 @dev_dbg(%struct.device* %164, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.7, i64 0, i64 0))
  store i64 4, i64* %4, align 8
  %166 = load %struct.i1480u*, %struct.i1480u** %8, align 8
  %167 = getelementptr inbounds %struct.i1480u, %struct.i1480u* %166, i32 0, i32 1
  %168 = load %struct.sk_buff*, %struct.sk_buff** %167, align 8
  %169 = icmp eq %struct.sk_buff* %168, null
  br i1 %169, label %170, label %173

170:                                              ; preds = %163
  %171 = load %struct.i1480u*, %struct.i1480u** %8, align 8
  %172 = call i32 (%struct.i1480u*, i8*, ...) @i1480u_drop(%struct.i1480u* %171, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.8, i64 0, i64 0))
  br label %373

173:                                              ; preds = %163
  %174 = load i32, i32* %10, align 4
  %175 = sext i32 %174 to i64
  %176 = load i64, i64* %4, align 8
  %177 = icmp ult i64 %175, %176
  br i1 %177, label %178, label %181

178:                                              ; preds = %173
  %179 = load %struct.i1480u*, %struct.i1480u** %8, align 8
  %180 = call i32 (%struct.i1480u*, i8*, ...) @i1480u_drop(%struct.i1480u* %179, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.9, i64 0, i64 0))
  br label %373

181:                                              ; preds = %173
  %182 = load %struct.untd_hdr*, %struct.untd_hdr** %12, align 8
  %183 = getelementptr inbounds %struct.untd_hdr, %struct.untd_hdr* %182, i32 0, i32 0
  %184 = load i32, i32* %183, align 4
  %185 = call i8* @le16_to_cpu(i32 %184)
  %186 = ptrtoint i8* %185 to i64
  store i64 %186, i64* %5, align 8
  %187 = load i32, i32* %10, align 4
  %188 = sext i32 %187 to i64
  %189 = load i64, i64* %4, align 8
  %190 = load i64, i64* %5, align 8
  %191 = add i64 %189, %190
  %192 = icmp ult i64 %188, %191
  br i1 %192, label %193, label %196

193:                                              ; preds = %181
  %194 = load %struct.i1480u*, %struct.i1480u** %8, align 8
  %195 = call i32 (%struct.i1480u*, i8*, ...) @i1480u_drop(%struct.i1480u* %194, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.6, i64 0, i64 0))
  br label %373

196:                                              ; preds = %181
  %197 = load %struct.i1480u*, %struct.i1480u** %8, align 8
  %198 = getelementptr inbounds %struct.i1480u, %struct.i1480u* %197, i32 0, i32 1
  %199 = load %struct.sk_buff*, %struct.sk_buff** %198, align 8
  %200 = load i64, i64* %5, align 8
  %201 = call i32 @skb_put(%struct.sk_buff* %199, i64 %200)
  %202 = load i8*, i8** %11, align 8
  %203 = load i64, i64* %4, align 8
  %204 = getelementptr i8, i8* %202, i64 %203
  %205 = load i64, i64* %5, align 8
  %206 = call i32 @memmove(i32 %201, i8* %204, i64 %205)
  br label %349

207:                                              ; preds = %68
  %208 = load %struct.device*, %struct.device** %14, align 8
  %209 = call i32 @dev_dbg(%struct.device* %208, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.10, i64 0, i64 0))
  store i64 4, i64* %4, align 8
  %210 = load %struct.i1480u*, %struct.i1480u** %8, align 8
  %211 = getelementptr inbounds %struct.i1480u, %struct.i1480u* %210, i32 0, i32 1
  %212 = load %struct.sk_buff*, %struct.sk_buff** %211, align 8
  %213 = icmp eq %struct.sk_buff* %212, null
  br i1 %213, label %214, label %217

214:                                              ; preds = %207
  %215 = load %struct.i1480u*, %struct.i1480u** %8, align 8
  %216 = call i32 (%struct.i1480u*, i8*, ...) @i1480u_drop(%struct.i1480u* %215, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.11, i64 0, i64 0))
  br label %373

217:                                              ; preds = %207
  %218 = load i32, i32* %10, align 4
  %219 = sext i32 %218 to i64
  %220 = load i64, i64* %4, align 8
  %221 = icmp ult i64 %219, %220
  br i1 %221, label %222, label %225

222:                                              ; preds = %217
  %223 = load %struct.i1480u*, %struct.i1480u** %8, align 8
  %224 = call i32 (%struct.i1480u*, i8*, ...) @i1480u_drop(%struct.i1480u* %223, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.12, i64 0, i64 0))
  br label %373

225:                                              ; preds = %217
  %226 = load %struct.untd_hdr*, %struct.untd_hdr** %12, align 8
  %227 = getelementptr inbounds %struct.untd_hdr, %struct.untd_hdr* %226, i32 0, i32 0
  %228 = load i32, i32* %227, align 4
  %229 = call i8* @le16_to_cpu(i32 %228)
  %230 = ptrtoint i8* %229 to i64
  store i64 %230, i64* %5, align 8
  %231 = load i32, i32* %10, align 4
  %232 = sext i32 %231 to i64
  %233 = load i64, i64* %5, align 8
  %234 = load i64, i64* %4, align 8
  %235 = add i64 %233, %234
  %236 = icmp ult i64 %232, %235
  br i1 %236, label %237, label %240

237:                                              ; preds = %225
  %238 = load %struct.i1480u*, %struct.i1480u** %8, align 8
  %239 = call i32 (%struct.i1480u*, i8*, ...) @i1480u_drop(%struct.i1480u* %238, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.6, i64 0, i64 0))
  br label %373

240:                                              ; preds = %225
  %241 = load %struct.i1480u*, %struct.i1480u** %8, align 8
  %242 = getelementptr inbounds %struct.i1480u, %struct.i1480u* %241, i32 0, i32 1
  %243 = load %struct.sk_buff*, %struct.sk_buff** %242, align 8
  %244 = load i64, i64* %5, align 8
  %245 = call i32 @skb_put(%struct.sk_buff* %243, i64 %244)
  %246 = load i8*, i8** %11, align 8
  %247 = load i64, i64* %4, align 8
  %248 = getelementptr i8, i8* %246, i64 %247
  %249 = load i64, i64* %5, align 8
  %250 = call i32 @memmove(i32 %245, i8* %248, i64 %249)
  store i32 1, i32* %3, align 4
  br label %349

251:                                              ; preds = %68
  %252 = load %struct.device*, %struct.device** %14, align 8
  %253 = call i32 @dev_dbg(%struct.device* %252, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.13, i64 0, i64 0))
  store i64 4, i64* %4, align 8
  %254 = load %struct.i1480u*, %struct.i1480u** %8, align 8
  %255 = getelementptr inbounds %struct.i1480u, %struct.i1480u* %254, i32 0, i32 1
  %256 = load %struct.sk_buff*, %struct.sk_buff** %255, align 8
  %257 = icmp ne %struct.sk_buff* %256, null
  br i1 %257, label %258, label %261

258:                                              ; preds = %251
  %259 = load %struct.i1480u*, %struct.i1480u** %8, align 8
  %260 = call i32 @i1480u_fix(%struct.i1480u* %259, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.14, i64 0, i64 0))
  br label %261

261:                                              ; preds = %258, %251
  %262 = load i32, i32* %10, align 4
  %263 = sext i32 %262 to i64
  %264 = load i64, i64* %4, align 8
  %265 = load i64, i64* %6, align 8
  %266 = add i64 %264, %265
  %267 = icmp ult i64 %263, %266
  br i1 %267, label %268, label %271

268:                                              ; preds = %261
  %269 = load %struct.i1480u*, %struct.i1480u** %8, align 8
  %270 = call i32 (%struct.i1480u*, i8*, ...) @i1480u_drop(%struct.i1480u* %269, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.15, i64 0, i64 0))
  br label %373

271:                                              ; preds = %261
  %272 = load %struct.untd_hdr*, %struct.untd_hdr** %12, align 8
  %273 = getelementptr inbounds %struct.untd_hdr, %struct.untd_hdr* %272, i32 0, i32 0
  %274 = load i32, i32* %273, align 4
  %275 = call i8* @le16_to_cpu(i32 %274)
  %276 = ptrtoint i8* %275 to i64
  %277 = load %struct.i1480u*, %struct.i1480u** %8, align 8
  %278 = getelementptr inbounds %struct.i1480u, %struct.i1480u* %277, i32 0, i32 0
  store i64 %276, i64* %278, align 8
  %279 = load %struct.i1480u*, %struct.i1480u** %8, align 8
  %280 = getelementptr inbounds %struct.i1480u, %struct.i1480u* %279, i32 0, i32 0
  %281 = load i64, i64* %280, align 8
  store i64 %281, i64* %5, align 8
  %282 = load i32, i32* %10, align 4
  %283 = sext i32 %282 to i64
  %284 = load %struct.i1480u*, %struct.i1480u** %8, align 8
  %285 = getelementptr inbounds %struct.i1480u, %struct.i1480u* %284, i32 0, i32 0
  %286 = load i64, i64* %285, align 8
  %287 = load i64, i64* %4, align 8
  %288 = add i64 %286, %287
  %289 = icmp ult i64 %283, %288
  br i1 %289, label %290, label %293

290:                                              ; preds = %271
  %291 = load %struct.i1480u*, %struct.i1480u** %8, align 8
  %292 = call i32 (%struct.i1480u*, i8*, ...) @i1480u_drop(%struct.i1480u* %291, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.6, i64 0, i64 0))
  br label %373

293:                                              ; preds = %271
  %294 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %295 = load %struct.i1480u*, %struct.i1480u** %8, align 8
  %296 = getelementptr inbounds %struct.i1480u, %struct.i1480u* %295, i32 0, i32 1
  store %struct.sk_buff* %294, %struct.sk_buff** %296, align 8
  %297 = load %struct.untd_hdr*, %struct.untd_hdr** %12, align 8
  %298 = bitcast %struct.untd_hdr* %297 to i8*
  %299 = load i64, i64* %4, align 8
  %300 = getelementptr i8, i8* %298, i64 %299
  %301 = bitcast i8* %300 to %struct.wlp_rx_hdr*
  store %struct.wlp_rx_hdr* %301, %struct.wlp_rx_hdr** %7, align 8
  %302 = load %struct.wlp_rx_hdr*, %struct.wlp_rx_hdr** %7, align 8
  %303 = getelementptr inbounds %struct.wlp_rx_hdr, %struct.wlp_rx_hdr* %302, i32 0, i32 2
  %304 = load i32, i32* %303, align 4
  %305 = load %struct.i1480u*, %struct.i1480u** %8, align 8
  %306 = getelementptr inbounds %struct.i1480u, %struct.i1480u* %305, i32 0, i32 4
  store i32 %304, i32* %306, align 8
  %307 = load %struct.i1480u*, %struct.i1480u** %8, align 8
  %308 = getelementptr inbounds %struct.i1480u, %struct.i1480u* %307, i32 0, i32 3
  %309 = load %struct.wlp_rx_hdr*, %struct.wlp_rx_hdr** %7, align 8
  %310 = getelementptr inbounds %struct.wlp_rx_hdr, %struct.wlp_rx_hdr* %309, i32 0, i32 1
  %311 = load i32, i32* %310, align 4
  %312 = sub nsw i32 %311, 7
  %313 = call i32 @stats_add_sample(i32* %308, i32 %312)
  %314 = load %struct.i1480u*, %struct.i1480u** %8, align 8
  %315 = getelementptr inbounds %struct.i1480u, %struct.i1480u* %314, i32 0, i32 2
  %316 = load %struct.wlp_rx_hdr*, %struct.wlp_rx_hdr** %7, align 8
  %317 = getelementptr inbounds %struct.wlp_rx_hdr, %struct.wlp_rx_hdr* %316, i32 0, i32 0
  %318 = load i32, i32* %317, align 4
  %319 = add nsw i32 %318, 18
  %320 = call i32 @stats_add_sample(i32* %315, i32 %319)
  %321 = load %struct.i1480u*, %struct.i1480u** %8, align 8
  %322 = getelementptr inbounds %struct.i1480u, %struct.i1480u* %321, i32 0, i32 1
  %323 = load %struct.sk_buff*, %struct.sk_buff** %322, align 8
  %324 = load i64, i64* %4, align 8
  %325 = load %struct.i1480u*, %struct.i1480u** %8, align 8
  %326 = getelementptr inbounds %struct.i1480u, %struct.i1480u* %325, i32 0, i32 0
  %327 = load i64, i64* %326, align 8
  %328 = add i64 %324, %327
  %329 = call i32 @skb_put(%struct.sk_buff* %323, i64 %328)
  %330 = load %struct.i1480u*, %struct.i1480u** %8, align 8
  %331 = getelementptr inbounds %struct.i1480u, %struct.i1480u* %330, i32 0, i32 1
  %332 = load %struct.sk_buff*, %struct.sk_buff** %331, align 8
  %333 = load i64, i64* %4, align 8
  %334 = load i64, i64* %6, align 8
  %335 = add i64 %333, %334
  %336 = call i32 @skb_pull(%struct.sk_buff* %332, i64 %335)
  %337 = load %struct.i1480u_rx_buf*, %struct.i1480u_rx_buf** %2, align 8
  %338 = getelementptr inbounds %struct.i1480u_rx_buf, %struct.i1480u_rx_buf* %337, i32 0, i32 0
  store %struct.sk_buff* null, %struct.sk_buff** %338, align 8
  store i32 1, i32* %3, align 4
  %339 = load i64, i64* %6, align 8
  %340 = load %struct.i1480u*, %struct.i1480u** %8, align 8
  %341 = getelementptr inbounds %struct.i1480u, %struct.i1480u* %340, i32 0, i32 0
  %342 = load i64, i64* %341, align 8
  %343 = sub i64 %342, %339
  store i64 %343, i64* %341, align 8
  br label %349

344:                                              ; preds = %68
  %345 = load %struct.i1480u*, %struct.i1480u** %8, align 8
  %346 = load %struct.untd_hdr*, %struct.untd_hdr** %12, align 8
  %347 = call i32 @untd_hdr_type(%struct.untd_hdr* %346)
  %348 = call i32 (%struct.i1480u*, i8*, ...) @i1480u_drop(%struct.i1480u* %345, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.16, i64 0, i64 0), i32 %347)
  br label %373

349:                                              ; preds = %293, %240, %196, %119
  %350 = load i64, i64* %4, align 8
  %351 = load i64, i64* %5, align 8
  %352 = add i64 %350, %351
  %353 = load i32, i32* %10, align 4
  %354 = sext i32 %353 to i64
  %355 = sub i64 %354, %352
  %356 = trunc i64 %355 to i32
  store i32 %356, i32* %10, align 4
  %357 = load i32, i32* %10, align 4
  %358 = icmp sgt i32 %357, 0
  br i1 %358, label %359, label %365

359:                                              ; preds = %349
  %360 = load i64, i64* %4, align 8
  %361 = load i64, i64* %5, align 8
  %362 = add i64 %360, %361
  %363 = load i8*, i8** %11, align 8
  %364 = getelementptr i8, i8* %363, i64 %362
  store i8* %364, i8** %11, align 8
  br label %365

365:                                              ; preds = %359, %349
  br label %40

366:                                              ; preds = %46, %40
  %367 = load i32, i32* %3, align 4
  %368 = icmp ne i32 %367, 0
  br i1 %368, label %369, label %372

369:                                              ; preds = %366
  %370 = load %struct.i1480u*, %struct.i1480u** %8, align 8
  %371 = call i32 @i1480u_skb_deliver(%struct.i1480u* %370)
  br label %372

372:                                              ; preds = %369, %366
  br label %373

373:                                              ; preds = %372, %344, %290, %268, %237, %222, %214, %193, %178, %170, %116, %91, %65, %55
  %374 = load %struct.i1480u_rx_buf*, %struct.i1480u_rx_buf** %2, align 8
  %375 = getelementptr inbounds %struct.i1480u_rx_buf, %struct.i1480u_rx_buf* %374, i32 0, i32 0
  %376 = load %struct.sk_buff*, %struct.sk_buff** %375, align 8
  %377 = icmp eq %struct.sk_buff* %376, null
  br i1 %377, label %378, label %403

378:                                              ; preds = %373
  %379 = load i32, i32* @i1480u_MAX_RX_PKT_SIZE, align 4
  %380 = call %struct.sk_buff* @dev_alloc_skb(i32 %379)
  store %struct.sk_buff* %380, %struct.sk_buff** %15, align 8
  %381 = load %struct.sk_buff*, %struct.sk_buff** %15, align 8
  %382 = icmp ne %struct.sk_buff* %381, null
  br i1 %382, label %390, label %383

383:                                              ; preds = %378
  %384 = call i64 (...) @printk_ratelimit()
  %385 = icmp ne i64 %384, 0
  br i1 %385, label %386, label %389

386:                                              ; preds = %383
  %387 = load %struct.device*, %struct.device** %14, align 8
  %388 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %387, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.17, i64 0, i64 0))
  br label %389

389:                                              ; preds = %386, %383
  br label %402

390:                                              ; preds = %378
  %391 = load %struct.net_device*, %struct.net_device** %13, align 8
  %392 = load %struct.sk_buff*, %struct.sk_buff** %15, align 8
  %393 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %392, i32 0, i32 1
  store %struct.net_device* %391, %struct.net_device** %393, align 8
  %394 = load i32, i32* @CHECKSUM_NONE, align 4
  %395 = load %struct.sk_buff*, %struct.sk_buff** %15, align 8
  %396 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %395, i32 0, i32 0
  store i32 %394, i32* %396, align 8
  %397 = load %struct.sk_buff*, %struct.sk_buff** %15, align 8
  %398 = call i32 @skb_reserve(%struct.sk_buff* %397, i32 2)
  %399 = load %struct.sk_buff*, %struct.sk_buff** %15, align 8
  %400 = load %struct.i1480u_rx_buf*, %struct.i1480u_rx_buf** %2, align 8
  %401 = getelementptr inbounds %struct.i1480u_rx_buf, %struct.i1480u_rx_buf* %400, i32 0, i32 0
  store %struct.sk_buff* %399, %struct.sk_buff** %401, align 8
  br label %402

402:                                              ; preds = %390, %389
  br label %403

403:                                              ; preds = %402, %373
  ret void
}

declare dso_local i32 @i1480u_drop(%struct.i1480u*, i8*, ...) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i64 @untd_hdr_rx_tx(%struct.untd_hdr*) #1

declare dso_local i32 @untd_hdr_type(%struct.untd_hdr*) #1

declare dso_local i32 @dev_dbg(%struct.device*, i8*) #1

declare dso_local i32 @i1480u_fix(%struct.i1480u*, i8*) #1

declare dso_local i8* @le16_to_cpu(i32) #1

declare dso_local i32 @skb_put(%struct.sk_buff*, i64) #1

declare dso_local i32 @skb_pull(%struct.sk_buff*, i64) #1

declare dso_local i32 @stats_add_sample(i32*, i32) #1

declare dso_local i32 @memmove(i32, i8*, i64) #1

declare dso_local i32 @i1480u_skb_deliver(%struct.i1480u*) #1

declare dso_local %struct.sk_buff* @dev_alloc_skb(i32) #1

declare dso_local i64 @printk_ratelimit(...) #1

declare dso_local i32 @dev_err(%struct.device*, i8*, ...) #1

declare dso_local i32 @skb_reserve(%struct.sk_buff*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

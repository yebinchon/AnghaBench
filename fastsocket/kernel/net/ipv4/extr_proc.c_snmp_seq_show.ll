; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/ipv4/extr_proc.c_snmp_seq_show.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/ipv4/extr_proc.c_snmp_seq_show.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i64, i32* }
%struct.TYPE_7__ = type { i64, i32* }
%struct.TYPE_6__ = type { i64, i32* }
%struct.seq_file = type { %struct.net* }
%struct.net = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i64, i64, i64, i64 }

@.str = private unnamed_addr constant [26 x i8] c"Ip: Forwarding DefaultTTL\00", align 1
@snmp4_ipstats_list = common dso_local global %struct.TYPE_8__* null, align 8
@.str.1 = private unnamed_addr constant [4 x i8] c" %s\00", align 1
@.str.2 = private unnamed_addr constant [11 x i8] c"\0AIp: %d %d\00", align 1
@FORWARDING = common dso_local global i32 0, align 4
@sysctl_ip_default_ttl = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [5 x i8] c" %lu\00", align 1
@.str.4 = private unnamed_addr constant [6 x i8] c"\0ATcp:\00", align 1
@snmp4_tcp_list = common dso_local global %struct.TYPE_7__* null, align 8
@TCP_MIB_MAXCONN = common dso_local global i64 0, align 8
@.str.5 = private unnamed_addr constant [5 x i8] c" %ld\00", align 1
@.str.6 = private unnamed_addr constant [6 x i8] c"\0AUdp:\00", align 1
@snmp4_udp_list = common dso_local global %struct.TYPE_6__* null, align 8
@.str.7 = private unnamed_addr constant [10 x i8] c"\0AUdpLite:\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.seq_file*, i8*)* @snmp_seq_show to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @snmp_seq_show(%struct.seq_file* %0, i8* %1) #0 {
  %3 = alloca %struct.seq_file*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.net*, align 8
  store %struct.seq_file* %0, %struct.seq_file** %3, align 8
  store i8* %1, i8** %4, align 8
  %7 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %8 = getelementptr inbounds %struct.seq_file, %struct.seq_file* %7, i32 0, i32 0
  %9 = load %struct.net*, %struct.net** %8, align 8
  store %struct.net* %9, %struct.net** %6, align 8
  %10 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %11 = call i32 @seq_puts(%struct.seq_file* %10, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %5, align 4
  br label %12

12:                                               ; preds = %30, %2
  %13 = load %struct.TYPE_8__*, %struct.TYPE_8__** @snmp4_ipstats_list, align 8
  %14 = load i32, i32* %5, align 4
  %15 = sext i32 %14 to i64
  %16 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %13, i64 %15
  %17 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %16, i32 0, i32 1
  %18 = load i32*, i32** %17, align 8
  %19 = icmp ne i32* %18, null
  br i1 %19, label %20, label %33

20:                                               ; preds = %12
  %21 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %22 = load %struct.TYPE_8__*, %struct.TYPE_8__** @snmp4_ipstats_list, align 8
  %23 = load i32, i32* %5, align 4
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %22, i64 %24
  %26 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %25, i32 0, i32 1
  %27 = load i32*, i32** %26, align 8
  %28 = ptrtoint i32* %27 to i32
  %29 = call i32 (%struct.seq_file*, i8*, i32, ...) @seq_printf(%struct.seq_file* %21, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i32 %28)
  br label %30

30:                                               ; preds = %20
  %31 = load i32, i32* %5, align 4
  %32 = add nsw i32 %31, 1
  store i32 %32, i32* %5, align 4
  br label %12

33:                                               ; preds = %12
  %34 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %35 = load %struct.net*, %struct.net** %6, align 8
  %36 = load i32, i32* @FORWARDING, align 4
  %37 = call i64 @IPV4_DEVCONF_ALL(%struct.net* %35, i32 %36)
  %38 = icmp ne i64 %37, 0
  %39 = zext i1 %38 to i64
  %40 = select i1 %38, i32 1, i32 2
  %41 = load i32, i32* @sysctl_ip_default_ttl, align 4
  %42 = call i32 (%struct.seq_file*, i8*, i32, ...) @seq_printf(%struct.seq_file* %34, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0), i32 %40, i32 %41)
  store i32 0, i32* %5, align 4
  br label %43

43:                                               ; preds = %67, %33
  %44 = load %struct.TYPE_8__*, %struct.TYPE_8__** @snmp4_ipstats_list, align 8
  %45 = load i32, i32* %5, align 4
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %44, i64 %46
  %48 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %47, i32 0, i32 1
  %49 = load i32*, i32** %48, align 8
  %50 = icmp ne i32* %49, null
  br i1 %50, label %51, label %70

51:                                               ; preds = %43
  %52 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %53 = load %struct.net*, %struct.net** %6, align 8
  %54 = getelementptr inbounds %struct.net, %struct.net* %53, i32 0, i32 0
  %55 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %54, i32 0, i32 3
  %56 = load i64, i64* %55, align 8
  %57 = inttoptr i64 %56 to i8**
  %58 = load %struct.TYPE_8__*, %struct.TYPE_8__** @snmp4_ipstats_list, align 8
  %59 = load i32, i32* %5, align 4
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %58, i64 %60
  %62 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %61, i32 0, i32 0
  %63 = load i64, i64* %62, align 8
  %64 = call i32* @snmp_fold_field(i8** %57, i64 %63)
  %65 = ptrtoint i32* %64 to i32
  %66 = call i32 (%struct.seq_file*, i8*, i32, ...) @seq_printf(%struct.seq_file* %52, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0), i32 %65)
  br label %67

67:                                               ; preds = %51
  %68 = load i32, i32* %5, align 4
  %69 = add nsw i32 %68, 1
  store i32 %69, i32* %5, align 4
  br label %43

70:                                               ; preds = %43
  %71 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %72 = call i32 @icmp_put(%struct.seq_file* %71)
  %73 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %74 = call i32 @icmpmsg_put(%struct.seq_file* %73)
  %75 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %76 = call i32 @seq_puts(%struct.seq_file* %75, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i64 0, i64 0))
  store i32 0, i32* %5, align 4
  br label %77

77:                                               ; preds = %95, %70
  %78 = load %struct.TYPE_7__*, %struct.TYPE_7__** @snmp4_tcp_list, align 8
  %79 = load i32, i32* %5, align 4
  %80 = sext i32 %79 to i64
  %81 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %78, i64 %80
  %82 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %81, i32 0, i32 1
  %83 = load i32*, i32** %82, align 8
  %84 = icmp ne i32* %83, null
  br i1 %84, label %85, label %98

85:                                               ; preds = %77
  %86 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %87 = load %struct.TYPE_7__*, %struct.TYPE_7__** @snmp4_tcp_list, align 8
  %88 = load i32, i32* %5, align 4
  %89 = sext i32 %88 to i64
  %90 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %87, i64 %89
  %91 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %90, i32 0, i32 1
  %92 = load i32*, i32** %91, align 8
  %93 = ptrtoint i32* %92 to i32
  %94 = call i32 (%struct.seq_file*, i8*, i32, ...) @seq_printf(%struct.seq_file* %86, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i32 %93)
  br label %95

95:                                               ; preds = %85
  %96 = load i32, i32* %5, align 4
  %97 = add nsw i32 %96, 1
  store i32 %97, i32* %5, align 4
  br label %77

98:                                               ; preds = %77
  %99 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %100 = call i32 @seq_puts(%struct.seq_file* %99, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i64 0, i64 0))
  store i32 0, i32* %5, align 4
  br label %101

101:                                              ; preds = %151, %98
  %102 = load %struct.TYPE_7__*, %struct.TYPE_7__** @snmp4_tcp_list, align 8
  %103 = load i32, i32* %5, align 4
  %104 = sext i32 %103 to i64
  %105 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %102, i64 %104
  %106 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %105, i32 0, i32 1
  %107 = load i32*, i32** %106, align 8
  %108 = icmp ne i32* %107, null
  br i1 %108, label %109, label %154

109:                                              ; preds = %101
  %110 = load %struct.TYPE_7__*, %struct.TYPE_7__** @snmp4_tcp_list, align 8
  %111 = load i32, i32* %5, align 4
  %112 = sext i32 %111 to i64
  %113 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %110, i64 %112
  %114 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %113, i32 0, i32 0
  %115 = load i64, i64* %114, align 8
  %116 = load i64, i64* @TCP_MIB_MAXCONN, align 8
  %117 = icmp eq i64 %115, %116
  br i1 %117, label %118, label %134

118:                                              ; preds = %109
  %119 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %120 = load %struct.net*, %struct.net** %6, align 8
  %121 = getelementptr inbounds %struct.net, %struct.net* %120, i32 0, i32 0
  %122 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %121, i32 0, i32 2
  %123 = load i64, i64* %122, align 8
  %124 = inttoptr i64 %123 to i8**
  %125 = load %struct.TYPE_7__*, %struct.TYPE_7__** @snmp4_tcp_list, align 8
  %126 = load i32, i32* %5, align 4
  %127 = sext i32 %126 to i64
  %128 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %125, i64 %127
  %129 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %128, i32 0, i32 0
  %130 = load i64, i64* %129, align 8
  %131 = call i32* @snmp_fold_field(i8** %124, i64 %130)
  %132 = ptrtoint i32* %131 to i32
  %133 = call i32 (%struct.seq_file*, i8*, i32, ...) @seq_printf(%struct.seq_file* %119, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i64 0, i64 0), i32 %132)
  br label %150

134:                                              ; preds = %109
  %135 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %136 = load %struct.net*, %struct.net** %6, align 8
  %137 = getelementptr inbounds %struct.net, %struct.net* %136, i32 0, i32 0
  %138 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %137, i32 0, i32 2
  %139 = load i64, i64* %138, align 8
  %140 = inttoptr i64 %139 to i8**
  %141 = load %struct.TYPE_7__*, %struct.TYPE_7__** @snmp4_tcp_list, align 8
  %142 = load i32, i32* %5, align 4
  %143 = sext i32 %142 to i64
  %144 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %141, i64 %143
  %145 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %144, i32 0, i32 0
  %146 = load i64, i64* %145, align 8
  %147 = call i32* @snmp_fold_field(i8** %140, i64 %146)
  %148 = ptrtoint i32* %147 to i32
  %149 = call i32 (%struct.seq_file*, i8*, i32, ...) @seq_printf(%struct.seq_file* %135, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0), i32 %148)
  br label %150

150:                                              ; preds = %134, %118
  br label %151

151:                                              ; preds = %150
  %152 = load i32, i32* %5, align 4
  %153 = add nsw i32 %152, 1
  store i32 %153, i32* %5, align 4
  br label %101

154:                                              ; preds = %101
  %155 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %156 = call i32 @seq_puts(%struct.seq_file* %155, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i64 0, i64 0))
  store i32 0, i32* %5, align 4
  br label %157

157:                                              ; preds = %175, %154
  %158 = load %struct.TYPE_6__*, %struct.TYPE_6__** @snmp4_udp_list, align 8
  %159 = load i32, i32* %5, align 4
  %160 = sext i32 %159 to i64
  %161 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %158, i64 %160
  %162 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %161, i32 0, i32 1
  %163 = load i32*, i32** %162, align 8
  %164 = icmp ne i32* %163, null
  br i1 %164, label %165, label %178

165:                                              ; preds = %157
  %166 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %167 = load %struct.TYPE_6__*, %struct.TYPE_6__** @snmp4_udp_list, align 8
  %168 = load i32, i32* %5, align 4
  %169 = sext i32 %168 to i64
  %170 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %167, i64 %169
  %171 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %170, i32 0, i32 1
  %172 = load i32*, i32** %171, align 8
  %173 = ptrtoint i32* %172 to i32
  %174 = call i32 (%struct.seq_file*, i8*, i32, ...) @seq_printf(%struct.seq_file* %166, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i32 %173)
  br label %175

175:                                              ; preds = %165
  %176 = load i32, i32* %5, align 4
  %177 = add nsw i32 %176, 1
  store i32 %177, i32* %5, align 4
  br label %157

178:                                              ; preds = %157
  %179 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %180 = call i32 @seq_puts(%struct.seq_file* %179, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i64 0, i64 0))
  store i32 0, i32* %5, align 4
  br label %181

181:                                              ; preds = %205, %178
  %182 = load %struct.TYPE_6__*, %struct.TYPE_6__** @snmp4_udp_list, align 8
  %183 = load i32, i32* %5, align 4
  %184 = sext i32 %183 to i64
  %185 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %182, i64 %184
  %186 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %185, i32 0, i32 1
  %187 = load i32*, i32** %186, align 8
  %188 = icmp ne i32* %187, null
  br i1 %188, label %189, label %208

189:                                              ; preds = %181
  %190 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %191 = load %struct.net*, %struct.net** %6, align 8
  %192 = getelementptr inbounds %struct.net, %struct.net* %191, i32 0, i32 0
  %193 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %192, i32 0, i32 1
  %194 = load i64, i64* %193, align 8
  %195 = inttoptr i64 %194 to i8**
  %196 = load %struct.TYPE_6__*, %struct.TYPE_6__** @snmp4_udp_list, align 8
  %197 = load i32, i32* %5, align 4
  %198 = sext i32 %197 to i64
  %199 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %196, i64 %198
  %200 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %199, i32 0, i32 0
  %201 = load i64, i64* %200, align 8
  %202 = call i32* @snmp_fold_field(i8** %195, i64 %201)
  %203 = ptrtoint i32* %202 to i32
  %204 = call i32 (%struct.seq_file*, i8*, i32, ...) @seq_printf(%struct.seq_file* %190, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0), i32 %203)
  br label %205

205:                                              ; preds = %189
  %206 = load i32, i32* %5, align 4
  %207 = add nsw i32 %206, 1
  store i32 %207, i32* %5, align 4
  br label %181

208:                                              ; preds = %181
  %209 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %210 = call i32 @seq_puts(%struct.seq_file* %209, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.7, i64 0, i64 0))
  store i32 0, i32* %5, align 4
  br label %211

211:                                              ; preds = %229, %208
  %212 = load %struct.TYPE_6__*, %struct.TYPE_6__** @snmp4_udp_list, align 8
  %213 = load i32, i32* %5, align 4
  %214 = sext i32 %213 to i64
  %215 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %212, i64 %214
  %216 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %215, i32 0, i32 1
  %217 = load i32*, i32** %216, align 8
  %218 = icmp ne i32* %217, null
  br i1 %218, label %219, label %232

219:                                              ; preds = %211
  %220 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %221 = load %struct.TYPE_6__*, %struct.TYPE_6__** @snmp4_udp_list, align 8
  %222 = load i32, i32* %5, align 4
  %223 = sext i32 %222 to i64
  %224 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %221, i64 %223
  %225 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %224, i32 0, i32 1
  %226 = load i32*, i32** %225, align 8
  %227 = ptrtoint i32* %226 to i32
  %228 = call i32 (%struct.seq_file*, i8*, i32, ...) @seq_printf(%struct.seq_file* %220, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i32 %227)
  br label %229

229:                                              ; preds = %219
  %230 = load i32, i32* %5, align 4
  %231 = add nsw i32 %230, 1
  store i32 %231, i32* %5, align 4
  br label %211

232:                                              ; preds = %211
  %233 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %234 = call i32 @seq_puts(%struct.seq_file* %233, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.7, i64 0, i64 0))
  store i32 0, i32* %5, align 4
  br label %235

235:                                              ; preds = %259, %232
  %236 = load %struct.TYPE_6__*, %struct.TYPE_6__** @snmp4_udp_list, align 8
  %237 = load i32, i32* %5, align 4
  %238 = sext i32 %237 to i64
  %239 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %236, i64 %238
  %240 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %239, i32 0, i32 1
  %241 = load i32*, i32** %240, align 8
  %242 = icmp ne i32* %241, null
  br i1 %242, label %243, label %262

243:                                              ; preds = %235
  %244 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %245 = load %struct.net*, %struct.net** %6, align 8
  %246 = getelementptr inbounds %struct.net, %struct.net* %245, i32 0, i32 0
  %247 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %246, i32 0, i32 0
  %248 = load i64, i64* %247, align 8
  %249 = inttoptr i64 %248 to i8**
  %250 = load %struct.TYPE_6__*, %struct.TYPE_6__** @snmp4_udp_list, align 8
  %251 = load i32, i32* %5, align 4
  %252 = sext i32 %251 to i64
  %253 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %250, i64 %252
  %254 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %253, i32 0, i32 0
  %255 = load i64, i64* %254, align 8
  %256 = call i32* @snmp_fold_field(i8** %249, i64 %255)
  %257 = ptrtoint i32* %256 to i32
  %258 = call i32 (%struct.seq_file*, i8*, i32, ...) @seq_printf(%struct.seq_file* %244, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0), i32 %257)
  br label %259

259:                                              ; preds = %243
  %260 = load i32, i32* %5, align 4
  %261 = add nsw i32 %260, 1
  store i32 %261, i32* %5, align 4
  br label %235

262:                                              ; preds = %235
  %263 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %264 = call i32 @seq_putc(%struct.seq_file* %263, i8 signext 10)
  ret i32 0
}

declare dso_local i32 @seq_puts(%struct.seq_file*, i8*) #1

declare dso_local i32 @seq_printf(%struct.seq_file*, i8*, i32, ...) #1

declare dso_local i64 @IPV4_DEVCONF_ALL(%struct.net*, i32) #1

declare dso_local i32* @snmp_fold_field(i8**, i64) #1

declare dso_local i32 @icmp_put(%struct.seq_file*) #1

declare dso_local i32 @icmpmsg_put(%struct.seq_file*) #1

declare dso_local i32 @seq_putc(%struct.seq_file*, i8 signext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

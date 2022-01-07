; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/ipv4/extr_tcp.c_tcp_get_info.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/ipv4/extr_tcp.c_tcp_get_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sock = type { i64, i32, i32 }
%struct.tcp_info = type { i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8*, i8*, i8*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.tcp_sock = type { i32, i32, %struct.TYPE_8__, %struct.TYPE_7__, i32, i32, i32, i32, i32, i32, i32, i64, i64, i32, i32, i32, i32, i32, i32, %struct.TYPE_5__ }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_5__ = type { i32, i32, i64, i64 }
%struct.inet_connection_sock = type { i32, %struct.TYPE_6__, i32, i32, i32, i32, i32 }
%struct.TYPE_6__ = type { i64, i32, i32 }

@tcp_time_stamp = common dso_local global i64 0, align 8
@TCPI_OPT_TIMESTAMPS = common dso_local global i32 0, align 4
@TCPI_OPT_SACK = common dso_local global i32 0, align 4
@TCPI_OPT_WSCALE = common dso_local global i32 0, align 4
@TCP_ECN_OK = common dso_local global i32 0, align 4
@TCPI_OPT_ECN = common dso_local global i32 0, align 4
@TCP_LISTEN = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @tcp_get_info(%struct.sock* %0, %struct.tcp_info* %1) #0 {
  %3 = alloca %struct.sock*, align 8
  %4 = alloca %struct.tcp_info*, align 8
  %5 = alloca %struct.tcp_sock*, align 8
  %6 = alloca %struct.inet_connection_sock*, align 8
  %7 = alloca i64, align 8
  store %struct.sock* %0, %struct.sock** %3, align 8
  store %struct.tcp_info* %1, %struct.tcp_info** %4, align 8
  %8 = load %struct.sock*, %struct.sock** %3, align 8
  %9 = call %struct.tcp_sock* @tcp_sk(%struct.sock* %8)
  store %struct.tcp_sock* %9, %struct.tcp_sock** %5, align 8
  %10 = load %struct.sock*, %struct.sock** %3, align 8
  %11 = call %struct.inet_connection_sock* @inet_csk(%struct.sock* %10)
  store %struct.inet_connection_sock* %11, %struct.inet_connection_sock** %6, align 8
  %12 = load i64, i64* @tcp_time_stamp, align 8
  store i64 %12, i64* %7, align 8
  %13 = load %struct.tcp_info*, %struct.tcp_info** %4, align 8
  %14 = call i32 @memset(%struct.tcp_info* %13, i32 0, i32 144)
  %15 = load %struct.sock*, %struct.sock** %3, align 8
  %16 = getelementptr inbounds %struct.sock, %struct.sock* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = load %struct.tcp_info*, %struct.tcp_info** %4, align 8
  %19 = getelementptr inbounds %struct.tcp_info, %struct.tcp_info* %18, i32 0, i32 0
  store i64 %17, i64* %19, align 8
  %20 = load %struct.inet_connection_sock*, %struct.inet_connection_sock** %6, align 8
  %21 = getelementptr inbounds %struct.inet_connection_sock, %struct.inet_connection_sock* %20, i32 0, i32 6
  %22 = load i32, i32* %21, align 8
  %23 = load %struct.tcp_info*, %struct.tcp_info** %4, align 8
  %24 = getelementptr inbounds %struct.tcp_info, %struct.tcp_info* %23, i32 0, i32 30
  store i32 %22, i32* %24, align 4
  %25 = load %struct.inet_connection_sock*, %struct.inet_connection_sock** %6, align 8
  %26 = getelementptr inbounds %struct.inet_connection_sock, %struct.inet_connection_sock* %25, i32 0, i32 5
  %27 = load i32, i32* %26, align 4
  %28 = load %struct.tcp_info*, %struct.tcp_info** %4, align 8
  %29 = getelementptr inbounds %struct.tcp_info, %struct.tcp_info* %28, i32 0, i32 29
  store i32 %27, i32* %29, align 8
  %30 = load %struct.inet_connection_sock*, %struct.inet_connection_sock** %6, align 8
  %31 = getelementptr inbounds %struct.inet_connection_sock, %struct.inet_connection_sock* %30, i32 0, i32 4
  %32 = load i32, i32* %31, align 8
  %33 = load %struct.tcp_info*, %struct.tcp_info** %4, align 8
  %34 = getelementptr inbounds %struct.tcp_info, %struct.tcp_info* %33, i32 0, i32 28
  store i32 %32, i32* %34, align 4
  %35 = load %struct.inet_connection_sock*, %struct.inet_connection_sock** %6, align 8
  %36 = getelementptr inbounds %struct.inet_connection_sock, %struct.inet_connection_sock* %35, i32 0, i32 3
  %37 = load i32, i32* %36, align 4
  %38 = load %struct.tcp_info*, %struct.tcp_info** %4, align 8
  %39 = getelementptr inbounds %struct.tcp_info, %struct.tcp_info* %38, i32 0, i32 27
  store i32 %37, i32* %39, align 8
  %40 = load %struct.tcp_sock*, %struct.tcp_sock** %5, align 8
  %41 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %40, i32 0, i32 19
  %42 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %41, i32 0, i32 3
  %43 = load i64, i64* %42, align 8
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %51

45:                                               ; preds = %2
  %46 = load i32, i32* @TCPI_OPT_TIMESTAMPS, align 4
  %47 = load %struct.tcp_info*, %struct.tcp_info** %4, align 8
  %48 = getelementptr inbounds %struct.tcp_info, %struct.tcp_info* %47, i32 0, i32 24
  %49 = load i32, i32* %48, align 4
  %50 = or i32 %49, %46
  store i32 %50, i32* %48, align 4
  br label %51

51:                                               ; preds = %45, %2
  %52 = load %struct.tcp_sock*, %struct.tcp_sock** %5, align 8
  %53 = call i64 @tcp_is_sack(%struct.tcp_sock* %52)
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %61

55:                                               ; preds = %51
  %56 = load i32, i32* @TCPI_OPT_SACK, align 4
  %57 = load %struct.tcp_info*, %struct.tcp_info** %4, align 8
  %58 = getelementptr inbounds %struct.tcp_info, %struct.tcp_info* %57, i32 0, i32 24
  %59 = load i32, i32* %58, align 4
  %60 = or i32 %59, %56
  store i32 %60, i32* %58, align 4
  br label %61

61:                                               ; preds = %55, %51
  %62 = load %struct.tcp_sock*, %struct.tcp_sock** %5, align 8
  %63 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %62, i32 0, i32 19
  %64 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %63, i32 0, i32 2
  %65 = load i64, i64* %64, align 8
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %67, label %85

67:                                               ; preds = %61
  %68 = load i32, i32* @TCPI_OPT_WSCALE, align 4
  %69 = load %struct.tcp_info*, %struct.tcp_info** %4, align 8
  %70 = getelementptr inbounds %struct.tcp_info, %struct.tcp_info* %69, i32 0, i32 24
  %71 = load i32, i32* %70, align 4
  %72 = or i32 %71, %68
  store i32 %72, i32* %70, align 4
  %73 = load %struct.tcp_sock*, %struct.tcp_sock** %5, align 8
  %74 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %73, i32 0, i32 19
  %75 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %74, i32 0, i32 1
  %76 = load i32, i32* %75, align 4
  %77 = load %struct.tcp_info*, %struct.tcp_info** %4, align 8
  %78 = getelementptr inbounds %struct.tcp_info, %struct.tcp_info* %77, i32 0, i32 26
  store i32 %76, i32* %78, align 4
  %79 = load %struct.tcp_sock*, %struct.tcp_sock** %5, align 8
  %80 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %79, i32 0, i32 19
  %81 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 8
  %83 = load %struct.tcp_info*, %struct.tcp_info** %4, align 8
  %84 = getelementptr inbounds %struct.tcp_info, %struct.tcp_info* %83, i32 0, i32 25
  store i32 %82, i32* %84, align 8
  br label %85

85:                                               ; preds = %67, %61
  %86 = load %struct.tcp_sock*, %struct.tcp_sock** %5, align 8
  %87 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 8
  %89 = load i32, i32* @TCP_ECN_OK, align 4
  %90 = and i32 %88, %89
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %92, label %98

92:                                               ; preds = %85
  %93 = load i32, i32* @TCPI_OPT_ECN, align 4
  %94 = load %struct.tcp_info*, %struct.tcp_info** %4, align 8
  %95 = getelementptr inbounds %struct.tcp_info, %struct.tcp_info* %94, i32 0, i32 24
  %96 = load i32, i32* %95, align 4
  %97 = or i32 %96, %93
  store i32 %97, i32* %95, align 4
  br label %98

98:                                               ; preds = %92, %85
  %99 = load %struct.inet_connection_sock*, %struct.inet_connection_sock** %6, align 8
  %100 = getelementptr inbounds %struct.inet_connection_sock, %struct.inet_connection_sock* %99, i32 0, i32 2
  %101 = load i32, i32* %100, align 8
  %102 = call i32 @jiffies_to_usecs(i32 %101)
  %103 = load %struct.tcp_info*, %struct.tcp_info** %4, align 8
  %104 = getelementptr inbounds %struct.tcp_info, %struct.tcp_info* %103, i32 0, i32 1
  store i32 %102, i32* %104, align 8
  %105 = load %struct.inet_connection_sock*, %struct.inet_connection_sock** %6, align 8
  %106 = getelementptr inbounds %struct.inet_connection_sock, %struct.inet_connection_sock* %105, i32 0, i32 1
  %107 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %106, i32 0, i32 2
  %108 = load i32, i32* %107, align 4
  %109 = call i32 @jiffies_to_usecs(i32 %108)
  %110 = load %struct.tcp_info*, %struct.tcp_info** %4, align 8
  %111 = getelementptr inbounds %struct.tcp_info, %struct.tcp_info* %110, i32 0, i32 2
  store i32 %109, i32* %111, align 4
  %112 = load %struct.tcp_sock*, %struct.tcp_sock** %5, align 8
  %113 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %112, i32 0, i32 18
  %114 = load i32, i32* %113, align 4
  %115 = load %struct.tcp_info*, %struct.tcp_info** %4, align 8
  %116 = getelementptr inbounds %struct.tcp_info, %struct.tcp_info* %115, i32 0, i32 23
  store i32 %114, i32* %116, align 8
  %117 = load %struct.inet_connection_sock*, %struct.inet_connection_sock** %6, align 8
  %118 = getelementptr inbounds %struct.inet_connection_sock, %struct.inet_connection_sock* %117, i32 0, i32 1
  %119 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %118, i32 0, i32 1
  %120 = load i32, i32* %119, align 8
  %121 = load %struct.tcp_info*, %struct.tcp_info** %4, align 8
  %122 = getelementptr inbounds %struct.tcp_info, %struct.tcp_info* %121, i32 0, i32 22
  store i32 %120, i32* %122, align 4
  %123 = load %struct.sock*, %struct.sock** %3, align 8
  %124 = getelementptr inbounds %struct.sock, %struct.sock* %123, i32 0, i32 0
  %125 = load i64, i64* %124, align 8
  %126 = load i64, i64* @TCP_LISTEN, align 8
  %127 = icmp eq i64 %125, %126
  br i1 %127, label %128, label %139

128:                                              ; preds = %98
  %129 = load %struct.sock*, %struct.sock** %3, align 8
  %130 = getelementptr inbounds %struct.sock, %struct.sock* %129, i32 0, i32 2
  %131 = load i32, i32* %130, align 4
  %132 = load %struct.tcp_info*, %struct.tcp_info** %4, align 8
  %133 = getelementptr inbounds %struct.tcp_info, %struct.tcp_info* %132, i32 0, i32 21
  store i32 %131, i32* %133, align 8
  %134 = load %struct.sock*, %struct.sock** %3, align 8
  %135 = getelementptr inbounds %struct.sock, %struct.sock* %134, i32 0, i32 1
  %136 = load i32, i32* %135, align 8
  %137 = load %struct.tcp_info*, %struct.tcp_info** %4, align 8
  %138 = getelementptr inbounds %struct.tcp_info, %struct.tcp_info* %137, i32 0, i32 20
  store i32 %136, i32* %138, align 4
  br label %150

139:                                              ; preds = %98
  %140 = load %struct.tcp_sock*, %struct.tcp_sock** %5, align 8
  %141 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %140, i32 0, i32 17
  %142 = load i32, i32* %141, align 8
  %143 = load %struct.tcp_info*, %struct.tcp_info** %4, align 8
  %144 = getelementptr inbounds %struct.tcp_info, %struct.tcp_info* %143, i32 0, i32 21
  store i32 %142, i32* %144, align 8
  %145 = load %struct.tcp_sock*, %struct.tcp_sock** %5, align 8
  %146 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %145, i32 0, i32 16
  %147 = load i32, i32* %146, align 4
  %148 = load %struct.tcp_info*, %struct.tcp_info** %4, align 8
  %149 = getelementptr inbounds %struct.tcp_info, %struct.tcp_info* %148, i32 0, i32 20
  store i32 %147, i32* %149, align 4
  br label %150

150:                                              ; preds = %139, %128
  %151 = load %struct.tcp_sock*, %struct.tcp_sock** %5, align 8
  %152 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %151, i32 0, i32 15
  %153 = load i32, i32* %152, align 8
  %154 = load %struct.tcp_info*, %struct.tcp_info** %4, align 8
  %155 = getelementptr inbounds %struct.tcp_info, %struct.tcp_info* %154, i32 0, i32 19
  store i32 %153, i32* %155, align 8
  %156 = load %struct.tcp_sock*, %struct.tcp_sock** %5, align 8
  %157 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %156, i32 0, i32 14
  %158 = load i32, i32* %157, align 4
  %159 = load %struct.tcp_info*, %struct.tcp_info** %4, align 8
  %160 = getelementptr inbounds %struct.tcp_info, %struct.tcp_info* %159, i32 0, i32 18
  store i32 %158, i32* %160, align 4
  %161 = load %struct.tcp_sock*, %struct.tcp_sock** %5, align 8
  %162 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %161, i32 0, i32 13
  %163 = load i32, i32* %162, align 8
  %164 = load %struct.tcp_info*, %struct.tcp_info** %4, align 8
  %165 = getelementptr inbounds %struct.tcp_info, %struct.tcp_info* %164, i32 0, i32 17
  store i32 %163, i32* %165, align 8
  %166 = load i64, i64* %7, align 8
  %167 = load %struct.tcp_sock*, %struct.tcp_sock** %5, align 8
  %168 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %167, i32 0, i32 12
  %169 = load i64, i64* %168, align 8
  %170 = sub nsw i64 %166, %169
  %171 = call i8* @jiffies_to_msecs(i64 %170)
  %172 = load %struct.tcp_info*, %struct.tcp_info** %4, align 8
  %173 = getelementptr inbounds %struct.tcp_info, %struct.tcp_info* %172, i32 0, i32 16
  store i8* %171, i8** %173, align 8
  %174 = load i64, i64* %7, align 8
  %175 = load %struct.inet_connection_sock*, %struct.inet_connection_sock** %6, align 8
  %176 = getelementptr inbounds %struct.inet_connection_sock, %struct.inet_connection_sock* %175, i32 0, i32 1
  %177 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %176, i32 0, i32 0
  %178 = load i64, i64* %177, align 8
  %179 = sub nsw i64 %174, %178
  %180 = call i8* @jiffies_to_msecs(i64 %179)
  %181 = load %struct.tcp_info*, %struct.tcp_info** %4, align 8
  %182 = getelementptr inbounds %struct.tcp_info, %struct.tcp_info* %181, i32 0, i32 15
  store i8* %180, i8** %182, align 8
  %183 = load i64, i64* %7, align 8
  %184 = load %struct.tcp_sock*, %struct.tcp_sock** %5, align 8
  %185 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %184, i32 0, i32 11
  %186 = load i64, i64* %185, align 8
  %187 = sub nsw i64 %183, %186
  %188 = call i8* @jiffies_to_msecs(i64 %187)
  %189 = load %struct.tcp_info*, %struct.tcp_info** %4, align 8
  %190 = getelementptr inbounds %struct.tcp_info, %struct.tcp_info* %189, i32 0, i32 14
  store i8* %188, i8** %190, align 8
  %191 = load %struct.inet_connection_sock*, %struct.inet_connection_sock** %6, align 8
  %192 = getelementptr inbounds %struct.inet_connection_sock, %struct.inet_connection_sock* %191, i32 0, i32 0
  %193 = load i32, i32* %192, align 8
  %194 = load %struct.tcp_info*, %struct.tcp_info** %4, align 8
  %195 = getelementptr inbounds %struct.tcp_info, %struct.tcp_info* %194, i32 0, i32 13
  store i32 %193, i32* %195, align 8
  %196 = load %struct.tcp_sock*, %struct.tcp_sock** %5, align 8
  %197 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %196, i32 0, i32 10
  %198 = load i32, i32* %197, align 8
  %199 = load %struct.tcp_info*, %struct.tcp_info** %4, align 8
  %200 = getelementptr inbounds %struct.tcp_info, %struct.tcp_info* %199, i32 0, i32 12
  store i32 %198, i32* %200, align 4
  %201 = load %struct.tcp_sock*, %struct.tcp_sock** %5, align 8
  %202 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %201, i32 0, i32 9
  %203 = load i32, i32* %202, align 4
  %204 = call i32 @jiffies_to_usecs(i32 %203)
  %205 = ashr i32 %204, 3
  %206 = load %struct.tcp_info*, %struct.tcp_info** %4, align 8
  %207 = getelementptr inbounds %struct.tcp_info, %struct.tcp_info* %206, i32 0, i32 3
  store i32 %205, i32* %207, align 8
  %208 = load %struct.tcp_sock*, %struct.tcp_sock** %5, align 8
  %209 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %208, i32 0, i32 8
  %210 = load i32, i32* %209, align 8
  %211 = call i32 @jiffies_to_usecs(i32 %210)
  %212 = ashr i32 %211, 2
  %213 = load %struct.tcp_info*, %struct.tcp_info** %4, align 8
  %214 = getelementptr inbounds %struct.tcp_info, %struct.tcp_info* %213, i32 0, i32 4
  store i32 %212, i32* %214, align 4
  %215 = load %struct.tcp_sock*, %struct.tcp_sock** %5, align 8
  %216 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %215, i32 0, i32 7
  %217 = load i32, i32* %216, align 4
  %218 = load %struct.tcp_info*, %struct.tcp_info** %4, align 8
  %219 = getelementptr inbounds %struct.tcp_info, %struct.tcp_info* %218, i32 0, i32 11
  store i32 %217, i32* %219, align 8
  %220 = load %struct.tcp_sock*, %struct.tcp_sock** %5, align 8
  %221 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %220, i32 0, i32 6
  %222 = load i32, i32* %221, align 8
  %223 = load %struct.tcp_info*, %struct.tcp_info** %4, align 8
  %224 = getelementptr inbounds %struct.tcp_info, %struct.tcp_info* %223, i32 0, i32 10
  store i32 %222, i32* %224, align 4
  %225 = load %struct.tcp_sock*, %struct.tcp_sock** %5, align 8
  %226 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %225, i32 0, i32 5
  %227 = load i32, i32* %226, align 4
  %228 = load %struct.tcp_info*, %struct.tcp_info** %4, align 8
  %229 = getelementptr inbounds %struct.tcp_info, %struct.tcp_info* %228, i32 0, i32 9
  store i32 %227, i32* %229, align 8
  %230 = load %struct.tcp_sock*, %struct.tcp_sock** %5, align 8
  %231 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %230, i32 0, i32 4
  %232 = load i32, i32* %231, align 8
  %233 = load %struct.tcp_info*, %struct.tcp_info** %4, align 8
  %234 = getelementptr inbounds %struct.tcp_info, %struct.tcp_info* %233, i32 0, i32 8
  store i32 %232, i32* %234, align 4
  %235 = load %struct.tcp_sock*, %struct.tcp_sock** %5, align 8
  %236 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %235, i32 0, i32 3
  %237 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %236, i32 0, i32 0
  %238 = load i32, i32* %237, align 4
  %239 = call i32 @jiffies_to_usecs(i32 %238)
  %240 = ashr i32 %239, 3
  %241 = load %struct.tcp_info*, %struct.tcp_info** %4, align 8
  %242 = getelementptr inbounds %struct.tcp_info, %struct.tcp_info* %241, i32 0, i32 5
  store i32 %240, i32* %242, align 8
  %243 = load %struct.tcp_sock*, %struct.tcp_sock** %5, align 8
  %244 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %243, i32 0, i32 2
  %245 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %244, i32 0, i32 0
  %246 = load i32, i32* %245, align 8
  %247 = load %struct.tcp_info*, %struct.tcp_info** %4, align 8
  %248 = getelementptr inbounds %struct.tcp_info, %struct.tcp_info* %247, i32 0, i32 7
  store i32 %246, i32* %248, align 8
  %249 = load %struct.tcp_sock*, %struct.tcp_sock** %5, align 8
  %250 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %249, i32 0, i32 1
  %251 = load i32, i32* %250, align 4
  %252 = load %struct.tcp_info*, %struct.tcp_info** %4, align 8
  %253 = getelementptr inbounds %struct.tcp_info, %struct.tcp_info* %252, i32 0, i32 6
  store i32 %251, i32* %253, align 4
  ret void
}

declare dso_local %struct.tcp_sock* @tcp_sk(%struct.sock*) #1

declare dso_local %struct.inet_connection_sock* @inet_csk(%struct.sock*) #1

declare dso_local i32 @memset(%struct.tcp_info*, i32, i32) #1

declare dso_local i64 @tcp_is_sack(%struct.tcp_sock*) #1

declare dso_local i32 @jiffies_to_usecs(i32) #1

declare dso_local i8* @jiffies_to_msecs(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

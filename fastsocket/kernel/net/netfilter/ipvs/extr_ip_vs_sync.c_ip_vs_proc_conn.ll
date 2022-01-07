; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/netfilter/ipvs/extr_ip_vs_sync.c_ip_vs_proc_conn.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/netfilter/ipvs/extr_ip_vs_sync.c_ip_vs_proc_conn.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ip_vs_conn_param = type { i64, i32, i32 }
%union.nf_inet_addr = type { i32 }
%struct.ip_vs_sync_conn_options = type { i32 }
%struct.ip_vs_protocol = type { i64* }
%struct.ip_vs_dest = type { i32, i32, i32 }
%struct.ip_vs_conn = type { i32, i32, i32, i64, i32, i32, %struct.ip_vs_dest* }

@IP_VS_CONN_F_TEMPLATE = common dso_local global i32 0, align 4
@IP_VS_CONN_F_INACTIVE = common dso_local global i32 0, align 4
@IP_VS_CONN_F_BACKUP_UPD_MASK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"BACKUP, add new conn. failed\0A\00", align 1
@MAX_SCHEDULE_TIMEOUT = common dso_local global i64 0, align 8
@HZ = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ip_vs_conn_param*, i32, i32, i32, i32, %union.nf_inet_addr*, i32, i64, i32, %struct.ip_vs_sync_conn_options*, %struct.ip_vs_protocol*)* @ip_vs_proc_conn to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ip_vs_proc_conn(%struct.ip_vs_conn_param* %0, i32 %1, i32 %2, i32 %3, i32 %4, %union.nf_inet_addr* %5, i32 %6, i64 %7, i32 %8, %struct.ip_vs_sync_conn_options* %9, %struct.ip_vs_protocol* %10) #0 {
  %12 = alloca %struct.ip_vs_conn_param*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca %union.nf_inet_addr*, align 8
  %18 = alloca i32, align 4
  %19 = alloca i64, align 8
  %20 = alloca i32, align 4
  %21 = alloca %struct.ip_vs_sync_conn_options*, align 8
  %22 = alloca %struct.ip_vs_protocol*, align 8
  %23 = alloca %struct.ip_vs_dest*, align 8
  %24 = alloca %struct.ip_vs_conn*, align 8
  store %struct.ip_vs_conn_param* %0, %struct.ip_vs_conn_param** %12, align 8
  store i32 %1, i32* %13, align 4
  store i32 %2, i32* %14, align 4
  store i32 %3, i32* %15, align 4
  store i32 %4, i32* %16, align 4
  store %union.nf_inet_addr* %5, %union.nf_inet_addr** %17, align 8
  store i32 %6, i32* %18, align 4
  store i64 %7, i64* %19, align 8
  store i32 %8, i32* %20, align 4
  store %struct.ip_vs_sync_conn_options* %9, %struct.ip_vs_sync_conn_options** %21, align 8
  store %struct.ip_vs_protocol* %10, %struct.ip_vs_protocol** %22, align 8
  %25 = load i32, i32* %13, align 4
  %26 = load i32, i32* @IP_VS_CONN_F_TEMPLATE, align 4
  %27 = and i32 %25, %26
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %32, label %29

29:                                               ; preds = %11
  %30 = load %struct.ip_vs_conn_param*, %struct.ip_vs_conn_param** %12, align 8
  %31 = call %struct.ip_vs_conn* @ip_vs_conn_in_get(%struct.ip_vs_conn_param* %30)
  store %struct.ip_vs_conn* %31, %struct.ip_vs_conn** %24, align 8
  br label %35

32:                                               ; preds = %11
  %33 = load %struct.ip_vs_conn_param*, %struct.ip_vs_conn_param** %12, align 8
  %34 = call %struct.ip_vs_conn* @ip_vs_ct_in_get(%struct.ip_vs_conn_param* %33)
  store %struct.ip_vs_conn* %34, %struct.ip_vs_conn** %24, align 8
  br label %35

35:                                               ; preds = %32, %29
  %36 = load %struct.ip_vs_conn*, %struct.ip_vs_conn** %24, align 8
  %37 = icmp ne %struct.ip_vs_conn* %36, null
  br i1 %37, label %38, label %110

38:                                               ; preds = %35
  %39 = load %struct.ip_vs_conn_param*, %struct.ip_vs_conn_param** %12, align 8
  %40 = getelementptr inbounds %struct.ip_vs_conn_param, %struct.ip_vs_conn_param* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = call i32 @kfree(i64 %41)
  %43 = load %struct.ip_vs_conn*, %struct.ip_vs_conn** %24, align 8
  %44 = getelementptr inbounds %struct.ip_vs_conn, %struct.ip_vs_conn* %43, i32 0, i32 6
  %45 = load %struct.ip_vs_dest*, %struct.ip_vs_dest** %44, align 8
  store %struct.ip_vs_dest* %45, %struct.ip_vs_dest** %23, align 8
  %46 = load %struct.ip_vs_conn*, %struct.ip_vs_conn** %24, align 8
  %47 = getelementptr inbounds %struct.ip_vs_conn, %struct.ip_vs_conn* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = load i32, i32* %13, align 4
  %50 = xor i32 %48, %49
  %51 = load i32, i32* @IP_VS_CONN_F_INACTIVE, align 4
  %52 = and i32 %50, %51
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %82

54:                                               ; preds = %38
  %55 = load i32, i32* %13, align 4
  %56 = load i32, i32* @IP_VS_CONN_F_TEMPLATE, align 4
  %57 = and i32 %55, %56
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %82, label %59

59:                                               ; preds = %54
  %60 = load %struct.ip_vs_dest*, %struct.ip_vs_dest** %23, align 8
  %61 = icmp ne %struct.ip_vs_dest* %60, null
  br i1 %61, label %62, label %82

62:                                               ; preds = %59
  %63 = load i32, i32* %13, align 4
  %64 = load i32, i32* @IP_VS_CONN_F_INACTIVE, align 4
  %65 = and i32 %63, %64
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %74

67:                                               ; preds = %62
  %68 = load %struct.ip_vs_dest*, %struct.ip_vs_dest** %23, align 8
  %69 = getelementptr inbounds %struct.ip_vs_dest, %struct.ip_vs_dest* %68, i32 0, i32 2
  %70 = call i32 @atomic_dec(i32* %69)
  %71 = load %struct.ip_vs_dest*, %struct.ip_vs_dest** %23, align 8
  %72 = getelementptr inbounds %struct.ip_vs_dest, %struct.ip_vs_dest* %71, i32 0, i32 1
  %73 = call i32 @atomic_inc(i32* %72)
  br label %81

74:                                               ; preds = %62
  %75 = load %struct.ip_vs_dest*, %struct.ip_vs_dest** %23, align 8
  %76 = getelementptr inbounds %struct.ip_vs_dest, %struct.ip_vs_dest* %75, i32 0, i32 2
  %77 = call i32 @atomic_inc(i32* %76)
  %78 = load %struct.ip_vs_dest*, %struct.ip_vs_dest** %23, align 8
  %79 = getelementptr inbounds %struct.ip_vs_dest, %struct.ip_vs_dest* %78, i32 0, i32 1
  %80 = call i32 @atomic_dec(i32* %79)
  br label %81

81:                                               ; preds = %74, %67
  br label %82

82:                                               ; preds = %81, %59, %54, %38
  %83 = load i32, i32* @IP_VS_CONN_F_BACKUP_UPD_MASK, align 4
  %84 = load i32, i32* %13, align 4
  %85 = and i32 %84, %83
  store i32 %85, i32* %13, align 4
  %86 = load %struct.ip_vs_conn*, %struct.ip_vs_conn** %24, align 8
  %87 = getelementptr inbounds %struct.ip_vs_conn, %struct.ip_vs_conn* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 8
  %89 = load i32, i32* @IP_VS_CONN_F_BACKUP_UPD_MASK, align 4
  %90 = xor i32 %89, -1
  %91 = and i32 %88, %90
  %92 = load i32, i32* %13, align 4
  %93 = or i32 %92, %91
  store i32 %93, i32* %13, align 4
  %94 = load i32, i32* %13, align 4
  %95 = load %struct.ip_vs_conn*, %struct.ip_vs_conn** %24, align 8
  %96 = getelementptr inbounds %struct.ip_vs_conn, %struct.ip_vs_conn* %95, i32 0, i32 0
  store i32 %94, i32* %96, align 8
  %97 = load %struct.ip_vs_dest*, %struct.ip_vs_dest** %23, align 8
  %98 = icmp ne %struct.ip_vs_dest* %97, null
  br i1 %98, label %109, label %99

99:                                               ; preds = %82
  %100 = load %struct.ip_vs_conn*, %struct.ip_vs_conn** %24, align 8
  %101 = call %struct.ip_vs_dest* @ip_vs_try_bind_dest(%struct.ip_vs_conn* %100)
  store %struct.ip_vs_dest* %101, %struct.ip_vs_dest** %23, align 8
  %102 = load %struct.ip_vs_dest*, %struct.ip_vs_dest** %23, align 8
  %103 = icmp ne %struct.ip_vs_dest* %102, null
  br i1 %103, label %104, label %108

104:                                              ; preds = %99
  %105 = load %struct.ip_vs_dest*, %struct.ip_vs_dest** %23, align 8
  %106 = getelementptr inbounds %struct.ip_vs_dest, %struct.ip_vs_dest* %105, i32 0, i32 0
  %107 = call i32 @atomic_dec(i32* %106)
  br label %108

108:                                              ; preds = %104, %99
  br label %109

109:                                              ; preds = %108, %82
  br label %153

110:                                              ; preds = %35
  %111 = load i32, i32* %16, align 4
  %112 = load %union.nf_inet_addr*, %union.nf_inet_addr** %17, align 8
  %113 = load i32, i32* %18, align 4
  %114 = load %struct.ip_vs_conn_param*, %struct.ip_vs_conn_param** %12, align 8
  %115 = getelementptr inbounds %struct.ip_vs_conn_param, %struct.ip_vs_conn_param* %114, i32 0, i32 2
  %116 = load i32, i32* %115, align 4
  %117 = load %struct.ip_vs_conn_param*, %struct.ip_vs_conn_param** %12, align 8
  %118 = getelementptr inbounds %struct.ip_vs_conn_param, %struct.ip_vs_conn_param* %117, i32 0, i32 1
  %119 = load i32, i32* %118, align 8
  %120 = load i32, i32* %15, align 4
  %121 = load i32, i32* %20, align 4
  %122 = load i32, i32* %13, align 4
  %123 = call %struct.ip_vs_dest* @ip_vs_find_dest(i32 %111, %union.nf_inet_addr* %112, i32 %113, i32 %116, i32 %119, i32 %120, i32 %121, i32 %122)
  store %struct.ip_vs_dest* %123, %struct.ip_vs_dest** %23, align 8
  %124 = load %struct.ip_vs_conn_param*, %struct.ip_vs_conn_param** %12, align 8
  %125 = load %union.nf_inet_addr*, %union.nf_inet_addr** %17, align 8
  %126 = load i32, i32* %18, align 4
  %127 = load i32, i32* %13, align 4
  %128 = load %struct.ip_vs_dest*, %struct.ip_vs_dest** %23, align 8
  %129 = load i32, i32* %20, align 4
  %130 = call %struct.ip_vs_conn* @ip_vs_conn_new(%struct.ip_vs_conn_param* %124, %union.nf_inet_addr* %125, i32 %126, i32 %127, %struct.ip_vs_dest* %128, i32 %129)
  store %struct.ip_vs_conn* %130, %struct.ip_vs_conn** %24, align 8
  %131 = load %struct.ip_vs_dest*, %struct.ip_vs_dest** %23, align 8
  %132 = icmp ne %struct.ip_vs_dest* %131, null
  br i1 %132, label %133, label %137

133:                                              ; preds = %110
  %134 = load %struct.ip_vs_dest*, %struct.ip_vs_dest** %23, align 8
  %135 = getelementptr inbounds %struct.ip_vs_dest, %struct.ip_vs_dest* %134, i32 0, i32 0
  %136 = call i32 @atomic_dec(i32* %135)
  br label %137

137:                                              ; preds = %133, %110
  %138 = load %struct.ip_vs_conn*, %struct.ip_vs_conn** %24, align 8
  %139 = icmp ne %struct.ip_vs_conn* %138, null
  br i1 %139, label %152, label %140

140:                                              ; preds = %137
  %141 = load %struct.ip_vs_conn_param*, %struct.ip_vs_conn_param** %12, align 8
  %142 = getelementptr inbounds %struct.ip_vs_conn_param, %struct.ip_vs_conn_param* %141, i32 0, i32 0
  %143 = load i64, i64* %142, align 8
  %144 = icmp ne i64 %143, 0
  br i1 %144, label %145, label %150

145:                                              ; preds = %140
  %146 = load %struct.ip_vs_conn_param*, %struct.ip_vs_conn_param** %12, align 8
  %147 = getelementptr inbounds %struct.ip_vs_conn_param, %struct.ip_vs_conn_param* %146, i32 0, i32 0
  %148 = load i64, i64* %147, align 8
  %149 = call i32 @kfree(i64 %148)
  br label %150

150:                                              ; preds = %145, %140
  %151 = call i32 @IP_VS_DBG(i32 2, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0))
  br label %221

152:                                              ; preds = %137
  br label %153

153:                                              ; preds = %152, %109
  %154 = load %struct.ip_vs_sync_conn_options*, %struct.ip_vs_sync_conn_options** %21, align 8
  %155 = icmp ne %struct.ip_vs_sync_conn_options* %154, null
  br i1 %155, label %156, label %161

156:                                              ; preds = %153
  %157 = load %struct.ip_vs_conn*, %struct.ip_vs_conn** %24, align 8
  %158 = getelementptr inbounds %struct.ip_vs_conn, %struct.ip_vs_conn* %157, i32 0, i32 5
  %159 = load %struct.ip_vs_sync_conn_options*, %struct.ip_vs_sync_conn_options** %21, align 8
  %160 = call i32 @memcpy(i32* %158, %struct.ip_vs_sync_conn_options* %159, i32 4)
  br label %161

161:                                              ; preds = %156, %153
  %162 = load %struct.ip_vs_conn*, %struct.ip_vs_conn** %24, align 8
  %163 = getelementptr inbounds %struct.ip_vs_conn, %struct.ip_vs_conn* %162, i32 0, i32 4
  %164 = call i32 (...) @sysctl_sync_threshold()
  %165 = call i32 @atomic_set(i32* %163, i32 %164)
  %166 = load i32, i32* %14, align 4
  %167 = load %struct.ip_vs_conn*, %struct.ip_vs_conn** %24, align 8
  %168 = getelementptr inbounds %struct.ip_vs_conn, %struct.ip_vs_conn* %167, i32 0, i32 1
  store i32 %166, i32* %168, align 4
  %169 = load %struct.ip_vs_conn*, %struct.ip_vs_conn** %24, align 8
  %170 = getelementptr inbounds %struct.ip_vs_conn, %struct.ip_vs_conn* %169, i32 0, i32 1
  %171 = load i32, i32* %170, align 4
  %172 = load %struct.ip_vs_conn*, %struct.ip_vs_conn** %24, align 8
  %173 = getelementptr inbounds %struct.ip_vs_conn, %struct.ip_vs_conn* %172, i32 0, i32 2
  store i32 %171, i32* %173, align 8
  %174 = load i64, i64* %19, align 8
  %175 = icmp ne i64 %174, 0
  br i1 %175, label %176, label %192

176:                                              ; preds = %161
  %177 = load i64, i64* %19, align 8
  %178 = load i64, i64* @MAX_SCHEDULE_TIMEOUT, align 8
  %179 = load i64, i64* @HZ, align 8
  %180 = udiv i64 %178, %179
  %181 = icmp ugt i64 %177, %180
  br i1 %181, label %182, label %186

182:                                              ; preds = %176
  %183 = load i64, i64* @MAX_SCHEDULE_TIMEOUT, align 8
  %184 = load i64, i64* @HZ, align 8
  %185 = udiv i64 %183, %184
  store i64 %185, i64* %19, align 8
  br label %186

186:                                              ; preds = %182, %176
  %187 = load i64, i64* %19, align 8
  %188 = load i64, i64* @HZ, align 8
  %189 = mul i64 %187, %188
  %190 = load %struct.ip_vs_conn*, %struct.ip_vs_conn** %24, align 8
  %191 = getelementptr inbounds %struct.ip_vs_conn, %struct.ip_vs_conn* %190, i32 0, i32 3
  store i64 %189, i64* %191, align 8
  br label %218

192:                                              ; preds = %161
  %193 = load i32, i32* %13, align 4
  %194 = load i32, i32* @IP_VS_CONN_F_TEMPLATE, align 4
  %195 = and i32 %193, %194
  %196 = icmp ne i32 %195, 0
  br i1 %196, label %212, label %197

197:                                              ; preds = %192
  %198 = load %struct.ip_vs_protocol*, %struct.ip_vs_protocol** %22, align 8
  %199 = getelementptr inbounds %struct.ip_vs_protocol, %struct.ip_vs_protocol* %198, i32 0, i32 0
  %200 = load i64*, i64** %199, align 8
  %201 = icmp ne i64* %200, null
  br i1 %201, label %202, label %212

202:                                              ; preds = %197
  %203 = load %struct.ip_vs_protocol*, %struct.ip_vs_protocol** %22, align 8
  %204 = getelementptr inbounds %struct.ip_vs_protocol, %struct.ip_vs_protocol* %203, i32 0, i32 0
  %205 = load i64*, i64** %204, align 8
  %206 = load i32, i32* %14, align 4
  %207 = zext i32 %206 to i64
  %208 = getelementptr inbounds i64, i64* %205, i64 %207
  %209 = load i64, i64* %208, align 8
  %210 = load %struct.ip_vs_conn*, %struct.ip_vs_conn** %24, align 8
  %211 = getelementptr inbounds %struct.ip_vs_conn, %struct.ip_vs_conn* %210, i32 0, i32 3
  store i64 %209, i64* %211, align 8
  br label %217

212:                                              ; preds = %197, %192
  %213 = load i64, i64* @HZ, align 8
  %214 = mul i64 180, %213
  %215 = load %struct.ip_vs_conn*, %struct.ip_vs_conn** %24, align 8
  %216 = getelementptr inbounds %struct.ip_vs_conn, %struct.ip_vs_conn* %215, i32 0, i32 3
  store i64 %214, i64* %216, align 8
  br label %217

217:                                              ; preds = %212, %202
  br label %218

218:                                              ; preds = %217, %186
  %219 = load %struct.ip_vs_conn*, %struct.ip_vs_conn** %24, align 8
  %220 = call i32 @ip_vs_conn_put(%struct.ip_vs_conn* %219)
  br label %221

221:                                              ; preds = %218, %150
  ret void
}

declare dso_local %struct.ip_vs_conn* @ip_vs_conn_in_get(%struct.ip_vs_conn_param*) #1

declare dso_local %struct.ip_vs_conn* @ip_vs_ct_in_get(%struct.ip_vs_conn_param*) #1

declare dso_local i32 @kfree(i64) #1

declare dso_local i32 @atomic_dec(i32*) #1

declare dso_local i32 @atomic_inc(i32*) #1

declare dso_local %struct.ip_vs_dest* @ip_vs_try_bind_dest(%struct.ip_vs_conn*) #1

declare dso_local %struct.ip_vs_dest* @ip_vs_find_dest(i32, %union.nf_inet_addr*, i32, i32, i32, i32, i32, i32) #1

declare dso_local %struct.ip_vs_conn* @ip_vs_conn_new(%struct.ip_vs_conn_param*, %union.nf_inet_addr*, i32, i32, %struct.ip_vs_dest*, i32) #1

declare dso_local i32 @IP_VS_DBG(i32, i8*) #1

declare dso_local i32 @memcpy(i32*, %struct.ip_vs_sync_conn_options*, i32) #1

declare dso_local i32 @atomic_set(i32*, i32) #1

declare dso_local i32 @sysctl_sync_threshold(...) #1

declare dso_local i32 @ip_vs_conn_put(%struct.ip_vs_conn*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

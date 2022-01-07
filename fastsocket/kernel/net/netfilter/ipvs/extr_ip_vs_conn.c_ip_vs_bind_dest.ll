; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/netfilter/ipvs/extr_ip_vs_conn.c_ip_vs_bind_dest.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/netfilter/ipvs/extr_ip_vs_conn.c_ip_vs_bind_dest.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ip_vs_conn = type { i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.ip_vs_dest* }
%struct.ip_vs_dest = type { i64, i32, i32, i32, i32, i32, i32 }

@IPPROTO_UDP = common dso_local global i64 0, align 8
@IP_VS_CONN_F_ONE_PACKET = common dso_local global i32 0, align 4
@IP_VS_CONN_F_SYNC = common dso_local global i32 0, align 4
@IP_VS_CONN_F_TEMPLATE = common dso_local global i32 0, align 4
@IP_VS_CONN_F_INACTIVE = common dso_local global i32 0, align 4
@IP_VS_CONN_F_FWD_MASK = common dso_local global i32 0, align 4
@IP_VS_CONN_F_NOOUTPUT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [97 x i8] c"Bind-dest %s c:%s:%d v:%s:%d d:%s:%d fwd:%c s:%u conn->flags:%X conn->refcnt:%d dest->refcnt:%d\0A\00", align 1
@IP_VS_DEST_F_OVERLOAD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ip_vs_conn*, %struct.ip_vs_dest*)* @ip_vs_bind_dest to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ip_vs_bind_dest(%struct.ip_vs_conn* %0, %struct.ip_vs_dest* %1) #0 {
  %3 = alloca %struct.ip_vs_conn*, align 8
  %4 = alloca %struct.ip_vs_dest*, align 8
  %5 = alloca i32, align 4
  store %struct.ip_vs_conn* %0, %struct.ip_vs_conn** %3, align 8
  store %struct.ip_vs_dest* %1, %struct.ip_vs_dest** %4, align 8
  %6 = load %struct.ip_vs_dest*, %struct.ip_vs_dest** %4, align 8
  %7 = icmp ne %struct.ip_vs_dest* %6, null
  br i1 %7, label %9, label %8

8:                                                ; preds = %2
  br label %156

9:                                                ; preds = %2
  %10 = load %struct.ip_vs_dest*, %struct.ip_vs_dest** %4, align 8
  %11 = getelementptr inbounds %struct.ip_vs_dest, %struct.ip_vs_dest* %10, i32 0, i32 5
  %12 = call i32 @atomic_inc(i32* %11)
  %13 = load %struct.ip_vs_dest*, %struct.ip_vs_dest** %4, align 8
  %14 = getelementptr inbounds %struct.ip_vs_dest, %struct.ip_vs_dest* %13, i32 0, i32 6
  %15 = call i32 @atomic_read(i32* %14)
  store i32 %15, i32* %5, align 4
  %16 = load %struct.ip_vs_conn*, %struct.ip_vs_conn** %3, align 8
  %17 = getelementptr inbounds %struct.ip_vs_conn, %struct.ip_vs_conn* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = load i64, i64* @IPPROTO_UDP, align 8
  %20 = icmp ne i64 %18, %19
  br i1 %20, label %21, label %26

21:                                               ; preds = %9
  %22 = load i32, i32* @IP_VS_CONN_F_ONE_PACKET, align 4
  %23 = xor i32 %22, -1
  %24 = load i32, i32* %5, align 4
  %25 = and i32 %24, %23
  store i32 %25, i32* %5, align 4
  br label %26

26:                                               ; preds = %21, %9
  %27 = load %struct.ip_vs_conn*, %struct.ip_vs_conn** %3, align 8
  %28 = getelementptr inbounds %struct.ip_vs_conn, %struct.ip_vs_conn* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 8
  %30 = load i32, i32* @IP_VS_CONN_F_SYNC, align 4
  %31 = and i32 %29, %30
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %54

33:                                               ; preds = %26
  %34 = load %struct.ip_vs_conn*, %struct.ip_vs_conn** %3, align 8
  %35 = getelementptr inbounds %struct.ip_vs_conn, %struct.ip_vs_conn* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 8
  %37 = load i32, i32* @IP_VS_CONN_F_TEMPLATE, align 4
  %38 = and i32 %36, %37
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %45, label %40

40:                                               ; preds = %33
  %41 = load i32, i32* @IP_VS_CONN_F_INACTIVE, align 4
  %42 = xor i32 %41, -1
  %43 = load i32, i32* %5, align 4
  %44 = and i32 %43, %42
  store i32 %44, i32* %5, align 4
  br label %45

45:                                               ; preds = %40, %33
  %46 = load i32, i32* @IP_VS_CONN_F_FWD_MASK, align 4
  %47 = load i32, i32* @IP_VS_CONN_F_NOOUTPUT, align 4
  %48 = or i32 %46, %47
  %49 = xor i32 %48, -1
  %50 = load %struct.ip_vs_conn*, %struct.ip_vs_conn** %3, align 8
  %51 = getelementptr inbounds %struct.ip_vs_conn, %struct.ip_vs_conn* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 8
  %53 = and i32 %52, %49
  store i32 %53, i32* %51, align 8
  br label %54

54:                                               ; preds = %45, %26
  %55 = load i32, i32* %5, align 4
  %56 = load %struct.ip_vs_conn*, %struct.ip_vs_conn** %3, align 8
  %57 = getelementptr inbounds %struct.ip_vs_conn, %struct.ip_vs_conn* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 8
  %59 = or i32 %58, %55
  store i32 %59, i32* %57, align 8
  %60 = load %struct.ip_vs_dest*, %struct.ip_vs_dest** %4, align 8
  %61 = load %struct.ip_vs_conn*, %struct.ip_vs_conn** %3, align 8
  %62 = getelementptr inbounds %struct.ip_vs_conn, %struct.ip_vs_conn* %61, i32 0, i32 11
  store %struct.ip_vs_dest* %60, %struct.ip_vs_dest** %62, align 8
  %63 = load %struct.ip_vs_conn*, %struct.ip_vs_conn** %3, align 8
  %64 = getelementptr inbounds %struct.ip_vs_conn, %struct.ip_vs_conn* %63, i32 0, i32 0
  %65 = load i64, i64* %64, align 8
  %66 = call i32 @ip_vs_proto_name(i64 %65)
  %67 = load %struct.ip_vs_conn*, %struct.ip_vs_conn** %3, align 8
  %68 = getelementptr inbounds %struct.ip_vs_conn, %struct.ip_vs_conn* %67, i32 0, i32 6
  %69 = load i32, i32* %68, align 4
  %70 = load %struct.ip_vs_conn*, %struct.ip_vs_conn** %3, align 8
  %71 = getelementptr inbounds %struct.ip_vs_conn, %struct.ip_vs_conn* %70, i32 0, i32 10
  %72 = call i32 @IP_VS_DBG_ADDR(i32 %69, i32* %71)
  %73 = load %struct.ip_vs_conn*, %struct.ip_vs_conn** %3, align 8
  %74 = getelementptr inbounds %struct.ip_vs_conn, %struct.ip_vs_conn* %73, i32 0, i32 9
  %75 = load i32, i32* %74, align 8
  %76 = call i32 @ntohs(i32 %75)
  %77 = load %struct.ip_vs_conn*, %struct.ip_vs_conn** %3, align 8
  %78 = getelementptr inbounds %struct.ip_vs_conn, %struct.ip_vs_conn* %77, i32 0, i32 6
  %79 = load i32, i32* %78, align 4
  %80 = load %struct.ip_vs_conn*, %struct.ip_vs_conn** %3, align 8
  %81 = getelementptr inbounds %struct.ip_vs_conn, %struct.ip_vs_conn* %80, i32 0, i32 8
  %82 = call i32 @IP_VS_DBG_ADDR(i32 %79, i32* %81)
  %83 = load %struct.ip_vs_conn*, %struct.ip_vs_conn** %3, align 8
  %84 = getelementptr inbounds %struct.ip_vs_conn, %struct.ip_vs_conn* %83, i32 0, i32 7
  %85 = load i32, i32* %84, align 8
  %86 = call i32 @ntohs(i32 %85)
  %87 = load %struct.ip_vs_conn*, %struct.ip_vs_conn** %3, align 8
  %88 = getelementptr inbounds %struct.ip_vs_conn, %struct.ip_vs_conn* %87, i32 0, i32 6
  %89 = load i32, i32* %88, align 4
  %90 = load %struct.ip_vs_conn*, %struct.ip_vs_conn** %3, align 8
  %91 = getelementptr inbounds %struct.ip_vs_conn, %struct.ip_vs_conn* %90, i32 0, i32 5
  %92 = call i32 @IP_VS_DBG_ADDR(i32 %89, i32* %91)
  %93 = load %struct.ip_vs_conn*, %struct.ip_vs_conn** %3, align 8
  %94 = getelementptr inbounds %struct.ip_vs_conn, %struct.ip_vs_conn* %93, i32 0, i32 4
  %95 = load i32, i32* %94, align 4
  %96 = call i32 @ntohs(i32 %95)
  %97 = load %struct.ip_vs_conn*, %struct.ip_vs_conn** %3, align 8
  %98 = call i32 @ip_vs_fwd_tag(%struct.ip_vs_conn* %97)
  %99 = load %struct.ip_vs_conn*, %struct.ip_vs_conn** %3, align 8
  %100 = getelementptr inbounds %struct.ip_vs_conn, %struct.ip_vs_conn* %99, i32 0, i32 3
  %101 = load i32, i32* %100, align 8
  %102 = load %struct.ip_vs_conn*, %struct.ip_vs_conn** %3, align 8
  %103 = getelementptr inbounds %struct.ip_vs_conn, %struct.ip_vs_conn* %102, i32 0, i32 1
  %104 = load i32, i32* %103, align 8
  %105 = load %struct.ip_vs_conn*, %struct.ip_vs_conn** %3, align 8
  %106 = getelementptr inbounds %struct.ip_vs_conn, %struct.ip_vs_conn* %105, i32 0, i32 2
  %107 = call i32 @atomic_read(i32* %106)
  %108 = load %struct.ip_vs_dest*, %struct.ip_vs_dest** %4, align 8
  %109 = getelementptr inbounds %struct.ip_vs_dest, %struct.ip_vs_dest* %108, i32 0, i32 5
  %110 = call i32 @atomic_read(i32* %109)
  %111 = call i32 @IP_VS_DBG_BUF(i32 7, i8* getelementptr inbounds ([97 x i8], [97 x i8]* @.str, i64 0, i64 0), i32 %66, i32 %72, i32 %76, i32 %82, i32 %86, i32 %92, i32 %96, i32 %98, i32 %101, i32 %104, i32 %107, i32 %110)
  %112 = load %struct.ip_vs_conn*, %struct.ip_vs_conn** %3, align 8
  %113 = getelementptr inbounds %struct.ip_vs_conn, %struct.ip_vs_conn* %112, i32 0, i32 1
  %114 = load i32, i32* %113, align 8
  %115 = load i32, i32* @IP_VS_CONN_F_TEMPLATE, align 4
  %116 = and i32 %114, %115
  %117 = icmp ne i32 %116, 0
  br i1 %117, label %134, label %118

118:                                              ; preds = %54
  %119 = load %struct.ip_vs_conn*, %struct.ip_vs_conn** %3, align 8
  %120 = getelementptr inbounds %struct.ip_vs_conn, %struct.ip_vs_conn* %119, i32 0, i32 1
  %121 = load i32, i32* %120, align 8
  %122 = load i32, i32* @IP_VS_CONN_F_INACTIVE, align 4
  %123 = and i32 %121, %122
  %124 = icmp ne i32 %123, 0
  br i1 %124, label %129, label %125

125:                                              ; preds = %118
  %126 = load %struct.ip_vs_dest*, %struct.ip_vs_dest** %4, align 8
  %127 = getelementptr inbounds %struct.ip_vs_dest, %struct.ip_vs_dest* %126, i32 0, i32 4
  %128 = call i32 @atomic_inc(i32* %127)
  br label %133

129:                                              ; preds = %118
  %130 = load %struct.ip_vs_dest*, %struct.ip_vs_dest** %4, align 8
  %131 = getelementptr inbounds %struct.ip_vs_dest, %struct.ip_vs_dest* %130, i32 0, i32 3
  %132 = call i32 @atomic_inc(i32* %131)
  br label %133

133:                                              ; preds = %129, %125
  br label %138

134:                                              ; preds = %54
  %135 = load %struct.ip_vs_dest*, %struct.ip_vs_dest** %4, align 8
  %136 = getelementptr inbounds %struct.ip_vs_dest, %struct.ip_vs_dest* %135, i32 0, i32 2
  %137 = call i32 @atomic_inc(i32* %136)
  br label %138

138:                                              ; preds = %134, %133
  %139 = load %struct.ip_vs_dest*, %struct.ip_vs_dest** %4, align 8
  %140 = getelementptr inbounds %struct.ip_vs_dest, %struct.ip_vs_dest* %139, i32 0, i32 0
  %141 = load i64, i64* %140, align 8
  %142 = icmp ne i64 %141, 0
  br i1 %142, label %143, label %156

143:                                              ; preds = %138
  %144 = load %struct.ip_vs_dest*, %struct.ip_vs_dest** %4, align 8
  %145 = call i64 @ip_vs_dest_totalconns(%struct.ip_vs_dest* %144)
  %146 = load %struct.ip_vs_dest*, %struct.ip_vs_dest** %4, align 8
  %147 = getelementptr inbounds %struct.ip_vs_dest, %struct.ip_vs_dest* %146, i32 0, i32 0
  %148 = load i64, i64* %147, align 8
  %149 = icmp sge i64 %145, %148
  br i1 %149, label %150, label %156

150:                                              ; preds = %143
  %151 = load i32, i32* @IP_VS_DEST_F_OVERLOAD, align 4
  %152 = load %struct.ip_vs_dest*, %struct.ip_vs_dest** %4, align 8
  %153 = getelementptr inbounds %struct.ip_vs_dest, %struct.ip_vs_dest* %152, i32 0, i32 1
  %154 = load i32, i32* %153, align 8
  %155 = or i32 %154, %151
  store i32 %155, i32* %153, align 8
  br label %156

156:                                              ; preds = %8, %150, %143, %138
  ret void
}

declare dso_local i32 @atomic_inc(i32*) #1

declare dso_local i32 @atomic_read(i32*) #1

declare dso_local i32 @IP_VS_DBG_BUF(i32, i8*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @ip_vs_proto_name(i64) #1

declare dso_local i32 @IP_VS_DBG_ADDR(i32, i32*) #1

declare dso_local i32 @ntohs(i32) #1

declare dso_local i32 @ip_vs_fwd_tag(%struct.ip_vs_conn*) #1

declare dso_local i64 @ip_vs_dest_totalconns(%struct.ip_vs_dest*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

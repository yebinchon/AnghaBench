; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/netfilter/ipvs/extr_ip_vs_conn.c_ip_vs_check_template.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/netfilter/ipvs/extr_ip_vs_conn.c_ip_vs_check_template.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ip_vs_conn = type { i64, i64, i64, i32, i32, i32, i32, i32, i32, %struct.ip_vs_dest* }
%struct.ip_vs_dest = type { i32, i32 }

@IP_VS_DEST_F_AVAILABLE = common dso_local global i32 0, align 4
@sysctl_ip_vs_expire_quiescent_template = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [79 x i8] c"check_template: dest not available for protocol %s s:%s:%d v:%s:%d -> d:%s:%d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ip_vs_check_template(%struct.ip_vs_conn* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ip_vs_conn*, align 8
  %4 = alloca %struct.ip_vs_dest*, align 8
  store %struct.ip_vs_conn* %0, %struct.ip_vs_conn** %3, align 8
  %5 = load %struct.ip_vs_conn*, %struct.ip_vs_conn** %3, align 8
  %6 = getelementptr inbounds %struct.ip_vs_conn, %struct.ip_vs_conn* %5, i32 0, i32 9
  %7 = load %struct.ip_vs_dest*, %struct.ip_vs_dest** %6, align 8
  store %struct.ip_vs_dest* %7, %struct.ip_vs_dest** %4, align 8
  %8 = load %struct.ip_vs_dest*, %struct.ip_vs_dest** %4, align 8
  %9 = icmp eq %struct.ip_vs_dest* %8, null
  br i1 %9, label %25, label %10

10:                                               ; preds = %1
  %11 = load %struct.ip_vs_dest*, %struct.ip_vs_dest** %4, align 8
  %12 = getelementptr inbounds %struct.ip_vs_dest, %struct.ip_vs_dest* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = load i32, i32* @IP_VS_DEST_F_AVAILABLE, align 4
  %15 = and i32 %13, %14
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %25

17:                                               ; preds = %10
  %18 = load i64, i64* @sysctl_ip_vs_expire_quiescent_template, align 8
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %86

20:                                               ; preds = %17
  %21 = load %struct.ip_vs_dest*, %struct.ip_vs_dest** %4, align 8
  %22 = getelementptr inbounds %struct.ip_vs_dest, %struct.ip_vs_dest* %21, i32 0, i32 1
  %23 = call i64 @atomic_read(i32* %22)
  %24 = icmp eq i64 %23, 0
  br i1 %24, label %25, label %86

25:                                               ; preds = %20, %10, %1
  %26 = load %struct.ip_vs_conn*, %struct.ip_vs_conn** %3, align 8
  %27 = getelementptr inbounds %struct.ip_vs_conn, %struct.ip_vs_conn* %26, i32 0, i32 8
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @ip_vs_proto_name(i32 %28)
  %30 = load %struct.ip_vs_conn*, %struct.ip_vs_conn** %3, align 8
  %31 = getelementptr inbounds %struct.ip_vs_conn, %struct.ip_vs_conn* %30, i32 0, i32 5
  %32 = load i32, i32* %31, align 8
  %33 = load %struct.ip_vs_conn*, %struct.ip_vs_conn** %3, align 8
  %34 = getelementptr inbounds %struct.ip_vs_conn, %struct.ip_vs_conn* %33, i32 0, i32 7
  %35 = call i32 @IP_VS_DBG_ADDR(i32 %32, i32* %34)
  %36 = load %struct.ip_vs_conn*, %struct.ip_vs_conn** %3, align 8
  %37 = getelementptr inbounds %struct.ip_vs_conn, %struct.ip_vs_conn* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = call i32 @ntohs(i64 %38)
  %40 = load %struct.ip_vs_conn*, %struct.ip_vs_conn** %3, align 8
  %41 = getelementptr inbounds %struct.ip_vs_conn, %struct.ip_vs_conn* %40, i32 0, i32 5
  %42 = load i32, i32* %41, align 8
  %43 = load %struct.ip_vs_conn*, %struct.ip_vs_conn** %3, align 8
  %44 = getelementptr inbounds %struct.ip_vs_conn, %struct.ip_vs_conn* %43, i32 0, i32 6
  %45 = call i32 @IP_VS_DBG_ADDR(i32 %42, i32* %44)
  %46 = load %struct.ip_vs_conn*, %struct.ip_vs_conn** %3, align 8
  %47 = getelementptr inbounds %struct.ip_vs_conn, %struct.ip_vs_conn* %46, i32 0, i32 1
  %48 = load i64, i64* %47, align 8
  %49 = call i32 @ntohs(i64 %48)
  %50 = load %struct.ip_vs_conn*, %struct.ip_vs_conn** %3, align 8
  %51 = getelementptr inbounds %struct.ip_vs_conn, %struct.ip_vs_conn* %50, i32 0, i32 5
  %52 = load i32, i32* %51, align 8
  %53 = load %struct.ip_vs_conn*, %struct.ip_vs_conn** %3, align 8
  %54 = getelementptr inbounds %struct.ip_vs_conn, %struct.ip_vs_conn* %53, i32 0, i32 4
  %55 = call i32 @IP_VS_DBG_ADDR(i32 %52, i32* %54)
  %56 = load %struct.ip_vs_conn*, %struct.ip_vs_conn** %3, align 8
  %57 = getelementptr inbounds %struct.ip_vs_conn, %struct.ip_vs_conn* %56, i32 0, i32 2
  %58 = load i64, i64* %57, align 8
  %59 = call i32 @ntohs(i64 %58)
  %60 = call i32 @IP_VS_DBG_BUF(i32 9, i8* getelementptr inbounds ([79 x i8], [79 x i8]* @.str, i64 0, i64 0), i32 %29, i32 %35, i32 %39, i32 %45, i32 %49, i32 %55, i32 %59)
  %61 = load %struct.ip_vs_conn*, %struct.ip_vs_conn** %3, align 8
  %62 = getelementptr inbounds %struct.ip_vs_conn, %struct.ip_vs_conn* %61, i32 0, i32 1
  %63 = load i64, i64* %62, align 8
  %64 = call i64 @htons(i32 65535)
  %65 = icmp ne i64 %63, %64
  br i1 %65, label %66, label %82

66:                                               ; preds = %25
  %67 = load %struct.ip_vs_conn*, %struct.ip_vs_conn** %3, align 8
  %68 = call i64 @ip_vs_conn_unhash(%struct.ip_vs_conn* %67)
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %70, label %81

70:                                               ; preds = %66
  %71 = call i64 @htons(i32 65535)
  %72 = load %struct.ip_vs_conn*, %struct.ip_vs_conn** %3, align 8
  %73 = getelementptr inbounds %struct.ip_vs_conn, %struct.ip_vs_conn* %72, i32 0, i32 2
  store i64 %71, i64* %73, align 8
  %74 = call i64 @htons(i32 65535)
  %75 = load %struct.ip_vs_conn*, %struct.ip_vs_conn** %3, align 8
  %76 = getelementptr inbounds %struct.ip_vs_conn, %struct.ip_vs_conn* %75, i32 0, i32 1
  store i64 %74, i64* %76, align 8
  %77 = load %struct.ip_vs_conn*, %struct.ip_vs_conn** %3, align 8
  %78 = getelementptr inbounds %struct.ip_vs_conn, %struct.ip_vs_conn* %77, i32 0, i32 0
  store i64 0, i64* %78, align 8
  %79 = load %struct.ip_vs_conn*, %struct.ip_vs_conn** %3, align 8
  %80 = call i32 @ip_vs_conn_hash(%struct.ip_vs_conn* %79)
  br label %81

81:                                               ; preds = %70, %66
  br label %82

82:                                               ; preds = %81, %25
  %83 = load %struct.ip_vs_conn*, %struct.ip_vs_conn** %3, align 8
  %84 = getelementptr inbounds %struct.ip_vs_conn, %struct.ip_vs_conn* %83, i32 0, i32 3
  %85 = call i32 @atomic_dec(i32* %84)
  store i32 0, i32* %2, align 4
  br label %87

86:                                               ; preds = %20, %17
  store i32 1, i32* %2, align 4
  br label %87

87:                                               ; preds = %86, %82
  %88 = load i32, i32* %2, align 4
  ret i32 %88
}

declare dso_local i64 @atomic_read(i32*) #1

declare dso_local i32 @IP_VS_DBG_BUF(i32, i8*, i32, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @ip_vs_proto_name(i32) #1

declare dso_local i32 @IP_VS_DBG_ADDR(i32, i32*) #1

declare dso_local i32 @ntohs(i64) #1

declare dso_local i64 @htons(i32) #1

declare dso_local i64 @ip_vs_conn_unhash(%struct.ip_vs_conn*) #1

declare dso_local i32 @ip_vs_conn_hash(%struct.ip_vs_conn*) #1

declare dso_local i32 @atomic_dec(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

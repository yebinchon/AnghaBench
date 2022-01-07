; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/uwb/i1480/i1480u-wlp/extr_netdev.c_i1480u_set_ip_mas.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/uwb/i1480/i1480u-wlp/extr_netdev.c_i1480u_set_ip_mas.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uwb_rc = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }
%struct.uwb_dev_addr = type { i32 }
%struct.i1480u_cmd_set_ip_mas = type { %struct.TYPE_5__, i32, i8*, i8*, i8*, %struct.uwb_dev_addr }
%struct.TYPE_5__ = type { i32, i8* }
%struct.uwb_rc_evt_confirm = type { i64, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32, i8* }

@ENOMEM = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [11 x i8] c"SET-IP-MAS\00", align 1
@UWB_RC_RES_FAIL = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [42 x i8] c"SET-IP-MAS: command execution failed: %d\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.uwb_rc*, %struct.uwb_dev_addr*, i8*, i8*, i8*, i64*)* @i1480u_set_ip_mas to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @i1480u_set_ip_mas(%struct.uwb_rc* %0, %struct.uwb_dev_addr* %1, i8* %2, i8* %3, i8* %4, i64* %5) #0 {
  %7 = alloca %struct.uwb_rc*, align 8
  %8 = alloca %struct.uwb_dev_addr*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i64*, align 8
  %13 = alloca i32, align 4
  %14 = alloca %struct.i1480u_cmd_set_ip_mas*, align 8
  %15 = alloca %struct.uwb_rc_evt_confirm, align 8
  store %struct.uwb_rc* %0, %struct.uwb_rc** %7, align 8
  store %struct.uwb_dev_addr* %1, %struct.uwb_dev_addr** %8, align 8
  store i8* %2, i8** %9, align 8
  store i8* %3, i8** %10, align 8
  store i8* %4, i8** %11, align 8
  store i64* %5, i64** %12, align 8
  %16 = load i32, i32* @ENOMEM, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %13, align 4
  %18 = load i32, i32* @GFP_KERNEL, align 4
  %19 = call %struct.i1480u_cmd_set_ip_mas* @kzalloc(i32 56, i32 %18)
  store %struct.i1480u_cmd_set_ip_mas* %19, %struct.i1480u_cmd_set_ip_mas** %14, align 8
  %20 = load %struct.i1480u_cmd_set_ip_mas*, %struct.i1480u_cmd_set_ip_mas** %14, align 8
  %21 = icmp eq %struct.i1480u_cmd_set_ip_mas* %20, null
  br i1 %21, label %22, label %23

22:                                               ; preds = %6
  br label %90

23:                                               ; preds = %6
  %24 = load %struct.i1480u_cmd_set_ip_mas*, %struct.i1480u_cmd_set_ip_mas** %14, align 8
  %25 = getelementptr inbounds %struct.i1480u_cmd_set_ip_mas, %struct.i1480u_cmd_set_ip_mas* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %25, i32 0, i32 0
  store i32 253, i32* %26, align 8
  %27 = call i8* @cpu_to_le16(i32 14)
  %28 = load %struct.i1480u_cmd_set_ip_mas*, %struct.i1480u_cmd_set_ip_mas** %14, align 8
  %29 = getelementptr inbounds %struct.i1480u_cmd_set_ip_mas, %struct.i1480u_cmd_set_ip_mas* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %29, i32 0, i32 1
  store i8* %27, i8** %30, align 8
  %31 = load %struct.i1480u_cmd_set_ip_mas*, %struct.i1480u_cmd_set_ip_mas** %14, align 8
  %32 = getelementptr inbounds %struct.i1480u_cmd_set_ip_mas, %struct.i1480u_cmd_set_ip_mas* %31, i32 0, i32 5
  %33 = load %struct.uwb_dev_addr*, %struct.uwb_dev_addr** %8, align 8
  %34 = bitcast %struct.uwb_dev_addr* %32 to i8*
  %35 = bitcast %struct.uwb_dev_addr* %33 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %34, i8* align 4 %35, i64 4, i1 false)
  %36 = load i8*, i8** %9, align 8
  %37 = load %struct.i1480u_cmd_set_ip_mas*, %struct.i1480u_cmd_set_ip_mas** %14, align 8
  %38 = getelementptr inbounds %struct.i1480u_cmd_set_ip_mas, %struct.i1480u_cmd_set_ip_mas* %37, i32 0, i32 4
  store i8* %36, i8** %38, align 8
  %39 = load i8*, i8** %10, align 8
  %40 = load %struct.i1480u_cmd_set_ip_mas*, %struct.i1480u_cmd_set_ip_mas** %14, align 8
  %41 = getelementptr inbounds %struct.i1480u_cmd_set_ip_mas, %struct.i1480u_cmd_set_ip_mas* %40, i32 0, i32 3
  store i8* %39, i8** %41, align 8
  %42 = load i8*, i8** %11, align 8
  %43 = load %struct.i1480u_cmd_set_ip_mas*, %struct.i1480u_cmd_set_ip_mas** %14, align 8
  %44 = getelementptr inbounds %struct.i1480u_cmd_set_ip_mas, %struct.i1480u_cmd_set_ip_mas* %43, i32 0, i32 2
  store i8* %42, i8** %44, align 8
  %45 = load i64*, i64** %12, align 8
  %46 = icmp eq i64* %45, null
  br i1 %46, label %47, label %52

47:                                               ; preds = %23
  %48 = load %struct.i1480u_cmd_set_ip_mas*, %struct.i1480u_cmd_set_ip_mas** %14, align 8
  %49 = getelementptr inbounds %struct.i1480u_cmd_set_ip_mas, %struct.i1480u_cmd_set_ip_mas* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 8
  %51 = call i32 @memset(i32 %50, i32 0, i32 4)
  br label %58

52:                                               ; preds = %23
  %53 = load %struct.i1480u_cmd_set_ip_mas*, %struct.i1480u_cmd_set_ip_mas** %14, align 8
  %54 = getelementptr inbounds %struct.i1480u_cmd_set_ip_mas, %struct.i1480u_cmd_set_ip_mas* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 8
  %56 = load i64*, i64** %12, align 8
  %57 = call i32 @memcpy(i32 %55, i64* %56, i32 4)
  br label %58

58:                                               ; preds = %52, %47
  %59 = getelementptr inbounds %struct.uwb_rc_evt_confirm, %struct.uwb_rc_evt_confirm* %15, i32 0, i32 1
  %60 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %59, i32 0, i32 0
  store i32 253, i32* %60, align 8
  %61 = call i8* @cpu_to_le16(i32 14)
  %62 = getelementptr inbounds %struct.uwb_rc_evt_confirm, %struct.uwb_rc_evt_confirm* %15, i32 0, i32 1
  %63 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %62, i32 0, i32 1
  store i8* %61, i8** %63, align 8
  %64 = load %struct.uwb_rc*, %struct.uwb_rc** %7, align 8
  %65 = load %struct.i1480u_cmd_set_ip_mas*, %struct.i1480u_cmd_set_ip_mas** %14, align 8
  %66 = getelementptr inbounds %struct.i1480u_cmd_set_ip_mas, %struct.i1480u_cmd_set_ip_mas* %65, i32 0, i32 0
  %67 = getelementptr inbounds %struct.uwb_rc_evt_confirm, %struct.uwb_rc_evt_confirm* %15, i32 0, i32 1
  %68 = call i32 @uwb_rc_cmd(%struct.uwb_rc* %64, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), %struct.TYPE_5__* %66, i32 56, %struct.TYPE_6__* %67, i32 24)
  store i32 %68, i32* %13, align 4
  %69 = load i32, i32* %13, align 4
  %70 = icmp slt i32 %69, 0
  br i1 %70, label %71, label %72

71:                                               ; preds = %58
  br label %87

72:                                               ; preds = %58
  %73 = getelementptr inbounds %struct.uwb_rc_evt_confirm, %struct.uwb_rc_evt_confirm* %15, i32 0, i32 0
  %74 = load i64, i64* %73, align 8
  %75 = load i64, i64* @UWB_RC_RES_FAIL, align 8
  %76 = icmp ne i64 %74, %75
  br i1 %76, label %77, label %86

77:                                               ; preds = %72
  %78 = load %struct.uwb_rc*, %struct.uwb_rc** %7, align 8
  %79 = getelementptr inbounds %struct.uwb_rc, %struct.uwb_rc* %78, i32 0, i32 0
  %80 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %79, i32 0, i32 0
  %81 = getelementptr inbounds %struct.uwb_rc_evt_confirm, %struct.uwb_rc_evt_confirm* %15, i32 0, i32 0
  %82 = load i64, i64* %81, align 8
  %83 = call i32 @dev_err(i32* %80, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.1, i64 0, i64 0), i64 %82)
  %84 = load i32, i32* @EIO, align 4
  %85 = sub nsw i32 0, %84
  store i32 %85, i32* %13, align 4
  br label %86

86:                                               ; preds = %77, %72
  br label %87

87:                                               ; preds = %86, %71
  %88 = load %struct.i1480u_cmd_set_ip_mas*, %struct.i1480u_cmd_set_ip_mas** %14, align 8
  %89 = call i32 @kfree(%struct.i1480u_cmd_set_ip_mas* %88)
  br label %90

90:                                               ; preds = %87, %22
  %91 = load i32, i32* %13, align 4
  ret i32 %91
}

declare dso_local %struct.i1480u_cmd_set_ip_mas* @kzalloc(i32, i32) #1

declare dso_local i8* @cpu_to_le16(i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @memset(i32, i32, i32) #1

declare dso_local i32 @memcpy(i32, i64*, i32) #1

declare dso_local i32 @uwb_rc_cmd(%struct.uwb_rc*, i8*, %struct.TYPE_5__*, i32, %struct.TYPE_6__*, i32) #1

declare dso_local i32 @dev_err(i32*, i8*, i64) #1

declare dso_local i32 @kfree(%struct.i1480u_cmd_set_ip_mas*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

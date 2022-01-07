; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/cifs/extr_connect.c_ip_rfc1001_connect.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/cifs/extr_connect.c_ip_rfc1001_connect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TCP_Server_Info = type { i64*, i64* }
%struct.rfc1002_session_packet = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i32, i64, i64, i32, i32 }
%struct.smb_hdr = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@RFC1001_NAME_LEN_WITH_NULL = common dso_local global i32 0, align 4
@DEFAULT_CIFS_CALLED_NAME = common dso_local global i8* null, align 8
@.str = private unnamed_addr constant [16 x i8] c"LINUX_CIFS_CLNT\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TCP_Server_Info*)* @ip_rfc1001_connect to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ip_rfc1001_connect(%struct.TCP_Server_Info* %0) #0 {
  %2 = alloca %struct.TCP_Server_Info*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.rfc1002_session_packet*, align 8
  %5 = alloca %struct.smb_hdr*, align 8
  store %struct.TCP_Server_Info* %0, %struct.TCP_Server_Info** %2, align 8
  store i32 0, i32* %3, align 4
  %6 = load i32, i32* @GFP_KERNEL, align 4
  %7 = call %struct.rfc1002_session_packet* @kzalloc(i32 32, i32 %6)
  store %struct.rfc1002_session_packet* %7, %struct.rfc1002_session_packet** %4, align 8
  %8 = load %struct.rfc1002_session_packet*, %struct.rfc1002_session_packet** %4, align 8
  %9 = icmp ne %struct.rfc1002_session_packet* %8, null
  br i1 %9, label %10, label %103

10:                                               ; preds = %1
  %11 = load %struct.rfc1002_session_packet*, %struct.rfc1002_session_packet** %4, align 8
  %12 = getelementptr inbounds %struct.rfc1002_session_packet, %struct.rfc1002_session_packet* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %13, i32 0, i32 0
  store i32 32, i32* %14, align 8
  %15 = load %struct.TCP_Server_Info*, %struct.TCP_Server_Info** %2, align 8
  %16 = getelementptr inbounds %struct.TCP_Server_Info, %struct.TCP_Server_Info* %15, i32 0, i32 0
  %17 = load i64*, i64** %16, align 8
  %18 = icmp ne i64* %17, null
  br i1 %18, label %19, label %38

19:                                               ; preds = %10
  %20 = load %struct.TCP_Server_Info*, %struct.TCP_Server_Info** %2, align 8
  %21 = getelementptr inbounds %struct.TCP_Server_Info, %struct.TCP_Server_Info* %20, i32 0, i32 0
  %22 = load i64*, i64** %21, align 8
  %23 = getelementptr inbounds i64, i64* %22, i64 0
  %24 = load i64, i64* %23, align 8
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %38

26:                                               ; preds = %19
  %27 = load %struct.rfc1002_session_packet*, %struct.rfc1002_session_packet** %4, align 8
  %28 = getelementptr inbounds %struct.rfc1002_session_packet, %struct.rfc1002_session_packet* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %29, i32 0, i32 5
  %31 = load i32, i32* %30, align 4
  %32 = load %struct.TCP_Server_Info*, %struct.TCP_Server_Info** %2, align 8
  %33 = getelementptr inbounds %struct.TCP_Server_Info, %struct.TCP_Server_Info* %32, i32 0, i32 0
  %34 = load i64*, i64** %33, align 8
  %35 = bitcast i64* %34 to i8*
  %36 = load i32, i32* @RFC1001_NAME_LEN_WITH_NULL, align 4
  %37 = call i32 @rfc1002mangle(i32 %31, i8* %35, i32 %36)
  br label %47

38:                                               ; preds = %19, %10
  %39 = load %struct.rfc1002_session_packet*, %struct.rfc1002_session_packet** %4, align 8
  %40 = getelementptr inbounds %struct.rfc1002_session_packet, %struct.rfc1002_session_packet* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %41, i32 0, i32 5
  %43 = load i32, i32* %42, align 4
  %44 = load i8*, i8** @DEFAULT_CIFS_CALLED_NAME, align 8
  %45 = load i32, i32* @RFC1001_NAME_LEN_WITH_NULL, align 4
  %46 = call i32 @rfc1002mangle(i32 %43, i8* %44, i32 %45)
  br label %47

47:                                               ; preds = %38, %26
  %48 = load %struct.rfc1002_session_packet*, %struct.rfc1002_session_packet** %4, align 8
  %49 = getelementptr inbounds %struct.rfc1002_session_packet, %struct.rfc1002_session_packet* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %49, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %50, i32 0, i32 1
  store i32 32, i32* %51, align 4
  %52 = load %struct.TCP_Server_Info*, %struct.TCP_Server_Info** %2, align 8
  %53 = getelementptr inbounds %struct.TCP_Server_Info, %struct.TCP_Server_Info* %52, i32 0, i32 1
  %54 = load i64*, i64** %53, align 8
  %55 = icmp ne i64* %54, null
  br i1 %55, label %56, label %75

56:                                               ; preds = %47
  %57 = load %struct.TCP_Server_Info*, %struct.TCP_Server_Info** %2, align 8
  %58 = getelementptr inbounds %struct.TCP_Server_Info, %struct.TCP_Server_Info* %57, i32 0, i32 1
  %59 = load i64*, i64** %58, align 8
  %60 = getelementptr inbounds i64, i64* %59, i64 0
  %61 = load i64, i64* %60, align 8
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %75

63:                                               ; preds = %56
  %64 = load %struct.rfc1002_session_packet*, %struct.rfc1002_session_packet** %4, align 8
  %65 = getelementptr inbounds %struct.rfc1002_session_packet, %struct.rfc1002_session_packet* %64, i32 0, i32 0
  %66 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %65, i32 0, i32 0
  %67 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %66, i32 0, i32 4
  %68 = load i32, i32* %67, align 8
  %69 = load %struct.TCP_Server_Info*, %struct.TCP_Server_Info** %2, align 8
  %70 = getelementptr inbounds %struct.TCP_Server_Info, %struct.TCP_Server_Info* %69, i32 0, i32 1
  %71 = load i64*, i64** %70, align 8
  %72 = bitcast i64* %71 to i8*
  %73 = load i32, i32* @RFC1001_NAME_LEN_WITH_NULL, align 4
  %74 = call i32 @rfc1002mangle(i32 %68, i8* %72, i32 %73)
  br label %83

75:                                               ; preds = %56, %47
  %76 = load %struct.rfc1002_session_packet*, %struct.rfc1002_session_packet** %4, align 8
  %77 = getelementptr inbounds %struct.rfc1002_session_packet, %struct.rfc1002_session_packet* %76, i32 0, i32 0
  %78 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %77, i32 0, i32 0
  %79 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %78, i32 0, i32 4
  %80 = load i32, i32* %79, align 8
  %81 = load i32, i32* @RFC1001_NAME_LEN_WITH_NULL, align 4
  %82 = call i32 @rfc1002mangle(i32 %80, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), i32 %81)
  br label %83

83:                                               ; preds = %75, %63
  %84 = load %struct.rfc1002_session_packet*, %struct.rfc1002_session_packet** %4, align 8
  %85 = getelementptr inbounds %struct.rfc1002_session_packet, %struct.rfc1002_session_packet* %84, i32 0, i32 0
  %86 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %85, i32 0, i32 0
  %87 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %86, i32 0, i32 3
  store i64 0, i64* %87, align 8
  %88 = load %struct.rfc1002_session_packet*, %struct.rfc1002_session_packet** %4, align 8
  %89 = getelementptr inbounds %struct.rfc1002_session_packet, %struct.rfc1002_session_packet* %88, i32 0, i32 0
  %90 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %89, i32 0, i32 0
  %91 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %90, i32 0, i32 2
  store i64 0, i64* %91, align 8
  %92 = load %struct.rfc1002_session_packet*, %struct.rfc1002_session_packet** %4, align 8
  %93 = bitcast %struct.rfc1002_session_packet* %92 to %struct.smb_hdr*
  store %struct.smb_hdr* %93, %struct.smb_hdr** %5, align 8
  %94 = call i32 @cpu_to_be32(i32 -2130706364)
  %95 = load %struct.smb_hdr*, %struct.smb_hdr** %5, align 8
  %96 = getelementptr inbounds %struct.smb_hdr, %struct.smb_hdr* %95, i32 0, i32 0
  store i32 %94, i32* %96, align 4
  %97 = load %struct.TCP_Server_Info*, %struct.TCP_Server_Info** %2, align 8
  %98 = load %struct.smb_hdr*, %struct.smb_hdr** %5, align 8
  %99 = call i32 @smb_send(%struct.TCP_Server_Info* %97, %struct.smb_hdr* %98, i32 68)
  store i32 %99, i32* %3, align 4
  %100 = load %struct.rfc1002_session_packet*, %struct.rfc1002_session_packet** %4, align 8
  %101 = call i32 @kfree(%struct.rfc1002_session_packet* %100)
  %102 = call i32 @msleep(i32 1)
  br label %103

103:                                              ; preds = %83, %1
  %104 = load i32, i32* %3, align 4
  ret i32 %104
}

declare dso_local %struct.rfc1002_session_packet* @kzalloc(i32, i32) #1

declare dso_local i32 @rfc1002mangle(i32, i8*, i32) #1

declare dso_local i32 @cpu_to_be32(i32) #1

declare dso_local i32 @smb_send(%struct.TCP_Server_Info*, %struct.smb_hdr*, i32) #1

declare dso_local i32 @kfree(%struct.rfc1002_session_packet*) #1

declare dso_local i32 @msleep(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

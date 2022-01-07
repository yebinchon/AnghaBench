; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/cifs/extr_connect.c_server_unresponsive.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/cifs/extr_connect.c_server_unresponsive.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TCP_Server_Info = type { i64, i32, i32, i64 }

@CifsGood = common dso_local global i64 0, align 8
@jiffies = common dso_local global i32 0, align 4
@SMB_ECHO_INTERVAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [59 x i8] c"Server %s has not responded in %d seconds. Reconnecting...\00", align 1
@HZ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TCP_Server_Info*)* @server_unresponsive to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @server_unresponsive(%struct.TCP_Server_Info* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TCP_Server_Info*, align 8
  store %struct.TCP_Server_Info* %0, %struct.TCP_Server_Info** %3, align 8
  %4 = load %struct.TCP_Server_Info*, %struct.TCP_Server_Info** %3, align 8
  %5 = getelementptr inbounds %struct.TCP_Server_Info, %struct.TCP_Server_Info* %4, i32 0, i32 0
  %6 = load i64, i64* %5, align 8
  %7 = load i64, i64* @CifsGood, align 8
  %8 = icmp eq i64 %6, %7
  br i1 %8, label %9, label %34

9:                                                ; preds = %1
  %10 = load i32, i32* @jiffies, align 4
  %11 = load %struct.TCP_Server_Info*, %struct.TCP_Server_Info** %3, align 8
  %12 = getelementptr inbounds %struct.TCP_Server_Info, %struct.TCP_Server_Info* %11, i32 0, i32 3
  %13 = load i64, i64* %12, align 8
  %14 = load i32, i32* @SMB_ECHO_INTERVAL, align 4
  %15 = mul nsw i32 2, %14
  %16 = sext i32 %15 to i64
  %17 = add nsw i64 %13, %16
  %18 = call i64 @time_after(i32 %10, i64 %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %34

20:                                               ; preds = %9
  %21 = load %struct.TCP_Server_Info*, %struct.TCP_Server_Info** %3, align 8
  %22 = getelementptr inbounds %struct.TCP_Server_Info, %struct.TCP_Server_Info* %21, i32 0, i32 2
  %23 = load i32, i32* %22, align 4
  %24 = load i32, i32* @SMB_ECHO_INTERVAL, align 4
  %25 = mul nsw i32 2, %24
  %26 = load i32, i32* @HZ, align 4
  %27 = sdiv i32 %25, %26
  %28 = call i32 @cERROR(i32 1, i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str, i64 0, i64 0), i32 %23, i32 %27)
  %29 = load %struct.TCP_Server_Info*, %struct.TCP_Server_Info** %3, align 8
  %30 = call i32 @cifs_reconnect(%struct.TCP_Server_Info* %29)
  %31 = load %struct.TCP_Server_Info*, %struct.TCP_Server_Info** %3, align 8
  %32 = getelementptr inbounds %struct.TCP_Server_Info, %struct.TCP_Server_Info* %31, i32 0, i32 1
  %33 = call i32 @wake_up(i32* %32)
  store i32 1, i32* %2, align 4
  br label %35

34:                                               ; preds = %9, %1
  store i32 0, i32* %2, align 4
  br label %35

35:                                               ; preds = %34, %20
  %36 = load i32, i32* %2, align 4
  ret i32 %36
}

declare dso_local i64 @time_after(i32, i64) #1

declare dso_local i32 @cERROR(i32, i8*, i32, i32) #1

declare dso_local i32 @cifs_reconnect(%struct.TCP_Server_Info*) #1

declare dso_local i32 @wake_up(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

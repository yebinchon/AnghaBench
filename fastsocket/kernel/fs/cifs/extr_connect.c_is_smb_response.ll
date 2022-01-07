; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/cifs/extr_connect.c_is_smb_response.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/cifs/extr_connect.c_is_smb_response.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TCP_Server_Info = type { i32, i32 }
%struct.sockaddr = type { i32 }

@.str = private unnamed_addr constant [28 x i8] c"RFC 1002 session keep alive\00", align 1
@.str.1 = private unnamed_addr constant [35 x i8] c"RFC 1002 positive session response\00", align 1
@.str.2 = private unnamed_addr constant [35 x i8] c"RFC 1002 negative session response\00", align 1
@CIFS_PORT = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [36 x i8] c"RFC 1002 unknown response type 0x%x\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TCP_Server_Info*, i8)* @is_smb_response to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @is_smb_response(%struct.TCP_Server_Info* %0, i8 zeroext %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TCP_Server_Info*, align 8
  %5 = alloca i8, align 1
  store %struct.TCP_Server_Info* %0, %struct.TCP_Server_Info** %4, align 8
  store i8 %1, i8* %5, align 1
  %6 = load i8, i8* %5, align 1
  %7 = zext i8 %6 to i32
  switch i32 %7, label %26 [
    i32 128, label %8
    i32 129, label %9
    i32 130, label %11
    i32 131, label %13
  ]

8:                                                ; preds = %2
  store i32 1, i32* %3, align 4
  br label %32

9:                                                ; preds = %2
  %10 = call i32 @cFYI(i32 1, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0))
  br label %31

11:                                               ; preds = %2
  %12 = call i32 @cFYI(i32 1, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0))
  br label %31

13:                                               ; preds = %2
  %14 = call i32 @cFYI(i32 1, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.2, i64 0, i64 0))
  %15 = call i32 @msleep(i32 1000)
  %16 = load %struct.TCP_Server_Info*, %struct.TCP_Server_Info** %4, align 8
  %17 = getelementptr inbounds %struct.TCP_Server_Info, %struct.TCP_Server_Info* %16, i32 0, i32 1
  %18 = bitcast i32* %17 to %struct.sockaddr*
  %19 = load i32, i32* @CIFS_PORT, align 4
  %20 = call i32 @cifs_set_port(%struct.sockaddr* %18, i32 %19)
  %21 = load %struct.TCP_Server_Info*, %struct.TCP_Server_Info** %4, align 8
  %22 = call i32 @cifs_reconnect(%struct.TCP_Server_Info* %21)
  %23 = load %struct.TCP_Server_Info*, %struct.TCP_Server_Info** %4, align 8
  %24 = getelementptr inbounds %struct.TCP_Server_Info, %struct.TCP_Server_Info* %23, i32 0, i32 0
  %25 = call i32 @wake_up(i32* %24)
  br label %31

26:                                               ; preds = %2
  %27 = load i8, i8* %5, align 1
  %28 = call i32 @cERROR(i32 1, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.3, i64 0, i64 0), i8 zeroext %27)
  %29 = load %struct.TCP_Server_Info*, %struct.TCP_Server_Info** %4, align 8
  %30 = call i32 @cifs_reconnect(%struct.TCP_Server_Info* %29)
  br label %31

31:                                               ; preds = %26, %13, %11, %9
  store i32 0, i32* %3, align 4
  br label %32

32:                                               ; preds = %31, %8
  %33 = load i32, i32* %3, align 4
  ret i32 %33
}

declare dso_local i32 @cFYI(i32, i8*) #1

declare dso_local i32 @msleep(i32) #1

declare dso_local i32 @cifs_set_port(%struct.sockaddr*, i32) #1

declare dso_local i32 @cifs_reconnect(%struct.TCP_Server_Info*) #1

declare dso_local i32 @wake_up(i32*) #1

declare dso_local i32 @cERROR(i32, i8*, i8 zeroext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/cifs/extr_connect.c_match_server.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/cifs/extr_connect.c_match_server.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TCP_Server_Info = type { i32 }
%struct.sockaddr = type { i32 }
%struct.smb_vol = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TCP_Server_Info*, %struct.sockaddr*, %struct.smb_vol*)* @match_server to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @match_server(%struct.TCP_Server_Info* %0, %struct.sockaddr* %1, %struct.smb_vol* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TCP_Server_Info*, align 8
  %6 = alloca %struct.sockaddr*, align 8
  %7 = alloca %struct.smb_vol*, align 8
  store %struct.TCP_Server_Info* %0, %struct.TCP_Server_Info** %5, align 8
  store %struct.sockaddr* %1, %struct.sockaddr** %6, align 8
  store %struct.smb_vol* %2, %struct.smb_vol** %7, align 8
  %8 = load %struct.TCP_Server_Info*, %struct.TCP_Server_Info** %5, align 8
  %9 = load %struct.sockaddr*, %struct.sockaddr** %6, align 8
  %10 = load %struct.smb_vol*, %struct.smb_vol** %7, align 8
  %11 = getelementptr inbounds %struct.smb_vol, %struct.smb_vol* %10, i32 0, i32 0
  %12 = bitcast i32* %11 to %struct.sockaddr*
  %13 = call i32 @match_address(%struct.TCP_Server_Info* %8, %struct.sockaddr* %9, %struct.sockaddr* %12)
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %16, label %15

15:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %29

16:                                               ; preds = %3
  %17 = load %struct.TCP_Server_Info*, %struct.TCP_Server_Info** %5, align 8
  %18 = load %struct.sockaddr*, %struct.sockaddr** %6, align 8
  %19 = call i32 @match_port(%struct.TCP_Server_Info* %17, %struct.sockaddr* %18)
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %22, label %21

21:                                               ; preds = %16
  store i32 0, i32* %4, align 4
  br label %29

22:                                               ; preds = %16
  %23 = load %struct.TCP_Server_Info*, %struct.TCP_Server_Info** %5, align 8
  %24 = load %struct.smb_vol*, %struct.smb_vol** %7, align 8
  %25 = call i32 @match_security(%struct.TCP_Server_Info* %23, %struct.smb_vol* %24)
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %28, label %27

27:                                               ; preds = %22
  store i32 0, i32* %4, align 4
  br label %29

28:                                               ; preds = %22
  store i32 1, i32* %4, align 4
  br label %29

29:                                               ; preds = %28, %27, %21, %15
  %30 = load i32, i32* %4, align 4
  ret i32 %30
}

declare dso_local i32 @match_address(%struct.TCP_Server_Info*, %struct.sockaddr*, %struct.sockaddr*) #1

declare dso_local i32 @match_port(%struct.TCP_Server_Info*, %struct.sockaddr*) #1

declare dso_local i32 @match_security(%struct.TCP_Server_Info*, %struct.smb_vol*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

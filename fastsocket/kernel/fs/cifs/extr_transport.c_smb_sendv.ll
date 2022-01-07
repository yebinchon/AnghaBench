; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/cifs/extr_transport.c_smb_sendv.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/cifs/extr_transport.c_smb_sendv.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TCP_Server_Info = type { i32 }
%struct.kvec = type { i32 }
%struct.smb_rqst = type { i32, %struct.kvec* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TCP_Server_Info*, %struct.kvec*, i32)* @smb_sendv to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @smb_sendv(%struct.TCP_Server_Info* %0, %struct.kvec* %1, i32 %2) #0 {
  %4 = alloca %struct.TCP_Server_Info*, align 8
  %5 = alloca %struct.kvec*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.smb_rqst, align 8
  store %struct.TCP_Server_Info* %0, %struct.TCP_Server_Info** %4, align 8
  store %struct.kvec* %1, %struct.kvec** %5, align 8
  store i32 %2, i32* %6, align 4
  %8 = getelementptr inbounds %struct.smb_rqst, %struct.smb_rqst* %7, i32 0, i32 0
  %9 = load i32, i32* %6, align 4
  store i32 %9, i32* %8, align 8
  %10 = getelementptr inbounds %struct.smb_rqst, %struct.smb_rqst* %7, i32 0, i32 1
  %11 = load %struct.kvec*, %struct.kvec** %5, align 8
  store %struct.kvec* %11, %struct.kvec** %10, align 8
  %12 = load %struct.TCP_Server_Info*, %struct.TCP_Server_Info** %4, align 8
  %13 = call i32 @smb_send_rqst(%struct.TCP_Server_Info* %12, %struct.smb_rqst* %7)
  ret i32 %13
}

declare dso_local i32 @smb_send_rqst(%struct.TCP_Server_Info*, %struct.smb_rqst*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

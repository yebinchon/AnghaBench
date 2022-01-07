; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/smbfs/extr_sock.c_smb_data_ready.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/smbfs/extr_sock.c_smb_data_ready.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sock = type { i32 }
%struct.smb_sb_info = type { void (%struct.sock*, i32)* }

@.str = private unnamed_addr constant [10 x i8] c"(%p, %d)\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @smb_data_ready(%struct.sock* %0, i32 %1) #0 {
  %3 = alloca %struct.sock*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.smb_sb_info*, align 8
  %6 = alloca void (%struct.sock*, i32)*, align 8
  store %struct.sock* %0, %struct.sock** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.sock*, %struct.sock** %3, align 8
  %8 = getelementptr inbounds %struct.sock, %struct.sock* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = call %struct.smb_sb_info* @server_from_socket(i32 %9)
  store %struct.smb_sb_info* %10, %struct.smb_sb_info** %5, align 8
  %11 = load %struct.smb_sb_info*, %struct.smb_sb_info** %5, align 8
  %12 = getelementptr inbounds %struct.smb_sb_info, %struct.smb_sb_info* %11, i32 0, i32 0
  %13 = load void (%struct.sock*, i32)*, void (%struct.sock*, i32)** %12, align 8
  store void (%struct.sock*, i32)* %13, void (%struct.sock*, i32)** %6, align 8
  %14 = load void (%struct.sock*, i32)*, void (%struct.sock*, i32)** %6, align 8
  %15 = load %struct.sock*, %struct.sock** %3, align 8
  %16 = load i32, i32* %4, align 4
  call void %14(%struct.sock* %15, i32 %16)
  %17 = load %struct.sock*, %struct.sock** %3, align 8
  %18 = load i32, i32* %4, align 4
  %19 = call i32 @VERBOSE(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), %struct.sock* %17, i32 %18)
  %20 = call i32 (...) @smbiod_wake_up()
  ret void
}

declare dso_local %struct.smb_sb_info* @server_from_socket(i32) #1

declare dso_local i32 @VERBOSE(i8*, %struct.sock*, i32) #1

declare dso_local i32 @smbiod_wake_up(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

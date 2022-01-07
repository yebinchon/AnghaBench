; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/smbfs/extr_sock.c_smb_recv_available.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/smbfs/extr_sock.c_smb_recv_available.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.smb_sb_info = type { i32 }
%struct.socket = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 (%struct.socket*, i32, i64)* }

@SIOCINQ = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @smb_recv_available(%struct.smb_sb_info* %0) #0 {
  %2 = alloca %struct.smb_sb_info*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.socket*, align 8
  store %struct.smb_sb_info* %0, %struct.smb_sb_info** %2, align 8
  %7 = load %struct.smb_sb_info*, %struct.smb_sb_info** %2, align 8
  %8 = call %struct.socket* @server_sock(%struct.smb_sb_info* %7)
  store %struct.socket* %8, %struct.socket** %6, align 8
  %9 = call i32 (...) @get_fs()
  store i32 %9, i32* %3, align 4
  %10 = call i32 (...) @get_ds()
  %11 = call i32 @set_fs(i32 %10)
  %12 = load %struct.socket*, %struct.socket** %6, align 8
  %13 = getelementptr inbounds %struct.socket, %struct.socket* %12, i32 0, i32 0
  %14 = load %struct.TYPE_2__*, %struct.TYPE_2__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  %16 = load i32 (%struct.socket*, i32, i64)*, i32 (%struct.socket*, i32, i64)** %15, align 8
  %17 = load %struct.socket*, %struct.socket** %6, align 8
  %18 = load i32, i32* @SIOCINQ, align 4
  %19 = ptrtoint i32* %4 to i64
  %20 = call i32 %16(%struct.socket* %17, i32 %18, i64 %19)
  store i32 %20, i32* %5, align 4
  %21 = load i32, i32* %3, align 4
  %22 = call i32 @set_fs(i32 %21)
  %23 = load i32, i32* %5, align 4
  %24 = icmp sge i32 %23, 0
  br i1 %24, label %25, label %27

25:                                               ; preds = %1
  %26 = load i32, i32* %4, align 4
  br label %29

27:                                               ; preds = %1
  %28 = load i32, i32* %5, align 4
  br label %29

29:                                               ; preds = %27, %25
  %30 = phi i32 [ %26, %25 ], [ %28, %27 ]
  ret i32 %30
}

declare dso_local %struct.socket* @server_sock(%struct.smb_sb_info*) #1

declare dso_local i32 @get_fs(...) #1

declare dso_local i32 @set_fs(i32) #1

declare dso_local i32 @get_ds(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

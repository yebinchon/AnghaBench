; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/smbfs/extr_sock.c_smb_close_socket.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/smbfs/extr_sock.c_smb_close_socket.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.smb_sb_info = type { %struct.file*, i32 }
%struct.file = type { i32 }
%struct.socket = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@.str = private unnamed_addr constant [19 x i8] c"closing socket %p\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @smb_close_socket(%struct.smb_sb_info* %0) #0 {
  %2 = alloca %struct.smb_sb_info*, align 8
  %3 = alloca %struct.file*, align 8
  %4 = alloca %struct.socket*, align 8
  store %struct.smb_sb_info* %0, %struct.smb_sb_info** %2, align 8
  %5 = load %struct.smb_sb_info*, %struct.smb_sb_info** %2, align 8
  %6 = getelementptr inbounds %struct.smb_sb_info, %struct.smb_sb_info* %5, i32 0, i32 0
  %7 = load %struct.file*, %struct.file** %6, align 8
  store %struct.file* %7, %struct.file** %3, align 8
  %8 = load %struct.file*, %struct.file** %3, align 8
  %9 = icmp ne %struct.file* %8, null
  br i1 %9, label %10, label %26

10:                                               ; preds = %1
  %11 = load %struct.smb_sb_info*, %struct.smb_sb_info** %2, align 8
  %12 = call %struct.socket* @server_sock(%struct.smb_sb_info* %11)
  store %struct.socket* %12, %struct.socket** %4, align 8
  %13 = load %struct.socket*, %struct.socket** %4, align 8
  %14 = call i32 @VERBOSE(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), %struct.socket* %13)
  %15 = load %struct.smb_sb_info*, %struct.smb_sb_info** %2, align 8
  %16 = getelementptr inbounds %struct.smb_sb_info, %struct.smb_sb_info* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 8
  %18 = load %struct.socket*, %struct.socket** %4, align 8
  %19 = getelementptr inbounds %struct.socket, %struct.socket* %18, i32 0, i32 0
  %20 = load %struct.TYPE_2__*, %struct.TYPE_2__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 0
  store i32 %17, i32* %21, align 4
  %22 = load %struct.smb_sb_info*, %struct.smb_sb_info** %2, align 8
  %23 = getelementptr inbounds %struct.smb_sb_info, %struct.smb_sb_info* %22, i32 0, i32 0
  store %struct.file* null, %struct.file** %23, align 8
  %24 = load %struct.file*, %struct.file** %3, align 8
  %25 = call i32 @fput(%struct.file* %24)
  br label %26

26:                                               ; preds = %10, %1
  ret void
}

declare dso_local %struct.socket* @server_sock(%struct.smb_sb_info*) #1

declare dso_local i32 @VERBOSE(i8*, %struct.socket*) #1

declare dso_local i32 @fput(%struct.file*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

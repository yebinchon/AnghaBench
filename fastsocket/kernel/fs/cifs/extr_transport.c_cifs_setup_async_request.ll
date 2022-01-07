; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/cifs/extr_transport.c_cifs_setup_async_request.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/cifs/extr_transport.c_cifs_setup_async_request.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mid_q_entry = type { i32 }
%struct.TCP_Server_Info = type { i32 }
%struct.smb_rqst = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64 }
%struct.smb_hdr = type { i32 }

@SECMODE_SIGN_REQUIRED = common dso_local global i32 0, align 4
@SECMODE_SIGN_ENABLED = common dso_local global i32 0, align 4
@SMBFLG2_SECURITY_SIGNATURE = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.mid_q_entry* @cifs_setup_async_request(%struct.TCP_Server_Info* %0, %struct.smb_rqst* %1) #0 {
  %3 = alloca %struct.mid_q_entry*, align 8
  %4 = alloca %struct.TCP_Server_Info*, align 8
  %5 = alloca %struct.smb_rqst*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.smb_hdr*, align 8
  %8 = alloca %struct.mid_q_entry*, align 8
  store %struct.TCP_Server_Info* %0, %struct.TCP_Server_Info** %4, align 8
  store %struct.smb_rqst* %1, %struct.smb_rqst** %5, align 8
  %9 = load %struct.smb_rqst*, %struct.smb_rqst** %5, align 8
  %10 = getelementptr inbounds %struct.smb_rqst, %struct.smb_rqst* %9, i32 0, i32 0
  %11 = load %struct.TYPE_2__*, %struct.TYPE_2__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i64 0
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = inttoptr i64 %14 to %struct.smb_hdr*
  store %struct.smb_hdr* %15, %struct.smb_hdr** %7, align 8
  %16 = load %struct.TCP_Server_Info*, %struct.TCP_Server_Info** %4, align 8
  %17 = getelementptr inbounds %struct.TCP_Server_Info, %struct.TCP_Server_Info* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = load i32, i32* @SECMODE_SIGN_REQUIRED, align 4
  %20 = load i32, i32* @SECMODE_SIGN_ENABLED, align 4
  %21 = or i32 %19, %20
  %22 = and i32 %18, %21
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %30

24:                                               ; preds = %2
  %25 = load i32, i32* @SMBFLG2_SECURITY_SIGNATURE, align 4
  %26 = load %struct.smb_hdr*, %struct.smb_hdr** %7, align 8
  %27 = getelementptr inbounds %struct.smb_hdr, %struct.smb_hdr* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = or i32 %28, %25
  store i32 %29, i32* %27, align 4
  br label %30

30:                                               ; preds = %24, %2
  %31 = load %struct.smb_hdr*, %struct.smb_hdr** %7, align 8
  %32 = load %struct.TCP_Server_Info*, %struct.TCP_Server_Info** %4, align 8
  %33 = call %struct.mid_q_entry* @AllocMidQEntry(%struct.smb_hdr* %31, %struct.TCP_Server_Info* %32)
  store %struct.mid_q_entry* %33, %struct.mid_q_entry** %8, align 8
  %34 = load %struct.mid_q_entry*, %struct.mid_q_entry** %8, align 8
  %35 = icmp eq %struct.mid_q_entry* %34, null
  br i1 %35, label %36, label %40

36:                                               ; preds = %30
  %37 = load i32, i32* @ENOMEM, align 4
  %38 = sub nsw i32 0, %37
  %39 = call %struct.mid_q_entry* @ERR_PTR(i32 %38)
  store %struct.mid_q_entry* %39, %struct.mid_q_entry** %3, align 8
  br label %55

40:                                               ; preds = %30
  %41 = load %struct.smb_rqst*, %struct.smb_rqst** %5, align 8
  %42 = load %struct.TCP_Server_Info*, %struct.TCP_Server_Info** %4, align 8
  %43 = load %struct.mid_q_entry*, %struct.mid_q_entry** %8, align 8
  %44 = getelementptr inbounds %struct.mid_q_entry, %struct.mid_q_entry* %43, i32 0, i32 0
  %45 = call i32 @cifs_sign_rqst(%struct.smb_rqst* %41, %struct.TCP_Server_Info* %42, i32* %44)
  store i32 %45, i32* %6, align 4
  %46 = load i32, i32* %6, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %53

48:                                               ; preds = %40
  %49 = load %struct.mid_q_entry*, %struct.mid_q_entry** %8, align 8
  %50 = call i32 @DeleteMidQEntry(%struct.mid_q_entry* %49)
  %51 = load i32, i32* %6, align 4
  %52 = call %struct.mid_q_entry* @ERR_PTR(i32 %51)
  store %struct.mid_q_entry* %52, %struct.mid_q_entry** %3, align 8
  br label %55

53:                                               ; preds = %40
  %54 = load %struct.mid_q_entry*, %struct.mid_q_entry** %8, align 8
  store %struct.mid_q_entry* %54, %struct.mid_q_entry** %3, align 8
  br label %55

55:                                               ; preds = %53, %48, %36
  %56 = load %struct.mid_q_entry*, %struct.mid_q_entry** %3, align 8
  ret %struct.mid_q_entry* %56
}

declare dso_local %struct.mid_q_entry* @AllocMidQEntry(%struct.smb_hdr*, %struct.TCP_Server_Info*) #1

declare dso_local %struct.mid_q_entry* @ERR_PTR(i32) #1

declare dso_local i32 @cifs_sign_rqst(%struct.smb_rqst*, %struct.TCP_Server_Info*, i32*) #1

declare dso_local i32 @DeleteMidQEntry(%struct.mid_q_entry*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

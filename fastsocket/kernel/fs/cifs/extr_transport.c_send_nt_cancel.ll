; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/cifs/extr_transport.c_send_nt_cancel.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/cifs/extr_transport.c_send_nt_cancel.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TCP_Server_Info = type { i32, i32 }
%struct.smb_hdr = type { i32, i32, i64, i32 }
%struct.mid_q_entry = type { i32 }

@SMB_COM_NT_CANCEL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [37 x i8] c"issued NT_CANCEL for mid %u, rc = %d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TCP_Server_Info*, %struct.smb_hdr*, %struct.mid_q_entry*)* @send_nt_cancel to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @send_nt_cancel(%struct.TCP_Server_Info* %0, %struct.smb_hdr* %1, %struct.mid_q_entry* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TCP_Server_Info*, align 8
  %6 = alloca %struct.smb_hdr*, align 8
  %7 = alloca %struct.mid_q_entry*, align 8
  %8 = alloca i32, align 4
  store %struct.TCP_Server_Info* %0, %struct.TCP_Server_Info** %5, align 8
  store %struct.smb_hdr* %1, %struct.smb_hdr** %6, align 8
  store %struct.mid_q_entry* %2, %struct.mid_q_entry** %7, align 8
  store i32 0, i32* %8, align 4
  %9 = call i32 @cpu_to_be32(i32 22)
  %10 = load %struct.smb_hdr*, %struct.smb_hdr** %6, align 8
  %11 = getelementptr inbounds %struct.smb_hdr, %struct.smb_hdr* %10, i32 0, i32 1
  store i32 %9, i32* %11, align 4
  %12 = load i32, i32* @SMB_COM_NT_CANCEL, align 4
  %13 = load %struct.smb_hdr*, %struct.smb_hdr** %6, align 8
  %14 = getelementptr inbounds %struct.smb_hdr, %struct.smb_hdr* %13, i32 0, i32 3
  store i32 %12, i32* %14, align 8
  %15 = load %struct.smb_hdr*, %struct.smb_hdr** %6, align 8
  %16 = getelementptr inbounds %struct.smb_hdr, %struct.smb_hdr* %15, i32 0, i32 2
  store i64 0, i64* %16, align 8
  %17 = load %struct.smb_hdr*, %struct.smb_hdr** %6, align 8
  %18 = call i32 @put_bcc(i32 0, %struct.smb_hdr* %17)
  %19 = load %struct.TCP_Server_Info*, %struct.TCP_Server_Info** %5, align 8
  %20 = getelementptr inbounds %struct.TCP_Server_Info, %struct.TCP_Server_Info* %19, i32 0, i32 0
  %21 = call i32 @mutex_lock(i32* %20)
  %22 = load %struct.smb_hdr*, %struct.smb_hdr** %6, align 8
  %23 = load %struct.TCP_Server_Info*, %struct.TCP_Server_Info** %5, align 8
  %24 = load %struct.mid_q_entry*, %struct.mid_q_entry** %7, align 8
  %25 = getelementptr inbounds %struct.mid_q_entry, %struct.mid_q_entry* %24, i32 0, i32 0
  %26 = call i32 @cifs_sign_smb(%struct.smb_hdr* %22, %struct.TCP_Server_Info* %23, i32* %25)
  store i32 %26, i32* %8, align 4
  %27 = load i32, i32* %8, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %34

29:                                               ; preds = %3
  %30 = load %struct.TCP_Server_Info*, %struct.TCP_Server_Info** %5, align 8
  %31 = getelementptr inbounds %struct.TCP_Server_Info, %struct.TCP_Server_Info* %30, i32 0, i32 0
  %32 = call i32 @mutex_unlock(i32* %31)
  %33 = load i32, i32* %8, align 4
  store i32 %33, i32* %4, align 4
  br label %63

34:                                               ; preds = %3
  %35 = load %struct.TCP_Server_Info*, %struct.TCP_Server_Info** %5, align 8
  %36 = getelementptr inbounds %struct.TCP_Server_Info, %struct.TCP_Server_Info* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = add nsw i32 %37, -1
  store i32 %38, i32* %36, align 4
  %39 = load %struct.TCP_Server_Info*, %struct.TCP_Server_Info** %5, align 8
  %40 = load %struct.smb_hdr*, %struct.smb_hdr** %6, align 8
  %41 = load %struct.smb_hdr*, %struct.smb_hdr** %6, align 8
  %42 = getelementptr inbounds %struct.smb_hdr, %struct.smb_hdr* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  %44 = call i32 @be32_to_cpu(i32 %43)
  %45 = call i32 @smb_send(%struct.TCP_Server_Info* %39, %struct.smb_hdr* %40, i32 %44)
  store i32 %45, i32* %8, align 4
  %46 = load i32, i32* %8, align 4
  %47 = icmp slt i32 %46, 0
  br i1 %47, label %48, label %53

48:                                               ; preds = %34
  %49 = load %struct.TCP_Server_Info*, %struct.TCP_Server_Info** %5, align 8
  %50 = getelementptr inbounds %struct.TCP_Server_Info, %struct.TCP_Server_Info* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 4
  %52 = add nsw i32 %51, -1
  store i32 %52, i32* %50, align 4
  br label %53

53:                                               ; preds = %48, %34
  %54 = load %struct.TCP_Server_Info*, %struct.TCP_Server_Info** %5, align 8
  %55 = getelementptr inbounds %struct.TCP_Server_Info, %struct.TCP_Server_Info* %54, i32 0, i32 0
  %56 = call i32 @mutex_unlock(i32* %55)
  %57 = load %struct.smb_hdr*, %struct.smb_hdr** %6, align 8
  %58 = getelementptr inbounds %struct.smb_hdr, %struct.smb_hdr* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 8
  %60 = load i32, i32* %8, align 4
  %61 = call i32 @cFYI(i32 1, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0), i32 %59, i32 %60)
  %62 = load i32, i32* %8, align 4
  store i32 %62, i32* %4, align 4
  br label %63

63:                                               ; preds = %53, %29
  %64 = load i32, i32* %4, align 4
  ret i32 %64
}

declare dso_local i32 @cpu_to_be32(i32) #1

declare dso_local i32 @put_bcc(i32, %struct.smb_hdr*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @cifs_sign_smb(%struct.smb_hdr*, %struct.TCP_Server_Info*, i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @smb_send(%struct.TCP_Server_Info*, %struct.smb_hdr*, i32) #1

declare dso_local i32 @be32_to_cpu(i32) #1

declare dso_local i32 @cFYI(i32, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/cifs/extr_transport.c_AllocMidQEntry.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/cifs/extr_transport.c_AllocMidQEntry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }
%struct.mid_q_entry = type { i32, %struct.TYPE_2__*, i32, i32, i32, i32, i32 }
%struct.smb_hdr = type { i32, i32 }
%struct.TCP_Server_Info = type { i32 }

@.str = private unnamed_addr constant [35 x i8] c"Null TCP session in AllocMidQEntry\00", align 1
@cifs_mid_poolp = common dso_local global i32 0, align 4
@GFP_NOFS = common dso_local global i32 0, align 4
@current = common dso_local global %struct.TYPE_2__* null, align 8
@.str.1 = private unnamed_addr constant [19 x i8] c"For smb_command %d\00", align 1
@jiffies = common dso_local global i32 0, align 4
@wake_up_task = common dso_local global i32 0, align 4
@midCount = common dso_local global i32 0, align 4
@MID_REQUEST_ALLOCATED = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.mid_q_entry* @AllocMidQEntry(%struct.smb_hdr* %0, %struct.TCP_Server_Info* %1) #0 {
  %3 = alloca %struct.mid_q_entry*, align 8
  %4 = alloca %struct.smb_hdr*, align 8
  %5 = alloca %struct.TCP_Server_Info*, align 8
  %6 = alloca %struct.mid_q_entry*, align 8
  store %struct.smb_hdr* %0, %struct.smb_hdr** %4, align 8
  store %struct.TCP_Server_Info* %1, %struct.TCP_Server_Info** %5, align 8
  %7 = load %struct.TCP_Server_Info*, %struct.TCP_Server_Info** %5, align 8
  %8 = icmp eq %struct.TCP_Server_Info* %7, null
  br i1 %8, label %9, label %11

9:                                                ; preds = %2
  %10 = call i32 @cERROR(i32 1, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0))
  store %struct.mid_q_entry* null, %struct.mid_q_entry** %3, align 8
  br label %57

11:                                               ; preds = %2
  %12 = load i32, i32* @cifs_mid_poolp, align 4
  %13 = load i32, i32* @GFP_NOFS, align 4
  %14 = call %struct.mid_q_entry* @mempool_alloc(i32 %12, i32 %13)
  store %struct.mid_q_entry* %14, %struct.mid_q_entry** %6, align 8
  %15 = load %struct.mid_q_entry*, %struct.mid_q_entry** %6, align 8
  %16 = icmp eq %struct.mid_q_entry* %15, null
  br i1 %16, label %17, label %19

17:                                               ; preds = %11
  %18 = load %struct.mid_q_entry*, %struct.mid_q_entry** %6, align 8
  store %struct.mid_q_entry* %18, %struct.mid_q_entry** %3, align 8
  br label %57

19:                                               ; preds = %11
  %20 = load %struct.mid_q_entry*, %struct.mid_q_entry** %6, align 8
  %21 = call i32 @memset(%struct.mid_q_entry* %20, i32 0, i32 40)
  %22 = load %struct.smb_hdr*, %struct.smb_hdr** %4, align 8
  %23 = getelementptr inbounds %struct.smb_hdr, %struct.smb_hdr* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = load %struct.mid_q_entry*, %struct.mid_q_entry** %6, align 8
  %26 = getelementptr inbounds %struct.mid_q_entry, %struct.mid_q_entry* %25, i32 0, i32 6
  store i32 %24, i32* %26, align 8
  %27 = load %struct.TYPE_2__*, %struct.TYPE_2__** @current, align 8
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = load %struct.mid_q_entry*, %struct.mid_q_entry** %6, align 8
  %31 = getelementptr inbounds %struct.mid_q_entry, %struct.mid_q_entry* %30, i32 0, i32 5
  store i32 %29, i32* %31, align 4
  %32 = load %struct.smb_hdr*, %struct.smb_hdr** %4, align 8
  %33 = getelementptr inbounds %struct.smb_hdr, %struct.smb_hdr* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = call i32 @cpu_to_le16(i32 %34)
  %36 = load %struct.mid_q_entry*, %struct.mid_q_entry** %6, align 8
  %37 = getelementptr inbounds %struct.mid_q_entry, %struct.mid_q_entry* %36, i32 0, i32 4
  store i32 %35, i32* %37, align 8
  %38 = load %struct.smb_hdr*, %struct.smb_hdr** %4, align 8
  %39 = getelementptr inbounds %struct.smb_hdr, %struct.smb_hdr* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = call i32 @cFYI(i32 1, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0), i32 %40)
  %42 = load i32, i32* @jiffies, align 4
  %43 = load %struct.mid_q_entry*, %struct.mid_q_entry** %6, align 8
  %44 = getelementptr inbounds %struct.mid_q_entry, %struct.mid_q_entry* %43, i32 0, i32 3
  store i32 %42, i32* %44, align 4
  %45 = load i32, i32* @wake_up_task, align 4
  %46 = load %struct.mid_q_entry*, %struct.mid_q_entry** %6, align 8
  %47 = getelementptr inbounds %struct.mid_q_entry, %struct.mid_q_entry* %46, i32 0, i32 2
  store i32 %45, i32* %47, align 8
  %48 = load %struct.TYPE_2__*, %struct.TYPE_2__** @current, align 8
  %49 = load %struct.mid_q_entry*, %struct.mid_q_entry** %6, align 8
  %50 = getelementptr inbounds %struct.mid_q_entry, %struct.mid_q_entry* %49, i32 0, i32 1
  store %struct.TYPE_2__* %48, %struct.TYPE_2__** %50, align 8
  br label %51

51:                                               ; preds = %19
  %52 = call i32 @atomic_inc(i32* @midCount)
  %53 = load i32, i32* @MID_REQUEST_ALLOCATED, align 4
  %54 = load %struct.mid_q_entry*, %struct.mid_q_entry** %6, align 8
  %55 = getelementptr inbounds %struct.mid_q_entry, %struct.mid_q_entry* %54, i32 0, i32 0
  store i32 %53, i32* %55, align 8
  %56 = load %struct.mid_q_entry*, %struct.mid_q_entry** %6, align 8
  store %struct.mid_q_entry* %56, %struct.mid_q_entry** %3, align 8
  br label %57

57:                                               ; preds = %51, %17, %9
  %58 = load %struct.mid_q_entry*, %struct.mid_q_entry** %3, align 8
  ret %struct.mid_q_entry* %58
}

declare dso_local i32 @cERROR(i32, i8*) #1

declare dso_local %struct.mid_q_entry* @mempool_alloc(i32, i32) #1

declare dso_local i32 @memset(%struct.mid_q_entry*, i32, i32) #1

declare dso_local i32 @cpu_to_le16(i32) #1

declare dso_local i32 @cFYI(i32, i8*, i32) #1

declare dso_local i32 @atomic_inc(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

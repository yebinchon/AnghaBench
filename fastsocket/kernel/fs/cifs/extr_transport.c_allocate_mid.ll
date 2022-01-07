; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/cifs/extr_transport.c_allocate_mid.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/cifs/extr_transport.c_allocate_mid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cifs_ses = type { i64, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64, i32 }
%struct.smb_hdr = type { i64 }
%struct.mid_q_entry = type { i32 }

@CifsExiting = common dso_local global i64 0, align 8
@ENOENT = common dso_local global i32 0, align 4
@CifsNeedReconnect = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [45 x i8] c"tcp session dead - return to caller to retry\00", align 1
@EAGAIN = common dso_local global i32 0, align 4
@CifsGood = common dso_local global i64 0, align 8
@SMB_COM_SESSION_SETUP_ANDX = common dso_local global i64 0, align 8
@SMB_COM_NEGOTIATE = common dso_local global i64 0, align 8
@ENOMEM = common dso_local global i32 0, align 4
@GlobalMid_Lock = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cifs_ses*, %struct.smb_hdr*, %struct.mid_q_entry**)* @allocate_mid to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @allocate_mid(%struct.cifs_ses* %0, %struct.smb_hdr* %1, %struct.mid_q_entry** %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.cifs_ses*, align 8
  %6 = alloca %struct.smb_hdr*, align 8
  %7 = alloca %struct.mid_q_entry**, align 8
  store %struct.cifs_ses* %0, %struct.cifs_ses** %5, align 8
  store %struct.smb_hdr* %1, %struct.smb_hdr** %6, align 8
  store %struct.mid_q_entry** %2, %struct.mid_q_entry*** %7, align 8
  %8 = load %struct.cifs_ses*, %struct.cifs_ses** %5, align 8
  %9 = getelementptr inbounds %struct.cifs_ses, %struct.cifs_ses* %8, i32 0, i32 1
  %10 = load %struct.TYPE_2__*, %struct.TYPE_2__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = load i64, i64* @CifsExiting, align 8
  %14 = icmp eq i64 %12, %13
  br i1 %14, label %15, label %18

15:                                               ; preds = %3
  %16 = load i32, i32* @ENOENT, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %4, align 4
  br label %76

18:                                               ; preds = %3
  %19 = load %struct.cifs_ses*, %struct.cifs_ses** %5, align 8
  %20 = getelementptr inbounds %struct.cifs_ses, %struct.cifs_ses* %19, i32 0, i32 1
  %21 = load %struct.TYPE_2__*, %struct.TYPE_2__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = load i64, i64* @CifsNeedReconnect, align 8
  %25 = icmp eq i64 %23, %24
  br i1 %25, label %26, label %30

26:                                               ; preds = %18
  %27 = call i32 @cFYI(i32 1, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str, i64 0, i64 0))
  %28 = load i32, i32* @EAGAIN, align 4
  %29 = sub nsw i32 0, %28
  store i32 %29, i32* %4, align 4
  br label %76

30:                                               ; preds = %18
  %31 = load %struct.cifs_ses*, %struct.cifs_ses** %5, align 8
  %32 = getelementptr inbounds %struct.cifs_ses, %struct.cifs_ses* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = load i64, i64* @CifsGood, align 8
  %35 = icmp ne i64 %33, %34
  br i1 %35, label %36, label %52

36:                                               ; preds = %30
  %37 = load %struct.smb_hdr*, %struct.smb_hdr** %6, align 8
  %38 = getelementptr inbounds %struct.smb_hdr, %struct.smb_hdr* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = load i64, i64* @SMB_COM_SESSION_SETUP_ANDX, align 8
  %41 = icmp ne i64 %39, %40
  br i1 %41, label %42, label %51

42:                                               ; preds = %36
  %43 = load %struct.smb_hdr*, %struct.smb_hdr** %6, align 8
  %44 = getelementptr inbounds %struct.smb_hdr, %struct.smb_hdr* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = load i64, i64* @SMB_COM_NEGOTIATE, align 8
  %47 = icmp ne i64 %45, %46
  br i1 %47, label %48, label %51

48:                                               ; preds = %42
  %49 = load i32, i32* @EAGAIN, align 4
  %50 = sub nsw i32 0, %49
  store i32 %50, i32* %4, align 4
  br label %76

51:                                               ; preds = %42, %36
  br label %52

52:                                               ; preds = %51, %30
  %53 = load %struct.smb_hdr*, %struct.smb_hdr** %6, align 8
  %54 = load %struct.cifs_ses*, %struct.cifs_ses** %5, align 8
  %55 = getelementptr inbounds %struct.cifs_ses, %struct.cifs_ses* %54, i32 0, i32 1
  %56 = load %struct.TYPE_2__*, %struct.TYPE_2__** %55, align 8
  %57 = call %struct.mid_q_entry* @AllocMidQEntry(%struct.smb_hdr* %53, %struct.TYPE_2__* %56)
  %58 = load %struct.mid_q_entry**, %struct.mid_q_entry*** %7, align 8
  store %struct.mid_q_entry* %57, %struct.mid_q_entry** %58, align 8
  %59 = load %struct.mid_q_entry**, %struct.mid_q_entry*** %7, align 8
  %60 = load %struct.mid_q_entry*, %struct.mid_q_entry** %59, align 8
  %61 = icmp eq %struct.mid_q_entry* %60, null
  br i1 %61, label %62, label %65

62:                                               ; preds = %52
  %63 = load i32, i32* @ENOMEM, align 4
  %64 = sub nsw i32 0, %63
  store i32 %64, i32* %4, align 4
  br label %76

65:                                               ; preds = %52
  %66 = call i32 @spin_lock(i32* @GlobalMid_Lock)
  %67 = load %struct.mid_q_entry**, %struct.mid_q_entry*** %7, align 8
  %68 = load %struct.mid_q_entry*, %struct.mid_q_entry** %67, align 8
  %69 = getelementptr inbounds %struct.mid_q_entry, %struct.mid_q_entry* %68, i32 0, i32 0
  %70 = load %struct.cifs_ses*, %struct.cifs_ses** %5, align 8
  %71 = getelementptr inbounds %struct.cifs_ses, %struct.cifs_ses* %70, i32 0, i32 1
  %72 = load %struct.TYPE_2__*, %struct.TYPE_2__** %71, align 8
  %73 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %72, i32 0, i32 1
  %74 = call i32 @list_add_tail(i32* %69, i32* %73)
  %75 = call i32 @spin_unlock(i32* @GlobalMid_Lock)
  store i32 0, i32* %4, align 4
  br label %76

76:                                               ; preds = %65, %62, %48, %26, %15
  %77 = load i32, i32* %4, align 4
  ret i32 %77
}

declare dso_local i32 @cFYI(i32, i8*) #1

declare dso_local %struct.mid_q_entry* @AllocMidQEntry(%struct.smb_hdr*, %struct.TYPE_2__*) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

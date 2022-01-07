; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/smbfs/extr_smbiod.c_smbiod_handle_request.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/smbfs/extr_smbiod.c_smbiod_handle_request.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.smb_sb_info = type { i32 }

@.str = private unnamed_addr constant [58 x i8] c"smbiod got a request ... and we don't implement oplocks!\0A\00", align 1
@SMB_RECV_DROP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.smb_sb_info*)* @smbiod_handle_request to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @smbiod_handle_request(%struct.smb_sb_info* %0) #0 {
  %2 = alloca %struct.smb_sb_info*, align 8
  store %struct.smb_sb_info* %0, %struct.smb_sb_info** %2, align 8
  %3 = call i32 @PARANOIA(i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str, i64 0, i64 0))
  %4 = load i32, i32* @SMB_RECV_DROP, align 4
  %5 = load %struct.smb_sb_info*, %struct.smb_sb_info** %2, align 8
  %6 = getelementptr inbounds %struct.smb_sb_info, %struct.smb_sb_info* %5, i32 0, i32 0
  store i32 %4, i32* %6, align 4
  ret void
}

declare dso_local i32 @PARANOIA(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

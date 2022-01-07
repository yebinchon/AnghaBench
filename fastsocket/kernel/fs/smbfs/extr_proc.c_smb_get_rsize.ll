; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/smbfs/extr_proc.c_smb_get_rsize.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/smbfs/extr_proc.c_smb_get_rsize.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.smb_sb_info = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@SMB_HEADER_LEN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [18 x i8] c"xmit=%d, size=%d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @smb_get_rsize(%struct.smb_sb_info* %0) #0 {
  %2 = alloca %struct.smb_sb_info*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store %struct.smb_sb_info* %0, %struct.smb_sb_info** %2, align 8
  %5 = load i32, i32* @SMB_HEADER_LEN, align 4
  %6 = sext i32 %5 to i64
  %7 = add i64 %6, 48
  %8 = add i64 %7, 2
  %9 = add i64 %8, 1
  %10 = add i64 %9, 2
  %11 = trunc i64 %10 to i32
  store i32 %11, i32* %3, align 4
  %12 = load %struct.smb_sb_info*, %struct.smb_sb_info** %2, align 8
  %13 = load i32, i32* %3, align 4
  %14 = call i32 @smb_get_xmitsize(%struct.smb_sb_info* %12, i32 %13)
  store i32 %14, i32* %4, align 4
  %15 = load %struct.smb_sb_info*, %struct.smb_sb_info** %2, align 8
  %16 = getelementptr inbounds %struct.smb_sb_info, %struct.smb_sb_info* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = load i32, i32* %4, align 4
  %20 = call i32 @VERBOSE(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0), i32 %18, i32 %19)
  %21 = load i32, i32* %4, align 4
  ret i32 %21
}

declare dso_local i32 @smb_get_xmitsize(%struct.smb_sb_info*, i32) #1

declare dso_local i32 @VERBOSE(i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

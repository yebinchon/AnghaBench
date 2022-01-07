; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/cifs/extr_misc.c_backup_cred.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/cifs/extr_misc.c_backup_cred.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cifs_sb_info = type { i32, i64, i32 }

@CIFS_MOUNT_CIFS_BACKUPUID = common dso_local global i32 0, align 4
@CIFS_MOUNT_CIFS_BACKUPGID = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @backup_cred(%struct.cifs_sb_info* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.cifs_sb_info*, align 8
  store %struct.cifs_sb_info* %0, %struct.cifs_sb_info** %3, align 8
  %4 = load %struct.cifs_sb_info*, %struct.cifs_sb_info** %3, align 8
  %5 = getelementptr inbounds %struct.cifs_sb_info, %struct.cifs_sb_info* %4, i32 0, i32 0
  %6 = load i32, i32* %5, align 8
  %7 = load i32, i32* @CIFS_MOUNT_CIFS_BACKUPUID, align 4
  %8 = and i32 %6, %7
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %10, label %18

10:                                               ; preds = %1
  %11 = load %struct.cifs_sb_info*, %struct.cifs_sb_info** %3, align 8
  %12 = getelementptr inbounds %struct.cifs_sb_info, %struct.cifs_sb_info* %11, i32 0, i32 1
  %13 = load i64, i64* %12, align 8
  %14 = call i64 (...) @current_fsuid()
  %15 = icmp eq i64 %13, %14
  br i1 %15, label %16, label %17

16:                                               ; preds = %10
  store i32 1, i32* %2, align 4
  br label %34

17:                                               ; preds = %10
  br label %18

18:                                               ; preds = %17, %1
  %19 = load %struct.cifs_sb_info*, %struct.cifs_sb_info** %3, align 8
  %20 = getelementptr inbounds %struct.cifs_sb_info, %struct.cifs_sb_info* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = load i32, i32* @CIFS_MOUNT_CIFS_BACKUPGID, align 4
  %23 = and i32 %21, %22
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %33

25:                                               ; preds = %18
  %26 = load %struct.cifs_sb_info*, %struct.cifs_sb_info** %3, align 8
  %27 = getelementptr inbounds %struct.cifs_sb_info, %struct.cifs_sb_info* %26, i32 0, i32 2
  %28 = load i32, i32* %27, align 8
  %29 = call i64 @in_group_p(i32 %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %32

31:                                               ; preds = %25
  store i32 1, i32* %2, align 4
  br label %34

32:                                               ; preds = %25
  br label %33

33:                                               ; preds = %32, %18
  store i32 0, i32* %2, align 4
  br label %34

34:                                               ; preds = %33, %31, %16
  %35 = load i32, i32* %2, align 4
  ret i32 %35
}

declare dso_local i64 @current_fsuid(...) #1

declare dso_local i64 @in_group_p(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/extr_compat.c_do_smb_super_data_conv.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/extr_compat.c_do_smb_super_data_conv.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.smb_mount_data = type { i32, i32, i32, i32, i32 }
%struct.compat_smb_mount_data = type { i64, i32, i32, i32, i32, i32 }

@SMB_MOUNT_OLDVERSION = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i8*)* @do_smb_super_data_conv to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @do_smb_super_data_conv(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.smb_mount_data*, align 8
  %4 = alloca %struct.compat_smb_mount_data*, align 8
  store i8* %0, i8** %2, align 8
  %5 = load i8*, i8** %2, align 8
  %6 = bitcast i8* %5 to %struct.smb_mount_data*
  store %struct.smb_mount_data* %6, %struct.smb_mount_data** %3, align 8
  %7 = load i8*, i8** %2, align 8
  %8 = bitcast i8* %7 to %struct.compat_smb_mount_data*
  store %struct.compat_smb_mount_data* %8, %struct.compat_smb_mount_data** %4, align 8
  %9 = load %struct.compat_smb_mount_data*, %struct.compat_smb_mount_data** %4, align 8
  %10 = getelementptr inbounds %struct.compat_smb_mount_data, %struct.compat_smb_mount_data* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = load i64, i64* @SMB_MOUNT_OLDVERSION, align 8
  %13 = icmp ne i64 %11, %12
  br i1 %13, label %14, label %15

14:                                               ; preds = %1
  br label %41

15:                                               ; preds = %1
  %16 = load %struct.compat_smb_mount_data*, %struct.compat_smb_mount_data** %4, align 8
  %17 = getelementptr inbounds %struct.compat_smb_mount_data, %struct.compat_smb_mount_data* %16, i32 0, i32 5
  %18 = load i32, i32* %17, align 8
  %19 = load %struct.smb_mount_data*, %struct.smb_mount_data** %3, align 8
  %20 = getelementptr inbounds %struct.smb_mount_data, %struct.smb_mount_data* %19, i32 0, i32 4
  store i32 %18, i32* %20, align 4
  %21 = load %struct.compat_smb_mount_data*, %struct.compat_smb_mount_data** %4, align 8
  %22 = getelementptr inbounds %struct.compat_smb_mount_data, %struct.compat_smb_mount_data* %21, i32 0, i32 4
  %23 = load i32, i32* %22, align 4
  %24 = load %struct.smb_mount_data*, %struct.smb_mount_data** %3, align 8
  %25 = getelementptr inbounds %struct.smb_mount_data, %struct.smb_mount_data* %24, i32 0, i32 3
  store i32 %23, i32* %25, align 4
  %26 = load %struct.compat_smb_mount_data*, %struct.compat_smb_mount_data** %4, align 8
  %27 = getelementptr inbounds %struct.compat_smb_mount_data, %struct.compat_smb_mount_data* %26, i32 0, i32 3
  %28 = load i32, i32* %27, align 8
  %29 = load %struct.smb_mount_data*, %struct.smb_mount_data** %3, align 8
  %30 = getelementptr inbounds %struct.smb_mount_data, %struct.smb_mount_data* %29, i32 0, i32 2
  store i32 %28, i32* %30, align 4
  %31 = load %struct.compat_smb_mount_data*, %struct.compat_smb_mount_data** %4, align 8
  %32 = getelementptr inbounds %struct.compat_smb_mount_data, %struct.compat_smb_mount_data* %31, i32 0, i32 2
  %33 = load i32, i32* %32, align 4
  %34 = load %struct.smb_mount_data*, %struct.smb_mount_data** %3, align 8
  %35 = getelementptr inbounds %struct.smb_mount_data, %struct.smb_mount_data* %34, i32 0, i32 1
  store i32 %33, i32* %35, align 4
  %36 = load %struct.compat_smb_mount_data*, %struct.compat_smb_mount_data** %4, align 8
  %37 = getelementptr inbounds %struct.compat_smb_mount_data, %struct.compat_smb_mount_data* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 8
  %39 = load %struct.smb_mount_data*, %struct.smb_mount_data** %3, align 8
  %40 = getelementptr inbounds %struct.smb_mount_data, %struct.smb_mount_data* %39, i32 0, i32 0
  store i32 %38, i32* %40, align 4
  br label %41

41:                                               ; preds = %15, %14
  %42 = load i8*, i8** %2, align 8
  ret i8* %42
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

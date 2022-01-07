; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/cifs/extr_connect.c_cifs_get_volume_info.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/cifs/extr_connect.c_cifs_get_volume_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.smb_vol = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.smb_vol* @cifs_get_volume_info(i8* %0, i8* %1) #0 {
  %3 = alloca %struct.smb_vol*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.smb_vol*, align 8
  store i8* %0, i8** %4, align 8
  store i8* %1, i8** %5, align 8
  %8 = load i32, i32* @GFP_KERNEL, align 4
  %9 = call %struct.smb_vol* @kzalloc(i32 4, i32 %8)
  store %struct.smb_vol* %9, %struct.smb_vol** %7, align 8
  %10 = load %struct.smb_vol*, %struct.smb_vol** %7, align 8
  %11 = icmp ne %struct.smb_vol* %10, null
  br i1 %11, label %16, label %12

12:                                               ; preds = %2
  %13 = load i32, i32* @ENOMEM, align 4
  %14 = sub nsw i32 0, %13
  %15 = call %struct.smb_vol* @ERR_PTR(i32 %14)
  store %struct.smb_vol* %15, %struct.smb_vol** %3, align 8
  br label %30

16:                                               ; preds = %2
  %17 = load %struct.smb_vol*, %struct.smb_vol** %7, align 8
  %18 = load i8*, i8** %4, align 8
  %19 = load i8*, i8** %5, align 8
  %20 = call i32 @cifs_setup_volume_info(%struct.smb_vol* %17, i8* %18, i8* %19)
  store i32 %20, i32* %6, align 4
  %21 = load i32, i32* %6, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %28

23:                                               ; preds = %16
  %24 = load %struct.smb_vol*, %struct.smb_vol** %7, align 8
  %25 = call i32 @cifs_cleanup_volume_info(%struct.smb_vol* %24)
  %26 = load i32, i32* %6, align 4
  %27 = call %struct.smb_vol* @ERR_PTR(i32 %26)
  store %struct.smb_vol* %27, %struct.smb_vol** %7, align 8
  br label %28

28:                                               ; preds = %23, %16
  %29 = load %struct.smb_vol*, %struct.smb_vol** %7, align 8
  store %struct.smb_vol* %29, %struct.smb_vol** %3, align 8
  br label %30

30:                                               ; preds = %28, %12
  %31 = load %struct.smb_vol*, %struct.smb_vol** %3, align 8
  ret %struct.smb_vol* %31
}

declare dso_local %struct.smb_vol* @kzalloc(i32, i32) #1

declare dso_local %struct.smb_vol* @ERR_PTR(i32) #1

declare dso_local i32 @cifs_setup_volume_info(%struct.smb_vol*, i8*, i8*) #1

declare dso_local i32 @cifs_cleanup_volume_info(%struct.smb_vol*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

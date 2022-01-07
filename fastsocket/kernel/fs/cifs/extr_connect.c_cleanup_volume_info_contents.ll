; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/cifs/extr_connect.c_cleanup_volume_info_contents.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/cifs/extr_connect.c_cleanup_volume_info_contents.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.smb_vol = type { i64, i64, i64, i64, i64, i64, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.smb_vol*)* @cleanup_volume_info_contents to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cleanup_volume_info_contents(%struct.smb_vol* %0) #0 {
  %2 = alloca %struct.smb_vol*, align 8
  store %struct.smb_vol* %0, %struct.smb_vol** %2, align 8
  %3 = load %struct.smb_vol*, %struct.smb_vol** %2, align 8
  %4 = getelementptr inbounds %struct.smb_vol, %struct.smb_vol* %3, i32 0, i32 0
  %5 = load i64, i64* %4, align 8
  %6 = call i32 @kfree(i64 %5)
  %7 = load %struct.smb_vol*, %struct.smb_vol** %2, align 8
  %8 = getelementptr inbounds %struct.smb_vol, %struct.smb_vol* %7, i32 0, i32 6
  %9 = load i32, i32* %8, align 8
  %10 = call i32 @kzfree(i32 %9)
  %11 = load %struct.smb_vol*, %struct.smb_vol** %2, align 8
  %12 = getelementptr inbounds %struct.smb_vol, %struct.smb_vol* %11, i32 0, i32 1
  %13 = load i64, i64* %12, align 8
  %14 = call i32 @kfree(i64 %13)
  %15 = load %struct.smb_vol*, %struct.smb_vol** %2, align 8
  %16 = getelementptr inbounds %struct.smb_vol, %struct.smb_vol* %15, i32 0, i32 2
  %17 = load i64, i64* %16, align 8
  %18 = load %struct.smb_vol*, %struct.smb_vol** %2, align 8
  %19 = getelementptr inbounds %struct.smb_vol, %struct.smb_vol* %18, i32 0, i32 1
  %20 = load i64, i64* %19, align 8
  %21 = add nsw i64 %20, 2
  %22 = icmp ne i64 %17, %21
  br i1 %22, label %23, label %28

23:                                               ; preds = %1
  %24 = load %struct.smb_vol*, %struct.smb_vol** %2, align 8
  %25 = getelementptr inbounds %struct.smb_vol, %struct.smb_vol* %24, i32 0, i32 2
  %26 = load i64, i64* %25, align 8
  %27 = call i32 @kfree(i64 %26)
  br label %28

28:                                               ; preds = %23, %1
  %29 = load %struct.smb_vol*, %struct.smb_vol** %2, align 8
  %30 = getelementptr inbounds %struct.smb_vol, %struct.smb_vol* %29, i32 0, i32 3
  %31 = load i64, i64* %30, align 8
  %32 = call i32 @kfree(i64 %31)
  %33 = load %struct.smb_vol*, %struct.smb_vol** %2, align 8
  %34 = getelementptr inbounds %struct.smb_vol, %struct.smb_vol* %33, i32 0, i32 4
  %35 = load i64, i64* %34, align 8
  %36 = call i32 @kfree(i64 %35)
  %37 = load %struct.smb_vol*, %struct.smb_vol** %2, align 8
  %38 = getelementptr inbounds %struct.smb_vol, %struct.smb_vol* %37, i32 0, i32 5
  %39 = load i64, i64* %38, align 8
  %40 = call i32 @kfree(i64 %39)
  ret void
}

declare dso_local i32 @kfree(i64) #1

declare dso_local i32 @kzfree(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

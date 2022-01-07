; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/smbfs/extr_request.c_smb_setup_request.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/smbfs/extr_request.c_smb_setup_request.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.smb_request = type { i32, i32*, i64, i64, i64, i64, i64, i32, i64, i32 }

@smb_setup_bcc = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.smb_request*)* @smb_setup_request to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @smb_setup_request(%struct.smb_request* %0) #0 {
  %2 = alloca %struct.smb_request*, align 8
  %3 = alloca i32, align 4
  store %struct.smb_request* %0, %struct.smb_request** %2, align 8
  %4 = load %struct.smb_request*, %struct.smb_request** %2, align 8
  %5 = getelementptr inbounds %struct.smb_request, %struct.smb_request* %4, i32 0, i32 9
  %6 = load i32, i32* %5, align 8
  %7 = call i32 @smb_len(i32 %6)
  %8 = add nsw i32 %7, 4
  store i32 %8, i32* %3, align 4
  %9 = load i32, i32* %3, align 4
  %10 = load %struct.smb_request*, %struct.smb_request** %2, align 8
  %11 = getelementptr inbounds %struct.smb_request, %struct.smb_request* %10, i32 0, i32 0
  store i32 %9, i32* %11, align 8
  %12 = load %struct.smb_request*, %struct.smb_request** %2, align 8
  %13 = getelementptr inbounds %struct.smb_request, %struct.smb_request* %12, i32 0, i32 8
  %14 = load i64, i64* %13, align 8
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %20

16:                                               ; preds = %1
  %17 = load i32, i32* @smb_setup_bcc, align 4
  %18 = load %struct.smb_request*, %struct.smb_request** %2, align 8
  %19 = getelementptr inbounds %struct.smb_request, %struct.smb_request* %18, i32 0, i32 7
  store i32 %17, i32* %19, align 8
  br label %20

20:                                               ; preds = %16, %1
  %21 = load %struct.smb_request*, %struct.smb_request** %2, align 8
  %22 = getelementptr inbounds %struct.smb_request, %struct.smb_request* %21, i32 0, i32 6
  store i64 0, i64* %22, align 8
  %23 = load %struct.smb_request*, %struct.smb_request** %2, align 8
  %24 = getelementptr inbounds %struct.smb_request, %struct.smb_request* %23, i32 0, i32 5
  store i64 0, i64* %24, align 8
  %25 = load %struct.smb_request*, %struct.smb_request** %2, align 8
  %26 = getelementptr inbounds %struct.smb_request, %struct.smb_request* %25, i32 0, i32 4
  store i64 0, i64* %26, align 8
  %27 = load %struct.smb_request*, %struct.smb_request** %2, align 8
  %28 = getelementptr inbounds %struct.smb_request, %struct.smb_request* %27, i32 0, i32 3
  store i64 0, i64* %28, align 8
  %29 = load %struct.smb_request*, %struct.smb_request** %2, align 8
  %30 = getelementptr inbounds %struct.smb_request, %struct.smb_request* %29, i32 0, i32 2
  store i64 0, i64* %30, align 8
  %31 = load %struct.smb_request*, %struct.smb_request** %2, align 8
  %32 = getelementptr inbounds %struct.smb_request, %struct.smb_request* %31, i32 0, i32 1
  %33 = load i32*, i32** %32, align 8
  %34 = call i32 @kfree(i32* %33)
  %35 = load %struct.smb_request*, %struct.smb_request** %2, align 8
  %36 = getelementptr inbounds %struct.smb_request, %struct.smb_request* %35, i32 0, i32 1
  store i32* null, i32** %36, align 8
  ret i32 0
}

declare dso_local i32 @smb_len(i32) #1

declare dso_local i32 @kfree(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

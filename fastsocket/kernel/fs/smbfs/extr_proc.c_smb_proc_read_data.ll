; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/smbfs/extr_proc.c_smb_proc_read_data.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/smbfs/extr_proc.c_smb_proc_read_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.smb_request = type { i32, i32, i64, i32, i64, %struct.TYPE_2__*, i32, i32 }
%struct.TYPE_2__ = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.smb_request*)* @smb_proc_read_data to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @smb_proc_read_data(%struct.smb_request* %0) #0 {
  %2 = alloca %struct.smb_request*, align 8
  store %struct.smb_request* %0, %struct.smb_request** %2, align 8
  %3 = load %struct.smb_request*, %struct.smb_request** %2, align 8
  %4 = getelementptr inbounds %struct.smb_request, %struct.smb_request* %3, i32 0, i32 7
  %5 = load i32, i32* %4, align 4
  %6 = load %struct.smb_request*, %struct.smb_request** %2, align 8
  %7 = getelementptr inbounds %struct.smb_request, %struct.smb_request* %6, i32 0, i32 5
  %8 = load %struct.TYPE_2__*, %struct.TYPE_2__** %7, align 8
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i64 0
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 1
  store i32 %5, i32* %10, align 4
  %11 = load %struct.smb_request*, %struct.smb_request** %2, align 8
  %12 = getelementptr inbounds %struct.smb_request, %struct.smb_request* %11, i32 0, i32 5
  %13 = load %struct.TYPE_2__*, %struct.TYPE_2__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i64 0
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  store i32 3, i32* %15, align 4
  %16 = load %struct.smb_request*, %struct.smb_request** %2, align 8
  %17 = getelementptr inbounds %struct.smb_request, %struct.smb_request* %16, i32 0, i32 6
  %18 = load i32, i32* %17, align 8
  %19 = load %struct.smb_request*, %struct.smb_request** %2, align 8
  %20 = getelementptr inbounds %struct.smb_request, %struct.smb_request* %19, i32 0, i32 5
  %21 = load %struct.TYPE_2__*, %struct.TYPE_2__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i64 1
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 1
  store i32 %18, i32* %23, align 4
  %24 = load %struct.smb_request*, %struct.smb_request** %2, align 8
  %25 = getelementptr inbounds %struct.smb_request, %struct.smb_request* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = load %struct.smb_request*, %struct.smb_request** %2, align 8
  %28 = getelementptr inbounds %struct.smb_request, %struct.smb_request* %27, i32 0, i32 5
  %29 = load %struct.TYPE_2__*, %struct.TYPE_2__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i64 1
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 0
  store i32 %26, i32* %31, align 4
  %32 = load %struct.smb_request*, %struct.smb_request** %2, align 8
  %33 = getelementptr inbounds %struct.smb_request, %struct.smb_request* %32, i32 0, i32 1
  store i32 2, i32* %33, align 4
  %34 = load %struct.smb_request*, %struct.smb_request** %2, align 8
  %35 = getelementptr inbounds %struct.smb_request, %struct.smb_request* %34, i32 0, i32 3
  %36 = load i32, i32* %35, align 8
  %37 = call i64 @smb_len(i32 %36)
  %38 = add nsw i64 %37, 4
  %39 = load %struct.smb_request*, %struct.smb_request** %2, align 8
  %40 = getelementptr inbounds %struct.smb_request, %struct.smb_request* %39, i32 0, i32 2
  %41 = load i64, i64* %40, align 8
  %42 = sub nsw i64 %38, %41
  %43 = load %struct.smb_request*, %struct.smb_request** %2, align 8
  %44 = getelementptr inbounds %struct.smb_request, %struct.smb_request* %43, i32 0, i32 4
  store i64 %42, i64* %44, align 8
  ret void
}

declare dso_local i64 @smb_len(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

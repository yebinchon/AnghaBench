; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/nfs/extr_direct.c_nfs_direct_complete.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/nfs/extr_direct.c_nfs_direct_complete.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nfs_direct_req = type { i32, i64, i64, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.nfs_direct_req*)* @nfs_direct_complete to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nfs_direct_complete(%struct.nfs_direct_req* %0) #0 {
  %2 = alloca %struct.nfs_direct_req*, align 8
  %3 = alloca i64, align 8
  store %struct.nfs_direct_req* %0, %struct.nfs_direct_req** %2, align 8
  %4 = load %struct.nfs_direct_req*, %struct.nfs_direct_req** %2, align 8
  %5 = getelementptr inbounds %struct.nfs_direct_req, %struct.nfs_direct_req* %4, i32 0, i32 1
  %6 = load i64, i64* %5, align 8
  %7 = icmp ne i64 %6, 0
  br i1 %7, label %8, label %24

8:                                                ; preds = %1
  %9 = load %struct.nfs_direct_req*, %struct.nfs_direct_req** %2, align 8
  %10 = getelementptr inbounds %struct.nfs_direct_req, %struct.nfs_direct_req* %9, i32 0, i32 3
  %11 = load i64, i64* %10, align 8
  store i64 %11, i64* %3, align 8
  %12 = load i64, i64* %3, align 8
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %18, label %14

14:                                               ; preds = %8
  %15 = load %struct.nfs_direct_req*, %struct.nfs_direct_req** %2, align 8
  %16 = getelementptr inbounds %struct.nfs_direct_req, %struct.nfs_direct_req* %15, i32 0, i32 2
  %17 = load i64, i64* %16, align 8
  store i64 %17, i64* %3, align 8
  br label %18

18:                                               ; preds = %14, %8
  %19 = load %struct.nfs_direct_req*, %struct.nfs_direct_req** %2, align 8
  %20 = getelementptr inbounds %struct.nfs_direct_req, %struct.nfs_direct_req* %19, i32 0, i32 1
  %21 = load i64, i64* %20, align 8
  %22 = load i64, i64* %3, align 8
  %23 = call i32 @aio_complete(i64 %21, i64 %22, i32 0)
  br label %24

24:                                               ; preds = %18, %1
  %25 = load %struct.nfs_direct_req*, %struct.nfs_direct_req** %2, align 8
  %26 = getelementptr inbounds %struct.nfs_direct_req, %struct.nfs_direct_req* %25, i32 0, i32 0
  %27 = call i32 @complete_all(i32* %26)
  %28 = load %struct.nfs_direct_req*, %struct.nfs_direct_req** %2, align 8
  %29 = call i32 @nfs_direct_req_release(%struct.nfs_direct_req* %28)
  ret void
}

declare dso_local i32 @aio_complete(i64, i64, i32) #1

declare dso_local i32 @complete_all(i32*) #1

declare dso_local i32 @nfs_direct_req_release(%struct.nfs_direct_req*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

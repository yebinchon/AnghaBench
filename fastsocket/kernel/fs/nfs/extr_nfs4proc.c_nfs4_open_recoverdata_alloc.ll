; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/nfs/extr_nfs4proc.c_nfs4_open_recoverdata_alloc.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/nfs/extr_nfs4proc.c_nfs4_open_recoverdata_alloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nfs4_opendata = type { %struct.nfs4_state* }
%struct.nfs_open_context = type { i32 }
%struct.nfs4_state = type { i32, i32 }

@GFP_NOFS = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.nfs4_opendata* (%struct.nfs_open_context*, %struct.nfs4_state*, i32)* @nfs4_open_recoverdata_alloc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.nfs4_opendata* @nfs4_open_recoverdata_alloc(%struct.nfs_open_context* %0, %struct.nfs4_state* %1, i32 %2) #0 {
  %4 = alloca %struct.nfs4_opendata*, align 8
  %5 = alloca %struct.nfs_open_context*, align 8
  %6 = alloca %struct.nfs4_state*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.nfs4_opendata*, align 8
  store %struct.nfs_open_context* %0, %struct.nfs_open_context** %5, align 8
  store %struct.nfs4_state* %1, %struct.nfs4_state** %6, align 8
  store i32 %2, i32* %7, align 4
  %9 = load %struct.nfs_open_context*, %struct.nfs_open_context** %5, align 8
  %10 = getelementptr inbounds %struct.nfs_open_context, %struct.nfs_open_context* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = load %struct.nfs4_state*, %struct.nfs4_state** %6, align 8
  %13 = getelementptr inbounds %struct.nfs4_state, %struct.nfs4_state* %12, i32 0, i32 1
  %14 = load i32, i32* %13, align 4
  %15 = load i32, i32* %7, align 4
  %16 = load i32, i32* @GFP_NOFS, align 4
  %17 = call %struct.nfs4_opendata* @nfs4_opendata_alloc(i32 %11, i32 %14, i32 0, i32 0, i32* null, i32 %15, i32 %16)
  store %struct.nfs4_opendata* %17, %struct.nfs4_opendata** %8, align 8
  %18 = load %struct.nfs4_opendata*, %struct.nfs4_opendata** %8, align 8
  %19 = icmp eq %struct.nfs4_opendata* %18, null
  br i1 %19, label %20, label %24

20:                                               ; preds = %3
  %21 = load i32, i32* @ENOMEM, align 4
  %22 = sub nsw i32 0, %21
  %23 = call %struct.nfs4_opendata* @ERR_PTR(i32 %22)
  store %struct.nfs4_opendata* %23, %struct.nfs4_opendata** %4, align 8
  br label %32

24:                                               ; preds = %3
  %25 = load %struct.nfs4_state*, %struct.nfs4_state** %6, align 8
  %26 = load %struct.nfs4_opendata*, %struct.nfs4_opendata** %8, align 8
  %27 = getelementptr inbounds %struct.nfs4_opendata, %struct.nfs4_opendata* %26, i32 0, i32 0
  store %struct.nfs4_state* %25, %struct.nfs4_state** %27, align 8
  %28 = load %struct.nfs4_state*, %struct.nfs4_state** %6, align 8
  %29 = getelementptr inbounds %struct.nfs4_state, %struct.nfs4_state* %28, i32 0, i32 0
  %30 = call i32 @atomic_inc(i32* %29)
  %31 = load %struct.nfs4_opendata*, %struct.nfs4_opendata** %8, align 8
  store %struct.nfs4_opendata* %31, %struct.nfs4_opendata** %4, align 8
  br label %32

32:                                               ; preds = %24, %20
  %33 = load %struct.nfs4_opendata*, %struct.nfs4_opendata** %4, align 8
  ret %struct.nfs4_opendata* %33
}

declare dso_local %struct.nfs4_opendata* @nfs4_opendata_alloc(i32, i32, i32, i32, i32*, i32, i32) #1

declare dso_local %struct.nfs4_opendata* @ERR_PTR(i32) #1

declare dso_local i32 @atomic_inc(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

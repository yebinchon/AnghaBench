; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/nfs/extr_nfs4proc.c_nfs4_open_recover_helper.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/nfs/extr_nfs4proc.c_nfs4_open_recover_helper.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nfs4_opendata = type { i32, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i64 }
%struct.nfs4_state = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nfs4_opendata*, i32, %struct.nfs4_state**)* @nfs4_open_recover_helper to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nfs4_open_recover_helper(%struct.nfs4_opendata* %0, i32 %1, %struct.nfs4_state** %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.nfs4_opendata*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.nfs4_state**, align 8
  %8 = alloca %struct.nfs4_state*, align 8
  %9 = alloca i32, align 4
  store %struct.nfs4_opendata* %0, %struct.nfs4_opendata** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.nfs4_state** %2, %struct.nfs4_state*** %7, align 8
  %10 = load %struct.nfs4_opendata*, %struct.nfs4_opendata** %5, align 8
  %11 = getelementptr inbounds %struct.nfs4_opendata, %struct.nfs4_opendata* %10, i32 0, i32 2
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 1
  store i64 0, i64* %12, align 8
  %13 = load i32, i32* %6, align 4
  %14 = load %struct.nfs4_opendata*, %struct.nfs4_opendata** %5, align 8
  %15 = getelementptr inbounds %struct.nfs4_opendata, %struct.nfs4_opendata* %14, i32 0, i32 2
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  store i32 %13, i32* %16, align 8
  %17 = load %struct.nfs4_opendata*, %struct.nfs4_opendata** %5, align 8
  %18 = getelementptr inbounds %struct.nfs4_opendata, %struct.nfs4_opendata* %17, i32 0, i32 1
  %19 = call i32 @memset(i32* %18, i32 0, i32 4)
  %20 = load %struct.nfs4_opendata*, %struct.nfs4_opendata** %5, align 8
  %21 = getelementptr inbounds %struct.nfs4_opendata, %struct.nfs4_opendata* %20, i32 0, i32 0
  %22 = call i32 @memset(i32* %21, i32 0, i32 4)
  %23 = load %struct.nfs4_opendata*, %struct.nfs4_opendata** %5, align 8
  %24 = call i32 @nfs4_init_opendata_res(%struct.nfs4_opendata* %23)
  %25 = load %struct.nfs4_opendata*, %struct.nfs4_opendata** %5, align 8
  %26 = call i32 @_nfs4_recover_proc_open(%struct.nfs4_opendata* %25)
  store i32 %26, i32* %9, align 4
  %27 = load i32, i32* %9, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %31

29:                                               ; preds = %3
  %30 = load i32, i32* %9, align 4
  store i32 %30, i32* %4, align 4
  br label %46

31:                                               ; preds = %3
  %32 = load %struct.nfs4_opendata*, %struct.nfs4_opendata** %5, align 8
  %33 = call %struct.nfs4_state* @nfs4_opendata_to_nfs4_state(%struct.nfs4_opendata* %32)
  store %struct.nfs4_state* %33, %struct.nfs4_state** %8, align 8
  %34 = load %struct.nfs4_state*, %struct.nfs4_state** %8, align 8
  %35 = call i64 @IS_ERR(%struct.nfs4_state* %34)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %40

37:                                               ; preds = %31
  %38 = load %struct.nfs4_state*, %struct.nfs4_state** %8, align 8
  %39 = call i32 @PTR_ERR(%struct.nfs4_state* %38)
  store i32 %39, i32* %4, align 4
  br label %46

40:                                               ; preds = %31
  %41 = load %struct.nfs4_state*, %struct.nfs4_state** %8, align 8
  %42 = load i32, i32* %6, align 4
  %43 = call i32 @nfs4_close_state(%struct.nfs4_state* %41, i32 %42)
  %44 = load %struct.nfs4_state*, %struct.nfs4_state** %8, align 8
  %45 = load %struct.nfs4_state**, %struct.nfs4_state*** %7, align 8
  store %struct.nfs4_state* %44, %struct.nfs4_state** %45, align 8
  store i32 0, i32* %4, align 4
  br label %46

46:                                               ; preds = %40, %37, %29
  %47 = load i32, i32* %4, align 4
  ret i32 %47
}

declare dso_local i32 @memset(i32*, i32, i32) #1

declare dso_local i32 @nfs4_init_opendata_res(%struct.nfs4_opendata*) #1

declare dso_local i32 @_nfs4_recover_proc_open(%struct.nfs4_opendata*) #1

declare dso_local %struct.nfs4_state* @nfs4_opendata_to_nfs4_state(%struct.nfs4_opendata*) #1

declare dso_local i64 @IS_ERR(%struct.nfs4_state*) #1

declare dso_local i32 @PTR_ERR(%struct.nfs4_state*) #1

declare dso_local i32 @nfs4_close_state(%struct.nfs4_state*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

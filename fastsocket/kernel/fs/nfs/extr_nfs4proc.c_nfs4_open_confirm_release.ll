; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/nfs/extr_nfs4proc.c_nfs4_open_confirm_release.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/nfs/extr_nfs4proc.c_nfs4_open_confirm_release.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nfs4_opendata = type { i64, %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32 }
%struct.nfs4_state = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @nfs4_open_confirm_release to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nfs4_open_confirm_release(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.nfs4_opendata*, align 8
  %4 = alloca %struct.nfs4_state*, align 8
  store i8* %0, i8** %2, align 8
  %5 = load i8*, i8** %2, align 8
  %6 = bitcast i8* %5 to %struct.nfs4_opendata*
  store %struct.nfs4_opendata* %6, %struct.nfs4_opendata** %3, align 8
  store %struct.nfs4_state* null, %struct.nfs4_state** %4, align 8
  %7 = load %struct.nfs4_opendata*, %struct.nfs4_opendata** %3, align 8
  %8 = getelementptr inbounds %struct.nfs4_opendata, %struct.nfs4_opendata* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = icmp eq i64 %9, 0
  br i1 %10, label %11, label %12

11:                                               ; preds = %1
  br label %32

12:                                               ; preds = %1
  %13 = load %struct.nfs4_opendata*, %struct.nfs4_opendata** %3, align 8
  %14 = getelementptr inbounds %struct.nfs4_opendata, %struct.nfs4_opendata* %13, i32 0, i32 2
  %15 = load i32, i32* %14, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %18, label %17

17:                                               ; preds = %12
  br label %32

18:                                               ; preds = %12
  %19 = load %struct.nfs4_opendata*, %struct.nfs4_opendata** %3, align 8
  %20 = call %struct.nfs4_state* @nfs4_opendata_to_nfs4_state(%struct.nfs4_opendata* %19)
  store %struct.nfs4_state* %20, %struct.nfs4_state** %4, align 8
  %21 = load %struct.nfs4_state*, %struct.nfs4_state** %4, align 8
  %22 = call i32 @IS_ERR(%struct.nfs4_state* %21)
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %31, label %24

24:                                               ; preds = %18
  %25 = load %struct.nfs4_state*, %struct.nfs4_state** %4, align 8
  %26 = load %struct.nfs4_opendata*, %struct.nfs4_opendata** %3, align 8
  %27 = getelementptr inbounds %struct.nfs4_opendata, %struct.nfs4_opendata* %26, i32 0, i32 1
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = call i32 @nfs4_close_state(%struct.nfs4_state* %25, i32 %29)
  br label %31

31:                                               ; preds = %24, %18
  br label %32

32:                                               ; preds = %31, %17, %11
  %33 = load %struct.nfs4_opendata*, %struct.nfs4_opendata** %3, align 8
  %34 = call i32 @nfs4_opendata_put(%struct.nfs4_opendata* %33)
  ret void
}

declare dso_local %struct.nfs4_state* @nfs4_opendata_to_nfs4_state(%struct.nfs4_opendata*) #1

declare dso_local i32 @IS_ERR(%struct.nfs4_state*) #1

declare dso_local i32 @nfs4_close_state(%struct.nfs4_state*, i32) #1

declare dso_local i32 @nfs4_opendata_put(%struct.nfs4_opendata*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

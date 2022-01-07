; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/nfs/extr_nfs4proc.c_nfs4_proc_setlk.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/nfs/extr_nfs4proc.c_nfs4_proc_setlk.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nfs4_state = type { i32 }
%struct.file_lock = type { i32 }
%struct.nfs4_exception = type { i64, %struct.nfs4_state* }

@NFS4ERR_DENIED = common dso_local global i32 0, align 4
@EAGAIN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nfs4_state*, i32, %struct.file_lock*)* @nfs4_proc_setlk to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nfs4_proc_setlk(%struct.nfs4_state* %0, i32 %1, %struct.file_lock* %2) #0 {
  %4 = alloca %struct.nfs4_state*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.file_lock*, align 8
  %7 = alloca %struct.nfs4_exception, align 8
  %8 = alloca i32, align 4
  store %struct.nfs4_state* %0, %struct.nfs4_state** %4, align 8
  store i32 %1, i32* %5, align 4
  store %struct.file_lock* %2, %struct.file_lock** %6, align 8
  %9 = getelementptr inbounds %struct.nfs4_exception, %struct.nfs4_exception* %7, i32 0, i32 0
  store i64 0, i64* %9, align 8
  %10 = getelementptr inbounds %struct.nfs4_exception, %struct.nfs4_exception* %7, i32 0, i32 1
  %11 = load %struct.nfs4_state*, %struct.nfs4_state** %4, align 8
  store %struct.nfs4_state* %11, %struct.nfs4_state** %10, align 8
  br label %12

12:                                               ; preds = %31, %3
  %13 = load %struct.nfs4_state*, %struct.nfs4_state** %4, align 8
  %14 = load i32, i32* %5, align 4
  %15 = load %struct.file_lock*, %struct.file_lock** %6, align 8
  %16 = call i32 @_nfs4_proc_setlk(%struct.nfs4_state* %13, i32 %14, %struct.file_lock* %15)
  store i32 %16, i32* %8, align 4
  %17 = load i32, i32* %8, align 4
  %18 = load i32, i32* @NFS4ERR_DENIED, align 4
  %19 = sub nsw i32 0, %18
  %20 = icmp eq i32 %17, %19
  br i1 %20, label %21, label %24

21:                                               ; preds = %12
  %22 = load i32, i32* @EAGAIN, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %8, align 4
  br label %24

24:                                               ; preds = %21, %12
  %25 = load %struct.nfs4_state*, %struct.nfs4_state** %4, align 8
  %26 = getelementptr inbounds %struct.nfs4_state, %struct.nfs4_state* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @NFS_SERVER(i32 %27)
  %29 = load i32, i32* %8, align 4
  %30 = call i32 @nfs4_handle_exception(i32 %28, i32 %29, %struct.nfs4_exception* %7)
  store i32 %30, i32* %8, align 4
  br label %31

31:                                               ; preds = %24
  %32 = getelementptr inbounds %struct.nfs4_exception, %struct.nfs4_exception* %7, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %12, label %35

35:                                               ; preds = %31
  %36 = load i32, i32* %8, align 4
  ret i32 %36
}

declare dso_local i32 @_nfs4_proc_setlk(%struct.nfs4_state*, i32, %struct.file_lock*) #1

declare dso_local i32 @nfs4_handle_exception(i32, i32, %struct.nfs4_exception*) #1

declare dso_local i32 @NFS_SERVER(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

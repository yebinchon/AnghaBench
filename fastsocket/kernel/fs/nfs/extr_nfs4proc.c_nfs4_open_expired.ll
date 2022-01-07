; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/nfs/extr_nfs4proc.c_nfs4_open_expired.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/nfs/extr_nfs4proc.c_nfs4_open_expired.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nfs4_state_owner = type { i32 }
%struct.nfs4_state = type { i32 }
%struct.nfs_open_context = type { i32 }

@EAGAIN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nfs4_state_owner*, %struct.nfs4_state*)* @nfs4_open_expired to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nfs4_open_expired(%struct.nfs4_state_owner* %0, %struct.nfs4_state* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.nfs4_state_owner*, align 8
  %5 = alloca %struct.nfs4_state*, align 8
  %6 = alloca %struct.nfs_open_context*, align 8
  %7 = alloca i32, align 4
  store %struct.nfs4_state_owner* %0, %struct.nfs4_state_owner** %4, align 8
  store %struct.nfs4_state* %1, %struct.nfs4_state** %5, align 8
  %8 = load %struct.nfs4_state*, %struct.nfs4_state** %5, align 8
  %9 = call %struct.nfs_open_context* @nfs4_state_find_open_context(%struct.nfs4_state* %8)
  store %struct.nfs_open_context* %9, %struct.nfs_open_context** %6, align 8
  %10 = load %struct.nfs_open_context*, %struct.nfs_open_context** %6, align 8
  %11 = call i64 @IS_ERR(%struct.nfs_open_context* %10)
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %16

13:                                               ; preds = %2
  %14 = load i32, i32* @EAGAIN, align 4
  %15 = sub nsw i32 0, %14
  store i32 %15, i32* %3, align 4
  br label %23

16:                                               ; preds = %2
  %17 = load %struct.nfs_open_context*, %struct.nfs_open_context** %6, align 8
  %18 = load %struct.nfs4_state*, %struct.nfs4_state** %5, align 8
  %19 = call i32 @nfs4_do_open_expired(%struct.nfs_open_context* %17, %struct.nfs4_state* %18)
  store i32 %19, i32* %7, align 4
  %20 = load %struct.nfs_open_context*, %struct.nfs_open_context** %6, align 8
  %21 = call i32 @put_nfs_open_context(%struct.nfs_open_context* %20)
  %22 = load i32, i32* %7, align 4
  store i32 %22, i32* %3, align 4
  br label %23

23:                                               ; preds = %16, %13
  %24 = load i32, i32* %3, align 4
  ret i32 %24
}

declare dso_local %struct.nfs_open_context* @nfs4_state_find_open_context(%struct.nfs4_state*) #1

declare dso_local i64 @IS_ERR(%struct.nfs_open_context*) #1

declare dso_local i32 @nfs4_do_open_expired(%struct.nfs_open_context*, %struct.nfs4_state*) #1

declare dso_local i32 @put_nfs_open_context(%struct.nfs_open_context*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

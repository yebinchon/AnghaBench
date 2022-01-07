; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/ncpfs/extr_inode.c_ncp_put_super.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/ncpfs/extr_inode.c_ncp_put_super.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.super_block = type { i32* }
%struct.ncp_server = type { i32, i32, i32, %struct.TYPE_6__, %struct.TYPE_5__, %struct.TYPE_4__, i64, i64, i32, i32 }
%struct.TYPE_6__ = type { %struct.ncp_server* }
%struct.TYPE_5__ = type { %struct.ncp_server* }
%struct.TYPE_4__ = type { i32 }

@SIGTERM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.super_block*)* @ncp_put_super to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ncp_put_super(%struct.super_block* %0) #0 {
  %2 = alloca %struct.super_block*, align 8
  %3 = alloca %struct.ncp_server*, align 8
  store %struct.super_block* %0, %struct.super_block** %2, align 8
  %4 = load %struct.super_block*, %struct.super_block** %2, align 8
  %5 = call %struct.ncp_server* @NCP_SBP(%struct.super_block* %4)
  store %struct.ncp_server* %5, %struct.ncp_server** %3, align 8
  %6 = call i32 (...) @lock_kernel()
  %7 = load %struct.ncp_server*, %struct.ncp_server** %3, align 8
  %8 = call i32 @ncp_lock_server(%struct.ncp_server* %7)
  %9 = load %struct.ncp_server*, %struct.ncp_server** %3, align 8
  %10 = call i32 @ncp_disconnect(%struct.ncp_server* %9)
  %11 = load %struct.ncp_server*, %struct.ncp_server** %3, align 8
  %12 = call i32 @ncp_unlock_server(%struct.ncp_server* %11)
  %13 = load %struct.ncp_server*, %struct.ncp_server** %3, align 8
  %14 = call i32 @ncp_stop_tasks(%struct.ncp_server* %13)
  %15 = load %struct.ncp_server*, %struct.ncp_server** %3, align 8
  %16 = getelementptr inbounds %struct.ncp_server, %struct.ncp_server* %15, i32 0, i32 7
  %17 = load i64, i64* %16, align 8
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %24

19:                                               ; preds = %1
  %20 = load %struct.ncp_server*, %struct.ncp_server** %3, align 8
  %21 = getelementptr inbounds %struct.ncp_server, %struct.ncp_server* %20, i32 0, i32 7
  %22 = load i64, i64* %21, align 8
  %23 = call i32 @fput(i64 %22)
  br label %24

24:                                               ; preds = %19, %1
  %25 = load %struct.ncp_server*, %struct.ncp_server** %3, align 8
  %26 = getelementptr inbounds %struct.ncp_server, %struct.ncp_server* %25, i32 0, i32 6
  %27 = load i64, i64* %26, align 8
  %28 = call i32 @fput(i64 %27)
  %29 = load %struct.ncp_server*, %struct.ncp_server** %3, align 8
  %30 = getelementptr inbounds %struct.ncp_server, %struct.ncp_server* %29, i32 0, i32 5
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = load i32, i32* @SIGTERM, align 4
  %34 = call i32 @kill_pid(i32 %32, i32 %33, i32 1)
  %35 = load %struct.ncp_server*, %struct.ncp_server** %3, align 8
  %36 = getelementptr inbounds %struct.ncp_server, %struct.ncp_server* %35, i32 0, i32 5
  %37 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = call i32 @put_pid(i32 %38)
  %40 = load %struct.ncp_server*, %struct.ncp_server** %3, align 8
  %41 = getelementptr inbounds %struct.ncp_server, %struct.ncp_server* %40, i32 0, i32 4
  %42 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %41, i32 0, i32 0
  %43 = load %struct.ncp_server*, %struct.ncp_server** %42, align 8
  %44 = call i32 @kfree(%struct.ncp_server* %43)
  %45 = load %struct.ncp_server*, %struct.ncp_server** %3, align 8
  %46 = getelementptr inbounds %struct.ncp_server, %struct.ncp_server* %45, i32 0, i32 3
  %47 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %46, i32 0, i32 0
  %48 = load %struct.ncp_server*, %struct.ncp_server** %47, align 8
  %49 = call i32 @kfree(%struct.ncp_server* %48)
  %50 = load %struct.ncp_server*, %struct.ncp_server** %3, align 8
  %51 = getelementptr inbounds %struct.ncp_server, %struct.ncp_server* %50, i32 0, i32 2
  %52 = load i32, i32* %51, align 8
  %53 = call i32 @vfree(i32 %52)
  %54 = load %struct.ncp_server*, %struct.ncp_server** %3, align 8
  %55 = getelementptr inbounds %struct.ncp_server, %struct.ncp_server* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 4
  %57 = call i32 @vfree(i32 %56)
  %58 = load %struct.ncp_server*, %struct.ncp_server** %3, align 8
  %59 = getelementptr inbounds %struct.ncp_server, %struct.ncp_server* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 8
  %61 = call i32 @vfree(i32 %60)
  %62 = load %struct.super_block*, %struct.super_block** %2, align 8
  %63 = getelementptr inbounds %struct.super_block, %struct.super_block* %62, i32 0, i32 0
  store i32* null, i32** %63, align 8
  %64 = load %struct.ncp_server*, %struct.ncp_server** %3, align 8
  %65 = call i32 @kfree(%struct.ncp_server* %64)
  %66 = call i32 (...) @unlock_kernel()
  ret void
}

declare dso_local %struct.ncp_server* @NCP_SBP(%struct.super_block*) #1

declare dso_local i32 @lock_kernel(...) #1

declare dso_local i32 @ncp_lock_server(%struct.ncp_server*) #1

declare dso_local i32 @ncp_disconnect(%struct.ncp_server*) #1

declare dso_local i32 @ncp_unlock_server(%struct.ncp_server*) #1

declare dso_local i32 @ncp_stop_tasks(%struct.ncp_server*) #1

declare dso_local i32 @fput(i64) #1

declare dso_local i32 @kill_pid(i32, i32, i32) #1

declare dso_local i32 @put_pid(i32) #1

declare dso_local i32 @kfree(%struct.ncp_server*) #1

declare dso_local i32 @vfree(i32) #1

declare dso_local i32 @unlock_kernel(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

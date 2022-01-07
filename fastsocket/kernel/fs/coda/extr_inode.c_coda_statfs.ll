; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/coda/extr_inode.c_coda_statfs.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/coda/extr_inode.c_coda_statfs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dentry = type { i32 }
%struct.kstatfs = type { i32, i32, i32, i32, i32, i32, i32, i32 }

@CODA_SUPER_MAGIC = common dso_local global i32 0, align 4
@CODA_MAXNAMLEN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dentry*, %struct.kstatfs*)* @coda_statfs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @coda_statfs(%struct.dentry* %0, %struct.kstatfs* %1) #0 {
  %3 = alloca %struct.dentry*, align 8
  %4 = alloca %struct.kstatfs*, align 8
  %5 = alloca i32, align 4
  store %struct.dentry* %0, %struct.dentry** %3, align 8
  store %struct.kstatfs* %1, %struct.kstatfs** %4, align 8
  %6 = call i32 (...) @lock_kernel()
  %7 = load %struct.dentry*, %struct.dentry** %3, align 8
  %8 = load %struct.kstatfs*, %struct.kstatfs** %4, align 8
  %9 = call i32 @venus_statfs(%struct.dentry* %7, %struct.kstatfs* %8)
  store i32 %9, i32* %5, align 4
  %10 = call i32 (...) @unlock_kernel()
  %11 = load i32, i32* %5, align 4
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %24

13:                                               ; preds = %2
  %14 = load %struct.kstatfs*, %struct.kstatfs** %4, align 8
  %15 = getelementptr inbounds %struct.kstatfs, %struct.kstatfs* %14, i32 0, i32 0
  store i32 9000000, i32* %15, align 4
  %16 = load %struct.kstatfs*, %struct.kstatfs** %4, align 8
  %17 = getelementptr inbounds %struct.kstatfs, %struct.kstatfs* %16, i32 0, i32 1
  store i32 9000000, i32* %17, align 4
  %18 = load %struct.kstatfs*, %struct.kstatfs** %4, align 8
  %19 = getelementptr inbounds %struct.kstatfs, %struct.kstatfs* %18, i32 0, i32 2
  store i32 9000000, i32* %19, align 4
  %20 = load %struct.kstatfs*, %struct.kstatfs** %4, align 8
  %21 = getelementptr inbounds %struct.kstatfs, %struct.kstatfs* %20, i32 0, i32 3
  store i32 9000000, i32* %21, align 4
  %22 = load %struct.kstatfs*, %struct.kstatfs** %4, align 8
  %23 = getelementptr inbounds %struct.kstatfs, %struct.kstatfs* %22, i32 0, i32 4
  store i32 9000000, i32* %23, align 4
  br label %24

24:                                               ; preds = %13, %2
  %25 = load i32, i32* @CODA_SUPER_MAGIC, align 4
  %26 = load %struct.kstatfs*, %struct.kstatfs** %4, align 8
  %27 = getelementptr inbounds %struct.kstatfs, %struct.kstatfs* %26, i32 0, i32 7
  store i32 %25, i32* %27, align 4
  %28 = load %struct.kstatfs*, %struct.kstatfs** %4, align 8
  %29 = getelementptr inbounds %struct.kstatfs, %struct.kstatfs* %28, i32 0, i32 5
  store i32 4096, i32* %29, align 4
  %30 = load i32, i32* @CODA_MAXNAMLEN, align 4
  %31 = load %struct.kstatfs*, %struct.kstatfs** %4, align 8
  %32 = getelementptr inbounds %struct.kstatfs, %struct.kstatfs* %31, i32 0, i32 6
  store i32 %30, i32* %32, align 4
  ret i32 0
}

declare dso_local i32 @lock_kernel(...) #1

declare dso_local i32 @venus_statfs(%struct.dentry*, %struct.kstatfs*) #1

declare dso_local i32 @unlock_kernel(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

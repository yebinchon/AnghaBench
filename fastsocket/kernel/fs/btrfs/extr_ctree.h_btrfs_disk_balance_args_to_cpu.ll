; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/btrfs/extr_ctree.h_btrfs_disk_balance_args_to_cpu.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/btrfs/extr_ctree.h_btrfs_disk_balance_args_to_cpu.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.btrfs_balance_args = type { i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8* }
%struct.btrfs_disk_balance_args = type { i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.btrfs_balance_args*, %struct.btrfs_disk_balance_args*)* @btrfs_disk_balance_args_to_cpu to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @btrfs_disk_balance_args_to_cpu(%struct.btrfs_balance_args* %0, %struct.btrfs_disk_balance_args* %1) #0 {
  %3 = alloca %struct.btrfs_balance_args*, align 8
  %4 = alloca %struct.btrfs_disk_balance_args*, align 8
  store %struct.btrfs_balance_args* %0, %struct.btrfs_balance_args** %3, align 8
  store %struct.btrfs_disk_balance_args* %1, %struct.btrfs_disk_balance_args** %4, align 8
  %5 = load %struct.btrfs_balance_args*, %struct.btrfs_balance_args** %3, align 8
  %6 = call i32 @memset(%struct.btrfs_balance_args* %5, i32 0, i32 72)
  %7 = load %struct.btrfs_disk_balance_args*, %struct.btrfs_disk_balance_args** %4, align 8
  %8 = getelementptr inbounds %struct.btrfs_disk_balance_args, %struct.btrfs_disk_balance_args* %7, i32 0, i32 8
  %9 = load i32, i32* %8, align 4
  %10 = call i8* @le64_to_cpu(i32 %9)
  %11 = load %struct.btrfs_balance_args*, %struct.btrfs_balance_args** %3, align 8
  %12 = getelementptr inbounds %struct.btrfs_balance_args, %struct.btrfs_balance_args* %11, i32 0, i32 8
  store i8* %10, i8** %12, align 8
  %13 = load %struct.btrfs_disk_balance_args*, %struct.btrfs_disk_balance_args** %4, align 8
  %14 = getelementptr inbounds %struct.btrfs_disk_balance_args, %struct.btrfs_disk_balance_args* %13, i32 0, i32 7
  %15 = load i32, i32* %14, align 4
  %16 = call i8* @le64_to_cpu(i32 %15)
  %17 = load %struct.btrfs_balance_args*, %struct.btrfs_balance_args** %3, align 8
  %18 = getelementptr inbounds %struct.btrfs_balance_args, %struct.btrfs_balance_args* %17, i32 0, i32 7
  store i8* %16, i8** %18, align 8
  %19 = load %struct.btrfs_disk_balance_args*, %struct.btrfs_disk_balance_args** %4, align 8
  %20 = getelementptr inbounds %struct.btrfs_disk_balance_args, %struct.btrfs_disk_balance_args* %19, i32 0, i32 6
  %21 = load i32, i32* %20, align 4
  %22 = call i8* @le64_to_cpu(i32 %21)
  %23 = load %struct.btrfs_balance_args*, %struct.btrfs_balance_args** %3, align 8
  %24 = getelementptr inbounds %struct.btrfs_balance_args, %struct.btrfs_balance_args* %23, i32 0, i32 6
  store i8* %22, i8** %24, align 8
  %25 = load %struct.btrfs_disk_balance_args*, %struct.btrfs_disk_balance_args** %4, align 8
  %26 = getelementptr inbounds %struct.btrfs_disk_balance_args, %struct.btrfs_disk_balance_args* %25, i32 0, i32 5
  %27 = load i32, i32* %26, align 4
  %28 = call i8* @le64_to_cpu(i32 %27)
  %29 = load %struct.btrfs_balance_args*, %struct.btrfs_balance_args** %3, align 8
  %30 = getelementptr inbounds %struct.btrfs_balance_args, %struct.btrfs_balance_args* %29, i32 0, i32 5
  store i8* %28, i8** %30, align 8
  %31 = load %struct.btrfs_disk_balance_args*, %struct.btrfs_disk_balance_args** %4, align 8
  %32 = getelementptr inbounds %struct.btrfs_disk_balance_args, %struct.btrfs_disk_balance_args* %31, i32 0, i32 4
  %33 = load i32, i32* %32, align 4
  %34 = call i8* @le64_to_cpu(i32 %33)
  %35 = load %struct.btrfs_balance_args*, %struct.btrfs_balance_args** %3, align 8
  %36 = getelementptr inbounds %struct.btrfs_balance_args, %struct.btrfs_balance_args* %35, i32 0, i32 4
  store i8* %34, i8** %36, align 8
  %37 = load %struct.btrfs_disk_balance_args*, %struct.btrfs_disk_balance_args** %4, align 8
  %38 = getelementptr inbounds %struct.btrfs_disk_balance_args, %struct.btrfs_disk_balance_args* %37, i32 0, i32 3
  %39 = load i32, i32* %38, align 4
  %40 = call i8* @le64_to_cpu(i32 %39)
  %41 = load %struct.btrfs_balance_args*, %struct.btrfs_balance_args** %3, align 8
  %42 = getelementptr inbounds %struct.btrfs_balance_args, %struct.btrfs_balance_args* %41, i32 0, i32 3
  store i8* %40, i8** %42, align 8
  %43 = load %struct.btrfs_disk_balance_args*, %struct.btrfs_disk_balance_args** %4, align 8
  %44 = getelementptr inbounds %struct.btrfs_disk_balance_args, %struct.btrfs_disk_balance_args* %43, i32 0, i32 2
  %45 = load i32, i32* %44, align 4
  %46 = call i8* @le64_to_cpu(i32 %45)
  %47 = load %struct.btrfs_balance_args*, %struct.btrfs_balance_args** %3, align 8
  %48 = getelementptr inbounds %struct.btrfs_balance_args, %struct.btrfs_balance_args* %47, i32 0, i32 2
  store i8* %46, i8** %48, align 8
  %49 = load %struct.btrfs_disk_balance_args*, %struct.btrfs_disk_balance_args** %4, align 8
  %50 = getelementptr inbounds %struct.btrfs_disk_balance_args, %struct.btrfs_disk_balance_args* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 4
  %52 = call i8* @le64_to_cpu(i32 %51)
  %53 = load %struct.btrfs_balance_args*, %struct.btrfs_balance_args** %3, align 8
  %54 = getelementptr inbounds %struct.btrfs_balance_args, %struct.btrfs_balance_args* %53, i32 0, i32 1
  store i8* %52, i8** %54, align 8
  %55 = load %struct.btrfs_disk_balance_args*, %struct.btrfs_disk_balance_args** %4, align 8
  %56 = getelementptr inbounds %struct.btrfs_disk_balance_args, %struct.btrfs_disk_balance_args* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = call i8* @le64_to_cpu(i32 %57)
  %59 = load %struct.btrfs_balance_args*, %struct.btrfs_balance_args** %3, align 8
  %60 = getelementptr inbounds %struct.btrfs_balance_args, %struct.btrfs_balance_args* %59, i32 0, i32 0
  store i8* %58, i8** %60, align 8
  ret void
}

declare dso_local i32 @memset(%struct.btrfs_balance_args*, i32, i32) #1

declare dso_local i8* @le64_to_cpu(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

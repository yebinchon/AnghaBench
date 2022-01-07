; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/nfsd/extr_state.h_find_any_file.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/nfsd/extr_state.h_find_any_file.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { i32 }
%struct.nfs4_file = type { %struct.file** }

@O_RDWR = common dso_local global i64 0, align 8
@O_WRONLY = common dso_local global i64 0, align 8
@O_RDONLY = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.file* (%struct.nfs4_file*)* @find_any_file to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.file* @find_any_file(%struct.nfs4_file* %0) #0 {
  %2 = alloca %struct.file*, align 8
  %3 = alloca %struct.nfs4_file*, align 8
  store %struct.nfs4_file* %0, %struct.nfs4_file** %3, align 8
  %4 = load %struct.nfs4_file*, %struct.nfs4_file** %3, align 8
  %5 = getelementptr inbounds %struct.nfs4_file, %struct.nfs4_file* %4, i32 0, i32 0
  %6 = load %struct.file**, %struct.file*** %5, align 8
  %7 = load i64, i64* @O_RDWR, align 8
  %8 = getelementptr inbounds %struct.file*, %struct.file** %6, i64 %7
  %9 = load %struct.file*, %struct.file** %8, align 8
  %10 = icmp ne %struct.file* %9, null
  br i1 %10, label %11, label %18

11:                                               ; preds = %1
  %12 = load %struct.nfs4_file*, %struct.nfs4_file** %3, align 8
  %13 = getelementptr inbounds %struct.nfs4_file, %struct.nfs4_file* %12, i32 0, i32 0
  %14 = load %struct.file**, %struct.file*** %13, align 8
  %15 = load i64, i64* @O_RDWR, align 8
  %16 = getelementptr inbounds %struct.file*, %struct.file** %14, i64 %15
  %17 = load %struct.file*, %struct.file** %16, align 8
  store %struct.file* %17, %struct.file** %2, align 8
  br label %40

18:                                               ; preds = %1
  %19 = load %struct.nfs4_file*, %struct.nfs4_file** %3, align 8
  %20 = getelementptr inbounds %struct.nfs4_file, %struct.nfs4_file* %19, i32 0, i32 0
  %21 = load %struct.file**, %struct.file*** %20, align 8
  %22 = load i64, i64* @O_WRONLY, align 8
  %23 = getelementptr inbounds %struct.file*, %struct.file** %21, i64 %22
  %24 = load %struct.file*, %struct.file** %23, align 8
  %25 = icmp ne %struct.file* %24, null
  br i1 %25, label %26, label %33

26:                                               ; preds = %18
  %27 = load %struct.nfs4_file*, %struct.nfs4_file** %3, align 8
  %28 = getelementptr inbounds %struct.nfs4_file, %struct.nfs4_file* %27, i32 0, i32 0
  %29 = load %struct.file**, %struct.file*** %28, align 8
  %30 = load i64, i64* @O_WRONLY, align 8
  %31 = getelementptr inbounds %struct.file*, %struct.file** %29, i64 %30
  %32 = load %struct.file*, %struct.file** %31, align 8
  store %struct.file* %32, %struct.file** %2, align 8
  br label %40

33:                                               ; preds = %18
  %34 = load %struct.nfs4_file*, %struct.nfs4_file** %3, align 8
  %35 = getelementptr inbounds %struct.nfs4_file, %struct.nfs4_file* %34, i32 0, i32 0
  %36 = load %struct.file**, %struct.file*** %35, align 8
  %37 = load i64, i64* @O_RDONLY, align 8
  %38 = getelementptr inbounds %struct.file*, %struct.file** %36, i64 %37
  %39 = load %struct.file*, %struct.file** %38, align 8
  store %struct.file* %39, %struct.file** %2, align 8
  br label %40

40:                                               ; preds = %33, %26, %11
  %41 = load %struct.file*, %struct.file** %2, align 8
  ret %struct.file* %41
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

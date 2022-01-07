; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/nfs/extr_dir.c_nfs_access_set_mask.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/nfs/extr_dir.c_nfs_access_set_mask.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nfs_access_entry = type { i32 }

@NFS4_ACCESS_READ = common dso_local global i32 0, align 4
@MAY_READ = common dso_local global i32 0, align 4
@NFS4_ACCESS_MODIFY = common dso_local global i32 0, align 4
@NFS4_ACCESS_EXTEND = common dso_local global i32 0, align 4
@NFS4_ACCESS_DELETE = common dso_local global i32 0, align 4
@MAY_WRITE = common dso_local global i32 0, align 4
@NFS4_ACCESS_LOOKUP = common dso_local global i32 0, align 4
@NFS4_ACCESS_EXECUTE = common dso_local global i32 0, align 4
@MAY_EXEC = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @nfs_access_set_mask(%struct.nfs_access_entry* %0, i32 %1) #0 {
  %3 = alloca %struct.nfs_access_entry*, align 8
  %4 = alloca i32, align 4
  store %struct.nfs_access_entry* %0, %struct.nfs_access_entry** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load %struct.nfs_access_entry*, %struct.nfs_access_entry** %3, align 8
  %6 = getelementptr inbounds %struct.nfs_access_entry, %struct.nfs_access_entry* %5, i32 0, i32 0
  store i32 0, i32* %6, align 4
  %7 = load i32, i32* %4, align 4
  %8 = load i32, i32* @NFS4_ACCESS_READ, align 4
  %9 = and i32 %7, %8
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %11, label %17

11:                                               ; preds = %2
  %12 = load i32, i32* @MAY_READ, align 4
  %13 = load %struct.nfs_access_entry*, %struct.nfs_access_entry** %3, align 8
  %14 = getelementptr inbounds %struct.nfs_access_entry, %struct.nfs_access_entry* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = or i32 %15, %12
  store i32 %16, i32* %14, align 4
  br label %17

17:                                               ; preds = %11, %2
  %18 = load i32, i32* %4, align 4
  %19 = load i32, i32* @NFS4_ACCESS_MODIFY, align 4
  %20 = load i32, i32* @NFS4_ACCESS_EXTEND, align 4
  %21 = or i32 %19, %20
  %22 = load i32, i32* @NFS4_ACCESS_DELETE, align 4
  %23 = or i32 %21, %22
  %24 = and i32 %18, %23
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %32

26:                                               ; preds = %17
  %27 = load i32, i32* @MAY_WRITE, align 4
  %28 = load %struct.nfs_access_entry*, %struct.nfs_access_entry** %3, align 8
  %29 = getelementptr inbounds %struct.nfs_access_entry, %struct.nfs_access_entry* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = or i32 %30, %27
  store i32 %31, i32* %29, align 4
  br label %32

32:                                               ; preds = %26, %17
  %33 = load i32, i32* %4, align 4
  %34 = load i32, i32* @NFS4_ACCESS_LOOKUP, align 4
  %35 = load i32, i32* @NFS4_ACCESS_EXECUTE, align 4
  %36 = or i32 %34, %35
  %37 = and i32 %33, %36
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %45

39:                                               ; preds = %32
  %40 = load i32, i32* @MAY_EXEC, align 4
  %41 = load %struct.nfs_access_entry*, %struct.nfs_access_entry** %3, align 8
  %42 = getelementptr inbounds %struct.nfs_access_entry, %struct.nfs_access_entry* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = or i32 %43, %40
  store i32 %44, i32* %42, align 4
  br label %45

45:                                               ; preds = %39, %32
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

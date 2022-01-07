; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/mm/extr_shmem_acl.c_shmem_set_acl.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/mm/extr_shmem_acl.c_shmem_set_acl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32, %struct.posix_acl*, %struct.posix_acl* }
%struct.posix_acl = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.inode*, i32, %struct.posix_acl*)* @shmem_set_acl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @shmem_set_acl(%struct.inode* %0, i32 %1, %struct.posix_acl* %2) #0 {
  %4 = alloca %struct.inode*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.posix_acl*, align 8
  %7 = alloca %struct.posix_acl*, align 8
  store %struct.inode* %0, %struct.inode** %4, align 8
  store i32 %1, i32* %5, align 4
  store %struct.posix_acl* %2, %struct.posix_acl** %6, align 8
  store %struct.posix_acl* null, %struct.posix_acl** %7, align 8
  %8 = load %struct.inode*, %struct.inode** %4, align 8
  %9 = getelementptr inbounds %struct.inode, %struct.inode* %8, i32 0, i32 0
  %10 = call i32 @spin_lock(i32* %9)
  %11 = load i32, i32* %5, align 4
  switch i32 %11, label %30 [
    i32 129, label %12
    i32 128, label %21
  ]

12:                                               ; preds = %3
  %13 = load %struct.inode*, %struct.inode** %4, align 8
  %14 = getelementptr inbounds %struct.inode, %struct.inode* %13, i32 0, i32 2
  %15 = load %struct.posix_acl*, %struct.posix_acl** %14, align 8
  store %struct.posix_acl* %15, %struct.posix_acl** %7, align 8
  %16 = load %struct.posix_acl*, %struct.posix_acl** %6, align 8
  %17 = call i8* @posix_acl_dup(%struct.posix_acl* %16)
  %18 = bitcast i8* %17 to %struct.posix_acl*
  %19 = load %struct.inode*, %struct.inode** %4, align 8
  %20 = getelementptr inbounds %struct.inode, %struct.inode* %19, i32 0, i32 2
  store %struct.posix_acl* %18, %struct.posix_acl** %20, align 8
  br label %30

21:                                               ; preds = %3
  %22 = load %struct.inode*, %struct.inode** %4, align 8
  %23 = getelementptr inbounds %struct.inode, %struct.inode* %22, i32 0, i32 1
  %24 = load %struct.posix_acl*, %struct.posix_acl** %23, align 8
  store %struct.posix_acl* %24, %struct.posix_acl** %7, align 8
  %25 = load %struct.posix_acl*, %struct.posix_acl** %6, align 8
  %26 = call i8* @posix_acl_dup(%struct.posix_acl* %25)
  %27 = bitcast i8* %26 to %struct.posix_acl*
  %28 = load %struct.inode*, %struct.inode** %4, align 8
  %29 = getelementptr inbounds %struct.inode, %struct.inode* %28, i32 0, i32 1
  store %struct.posix_acl* %27, %struct.posix_acl** %29, align 8
  br label %30

30:                                               ; preds = %3, %21, %12
  %31 = load %struct.inode*, %struct.inode** %4, align 8
  %32 = getelementptr inbounds %struct.inode, %struct.inode* %31, i32 0, i32 0
  %33 = call i32 @spin_unlock(i32* %32)
  %34 = load %struct.posix_acl*, %struct.posix_acl** %7, align 8
  %35 = call i32 @posix_acl_release(%struct.posix_acl* %34)
  ret void
}

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i8* @posix_acl_dup(%struct.posix_acl*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @posix_acl_release(%struct.posix_acl*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

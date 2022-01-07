; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/mm/extr_shmem_acl.c_shmem_get_acl.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/mm/extr_shmem_acl.c_shmem_get_acl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.posix_acl = type { i32 }
%struct.inode = type { i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.posix_acl* (%struct.inode*, i32)* @shmem_get_acl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.posix_acl* @shmem_get_acl(%struct.inode* %0, i32 %1) #0 {
  %3 = alloca %struct.inode*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.posix_acl*, align 8
  store %struct.inode* %0, %struct.inode** %3, align 8
  store i32 %1, i32* %4, align 4
  store %struct.posix_acl* null, %struct.posix_acl** %5, align 8
  %6 = load %struct.inode*, %struct.inode** %3, align 8
  %7 = getelementptr inbounds %struct.inode, %struct.inode* %6, i32 0, i32 0
  %8 = call i32 @spin_lock(i32* %7)
  %9 = load i32, i32* %4, align 4
  switch i32 %9, label %20 [
    i32 129, label %10
    i32 128, label %15
  ]

10:                                               ; preds = %2
  %11 = load %struct.inode*, %struct.inode** %3, align 8
  %12 = getelementptr inbounds %struct.inode, %struct.inode* %11, i32 0, i32 2
  %13 = load i32, i32* %12, align 4
  %14 = call %struct.posix_acl* @posix_acl_dup(i32 %13)
  store %struct.posix_acl* %14, %struct.posix_acl** %5, align 8
  br label %20

15:                                               ; preds = %2
  %16 = load %struct.inode*, %struct.inode** %3, align 8
  %17 = getelementptr inbounds %struct.inode, %struct.inode* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  %19 = call %struct.posix_acl* @posix_acl_dup(i32 %18)
  store %struct.posix_acl* %19, %struct.posix_acl** %5, align 8
  br label %20

20:                                               ; preds = %2, %15, %10
  %21 = load %struct.inode*, %struct.inode** %3, align 8
  %22 = getelementptr inbounds %struct.inode, %struct.inode* %21, i32 0, i32 0
  %23 = call i32 @spin_unlock(i32* %22)
  %24 = load %struct.posix_acl*, %struct.posix_acl** %5, align 8
  ret %struct.posix_acl* %24
}

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local %struct.posix_acl* @posix_acl_dup(i32) #1

declare dso_local i32 @spin_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

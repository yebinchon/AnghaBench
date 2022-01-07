; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/ocfs2/dlm/extr_dlmrecovery.c_dlm_list_num_to_pointer.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/ocfs2/dlm/extr_dlmrecovery.c_dlm_list_num_to_pointer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.list_head = type { i32 }
%struct.dlm_lock_resource = type { %struct.list_head }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.list_head* (%struct.dlm_lock_resource*, i32)* @dlm_list_num_to_pointer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.list_head* @dlm_list_num_to_pointer(%struct.dlm_lock_resource* %0, i32 %1) #0 {
  %3 = alloca %struct.dlm_lock_resource*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.list_head*, align 8
  store %struct.dlm_lock_resource* %0, %struct.dlm_lock_resource** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load i32, i32* %4, align 4
  %7 = icmp slt i32 %6, 0
  %8 = zext i1 %7 to i32
  %9 = call i32 @BUG_ON(i32 %8)
  %10 = load i32, i32* %4, align 4
  %11 = icmp sgt i32 %10, 2
  %12 = zext i1 %11 to i32
  %13 = call i32 @BUG_ON(i32 %12)
  %14 = load %struct.dlm_lock_resource*, %struct.dlm_lock_resource** %3, align 8
  %15 = getelementptr inbounds %struct.dlm_lock_resource, %struct.dlm_lock_resource* %14, i32 0, i32 0
  store %struct.list_head* %15, %struct.list_head** %5, align 8
  %16 = load i32, i32* %4, align 4
  %17 = load %struct.list_head*, %struct.list_head** %5, align 8
  %18 = sext i32 %16 to i64
  %19 = getelementptr inbounds %struct.list_head, %struct.list_head* %17, i64 %18
  store %struct.list_head* %19, %struct.list_head** %5, align 8
  %20 = load %struct.list_head*, %struct.list_head** %5, align 8
  ret %struct.list_head* %20
}

declare dso_local i32 @BUG_ON(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/nilfs2/extr_recovery.c_nilfs_segment_list_add.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/nilfs2/extr_recovery.c_nilfs_segment_list_add.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.list_head = type { i32 }
%struct.nilfs_segment_entry = type { i32, i32 }

@GFP_NOFS = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.list_head*, i32)* @nilfs_segment_list_add to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nilfs_segment_list_add(%struct.list_head* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.list_head*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.nilfs_segment_entry*, align 8
  store %struct.list_head* %0, %struct.list_head** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load i32, i32* @GFP_NOFS, align 4
  %8 = call %struct.nilfs_segment_entry* @kmalloc(i32 8, i32 %7)
  store %struct.nilfs_segment_entry* %8, %struct.nilfs_segment_entry** %6, align 8
  %9 = load %struct.nilfs_segment_entry*, %struct.nilfs_segment_entry** %6, align 8
  %10 = icmp ne %struct.nilfs_segment_entry* %9, null
  %11 = xor i1 %10, true
  %12 = zext i1 %11 to i32
  %13 = call i64 @unlikely(i32 %12)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %18

15:                                               ; preds = %2
  %16 = load i32, i32* @ENOMEM, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %3, align 4
  br label %29

18:                                               ; preds = %2
  %19 = load i32, i32* %5, align 4
  %20 = load %struct.nilfs_segment_entry*, %struct.nilfs_segment_entry** %6, align 8
  %21 = getelementptr inbounds %struct.nilfs_segment_entry, %struct.nilfs_segment_entry* %20, i32 0, i32 1
  store i32 %19, i32* %21, align 4
  %22 = load %struct.nilfs_segment_entry*, %struct.nilfs_segment_entry** %6, align 8
  %23 = getelementptr inbounds %struct.nilfs_segment_entry, %struct.nilfs_segment_entry* %22, i32 0, i32 0
  %24 = call i32 @INIT_LIST_HEAD(i32* %23)
  %25 = load %struct.nilfs_segment_entry*, %struct.nilfs_segment_entry** %6, align 8
  %26 = getelementptr inbounds %struct.nilfs_segment_entry, %struct.nilfs_segment_entry* %25, i32 0, i32 0
  %27 = load %struct.list_head*, %struct.list_head** %4, align 8
  %28 = call i32 @list_add_tail(i32* %26, %struct.list_head* %27)
  store i32 0, i32* %3, align 4
  br label %29

29:                                               ; preds = %18, %15
  %30 = load i32, i32* %3, align 4
  ret i32 %30
}

declare dso_local %struct.nilfs_segment_entry* @kmalloc(i32, i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @list_add_tail(i32*, %struct.list_head*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

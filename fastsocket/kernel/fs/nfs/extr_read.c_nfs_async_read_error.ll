; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/nfs/extr_read.c_nfs_async_read_error.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/nfs/extr_read.c_nfs_async_read_error.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.list_head = type { i32 }
%struct.nfs_page = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.list_head*)* @nfs_async_read_error to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nfs_async_read_error(%struct.list_head* %0) #0 {
  %2 = alloca %struct.list_head*, align 8
  %3 = alloca %struct.nfs_page*, align 8
  store %struct.list_head* %0, %struct.list_head** %2, align 8
  br label %4

4:                                                ; preds = %9, %1
  %5 = load %struct.list_head*, %struct.list_head** %2, align 8
  %6 = call i32 @list_empty(%struct.list_head* %5)
  %7 = icmp ne i32 %6, 0
  %8 = xor i1 %7, true
  br i1 %8, label %9, label %18

9:                                                ; preds = %4
  %10 = load %struct.list_head*, %struct.list_head** %2, align 8
  %11 = getelementptr inbounds %struct.list_head, %struct.list_head* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = call %struct.nfs_page* @nfs_list_entry(i32 %12)
  store %struct.nfs_page* %13, %struct.nfs_page** %3, align 8
  %14 = load %struct.nfs_page*, %struct.nfs_page** %3, align 8
  %15 = call i32 @nfs_list_remove_request(%struct.nfs_page* %14)
  %16 = load %struct.nfs_page*, %struct.nfs_page** %3, align 8
  %17 = call i32 @nfs_readpage_release(%struct.nfs_page* %16)
  br label %4

18:                                               ; preds = %4
  ret void
}

declare dso_local i32 @list_empty(%struct.list_head*) #1

declare dso_local %struct.nfs_page* @nfs_list_entry(i32) #1

declare dso_local i32 @nfs_list_remove_request(%struct.nfs_page*) #1

declare dso_local i32 @nfs_readpage_release(%struct.nfs_page*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/kernel/extr_cgroup.c_allocate_cg_links.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/kernel/extr_cgroup.c_allocate_cg_links.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.list_head = type { i32 }
%struct.cg_cgroup_link = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, %struct.list_head*)* @allocate_cg_links to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @allocate_cg_links(i32 %0, %struct.list_head* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.list_head*, align 8
  %6 = alloca %struct.cg_cgroup_link*, align 8
  %7 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store %struct.list_head* %1, %struct.list_head** %5, align 8
  %8 = load %struct.list_head*, %struct.list_head** %5, align 8
  %9 = call i32 @INIT_LIST_HEAD(%struct.list_head* %8)
  store i32 0, i32* %7, align 4
  br label %10

10:                                               ; preds = %29, %2
  %11 = load i32, i32* %7, align 4
  %12 = load i32, i32* %4, align 4
  %13 = icmp slt i32 %11, %12
  br i1 %13, label %14, label %32

14:                                               ; preds = %10
  %15 = load i32, i32* @GFP_KERNEL, align 4
  %16 = call %struct.cg_cgroup_link* @kmalloc(i32 4, i32 %15)
  store %struct.cg_cgroup_link* %16, %struct.cg_cgroup_link** %6, align 8
  %17 = load %struct.cg_cgroup_link*, %struct.cg_cgroup_link** %6, align 8
  %18 = icmp ne %struct.cg_cgroup_link* %17, null
  br i1 %18, label %24, label %19

19:                                               ; preds = %14
  %20 = load %struct.list_head*, %struct.list_head** %5, align 8
  %21 = call i32 @free_cg_links(%struct.list_head* %20)
  %22 = load i32, i32* @ENOMEM, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %3, align 4
  br label %33

24:                                               ; preds = %14
  %25 = load %struct.cg_cgroup_link*, %struct.cg_cgroup_link** %6, align 8
  %26 = getelementptr inbounds %struct.cg_cgroup_link, %struct.cg_cgroup_link* %25, i32 0, i32 0
  %27 = load %struct.list_head*, %struct.list_head** %5, align 8
  %28 = call i32 @list_add(i32* %26, %struct.list_head* %27)
  br label %29

29:                                               ; preds = %24
  %30 = load i32, i32* %7, align 4
  %31 = add nsw i32 %30, 1
  store i32 %31, i32* %7, align 4
  br label %10

32:                                               ; preds = %10
  store i32 0, i32* %3, align 4
  br label %33

33:                                               ; preds = %32, %19
  %34 = load i32, i32* %3, align 4
  ret i32 %34
}

declare dso_local i32 @INIT_LIST_HEAD(%struct.list_head*) #1

declare dso_local %struct.cg_cgroup_link* @kmalloc(i32, i32) #1

declare dso_local i32 @free_cg_links(%struct.list_head*) #1

declare dso_local i32 @list_add(i32*, %struct.list_head*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

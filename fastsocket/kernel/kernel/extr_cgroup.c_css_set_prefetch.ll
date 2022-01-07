; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/kernel/extr_cgroup.c_css_set_prefetch.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/kernel/extr_cgroup.c_css_set_prefetch.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cgroup = type { i32 }
%struct.css_set = type { i32 }
%struct.list_head = type { i32 }
%struct.cg_list_entry = type { i32, %struct.css_set* }

@ENOMEM = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cgroup*, %struct.css_set*, %struct.list_head*)* @css_set_prefetch to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @css_set_prefetch(%struct.cgroup* %0, %struct.css_set* %1, %struct.list_head* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.cgroup*, align 8
  %6 = alloca %struct.css_set*, align 8
  %7 = alloca %struct.list_head*, align 8
  %8 = alloca %struct.css_set*, align 8
  %9 = alloca %struct.cg_list_entry*, align 8
  store %struct.cgroup* %0, %struct.cgroup** %5, align 8
  store %struct.css_set* %1, %struct.css_set** %6, align 8
  store %struct.list_head* %2, %struct.list_head** %7, align 8
  %10 = load %struct.css_set*, %struct.css_set** %6, align 8
  %11 = load %struct.cgroup*, %struct.cgroup** %5, align 8
  %12 = call %struct.css_set* @find_css_set(%struct.css_set* %10, %struct.cgroup* %11)
  store %struct.css_set* %12, %struct.css_set** %8, align 8
  %13 = load %struct.css_set*, %struct.css_set** %8, align 8
  %14 = icmp ne %struct.css_set* %13, null
  br i1 %14, label %18, label %15

15:                                               ; preds = %3
  %16 = load i32, i32* @ENOMEM, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %4, align 4
  br label %36

18:                                               ; preds = %3
  %19 = load i32, i32* @GFP_KERNEL, align 4
  %20 = call %struct.cg_list_entry* @kmalloc(i32 16, i32 %19)
  store %struct.cg_list_entry* %20, %struct.cg_list_entry** %9, align 8
  %21 = load %struct.cg_list_entry*, %struct.cg_list_entry** %9, align 8
  %22 = icmp ne %struct.cg_list_entry* %21, null
  br i1 %22, label %28, label %23

23:                                               ; preds = %18
  %24 = load %struct.css_set*, %struct.css_set** %8, align 8
  %25 = call i32 @put_css_set(%struct.css_set* %24)
  %26 = load i32, i32* @ENOMEM, align 4
  %27 = sub nsw i32 0, %26
  store i32 %27, i32* %4, align 4
  br label %36

28:                                               ; preds = %18
  %29 = load %struct.css_set*, %struct.css_set** %8, align 8
  %30 = load %struct.cg_list_entry*, %struct.cg_list_entry** %9, align 8
  %31 = getelementptr inbounds %struct.cg_list_entry, %struct.cg_list_entry* %30, i32 0, i32 1
  store %struct.css_set* %29, %struct.css_set** %31, align 8
  %32 = load %struct.cg_list_entry*, %struct.cg_list_entry** %9, align 8
  %33 = getelementptr inbounds %struct.cg_list_entry, %struct.cg_list_entry* %32, i32 0, i32 0
  %34 = load %struct.list_head*, %struct.list_head** %7, align 8
  %35 = call i32 @list_add(i32* %33, %struct.list_head* %34)
  store i32 0, i32* %4, align 4
  br label %36

36:                                               ; preds = %28, %23, %15
  %37 = load i32, i32* %4, align 4
  ret i32 %37
}

declare dso_local %struct.css_set* @find_css_set(%struct.css_set*, %struct.cgroup*) #1

declare dso_local %struct.cg_list_entry* @kmalloc(i32, i32) #1

declare dso_local i32 @put_css_set(%struct.css_set*) #1

declare dso_local i32 @list_add(i32*, %struct.list_head*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

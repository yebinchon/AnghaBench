; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/mm/extr_memcontrol.c_mem_cgroup_write.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/mm/extr_memcontrol.c_mem_cgroup_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cgroup = type { i32 }
%struct.cftype = type { i32 }
%struct.mem_cgroup = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@_MEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cgroup*, %struct.cftype*, i8*)* @mem_cgroup_write to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mem_cgroup_write(%struct.cgroup* %0, %struct.cftype* %1, i8* %2) #0 {
  %4 = alloca %struct.cgroup*, align 8
  %5 = alloca %struct.cftype*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.mem_cgroup*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  store %struct.cgroup* %0, %struct.cgroup** %4, align 8
  store %struct.cftype* %1, %struct.cftype** %5, align 8
  store i8* %2, i8** %6, align 8
  %12 = load %struct.cgroup*, %struct.cgroup** %4, align 8
  %13 = call %struct.mem_cgroup* @mem_cgroup_from_cont(%struct.cgroup* %12)
  store %struct.mem_cgroup* %13, %struct.mem_cgroup** %7, align 8
  %14 = load %struct.cftype*, %struct.cftype** %5, align 8
  %15 = getelementptr inbounds %struct.cftype, %struct.cftype* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = call i32 @MEMFILE_TYPE(i32 %16)
  store i32 %17, i32* %8, align 4
  %18 = load %struct.cftype*, %struct.cftype** %5, align 8
  %19 = getelementptr inbounds %struct.cftype, %struct.cftype* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = call i32 @MEMFILE_ATTR(i32 %20)
  store i32 %21, i32* %9, align 4
  %22 = load i32, i32* %9, align 4
  switch i32 %22, label %68 [
    i32 129, label %23
    i32 128, label %49
  ]

23:                                               ; preds = %3
  %24 = load %struct.mem_cgroup*, %struct.mem_cgroup** %7, align 8
  %25 = call i32 @mem_cgroup_is_root(%struct.mem_cgroup* %24)
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %30

27:                                               ; preds = %23
  %28 = load i32, i32* @EINVAL, align 4
  %29 = sub nsw i32 0, %28
  store i32 %29, i32* %11, align 4
  br label %71

30:                                               ; preds = %23
  %31 = load i8*, i8** %6, align 8
  %32 = call i32 @res_counter_memparse_write_strategy(i8* %31, i64* %10)
  store i32 %32, i32* %11, align 4
  %33 = load i32, i32* %11, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %36

35:                                               ; preds = %30
  br label %71

36:                                               ; preds = %30
  %37 = load i32, i32* %8, align 4
  %38 = load i32, i32* @_MEM, align 4
  %39 = icmp eq i32 %37, %38
  br i1 %39, label %40, label %44

40:                                               ; preds = %36
  %41 = load %struct.mem_cgroup*, %struct.mem_cgroup** %7, align 8
  %42 = load i64, i64* %10, align 8
  %43 = call i32 @mem_cgroup_resize_limit(%struct.mem_cgroup* %41, i64 %42)
  store i32 %43, i32* %11, align 4
  br label %48

44:                                               ; preds = %36
  %45 = load %struct.mem_cgroup*, %struct.mem_cgroup** %7, align 8
  %46 = load i64, i64* %10, align 8
  %47 = call i32 @mem_cgroup_resize_memsw_limit(%struct.mem_cgroup* %45, i64 %46)
  store i32 %47, i32* %11, align 4
  br label %48

48:                                               ; preds = %44, %40
  br label %71

49:                                               ; preds = %3
  %50 = load i8*, i8** %6, align 8
  %51 = call i32 @res_counter_memparse_write_strategy(i8* %50, i64* %10)
  store i32 %51, i32* %11, align 4
  %52 = load i32, i32* %11, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %55

54:                                               ; preds = %49
  br label %71

55:                                               ; preds = %49
  %56 = load i32, i32* %8, align 4
  %57 = load i32, i32* @_MEM, align 4
  %58 = icmp eq i32 %56, %57
  br i1 %58, label %59, label %64

59:                                               ; preds = %55
  %60 = load %struct.mem_cgroup*, %struct.mem_cgroup** %7, align 8
  %61 = getelementptr inbounds %struct.mem_cgroup, %struct.mem_cgroup* %60, i32 0, i32 0
  %62 = load i64, i64* %10, align 8
  %63 = call i32 @res_counter_set_soft_limit(i32* %61, i64 %62)
  store i32 %63, i32* %11, align 4
  br label %67

64:                                               ; preds = %55
  %65 = load i32, i32* @EINVAL, align 4
  %66 = sub nsw i32 0, %65
  store i32 %66, i32* %11, align 4
  br label %67

67:                                               ; preds = %64, %59
  br label %71

68:                                               ; preds = %3
  %69 = load i32, i32* @EINVAL, align 4
  %70 = sub nsw i32 0, %69
  store i32 %70, i32* %11, align 4
  br label %71

71:                                               ; preds = %68, %67, %54, %48, %35, %27
  %72 = load i32, i32* %11, align 4
  ret i32 %72
}

declare dso_local %struct.mem_cgroup* @mem_cgroup_from_cont(%struct.cgroup*) #1

declare dso_local i32 @MEMFILE_TYPE(i32) #1

declare dso_local i32 @MEMFILE_ATTR(i32) #1

declare dso_local i32 @mem_cgroup_is_root(%struct.mem_cgroup*) #1

declare dso_local i32 @res_counter_memparse_write_strategy(i8*, i64*) #1

declare dso_local i32 @mem_cgroup_resize_limit(%struct.mem_cgroup*, i64) #1

declare dso_local i32 @mem_cgroup_resize_memsw_limit(%struct.mem_cgroup*, i64) #1

declare dso_local i32 @res_counter_set_soft_limit(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

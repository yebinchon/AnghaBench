; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/pohmelfs/extr_config.c_pohmelfs_find_create_config_group.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/pohmelfs/extr_config.c_pohmelfs_find_create_config_group.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pohmelfs_config_group = type { i32, i32, i64, i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@pohmelfs_config_list = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.pohmelfs_config_group* (i32)* @pohmelfs_find_create_config_group to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.pohmelfs_config_group* @pohmelfs_find_create_config_group(i32 %0) #0 {
  %2 = alloca %struct.pohmelfs_config_group*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.pohmelfs_config_group*, align 8
  store i32 %0, i32* %3, align 4
  %5 = load i32, i32* %3, align 4
  %6 = call %struct.pohmelfs_config_group* @pohmelfs_find_config_group(i32 %5)
  store %struct.pohmelfs_config_group* %6, %struct.pohmelfs_config_group** %4, align 8
  %7 = load %struct.pohmelfs_config_group*, %struct.pohmelfs_config_group** %4, align 8
  %8 = icmp ne %struct.pohmelfs_config_group* %7, null
  br i1 %8, label %9, label %11

9:                                                ; preds = %1
  %10 = load %struct.pohmelfs_config_group*, %struct.pohmelfs_config_group** %4, align 8
  store %struct.pohmelfs_config_group* %10, %struct.pohmelfs_config_group** %2, align 8
  br label %30

11:                                               ; preds = %1
  %12 = load i32, i32* @GFP_KERNEL, align 4
  %13 = call %struct.pohmelfs_config_group* @kzalloc(i32 24, i32 %12)
  store %struct.pohmelfs_config_group* %13, %struct.pohmelfs_config_group** %4, align 8
  %14 = load %struct.pohmelfs_config_group*, %struct.pohmelfs_config_group** %4, align 8
  %15 = icmp ne %struct.pohmelfs_config_group* %14, null
  br i1 %15, label %17, label %16

16:                                               ; preds = %11
  store %struct.pohmelfs_config_group* null, %struct.pohmelfs_config_group** %2, align 8
  br label %30

17:                                               ; preds = %11
  %18 = load %struct.pohmelfs_config_group*, %struct.pohmelfs_config_group** %4, align 8
  %19 = getelementptr inbounds %struct.pohmelfs_config_group, %struct.pohmelfs_config_group* %18, i32 0, i32 3
  %20 = call i32 @INIT_LIST_HEAD(i32* %19)
  %21 = load i32, i32* %3, align 4
  %22 = load %struct.pohmelfs_config_group*, %struct.pohmelfs_config_group** %4, align 8
  %23 = getelementptr inbounds %struct.pohmelfs_config_group, %struct.pohmelfs_config_group* %22, i32 0, i32 0
  store i32 %21, i32* %23, align 8
  %24 = load %struct.pohmelfs_config_group*, %struct.pohmelfs_config_group** %4, align 8
  %25 = getelementptr inbounds %struct.pohmelfs_config_group, %struct.pohmelfs_config_group* %24, i32 0, i32 2
  store i64 0, i64* %25, align 8
  %26 = load %struct.pohmelfs_config_group*, %struct.pohmelfs_config_group** %4, align 8
  %27 = getelementptr inbounds %struct.pohmelfs_config_group, %struct.pohmelfs_config_group* %26, i32 0, i32 1
  %28 = call i32 @list_add_tail(i32* %27, i32* @pohmelfs_config_list)
  %29 = load %struct.pohmelfs_config_group*, %struct.pohmelfs_config_group** %4, align 8
  store %struct.pohmelfs_config_group* %29, %struct.pohmelfs_config_group** %2, align 8
  br label %30

30:                                               ; preds = %17, %16, %9
  %31 = load %struct.pohmelfs_config_group*, %struct.pohmelfs_config_group** %2, align 8
  ret %struct.pohmelfs_config_group* %31
}

declare dso_local %struct.pohmelfs_config_group* @pohmelfs_find_config_group(i32) #1

declare dso_local %struct.pohmelfs_config_group* @kzalloc(i32, i32) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

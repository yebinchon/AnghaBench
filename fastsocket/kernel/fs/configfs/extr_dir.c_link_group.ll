; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/configfs/extr_dir.c_link_group.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/configfs/extr_dir.c_link_group.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.config_group = type { %struct.config_group**, %struct.configfs_subsystem*, i32 }
%struct.configfs_subsystem = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.config_group*, %struct.config_group*)* @link_group to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @link_group(%struct.config_group* %0, %struct.config_group* %1) #0 {
  %3 = alloca %struct.config_group*, align 8
  %4 = alloca %struct.config_group*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.config_group*, align 8
  %7 = alloca %struct.configfs_subsystem*, align 8
  store %struct.config_group* %0, %struct.config_group** %3, align 8
  store %struct.config_group* %1, %struct.config_group** %4, align 8
  store %struct.configfs_subsystem* null, %struct.configfs_subsystem** %7, align 8
  %8 = load %struct.config_group*, %struct.config_group** %3, align 8
  %9 = getelementptr inbounds %struct.config_group, %struct.config_group* %8, i32 0, i32 2
  %10 = load %struct.config_group*, %struct.config_group** %4, align 8
  %11 = getelementptr inbounds %struct.config_group, %struct.config_group* %10, i32 0, i32 2
  %12 = call i32 @link_obj(i32* %9, i32* %11)
  %13 = load %struct.config_group*, %struct.config_group** %3, align 8
  %14 = getelementptr inbounds %struct.config_group, %struct.config_group* %13, i32 0, i32 1
  %15 = load %struct.configfs_subsystem*, %struct.configfs_subsystem** %14, align 8
  %16 = icmp ne %struct.configfs_subsystem* %15, null
  br i1 %16, label %17, label %21

17:                                               ; preds = %2
  %18 = load %struct.config_group*, %struct.config_group** %3, align 8
  %19 = getelementptr inbounds %struct.config_group, %struct.config_group* %18, i32 0, i32 1
  %20 = load %struct.configfs_subsystem*, %struct.configfs_subsystem** %19, align 8
  store %struct.configfs_subsystem* %20, %struct.configfs_subsystem** %7, align 8
  br label %32

21:                                               ; preds = %2
  %22 = load %struct.config_group*, %struct.config_group** %3, align 8
  %23 = getelementptr inbounds %struct.config_group, %struct.config_group* %22, i32 0, i32 2
  %24 = call i64 @configfs_is_root(i32* %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %29

26:                                               ; preds = %21
  %27 = load %struct.config_group*, %struct.config_group** %4, align 8
  %28 = call %struct.configfs_subsystem* @to_configfs_subsystem(%struct.config_group* %27)
  store %struct.configfs_subsystem* %28, %struct.configfs_subsystem** %7, align 8
  br label %31

29:                                               ; preds = %21
  %30 = call i32 (...) @BUG()
  br label %31

31:                                               ; preds = %29, %26
  br label %32

32:                                               ; preds = %31, %17
  %33 = load %struct.configfs_subsystem*, %struct.configfs_subsystem** %7, align 8
  %34 = load %struct.config_group*, %struct.config_group** %4, align 8
  %35 = getelementptr inbounds %struct.config_group, %struct.config_group* %34, i32 0, i32 1
  store %struct.configfs_subsystem* %33, %struct.configfs_subsystem** %35, align 8
  %36 = load %struct.config_group*, %struct.config_group** %4, align 8
  %37 = getelementptr inbounds %struct.config_group, %struct.config_group* %36, i32 0, i32 0
  %38 = load %struct.config_group**, %struct.config_group*** %37, align 8
  %39 = icmp ne %struct.config_group** %38, null
  br i1 %39, label %40, label %64

40:                                               ; preds = %32
  store i32 0, i32* %5, align 4
  br label %41

41:                                               ; preds = %60, %40
  %42 = load %struct.config_group*, %struct.config_group** %4, align 8
  %43 = getelementptr inbounds %struct.config_group, %struct.config_group* %42, i32 0, i32 0
  %44 = load %struct.config_group**, %struct.config_group*** %43, align 8
  %45 = load i32, i32* %5, align 4
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds %struct.config_group*, %struct.config_group** %44, i64 %46
  %48 = load %struct.config_group*, %struct.config_group** %47, align 8
  %49 = icmp ne %struct.config_group* %48, null
  br i1 %49, label %50, label %63

50:                                               ; preds = %41
  %51 = load %struct.config_group*, %struct.config_group** %4, align 8
  %52 = getelementptr inbounds %struct.config_group, %struct.config_group* %51, i32 0, i32 0
  %53 = load %struct.config_group**, %struct.config_group*** %52, align 8
  %54 = load i32, i32* %5, align 4
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds %struct.config_group*, %struct.config_group** %53, i64 %55
  %57 = load %struct.config_group*, %struct.config_group** %56, align 8
  store %struct.config_group* %57, %struct.config_group** %6, align 8
  %58 = load %struct.config_group*, %struct.config_group** %4, align 8
  %59 = load %struct.config_group*, %struct.config_group** %6, align 8
  call void @link_group(%struct.config_group* %58, %struct.config_group* %59)
  br label %60

60:                                               ; preds = %50
  %61 = load i32, i32* %5, align 4
  %62 = add nsw i32 %61, 1
  store i32 %62, i32* %5, align 4
  br label %41

63:                                               ; preds = %41
  br label %64

64:                                               ; preds = %63, %32
  ret void
}

declare dso_local i32 @link_obj(i32*, i32*) #1

declare dso_local i64 @configfs_is_root(i32*) #1

declare dso_local %struct.configfs_subsystem* @to_configfs_subsystem(%struct.config_group*) #1

declare dso_local i32 @BUG(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

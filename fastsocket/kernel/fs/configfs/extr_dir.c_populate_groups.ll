; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/configfs/extr_dir.c_populate_groups.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/configfs/extr_dir.c_populate_groups.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.config_group = type { %struct.config_group** }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.config_group*)* @populate_groups to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @populate_groups(%struct.config_group* %0) #0 {
  %2 = alloca %struct.config_group*, align 8
  %3 = alloca %struct.config_group*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.config_group* %0, %struct.config_group** %2, align 8
  store i32 0, i32* %4, align 4
  %6 = load %struct.config_group*, %struct.config_group** %2, align 8
  %7 = getelementptr inbounds %struct.config_group, %struct.config_group* %6, i32 0, i32 0
  %8 = load %struct.config_group**, %struct.config_group*** %7, align 8
  %9 = icmp ne %struct.config_group** %8, null
  br i1 %9, label %10, label %41

10:                                               ; preds = %1
  store i32 0, i32* %5, align 4
  br label %11

11:                                               ; preds = %37, %10
  %12 = load %struct.config_group*, %struct.config_group** %2, align 8
  %13 = getelementptr inbounds %struct.config_group, %struct.config_group* %12, i32 0, i32 0
  %14 = load %struct.config_group**, %struct.config_group*** %13, align 8
  %15 = load i32, i32* %5, align 4
  %16 = sext i32 %15 to i64
  %17 = getelementptr inbounds %struct.config_group*, %struct.config_group** %14, i64 %16
  %18 = load %struct.config_group*, %struct.config_group** %17, align 8
  %19 = icmp ne %struct.config_group* %18, null
  br i1 %19, label %20, label %40

20:                                               ; preds = %11
  %21 = load %struct.config_group*, %struct.config_group** %2, align 8
  %22 = getelementptr inbounds %struct.config_group, %struct.config_group* %21, i32 0, i32 0
  %23 = load %struct.config_group**, %struct.config_group*** %22, align 8
  %24 = load i32, i32* %5, align 4
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds %struct.config_group*, %struct.config_group** %23, i64 %25
  %27 = load %struct.config_group*, %struct.config_group** %26, align 8
  store %struct.config_group* %27, %struct.config_group** %3, align 8
  %28 = load %struct.config_group*, %struct.config_group** %2, align 8
  %29 = load %struct.config_group*, %struct.config_group** %3, align 8
  %30 = call i32 @create_default_group(%struct.config_group* %28, %struct.config_group* %29)
  store i32 %30, i32* %4, align 4
  %31 = load i32, i32* %4, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %36

33:                                               ; preds = %20
  %34 = load %struct.config_group*, %struct.config_group** %2, align 8
  %35 = call i32 @detach_groups(%struct.config_group* %34)
  br label %40

36:                                               ; preds = %20
  br label %37

37:                                               ; preds = %36
  %38 = load i32, i32* %5, align 4
  %39 = add nsw i32 %38, 1
  store i32 %39, i32* %5, align 4
  br label %11

40:                                               ; preds = %33, %11
  br label %41

41:                                               ; preds = %40, %1
  %42 = load i32, i32* %4, align 4
  ret i32 %42
}

declare dso_local i32 @create_default_group(%struct.config_group*, %struct.config_group*) #1

declare dso_local i32 @detach_groups(%struct.config_group*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

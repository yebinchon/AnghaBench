; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/configfs/extr_dir.c_unlink_group.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/configfs/extr_dir.c_unlink_group.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.config_group = type { i32, i32*, %struct.config_group** }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.config_group*)* @unlink_group to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @unlink_group(%struct.config_group* %0) #0 {
  %2 = alloca %struct.config_group*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.config_group*, align 8
  store %struct.config_group* %0, %struct.config_group** %2, align 8
  %5 = load %struct.config_group*, %struct.config_group** %2, align 8
  %6 = getelementptr inbounds %struct.config_group, %struct.config_group* %5, i32 0, i32 2
  %7 = load %struct.config_group**, %struct.config_group*** %6, align 8
  %8 = icmp ne %struct.config_group** %7, null
  br i1 %8, label %9, label %32

9:                                                ; preds = %1
  store i32 0, i32* %3, align 4
  br label %10

10:                                               ; preds = %28, %9
  %11 = load %struct.config_group*, %struct.config_group** %2, align 8
  %12 = getelementptr inbounds %struct.config_group, %struct.config_group* %11, i32 0, i32 2
  %13 = load %struct.config_group**, %struct.config_group*** %12, align 8
  %14 = load i32, i32* %3, align 4
  %15 = sext i32 %14 to i64
  %16 = getelementptr inbounds %struct.config_group*, %struct.config_group** %13, i64 %15
  %17 = load %struct.config_group*, %struct.config_group** %16, align 8
  %18 = icmp ne %struct.config_group* %17, null
  br i1 %18, label %19, label %31

19:                                               ; preds = %10
  %20 = load %struct.config_group*, %struct.config_group** %2, align 8
  %21 = getelementptr inbounds %struct.config_group, %struct.config_group* %20, i32 0, i32 2
  %22 = load %struct.config_group**, %struct.config_group*** %21, align 8
  %23 = load i32, i32* %3, align 4
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds %struct.config_group*, %struct.config_group** %22, i64 %24
  %26 = load %struct.config_group*, %struct.config_group** %25, align 8
  store %struct.config_group* %26, %struct.config_group** %4, align 8
  %27 = load %struct.config_group*, %struct.config_group** %4, align 8
  call void @unlink_group(%struct.config_group* %27)
  br label %28

28:                                               ; preds = %19
  %29 = load i32, i32* %3, align 4
  %30 = add nsw i32 %29, 1
  store i32 %30, i32* %3, align 4
  br label %10

31:                                               ; preds = %10
  br label %32

32:                                               ; preds = %31, %1
  %33 = load %struct.config_group*, %struct.config_group** %2, align 8
  %34 = getelementptr inbounds %struct.config_group, %struct.config_group* %33, i32 0, i32 1
  store i32* null, i32** %34, align 8
  %35 = load %struct.config_group*, %struct.config_group** %2, align 8
  %36 = getelementptr inbounds %struct.config_group, %struct.config_group* %35, i32 0, i32 0
  %37 = call i32 @unlink_obj(i32* %36)
  ret void
}

declare dso_local i32 @unlink_obj(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

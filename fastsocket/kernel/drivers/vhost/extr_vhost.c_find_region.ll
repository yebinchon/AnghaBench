; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/vhost/extr_vhost.c_find_region.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/vhost/extr_vhost.c_find_region.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vhost_memory_region = type { i32, i32 }
%struct.vhost_memory = type { i32, %struct.vhost_memory_region* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.vhost_memory_region* (%struct.vhost_memory*, i32, i32)* @find_region to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.vhost_memory_region* @find_region(%struct.vhost_memory* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.vhost_memory_region*, align 8
  %5 = alloca %struct.vhost_memory*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.vhost_memory_region*, align 8
  %9 = alloca i32, align 4
  store %struct.vhost_memory* %0, %struct.vhost_memory** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 0, i32* %9, align 4
  br label %10

10:                                               ; preds = %42, %3
  %11 = load i32, i32* %9, align 4
  %12 = load %struct.vhost_memory*, %struct.vhost_memory** %5, align 8
  %13 = getelementptr inbounds %struct.vhost_memory, %struct.vhost_memory* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = icmp slt i32 %11, %14
  br i1 %15, label %16, label %45

16:                                               ; preds = %10
  %17 = load %struct.vhost_memory*, %struct.vhost_memory** %5, align 8
  %18 = getelementptr inbounds %struct.vhost_memory, %struct.vhost_memory* %17, i32 0, i32 1
  %19 = load %struct.vhost_memory_region*, %struct.vhost_memory_region** %18, align 8
  %20 = load i32, i32* %9, align 4
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds %struct.vhost_memory_region, %struct.vhost_memory_region* %19, i64 %21
  store %struct.vhost_memory_region* %22, %struct.vhost_memory_region** %8, align 8
  %23 = load %struct.vhost_memory_region*, %struct.vhost_memory_region** %8, align 8
  %24 = getelementptr inbounds %struct.vhost_memory_region, %struct.vhost_memory_region* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = load i32, i32* %6, align 4
  %27 = icmp sle i32 %25, %26
  br i1 %27, label %28, label %41

28:                                               ; preds = %16
  %29 = load %struct.vhost_memory_region*, %struct.vhost_memory_region** %8, align 8
  %30 = getelementptr inbounds %struct.vhost_memory_region, %struct.vhost_memory_region* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = load %struct.vhost_memory_region*, %struct.vhost_memory_region** %8, align 8
  %33 = getelementptr inbounds %struct.vhost_memory_region, %struct.vhost_memory_region* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = add nsw i32 %31, %34
  %36 = sub nsw i32 %35, 1
  %37 = load i32, i32* %6, align 4
  %38 = icmp sge i32 %36, %37
  br i1 %38, label %39, label %41

39:                                               ; preds = %28
  %40 = load %struct.vhost_memory_region*, %struct.vhost_memory_region** %8, align 8
  store %struct.vhost_memory_region* %40, %struct.vhost_memory_region** %4, align 8
  br label %46

41:                                               ; preds = %28, %16
  br label %42

42:                                               ; preds = %41
  %43 = load i32, i32* %9, align 4
  %44 = add nsw i32 %43, 1
  store i32 %44, i32* %9, align 4
  br label %10

45:                                               ; preds = %10
  store %struct.vhost_memory_region* null, %struct.vhost_memory_region** %4, align 8
  br label %46

46:                                               ; preds = %45, %39
  %47 = load %struct.vhost_memory_region*, %struct.vhost_memory_region** %4, align 8
  ret %struct.vhost_memory_region* %47
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

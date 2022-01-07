; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/partitions/extr_efi.c_alloc_read_gpt_entries.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/partitions/extr_efi.c_alloc_read_gpt_entries.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.block_device = type { i32 }
%struct.TYPE_3__ = type { i32, i32, i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (%struct.block_device*, %struct.TYPE_3__*)* @alloc_read_gpt_entries to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @alloc_read_gpt_entries(%struct.block_device* %0, %struct.TYPE_3__* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca %struct.block_device*, align 8
  %5 = alloca %struct.TYPE_3__*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32*, align 8
  store %struct.block_device* %0, %struct.block_device** %4, align 8
  store %struct.TYPE_3__* %1, %struct.TYPE_3__** %5, align 8
  %8 = load %struct.block_device*, %struct.block_device** %4, align 8
  %9 = icmp ne %struct.block_device* %8, null
  br i1 %9, label %10, label %13

10:                                               ; preds = %2
  %11 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %12 = icmp ne %struct.TYPE_3__* %11, null
  br i1 %12, label %14, label %13

13:                                               ; preds = %10, %2
  store i32* null, i32** %3, align 8
  br label %50

14:                                               ; preds = %10
  %15 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %16 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %15, i32 0, i32 2
  %17 = load i32, i32* %16, align 4
  %18 = call i64 @le32_to_cpu(i32 %17)
  %19 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %20 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = call i64 @le32_to_cpu(i32 %21)
  %23 = mul i64 %18, %22
  store i64 %23, i64* %6, align 8
  %24 = load i64, i64* %6, align 8
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %27, label %26

26:                                               ; preds = %14
  store i32* null, i32** %3, align 8
  br label %50

27:                                               ; preds = %14
  %28 = load i64, i64* %6, align 8
  %29 = load i32, i32* @GFP_KERNEL, align 4
  %30 = call i32* @kzalloc(i64 %28, i32 %29)
  store i32* %30, i32** %7, align 8
  %31 = load i32*, i32** %7, align 8
  %32 = icmp ne i32* %31, null
  br i1 %32, label %34, label %33

33:                                               ; preds = %27
  store i32* null, i32** %3, align 8
  br label %50

34:                                               ; preds = %27
  %35 = load %struct.block_device*, %struct.block_device** %4, align 8
  %36 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %37 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = call i32 @le64_to_cpu(i32 %38)
  %40 = load i32*, i32** %7, align 8
  %41 = load i64, i64* %6, align 8
  %42 = call i64 @read_lba(%struct.block_device* %35, i32 %39, i32* %40, i64 %41)
  %43 = load i64, i64* %6, align 8
  %44 = icmp ult i64 %42, %43
  br i1 %44, label %45, label %48

45:                                               ; preds = %34
  %46 = load i32*, i32** %7, align 8
  %47 = call i32 @kfree(i32* %46)
  store i32* null, i32** %7, align 8
  store i32* null, i32** %3, align 8
  br label %50

48:                                               ; preds = %34
  %49 = load i32*, i32** %7, align 8
  store i32* %49, i32** %3, align 8
  br label %50

50:                                               ; preds = %48, %45, %33, %26, %13
  %51 = load i32*, i32** %3, align 8
  ret i32* %51
}

declare dso_local i64 @le32_to_cpu(i32) #1

declare dso_local i32* @kzalloc(i64, i32) #1

declare dso_local i64 @read_lba(%struct.block_device*, i32, i32*, i64) #1

declare dso_local i32 @le64_to_cpu(i32) #1

declare dso_local i32 @kfree(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/extr_bio.c_bioset_create.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/extr_bio.c_bioset_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bio_set = type { i32, i32, i32 }

@BIO_INLINE_VECS = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.bio_set* @bioset_create(i32 %0, i32 %1) #0 {
  %3 = alloca %struct.bio_set*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.bio_set*, align 8
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  %8 = load i32, i32* @BIO_INLINE_VECS, align 4
  %9 = sext i32 %8 to i64
  %10 = mul i64 %9, 4
  %11 = trunc i64 %10 to i32
  store i32 %11, i32* %6, align 4
  %12 = load i32, i32* @GFP_KERNEL, align 4
  %13 = call %struct.bio_set* @kzalloc(i32 12, i32 %12)
  store %struct.bio_set* %13, %struct.bio_set** %7, align 8
  %14 = load %struct.bio_set*, %struct.bio_set** %7, align 8
  %15 = icmp ne %struct.bio_set* %14, null
  br i1 %15, label %17, label %16

16:                                               ; preds = %2
  store %struct.bio_set* null, %struct.bio_set** %3, align 8
  br label %58

17:                                               ; preds = %2
  %18 = load i32, i32* %5, align 4
  %19 = load %struct.bio_set*, %struct.bio_set** %7, align 8
  %20 = getelementptr inbounds %struct.bio_set, %struct.bio_set* %19, i32 0, i32 0
  store i32 %18, i32* %20, align 4
  %21 = load i32, i32* %5, align 4
  %22 = load i32, i32* %6, align 4
  %23 = add i32 %21, %22
  %24 = call i32 @bio_find_or_create_slab(i32 %23)
  %25 = load %struct.bio_set*, %struct.bio_set** %7, align 8
  %26 = getelementptr inbounds %struct.bio_set, %struct.bio_set* %25, i32 0, i32 2
  store i32 %24, i32* %26, align 4
  %27 = load %struct.bio_set*, %struct.bio_set** %7, align 8
  %28 = getelementptr inbounds %struct.bio_set, %struct.bio_set* %27, i32 0, i32 2
  %29 = load i32, i32* %28, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %34, label %31

31:                                               ; preds = %17
  %32 = load %struct.bio_set*, %struct.bio_set** %7, align 8
  %33 = call i32 @kfree(%struct.bio_set* %32)
  store %struct.bio_set* null, %struct.bio_set** %3, align 8
  br label %58

34:                                               ; preds = %17
  %35 = load i32, i32* %4, align 4
  %36 = load %struct.bio_set*, %struct.bio_set** %7, align 8
  %37 = getelementptr inbounds %struct.bio_set, %struct.bio_set* %36, i32 0, i32 2
  %38 = load i32, i32* %37, align 4
  %39 = call i32 @mempool_create_slab_pool(i32 %35, i32 %38)
  %40 = load %struct.bio_set*, %struct.bio_set** %7, align 8
  %41 = getelementptr inbounds %struct.bio_set, %struct.bio_set* %40, i32 0, i32 1
  store i32 %39, i32* %41, align 4
  %42 = load %struct.bio_set*, %struct.bio_set** %7, align 8
  %43 = getelementptr inbounds %struct.bio_set, %struct.bio_set* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %47, label %46

46:                                               ; preds = %34
  br label %55

47:                                               ; preds = %34
  %48 = load %struct.bio_set*, %struct.bio_set** %7, align 8
  %49 = load i32, i32* %4, align 4
  %50 = call i32 @biovec_create_pools(%struct.bio_set* %48, i32 %49)
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %54, label %52

52:                                               ; preds = %47
  %53 = load %struct.bio_set*, %struct.bio_set** %7, align 8
  store %struct.bio_set* %53, %struct.bio_set** %3, align 8
  br label %58

54:                                               ; preds = %47
  br label %55

55:                                               ; preds = %54, %46
  %56 = load %struct.bio_set*, %struct.bio_set** %7, align 8
  %57 = call i32 @bioset_free(%struct.bio_set* %56)
  store %struct.bio_set* null, %struct.bio_set** %3, align 8
  br label %58

58:                                               ; preds = %55, %52, %31, %16
  %59 = load %struct.bio_set*, %struct.bio_set** %3, align 8
  ret %struct.bio_set* %59
}

declare dso_local %struct.bio_set* @kzalloc(i32, i32) #1

declare dso_local i32 @bio_find_or_create_slab(i32) #1

declare dso_local i32 @kfree(%struct.bio_set*) #1

declare dso_local i32 @mempool_create_slab_pool(i32, i32) #1

declare dso_local i32 @biovec_create_pools(%struct.bio_set*, i32) #1

declare dso_local i32 @bioset_free(%struct.bio_set*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

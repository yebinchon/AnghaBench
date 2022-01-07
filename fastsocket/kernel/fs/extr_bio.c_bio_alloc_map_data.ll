; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/extr_bio.c_bio_alloc_map_data.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/extr_bio.c_bio_alloc_map_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bio_map_data = type { %struct.bio_map_data*, i8* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.bio_map_data* (i32, i32, i32)* @bio_alloc_map_data to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.bio_map_data* @bio_alloc_map_data(i32 %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.bio_map_data*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.bio_map_data*, align 8
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %9 = load i32, i32* %7, align 4
  %10 = call i8* @kmalloc(i32 16, i32 %9)
  %11 = bitcast i8* %10 to %struct.bio_map_data*
  store %struct.bio_map_data* %11, %struct.bio_map_data** %8, align 8
  %12 = load %struct.bio_map_data*, %struct.bio_map_data** %8, align 8
  %13 = icmp ne %struct.bio_map_data* %12, null
  br i1 %13, label %15, label %14

14:                                               ; preds = %3
  store %struct.bio_map_data* null, %struct.bio_map_data** %4, align 8
  br label %54

15:                                               ; preds = %3
  %16 = load i32, i32* %5, align 4
  %17 = sext i32 %16 to i64
  %18 = mul i64 4, %17
  %19 = trunc i64 %18 to i32
  %20 = load i32, i32* %7, align 4
  %21 = call i8* @kmalloc(i32 %19, i32 %20)
  %22 = bitcast i8* %21 to %struct.bio_map_data*
  %23 = load %struct.bio_map_data*, %struct.bio_map_data** %8, align 8
  %24 = getelementptr inbounds %struct.bio_map_data, %struct.bio_map_data* %23, i32 0, i32 0
  store %struct.bio_map_data* %22, %struct.bio_map_data** %24, align 8
  %25 = load %struct.bio_map_data*, %struct.bio_map_data** %8, align 8
  %26 = getelementptr inbounds %struct.bio_map_data, %struct.bio_map_data* %25, i32 0, i32 0
  %27 = load %struct.bio_map_data*, %struct.bio_map_data** %26, align 8
  %28 = icmp ne %struct.bio_map_data* %27, null
  br i1 %28, label %32, label %29

29:                                               ; preds = %15
  %30 = load %struct.bio_map_data*, %struct.bio_map_data** %8, align 8
  %31 = call i32 @kfree(%struct.bio_map_data* %30)
  store %struct.bio_map_data* null, %struct.bio_map_data** %4, align 8
  br label %54

32:                                               ; preds = %15
  %33 = load i32, i32* %6, align 4
  %34 = sext i32 %33 to i64
  %35 = mul i64 4, %34
  %36 = trunc i64 %35 to i32
  %37 = load i32, i32* %7, align 4
  %38 = call i8* @kmalloc(i32 %36, i32 %37)
  %39 = load %struct.bio_map_data*, %struct.bio_map_data** %8, align 8
  %40 = getelementptr inbounds %struct.bio_map_data, %struct.bio_map_data* %39, i32 0, i32 1
  store i8* %38, i8** %40, align 8
  %41 = load %struct.bio_map_data*, %struct.bio_map_data** %8, align 8
  %42 = getelementptr inbounds %struct.bio_map_data, %struct.bio_map_data* %41, i32 0, i32 1
  %43 = load i8*, i8** %42, align 8
  %44 = icmp ne i8* %43, null
  br i1 %44, label %45, label %47

45:                                               ; preds = %32
  %46 = load %struct.bio_map_data*, %struct.bio_map_data** %8, align 8
  store %struct.bio_map_data* %46, %struct.bio_map_data** %4, align 8
  br label %54

47:                                               ; preds = %32
  %48 = load %struct.bio_map_data*, %struct.bio_map_data** %8, align 8
  %49 = getelementptr inbounds %struct.bio_map_data, %struct.bio_map_data* %48, i32 0, i32 0
  %50 = load %struct.bio_map_data*, %struct.bio_map_data** %49, align 8
  %51 = call i32 @kfree(%struct.bio_map_data* %50)
  %52 = load %struct.bio_map_data*, %struct.bio_map_data** %8, align 8
  %53 = call i32 @kfree(%struct.bio_map_data* %52)
  store %struct.bio_map_data* null, %struct.bio_map_data** %4, align 8
  br label %54

54:                                               ; preds = %47, %45, %29, %14
  %55 = load %struct.bio_map_data*, %struct.bio_map_data** %4, align 8
  ret %struct.bio_map_data* %55
}

declare dso_local i8* @kmalloc(i32, i32) #1

declare dso_local i32 @kfree(%struct.bio_map_data*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

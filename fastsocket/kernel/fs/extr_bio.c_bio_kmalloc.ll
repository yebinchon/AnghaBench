; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/extr_bio.c_bio_kmalloc.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/extr_bio.c_bio_kmalloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bio = type { i32, i32, i32, i32, i32 }

@BIO_POOL_NONE = common dso_local global i32 0, align 4
@BIO_POOL_OFFSET = common dso_local global i32 0, align 4
@bio_kmalloc_destructor = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.bio* @bio_kmalloc(i32 %0, i32 %1) #0 {
  %3 = alloca %struct.bio*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.bio*, align 8
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  %7 = load i32, i32* %5, align 4
  %8 = sext i32 %7 to i64
  %9 = mul i64 %8, 4
  %10 = add i64 20, %9
  %11 = trunc i64 %10 to i32
  %12 = load i32, i32* %4, align 4
  %13 = call %struct.bio* @kmalloc(i32 %11, i32 %12)
  store %struct.bio* %13, %struct.bio** %6, align 8
  %14 = load %struct.bio*, %struct.bio** %6, align 8
  %15 = icmp ne %struct.bio* %14, null
  %16 = xor i1 %15, true
  %17 = zext i1 %16 to i32
  %18 = call i64 @unlikely(i32 %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %21

20:                                               ; preds = %2
  store %struct.bio* null, %struct.bio** %3, align 8
  br label %43

21:                                               ; preds = %2
  %22 = load %struct.bio*, %struct.bio** %6, align 8
  %23 = call i32 @bio_init(%struct.bio* %22)
  %24 = load i32, i32* @BIO_POOL_NONE, align 4
  %25 = load i32, i32* @BIO_POOL_OFFSET, align 4
  %26 = shl i32 %24, %25
  %27 = load %struct.bio*, %struct.bio** %6, align 8
  %28 = getelementptr inbounds %struct.bio, %struct.bio* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = or i32 %29, %26
  store i32 %30, i32* %28, align 4
  %31 = load i32, i32* %5, align 4
  %32 = load %struct.bio*, %struct.bio** %6, align 8
  %33 = getelementptr inbounds %struct.bio, %struct.bio* %32, i32 0, i32 1
  store i32 %31, i32* %33, align 4
  %34 = load %struct.bio*, %struct.bio** %6, align 8
  %35 = getelementptr inbounds %struct.bio, %struct.bio* %34, i32 0, i32 3
  %36 = load i32, i32* %35, align 4
  %37 = load %struct.bio*, %struct.bio** %6, align 8
  %38 = getelementptr inbounds %struct.bio, %struct.bio* %37, i32 0, i32 4
  store i32 %36, i32* %38, align 4
  %39 = load i32, i32* @bio_kmalloc_destructor, align 4
  %40 = load %struct.bio*, %struct.bio** %6, align 8
  %41 = getelementptr inbounds %struct.bio, %struct.bio* %40, i32 0, i32 2
  store i32 %39, i32* %41, align 4
  %42 = load %struct.bio*, %struct.bio** %6, align 8
  store %struct.bio* %42, %struct.bio** %3, align 8
  br label %43

43:                                               ; preds = %21, %20
  %44 = load %struct.bio*, %struct.bio** %3, align 8
  ret %struct.bio* %44
}

declare dso_local %struct.bio* @kmalloc(i32, i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @bio_init(%struct.bio*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

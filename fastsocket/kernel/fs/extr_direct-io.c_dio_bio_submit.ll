; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/extr_direct-io.c_dio_bio_submit.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/extr_direct-io.c_dio_bio_submit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dio = type { i64, i32, i64, i32, i32 }
%struct.dio_submit = type { i32, i64, %struct.bio*, i32 (i64, %struct.bio*, i32, i32)* }
%struct.bio = type { %struct.dio* }

@READ = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.dio*, %struct.dio_submit*)* @dio_bio_submit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dio_bio_submit(%struct.dio* %0, %struct.dio_submit* %1) #0 {
  %3 = alloca %struct.dio*, align 8
  %4 = alloca %struct.dio_submit*, align 8
  %5 = alloca %struct.bio*, align 8
  %6 = alloca i64, align 8
  store %struct.dio* %0, %struct.dio** %3, align 8
  store %struct.dio_submit* %1, %struct.dio_submit** %4, align 8
  %7 = load %struct.dio_submit*, %struct.dio_submit** %4, align 8
  %8 = getelementptr inbounds %struct.dio_submit, %struct.dio_submit* %7, i32 0, i32 2
  %9 = load %struct.bio*, %struct.bio** %8, align 8
  store %struct.bio* %9, %struct.bio** %5, align 8
  %10 = load %struct.dio*, %struct.dio** %3, align 8
  %11 = load %struct.bio*, %struct.bio** %5, align 8
  %12 = getelementptr inbounds %struct.bio, %struct.bio* %11, i32 0, i32 0
  store %struct.dio* %10, %struct.dio** %12, align 8
  %13 = load %struct.dio*, %struct.dio** %3, align 8
  %14 = getelementptr inbounds %struct.dio, %struct.dio* %13, i32 0, i32 3
  %15 = load i64, i64* %6, align 8
  %16 = call i32 @spin_lock_irqsave(i32* %14, i64 %15)
  %17 = load %struct.dio*, %struct.dio** %3, align 8
  %18 = getelementptr inbounds %struct.dio, %struct.dio* %17, i32 0, i32 4
  %19 = load i32, i32* %18, align 4
  %20 = add nsw i32 %19, 1
  store i32 %20, i32* %18, align 4
  %21 = load %struct.dio*, %struct.dio** %3, align 8
  %22 = getelementptr inbounds %struct.dio, %struct.dio* %21, i32 0, i32 3
  %23 = load i64, i64* %6, align 8
  %24 = call i32 @spin_unlock_irqrestore(i32* %22, i64 %23)
  %25 = load %struct.dio*, %struct.dio** %3, align 8
  %26 = getelementptr inbounds %struct.dio, %struct.dio* %25, i32 0, i32 2
  %27 = load i64, i64* %26, align 8
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %38

29:                                               ; preds = %2
  %30 = load %struct.dio*, %struct.dio** %3, align 8
  %31 = getelementptr inbounds %struct.dio, %struct.dio* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = load i64, i64* @READ, align 8
  %34 = icmp eq i64 %32, %33
  br i1 %34, label %35, label %38

35:                                               ; preds = %29
  %36 = load %struct.bio*, %struct.bio** %5, align 8
  %37 = call i32 @bio_set_pages_dirty(%struct.bio* %36)
  br label %38

38:                                               ; preds = %35, %29, %2
  %39 = load %struct.dio_submit*, %struct.dio_submit** %4, align 8
  %40 = getelementptr inbounds %struct.dio_submit, %struct.dio_submit* %39, i32 0, i32 3
  %41 = load i32 (i64, %struct.bio*, i32, i32)*, i32 (i64, %struct.bio*, i32, i32)** %40, align 8
  %42 = icmp ne i32 (i64, %struct.bio*, i32, i32)* %41, null
  br i1 %42, label %43, label %58

43:                                               ; preds = %38
  %44 = load %struct.dio_submit*, %struct.dio_submit** %4, align 8
  %45 = getelementptr inbounds %struct.dio_submit, %struct.dio_submit* %44, i32 0, i32 3
  %46 = load i32 (i64, %struct.bio*, i32, i32)*, i32 (i64, %struct.bio*, i32, i32)** %45, align 8
  %47 = load %struct.dio*, %struct.dio** %3, align 8
  %48 = getelementptr inbounds %struct.dio, %struct.dio* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = load %struct.bio*, %struct.bio** %5, align 8
  %51 = load %struct.dio*, %struct.dio** %3, align 8
  %52 = getelementptr inbounds %struct.dio, %struct.dio* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 8
  %54 = load %struct.dio_submit*, %struct.dio_submit** %4, align 8
  %55 = getelementptr inbounds %struct.dio_submit, %struct.dio_submit* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 8
  %57 = call i32 %46(i64 %49, %struct.bio* %50, i32 %53, i32 %56)
  br label %64

58:                                               ; preds = %38
  %59 = load %struct.dio*, %struct.dio** %3, align 8
  %60 = getelementptr inbounds %struct.dio, %struct.dio* %59, i32 0, i32 0
  %61 = load i64, i64* %60, align 8
  %62 = load %struct.bio*, %struct.bio** %5, align 8
  %63 = call i32 @submit_bio(i64 %61, %struct.bio* %62)
  br label %64

64:                                               ; preds = %58, %43
  %65 = load %struct.dio_submit*, %struct.dio_submit** %4, align 8
  %66 = getelementptr inbounds %struct.dio_submit, %struct.dio_submit* %65, i32 0, i32 2
  store %struct.bio* null, %struct.bio** %66, align 8
  %67 = load %struct.dio_submit*, %struct.dio_submit** %4, align 8
  %68 = getelementptr inbounds %struct.dio_submit, %struct.dio_submit* %67, i32 0, i32 1
  store i64 0, i64* %68, align 8
  %69 = load %struct.dio_submit*, %struct.dio_submit** %4, align 8
  %70 = getelementptr inbounds %struct.dio_submit, %struct.dio_submit* %69, i32 0, i32 0
  store i32 0, i32* %70, align 8
  ret void
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @bio_set_pages_dirty(%struct.bio*) #1

declare dso_local i32 @submit_bio(i64, %struct.bio*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

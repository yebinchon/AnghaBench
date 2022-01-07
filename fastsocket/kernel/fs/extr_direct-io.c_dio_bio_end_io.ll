; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/extr_direct-io.c_dio_bio_end_io.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/extr_direct-io.c_dio_bio_end_io.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bio = type { i32, i32, i64, %struct.bio*, %struct.bio* }
%struct.dio = type { i32, i32, i64, %struct.dio*, %struct.dio* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bio*, i32)* @dio_bio_end_io to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dio_bio_end_io(%struct.bio* %0, i32 %1) #0 {
  %3 = alloca %struct.bio*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.dio*, align 8
  %6 = alloca i64, align 8
  store %struct.bio* %0, %struct.bio** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.bio*, %struct.bio** %3, align 8
  %8 = getelementptr inbounds %struct.bio, %struct.bio* %7, i32 0, i32 4
  %9 = load %struct.bio*, %struct.bio** %8, align 8
  %10 = bitcast %struct.bio* %9 to %struct.dio*
  store %struct.dio* %10, %struct.dio** %5, align 8
  %11 = load %struct.dio*, %struct.dio** %5, align 8
  %12 = getelementptr inbounds %struct.dio, %struct.dio* %11, i32 0, i32 1
  %13 = load i64, i64* %6, align 8
  %14 = call i32 @spin_lock_irqsave(i32* %12, i64 %13)
  %15 = load %struct.dio*, %struct.dio** %5, align 8
  %16 = getelementptr inbounds %struct.dio, %struct.dio* %15, i32 0, i32 3
  %17 = load %struct.dio*, %struct.dio** %16, align 8
  %18 = bitcast %struct.dio* %17 to %struct.bio*
  %19 = load %struct.bio*, %struct.bio** %3, align 8
  %20 = getelementptr inbounds %struct.bio, %struct.bio* %19, i32 0, i32 4
  store %struct.bio* %18, %struct.bio** %20, align 8
  %21 = load %struct.bio*, %struct.bio** %3, align 8
  %22 = bitcast %struct.bio* %21 to %struct.dio*
  %23 = load %struct.dio*, %struct.dio** %5, align 8
  %24 = getelementptr inbounds %struct.dio, %struct.dio* %23, i32 0, i32 3
  store %struct.dio* %22, %struct.dio** %24, align 8
  %25 = load %struct.dio*, %struct.dio** %5, align 8
  %26 = getelementptr inbounds %struct.dio, %struct.dio* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = add nsw i32 %27, -1
  store i32 %28, i32* %26, align 8
  %29 = icmp eq i32 %28, 1
  br i1 %29, label %30, label %40

30:                                               ; preds = %2
  %31 = load %struct.dio*, %struct.dio** %5, align 8
  %32 = getelementptr inbounds %struct.dio, %struct.dio* %31, i32 0, i32 2
  %33 = load i64, i64* %32, align 8
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %40

35:                                               ; preds = %30
  %36 = load %struct.dio*, %struct.dio** %5, align 8
  %37 = getelementptr inbounds %struct.dio, %struct.dio* %36, i32 0, i32 2
  %38 = load i64, i64* %37, align 8
  %39 = call i32 @wake_up_process(i64 %38)
  br label %40

40:                                               ; preds = %35, %30, %2
  %41 = load %struct.dio*, %struct.dio** %5, align 8
  %42 = getelementptr inbounds %struct.dio, %struct.dio* %41, i32 0, i32 1
  %43 = load i64, i64* %6, align 8
  %44 = call i32 @spin_unlock_irqrestore(i32* %42, i64 %43)
  ret void
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @wake_up_process(i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

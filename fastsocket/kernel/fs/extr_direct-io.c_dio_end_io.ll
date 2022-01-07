; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/extr_direct-io.c_dio_end_io.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/extr_direct-io.c_dio_end_io.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bio = type { %struct.dio* }
%struct.dio = type { i64 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @dio_end_io(%struct.bio* %0, i32 %1) #0 {
  %3 = alloca %struct.bio*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.dio*, align 8
  store %struct.bio* %0, %struct.bio** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.bio*, %struct.bio** %3, align 8
  %7 = getelementptr inbounds %struct.bio, %struct.bio* %6, i32 0, i32 0
  %8 = load %struct.dio*, %struct.dio** %7, align 8
  store %struct.dio* %8, %struct.dio** %5, align 8
  %9 = load %struct.dio*, %struct.dio** %5, align 8
  %10 = getelementptr inbounds %struct.dio, %struct.dio* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %17

13:                                               ; preds = %2
  %14 = load %struct.bio*, %struct.bio** %3, align 8
  %15 = load i32, i32* %4, align 4
  %16 = call i32 @dio_bio_end_aio(%struct.bio* %14, i32 %15)
  br label %21

17:                                               ; preds = %2
  %18 = load %struct.bio*, %struct.bio** %3, align 8
  %19 = load i32, i32* %4, align 4
  %20 = call i32 @dio_bio_end_io(%struct.bio* %18, i32 %19)
  br label %21

21:                                               ; preds = %17, %13
  ret void
}

declare dso_local i32 @dio_bio_end_aio(%struct.bio*, i32) #1

declare dso_local i32 @dio_bio_end_io(%struct.bio*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/extr_bio.c_submit_bio_wait.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/extr_bio.c_submit_bio_wait.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bio = type { i32, %struct.submit_bio_ret* }
%struct.submit_bio_ret = type { i32, i32 }

@REQ_SYNC = common dso_local global i32 0, align 4
@submit_bio_wait_endio = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @submit_bio_wait(i32 %0, %struct.bio* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.bio*, align 8
  %5 = alloca %struct.submit_bio_ret, align 4
  store i32 %0, i32* %3, align 4
  store %struct.bio* %1, %struct.bio** %4, align 8
  %6 = load i32, i32* @REQ_SYNC, align 4
  %7 = load i32, i32* %3, align 4
  %8 = or i32 %7, %6
  store i32 %8, i32* %3, align 4
  %9 = getelementptr inbounds %struct.submit_bio_ret, %struct.submit_bio_ret* %5, i32 0, i32 1
  %10 = call i32 @init_completion(i32* %9)
  %11 = load %struct.bio*, %struct.bio** %4, align 8
  %12 = getelementptr inbounds %struct.bio, %struct.bio* %11, i32 0, i32 1
  store %struct.submit_bio_ret* %5, %struct.submit_bio_ret** %12, align 8
  %13 = load i32, i32* @submit_bio_wait_endio, align 4
  %14 = load %struct.bio*, %struct.bio** %4, align 8
  %15 = getelementptr inbounds %struct.bio, %struct.bio* %14, i32 0, i32 0
  store i32 %13, i32* %15, align 8
  %16 = load i32, i32* %3, align 4
  %17 = load %struct.bio*, %struct.bio** %4, align 8
  %18 = call i32 @submit_bio(i32 %16, %struct.bio* %17)
  %19 = getelementptr inbounds %struct.submit_bio_ret, %struct.submit_bio_ret* %5, i32 0, i32 1
  %20 = call i32 @wait_for_completion(i32* %19)
  %21 = getelementptr inbounds %struct.submit_bio_ret, %struct.submit_bio_ret* %5, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  ret i32 %22
}

declare dso_local i32 @init_completion(i32*) #1

declare dso_local i32 @submit_bio(i32, %struct.bio*) #1

declare dso_local i32 @wait_for_completion(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

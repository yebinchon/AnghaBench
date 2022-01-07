; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/extr_direct-io.c_dio_await_completion.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/extr_direct-io.c_dio_await_completion.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dio = type { i32 }
%struct.bio = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.dio*)* @dio_await_completion to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dio_await_completion(%struct.dio* %0) #0 {
  %2 = alloca %struct.dio*, align 8
  %3 = alloca %struct.bio*, align 8
  store %struct.dio* %0, %struct.dio** %2, align 8
  br label %4

4:                                                ; preds = %14, %1
  %5 = load %struct.dio*, %struct.dio** %2, align 8
  %6 = call %struct.bio* @dio_await_one(%struct.dio* %5)
  store %struct.bio* %6, %struct.bio** %3, align 8
  %7 = load %struct.bio*, %struct.bio** %3, align 8
  %8 = icmp ne %struct.bio* %7, null
  br i1 %8, label %9, label %13

9:                                                ; preds = %4
  %10 = load %struct.dio*, %struct.dio** %2, align 8
  %11 = load %struct.bio*, %struct.bio** %3, align 8
  %12 = call i32 @dio_bio_complete(%struct.dio* %10, %struct.bio* %11)
  br label %13

13:                                               ; preds = %9, %4
  br label %14

14:                                               ; preds = %13
  %15 = load %struct.bio*, %struct.bio** %3, align 8
  %16 = icmp ne %struct.bio* %15, null
  br i1 %16, label %4, label %17

17:                                               ; preds = %14
  ret void
}

declare dso_local %struct.bio* @dio_await_one(%struct.dio*) #1

declare dso_local i32 @dio_bio_complete(%struct.dio*, %struct.bio*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/kernel/extr_lockdep.c_get_usage_char.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/kernel/extr_lockdep.c_get_usage_char.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lock_class = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i8 (%struct.lock_class*, i32)* @get_usage_char to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal signext i8 @get_usage_char(%struct.lock_class* %0, i32 %1) #0 {
  %3 = alloca %struct.lock_class*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i8, align 1
  store %struct.lock_class* %0, %struct.lock_class** %3, align 8
  store i32 %1, i32* %4, align 4
  store i8 46, i8* %5, align 1
  %6 = load %struct.lock_class*, %struct.lock_class** %3, align 8
  %7 = getelementptr inbounds %struct.lock_class, %struct.lock_class* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  %9 = load i32, i32* %4, align 4
  %10 = add i32 %9, 2
  %11 = call i32 @lock_flag(i32 %10)
  %12 = and i32 %8, %11
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %15

14:                                               ; preds = %2
  store i8 43, i8* %5, align 1
  br label %15

15:                                               ; preds = %14, %2
  %16 = load %struct.lock_class*, %struct.lock_class** %3, align 8
  %17 = getelementptr inbounds %struct.lock_class, %struct.lock_class* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = load i32, i32* %4, align 4
  %20 = call i32 @lock_flag(i32 %19)
  %21 = and i32 %18, %20
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %34

23:                                               ; preds = %15
  store i8 45, i8* %5, align 1
  %24 = load %struct.lock_class*, %struct.lock_class** %3, align 8
  %25 = getelementptr inbounds %struct.lock_class, %struct.lock_class* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = load i32, i32* %4, align 4
  %28 = add i32 %27, 2
  %29 = call i32 @lock_flag(i32 %28)
  %30 = and i32 %26, %29
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %33

32:                                               ; preds = %23
  store i8 63, i8* %5, align 1
  br label %33

33:                                               ; preds = %32, %23
  br label %34

34:                                               ; preds = %33, %15
  %35 = load i8, i8* %5, align 1
  ret i8 %35
}

declare dso_local i32 @lock_flag(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

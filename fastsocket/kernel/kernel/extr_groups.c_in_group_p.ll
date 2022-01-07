; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/kernel/extr_groups.c_in_group_p.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/kernel/extr_groups.c_in_group_p.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cred = type { i64, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @in_group_p(i64 %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.cred*, align 8
  %4 = alloca i32, align 4
  store i64 %0, i64* %2, align 8
  %5 = call %struct.cred* (...) @current_cred()
  store %struct.cred* %5, %struct.cred** %3, align 8
  store i32 1, i32* %4, align 4
  %6 = load i64, i64* %2, align 8
  %7 = load %struct.cred*, %struct.cred** %3, align 8
  %8 = getelementptr inbounds %struct.cred, %struct.cred* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = icmp ne i64 %6, %9
  br i1 %10, label %11, label %17

11:                                               ; preds = %1
  %12 = load %struct.cred*, %struct.cred** %3, align 8
  %13 = getelementptr inbounds %struct.cred, %struct.cred* %12, i32 0, i32 1
  %14 = load i32, i32* %13, align 8
  %15 = load i64, i64* %2, align 8
  %16 = call i32 @groups_search(i32 %14, i64 %15)
  store i32 %16, i32* %4, align 4
  br label %17

17:                                               ; preds = %11, %1
  %18 = load i32, i32* %4, align 4
  ret i32 %18
}

declare dso_local %struct.cred* @current_cred(...) #1

declare dso_local i32 @groups_search(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

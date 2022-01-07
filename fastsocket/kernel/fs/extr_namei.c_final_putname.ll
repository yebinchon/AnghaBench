; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/extr_namei.c_final_putname.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/extr_namei.c_final_putname.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.filename = type { %struct.filename*, i64 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @final_putname(%struct.filename* %0) #0 {
  %2 = alloca %struct.filename*, align 8
  store %struct.filename* %0, %struct.filename** %2, align 8
  %3 = load %struct.filename*, %struct.filename** %2, align 8
  %4 = getelementptr inbounds %struct.filename, %struct.filename* %3, i32 0, i32 1
  %5 = load i64, i64* %4, align 8
  %6 = icmp ne i64 %5, 0
  br i1 %6, label %7, label %14

7:                                                ; preds = %1
  %8 = load %struct.filename*, %struct.filename** %2, align 8
  %9 = getelementptr inbounds %struct.filename, %struct.filename* %8, i32 0, i32 0
  %10 = load %struct.filename*, %struct.filename** %9, align 8
  %11 = call i32 @__putname(%struct.filename* %10)
  %12 = load %struct.filename*, %struct.filename** %2, align 8
  %13 = call i32 @kfree(%struct.filename* %12)
  br label %17

14:                                               ; preds = %1
  %15 = load %struct.filename*, %struct.filename** %2, align 8
  %16 = call i32 @__putname(%struct.filename* %15)
  br label %17

17:                                               ; preds = %14, %7
  ret void
}

declare dso_local i32 @__putname(%struct.filename*) #1

declare dso_local i32 @kfree(%struct.filename*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/core/extr_dst.c_dst_release.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/core/extr_dst.c_dst_release.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dst_entry = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @dst_release(%struct.dst_entry* %0) #0 {
  %2 = alloca %struct.dst_entry*, align 8
  %3 = alloca i32, align 4
  store %struct.dst_entry* %0, %struct.dst_entry** %2, align 8
  %4 = load %struct.dst_entry*, %struct.dst_entry** %2, align 8
  %5 = icmp ne %struct.dst_entry* %4, null
  br i1 %5, label %6, label %15

6:                                                ; preds = %1
  %7 = call i32 (...) @smp_mb__before_atomic_dec()
  %8 = load %struct.dst_entry*, %struct.dst_entry** %2, align 8
  %9 = getelementptr inbounds %struct.dst_entry, %struct.dst_entry* %8, i32 0, i32 0
  %10 = call i32 @atomic_dec_return(i32* %9)
  store i32 %10, i32* %3, align 4
  %11 = load i32, i32* %3, align 4
  %12 = icmp slt i32 %11, 0
  %13 = zext i1 %12 to i32
  %14 = call i32 @WARN_ON(i32 %13)
  br label %15

15:                                               ; preds = %6, %1
  ret void
}

declare dso_local i32 @smp_mb__before_atomic_dec(...) #1

declare dso_local i32 @atomic_dec_return(i32*) #1

declare dso_local i32 @WARN_ON(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

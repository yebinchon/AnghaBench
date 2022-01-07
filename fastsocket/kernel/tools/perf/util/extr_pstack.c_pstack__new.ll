; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/tools/perf/util/extr_pstack.c_pstack__new.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/tools/perf/util/extr_pstack.c_pstack__new.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pstack = type { i16 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.pstack* @pstack__new(i16 zeroext %0) #0 {
  %2 = alloca i16, align 2
  %3 = alloca %struct.pstack*, align 8
  store i16 %0, i16* %2, align 2
  %4 = load i16, i16* %2, align 2
  %5 = zext i16 %4 to i64
  %6 = mul i64 %5, 8
  %7 = add i64 2, %6
  %8 = trunc i64 %7 to i32
  %9 = call %struct.pstack* @zalloc(i32 %8)
  store %struct.pstack* %9, %struct.pstack** %3, align 8
  %10 = load %struct.pstack*, %struct.pstack** %3, align 8
  %11 = icmp ne %struct.pstack* %10, null
  br i1 %11, label %12, label %16

12:                                               ; preds = %1
  %13 = load i16, i16* %2, align 2
  %14 = load %struct.pstack*, %struct.pstack** %3, align 8
  %15 = getelementptr inbounds %struct.pstack, %struct.pstack* %14, i32 0, i32 0
  store i16 %13, i16* %15, align 2
  br label %16

16:                                               ; preds = %12, %1
  %17 = load %struct.pstack*, %struct.pstack** %3, align 8
  ret %struct.pstack* %17
}

declare dso_local %struct.pstack* @zalloc(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/config/ia64/extr_unwind-ia64.c_desc_abi.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/config/ia64/extr_unwind-ia64.c_desc_abi.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.unw_state_record = type { i8 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8, i8, %struct.unw_state_record*)* @desc_abi to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @desc_abi(i8 zeroext %0, i8 zeroext %1, %struct.unw_state_record* %2) #0 {
  %4 = alloca i8, align 1
  %5 = alloca i8, align 1
  %6 = alloca %struct.unw_state_record*, align 8
  store i8 %0, i8* %4, align 1
  store i8 %1, i8* %5, align 1
  store %struct.unw_state_record* %2, %struct.unw_state_record** %6, align 8
  %7 = load i8, i8* %4, align 1
  %8 = zext i8 %7 to i32
  %9 = shl i32 %8, 8
  %10 = load i8, i8* %5, align 1
  %11 = zext i8 %10 to i32
  %12 = or i32 %9, %11
  %13 = trunc i32 %12 to i8
  %14 = load %struct.unw_state_record*, %struct.unw_state_record** %6, align 8
  %15 = getelementptr inbounds %struct.unw_state_record, %struct.unw_state_record* %14, i32 0, i32 0
  store i8 %13, i8* %15, align 1
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

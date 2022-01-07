; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/xen/extr_xencomm.c_xencomm_create_inline.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/xen/extr_xencomm.c_xencomm_create_inline.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xencomm_handle = type { i32 }

@XENCOMM_INLINE_FLAG = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.xencomm_handle* (i8*)* @xencomm_create_inline to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.xencomm_handle* @xencomm_create_inline(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i64, align 8
  store i8* %0, i8** %2, align 8
  %4 = load i8*, i8** %2, align 8
  %5 = ptrtoint i8* %4 to i64
  %6 = call i32 @xencomm_is_phys_contiguous(i64 %5)
  %7 = icmp ne i32 %6, 0
  %8 = xor i1 %7, true
  %9 = zext i1 %8 to i32
  %10 = sext i32 %9 to i64
  %11 = call i32 @BUG_ON(i64 %10)
  %12 = load i8*, i8** %2, align 8
  %13 = call i64 @xencomm_pa(i8* %12)
  store i64 %13, i64* %3, align 8
  %14 = load i64, i64* %3, align 8
  %15 = load i64, i64* @XENCOMM_INLINE_FLAG, align 8
  %16 = and i64 %14, %15
  %17 = call i32 @BUG_ON(i64 %16)
  %18 = load i64, i64* %3, align 8
  %19 = load i64, i64* @XENCOMM_INLINE_FLAG, align 8
  %20 = or i64 %18, %19
  %21 = inttoptr i64 %20 to %struct.xencomm_handle*
  ret %struct.xencomm_handle* %21
}

declare dso_local i32 @BUG_ON(i64) #1

declare dso_local i32 @xencomm_is_phys_contiguous(i64) #1

declare dso_local i64 @xencomm_pa(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

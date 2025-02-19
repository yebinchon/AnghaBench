; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/compiler-rt/lib/profile/extr_GCDAProfiling.c_resize_write_buffer.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/compiler-rt/lib/profile/extr_GCDAProfiling.c_resize_write_buffer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@new_file = common dso_local global i32 0, align 4
@cur_pos = common dso_local global i64 0, align 8
@cur_buffer_size = common dso_local global i32 0, align 4
@WRITE_BUFFER_SIZE = common dso_local global i32 0, align 4
@write_buffer = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32)* @resize_write_buffer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @resize_write_buffer(i32 %0) #0 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %3 = load i32, i32* @new_file, align 4
  %4 = icmp ne i32 %3, 0
  br i1 %4, label %6, label %5

5:                                                ; preds = %1
  br label %29

6:                                                ; preds = %1
  %7 = load i64, i64* @cur_pos, align 8
  %8 = load i32, i32* %2, align 4
  %9 = sext i32 %8 to i64
  %10 = add nsw i64 %9, %7
  %11 = trunc i64 %10 to i32
  store i32 %11, i32* %2, align 4
  %12 = load i32, i32* %2, align 4
  %13 = load i32, i32* @cur_buffer_size, align 4
  %14 = icmp sle i32 %12, %13
  br i1 %14, label %15, label %16

15:                                               ; preds = %6
  br label %29

16:                                               ; preds = %6
  %17 = load i32, i32* %2, align 4
  %18 = sub nsw i32 %17, 1
  %19 = load i32, i32* @WRITE_BUFFER_SIZE, align 4
  %20 = sdiv i32 %18, %19
  %21 = add nsw i32 %20, 1
  store i32 %21, i32* %2, align 4
  %22 = load i32, i32* @WRITE_BUFFER_SIZE, align 4
  %23 = load i32, i32* %2, align 4
  %24 = mul nsw i32 %23, %22
  store i32 %24, i32* %2, align 4
  %25 = load i32, i32* @write_buffer, align 4
  %26 = load i32, i32* %2, align 4
  %27 = call i32 @realloc(i32 %25, i32 %26)
  store i32 %27, i32* @write_buffer, align 4
  %28 = load i32, i32* %2, align 4
  store i32 %28, i32* @cur_buffer_size, align 4
  br label %29

29:                                               ; preds = %16, %15, %5
  ret void
}

declare dso_local i32 @realloc(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

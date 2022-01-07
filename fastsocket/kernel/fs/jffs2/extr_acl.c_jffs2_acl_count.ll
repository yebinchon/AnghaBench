; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/jffs2/extr_acl.c_jffs2_acl_count.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/jffs2/extr_acl.c_jffs2_acl_count.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i64)* @jffs2_acl_count to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @jffs2_acl_count(i64 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  store i64 %0, i64* %3, align 8
  %5 = load i64, i64* %3, align 8
  %6 = sub i64 %5, 4
  store i64 %6, i64* %3, align 8
  %7 = load i64, i64* %3, align 8
  %8 = icmp ult i64 %7, 16
  br i1 %8, label %9, label %18

9:                                                ; preds = %1
  %10 = load i64, i64* %3, align 8
  %11 = urem i64 %10, 4
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %14

13:                                               ; preds = %9
  store i32 -1, i32* %2, align 4
  br label %30

14:                                               ; preds = %9
  %15 = load i64, i64* %3, align 8
  %16 = udiv i64 %15, 4
  %17 = trunc i64 %16 to i32
  store i32 %17, i32* %2, align 4
  br label %30

18:                                               ; preds = %1
  %19 = load i64, i64* %3, align 8
  %20 = sub i64 %19, 16
  store i64 %20, i64* %4, align 8
  %21 = load i64, i64* %4, align 8
  %22 = urem i64 %21, 4
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %25

24:                                               ; preds = %18
  store i32 -1, i32* %2, align 4
  br label %30

25:                                               ; preds = %18
  %26 = load i64, i64* %4, align 8
  %27 = udiv i64 %26, 4
  %28 = add i64 %27, 4
  %29 = trunc i64 %28 to i32
  store i32 %29, i32* %2, align 4
  br label %30

30:                                               ; preds = %25, %24, %14, %13
  %31 = load i32, i32* %2, align 4
  ret i32 %31
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

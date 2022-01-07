; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcclibs/libiberty/extr_cp-demangle.c_d_call_offset.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcclibs/libiberty/extr_cp-demangle.c_d_call_offset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.d_info = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.d_info*, i32)* @d_call_offset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @d_call_offset(%struct.d_info* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.d_info*, align 8
  %5 = alloca i32, align 4
  store %struct.d_info* %0, %struct.d_info** %4, align 8
  store i32 %1, i32* %5, align 4
  %6 = load i32, i32* %5, align 4
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %8, label %11

8:                                                ; preds = %2
  %9 = load %struct.d_info*, %struct.d_info** %4, align 8
  %10 = call i32 @d_next_char(%struct.d_info* %9)
  store i32 %10, i32* %5, align 4
  br label %11

11:                                               ; preds = %8, %2
  %12 = load i32, i32* %5, align 4
  %13 = icmp eq i32 %12, 104
  br i1 %13, label %14, label %17

14:                                               ; preds = %11
  %15 = load %struct.d_info*, %struct.d_info** %4, align 8
  %16 = call i32 @d_number(%struct.d_info* %15)
  br label %32

17:                                               ; preds = %11
  %18 = load i32, i32* %5, align 4
  %19 = icmp eq i32 %18, 118
  br i1 %19, label %20, label %30

20:                                               ; preds = %17
  %21 = load %struct.d_info*, %struct.d_info** %4, align 8
  %22 = call i32 @d_number(%struct.d_info* %21)
  %23 = load %struct.d_info*, %struct.d_info** %4, align 8
  %24 = call i32 @d_check_char(%struct.d_info* %23, i8 signext 95)
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %27, label %26

26:                                               ; preds = %20
  store i32 0, i32* %3, align 4
  br label %38

27:                                               ; preds = %20
  %28 = load %struct.d_info*, %struct.d_info** %4, align 8
  %29 = call i32 @d_number(%struct.d_info* %28)
  br label %31

30:                                               ; preds = %17
  store i32 0, i32* %3, align 4
  br label %38

31:                                               ; preds = %27
  br label %32

32:                                               ; preds = %31, %14
  %33 = load %struct.d_info*, %struct.d_info** %4, align 8
  %34 = call i32 @d_check_char(%struct.d_info* %33, i8 signext 95)
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %37, label %36

36:                                               ; preds = %32
  store i32 0, i32* %3, align 4
  br label %38

37:                                               ; preds = %32
  store i32 1, i32* %3, align 4
  br label %38

38:                                               ; preds = %37, %36, %30, %26
  %39 = load i32, i32* %3, align 4
  ret i32 %39
}

declare dso_local i32 @d_next_char(%struct.d_info*) #1

declare dso_local i32 @d_number(%struct.d_info*) #1

declare dso_local i32 @d_check_char(%struct.d_info*, i8 signext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

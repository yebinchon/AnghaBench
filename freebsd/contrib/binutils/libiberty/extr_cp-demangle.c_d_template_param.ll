; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/libiberty/extr_cp-demangle.c_d_template_param.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/libiberty/extr_cp-demangle.c_d_template_param.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.demangle_component = type { i32 }
%struct.d_info = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.demangle_component* (%struct.d_info*)* @d_template_param to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.demangle_component* @d_template_param(%struct.d_info* %0) #0 {
  %2 = alloca %struct.demangle_component*, align 8
  %3 = alloca %struct.d_info*, align 8
  %4 = alloca i64, align 8
  store %struct.d_info* %0, %struct.d_info** %3, align 8
  %5 = load %struct.d_info*, %struct.d_info** %3, align 8
  %6 = call i32 @d_check_char(%struct.d_info* %5, i8 signext 84)
  %7 = icmp ne i32 %6, 0
  br i1 %7, label %9, label %8

8:                                                ; preds = %1
  store %struct.demangle_component* null, %struct.demangle_component** %2, align 8
  br label %37

9:                                                ; preds = %1
  %10 = load %struct.d_info*, %struct.d_info** %3, align 8
  %11 = call signext i8 @d_peek_char(%struct.d_info* %10)
  %12 = sext i8 %11 to i32
  %13 = icmp eq i32 %12, 95
  br i1 %13, label %14, label %15

14:                                               ; preds = %9
  store i64 0, i64* %4, align 8
  br label %24

15:                                               ; preds = %9
  %16 = load %struct.d_info*, %struct.d_info** %3, align 8
  %17 = call i64 @d_number(%struct.d_info* %16)
  store i64 %17, i64* %4, align 8
  %18 = load i64, i64* %4, align 8
  %19 = icmp slt i64 %18, 0
  br i1 %19, label %20, label %21

20:                                               ; preds = %15
  store %struct.demangle_component* null, %struct.demangle_component** %2, align 8
  br label %37

21:                                               ; preds = %15
  %22 = load i64, i64* %4, align 8
  %23 = add nsw i64 %22, 1
  store i64 %23, i64* %4, align 8
  br label %24

24:                                               ; preds = %21, %14
  %25 = load %struct.d_info*, %struct.d_info** %3, align 8
  %26 = call i32 @d_check_char(%struct.d_info* %25, i8 signext 95)
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %29, label %28

28:                                               ; preds = %24
  store %struct.demangle_component* null, %struct.demangle_component** %2, align 8
  br label %37

29:                                               ; preds = %24
  %30 = load %struct.d_info*, %struct.d_info** %3, align 8
  %31 = getelementptr inbounds %struct.d_info, %struct.d_info* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = add nsw i32 %32, 1
  store i32 %33, i32* %31, align 4
  %34 = load %struct.d_info*, %struct.d_info** %3, align 8
  %35 = load i64, i64* %4, align 8
  %36 = call %struct.demangle_component* @d_make_template_param(%struct.d_info* %34, i64 %35)
  store %struct.demangle_component* %36, %struct.demangle_component** %2, align 8
  br label %37

37:                                               ; preds = %29, %28, %20, %8
  %38 = load %struct.demangle_component*, %struct.demangle_component** %2, align 8
  ret %struct.demangle_component* %38
}

declare dso_local i32 @d_check_char(%struct.d_info*, i8 signext) #1

declare dso_local signext i8 @d_peek_char(%struct.d_info*) #1

declare dso_local i64 @d_number(%struct.d_info*) #1

declare dso_local %struct.demangle_component* @d_make_template_param(%struct.d_info*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

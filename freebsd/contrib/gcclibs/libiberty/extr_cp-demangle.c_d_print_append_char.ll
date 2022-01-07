; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcclibs/libiberty/extr_cp-demangle.c_d_print_append_char.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcclibs/libiberty/extr_cp-demangle.c_d_print_append_char.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.d_print_info = type { i32*, i64, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.d_print_info*, i32)* @d_print_append_char to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @d_print_append_char(%struct.d_print_info* %0, i32 %1) #0 {
  %3 = alloca %struct.d_print_info*, align 8
  %4 = alloca i32, align 4
  store %struct.d_print_info* %0, %struct.d_print_info** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load %struct.d_print_info*, %struct.d_print_info** %3, align 8
  %6 = getelementptr inbounds %struct.d_print_info, %struct.d_print_info* %5, i32 0, i32 0
  %7 = load i32*, i32** %6, align 8
  %8 = icmp ne i32* %7, null
  br i1 %8, label %9, label %39

9:                                                ; preds = %2
  %10 = load %struct.d_print_info*, %struct.d_print_info** %3, align 8
  %11 = getelementptr inbounds %struct.d_print_info, %struct.d_print_info* %10, i32 0, i32 1
  %12 = load i64, i64* %11, align 8
  %13 = load %struct.d_print_info*, %struct.d_print_info** %3, align 8
  %14 = getelementptr inbounds %struct.d_print_info, %struct.d_print_info* %13, i32 0, i32 2
  %15 = load i64, i64* %14, align 8
  %16 = icmp uge i64 %12, %15
  br i1 %16, label %17, label %26

17:                                               ; preds = %9
  %18 = load %struct.d_print_info*, %struct.d_print_info** %3, align 8
  %19 = call i32 @d_print_resize(%struct.d_print_info* %18, i32 1)
  %20 = load %struct.d_print_info*, %struct.d_print_info** %3, align 8
  %21 = getelementptr inbounds %struct.d_print_info, %struct.d_print_info* %20, i32 0, i32 0
  %22 = load i32*, i32** %21, align 8
  %23 = icmp eq i32* %22, null
  br i1 %23, label %24, label %25

24:                                               ; preds = %17
  br label %39

25:                                               ; preds = %17
  br label %26

26:                                               ; preds = %25, %9
  %27 = load i32, i32* %4, align 4
  %28 = load %struct.d_print_info*, %struct.d_print_info** %3, align 8
  %29 = getelementptr inbounds %struct.d_print_info, %struct.d_print_info* %28, i32 0, i32 0
  %30 = load i32*, i32** %29, align 8
  %31 = load %struct.d_print_info*, %struct.d_print_info** %3, align 8
  %32 = getelementptr inbounds %struct.d_print_info, %struct.d_print_info* %31, i32 0, i32 1
  %33 = load i64, i64* %32, align 8
  %34 = getelementptr inbounds i32, i32* %30, i64 %33
  store i32 %27, i32* %34, align 4
  %35 = load %struct.d_print_info*, %struct.d_print_info** %3, align 8
  %36 = getelementptr inbounds %struct.d_print_info, %struct.d_print_info* %35, i32 0, i32 1
  %37 = load i64, i64* %36, align 8
  %38 = add i64 %37, 1
  store i64 %38, i64* %36, align 8
  br label %39

39:                                               ; preds = %24, %26, %2
  ret void
}

declare dso_local i32 @d_print_resize(%struct.d_print_info*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

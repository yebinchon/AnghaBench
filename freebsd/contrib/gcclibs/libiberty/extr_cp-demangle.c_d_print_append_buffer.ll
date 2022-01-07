; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcclibs/libiberty/extr_cp-demangle.c_d_print_append_buffer.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcclibs/libiberty/extr_cp-demangle.c_d_print_append_buffer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.d_print_info = type { i64, i64, i32* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.d_print_info*, i8*, i64)* @d_print_append_buffer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @d_print_append_buffer(%struct.d_print_info* %0, i8* %1, i64 %2) #0 {
  %4 = alloca %struct.d_print_info*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  store %struct.d_print_info* %0, %struct.d_print_info** %4, align 8
  store i8* %1, i8** %5, align 8
  store i64 %2, i64* %6, align 8
  %7 = load %struct.d_print_info*, %struct.d_print_info** %4, align 8
  %8 = getelementptr inbounds %struct.d_print_info, %struct.d_print_info* %7, i32 0, i32 2
  %9 = load i32*, i32** %8, align 8
  %10 = icmp ne i32* %9, null
  br i1 %10, label %11, label %47

11:                                               ; preds = %3
  %12 = load %struct.d_print_info*, %struct.d_print_info** %4, align 8
  %13 = getelementptr inbounds %struct.d_print_info, %struct.d_print_info* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = load i64, i64* %6, align 8
  %16 = add i64 %14, %15
  %17 = load %struct.d_print_info*, %struct.d_print_info** %4, align 8
  %18 = getelementptr inbounds %struct.d_print_info, %struct.d_print_info* %17, i32 0, i32 1
  %19 = load i64, i64* %18, align 8
  %20 = icmp ugt i64 %16, %19
  br i1 %20, label %21, label %31

21:                                               ; preds = %11
  %22 = load %struct.d_print_info*, %struct.d_print_info** %4, align 8
  %23 = load i64, i64* %6, align 8
  %24 = call i32 @d_print_resize(%struct.d_print_info* %22, i64 %23)
  %25 = load %struct.d_print_info*, %struct.d_print_info** %4, align 8
  %26 = getelementptr inbounds %struct.d_print_info, %struct.d_print_info* %25, i32 0, i32 2
  %27 = load i32*, i32** %26, align 8
  %28 = icmp eq i32* %27, null
  br i1 %28, label %29, label %30

29:                                               ; preds = %21
  br label %47

30:                                               ; preds = %21
  br label %31

31:                                               ; preds = %30, %11
  %32 = load %struct.d_print_info*, %struct.d_print_info** %4, align 8
  %33 = getelementptr inbounds %struct.d_print_info, %struct.d_print_info* %32, i32 0, i32 2
  %34 = load i32*, i32** %33, align 8
  %35 = load %struct.d_print_info*, %struct.d_print_info** %4, align 8
  %36 = getelementptr inbounds %struct.d_print_info, %struct.d_print_info* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = getelementptr inbounds i32, i32* %34, i64 %37
  %39 = load i8*, i8** %5, align 8
  %40 = load i64, i64* %6, align 8
  %41 = call i32 @memcpy(i32* %38, i8* %39, i64 %40)
  %42 = load i64, i64* %6, align 8
  %43 = load %struct.d_print_info*, %struct.d_print_info** %4, align 8
  %44 = getelementptr inbounds %struct.d_print_info, %struct.d_print_info* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = add i64 %45, %42
  store i64 %46, i64* %44, align 8
  br label %47

47:                                               ; preds = %29, %31, %3
  ret void
}

declare dso_local i32 @d_print_resize(%struct.d_print_info*, i64) #1

declare dso_local i32 @memcpy(i32*, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

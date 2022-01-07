; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/gas/extr_cond.c_s_ifb.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/gas/extr_cond.c_s_ifb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.conditional_frame = type { i32, %struct.TYPE_2__*, i64 }
%struct.TYPE_2__ = type { i32 }

@is_end_of_line = common dso_local global i32* null, align 8
@input_line_pointer = common dso_local global i64* null, align 8
@cond_obstack = common dso_local global i32 0, align 4
@current_cframe = common dso_local global %struct.conditional_frame* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @s_ifb(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.conditional_frame, align 8
  %4 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %5 = call i32 @initialize_cframe(%struct.conditional_frame* %3)
  %6 = getelementptr inbounds %struct.conditional_frame, %struct.conditional_frame* %3, i32 0, i32 2
  %7 = load i64, i64* %6, align 8
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %9, label %11

9:                                                ; preds = %1
  %10 = getelementptr inbounds %struct.conditional_frame, %struct.conditional_frame* %3, i32 0, i32 0
  store i32 1, i32* %10, align 8
  br label %28

11:                                               ; preds = %1
  %12 = call i32 (...) @SKIP_WHITESPACE()
  %13 = load i32*, i32** @is_end_of_line, align 8
  %14 = load i64*, i64** @input_line_pointer, align 8
  %15 = load i64, i64* %14, align 8
  %16 = trunc i64 %15 to i8
  %17 = zext i8 %16 to i64
  %18 = getelementptr inbounds i32, i32* %13, i64 %17
  %19 = load i32, i32* %18, align 4
  store i32 %19, i32* %4, align 4
  %20 = load i32, i32* %2, align 4
  %21 = load i32, i32* %4, align 4
  %22 = icmp ne i32 %21, 0
  %23 = xor i1 %22, true
  %24 = zext i1 %23 to i32
  %25 = icmp eq i32 %20, %24
  %26 = zext i1 %25 to i32
  %27 = getelementptr inbounds %struct.conditional_frame, %struct.conditional_frame* %3, i32 0, i32 0
  store i32 %26, i32* %27, align 8
  br label %28

28:                                               ; preds = %11, %9
  %29 = call i64 @obstack_copy(i32* @cond_obstack, %struct.conditional_frame* %3, i32 24)
  %30 = inttoptr i64 %29 to %struct.conditional_frame*
  store %struct.conditional_frame* %30, %struct.conditional_frame** @current_cframe, align 8
  %31 = call i64 (...) @LISTING_SKIP_COND()
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %49

33:                                               ; preds = %28
  %34 = getelementptr inbounds %struct.conditional_frame, %struct.conditional_frame* %3, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %49

37:                                               ; preds = %33
  %38 = getelementptr inbounds %struct.conditional_frame, %struct.conditional_frame* %3, i32 0, i32 1
  %39 = load %struct.TYPE_2__*, %struct.TYPE_2__** %38, align 8
  %40 = icmp eq %struct.TYPE_2__* %39, null
  br i1 %40, label %47, label %41

41:                                               ; preds = %37
  %42 = getelementptr inbounds %struct.conditional_frame, %struct.conditional_frame* %3, i32 0, i32 1
  %43 = load %struct.TYPE_2__*, %struct.TYPE_2__** %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %49, label %47

47:                                               ; preds = %41, %37
  %48 = call i32 @listing_list(i32 2)
  br label %49

49:                                               ; preds = %47, %41, %33, %28
  %50 = call i32 (...) @ignore_rest_of_line()
  ret void
}

declare dso_local i32 @initialize_cframe(%struct.conditional_frame*) #1

declare dso_local i32 @SKIP_WHITESPACE(...) #1

declare dso_local i64 @obstack_copy(i32*, %struct.conditional_frame*, i32) #1

declare dso_local i64 @LISTING_SKIP_COND(...) #1

declare dso_local i32 @listing_list(i32) #1

declare dso_local i32 @ignore_rest_of_line(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

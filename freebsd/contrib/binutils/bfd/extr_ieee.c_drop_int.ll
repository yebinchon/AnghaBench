; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/bfd/extr_ieee.c_drop_int.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/bfd/extr_ieee.c_drop_int.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.output_buffer_struct = type { i32, i32 }

@output_ptr = common dso_local global i32 0, align 4
@output_buffer = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.output_buffer_struct*)* @drop_int to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @drop_int(%struct.output_buffer_struct* %0) #0 {
  %2 = alloca %struct.output_buffer_struct*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store %struct.output_buffer_struct* %0, %struct.output_buffer_struct** %2, align 8
  %5 = call i32 (...) @THIS()
  store i32 %5, i32* %3, align 4
  %6 = load i32, i32* %3, align 4
  %7 = icmp sle i32 %6, 132
  br i1 %7, label %8, label %25

8:                                                ; preds = %1
  %9 = call i32 (...) @NEXT()
  %10 = load i32, i32* %3, align 4
  switch i32 %10, label %24 [
    i32 132, label %11
    i32 131, label %14
    i32 130, label %17
    i32 129, label %20
    i32 128, label %23
  ]

11:                                               ; preds = %8
  %12 = call i32 (...) @THIS()
  store i32 %12, i32* %4, align 4
  %13 = call i32 (...) @NEXT()
  br label %14

14:                                               ; preds = %8, %11
  %15 = call i32 (...) @THIS()
  store i32 %15, i32* %4, align 4
  %16 = call i32 (...) @NEXT()
  br label %17

17:                                               ; preds = %8, %14
  %18 = call i32 (...) @THIS()
  store i32 %18, i32* %4, align 4
  %19 = call i32 (...) @NEXT()
  br label %20

20:                                               ; preds = %8, %17
  %21 = call i32 (...) @THIS()
  store i32 %21, i32* %4, align 4
  %22 = call i32 (...) @NEXT()
  br label %23

23:                                               ; preds = %8, %20
  br label %24

24:                                               ; preds = %8, %23
  br label %25

25:                                               ; preds = %24, %1
  %26 = call i32 @OUT(i32 132)
  %27 = load i32, i32* @output_ptr, align 4
  %28 = load %struct.output_buffer_struct*, %struct.output_buffer_struct** %2, align 8
  %29 = getelementptr inbounds %struct.output_buffer_struct, %struct.output_buffer_struct* %28, i32 0, i32 1
  store i32 %27, i32* %29, align 4
  %30 = load i32, i32* @output_buffer, align 4
  %31 = load %struct.output_buffer_struct*, %struct.output_buffer_struct** %2, align 8
  %32 = getelementptr inbounds %struct.output_buffer_struct, %struct.output_buffer_struct* %31, i32 0, i32 0
  store i32 %30, i32* %32, align 4
  %33 = call i32 @OUT(i32 0)
  %34 = call i32 @OUT(i32 0)
  %35 = call i32 @OUT(i32 0)
  %36 = call i32 @OUT(i32 0)
  ret void
}

declare dso_local i32 @THIS(...) #1

declare dso_local i32 @NEXT(...) #1

declare dso_local i32 @OUT(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

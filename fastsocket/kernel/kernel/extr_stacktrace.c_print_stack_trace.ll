; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/kernel/extr_stacktrace.c_print_stack_trace.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/kernel/extr_stacktrace.c_print_stack_trace.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stack_trace = type { i32, i32* }

@.str = private unnamed_addr constant [4 x i8] c"%*c\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @print_stack_trace(%struct.stack_trace* %0, i32 %1) #0 {
  %3 = alloca %struct.stack_trace*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.stack_trace* %0, %struct.stack_trace** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.stack_trace*, %struct.stack_trace** %3, align 8
  %7 = getelementptr inbounds %struct.stack_trace, %struct.stack_trace* %6, i32 0, i32 1
  %8 = load i32*, i32** %7, align 8
  %9 = icmp ne i32* %8, null
  %10 = xor i1 %9, true
  %11 = zext i1 %10 to i32
  %12 = call i64 @WARN_ON(i32 %11)
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %15

14:                                               ; preds = %2
  br label %37

15:                                               ; preds = %2
  store i32 0, i32* %5, align 4
  br label %16

16:                                               ; preds = %34, %15
  %17 = load i32, i32* %5, align 4
  %18 = load %struct.stack_trace*, %struct.stack_trace** %3, align 8
  %19 = getelementptr inbounds %struct.stack_trace, %struct.stack_trace* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = icmp slt i32 %17, %20
  br i1 %21, label %22, label %37

22:                                               ; preds = %16
  %23 = load i32, i32* %4, align 4
  %24 = add nsw i32 1, %23
  %25 = call i32 @printk(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32 %24, i8 signext 32)
  %26 = load %struct.stack_trace*, %struct.stack_trace** %3, align 8
  %27 = getelementptr inbounds %struct.stack_trace, %struct.stack_trace* %26, i32 0, i32 1
  %28 = load i32*, i32** %27, align 8
  %29 = load i32, i32* %5, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds i32, i32* %28, i64 %30
  %32 = load i32, i32* %31, align 4
  %33 = call i32 @print_ip_sym(i32 %32)
  br label %34

34:                                               ; preds = %22
  %35 = load i32, i32* %5, align 4
  %36 = add nsw i32 %35, 1
  store i32 %36, i32* %5, align 4
  br label %16

37:                                               ; preds = %14, %16
  ret void
}

declare dso_local i64 @WARN_ON(i32) #1

declare dso_local i32 @printk(i8*, i32, i8 signext) #1

declare dso_local i32 @print_ip_sym(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/diff/src/extr_util.c_print_message_queue.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/diff/src/extr_util.c_print_message_queue.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.msg = type { i8*, %struct.msg* }

@msg_chain = common dso_local global %struct.msg* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @print_message_queue() #0 {
  %1 = alloca [5 x i8*], align 16
  %2 = alloca i32, align 4
  %3 = alloca %struct.msg*, align 8
  %4 = alloca %struct.msg*, align 8
  %5 = load %struct.msg*, %struct.msg** @msg_chain, align 8
  store %struct.msg* %5, %struct.msg** %3, align 8
  br label %6

6:                                                ; preds = %40, %0
  %7 = load %struct.msg*, %struct.msg** %3, align 8
  %8 = icmp ne %struct.msg* %7, null
  br i1 %8, label %9, label %56

9:                                                ; preds = %6
  %10 = load %struct.msg*, %struct.msg** %3, align 8
  %11 = getelementptr inbounds %struct.msg, %struct.msg* %10, i32 0, i32 1
  %12 = load %struct.msg*, %struct.msg** %11, align 8
  store %struct.msg* %12, %struct.msg** %4, align 8
  %13 = load %struct.msg*, %struct.msg** %3, align 8
  %14 = getelementptr inbounds %struct.msg, %struct.msg* %13, i32 0, i32 0
  %15 = load i8*, i8** %14, align 8
  %16 = getelementptr inbounds [5 x i8*], [5 x i8*]* %1, i64 0, i64 0
  store i8* %15, i8** %16, align 16
  store i32 0, i32* %2, align 4
  br label %17

17:                                               ; preds = %37, %9
  %18 = load i32, i32* %2, align 4
  %19 = icmp slt i32 %18, 4
  br i1 %19, label %20, label %40

20:                                               ; preds = %17
  %21 = load i32, i32* %2, align 4
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds [5 x i8*], [5 x i8*]* %1, i64 0, i64 %22
  %24 = load i8*, i8** %23, align 8
  %25 = load i32, i32* %2, align 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds [5 x i8*], [5 x i8*]* %1, i64 0, i64 %26
  %28 = load i8*, i8** %27, align 8
  %29 = call i32 @strlen(i8* %28)
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds i8, i8* %24, i64 %30
  %32 = getelementptr inbounds i8, i8* %31, i64 1
  %33 = load i32, i32* %2, align 4
  %34 = add nsw i32 %33, 1
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds [5 x i8*], [5 x i8*]* %1, i64 0, i64 %35
  store i8* %32, i8** %36, align 8
  br label %37

37:                                               ; preds = %20
  %38 = load i32, i32* %2, align 4
  %39 = add nsw i32 %38, 1
  store i32 %39, i32* %2, align 4
  br label %17

40:                                               ; preds = %17
  %41 = getelementptr inbounds [5 x i8*], [5 x i8*]* %1, i64 0, i64 0
  %42 = load i8*, i8** %41, align 16
  %43 = call i8* @_(i8* %42)
  %44 = getelementptr inbounds [5 x i8*], [5 x i8*]* %1, i64 0, i64 1
  %45 = load i8*, i8** %44, align 8
  %46 = getelementptr inbounds [5 x i8*], [5 x i8*]* %1, i64 0, i64 2
  %47 = load i8*, i8** %46, align 16
  %48 = getelementptr inbounds [5 x i8*], [5 x i8*]* %1, i64 0, i64 3
  %49 = load i8*, i8** %48, align 8
  %50 = getelementptr inbounds [5 x i8*], [5 x i8*]* %1, i64 0, i64 4
  %51 = load i8*, i8** %50, align 16
  %52 = call i32 @printf(i8* %43, i8* %45, i8* %47, i8* %49, i8* %51)
  %53 = load %struct.msg*, %struct.msg** %3, align 8
  %54 = call i32 @free(%struct.msg* %53)
  %55 = load %struct.msg*, %struct.msg** %4, align 8
  store %struct.msg* %55, %struct.msg** %3, align 8
  br label %6

56:                                               ; preds = %6
  ret void
}

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @printf(i8*, i8*, i8*, i8*, i8*) #1

declare dso_local i8* @_(i8*) #1

declare dso_local i32 @free(%struct.msg*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

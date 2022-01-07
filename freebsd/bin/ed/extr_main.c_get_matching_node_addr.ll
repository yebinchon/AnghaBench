; ModuleID = '/home/carl/AnghaBench/freebsd/bin/ed/extr_main.c_get_matching_node_addr.c'
source_filename = "/home/carl/AnghaBench/freebsd/bin/ed/extr_main.c_get_matching_node_addr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32 }

@current_addr = common dso_local global i64 0, align 8
@ERR = common dso_local global i64 0, align 8
@addr_last = common dso_local global i32 0, align 4
@isbinary = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [9 x i8] c"no match\00", align 1
@errmsg = common dso_local global i8* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @get_matching_node_addr(i32* %0, i32 %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.TYPE_4__*, align 8
  store i32* %0, i32** %4, align 8
  store i32 %1, i32* %5, align 4
  %9 = load i64, i64* @current_addr, align 8
  store i64 %9, i64* %7, align 8
  %10 = load i32*, i32** %4, align 8
  %11 = icmp ne i32* %10, null
  br i1 %11, label %14, label %12

12:                                               ; preds = %2
  %13 = load i64, i64* @ERR, align 8
  store i64 %13, i64* %3, align 8
  br label %61

14:                                               ; preds = %2
  br label %15

15:                                               ; preds = %55, %14
  %16 = load i32, i32* %5, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %22

18:                                               ; preds = %15
  %19 = load i64, i64* %7, align 8
  %20 = load i32, i32* @addr_last, align 4
  %21 = call i64 @INC_MOD(i64 %19, i32 %20)
  br label %26

22:                                               ; preds = %15
  %23 = load i64, i64* %7, align 8
  %24 = load i32, i32* @addr_last, align 4
  %25 = call i64 @DEC_MOD(i64 %23, i32 %24)
  br label %26

26:                                               ; preds = %22, %18
  %27 = phi i64 [ %21, %18 ], [ %25, %22 ]
  store i64 %27, i64* %7, align 8
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %54

29:                                               ; preds = %26
  %30 = load i64, i64* %7, align 8
  %31 = call %struct.TYPE_4__* @get_addressed_line_node(i64 %30)
  store %struct.TYPE_4__* %31, %struct.TYPE_4__** %8, align 8
  %32 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %33 = call i8* @get_sbuf_line(%struct.TYPE_4__* %32)
  store i8* %33, i8** %6, align 8
  %34 = icmp eq i8* %33, null
  br i1 %34, label %35, label %37

35:                                               ; preds = %29
  %36 = load i64, i64* @ERR, align 8
  store i64 %36, i64* %3, align 8
  br label %61

37:                                               ; preds = %29
  %38 = load i64, i64* @isbinary, align 8
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %46

40:                                               ; preds = %37
  %41 = load i8*, i8** %6, align 8
  %42 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %43 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = call i32 @NUL_TO_NEWLINE(i8* %41, i32 %44)
  br label %46

46:                                               ; preds = %40, %37
  %47 = load i32*, i32** %4, align 8
  %48 = load i8*, i8** %6, align 8
  %49 = call i32 @regexec(i32* %47, i8* %48, i32 0, i32* null, i32 0)
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %53, label %51

51:                                               ; preds = %46
  %52 = load i64, i64* %7, align 8
  store i64 %52, i64* %3, align 8
  br label %61

53:                                               ; preds = %46
  br label %54

54:                                               ; preds = %53, %26
  br label %55

55:                                               ; preds = %54
  %56 = load i64, i64* %7, align 8
  %57 = load i64, i64* @current_addr, align 8
  %58 = icmp ne i64 %56, %57
  br i1 %58, label %15, label %59

59:                                               ; preds = %55
  store i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i8** @errmsg, align 8
  %60 = load i64, i64* @ERR, align 8
  store i64 %60, i64* %3, align 8
  br label %61

61:                                               ; preds = %59, %51, %35, %12
  %62 = load i64, i64* %3, align 8
  ret i64 %62
}

declare dso_local i64 @INC_MOD(i64, i32) #1

declare dso_local i64 @DEC_MOD(i64, i32) #1

declare dso_local %struct.TYPE_4__* @get_addressed_line_node(i64) #1

declare dso_local i8* @get_sbuf_line(%struct.TYPE_4__*) #1

declare dso_local i32 @NUL_TO_NEWLINE(i8*, i32) #1

declare dso_local i32 @regexec(i32*, i8*, i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

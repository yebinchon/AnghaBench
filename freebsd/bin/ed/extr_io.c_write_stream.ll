; ModuleID = '/home/carl/AnghaBench/freebsd/bin/ed/extr_io.c_write_stream.c'
source_filename = "/home/carl/AnghaBench/freebsd/bin/ed/extr_io.c_write_stream.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, %struct.TYPE_4__* }

@ERR = common dso_local global i64 0, align 8
@addr_last = common dso_local global i64 0, align 8
@isbinary = common dso_local global i32 0, align 4
@newline_added = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @write_stream(i32* %0, i64 %1, i64 %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.TYPE_4__*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  store i32* %0, i32** %5, align 8
  store i64 %1, i64* %6, align 8
  store i64 %2, i64* %7, align 8
  %12 = load i64, i64* %6, align 8
  %13 = call %struct.TYPE_4__* @get_addressed_line_node(i64 %12)
  store %struct.TYPE_4__* %13, %struct.TYPE_4__** %8, align 8
  store i64 0, i64* %9, align 8
  br label %14

14:                                               ; preds = %61, %3
  %15 = load i64, i64* %6, align 8
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %21

17:                                               ; preds = %14
  %18 = load i64, i64* %6, align 8
  %19 = load i64, i64* %7, align 8
  %20 = icmp sle i64 %18, %19
  br label %21

21:                                               ; preds = %17, %14
  %22 = phi i1 [ false, %14 ], [ %20, %17 ]
  br i1 %22, label %23, label %67

23:                                               ; preds = %21
  %24 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %25 = call i8* @get_sbuf_line(%struct.TYPE_4__* %24)
  store i8* %25, i8** %10, align 8
  %26 = icmp eq i8* %25, null
  br i1 %26, label %27, label %29

27:                                               ; preds = %23
  %28 = load i64, i64* @ERR, align 8
  store i64 %28, i64* %4, align 8
  br label %69

29:                                               ; preds = %23
  %30 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  store i32 %32, i32* %11, align 4
  %33 = load i64, i64* %6, align 8
  %34 = load i64, i64* @addr_last, align 8
  %35 = icmp ne i64 %33, %34
  br i1 %35, label %42, label %36

36:                                               ; preds = %29
  %37 = load i32, i32* @isbinary, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %42

39:                                               ; preds = %36
  %40 = load i32, i32* @newline_added, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %48, label %42

42:                                               ; preds = %39, %36, %29
  %43 = load i8*, i8** %10, align 8
  %44 = load i32, i32* %11, align 4
  %45 = add nsw i32 %44, 1
  store i32 %45, i32* %11, align 4
  %46 = sext i32 %44 to i64
  %47 = getelementptr inbounds i8, i8* %43, i64 %46
  store i8 10, i8* %47, align 1
  br label %48

48:                                               ; preds = %42, %39
  %49 = load i32*, i32** %5, align 8
  %50 = load i8*, i8** %10, align 8
  %51 = load i32, i32* %11, align 4
  %52 = call i64 @put_stream_line(i32* %49, i8* %50, i32 %51)
  %53 = icmp slt i64 %52, 0
  br i1 %53, label %54, label %56

54:                                               ; preds = %48
  %55 = load i64, i64* @ERR, align 8
  store i64 %55, i64* %4, align 8
  br label %69

56:                                               ; preds = %48
  %57 = load i32, i32* %11, align 4
  %58 = sext i32 %57 to i64
  %59 = load i64, i64* %9, align 8
  %60 = add i64 %59, %58
  store i64 %60, i64* %9, align 8
  br label %61

61:                                               ; preds = %56
  %62 = load i64, i64* %6, align 8
  %63 = add nsw i64 %62, 1
  store i64 %63, i64* %6, align 8
  %64 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %65 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %64, i32 0, i32 1
  %66 = load %struct.TYPE_4__*, %struct.TYPE_4__** %65, align 8
  store %struct.TYPE_4__* %66, %struct.TYPE_4__** %8, align 8
  br label %14

67:                                               ; preds = %21
  %68 = load i64, i64* %9, align 8
  store i64 %68, i64* %4, align 8
  br label %69

69:                                               ; preds = %67, %54, %27
  %70 = load i64, i64* %4, align 8
  ret i64 %70
}

declare dso_local %struct.TYPE_4__* @get_addressed_line_node(i64) #1

declare dso_local i8* @get_sbuf_line(%struct.TYPE_4__*) #1

declare dso_local i64 @put_stream_line(i32*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

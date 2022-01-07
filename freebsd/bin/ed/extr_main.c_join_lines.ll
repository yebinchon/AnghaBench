; ModuleID = '/home/carl/AnghaBench/freebsd/bin/ed/extr_main.c_join_lines.c'
source_filename = "/home/carl/AnghaBench/freebsd/bin/ed/extr_main.c_join_lines.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, %struct.TYPE_4__* }

@join_lines.buf = internal global i8* null, align 8
@join_lines.n = internal global i32 0, align 4
@addr_last = common dso_local global i32 0, align 4
@ERR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@current_addr = common dso_local global i64 0, align 8
@UADD = common dso_local global i32 0, align 4
@modified = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @join_lines(i64 %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_4__*, align 8
  %9 = alloca %struct.TYPE_4__*, align 8
  store i64 %0, i64* %4, align 8
  store i64 %1, i64* %5, align 8
  store i32 0, i32* %7, align 4
  %10 = load i64, i64* %5, align 8
  %11 = load i32, i32* @addr_last, align 4
  %12 = call i64 @INC_MOD(i64 %10, i32 %11)
  %13 = call %struct.TYPE_4__* @get_addressed_line_node(i64 %12)
  store %struct.TYPE_4__* %13, %struct.TYPE_4__** %9, align 8
  %14 = load i64, i64* %4, align 8
  %15 = call %struct.TYPE_4__* @get_addressed_line_node(i64 %14)
  store %struct.TYPE_4__* %15, %struct.TYPE_4__** %8, align 8
  br label %16

16:                                               ; preds = %50, %2
  %17 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %18 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %19 = icmp ne %struct.TYPE_4__* %17, %18
  br i1 %19, label %20, label %54

20:                                               ; preds = %16
  %21 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %22 = call i8* @get_sbuf_line(%struct.TYPE_4__* %21)
  store i8* %22, i8** %6, align 8
  %23 = icmp eq i8* %22, null
  br i1 %23, label %24, label %26

24:                                               ; preds = %20
  %25 = load i32, i32* @ERR, align 4
  store i32 %25, i32* %3, align 4
  br label %90

26:                                               ; preds = %20
  %27 = load i8*, i8** @join_lines.buf, align 8
  %28 = load i32, i32* @join_lines.n, align 4
  %29 = load i32, i32* %7, align 4
  %30 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = add nsw i32 %29, %32
  %34 = load i32, i32* @ERR, align 4
  %35 = call i32 @REALLOC(i8* %27, i32 %28, i32 %33, i32 %34)
  %36 = load i8*, i8** @join_lines.buf, align 8
  %37 = load i32, i32* %7, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds i8, i8* %36, i64 %38
  %40 = load i8*, i8** %6, align 8
  %41 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %42 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = call i32 @memcpy(i8* %39, i8* %40, i32 %43)
  %45 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %46 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  %48 = load i32, i32* %7, align 4
  %49 = add nsw i32 %48, %47
  store i32 %49, i32* %7, align 4
  br label %50

50:                                               ; preds = %26
  %51 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %52 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %51, i32 0, i32 1
  %53 = load %struct.TYPE_4__*, %struct.TYPE_4__** %52, align 8
  store %struct.TYPE_4__* %53, %struct.TYPE_4__** %8, align 8
  br label %16

54:                                               ; preds = %16
  %55 = load i8*, i8** @join_lines.buf, align 8
  %56 = load i32, i32* @join_lines.n, align 4
  %57 = load i32, i32* %7, align 4
  %58 = add nsw i32 %57, 2
  %59 = load i32, i32* @ERR, align 4
  %60 = call i32 @REALLOC(i8* %55, i32 %56, i32 %58, i32 %59)
  %61 = load i8*, i8** @join_lines.buf, align 8
  %62 = load i32, i32* %7, align 4
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds i8, i8* %61, i64 %63
  %65 = call i32 @memcpy(i8* %64, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0), i32 2)
  %66 = load i64, i64* %4, align 8
  %67 = load i64, i64* %5, align 8
  %68 = call i64 @delete_lines(i64 %66, i64 %67)
  %69 = icmp slt i64 %68, 0
  br i1 %69, label %70, label %72

70:                                               ; preds = %54
  %71 = load i32, i32* @ERR, align 4
  store i32 %71, i32* %3, align 4
  br label %90

72:                                               ; preds = %54
  %73 = load i64, i64* %4, align 8
  %74 = sub nsw i64 %73, 1
  store i64 %74, i64* @current_addr, align 8
  %75 = call i32 (...) @SPL1()
  %76 = load i8*, i8** @join_lines.buf, align 8
  %77 = call i32* @put_sbuf_line(i8* %76)
  %78 = icmp eq i32* %77, null
  br i1 %78, label %85, label %79

79:                                               ; preds = %72
  %80 = load i32, i32* @UADD, align 4
  %81 = load i64, i64* @current_addr, align 8
  %82 = load i64, i64* @current_addr, align 8
  %83 = call i32* @push_undo_stack(i32 %80, i64 %81, i64 %82)
  %84 = icmp eq i32* %83, null
  br i1 %84, label %85, label %88

85:                                               ; preds = %79, %72
  %86 = call i32 (...) @SPL0()
  %87 = load i32, i32* @ERR, align 4
  store i32 %87, i32* %3, align 4
  br label %90

88:                                               ; preds = %79
  store i32 1, i32* @modified, align 4
  %89 = call i32 (...) @SPL0()
  store i32 0, i32* %3, align 4
  br label %90

90:                                               ; preds = %88, %85, %70, %24
  %91 = load i32, i32* %3, align 4
  ret i32 %91
}

declare dso_local %struct.TYPE_4__* @get_addressed_line_node(i64) #1

declare dso_local i64 @INC_MOD(i64, i32) #1

declare dso_local i8* @get_sbuf_line(%struct.TYPE_4__*) #1

declare dso_local i32 @REALLOC(i8*, i32, i32, i32) #1

declare dso_local i32 @memcpy(i8*, i8*, i32) #1

declare dso_local i64 @delete_lines(i64, i64) #1

declare dso_local i32 @SPL1(...) #1

declare dso_local i32* @put_sbuf_line(i8*) #1

declare dso_local i32* @push_undo_stack(i32, i64, i64) #1

declare dso_local i32 @SPL0(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

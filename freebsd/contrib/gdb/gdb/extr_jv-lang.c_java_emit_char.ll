; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_jv-lang.c_java_emit_char.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_jv-lang.c_java_emit_char.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ui_file = type { i32 }

@.str = private unnamed_addr constant [4 x i8] c"\\%c\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"\\b\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"\\t\00", align 1
@.str.3 = private unnamed_addr constant [3 x i8] c"\\n\00", align 1
@.str.4 = private unnamed_addr constant [3 x i8] c"\\f\00", align 1
@.str.5 = private unnamed_addr constant [3 x i8] c"\\r\00", align 1
@.str.6 = private unnamed_addr constant [7 x i8] c"\\u%.4x\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, %struct.ui_file*, i32)* @java_emit_char to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @java_emit_char(i32 %0, %struct.ui_file* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.ui_file*, align 8
  %6 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store %struct.ui_file* %1, %struct.ui_file** %5, align 8
  store i32 %2, i32* %6, align 4
  %7 = load i32, i32* %4, align 4
  switch i32 %7, label %27 [
    i32 92, label %8
    i32 39, label %8
    i32 8, label %12
    i32 9, label %15
    i32 10, label %18
    i32 12, label %21
    i32 13, label %24
  ]

8:                                                ; preds = %3, %3
  %9 = load %struct.ui_file*, %struct.ui_file** %5, align 8
  %10 = load i32, i32* %4, align 4
  %11 = call i32 @fprintf_filtered(%struct.ui_file* %9, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32 %10)
  br label %40

12:                                               ; preds = %3
  %13 = load %struct.ui_file*, %struct.ui_file** %5, align 8
  %14 = call i32 @fputs_filtered(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), %struct.ui_file* %13)
  br label %40

15:                                               ; preds = %3
  %16 = load %struct.ui_file*, %struct.ui_file** %5, align 8
  %17 = call i32 @fputs_filtered(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), %struct.ui_file* %16)
  br label %40

18:                                               ; preds = %3
  %19 = load %struct.ui_file*, %struct.ui_file** %5, align 8
  %20 = call i32 @fputs_filtered(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0), %struct.ui_file* %19)
  br label %40

21:                                               ; preds = %3
  %22 = load %struct.ui_file*, %struct.ui_file** %5, align 8
  %23 = call i32 @fputs_filtered(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0), %struct.ui_file* %22)
  br label %40

24:                                               ; preds = %3
  %25 = load %struct.ui_file*, %struct.ui_file** %5, align 8
  %26 = call i32 @fputs_filtered(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.5, i64 0, i64 0), %struct.ui_file* %25)
  br label %40

27:                                               ; preds = %3
  %28 = load i32, i32* %4, align 4
  %29 = call i32 @isprint(i32 %28) #3
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %35

31:                                               ; preds = %27
  %32 = load i32, i32* %4, align 4
  %33 = load %struct.ui_file*, %struct.ui_file** %5, align 8
  %34 = call i32 @fputc_filtered(i32 %32, %struct.ui_file* %33)
  br label %39

35:                                               ; preds = %27
  %36 = load %struct.ui_file*, %struct.ui_file** %5, align 8
  %37 = load i32, i32* %4, align 4
  %38 = call i32 @fprintf_filtered(%struct.ui_file* %36, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.6, i64 0, i64 0), i32 %37)
  br label %39

39:                                               ; preds = %35, %31
  br label %40

40:                                               ; preds = %39, %24, %21, %18, %15, %12, %8
  ret void
}

declare dso_local i32 @fprintf_filtered(%struct.ui_file*, i8*, i32) #1

declare dso_local i32 @fputs_filtered(i8*, %struct.ui_file*) #1

; Function Attrs: nounwind readonly
declare dso_local i32 @isprint(i32) #2

declare dso_local i32 @fputc_filtered(i32, %struct.ui_file*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readonly "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readonly }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

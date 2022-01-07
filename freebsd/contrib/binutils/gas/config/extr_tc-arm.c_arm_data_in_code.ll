; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/gas/config/extr_tc-arm.c_arm_data_in_code.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/gas/config/extr_tc-arm.c_arm_data_in_code.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@thumb_mode = common dso_local global i64 0, align 8
@input_line_pointer = common dso_local global i8* null, align 8
@.str = private unnamed_addr constant [6 x i8] c"data:\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @arm_data_in_code() #0 {
  %1 = alloca i32, align 4
  %2 = load i64, i64* @thumb_mode, align 8
  %3 = icmp ne i64 %2, 0
  br i1 %3, label %4, label %14

4:                                                ; preds = %0
  %5 = load i8*, i8** @input_line_pointer, align 8
  %6 = getelementptr inbounds i8, i8* %5, i64 1
  %7 = call i32 @strncmp(i8* %6, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i32 5)
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %14, label %9

9:                                                ; preds = %4
  %10 = load i8*, i8** @input_line_pointer, align 8
  store i8 47, i8* %10, align 1
  %11 = load i8*, i8** @input_line_pointer, align 8
  %12 = getelementptr inbounds i8, i8* %11, i64 5
  store i8* %12, i8** @input_line_pointer, align 8
  %13 = load i8*, i8** @input_line_pointer, align 8
  store i8 0, i8* %13, align 1
  store i32 1, i32* %1, align 4
  br label %15

14:                                               ; preds = %4, %0
  store i32 0, i32* %1, align 4
  br label %15

15:                                               ; preds = %14, %9
  %16 = load i32, i32* %1, align 4
  ret i32 %16
}

declare dso_local i32 @strncmp(i8*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

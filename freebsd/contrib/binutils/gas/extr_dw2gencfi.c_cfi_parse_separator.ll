; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/gas/extr_dw2gencfi.c_cfi_parse_separator.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/gas/extr_dw2gencfi.c_cfi_parse_separator.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@input_line_pointer = common dso_local global i8* null, align 8
@.str = private unnamed_addr constant [18 x i8] c"missing separator\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @cfi_parse_separator to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cfi_parse_separator() #0 {
  %1 = call i32 (...) @SKIP_WHITESPACE()
  %2 = load i8*, i8** @input_line_pointer, align 8
  %3 = load i8, i8* %2, align 1
  %4 = sext i8 %3 to i32
  %5 = icmp eq i32 %4, 44
  br i1 %5, label %6, label %9

6:                                                ; preds = %0
  %7 = load i8*, i8** @input_line_pointer, align 8
  %8 = getelementptr inbounds i8, i8* %7, i32 1
  store i8* %8, i8** @input_line_pointer, align 8
  br label %12

9:                                                ; preds = %0
  %10 = call i32 @_(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0))
  %11 = call i32 @as_bad(i32 %10)
  br label %12

12:                                               ; preds = %9, %6
  ret void
}

declare dso_local i32 @SKIP_WHITESPACE(...) #1

declare dso_local i32 @as_bad(i32) #1

declare dso_local i32 @_(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

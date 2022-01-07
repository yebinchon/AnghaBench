; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_fix-header.c_write_lbrac.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_fix-header.c_write_lbrac.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@partial_count = common dso_local global i64 0, align 8
@outf = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [17 x i8] c"#ifndef _PARAMS\0A\00", align 1
@.str.1 = private unnamed_addr constant [47 x i8] c"#if defined(__STDC__) || defined(__cplusplus)\0A\00", align 1
@.str.2 = private unnamed_addr constant [28 x i8] c"#define _PARAMS(ARGS) ARGS\0A\00", align 1
@.str.3 = private unnamed_addr constant [7 x i8] c"#else\0A\00", align 1
@.str.4 = private unnamed_addr constant [26 x i8] c"#define _PARAMS(ARGS) ()\0A\00", align 1
@.str.5 = private unnamed_addr constant [29 x i8] c"#endif\0A#endif /* _PARAMS */\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @write_lbrac to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @write_lbrac() #0 {
  %1 = load i64, i64* @partial_count, align 8
  %2 = icmp ne i64 %1, 0
  br i1 %2, label %3, label %16

3:                                                ; preds = %0
  %4 = load i32, i32* @outf, align 4
  %5 = call i32 @fprintf(i32 %4, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0))
  %6 = load i32, i32* @outf, align 4
  %7 = call i32 @fprintf(i32 %6, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.1, i64 0, i64 0))
  %8 = load i32, i32* @outf, align 4
  %9 = call i32 @fprintf(i32 %8, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.2, i64 0, i64 0))
  %10 = load i32, i32* @outf, align 4
  %11 = call i32 @fprintf(i32 %10, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0))
  %12 = load i32, i32* @outf, align 4
  %13 = call i32 @fprintf(i32 %12, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.4, i64 0, i64 0))
  %14 = load i32, i32* @outf, align 4
  %15 = call i32 @fprintf(i32 %14, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.5, i64 0, i64 0))
  br label %16

16:                                               ; preds = %3, %0
  ret void
}

declare dso_local i32 @fprintf(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

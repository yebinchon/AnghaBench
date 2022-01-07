; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_breakpoint.c_catch_fork_command_1.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_breakpoint.c_catch_fork_command_1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [26 x i8] c"Junk at end of arguments.\00", align 1
@.str.1 = private unnamed_addr constant [50 x i8] c"unsupported or unknown fork kind; cannot catch it\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i8*, i32, i32)* @catch_fork_command_1 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @catch_fork_command_1(i32 %0, i8* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  store i32 %0, i32* %5, align 4
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  store i8* null, i8** %9, align 8
  %10 = call i32 @ep_skip_leading_whitespace(i8** %6)
  %11 = call i8* @ep_parse_optional_if_clause(i8** %6)
  store i8* %11, i8** %9, align 8
  %12 = load i8*, i8** %6, align 8
  %13 = load i8, i8* %12, align 1
  %14 = sext i8 %13 to i32
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %23

16:                                               ; preds = %4
  %17 = load i8*, i8** %6, align 8
  %18 = load i8, i8* %17, align 1
  %19 = call i32 @isspace(i8 signext %18)
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %23, label %21

21:                                               ; preds = %16
  %22 = call i32 @error(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0))
  br label %23

23:                                               ; preds = %21, %16, %4
  %24 = load i32, i32* %5, align 4
  switch i32 %24, label %33 [
    i32 129, label %25
    i32 128, label %29
  ]

25:                                               ; preds = %23
  %26 = load i32, i32* %7, align 4
  %27 = load i8*, i8** %9, align 8
  %28 = call i32 @create_fork_event_catchpoint(i32 %26, i8* %27)
  br label %35

29:                                               ; preds = %23
  %30 = load i32, i32* %7, align 4
  %31 = load i8*, i8** %9, align 8
  %32 = call i32 @create_vfork_event_catchpoint(i32 %30, i8* %31)
  br label %35

33:                                               ; preds = %23
  %34 = call i32 @error(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.1, i64 0, i64 0))
  br label %35

35:                                               ; preds = %33, %29, %25
  ret void
}

declare dso_local i32 @ep_skip_leading_whitespace(i8**) #1

declare dso_local i8* @ep_parse_optional_if_clause(i8**) #1

declare dso_local i32 @isspace(i8 signext) #1

declare dso_local i32 @error(i8*) #1

declare dso_local i32 @create_fork_event_catchpoint(i32, i8*) #1

declare dso_local i32 @create_vfork_event_catchpoint(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

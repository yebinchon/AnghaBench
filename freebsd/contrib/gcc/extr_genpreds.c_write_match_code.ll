; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_genpreds.c_write_match_code.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_genpreds.c_write_match_code.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [11 x i8] c"GET_CODE (\00", align 1
@stdout = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [6 x i8] c") == \00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c" || \00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i8*)* @write_match_code to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @write_match_code(i8* %0, i8* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  store i8* %0, i8** %3, align 8
  store i8* %1, i8** %4, align 8
  br label %6

6:                                                ; preds = %35, %2
  %7 = call i8* @scan_comma_elt(i8** %4)
  store i8* %7, i8** %5, align 8
  %8 = icmp ne i8* %7, null
  br i1 %8, label %9, label %36

9:                                                ; preds = %6
  %10 = load i32, i32* @stdout, align 4
  %11 = call i32 @fputs(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i32 %10)
  %12 = load i8*, i8** %3, align 8
  %13 = call i32 @write_extract_subexp(i8* %12)
  %14 = load i32, i32* @stdout, align 4
  %15 = call i32 @fputs(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i32 %14)
  br label %16

16:                                               ; preds = %20, %9
  %17 = load i8*, i8** %5, align 8
  %18 = load i8*, i8** %4, align 8
  %19 = icmp ult i8* %17, %18
  br i1 %19, label %20, label %27

20:                                               ; preds = %16
  %21 = load i8*, i8** %5, align 8
  %22 = load i8, i8* %21, align 1
  %23 = call i32 @TOUPPER(i8 signext %22)
  %24 = call i32 @putchar(i32 %23)
  %25 = load i8*, i8** %5, align 8
  %26 = getelementptr inbounds i8, i8* %25, i32 1
  store i8* %26, i8** %5, align 8
  br label %16

27:                                               ; preds = %16
  %28 = load i8*, i8** %4, align 8
  %29 = load i8, i8* %28, align 1
  %30 = sext i8 %29 to i32
  %31 = icmp eq i32 %30, 44
  br i1 %31, label %32, label %35

32:                                               ; preds = %27
  %33 = load i32, i32* @stdout, align 4
  %34 = call i32 @fputs(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), i32 %33)
  br label %35

35:                                               ; preds = %32, %27
  br label %6

36:                                               ; preds = %6
  ret void
}

declare dso_local i8* @scan_comma_elt(i8**) #1

declare dso_local i32 @fputs(i8*, i32) #1

declare dso_local i32 @write_extract_subexp(i8*) #1

declare dso_local i32 @putchar(i32) #1

declare dso_local i32 @TOUPPER(i8 signext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

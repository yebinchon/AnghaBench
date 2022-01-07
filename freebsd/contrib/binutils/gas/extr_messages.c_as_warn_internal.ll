; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/gas/extr_messages.c_as_warn_internal.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/gas/extr_messages.c_as_warn_internal.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@warning_count = common dso_local global i32 0, align 4
@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [8 x i8] c"%s:%u: \00", align 1
@.str.1 = private unnamed_addr constant [10 x i8] c"Warning: \00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i32, i8*)* @as_warn_internal to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @as_warn_internal(i8* %0, i32 %1, i8* %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  store i8* %0, i8** %4, align 8
  store i32 %1, i32* %5, align 4
  store i8* %2, i8** %6, align 8
  %7 = load i32, i32* @warning_count, align 4
  %8 = add nsw i32 %7, 1
  store i32 %8, i32* @warning_count, align 4
  %9 = load i8*, i8** %4, align 8
  %10 = icmp eq i8* %9, null
  br i1 %10, label %11, label %13

11:                                               ; preds = %3
  %12 = call i32 @as_where(i8** %4, i32* %5)
  br label %13

13:                                               ; preds = %11, %3
  %14 = load i8*, i8** %4, align 8
  %15 = call i32 @identify(i8* %14)
  %16 = load i8*, i8** %4, align 8
  %17 = icmp ne i8* %16, null
  br i1 %17, label %18, label %23

18:                                               ; preds = %13
  %19 = load i32, i32* @stderr, align 4
  %20 = load i8*, i8** %4, align 8
  %21 = load i32, i32* %5, align 4
  %22 = call i32 (i32, i8*, ...) @fprintf(i32 %19, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i8* %20, i32 %21)
  br label %23

23:                                               ; preds = %18, %13
  %24 = load i32, i32* @stderr, align 4
  %25 = call i8* @_(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0))
  %26 = call i32 (i32, i8*, ...) @fprintf(i32 %24, i8* %25)
  %27 = load i8*, i8** %6, align 8
  %28 = load i32, i32* @stderr, align 4
  %29 = call i32 @fputs(i8* %27, i32 %28)
  %30 = load i32, i32* @stderr, align 4
  %31 = call i32 @putc(i8 signext 10, i32 %30)
  %32 = load i8*, i8** %6, align 8
  %33 = call i32 @listing_warning(i8* %32)
  ret void
}

declare dso_local i32 @as_where(i8**, i32*) #1

declare dso_local i32 @identify(i8*) #1

declare dso_local i32 @fprintf(i32, i8*, ...) #1

declare dso_local i8* @_(i8*) #1

declare dso_local i32 @fputs(i8*, i32) #1

declare dso_local i32 @putc(i8 signext, i32) #1

declare dso_local i32 @listing_warning(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

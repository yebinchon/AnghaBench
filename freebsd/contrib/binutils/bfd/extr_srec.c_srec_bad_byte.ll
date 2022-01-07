; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/bfd/extr_srec.c_srec_bad_byte.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/bfd/extr_srec.c_srec_bad_byte.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@EOF = common dso_local global i32 0, align 4
@bfd_error_file_truncated = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [6 x i8] c"\\%03o\00", align 1
@.str.1 = private unnamed_addr constant [51 x i8] c"%B:%d: Unexpected character `%s' in S-record file\0A\00", align 1
@bfd_error_bad_value = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32, i32, i32)* @srec_bad_byte to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @srec_bad_byte(i32* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca [10 x i8], align 1
  store i32* %0, i32** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %10 = load i32, i32* %7, align 4
  %11 = load i32, i32* @EOF, align 4
  %12 = icmp eq i32 %10, %11
  br i1 %12, label %13, label %20

13:                                               ; preds = %4
  %14 = load i32, i32* %8, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %19, label %16

16:                                               ; preds = %13
  %17 = load i32, i32* @bfd_error_file_truncated, align 4
  %18 = call i32 @bfd_set_error(i32 %17)
  br label %19

19:                                               ; preds = %16, %13
  br label %41

20:                                               ; preds = %4
  %21 = load i32, i32* %7, align 4
  %22 = call i32 @ISPRINT(i32 %21)
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %28, label %24

24:                                               ; preds = %20
  %25 = getelementptr inbounds [10 x i8], [10 x i8]* %9, i64 0, i64 0
  %26 = load i32, i32* %7, align 4
  %27 = call i32 @sprintf(i8* %25, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i32 %26)
  br label %33

28:                                               ; preds = %20
  %29 = load i32, i32* %7, align 4
  %30 = trunc i32 %29 to i8
  %31 = getelementptr inbounds [10 x i8], [10 x i8]* %9, i64 0, i64 0
  store i8 %30, i8* %31, align 1
  %32 = getelementptr inbounds [10 x i8], [10 x i8]* %9, i64 0, i64 1
  store i8 0, i8* %32, align 1
  br label %33

33:                                               ; preds = %28, %24
  %34 = call i32 @_(i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.1, i64 0, i64 0))
  %35 = load i32*, i32** %5, align 8
  %36 = load i32, i32* %6, align 4
  %37 = getelementptr inbounds [10 x i8], [10 x i8]* %9, i64 0, i64 0
  %38 = call i32 @_bfd_error_handler(i32 %34, i32* %35, i32 %36, i8* %37)
  %39 = load i32, i32* @bfd_error_bad_value, align 4
  %40 = call i32 @bfd_set_error(i32 %39)
  br label %41

41:                                               ; preds = %33, %19
  ret void
}

declare dso_local i32 @bfd_set_error(i32) #1

declare dso_local i32 @ISPRINT(i32) #1

declare dso_local i32 @sprintf(i8*, i8*, i32) #1

declare dso_local i32 @_bfd_error_handler(i32, i32*, i32, i8*) #1

declare dso_local i32 @_(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/freebsd/bin/ls/extr_print.c_printsize.c'
source_filename = "/home/carl/AnghaBench/freebsd/bin/ls/extr_print.c_printsize.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@f_humanval = common dso_local global i64 0, align 8
@HUMANVALSTR_LEN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@HN_AUTOSCALE = common dso_local global i32 0, align 4
@HN_B = common dso_local global i32 0, align 4
@HN_NOSPACE = common dso_local global i32 0, align 4
@HN_DECIMAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [5 x i8] c"%*s \00", align 1
@f_thousands = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [7 x i8] c"%*j'd \00", align 1
@.str.3 = private unnamed_addr constant [6 x i8] c"%*jd \00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i64, i8*)* @printsize to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @printsize(i64 %0, i8* %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  store i64 %0, i64* %3, align 8
  store i8* %1, i8** %4, align 8
  %8 = load i64, i64* @f_humanval, align 8
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %31

10:                                               ; preds = %2
  %11 = load i32, i32* @HUMANVALSTR_LEN, align 4
  %12 = sub nsw i32 %11, 1
  %13 = add nsw i32 %12, 1
  %14 = zext i32 %13 to i64
  %15 = call i8* @llvm.stacksave()
  store i8* %15, i8** %5, align 8
  %16 = alloca i8, i64 %14, align 16
  store i64 %14, i64* %6, align 8
  %17 = trunc i64 %14 to i32
  %18 = load i8*, i8** %4, align 8
  %19 = ptrtoint i8* %18 to i32
  %20 = load i32, i32* @HN_AUTOSCALE, align 4
  %21 = load i32, i32* @HN_B, align 4
  %22 = load i32, i32* @HN_NOSPACE, align 4
  %23 = or i32 %21, %22
  %24 = load i32, i32* @HN_DECIMAL, align 4
  %25 = or i32 %23, %24
  %26 = call i32 @humanize_number(i8* %16, i32 %17, i32 %19, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0), i32 %20, i32 %25)
  %27 = load i64, i64* %3, align 8
  %28 = inttoptr i64 %27 to i8*
  %29 = call i32 @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i8* %28, i8* %16)
  %30 = load i8*, i8** %5, align 8
  call void @llvm.stackrestore(i8* %30)
  br label %46

31:                                               ; preds = %2
  %32 = load i64, i64* @f_thousands, align 8
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %40

34:                                               ; preds = %31
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0), i8** %7, align 8
  %35 = load i8*, i8** %7, align 8
  %36 = load i64, i64* %3, align 8
  %37 = inttoptr i64 %36 to i8*
  %38 = load i8*, i8** %4, align 8
  %39 = call i32 @printf(i8* %35, i8* %37, i8* %38)
  br label %45

40:                                               ; preds = %31
  %41 = load i64, i64* %3, align 8
  %42 = inttoptr i64 %41 to i8*
  %43 = load i8*, i8** %4, align 8
  %44 = call i32 @printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0), i8* %42, i8* %43)
  br label %45

45:                                               ; preds = %40, %34
  br label %46

46:                                               ; preds = %45, %10
  ret void
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @humanize_number(i8*, i32, i32, i8*, i32, i32) #2

declare dso_local i32 @printf(i8*, i8*, i8*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

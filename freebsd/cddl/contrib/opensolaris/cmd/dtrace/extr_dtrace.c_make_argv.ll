; ModuleID = '/home/carl/AnghaBench/freebsd/cddl/contrib/opensolaris/cmd/dtrace/extr_dtrace.c_make_argv.c'
source_filename = "/home/carl/AnghaBench/freebsd/cddl/contrib/opensolaris/cmd/dtrace/extr_dtrace.c_make_argv.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [7 x i8] c"\0C\0A\0D\09\0B \00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8** (i8*)* @make_argv to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8** @make_argv(i8* %0) #0 {
  %2 = alloca i8**, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8**, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  store i8* %0, i8** %3, align 8
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i8** %4, align 8
  %8 = load i8*, i8** %3, align 8
  %9 = call i32 @strlen(i8* %8)
  %10 = sdiv i32 %9, 2
  %11 = add nsw i32 %10, 1
  %12 = sext i32 %11 to i64
  %13 = mul i64 8, %12
  %14 = trunc i64 %13 to i32
  %15 = call i8** @malloc(i32 %14)
  store i8** %15, i8*** %5, align 8
  store i32 0, i32* %6, align 4
  %16 = load i8*, i8** %3, align 8
  store i8* %16, i8** %7, align 8
  %17 = load i8**, i8*** %5, align 8
  %18 = icmp eq i8** %17, null
  br i1 %18, label %19, label %20

19:                                               ; preds = %1
  store i8** null, i8*** %2, align 8
  br label %53

20:                                               ; preds = %1
  %21 = load i8*, i8** %3, align 8
  %22 = load i8*, i8** %4, align 8
  %23 = call i8* @strtok(i8* %21, i8* %22)
  store i8* %23, i8** %7, align 8
  br label %24

24:                                               ; preds = %34, %20
  %25 = load i8*, i8** %7, align 8
  %26 = icmp ne i8* %25, null
  br i1 %26, label %27, label %37

27:                                               ; preds = %24
  %28 = load i8*, i8** %7, align 8
  %29 = load i8**, i8*** %5, align 8
  %30 = load i32, i32* %6, align 4
  %31 = add nsw i32 %30, 1
  store i32 %31, i32* %6, align 4
  %32 = sext i32 %30 to i64
  %33 = getelementptr inbounds i8*, i8** %29, i64 %32
  store i8* %28, i8** %33, align 8
  br label %34

34:                                               ; preds = %27
  %35 = load i8*, i8** %4, align 8
  %36 = call i8* @strtok(i8* null, i8* %35)
  store i8* %36, i8** %7, align 8
  br label %24

37:                                               ; preds = %24
  %38 = load i32, i32* %6, align 4
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %40, label %47

40:                                               ; preds = %37
  %41 = load i8*, i8** %3, align 8
  %42 = load i8**, i8*** %5, align 8
  %43 = load i32, i32* %6, align 4
  %44 = add nsw i32 %43, 1
  store i32 %44, i32* %6, align 4
  %45 = sext i32 %43 to i64
  %46 = getelementptr inbounds i8*, i8** %42, i64 %45
  store i8* %41, i8** %46, align 8
  br label %47

47:                                               ; preds = %40, %37
  %48 = load i8**, i8*** %5, align 8
  %49 = load i32, i32* %6, align 4
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds i8*, i8** %48, i64 %50
  store i8* null, i8** %51, align 8
  %52 = load i8**, i8*** %5, align 8
  store i8** %52, i8*** %2, align 8
  br label %53

53:                                               ; preds = %47, %19
  %54 = load i8**, i8*** %2, align 8
  ret i8** %54
}

declare dso_local i8** @malloc(i32) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i8* @strtok(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/gas/extr_itbl-ops.c_itbl_get_field.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/gas/extr_itbl-ops.c_itbl_get_field.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@itbl_get_field.n = internal global [128 x i8] zeroinitializer, align 16
@.str = private unnamed_addr constant [6 x i8] c" \09,()\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @itbl_get_field(i8** %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i8**, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  store i8** %0, i8*** %3, align 8
  %6 = load i8**, i8*** %3, align 8
  %7 = load i8*, i8** %6, align 8
  store i8* %7, i8** %4, align 8
  %8 = load i8*, i8** %4, align 8
  %9 = icmp ne i8* %8, null
  br i1 %9, label %10, label %14

10:                                               ; preds = %1
  %11 = load i8*, i8** %4, align 8
  %12 = load i8, i8* %11, align 1
  %13 = icmp ne i8 %12, 0
  br i1 %13, label %15, label %14

14:                                               ; preds = %10, %1
  store i8* null, i8** %2, align 8
  br label %46

15:                                               ; preds = %10
  %16 = load i8*, i8** %4, align 8
  %17 = call i32 @strcspn(i8* %16, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0))
  store i32 %17, i32* %5, align 4
  %18 = load i32, i32* %5, align 4
  %19 = add nsw i32 %18, 1
  %20 = icmp sgt i32 128, %19
  %21 = zext i1 %20 to i32
  %22 = call i32 @ASSERT(i32 %21)
  %23 = load i8*, i8** %4, align 8
  %24 = load i32, i32* %5, align 4
  %25 = call i32 @strncpy(i8* getelementptr inbounds ([128 x i8], [128 x i8]* @itbl_get_field.n, i64 0, i64 0), i8* %23, i32 %24)
  %26 = load i32, i32* %5, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds [128 x i8], [128 x i8]* @itbl_get_field.n, i64 0, i64 %27
  store i8 0, i8* %28, align 1
  %29 = load i8*, i8** %4, align 8
  %30 = load i32, i32* %5, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds i8, i8* %29, i64 %31
  %33 = load i8, i8* %32, align 1
  %34 = sext i8 %33 to i32
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %36, label %37

36:                                               ; preds = %15
  store i8* null, i8** %4, align 8
  br label %43

37:                                               ; preds = %15
  %38 = load i32, i32* %5, align 4
  %39 = add nsw i32 %38, 1
  %40 = load i8*, i8** %4, align 8
  %41 = sext i32 %39 to i64
  %42 = getelementptr inbounds i8, i8* %40, i64 %41
  store i8* %42, i8** %4, align 8
  br label %43

43:                                               ; preds = %37, %36
  %44 = load i8*, i8** %4, align 8
  %45 = load i8**, i8*** %3, align 8
  store i8* %44, i8** %45, align 8
  store i8* getelementptr inbounds ([128 x i8], [128 x i8]* @itbl_get_field.n, i64 0, i64 0), i8** %2, align 8
  br label %46

46:                                               ; preds = %43, %14
  %47 = load i8*, i8** %2, align 8
  ret i8* %47
}

declare dso_local i32 @strcspn(i8*, i8*) #1

declare dso_local i32 @ASSERT(i32) #1

declare dso_local i32 @strncpy(i8*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

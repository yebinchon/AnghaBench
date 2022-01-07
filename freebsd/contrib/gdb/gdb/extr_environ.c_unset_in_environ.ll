; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_environ.c_unset_in_environ.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_environ.c_unset_in_environ.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.environ = type { i8** }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @unset_in_environ(%struct.environ* %0, i8* %1) #0 {
  %3 = alloca %struct.environ*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8**, align 8
  %7 = alloca i8*, align 8
  store %struct.environ* %0, %struct.environ** %3, align 8
  store i8* %1, i8** %4, align 8
  %8 = load i8*, i8** %4, align 8
  %9 = call i32 @strlen(i8* %8)
  store i32 %9, i32* %5, align 4
  %10 = load %struct.environ*, %struct.environ** %3, align 8
  %11 = getelementptr inbounds %struct.environ, %struct.environ* %10, i32 0, i32 0
  %12 = load i8**, i8*** %11, align 8
  store i8** %12, i8*** %6, align 8
  br label %13

13:                                               ; preds = %46, %2
  %14 = load i8**, i8*** %6, align 8
  %15 = load i8*, i8** %14, align 8
  store i8* %15, i8** %7, align 8
  %16 = icmp ne i8* %15, null
  br i1 %16, label %17, label %49

17:                                               ; preds = %13
  %18 = load i8*, i8** %7, align 8
  %19 = load i8*, i8** %4, align 8
  %20 = load i32, i32* %5, align 4
  %21 = call i64 @DEPRECATED_STREQN(i8* %18, i8* %19, i32 %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %45

23:                                               ; preds = %17
  %24 = load i8*, i8** %7, align 8
  %25 = load i32, i32* %5, align 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds i8, i8* %24, i64 %26
  %28 = load i8, i8* %27, align 1
  %29 = sext i8 %28 to i32
  %30 = icmp eq i32 %29, 61
  br i1 %30, label %31, label %45

31:                                               ; preds = %23
  %32 = load i8*, i8** %7, align 8
  %33 = call i32 @xfree(i8* %32)
  br label %34

34:                                               ; preds = %41, %31
  %35 = load i8**, i8*** %6, align 8
  %36 = getelementptr inbounds i8*, i8** %35, i64 1
  %37 = load i8*, i8** %36, align 8
  %38 = load i8**, i8*** %6, align 8
  %39 = getelementptr inbounds i8*, i8** %38, i64 0
  store i8* %37, i8** %39, align 8
  %40 = icmp ne i8* %37, null
  br i1 %40, label %41, label %44

41:                                               ; preds = %34
  %42 = load i8**, i8*** %6, align 8
  %43 = getelementptr inbounds i8*, i8** %42, i32 1
  store i8** %43, i8*** %6, align 8
  br label %34

44:                                               ; preds = %34
  br label %49

45:                                               ; preds = %23, %17
  br label %46

46:                                               ; preds = %45
  %47 = load i8**, i8*** %6, align 8
  %48 = getelementptr inbounds i8*, i8** %47, i32 1
  store i8** %48, i8*** %6, align 8
  br label %13

49:                                               ; preds = %44, %13
  ret void
}

declare dso_local i32 @strlen(i8*) #1

declare dso_local i64 @DEPRECATED_STREQN(i8*, i8*, i32) #1

declare dso_local i32 @xfree(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

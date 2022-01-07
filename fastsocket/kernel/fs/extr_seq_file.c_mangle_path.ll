; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/extr_seq_file.c_mangle_path.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/extr_seq_file.c_mangle_path.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @mangle_path(i8* %0, i8* %1, i8* %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8, align 1
  store i8* %0, i8** %5, align 8
  store i8* %1, i8** %6, align 8
  store i8* %2, i8** %7, align 8
  br label %9

9:                                                ; preds = %64, %3
  %10 = load i8*, i8** %5, align 8
  %11 = load i8*, i8** %6, align 8
  %12 = icmp ule i8* %10, %11
  br i1 %12, label %13, label %65

13:                                               ; preds = %9
  %14 = load i8*, i8** %6, align 8
  %15 = getelementptr inbounds i8, i8* %14, i32 1
  store i8* %15, i8** %6, align 8
  %16 = load i8, i8* %14, align 1
  store i8 %16, i8* %8, align 1
  %17 = load i8, i8* %8, align 1
  %18 = icmp ne i8 %17, 0
  br i1 %18, label %21, label %19

19:                                               ; preds = %13
  %20 = load i8*, i8** %5, align 8
  store i8* %20, i8** %4, align 8
  br label %66

21:                                               ; preds = %13
  %22 = load i8*, i8** %7, align 8
  %23 = load i8, i8* %8, align 1
  %24 = call i32 @strchr(i8* %22, i8 signext %23)
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %30, label %26

26:                                               ; preds = %21
  %27 = load i8, i8* %8, align 1
  %28 = load i8*, i8** %5, align 8
  %29 = getelementptr inbounds i8, i8* %28, i32 1
  store i8* %29, i8** %5, align 8
  store i8 %27, i8* %28, align 1
  br label %63

30:                                               ; preds = %21
  %31 = load i8*, i8** %5, align 8
  %32 = getelementptr inbounds i8, i8* %31, i64 4
  %33 = load i8*, i8** %6, align 8
  %34 = icmp ugt i8* %32, %33
  br i1 %34, label %35, label %36

35:                                               ; preds = %30
  br label %65

36:                                               ; preds = %30
  %37 = load i8*, i8** %5, align 8
  %38 = getelementptr inbounds i8, i8* %37, i32 1
  store i8* %38, i8** %5, align 8
  store i8 92, i8* %37, align 1
  %39 = load i8, i8* %8, align 1
  %40 = sext i8 %39 to i32
  %41 = and i32 %40, 192
  %42 = ashr i32 %41, 6
  %43 = add nsw i32 48, %42
  %44 = trunc i32 %43 to i8
  %45 = load i8*, i8** %5, align 8
  %46 = getelementptr inbounds i8, i8* %45, i32 1
  store i8* %46, i8** %5, align 8
  store i8 %44, i8* %45, align 1
  %47 = load i8, i8* %8, align 1
  %48 = sext i8 %47 to i32
  %49 = and i32 %48, 56
  %50 = ashr i32 %49, 3
  %51 = add nsw i32 48, %50
  %52 = trunc i32 %51 to i8
  %53 = load i8*, i8** %5, align 8
  %54 = getelementptr inbounds i8, i8* %53, i32 1
  store i8* %54, i8** %5, align 8
  store i8 %52, i8* %53, align 1
  %55 = load i8, i8* %8, align 1
  %56 = sext i8 %55 to i32
  %57 = and i32 %56, 7
  %58 = add nsw i32 48, %57
  %59 = trunc i32 %58 to i8
  %60 = load i8*, i8** %5, align 8
  %61 = getelementptr inbounds i8, i8* %60, i32 1
  store i8* %61, i8** %5, align 8
  store i8 %59, i8* %60, align 1
  br label %62

62:                                               ; preds = %36
  br label %63

63:                                               ; preds = %62, %26
  br label %64

64:                                               ; preds = %63
  br label %9

65:                                               ; preds = %35, %9
  store i8* null, i8** %4, align 8
  br label %66

66:                                               ; preds = %65, %19
  %67 = load i8*, i8** %4, align 8
  ret i8* %67
}

declare dso_local i32 @strchr(i8*, i8 signext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

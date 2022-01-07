; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/binutils/extr_rclex.c_rclex_tok_add_char.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/binutils/extr_rclex.c_rclex_tok_add_char.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@rclex_tok = common dso_local global i8* null, align 8
@rclex_tok_max = common dso_local global i32 0, align 4
@rclex_tok_pos = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32)* @rclex_tok_add_char to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rclex_tok_add_char(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  store i32 %0, i32* %2, align 4
  %4 = load i8*, i8** @rclex_tok, align 8
  %5 = icmp ne i8* %4, null
  br i1 %5, label %6, label %10

6:                                                ; preds = %1
  %7 = load i32, i32* @rclex_tok_max, align 4
  %8 = load i32, i32* @rclex_tok_pos, align 4
  %9 = icmp sle i32 %7, %8
  br i1 %9, label %10, label %34

10:                                               ; preds = %6, %1
  %11 = load i32, i32* @rclex_tok_max, align 4
  %12 = add nsw i32 %11, 9
  %13 = call i8* @xmalloc(i32 %12)
  store i8* %13, i8** %3, align 8
  %14 = load i8*, i8** %3, align 8
  %15 = icmp ne i8* %14, null
  br i1 %15, label %18, label %16

16:                                               ; preds = %10
  %17 = call i32 (...) @abort() #3
  unreachable

18:                                               ; preds = %10
  %19 = load i8*, i8** @rclex_tok, align 8
  %20 = icmp ne i8* %19, null
  br i1 %20, label %21, label %29

21:                                               ; preds = %18
  %22 = load i8*, i8** %3, align 8
  %23 = load i8*, i8** @rclex_tok, align 8
  %24 = load i32, i32* @rclex_tok_pos, align 4
  %25 = add nsw i32 %24, 1
  %26 = call i32 @memcpy(i8* %22, i8* %23, i32 %25)
  %27 = load i8*, i8** @rclex_tok, align 8
  %28 = call i32 @free(i8* %27)
  br label %30

29:                                               ; preds = %18
  store i32 0, i32* @rclex_tok_pos, align 4
  br label %30

30:                                               ; preds = %29, %21
  %31 = load i32, i32* @rclex_tok_max, align 4
  %32 = add nsw i32 %31, 8
  store i32 %32, i32* @rclex_tok_max, align 4
  %33 = load i8*, i8** %3, align 8
  store i8* %33, i8** @rclex_tok, align 8
  br label %34

34:                                               ; preds = %30, %6
  %35 = load i32, i32* %2, align 4
  %36 = icmp ne i32 %35, -1
  br i1 %36, label %37, label %45

37:                                               ; preds = %34
  %38 = load i32, i32* %2, align 4
  %39 = trunc i32 %38 to i8
  %40 = load i8*, i8** @rclex_tok, align 8
  %41 = load i32, i32* @rclex_tok_pos, align 4
  %42 = add nsw i32 %41, 1
  store i32 %42, i32* @rclex_tok_pos, align 4
  %43 = sext i32 %41 to i64
  %44 = getelementptr inbounds i8, i8* %40, i64 %43
  store i8 %39, i8* %44, align 1
  br label %45

45:                                               ; preds = %37, %34
  %46 = load i8*, i8** @rclex_tok, align 8
  %47 = load i32, i32* @rclex_tok_pos, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds i8, i8* %46, i64 %48
  store i8 0, i8* %49, align 1
  ret void
}

declare dso_local i8* @xmalloc(i32) #1

; Function Attrs: noreturn
declare dso_local i32 @abort(...) #2

declare dso_local i32 @memcpy(i8*, i8*, i32) #1

declare dso_local i32 @free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

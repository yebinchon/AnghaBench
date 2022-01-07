; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_gcc.c_store_arg.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_gcc.c_store_arg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@argbuf_index = common dso_local global i32 0, align 4
@argbuf_length = common dso_local global i32 0, align 4
@argbuf = common dso_local global i8** null, align 8
@.str = private unnamed_addr constant [3 x i8] c"-o\00", align 1
@have_o_argbuf_index = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i32, i32)* @store_arg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @store_arg(i8* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %7 = load i32, i32* @argbuf_index, align 4
  %8 = add nsw i32 %7, 1
  %9 = load i32, i32* @argbuf_length, align 4
  %10 = icmp eq i32 %8, %9
  br i1 %10, label %11, label %19

11:                                               ; preds = %3
  %12 = load i8**, i8*** @argbuf, align 8
  %13 = load i32, i32* @argbuf_length, align 4
  %14 = mul nsw i32 %13, 2
  store i32 %14, i32* @argbuf_length, align 4
  %15 = sext i32 %14 to i64
  %16 = mul i64 %15, 8
  %17 = trunc i64 %16 to i32
  %18 = call i8** @xrealloc(i8** %12, i32 %17)
  store i8** %18, i8*** @argbuf, align 8
  br label %19

19:                                               ; preds = %11, %3
  %20 = load i8*, i8** %4, align 8
  %21 = load i8**, i8*** @argbuf, align 8
  %22 = load i32, i32* @argbuf_index, align 4
  %23 = add nsw i32 %22, 1
  store i32 %23, i32* @argbuf_index, align 4
  %24 = sext i32 %22 to i64
  %25 = getelementptr inbounds i8*, i8** %21, i64 %24
  store i8* %20, i8** %25, align 8
  %26 = load i8**, i8*** @argbuf, align 8
  %27 = load i32, i32* @argbuf_index, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds i8*, i8** %26, i64 %28
  store i8* null, i8** %29, align 8
  %30 = load i8*, i8** %4, align 8
  %31 = call i64 @strcmp(i8* %30, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0))
  %32 = icmp eq i64 %31, 0
  br i1 %32, label %33, label %35

33:                                               ; preds = %19
  %34 = load i32, i32* @argbuf_index, align 4
  store i32 %34, i32* @have_o_argbuf_index, align 4
  br label %35

35:                                               ; preds = %33, %19
  %36 = load i32, i32* %5, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %41, label %38

38:                                               ; preds = %35
  %39 = load i32, i32* %6, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %46

41:                                               ; preds = %38, %35
  %42 = load i8*, i8** %4, align 8
  %43 = load i32, i32* %5, align 4
  %44 = load i32, i32* %6, align 4
  %45 = call i32 @record_temp_file(i8* %42, i32 %43, i32 %44)
  br label %46

46:                                               ; preds = %41, %38
  ret void
}

declare dso_local i8** @xrealloc(i8**, i32) #1

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i32 @record_temp_file(i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

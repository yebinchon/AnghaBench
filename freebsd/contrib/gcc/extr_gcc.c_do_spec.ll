; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_gcc.c_do_spec.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_gcc.c_do_spec.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@argbuf_index = common dso_local global i32 0, align 4
@argbuf = common dso_local global i32* null, align 8
@.str = private unnamed_addr constant [2 x i8] c"|\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @do_spec(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  %4 = load i8*, i8** %2, align 8
  %5 = call i32 @do_spec_2(i8* %4)
  store i32 %5, i32* %3, align 4
  %6 = load i32, i32* %3, align 4
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %8, label %30

8:                                                ; preds = %1
  %9 = load i32, i32* @argbuf_index, align 4
  %10 = icmp sgt i32 %9, 0
  br i1 %10, label %11, label %23

11:                                               ; preds = %8
  %12 = load i32*, i32** @argbuf, align 8
  %13 = load i32, i32* @argbuf_index, align 4
  %14 = sub nsw i32 %13, 1
  %15 = sext i32 %14 to i64
  %16 = getelementptr inbounds i32, i32* %12, i64 %15
  %17 = load i32, i32* %16, align 4
  %18 = call i32 @strcmp(i32 %17, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %23, label %20

20:                                               ; preds = %11
  %21 = load i32, i32* @argbuf_index, align 4
  %22 = add nsw i32 %21, -1
  store i32 %22, i32* @argbuf_index, align 4
  br label %23

23:                                               ; preds = %20, %11, %8
  %24 = call i32 (...) @set_collect_gcc_options()
  %25 = load i32, i32* @argbuf_index, align 4
  %26 = icmp sgt i32 %25, 0
  br i1 %26, label %27, label %29

27:                                               ; preds = %23
  %28 = call i32 (...) @execute()
  store i32 %28, i32* %3, align 4
  br label %29

29:                                               ; preds = %27, %23
  br label %30

30:                                               ; preds = %29, %1
  %31 = load i32, i32* %3, align 4
  ret i32 %31
}

declare dso_local i32 @do_spec_2(i8*) #1

declare dso_local i32 @strcmp(i32, i8*) #1

declare dso_local i32 @set_collect_gcc_options(...) #1

declare dso_local i32 @execute(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/binutils/extr_arsup.c_ar_addlib.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/binutils/extr_arsup.c_ar_addlib.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.list = type { i32 }

@obfd = common dso_local global i32* null, align 8
@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [37 x i8] c"%s: no output archive specified yet\0A\00", align 1
@program_name = common dso_local global i8* null, align 8
@ar_addlib_doer = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ar_addlib(i8* %0, %struct.list* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca %struct.list*, align 8
  %5 = alloca i32*, align 8
  store i8* %0, i8** %3, align 8
  store %struct.list* %1, %struct.list** %4, align 8
  %6 = load i32*, i32** @obfd, align 8
  %7 = icmp eq i32* %6, null
  br i1 %7, label %8, label %14

8:                                                ; preds = %2
  %9 = load i32, i32* @stderr, align 4
  %10 = call i8* @_(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0))
  %11 = load i8*, i8** @program_name, align 8
  %12 = call i32 @fprintf(i32 %9, i8* %10, i8* %11)
  %13 = call i32 (...) @maybequit()
  br label %25

14:                                               ; preds = %2
  %15 = load i8*, i8** %3, align 8
  %16 = call i32* @open_inarch(i8* %15, i8* null)
  store i32* %16, i32** %5, align 8
  %17 = load i32*, i32** %5, align 8
  %18 = icmp ne i32* %17, null
  br i1 %18, label %19, label %24

19:                                               ; preds = %14
  %20 = load i32*, i32** %5, align 8
  %21 = load i32, i32* @ar_addlib_doer, align 4
  %22 = load %struct.list*, %struct.list** %4, align 8
  %23 = call i32 @map_over_list(i32* %20, i32 %21, %struct.list* %22)
  br label %24

24:                                               ; preds = %19, %14
  br label %25

25:                                               ; preds = %24, %8
  ret void
}

declare dso_local i32 @fprintf(i32, i8*, i8*) #1

declare dso_local i8* @_(i8*) #1

declare dso_local i32 @maybequit(...) #1

declare dso_local i32* @open_inarch(i8*, i8*) #1

declare dso_local i32 @map_over_list(i32*, i32, %struct.list*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

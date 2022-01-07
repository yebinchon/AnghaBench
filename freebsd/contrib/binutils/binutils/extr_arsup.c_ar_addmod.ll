; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/binutils/extr_arsup.c_ar_addmod.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/binutils/extr_arsup.c_ar_addmod.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_4__* }
%struct.list = type { i8*, %struct.list* }

@obfd = common dso_local global %struct.TYPE_5__* null, align 8
@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"%s: no open output archive\0A\00", align 1
@program_name = common dso_local global i8* null, align 8
@.str.1 = private unnamed_addr constant [24 x i8] c"%s: can't open file %s\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ar_addmod(%struct.list* %0) #0 {
  %2 = alloca %struct.list*, align 8
  %3 = alloca %struct.TYPE_4__*, align 8
  store %struct.list* %0, %struct.list** %2, align 8
  %4 = load %struct.TYPE_5__*, %struct.TYPE_5__** @obfd, align 8
  %5 = icmp ne %struct.TYPE_5__* %4, null
  br i1 %5, label %12, label %6

6:                                                ; preds = %1
  %7 = load i32, i32* @stderr, align 4
  %8 = call i8* @_(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0))
  %9 = load i8*, i8** @program_name, align 8
  %10 = call i32 (i32, i8*, i8*, ...) @fprintf(i32 %7, i8* %8, i8* %9)
  %11 = call i32 (...) @maybequit()
  br label %46

12:                                               ; preds = %1
  br label %13

13:                                               ; preds = %41, %12
  %14 = load %struct.list*, %struct.list** %2, align 8
  %15 = icmp ne %struct.list* %14, null
  br i1 %15, label %16, label %45

16:                                               ; preds = %13
  %17 = load %struct.list*, %struct.list** %2, align 8
  %18 = getelementptr inbounds %struct.list, %struct.list* %17, i32 0, i32 0
  %19 = load i8*, i8** %18, align 8
  %20 = call %struct.TYPE_4__* @bfd_openr(i8* %19, i32* null)
  store %struct.TYPE_4__* %20, %struct.TYPE_4__** %3, align 8
  %21 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %22 = icmp ne %struct.TYPE_4__* %21, null
  br i1 %22, label %32, label %23

23:                                               ; preds = %16
  %24 = load i32, i32* @stderr, align 4
  %25 = call i8* @_(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0))
  %26 = load i8*, i8** @program_name, align 8
  %27 = load %struct.list*, %struct.list** %2, align 8
  %28 = getelementptr inbounds %struct.list, %struct.list* %27, i32 0, i32 0
  %29 = load i8*, i8** %28, align 8
  %30 = call i32 (i32, i8*, i8*, ...) @fprintf(i32 %24, i8* %25, i8* %26, i8* %29)
  %31 = call i32 (...) @maybequit()
  br label %41

32:                                               ; preds = %16
  %33 = load %struct.TYPE_5__*, %struct.TYPE_5__** @obfd, align 8
  %34 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %33, i32 0, i32 0
  %35 = load %struct.TYPE_4__*, %struct.TYPE_4__** %34, align 8
  %36 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %37 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %36, i32 0, i32 0
  store %struct.TYPE_4__* %35, %struct.TYPE_4__** %37, align 8
  %38 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %39 = load %struct.TYPE_5__*, %struct.TYPE_5__** @obfd, align 8
  %40 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %39, i32 0, i32 0
  store %struct.TYPE_4__* %38, %struct.TYPE_4__** %40, align 8
  br label %41

41:                                               ; preds = %32, %23
  %42 = load %struct.list*, %struct.list** %2, align 8
  %43 = getelementptr inbounds %struct.list, %struct.list* %42, i32 0, i32 1
  %44 = load %struct.list*, %struct.list** %43, align 8
  store %struct.list* %44, %struct.list** %2, align 8
  br label %13

45:                                               ; preds = %13
  br label %46

46:                                               ; preds = %45, %6
  ret void
}

declare dso_local i32 @fprintf(i32, i8*, i8*, ...) #1

declare dso_local i8* @_(i8*) #1

declare dso_local i32 @maybequit(...) #1

declare dso_local %struct.TYPE_4__* @bfd_openr(i8*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

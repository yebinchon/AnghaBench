; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/binutils/extr_arsup.c_ar_list.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/binutils/extr_arsup.c_ar_list.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { %struct.TYPE_6__* }

@obfd = common dso_local global %struct.TYPE_7__* null, align 8
@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"%s: no open output archive\0A\00", align 1
@program_name = common dso_local global i8* null, align 8
@stdout = common dso_local global i32 0, align 4
@outfile = common dso_local global i32 0, align 4
@verbose = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [28 x i8] c"Current open archive is %s\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ar_list() #0 {
  %1 = alloca %struct.TYPE_6__*, align 8
  %2 = load %struct.TYPE_7__*, %struct.TYPE_7__** @obfd, align 8
  %3 = icmp ne %struct.TYPE_7__* %2, null
  br i1 %3, label %10, label %4

4:                                                ; preds = %0
  %5 = load i32, i32* @stderr, align 4
  %6 = call i8* @_(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0))
  %7 = load i8*, i8** @program_name, align 8
  %8 = call i32 @fprintf(i32 %5, i8* %6, i8* %7)
  %9 = call i32 (...) @maybequit()
  br label %30

10:                                               ; preds = %0
  %11 = load i32, i32* @stdout, align 4
  store i32 %11, i32* @outfile, align 4
  store i32 1, i32* @verbose, align 4
  %12 = call i8* @_(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0))
  %13 = load %struct.TYPE_7__*, %struct.TYPE_7__** @obfd, align 8
  %14 = call i8* @bfd_get_filename(%struct.TYPE_7__* %13)
  %15 = call i32 @printf(i8* %12, i8* %14)
  %16 = load %struct.TYPE_7__*, %struct.TYPE_7__** @obfd, align 8
  %17 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %16, i32 0, i32 0
  %18 = load %struct.TYPE_6__*, %struct.TYPE_6__** %17, align 8
  store %struct.TYPE_6__* %18, %struct.TYPE_6__** %1, align 8
  br label %19

19:                                               ; preds = %25, %10
  %20 = load %struct.TYPE_6__*, %struct.TYPE_6__** %1, align 8
  %21 = icmp ne %struct.TYPE_6__* %20, null
  br i1 %21, label %22, label %29

22:                                               ; preds = %19
  %23 = load %struct.TYPE_6__*, %struct.TYPE_6__** %1, align 8
  %24 = call i32 @ar_directory_doer(%struct.TYPE_6__* %23, %struct.TYPE_6__* null)
  br label %25

25:                                               ; preds = %22
  %26 = load %struct.TYPE_6__*, %struct.TYPE_6__** %1, align 8
  %27 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %26, i32 0, i32 0
  %28 = load %struct.TYPE_6__*, %struct.TYPE_6__** %27, align 8
  store %struct.TYPE_6__* %28, %struct.TYPE_6__** %1, align 8
  br label %19

29:                                               ; preds = %19
  br label %30

30:                                               ; preds = %29, %4
  ret void
}

declare dso_local i32 @fprintf(i32, i8*, i8*) #1

declare dso_local i8* @_(i8*) #1

declare dso_local i32 @maybequit(...) #1

declare dso_local i32 @printf(i8*, i8*) #1

declare dso_local i8* @bfd_get_filename(%struct.TYPE_7__*) #1

declare dso_local i32 @ar_directory_doer(%struct.TYPE_6__*, %struct.TYPE_6__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

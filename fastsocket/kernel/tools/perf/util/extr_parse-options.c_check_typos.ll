; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/tools/perf/util/extr_parse-options.c_check_typos.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/tools/perf/util/extr_parse-options.c_check_typos.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.option = type { i64, i8* }

@.str = private unnamed_addr constant [4 x i8] c"no-\00", align 1
@.str.1 = private unnamed_addr constant [40 x i8] c"did you mean `--%s` (with two dashes ?)\00", align 1
@OPTION_END = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, %struct.option*)* @check_typos to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @check_typos(i8* %0, %struct.option* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca %struct.option*, align 8
  store i8* %0, i8** %3, align 8
  store %struct.option* %1, %struct.option** %4, align 8
  %5 = load i8*, i8** %3, align 8
  %6 = call i32 @strlen(i8* %5)
  %7 = icmp slt i32 %6, 3
  br i1 %7, label %8, label %9

8:                                                ; preds = %2
  br label %45

9:                                                ; preds = %2
  %10 = load i8*, i8** %3, align 8
  %11 = call i32 @prefixcmp(i8* %10, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0))
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %17, label %13

13:                                               ; preds = %9
  %14 = load i8*, i8** %3, align 8
  %15 = call i32 @error(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.1, i64 0, i64 0), i8* %14)
  %16 = call i32 @exit(i32 129) #3
  unreachable

17:                                               ; preds = %9
  br label %18

18:                                               ; preds = %42, %17
  %19 = load %struct.option*, %struct.option** %4, align 8
  %20 = getelementptr inbounds %struct.option, %struct.option* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = load i64, i64* @OPTION_END, align 8
  %23 = icmp ne i64 %21, %22
  br i1 %23, label %24, label %45

24:                                               ; preds = %18
  %25 = load %struct.option*, %struct.option** %4, align 8
  %26 = getelementptr inbounds %struct.option, %struct.option* %25, i32 0, i32 1
  %27 = load i8*, i8** %26, align 8
  %28 = icmp ne i8* %27, null
  br i1 %28, label %30, label %29

29:                                               ; preds = %24
  br label %42

30:                                               ; preds = %24
  %31 = load %struct.option*, %struct.option** %4, align 8
  %32 = getelementptr inbounds %struct.option, %struct.option* %31, i32 0, i32 1
  %33 = load i8*, i8** %32, align 8
  %34 = load i8*, i8** %3, align 8
  %35 = call i32 @prefixcmp(i8* %33, i8* %34)
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %41, label %37

37:                                               ; preds = %30
  %38 = load i8*, i8** %3, align 8
  %39 = call i32 @error(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.1, i64 0, i64 0), i8* %38)
  %40 = call i32 @exit(i32 129) #3
  unreachable

41:                                               ; preds = %30
  br label %42

42:                                               ; preds = %41, %29
  %43 = load %struct.option*, %struct.option** %4, align 8
  %44 = getelementptr inbounds %struct.option, %struct.option* %43, i32 1
  store %struct.option* %44, %struct.option** %4, align 8
  br label %18

45:                                               ; preds = %8, %18
  ret void
}

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @prefixcmp(i8*, i8*) #1

declare dso_local i32 @error(i8*, i8*) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

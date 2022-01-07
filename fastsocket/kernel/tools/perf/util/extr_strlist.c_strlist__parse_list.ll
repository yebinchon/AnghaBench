; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/tools/perf/util/extr_strlist.c_strlist__parse_list.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/tools/perf/util/extr_strlist.c_strlist__parse_list.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.strlist = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @strlist__parse_list(%struct.strlist* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.strlist*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  store %struct.strlist* %0, %struct.strlist** %4, align 8
  store i8* %1, i8** %5, align 8
  br label %8

8:                                                ; preds = %22, %2
  %9 = load i8*, i8** %5, align 8
  %10 = call i8* @strchr(i8* %9, i8 signext 44)
  store i8* %10, i8** %6, align 8
  %11 = icmp ne i8* %10, null
  br i1 %11, label %12, label %25

12:                                               ; preds = %8
  %13 = load i8*, i8** %6, align 8
  store i8 0, i8* %13, align 1
  %14 = load %struct.strlist*, %struct.strlist** %4, align 8
  %15 = load i8*, i8** %5, align 8
  %16 = call i32 @strlist__parse_list_entry(%struct.strlist* %14, i8* %15)
  store i32 %16, i32* %7, align 4
  %17 = load i8*, i8** %6, align 8
  store i8 44, i8* %17, align 1
  %18 = load i32, i32* %7, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %22

20:                                               ; preds = %12
  %21 = load i32, i32* %7, align 4
  store i32 %21, i32* %3, align 4
  br label %37

22:                                               ; preds = %12
  %23 = load i8*, i8** %6, align 8
  %24 = getelementptr inbounds i8, i8* %23, i64 1
  store i8* %24, i8** %5, align 8
  br label %8

25:                                               ; preds = %8
  %26 = load i8*, i8** %5, align 8
  %27 = load i8, i8* %26, align 1
  %28 = sext i8 %27 to i32
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %34

30:                                               ; preds = %25
  %31 = load %struct.strlist*, %struct.strlist** %4, align 8
  %32 = load i8*, i8** %5, align 8
  %33 = call i32 @strlist__parse_list_entry(%struct.strlist* %31, i8* %32)
  br label %35

34:                                               ; preds = %25
  br label %35

35:                                               ; preds = %34, %30
  %36 = phi i32 [ %33, %30 ], [ 0, %34 ]
  store i32 %36, i32* %3, align 4
  br label %37

37:                                               ; preds = %35, %20
  %38 = load i32, i32* %3, align 4
  ret i32 %38
}

declare dso_local i8* @strchr(i8*, i8 signext) #1

declare dso_local i32 @strlist__parse_list_entry(%struct.strlist*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

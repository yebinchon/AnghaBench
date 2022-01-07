; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/kernel/extr_rh_taint.c_mark_tech_preview.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/kernel/extr_rh_taint.c_mark_tech_preview.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.module = type { i8*, i32 }

@.str = private unnamed_addr constant [100 x i8] c"TECH PREVIEW: %s may not be fully supported.\0APlease review provided documentation for limitations.\0A\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"kernel\00", align 1
@TAINT_TECH_PREVIEW = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mark_tech_preview(i8* %0, %struct.module* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca %struct.module*, align 8
  %5 = alloca i8*, align 8
  store i8* %0, i8** %3, align 8
  store %struct.module* %1, %struct.module** %4, align 8
  store i8* null, i8** %5, align 8
  %6 = load i8*, i8** %3, align 8
  %7 = icmp ne i8* %6, null
  br i1 %7, label %8, label %10

8:                                                ; preds = %2
  %9 = load i8*, i8** %3, align 8
  store i8* %9, i8** %5, align 8
  br label %23

10:                                               ; preds = %2
  %11 = load %struct.module*, %struct.module** %4, align 8
  %12 = icmp ne %struct.module* %11, null
  br i1 %12, label %13, label %22

13:                                               ; preds = %10
  %14 = load %struct.module*, %struct.module** %4, align 8
  %15 = getelementptr inbounds %struct.module, %struct.module* %14, i32 0, i32 0
  %16 = load i8*, i8** %15, align 8
  %17 = icmp ne i8* %16, null
  br i1 %17, label %18, label %22

18:                                               ; preds = %13
  %19 = load %struct.module*, %struct.module** %4, align 8
  %20 = getelementptr inbounds %struct.module, %struct.module* %19, i32 0, i32 0
  %21 = load i8*, i8** %20, align 8
  store i8* %21, i8** %5, align 8
  br label %22

22:                                               ; preds = %18, %13, %10
  br label %23

23:                                               ; preds = %22, %8
  %24 = load i8*, i8** %5, align 8
  %25 = icmp ne i8* %24, null
  br i1 %25, label %26, label %28

26:                                               ; preds = %23
  %27 = load i8*, i8** %5, align 8
  br label %29

28:                                               ; preds = %23
  br label %29

29:                                               ; preds = %28, %26
  %30 = phi i8* [ %27, %26 ], [ getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), %28 ]
  %31 = call i32 @pr_warning(i8* getelementptr inbounds ([100 x i8], [100 x i8]* @.str, i64 0, i64 0), i8* %30)
  %32 = load i32, i32* @TAINT_TECH_PREVIEW, align 4
  %33 = call i32 @add_taint(i32 %32)
  %34 = load %struct.module*, %struct.module** %4, align 8
  %35 = icmp ne %struct.module* %34, null
  br i1 %35, label %36, label %43

36:                                               ; preds = %29
  %37 = load i32, i32* @TAINT_TECH_PREVIEW, align 4
  %38 = shl i32 1, %37
  %39 = load %struct.module*, %struct.module** %4, align 8
  %40 = getelementptr inbounds %struct.module, %struct.module* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 8
  %42 = or i32 %41, %38
  store i32 %42, i32* %40, align 8
  br label %43

43:                                               ; preds = %36, %29
  ret void
}

declare dso_local i32 @pr_warning(i8*, i8*) #1

declare dso_local i32 @add_taint(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

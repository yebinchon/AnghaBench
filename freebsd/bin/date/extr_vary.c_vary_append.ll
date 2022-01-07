; ModuleID = '/home/carl/AnghaBench/freebsd/bin/date/extr_vary.c_vary_append.c'
source_filename = "/home/carl/AnghaBench/freebsd/bin/date/extr_vary.c_vary_append.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vary = type { i8*, %struct.vary* }

@.str = private unnamed_addr constant [7 x i8] c"malloc\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.vary* @vary_append(%struct.vary* %0, i8* %1) #0 {
  %3 = alloca %struct.vary*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.vary*, align 8
  %6 = alloca %struct.vary**, align 8
  store %struct.vary* %0, %struct.vary** %3, align 8
  store i8* %1, i8** %4, align 8
  %7 = load %struct.vary*, %struct.vary** %3, align 8
  %8 = icmp ne %struct.vary* %7, null
  br i1 %8, label %9, label %23

9:                                                ; preds = %2
  %10 = load %struct.vary*, %struct.vary** %3, align 8
  store %struct.vary* %10, %struct.vary** %5, align 8
  br label %11

11:                                               ; preds = %16, %9
  %12 = load %struct.vary*, %struct.vary** %3, align 8
  %13 = getelementptr inbounds %struct.vary, %struct.vary* %12, i32 0, i32 1
  %14 = load %struct.vary*, %struct.vary** %13, align 8
  %15 = icmp ne %struct.vary* %14, null
  br i1 %15, label %16, label %20

16:                                               ; preds = %11
  %17 = load %struct.vary*, %struct.vary** %3, align 8
  %18 = getelementptr inbounds %struct.vary, %struct.vary* %17, i32 0, i32 1
  %19 = load %struct.vary*, %struct.vary** %18, align 8
  store %struct.vary* %19, %struct.vary** %3, align 8
  br label %11

20:                                               ; preds = %11
  %21 = load %struct.vary*, %struct.vary** %3, align 8
  %22 = getelementptr inbounds %struct.vary, %struct.vary* %21, i32 0, i32 1
  store %struct.vary** %22, %struct.vary*** %6, align 8
  br label %24

23:                                               ; preds = %2
  store %struct.vary** %5, %struct.vary*** %6, align 8
  br label %24

24:                                               ; preds = %23, %20
  %25 = call i64 @malloc(i32 16)
  %26 = inttoptr i64 %25 to %struct.vary*
  %27 = load %struct.vary**, %struct.vary*** %6, align 8
  store %struct.vary* %26, %struct.vary** %27, align 8
  %28 = icmp eq %struct.vary* %26, null
  br i1 %28, label %29, label %31

29:                                               ; preds = %24
  %30 = call i32 @err(i32 1, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  br label %31

31:                                               ; preds = %29, %24
  %32 = load i8*, i8** %4, align 8
  %33 = load %struct.vary**, %struct.vary*** %6, align 8
  %34 = load %struct.vary*, %struct.vary** %33, align 8
  %35 = getelementptr inbounds %struct.vary, %struct.vary* %34, i32 0, i32 0
  store i8* %32, i8** %35, align 8
  %36 = load %struct.vary**, %struct.vary*** %6, align 8
  %37 = load %struct.vary*, %struct.vary** %36, align 8
  %38 = getelementptr inbounds %struct.vary, %struct.vary* %37, i32 0, i32 1
  store %struct.vary* null, %struct.vary** %38, align 8
  %39 = load %struct.vary*, %struct.vary** %5, align 8
  ret %struct.vary* %39
}

declare dso_local i64 @malloc(i32) #1

declare dso_local i32 @err(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

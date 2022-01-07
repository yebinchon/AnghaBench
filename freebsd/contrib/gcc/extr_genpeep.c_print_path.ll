; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_genpeep.c_print_path.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_genpeep.c_print_path.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.link = type { i64, i32, %struct.link* }

@.str = private unnamed_addr constant [4 x i8] c"pat\00", align 1
@.str.1 = private unnamed_addr constant [10 x i8] c"XVECEXP (\00", align 1
@.str.2 = private unnamed_addr constant [10 x i8] c", %d, %d)\00", align 1
@.str.3 = private unnamed_addr constant [7 x i8] c"XEXP (\00", align 1
@.str.4 = private unnamed_addr constant [6 x i8] c", %d)\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.link*)* @print_path to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @print_path(%struct.link* %0) #0 {
  %2 = alloca %struct.link*, align 8
  store %struct.link* %0, %struct.link** %2, align 8
  %3 = load %struct.link*, %struct.link** %2, align 8
  %4 = icmp eq %struct.link* %3, null
  br i1 %4, label %5, label %7

5:                                                ; preds = %1
  %6 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0))
  br label %34

7:                                                ; preds = %1
  %8 = load %struct.link*, %struct.link** %2, align 8
  %9 = getelementptr inbounds %struct.link, %struct.link* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = icmp sge i64 %10, 0
  br i1 %11, label %12, label %24

12:                                               ; preds = %7
  %13 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0))
  %14 = load %struct.link*, %struct.link** %2, align 8
  %15 = getelementptr inbounds %struct.link, %struct.link* %14, i32 0, i32 2
  %16 = load %struct.link*, %struct.link** %15, align 8
  call void @print_path(%struct.link* %16)
  %17 = load %struct.link*, %struct.link** %2, align 8
  %18 = getelementptr inbounds %struct.link, %struct.link* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 8
  %20 = load %struct.link*, %struct.link** %2, align 8
  %21 = getelementptr inbounds %struct.link, %struct.link* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i32 %19, i64 %22)
  br label %33

24:                                               ; preds = %7
  %25 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0))
  %26 = load %struct.link*, %struct.link** %2, align 8
  %27 = getelementptr inbounds %struct.link, %struct.link* %26, i32 0, i32 2
  %28 = load %struct.link*, %struct.link** %27, align 8
  call void @print_path(%struct.link* %28)
  %29 = load %struct.link*, %struct.link** %2, align 8
  %30 = getelementptr inbounds %struct.link, %struct.link* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 8
  %32 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i64 0, i64 0), i32 %31)
  br label %33

33:                                               ; preds = %24, %12
  br label %34

34:                                               ; preds = %33, %5
  ret void
}

declare dso_local i32 @printf(i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

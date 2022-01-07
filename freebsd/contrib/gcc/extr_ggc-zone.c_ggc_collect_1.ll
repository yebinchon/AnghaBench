; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_ggc-zone.c_ggc_collect_1.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_ggc-zone.c_ggc_collect_1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.alloc_zone = type { i8*, i32, i64, i64, %struct.alloc_chunk** }
%struct.alloc_chunk = type { %struct.alloc_chunk*, i64 }

@quiet_flag = common dso_local global i32 0, align 4
@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [17 x i8] c" {%s GC %luk -> \00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"%luk}\00", align 1
@NUM_FREE_BINS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.alloc_zone*, i32)* @ggc_collect_1 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ggc_collect_1(%struct.alloc_zone* %0, i32 %1) #0 {
  %3 = alloca %struct.alloc_zone*, align 8
  %4 = alloca i32, align 4
  store %struct.alloc_zone* %0, %struct.alloc_zone** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load i32, i32* @quiet_flag, align 4
  %6 = icmp ne i32 %5, 0
  br i1 %6, label %17, label %7

7:                                                ; preds = %2
  %8 = load i32, i32* @stderr, align 4
  %9 = load %struct.alloc_zone*, %struct.alloc_zone** %3, align 8
  %10 = getelementptr inbounds %struct.alloc_zone, %struct.alloc_zone* %9, i32 0, i32 0
  %11 = load i8*, i8** %10, align 8
  %12 = load %struct.alloc_zone*, %struct.alloc_zone** %3, align 8
  %13 = getelementptr inbounds %struct.alloc_zone, %struct.alloc_zone* %12, i32 0, i32 2
  %14 = load i64, i64* %13, align 8
  %15 = udiv i64 %14, 1024
  %16 = call i32 (i32, i8*, ...) @fprintf(i32 %8, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0), i8* %11, i64 %15)
  br label %17

17:                                               ; preds = %7, %2
  %18 = load %struct.alloc_zone*, %struct.alloc_zone** %3, align 8
  %19 = getelementptr inbounds %struct.alloc_zone, %struct.alloc_zone* %18, i32 0, i32 2
  store i64 0, i64* %19, align 8
  %20 = load %struct.alloc_zone*, %struct.alloc_zone** %3, align 8
  %21 = call i32 @release_pages(%struct.alloc_zone* %20)
  %22 = load i32, i32* %4, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %27

24:                                               ; preds = %17
  %25 = call i32 (...) @zone_allocate_marks()
  %26 = call i32 (...) @ggc_mark_roots()
  br label %27

27:                                               ; preds = %24, %17
  %28 = load %struct.alloc_zone*, %struct.alloc_zone** %3, align 8
  %29 = call i32 @sweep_pages(%struct.alloc_zone* %28)
  %30 = load %struct.alloc_zone*, %struct.alloc_zone** %3, align 8
  %31 = getelementptr inbounds %struct.alloc_zone, %struct.alloc_zone* %30, i32 0, i32 1
  store i32 1, i32* %31, align 8
  %32 = load %struct.alloc_zone*, %struct.alloc_zone** %3, align 8
  %33 = getelementptr inbounds %struct.alloc_zone, %struct.alloc_zone* %32, i32 0, i32 2
  %34 = load i64, i64* %33, align 8
  %35 = load %struct.alloc_zone*, %struct.alloc_zone** %3, align 8
  %36 = getelementptr inbounds %struct.alloc_zone, %struct.alloc_zone* %35, i32 0, i32 3
  store i64 %34, i64* %36, align 8
  %37 = load i32, i32* @quiet_flag, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %46, label %39

39:                                               ; preds = %27
  %40 = load i32, i32* @stderr, align 4
  %41 = load %struct.alloc_zone*, %struct.alloc_zone** %3, align 8
  %42 = getelementptr inbounds %struct.alloc_zone, %struct.alloc_zone* %41, i32 0, i32 2
  %43 = load i64, i64* %42, align 8
  %44 = udiv i64 %43, 1024
  %45 = call i32 (i32, i8*, ...) @fprintf(i32 %40, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i64 %44)
  br label %46

46:                                               ; preds = %39, %27
  ret i32 1
}

declare dso_local i32 @fprintf(i32, i8*, ...) #1

declare dso_local i32 @release_pages(%struct.alloc_zone*) #1

declare dso_local i32 @zone_allocate_marks(...) #1

declare dso_local i32 @ggc_mark_roots(...) #1

declare dso_local i32 @sweep_pages(%struct.alloc_zone*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

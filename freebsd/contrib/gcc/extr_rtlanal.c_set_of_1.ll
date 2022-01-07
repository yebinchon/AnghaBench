; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_rtlanal.c_set_of_1.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_rtlanal.c_set_of_1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.set_of_data = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i32, i8*)* @set_of_1 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @set_of_1(i32 %0, i32 %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca %struct.set_of_data*, align 8
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  store i8* %2, i8** %6, align 8
  %8 = load i8*, i8** %6, align 8
  %9 = bitcast i8* %8 to %struct.set_of_data*
  store %struct.set_of_data* %9, %struct.set_of_data** %7, align 8
  %10 = load i32, i32* %4, align 4
  %11 = load %struct.set_of_data*, %struct.set_of_data** %7, align 8
  %12 = getelementptr inbounds %struct.set_of_data, %struct.set_of_data* %11, i32 0, i32 1
  %13 = load i32, i32* %12, align 4
  %14 = call i64 @rtx_equal_p(i32 %10, i32 %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %27, label %16

16:                                               ; preds = %3
  %17 = load i32, i32* %4, align 4
  %18 = call i32 @MEM_P(i32 %17)
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %31, label %20

20:                                               ; preds = %16
  %21 = load %struct.set_of_data*, %struct.set_of_data** %7, align 8
  %22 = getelementptr inbounds %struct.set_of_data, %struct.set_of_data* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = load i32, i32* %4, align 4
  %25 = call i64 @reg_overlap_mentioned_p(i32 %23, i32 %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %31

27:                                               ; preds = %20, %3
  %28 = load i32, i32* %5, align 4
  %29 = load %struct.set_of_data*, %struct.set_of_data** %7, align 8
  %30 = getelementptr inbounds %struct.set_of_data, %struct.set_of_data* %29, i32 0, i32 0
  store i32 %28, i32* %30, align 4
  br label %31

31:                                               ; preds = %27, %20, %16
  ret void
}

declare dso_local i64 @rtx_equal_p(i32, i32) #1

declare dso_local i32 @MEM_P(i32) #1

declare dso_local i64 @reg_overlap_mentioned_p(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

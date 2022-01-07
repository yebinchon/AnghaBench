; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/atf/atf-c/detail/extr_sanity_test.c_do_test_child.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/atf/atf-c/detail/extr_sanity_test.c_do_test_child.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.test_data = type { i32, i32 }

@UNREACHABLE = common dso_local global i32 0, align 4
@EXIT_SUCCESS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @do_test_child to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @do_test_child(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.test_data*, align 8
  store i8* %0, i8** %2, align 8
  %4 = load i8*, i8** %2, align 8
  %5 = bitcast i8* %4 to %struct.test_data*
  store %struct.test_data* %5, %struct.test_data** %3, align 8
  %6 = load %struct.test_data*, %struct.test_data** %3, align 8
  %7 = getelementptr inbounds %struct.test_data, %struct.test_data* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  switch i32 %8, label %32 [
    i32 131, label %9
    i32 129, label %14
    i32 130, label %19
    i32 128, label %24
  ]

9:                                                ; preds = %1
  %10 = load %struct.test_data*, %struct.test_data** %3, align 8
  %11 = getelementptr inbounds %struct.test_data, %struct.test_data* %10, i32 0, i32 1
  %12 = load i32, i32* %11, align 4
  %13 = call i32 @INV(i32 %12)
  br label %32

14:                                               ; preds = %1
  %15 = load %struct.test_data*, %struct.test_data** %3, align 8
  %16 = getelementptr inbounds %struct.test_data, %struct.test_data* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 4
  %18 = call i32 @PRE(i32 %17)
  br label %32

19:                                               ; preds = %1
  %20 = load %struct.test_data*, %struct.test_data** %3, align 8
  %21 = getelementptr inbounds %struct.test_data, %struct.test_data* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  %23 = call i32 @POST(i32 %22)
  br label %32

24:                                               ; preds = %1
  %25 = load %struct.test_data*, %struct.test_data** %3, align 8
  %26 = getelementptr inbounds %struct.test_data, %struct.test_data* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %31, label %29

29:                                               ; preds = %24
  %30 = load i32, i32* @UNREACHABLE, align 4
  br label %31

31:                                               ; preds = %29, %24
  br label %32

32:                                               ; preds = %1, %31, %19, %14, %9
  %33 = load i32, i32* @EXIT_SUCCESS, align 4
  %34 = call i32 @exit(i32 %33) #3
  unreachable
}

declare dso_local i32 @INV(i32) #1

declare dso_local i32 @PRE(i32) #1

declare dso_local i32 @POST(i32) #1

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

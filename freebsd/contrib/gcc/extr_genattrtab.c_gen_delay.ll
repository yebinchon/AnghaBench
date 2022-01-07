; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_genattrtab.c_gen_delay.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_genattrtab.c_gen_delay.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.delay_desc = type { i32, %struct.delay_desc*, i64, i32 }

@.str = private unnamed_addr constant [61 x i8] c"number of elements in DEFINE_DELAY must be multiple of three\00", align 1
@have_error = common dso_local global i32 0, align 4
@have_annul_true = common dso_local global i32 0, align 4
@have_annul_false = common dso_local global i32 0, align 4
@num_delays = common dso_local global i64 0, align 8
@delays = common dso_local global %struct.delay_desc* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i32)* @gen_delay to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @gen_delay(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.delay_desc*, align 8
  %6 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  %7 = load i32, i32* %3, align 4
  %8 = call i32 @XVECLEN(i32 %7, i32 1)
  %9 = srem i32 %8, 3
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %11, label %14

11:                                               ; preds = %2
  %12 = load i32, i32* %4, align 4
  %13 = call i32 @message_with_line(i32 %12, i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str, i64 0, i64 0))
  store i32 1, i32* @have_error, align 4
  br label %54

14:                                               ; preds = %2
  store i32 0, i32* %6, align 4
  br label %15

15:                                               ; preds = %35, %14
  %16 = load i32, i32* %6, align 4
  %17 = load i32, i32* %3, align 4
  %18 = call i32 @XVECLEN(i32 %17, i32 1)
  %19 = icmp slt i32 %16, %18
  br i1 %19, label %20, label %38

20:                                               ; preds = %15
  %21 = load i32, i32* %3, align 4
  %22 = load i32, i32* %6, align 4
  %23 = add nsw i32 %22, 1
  %24 = call i64 @XVECEXP(i32 %21, i32 1, i32 %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %27

26:                                               ; preds = %20
  store i32 1, i32* @have_annul_true, align 4
  br label %27

27:                                               ; preds = %26, %20
  %28 = load i32, i32* %3, align 4
  %29 = load i32, i32* %6, align 4
  %30 = add nsw i32 %29, 2
  %31 = call i64 @XVECEXP(i32 %28, i32 1, i32 %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %34

33:                                               ; preds = %27
  store i32 1, i32* @have_annul_false, align 4
  br label %34

34:                                               ; preds = %33, %27
  br label %35

35:                                               ; preds = %34
  %36 = load i32, i32* %6, align 4
  %37 = add nsw i32 %36, 3
  store i32 %37, i32* %6, align 4
  br label %15

38:                                               ; preds = %15
  %39 = call %struct.delay_desc* @oballoc(i32 32)
  store %struct.delay_desc* %39, %struct.delay_desc** %5, align 8
  %40 = load i32, i32* %3, align 4
  %41 = load %struct.delay_desc*, %struct.delay_desc** %5, align 8
  %42 = getelementptr inbounds %struct.delay_desc, %struct.delay_desc* %41, i32 0, i32 3
  store i32 %40, i32* %42, align 8
  %43 = load i64, i64* @num_delays, align 8
  %44 = add nsw i64 %43, 1
  store i64 %44, i64* @num_delays, align 8
  %45 = load %struct.delay_desc*, %struct.delay_desc** %5, align 8
  %46 = getelementptr inbounds %struct.delay_desc, %struct.delay_desc* %45, i32 0, i32 2
  store i64 %44, i64* %46, align 8
  %47 = load %struct.delay_desc*, %struct.delay_desc** @delays, align 8
  %48 = load %struct.delay_desc*, %struct.delay_desc** %5, align 8
  %49 = getelementptr inbounds %struct.delay_desc, %struct.delay_desc* %48, i32 0, i32 1
  store %struct.delay_desc* %47, %struct.delay_desc** %49, align 8
  %50 = load i32, i32* %4, align 4
  %51 = load %struct.delay_desc*, %struct.delay_desc** %5, align 8
  %52 = getelementptr inbounds %struct.delay_desc, %struct.delay_desc* %51, i32 0, i32 0
  store i32 %50, i32* %52, align 8
  %53 = load %struct.delay_desc*, %struct.delay_desc** %5, align 8
  store %struct.delay_desc* %53, %struct.delay_desc** @delays, align 8
  br label %54

54:                                               ; preds = %38, %11
  ret void
}

declare dso_local i32 @XVECLEN(i32, i32) #1

declare dso_local i32 @message_with_line(i32, i8*) #1

declare dso_local i64 @XVECEXP(i32, i32, i32) #1

declare dso_local %struct.delay_desc* @oballoc(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

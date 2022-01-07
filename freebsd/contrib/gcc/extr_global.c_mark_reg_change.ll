; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_global.c_mark_reg_change.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_global.c_mark_reg_change.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bb_info = type { i32, i32 }

@SUBREG = common dso_local global i64 0, align 8
@CLOBBER = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i32, i8*)* @mark_reg_change to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mark_reg_change(i32 %0, i32 %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca %struct.bb_info*, align 8
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  store i8* %2, i8** %6, align 8
  %10 = load i8*, i8** %6, align 8
  store i8* %10, i8** %8, align 8
  %11 = load i8*, i8** %8, align 8
  %12 = call %struct.bb_info* @BB_INFO(i8* %11)
  store %struct.bb_info* %12, %struct.bb_info** %9, align 8
  %13 = load i32, i32* %4, align 4
  %14 = call i64 @GET_CODE(i32 %13)
  %15 = load i64, i64* @SUBREG, align 8
  %16 = icmp eq i64 %14, %15
  br i1 %16, label %17, label %20

17:                                               ; preds = %3
  %18 = load i32, i32* %4, align 4
  %19 = call i32 @SUBREG_REG(i32 %18)
  store i32 %19, i32* %4, align 4
  br label %20

20:                                               ; preds = %17, %3
  %21 = load i32, i32* %4, align 4
  %22 = call i32 @REG_P(i32 %21)
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %25, label %24

24:                                               ; preds = %20
  br label %49

25:                                               ; preds = %20
  %26 = load i32, i32* %4, align 4
  %27 = call i32 @REGNO(i32 %26)
  store i32 %27, i32* %7, align 4
  %28 = load %struct.bb_info*, %struct.bb_info** %9, align 8
  %29 = getelementptr inbounds %struct.bb_info, %struct.bb_info* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = load i32, i32* %7, align 4
  %32 = call i32 @bitmap_set_bit(i32 %30, i32 %31)
  %33 = load i32, i32* %5, align 4
  %34 = call i64 @GET_CODE(i32 %33)
  %35 = load i64, i64* @CLOBBER, align 8
  %36 = icmp ne i64 %34, %35
  br i1 %36, label %37, label %43

37:                                               ; preds = %25
  %38 = load %struct.bb_info*, %struct.bb_info** %9, align 8
  %39 = getelementptr inbounds %struct.bb_info, %struct.bb_info* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = load i32, i32* %7, align 4
  %42 = call i32 @bitmap_set_bit(i32 %40, i32 %41)
  br label %49

43:                                               ; preds = %25
  %44 = load %struct.bb_info*, %struct.bb_info** %9, align 8
  %45 = getelementptr inbounds %struct.bb_info, %struct.bb_info* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = load i32, i32* %7, align 4
  %48 = call i32 @bitmap_clear_bit(i32 %46, i32 %47)
  br label %49

49:                                               ; preds = %24, %43, %37
  ret void
}

declare dso_local %struct.bb_info* @BB_INFO(i8*) #1

declare dso_local i64 @GET_CODE(i32) #1

declare dso_local i32 @SUBREG_REG(i32) #1

declare dso_local i32 @REG_P(i32) #1

declare dso_local i32 @REGNO(i32) #1

declare dso_local i32 @bitmap_set_bit(i32, i32) #1

declare dso_local i32 @bitmap_clear_bit(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

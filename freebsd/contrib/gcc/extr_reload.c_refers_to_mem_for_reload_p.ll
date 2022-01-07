; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_reload.c_refers_to_mem_for_reload_p.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_reload.c_refers_to_mem_for_reload_p.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@FIRST_PSEUDO_REGISTER = common dso_local global i64 0, align 8
@reg_equiv_memory_loc = common dso_local global i64* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @refers_to_mem_for_reload_p to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @refers_to_mem_for_reload_p(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %6 = load i32, i32* %3, align 4
  %7 = call i64 @MEM_P(i32 %6)
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %9, label %10

9:                                                ; preds = %1
  store i32 1, i32* %2, align 4
  br label %66

10:                                               ; preds = %1
  %11 = load i32, i32* %3, align 4
  %12 = call i64 @REG_P(i32 %11)
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %29

14:                                               ; preds = %10
  %15 = load i32, i32* %3, align 4
  %16 = call i64 @REGNO(i32 %15)
  %17 = load i64, i64* @FIRST_PSEUDO_REGISTER, align 8
  %18 = icmp uge i64 %16, %17
  br i1 %18, label %19, label %26

19:                                               ; preds = %14
  %20 = load i64*, i64** @reg_equiv_memory_loc, align 8
  %21 = load i32, i32* %3, align 4
  %22 = call i64 @REGNO(i32 %21)
  %23 = getelementptr inbounds i64, i64* %20, i64 %22
  %24 = load i64, i64* %23, align 8
  %25 = icmp ne i64 %24, 0
  br label %26

26:                                               ; preds = %19, %14
  %27 = phi i1 [ false, %14 ], [ %25, %19 ]
  %28 = zext i1 %27 to i32
  store i32 %28, i32* %2, align 4
  br label %66

29:                                               ; preds = %10
  %30 = load i32, i32* %3, align 4
  %31 = call i32 @GET_CODE(i32 %30)
  %32 = call i8* @GET_RTX_FORMAT(i32 %31)
  store i8* %32, i8** %4, align 8
  %33 = load i32, i32* %3, align 4
  %34 = call i32 @GET_CODE(i32 %33)
  %35 = call i32 @GET_RTX_LENGTH(i32 %34)
  %36 = sub nsw i32 %35, 1
  store i32 %36, i32* %5, align 4
  br label %37

37:                                               ; preds = %62, %29
  %38 = load i32, i32* %5, align 4
  %39 = icmp sge i32 %38, 0
  br i1 %39, label %40, label %65

40:                                               ; preds = %37
  %41 = load i8*, i8** %4, align 8
  %42 = load i32, i32* %5, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds i8, i8* %41, i64 %43
  %45 = load i8, i8* %44, align 1
  %46 = sext i8 %45 to i32
  %47 = icmp eq i32 %46, 101
  br i1 %47, label %48, label %61

48:                                               ; preds = %40
  %49 = load i32, i32* %3, align 4
  %50 = load i32, i32* %5, align 4
  %51 = call i32 @XEXP(i32 %49, i32 %50)
  %52 = call i64 @MEM_P(i32 %51)
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %60, label %54

54:                                               ; preds = %48
  %55 = load i32, i32* %3, align 4
  %56 = load i32, i32* %5, align 4
  %57 = call i32 @XEXP(i32 %55, i32 %56)
  %58 = call i32 @refers_to_mem_for_reload_p(i32 %57)
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %61

60:                                               ; preds = %54, %48
  store i32 1, i32* %2, align 4
  br label %66

61:                                               ; preds = %54, %40
  br label %62

62:                                               ; preds = %61
  %63 = load i32, i32* %5, align 4
  %64 = add nsw i32 %63, -1
  store i32 %64, i32* %5, align 4
  br label %37

65:                                               ; preds = %37
  store i32 0, i32* %2, align 4
  br label %66

66:                                               ; preds = %65, %60, %26, %9
  %67 = load i32, i32* %2, align 4
  ret i32 %67
}

declare dso_local i64 @MEM_P(i32) #1

declare dso_local i64 @REG_P(i32) #1

declare dso_local i64 @REGNO(i32) #1

declare dso_local i8* @GET_RTX_FORMAT(i32) #1

declare dso_local i32 @GET_CODE(i32) #1

declare dso_local i32 @GET_RTX_LENGTH(i32) #1

declare dso_local i32 @XEXP(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

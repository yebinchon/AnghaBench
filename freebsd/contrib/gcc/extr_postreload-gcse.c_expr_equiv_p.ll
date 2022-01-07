; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_postreload-gcse.c_expr_equiv_p.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_postreload-gcse.c_expr_equiv_p.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.expr = type { i64, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i8*)* @expr_equiv_p to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @expr_equiv_p(i8* %0, i8* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.expr*, align 8
  %6 = alloca %struct.expr*, align 8
  %7 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  store i8* %1, i8** %4, align 8
  %8 = load i8*, i8** %3, align 8
  %9 = bitcast i8* %8 to %struct.expr*
  store %struct.expr* %9, %struct.expr** %5, align 8
  %10 = load i8*, i8** %4, align 8
  %11 = bitcast i8* %10 to %struct.expr*
  store %struct.expr* %11, %struct.expr** %6, align 8
  %12 = load %struct.expr*, %struct.expr** %5, align 8
  %13 = getelementptr inbounds %struct.expr, %struct.expr* %12, i32 0, i32 1
  %14 = load i32, i32* %13, align 8
  %15 = load %struct.expr*, %struct.expr** %6, align 8
  %16 = getelementptr inbounds %struct.expr, %struct.expr* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 8
  %18 = call i32 @exp_equiv_p(i32 %14, i32 %17, i32 0, i32 1)
  store i32 %18, i32* %7, align 4
  %19 = load i32, i32* %7, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %29

21:                                               ; preds = %2
  %22 = load %struct.expr*, %struct.expr** %5, align 8
  %23 = getelementptr inbounds %struct.expr, %struct.expr* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = load %struct.expr*, %struct.expr** %6, align 8
  %26 = getelementptr inbounds %struct.expr, %struct.expr* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = icmp eq i64 %24, %27
  br label %29

29:                                               ; preds = %21, %2
  %30 = phi i1 [ true, %2 ], [ %28, %21 ]
  %31 = zext i1 %30 to i32
  %32 = call i32 @gcc_assert(i32 %31)
  %33 = load i32, i32* %7, align 4
  ret i32 %33
}

declare dso_local i32 @exp_equiv_p(i32, i32, i32, i32) #1

declare dso_local i32 @gcc_assert(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

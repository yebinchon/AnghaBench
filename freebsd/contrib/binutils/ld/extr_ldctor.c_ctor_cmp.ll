; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/ld/extr_ldctor.c_ctor_cmp.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/ld/extr_ldctor.c_ctor_cmp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.set_element = type { i8* }

@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i8*)* @ctor_cmp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ctor_cmp(i8* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.set_element**, align 8
  %7 = alloca %struct.set_element**, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store i8* %1, i8** %5, align 8
  %12 = load i8*, i8** %4, align 8
  %13 = bitcast i8* %12 to %struct.set_element**
  store %struct.set_element** %13, %struct.set_element*** %6, align 8
  %14 = load i8*, i8** %5, align 8
  %15 = bitcast i8* %14 to %struct.set_element**
  store %struct.set_element** %15, %struct.set_element*** %7, align 8
  %16 = load %struct.set_element**, %struct.set_element*** %6, align 8
  %17 = load %struct.set_element*, %struct.set_element** %16, align 8
  %18 = getelementptr inbounds %struct.set_element, %struct.set_element* %17, i32 0, i32 0
  %19 = load i8*, i8** %18, align 8
  store i8* %19, i8** %8, align 8
  %20 = load i8*, i8** %8, align 8
  %21 = icmp eq i8* %20, null
  br i1 %21, label %22, label %23

22:                                               ; preds = %2
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0), i8** %8, align 8
  br label %23

23:                                               ; preds = %22, %2
  %24 = load %struct.set_element**, %struct.set_element*** %7, align 8
  %25 = load %struct.set_element*, %struct.set_element** %24, align 8
  %26 = getelementptr inbounds %struct.set_element, %struct.set_element* %25, i32 0, i32 0
  %27 = load i8*, i8** %26, align 8
  store i8* %27, i8** %9, align 8
  %28 = load i8*, i8** %9, align 8
  %29 = icmp eq i8* %28, null
  br i1 %29, label %30, label %31

30:                                               ; preds = %23
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0), i8** %9, align 8
  br label %31

31:                                               ; preds = %30, %23
  %32 = load i8*, i8** %8, align 8
  %33 = call i32 @ctor_prio(i8* %32)
  store i32 %33, i32* %10, align 4
  %34 = load i8*, i8** %9, align 8
  %35 = call i32 @ctor_prio(i8* %34)
  store i32 %35, i32* %11, align 4
  %36 = load i32, i32* %10, align 4
  %37 = load i32, i32* %11, align 4
  %38 = icmp slt i32 %36, %37
  br i1 %38, label %39, label %40

39:                                               ; preds = %31
  store i32 1, i32* %3, align 4
  br label %57

40:                                               ; preds = %31
  %41 = load i32, i32* %10, align 4
  %42 = load i32, i32* %11, align 4
  %43 = icmp sgt i32 %41, %42
  br i1 %43, label %44, label %45

44:                                               ; preds = %40
  store i32 -1, i32* %3, align 4
  br label %57

45:                                               ; preds = %40
  br label %46

46:                                               ; preds = %45
  %47 = load %struct.set_element**, %struct.set_element*** %6, align 8
  %48 = load %struct.set_element**, %struct.set_element*** %7, align 8
  %49 = icmp ult %struct.set_element** %47, %48
  br i1 %49, label %50, label %51

50:                                               ; preds = %46
  store i32 -1, i32* %3, align 4
  br label %57

51:                                               ; preds = %46
  %52 = load %struct.set_element**, %struct.set_element*** %6, align 8
  %53 = load %struct.set_element**, %struct.set_element*** %7, align 8
  %54 = icmp ugt %struct.set_element** %52, %53
  br i1 %54, label %55, label %56

55:                                               ; preds = %51
  store i32 1, i32* %3, align 4
  br label %57

56:                                               ; preds = %51
  store i32 0, i32* %3, align 4
  br label %57

57:                                               ; preds = %56, %55, %50, %44, %39
  %58 = load i32, i32* %3, align 4
  ret i32 %58
}

declare dso_local i32 @ctor_prio(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

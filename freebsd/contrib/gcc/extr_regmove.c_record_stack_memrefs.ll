; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_regmove.c_record_stack_memrefs.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_regmove.c_record_stack_memrefs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.record_stack_memrefs_data = type { i32, i32 }

@stack_pointer_rtx = common dso_local global i32 0, align 4
@STACK_POINTER_REGNUM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i8*)* @record_stack_memrefs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @record_stack_memrefs(i32* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.record_stack_memrefs_data*, align 8
  store i32* %0, i32** %4, align 8
  store i8* %1, i8** %5, align 8
  %8 = load i32*, i32** %4, align 8
  %9 = load i32, i32* %8, align 4
  store i32 %9, i32* %6, align 4
  %10 = load i8*, i8** %5, align 8
  %11 = bitcast i8* %10 to %struct.record_stack_memrefs_data*
  store %struct.record_stack_memrefs_data* %11, %struct.record_stack_memrefs_data** %7, align 8
  %12 = load i32, i32* %6, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %15, label %14

14:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %49

15:                                               ; preds = %2
  %16 = load i32, i32* %6, align 4
  %17 = call i32 @GET_CODE(i32 %16)
  switch i32 %17, label %47 [
    i32 129, label %18
    i32 128, label %40
  ]

18:                                               ; preds = %15
  %19 = load i32, i32* @stack_pointer_rtx, align 4
  %20 = load i32, i32* %6, align 4
  %21 = call i32 @reg_mentioned_p(i32 %19, i32 %20)
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %24, label %23

23:                                               ; preds = %18
  store i32 -1, i32* %3, align 4
  br label %49

24:                                               ; preds = %18
  %25 = load i32, i32* %6, align 4
  %26 = call i32 @stack_memref_p(i32 %25)
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %39

28:                                               ; preds = %24
  %29 = load %struct.record_stack_memrefs_data*, %struct.record_stack_memrefs_data** %7, align 8
  %30 = getelementptr inbounds %struct.record_stack_memrefs_data, %struct.record_stack_memrefs_data* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = load i32*, i32** %4, align 8
  %33 = load %struct.record_stack_memrefs_data*, %struct.record_stack_memrefs_data** %7, align 8
  %34 = getelementptr inbounds %struct.record_stack_memrefs_data, %struct.record_stack_memrefs_data* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = call i32 @record_one_stack_memref(i32 %31, i32* %32, i32 %35)
  %37 = load %struct.record_stack_memrefs_data*, %struct.record_stack_memrefs_data** %7, align 8
  %38 = getelementptr inbounds %struct.record_stack_memrefs_data, %struct.record_stack_memrefs_data* %37, i32 0, i32 0
  store i32 %36, i32* %38, align 4
  store i32 -1, i32* %3, align 4
  br label %49

39:                                               ; preds = %24
  store i32 1, i32* %3, align 4
  br label %49

40:                                               ; preds = %15
  %41 = load i32, i32* %6, align 4
  %42 = call i32 @REGNO(i32 %41)
  %43 = load i32, i32* @STACK_POINTER_REGNUM, align 4
  %44 = icmp eq i32 %42, %43
  br i1 %44, label %45, label %46

45:                                               ; preds = %40
  store i32 1, i32* %3, align 4
  br label %49

46:                                               ; preds = %40
  br label %48

47:                                               ; preds = %15
  br label %48

48:                                               ; preds = %47, %46
  store i32 0, i32* %3, align 4
  br label %49

49:                                               ; preds = %48, %45, %39, %28, %23, %14
  %50 = load i32, i32* %3, align 4
  ret i32 %50
}

declare dso_local i32 @GET_CODE(i32) #1

declare dso_local i32 @reg_mentioned_p(i32, i32) #1

declare dso_local i32 @stack_memref_p(i32) #1

declare dso_local i32 @record_one_stack_memref(i32, i32*, i32) #1

declare dso_local i32 @REGNO(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

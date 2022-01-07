; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/compiler-rt/lib/BlocksRuntime/extr_runtime.c__Block_object_assign.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/compiler-rt/lib/BlocksRuntime/extr_runtime.c__Block_object_assign.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@BLOCK_BYREF_CALLER = common dso_local global i32 0, align 4
@BLOCK_FIELD_IS_WEAK = common dso_local global i32 0, align 4
@BLOCK_FIELD_IS_BYREF = common dso_local global i32 0, align 4
@BLOCK_FIELD_IS_BLOCK = common dso_local global i32 0, align 4
@BLOCK_FIELD_IS_OBJECT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @_Block_object_assign(i8* %0, i8* %1, i32 %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store i8* %1, i8** %5, align 8
  store i32 %2, i32* %6, align 4
  %7 = load i32, i32* %6, align 4
  %8 = load i32, i32* @BLOCK_BYREF_CALLER, align 4
  %9 = and i32 %7, %8
  %10 = load i32, i32* @BLOCK_BYREF_CALLER, align 4
  %11 = icmp eq i32 %9, %10
  br i1 %11, label %12, label %27

12:                                               ; preds = %3
  %13 = load i32, i32* %6, align 4
  %14 = load i32, i32* @BLOCK_FIELD_IS_WEAK, align 4
  %15 = and i32 %13, %14
  %16 = load i32, i32* @BLOCK_FIELD_IS_WEAK, align 4
  %17 = icmp eq i32 %15, %16
  br i1 %17, label %18, label %22

18:                                               ; preds = %12
  %19 = load i8*, i8** %5, align 8
  %20 = load i8*, i8** %4, align 8
  %21 = call i32 @_Block_assign_weak(i8* %19, i8* %20)
  br label %26

22:                                               ; preds = %12
  %23 = load i8*, i8** %5, align 8
  %24 = load i8*, i8** %4, align 8
  %25 = call i32 @_Block_assign(i8* %23, i8* %24)
  br label %26

26:                                               ; preds = %22, %18
  br label %65

27:                                               ; preds = %3
  %28 = load i32, i32* %6, align 4
  %29 = load i32, i32* @BLOCK_FIELD_IS_BYREF, align 4
  %30 = and i32 %28, %29
  %31 = load i32, i32* @BLOCK_FIELD_IS_BYREF, align 4
  %32 = icmp eq i32 %30, %31
  br i1 %32, label %33, label %38

33:                                               ; preds = %27
  %34 = load i8*, i8** %4, align 8
  %35 = load i8*, i8** %5, align 8
  %36 = load i32, i32* %6, align 4
  %37 = call i32 @_Block_byref_assign_copy(i8* %34, i8* %35, i32 %36)
  br label %64

38:                                               ; preds = %27
  %39 = load i32, i32* %6, align 4
  %40 = load i32, i32* @BLOCK_FIELD_IS_BLOCK, align 4
  %41 = and i32 %39, %40
  %42 = load i32, i32* @BLOCK_FIELD_IS_BLOCK, align 4
  %43 = icmp eq i32 %41, %42
  br i1 %43, label %44, label %50

44:                                               ; preds = %38
  %45 = load i8*, i8** %5, align 8
  %46 = load i32, i32* %6, align 4
  %47 = call i8* @_Block_copy_internal(i8* %45, i32 %46)
  %48 = load i8*, i8** %4, align 8
  %49 = call i32 @_Block_assign(i8* %47, i8* %48)
  br label %63

50:                                               ; preds = %38
  %51 = load i32, i32* %6, align 4
  %52 = load i32, i32* @BLOCK_FIELD_IS_OBJECT, align 4
  %53 = and i32 %51, %52
  %54 = load i32, i32* @BLOCK_FIELD_IS_OBJECT, align 4
  %55 = icmp eq i32 %53, %54
  br i1 %55, label %56, label %62

56:                                               ; preds = %50
  %57 = load i8*, i8** %5, align 8
  %58 = call i32 @_Block_retain_object(i8* %57)
  %59 = load i8*, i8** %5, align 8
  %60 = load i8*, i8** %4, align 8
  %61 = call i32 @_Block_assign(i8* %59, i8* %60)
  br label %62

62:                                               ; preds = %56, %50
  br label %63

63:                                               ; preds = %62, %44
  br label %64

64:                                               ; preds = %63, %33
  br label %65

65:                                               ; preds = %64, %26
  ret void
}

declare dso_local i32 @_Block_assign_weak(i8*, i8*) #1

declare dso_local i32 @_Block_assign(i8*, i8*) #1

declare dso_local i32 @_Block_byref_assign_copy(i8*, i8*, i32) #1

declare dso_local i8* @_Block_copy_internal(i8*, i32) #1

declare dso_local i32 @_Block_retain_object(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/compiler-rt/lib/BlocksRuntime/extr_runtime.c__Block_object_dispose.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/compiler-rt/lib/BlocksRuntime/extr_runtime.c__Block_object_dispose.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@BLOCK_FIELD_IS_BYREF = common dso_local global i32 0, align 4
@BLOCK_FIELD_IS_BLOCK = common dso_local global i32 0, align 4
@BLOCK_BYREF_CALLER = common dso_local global i32 0, align 4
@BLOCK_FIELD_IS_WEAK = common dso_local global i32 0, align 4
@BLOCK_FIELD_IS_OBJECT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @_Block_object_dispose(i8* %0, i32 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load i32, i32* %4, align 4
  %6 = load i32, i32* @BLOCK_FIELD_IS_BYREF, align 4
  %7 = and i32 %5, %6
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %9, label %12

9:                                                ; preds = %2
  %10 = load i8*, i8** %3, align 8
  %11 = call i32 @_Block_byref_release(i8* %10)
  br label %38

12:                                               ; preds = %2
  %13 = load i32, i32* %4, align 4
  %14 = load i32, i32* @BLOCK_FIELD_IS_BLOCK, align 4
  %15 = load i32, i32* @BLOCK_BYREF_CALLER, align 4
  %16 = or i32 %14, %15
  %17 = and i32 %13, %16
  %18 = load i32, i32* @BLOCK_FIELD_IS_BLOCK, align 4
  %19 = icmp eq i32 %17, %18
  br i1 %19, label %20, label %23

20:                                               ; preds = %12
  %21 = load i8*, i8** %3, align 8
  %22 = call i32 @_Block_destroy(i8* %21)
  br label %37

23:                                               ; preds = %12
  %24 = load i32, i32* %4, align 4
  %25 = load i32, i32* @BLOCK_FIELD_IS_WEAK, align 4
  %26 = load i32, i32* @BLOCK_FIELD_IS_BLOCK, align 4
  %27 = or i32 %25, %26
  %28 = load i32, i32* @BLOCK_BYREF_CALLER, align 4
  %29 = or i32 %27, %28
  %30 = and i32 %24, %29
  %31 = load i32, i32* @BLOCK_FIELD_IS_OBJECT, align 4
  %32 = icmp eq i32 %30, %31
  br i1 %32, label %33, label %36

33:                                               ; preds = %23
  %34 = load i8*, i8** %3, align 8
  %35 = call i32 @_Block_release_object(i8* %34)
  br label %36

36:                                               ; preds = %33, %23
  br label %37

37:                                               ; preds = %36, %20
  br label %38

38:                                               ; preds = %37, %9
  ret void
}

declare dso_local i32 @_Block_byref_release(i8*) #1

declare dso_local i32 @_Block_destroy(i8*) #1

declare dso_local i32 @_Block_release_object(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

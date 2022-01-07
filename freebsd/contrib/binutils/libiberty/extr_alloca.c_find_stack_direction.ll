; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/libiberty/extr_alloca.c_find_stack_direction.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/libiberty/extr_alloca.c_find_stack_direction.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@find_stack_direction.addr = internal global i8* null, align 8
@stack_dir = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @find_stack_direction to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @find_stack_direction() #0 {
  %1 = alloca i8, align 1
  %2 = load i8*, i8** @find_stack_direction.addr, align 8
  %3 = icmp eq i8* %2, null
  br i1 %3, label %4, label %7

4:                                                ; preds = %0
  %5 = load i8, i8* %1, align 1
  %6 = call i8* @ADDRESS_FUNCTION(i8 signext %5)
  store i8* %6, i8** @find_stack_direction.addr, align 8
  call void @find_stack_direction()
  br label %15

7:                                                ; preds = %0
  %8 = load i8, i8* %1, align 1
  %9 = call i8* @ADDRESS_FUNCTION(i8 signext %8)
  %10 = load i8*, i8** @find_stack_direction.addr, align 8
  %11 = icmp ugt i8* %9, %10
  br i1 %11, label %12, label %13

12:                                               ; preds = %7
  store i32 1, i32* @stack_dir, align 4
  br label %14

13:                                               ; preds = %7
  store i32 -1, i32* @stack_dir, align 4
  br label %14

14:                                               ; preds = %13, %12
  br label %15

15:                                               ; preds = %14, %4
  ret void
}

declare dso_local i8* @ADDRESS_FUNCTION(i8 signext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

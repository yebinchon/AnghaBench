; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_tree-nrv.c_dest_safe_for_nrv_p.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_tree-nrv.c_dest_safe_for_nrv_p.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, %struct.TYPE_3__* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @dest_safe_for_nrv_p to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dest_safe_for_nrv_p(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_3__*, align 8
  store i32 %0, i32* %3, align 4
  %5 = load i32, i32* %3, align 4
  %6 = call i32 @TREE_CODE(i32 %5)
  switch i32 %6, label %35 [
    i32 128, label %7
    i32 130, label %31
    i32 129, label %31
  ]

7:                                                ; preds = %1
  %8 = load i32, i32* %3, align 4
  %9 = call i32 @is_call_clobbered(i32 %8)
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %11, label %12

11:                                               ; preds = %7
  store i32 0, i32* %2, align 4
  br label %36

12:                                               ; preds = %7
  %13 = load i32, i32* %3, align 4
  %14 = call %struct.TYPE_3__* @get_subvars_for_var(i32 %13)
  store %struct.TYPE_3__* %14, %struct.TYPE_3__** %4, align 8
  br label %15

15:                                               ; preds = %26, %12
  %16 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %17 = icmp ne %struct.TYPE_3__* %16, null
  br i1 %17, label %18, label %30

18:                                               ; preds = %15
  %19 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %20 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = call i32 @is_call_clobbered(i32 %21)
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %25

24:                                               ; preds = %18
  store i32 0, i32* %2, align 4
  br label %36

25:                                               ; preds = %18
  br label %26

26:                                               ; preds = %25
  %27 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %28 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %27, i32 0, i32 1
  %29 = load %struct.TYPE_3__*, %struct.TYPE_3__** %28, align 8
  store %struct.TYPE_3__* %29, %struct.TYPE_3__** %4, align 8
  br label %15

30:                                               ; preds = %15
  store i32 1, i32* %2, align 4
  br label %36

31:                                               ; preds = %1, %1
  %32 = load i32, i32* %3, align 4
  %33 = call i32 @TREE_OPERAND(i32 %32, i32 0)
  %34 = call i32 @dest_safe_for_nrv_p(i32 %33)
  store i32 %34, i32* %2, align 4
  br label %36

35:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %36

36:                                               ; preds = %35, %31, %30, %24, %11
  %37 = load i32, i32* %2, align 4
  ret i32 %37
}

declare dso_local i32 @TREE_CODE(i32) #1

declare dso_local i32 @is_call_clobbered(i32) #1

declare dso_local %struct.TYPE_3__* @get_subvars_for_var(i32) #1

declare dso_local i32 @TREE_OPERAND(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

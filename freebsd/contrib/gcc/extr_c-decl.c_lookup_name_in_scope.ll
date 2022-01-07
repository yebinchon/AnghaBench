; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_c-decl.c_lookup_name_in_scope.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_c-decl.c_lookup_name_in_scope.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.c_scope = type { i32 }
%struct.c_binding = type { i32, %struct.c_binding* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, %struct.c_scope*)* @lookup_name_in_scope to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lookup_name_in_scope(i32 %0, %struct.c_scope* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.c_scope*, align 8
  %6 = alloca %struct.c_binding*, align 8
  store i32 %0, i32* %4, align 4
  store %struct.c_scope* %1, %struct.c_scope** %5, align 8
  %7 = load i32, i32* %4, align 4
  %8 = call %struct.c_binding* @I_SYMBOL_BINDING(i32 %7)
  store %struct.c_binding* %8, %struct.c_binding** %6, align 8
  br label %9

9:                                                ; preds = %22, %2
  %10 = load %struct.c_binding*, %struct.c_binding** %6, align 8
  %11 = icmp ne %struct.c_binding* %10, null
  br i1 %11, label %12, label %26

12:                                               ; preds = %9
  %13 = load %struct.c_binding*, %struct.c_binding** %6, align 8
  %14 = load %struct.c_scope*, %struct.c_scope** %5, align 8
  %15 = call i64 @B_IN_SCOPE(%struct.c_binding* %13, %struct.c_scope* %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %21

17:                                               ; preds = %12
  %18 = load %struct.c_binding*, %struct.c_binding** %6, align 8
  %19 = getelementptr inbounds %struct.c_binding, %struct.c_binding* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  store i32 %20, i32* %3, align 4
  br label %27

21:                                               ; preds = %12
  br label %22

22:                                               ; preds = %21
  %23 = load %struct.c_binding*, %struct.c_binding** %6, align 8
  %24 = getelementptr inbounds %struct.c_binding, %struct.c_binding* %23, i32 0, i32 1
  %25 = load %struct.c_binding*, %struct.c_binding** %24, align 8
  store %struct.c_binding* %25, %struct.c_binding** %6, align 8
  br label %9

26:                                               ; preds = %9
  store i32 0, i32* %3, align 4
  br label %27

27:                                               ; preds = %26, %17
  %28 = load i32, i32* %3, align 4
  ret i32 %28
}

declare dso_local %struct.c_binding* @I_SYMBOL_BINDING(i32) #1

declare dso_local i64 @B_IN_SCOPE(%struct.c_binding*, %struct.c_scope*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

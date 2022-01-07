; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_c-decl.c_identifier_global_value.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_c-decl.c_identifier_global_value.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.c_binding = type { i32, %struct.c_binding* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @identifier_global_value(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct.c_binding*, align 8
  store i32 %0, i32* %3, align 4
  %5 = load i32, i32* %3, align 4
  %6 = call %struct.c_binding* @I_SYMBOL_BINDING(i32 %5)
  store %struct.c_binding* %6, %struct.c_binding** %4, align 8
  br label %7

7:                                                ; preds = %23, %1
  %8 = load %struct.c_binding*, %struct.c_binding** %4, align 8
  %9 = icmp ne %struct.c_binding* %8, null
  br i1 %9, label %10, label %27

10:                                               ; preds = %7
  %11 = load %struct.c_binding*, %struct.c_binding** %4, align 8
  %12 = call i64 @B_IN_FILE_SCOPE(%struct.c_binding* %11)
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %18, label %14

14:                                               ; preds = %10
  %15 = load %struct.c_binding*, %struct.c_binding** %4, align 8
  %16 = call i64 @B_IN_EXTERNAL_SCOPE(%struct.c_binding* %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %22

18:                                               ; preds = %14, %10
  %19 = load %struct.c_binding*, %struct.c_binding** %4, align 8
  %20 = getelementptr inbounds %struct.c_binding, %struct.c_binding* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  store i32 %21, i32* %2, align 4
  br label %28

22:                                               ; preds = %14
  br label %23

23:                                               ; preds = %22
  %24 = load %struct.c_binding*, %struct.c_binding** %4, align 8
  %25 = getelementptr inbounds %struct.c_binding, %struct.c_binding* %24, i32 0, i32 1
  %26 = load %struct.c_binding*, %struct.c_binding** %25, align 8
  store %struct.c_binding* %26, %struct.c_binding** %4, align 8
  br label %7

27:                                               ; preds = %7
  store i32 0, i32* %2, align 4
  br label %28

28:                                               ; preds = %27, %18
  %29 = load i32, i32* %2, align 4
  ret i32 %29
}

declare dso_local %struct.c_binding* @I_SYMBOL_BINDING(i32) #1

declare dso_local i64 @B_IN_FILE_SCOPE(%struct.c_binding*) #1

declare dso_local i64 @B_IN_EXTERNAL_SCOPE(%struct.c_binding*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

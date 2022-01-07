; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_ax-gdb.c_gen_conversion.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_ax-gdb.c_gen_conversion.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.agent_expr = type { i32 }
%struct.type = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.agent_expr*, %struct.type*, %struct.type*)* @gen_conversion to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @gen_conversion(%struct.agent_expr* %0, %struct.type* %1, %struct.type* %2) #0 {
  %4 = alloca %struct.agent_expr*, align 8
  %5 = alloca %struct.type*, align 8
  %6 = alloca %struct.type*, align 8
  store %struct.agent_expr* %0, %struct.agent_expr** %4, align 8
  store %struct.type* %1, %struct.type** %5, align 8
  store %struct.type* %2, %struct.type** %6, align 8
  %7 = load %struct.type*, %struct.type** %6, align 8
  %8 = call i64 @TYPE_LENGTH(%struct.type* %7)
  %9 = load %struct.type*, %struct.type** %5, align 8
  %10 = call i64 @TYPE_LENGTH(%struct.type* %9)
  %11 = icmp slt i64 %8, %10
  br i1 %11, label %12, label %16

12:                                               ; preds = %3
  %13 = load %struct.agent_expr*, %struct.agent_expr** %4, align 8
  %14 = load %struct.type*, %struct.type** %5, align 8
  %15 = call i32 @gen_extend(%struct.agent_expr* %13, %struct.type* %14)
  br label %50

16:                                               ; preds = %3
  %17 = load %struct.type*, %struct.type** %6, align 8
  %18 = call i64 @TYPE_LENGTH(%struct.type* %17)
  %19 = load %struct.type*, %struct.type** %5, align 8
  %20 = call i64 @TYPE_LENGTH(%struct.type* %19)
  %21 = icmp eq i64 %18, %20
  br i1 %21, label %22, label %33

22:                                               ; preds = %16
  %23 = load %struct.type*, %struct.type** %5, align 8
  %24 = call i64 @TYPE_UNSIGNED(%struct.type* %23)
  %25 = load %struct.type*, %struct.type** %6, align 8
  %26 = call i64 @TYPE_UNSIGNED(%struct.type* %25)
  %27 = icmp ne i64 %24, %26
  br i1 %27, label %28, label %32

28:                                               ; preds = %22
  %29 = load %struct.agent_expr*, %struct.agent_expr** %4, align 8
  %30 = load %struct.type*, %struct.type** %6, align 8
  %31 = call i32 @gen_extend(%struct.agent_expr* %29, %struct.type* %30)
  br label %32

32:                                               ; preds = %28, %22
  br label %49

33:                                               ; preds = %16
  %34 = load %struct.type*, %struct.type** %6, align 8
  %35 = call i64 @TYPE_LENGTH(%struct.type* %34)
  %36 = load %struct.type*, %struct.type** %5, align 8
  %37 = call i64 @TYPE_LENGTH(%struct.type* %36)
  %38 = icmp sgt i64 %35, %37
  br i1 %38, label %39, label %48

39:                                               ; preds = %33
  %40 = load %struct.type*, %struct.type** %6, align 8
  %41 = call i64 @TYPE_UNSIGNED(%struct.type* %40)
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %47

43:                                               ; preds = %39
  %44 = load %struct.agent_expr*, %struct.agent_expr** %4, align 8
  %45 = load %struct.type*, %struct.type** %6, align 8
  %46 = call i32 @gen_extend(%struct.agent_expr* %44, %struct.type* %45)
  br label %47

47:                                               ; preds = %43, %39
  br label %48

48:                                               ; preds = %47, %33
  br label %49

49:                                               ; preds = %48, %32
  br label %50

50:                                               ; preds = %49, %12
  ret void
}

declare dso_local i64 @TYPE_LENGTH(%struct.type*) #1

declare dso_local i32 @gen_extend(%struct.agent_expr*, %struct.type*) #1

declare dso_local i64 @TYPE_UNSIGNED(%struct.type*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

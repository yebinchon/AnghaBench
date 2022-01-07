; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_ax-gdb.c_gen_usual_unary.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_ax-gdb.c_gen_usual_unary.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.type = type { i32 }
%struct.agent_expr = type { i32 }
%struct.axs_value = type { %struct.type*, i8* }

@axs_rvalue = common dso_local global i8* null, align 8
@builtin_type_int = common dso_local global %struct.type* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.agent_expr*, %struct.axs_value*)* @gen_usual_unary to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @gen_usual_unary(%struct.agent_expr* %0, %struct.axs_value* %1) #0 {
  %3 = alloca %struct.agent_expr*, align 8
  %4 = alloca %struct.axs_value*, align 8
  %5 = alloca %struct.type*, align 8
  store %struct.agent_expr* %0, %struct.agent_expr** %3, align 8
  store %struct.axs_value* %1, %struct.axs_value** %4, align 8
  %6 = load %struct.axs_value*, %struct.axs_value** %4, align 8
  %7 = getelementptr inbounds %struct.axs_value, %struct.axs_value* %6, i32 0, i32 0
  %8 = load %struct.type*, %struct.type** %7, align 8
  %9 = call i32 @TYPE_CODE(%struct.type* %8)
  switch i32 %9, label %39 [
    i32 130, label %10
    i32 132, label %21
    i32 129, label %34
    i32 128, label %34
    i32 131, label %35
  ]

10:                                               ; preds = %2
  %11 = load %struct.axs_value*, %struct.axs_value** %4, align 8
  %12 = getelementptr inbounds %struct.axs_value, %struct.axs_value* %11, i32 0, i32 0
  %13 = load %struct.type*, %struct.type** %12, align 8
  %14 = call i8* @lookup_pointer_type(%struct.type* %13)
  %15 = bitcast i8* %14 to %struct.type*
  %16 = load %struct.axs_value*, %struct.axs_value** %4, align 8
  %17 = getelementptr inbounds %struct.axs_value, %struct.axs_value* %16, i32 0, i32 0
  store %struct.type* %15, %struct.type** %17, align 8
  %18 = load i8*, i8** @axs_rvalue, align 8
  %19 = load %struct.axs_value*, %struct.axs_value** %4, align 8
  %20 = getelementptr inbounds %struct.axs_value, %struct.axs_value* %19, i32 0, i32 1
  store i8* %18, i8** %20, align 8
  br label %39

21:                                               ; preds = %2
  %22 = load %struct.axs_value*, %struct.axs_value** %4, align 8
  %23 = getelementptr inbounds %struct.axs_value, %struct.axs_value* %22, i32 0, i32 0
  %24 = load %struct.type*, %struct.type** %23, align 8
  %25 = call %struct.type* @TYPE_TARGET_TYPE(%struct.type* %24)
  store %struct.type* %25, %struct.type** %5, align 8
  %26 = load %struct.type*, %struct.type** %5, align 8
  %27 = call i8* @lookup_pointer_type(%struct.type* %26)
  %28 = bitcast i8* %27 to %struct.type*
  %29 = load %struct.axs_value*, %struct.axs_value** %4, align 8
  %30 = getelementptr inbounds %struct.axs_value, %struct.axs_value* %29, i32 0, i32 0
  store %struct.type* %28, %struct.type** %30, align 8
  %31 = load i8*, i8** @axs_rvalue, align 8
  %32 = load %struct.axs_value*, %struct.axs_value** %4, align 8
  %33 = getelementptr inbounds %struct.axs_value, %struct.axs_value* %32, i32 0, i32 1
  store i8* %31, i8** %33, align 8
  br label %39

34:                                               ; preds = %2, %2
  br label %43

35:                                               ; preds = %2
  %36 = load %struct.type*, %struct.type** @builtin_type_int, align 8
  %37 = load %struct.axs_value*, %struct.axs_value** %4, align 8
  %38 = getelementptr inbounds %struct.axs_value, %struct.axs_value* %37, i32 0, i32 0
  store %struct.type* %36, %struct.type** %38, align 8
  br label %39

39:                                               ; preds = %2, %35, %21, %10
  %40 = load %struct.agent_expr*, %struct.agent_expr** %3, align 8
  %41 = load %struct.axs_value*, %struct.axs_value** %4, align 8
  %42 = call i32 @require_rvalue(%struct.agent_expr* %40, %struct.axs_value* %41)
  br label %43

43:                                               ; preds = %39, %34
  ret void
}

declare dso_local i32 @TYPE_CODE(%struct.type*) #1

declare dso_local i8* @lookup_pointer_type(%struct.type*) #1

declare dso_local %struct.type* @TYPE_TARGET_TYPE(%struct.type*) #1

declare dso_local i32 @require_rvalue(%struct.agent_expr*, %struct.axs_value*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

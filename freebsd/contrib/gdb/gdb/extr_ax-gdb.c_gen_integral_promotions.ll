; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_ax-gdb.c_gen_integral_promotions.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_ax-gdb.c_gen_integral_promotions.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.agent_expr = type { i32 }
%struct.axs_value = type { i8* }

@builtin_type_int = common dso_local global i8* null, align 8
@builtin_type_unsigned_int = common dso_local global i8* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.agent_expr*, %struct.axs_value*)* @gen_integral_promotions to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @gen_integral_promotions(%struct.agent_expr* %0, %struct.axs_value* %1) #0 {
  %3 = alloca %struct.agent_expr*, align 8
  %4 = alloca %struct.axs_value*, align 8
  store %struct.agent_expr* %0, %struct.agent_expr** %3, align 8
  store %struct.axs_value* %1, %struct.axs_value** %4, align 8
  %5 = load %struct.axs_value*, %struct.axs_value** %4, align 8
  %6 = getelementptr inbounds %struct.axs_value, %struct.axs_value* %5, i32 0, i32 0
  %7 = load i8*, i8** %6, align 8
  %8 = load i8*, i8** @builtin_type_int, align 8
  %9 = call i32 @type_wider_than(i8* %7, i8* %8)
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %21, label %11

11:                                               ; preds = %2
  %12 = load %struct.agent_expr*, %struct.agent_expr** %3, align 8
  %13 = load %struct.axs_value*, %struct.axs_value** %4, align 8
  %14 = getelementptr inbounds %struct.axs_value, %struct.axs_value* %13, i32 0, i32 0
  %15 = load i8*, i8** %14, align 8
  %16 = load i8*, i8** @builtin_type_int, align 8
  %17 = call i32 @gen_conversion(%struct.agent_expr* %12, i8* %15, i8* %16)
  %18 = load i8*, i8** @builtin_type_int, align 8
  %19 = load %struct.axs_value*, %struct.axs_value** %4, align 8
  %20 = getelementptr inbounds %struct.axs_value, %struct.axs_value* %19, i32 0, i32 0
  store i8* %18, i8** %20, align 8
  br label %39

21:                                               ; preds = %2
  %22 = load %struct.axs_value*, %struct.axs_value** %4, align 8
  %23 = getelementptr inbounds %struct.axs_value, %struct.axs_value* %22, i32 0, i32 0
  %24 = load i8*, i8** %23, align 8
  %25 = load i8*, i8** @builtin_type_unsigned_int, align 8
  %26 = call i32 @type_wider_than(i8* %24, i8* %25)
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %38, label %28

28:                                               ; preds = %21
  %29 = load %struct.agent_expr*, %struct.agent_expr** %3, align 8
  %30 = load %struct.axs_value*, %struct.axs_value** %4, align 8
  %31 = getelementptr inbounds %struct.axs_value, %struct.axs_value* %30, i32 0, i32 0
  %32 = load i8*, i8** %31, align 8
  %33 = load i8*, i8** @builtin_type_unsigned_int, align 8
  %34 = call i32 @gen_conversion(%struct.agent_expr* %29, i8* %32, i8* %33)
  %35 = load i8*, i8** @builtin_type_unsigned_int, align 8
  %36 = load %struct.axs_value*, %struct.axs_value** %4, align 8
  %37 = getelementptr inbounds %struct.axs_value, %struct.axs_value* %36, i32 0, i32 0
  store i8* %35, i8** %37, align 8
  br label %38

38:                                               ; preds = %28, %21
  br label %39

39:                                               ; preds = %38, %11
  ret void
}

declare dso_local i32 @type_wider_than(i8*, i8*) #1

declare dso_local i32 @gen_conversion(%struct.agent_expr*, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

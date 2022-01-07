; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_ax-gdb.c_gen_address_of.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_ax-gdb.c_gen_address_of.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.agent_expr = type { i32 }
%struct.axs_value = type { i32, i8* }

@TYPE_CODE_FUNC = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [51 x i8] c"Operand of `&' is an rvalue, which has no address.\00", align 1
@.str.1 = private unnamed_addr constant [53 x i8] c"Operand of `&' is in a register, and has no address.\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.agent_expr*, %struct.axs_value*)* @gen_address_of to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @gen_address_of(%struct.agent_expr* %0, %struct.axs_value* %1) #0 {
  %3 = alloca %struct.agent_expr*, align 8
  %4 = alloca %struct.axs_value*, align 8
  store %struct.agent_expr* %0, %struct.agent_expr** %3, align 8
  store %struct.axs_value* %1, %struct.axs_value** %4, align 8
  %5 = load %struct.axs_value*, %struct.axs_value** %4, align 8
  %6 = getelementptr inbounds %struct.axs_value, %struct.axs_value* %5, i32 0, i32 1
  %7 = load i8*, i8** %6, align 8
  %8 = call i64 @TYPE_CODE(i8* %7)
  %9 = load i64, i64* @TYPE_CODE_FUNC, align 8
  %10 = icmp eq i64 %8, %9
  br i1 %10, label %11, label %18

11:                                               ; preds = %2
  %12 = load %struct.axs_value*, %struct.axs_value** %4, align 8
  %13 = getelementptr inbounds %struct.axs_value, %struct.axs_value* %12, i32 0, i32 1
  %14 = load i8*, i8** %13, align 8
  %15 = call i8* @lookup_pointer_type(i8* %14)
  %16 = load %struct.axs_value*, %struct.axs_value** %4, align 8
  %17 = getelementptr inbounds %struct.axs_value, %struct.axs_value* %16, i32 0, i32 1
  store i8* %15, i8** %17, align 8
  br label %36

18:                                               ; preds = %2
  %19 = load %struct.axs_value*, %struct.axs_value** %4, align 8
  %20 = getelementptr inbounds %struct.axs_value, %struct.axs_value* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  switch i32 %21, label %35 [
    i32 128, label %22
    i32 129, label %24
    i32 130, label %26
  ]

22:                                               ; preds = %18
  %23 = call i32 @error(i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str, i64 0, i64 0))
  br label %24

24:                                               ; preds = %18, %22
  %25 = call i32 @error(i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.1, i64 0, i64 0))
  br label %26

26:                                               ; preds = %18, %24
  %27 = load %struct.axs_value*, %struct.axs_value** %4, align 8
  %28 = getelementptr inbounds %struct.axs_value, %struct.axs_value* %27, i32 0, i32 0
  store i32 128, i32* %28, align 8
  %29 = load %struct.axs_value*, %struct.axs_value** %4, align 8
  %30 = getelementptr inbounds %struct.axs_value, %struct.axs_value* %29, i32 0, i32 1
  %31 = load i8*, i8** %30, align 8
  %32 = call i8* @lookup_pointer_type(i8* %31)
  %33 = load %struct.axs_value*, %struct.axs_value** %4, align 8
  %34 = getelementptr inbounds %struct.axs_value, %struct.axs_value* %33, i32 0, i32 1
  store i8* %32, i8** %34, align 8
  br label %35

35:                                               ; preds = %18, %26
  br label %36

36:                                               ; preds = %35, %11
  ret void
}

declare dso_local i64 @TYPE_CODE(i8*) #1

declare dso_local i8* @lookup_pointer_type(i8*) #1

declare dso_local i32 @error(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

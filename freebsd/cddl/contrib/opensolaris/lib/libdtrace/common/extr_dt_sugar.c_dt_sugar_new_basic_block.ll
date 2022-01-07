; ModuleID = '/home/carl/AnghaBench/freebsd/cddl/contrib/opensolaris/lib/libdtrace/common/extr_dt_sugar.c_dt_sugar_new_basic_block.c'
source_filename = "/home/carl/AnghaBench/freebsd/cddl/contrib/opensolaris/lib/libdtrace/common/extr_dt_sugar.c_dt_sugar_new_basic_block.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i64, i32 }

@DT_TOK_LNEG = common dso_local global i32 0, align 4
@DT_TOK_LAND = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_4__*, i32, i32*)* @dt_sugar_new_basic_block to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dt_sugar_new_basic_block(%struct.TYPE_4__* %0, i32 %1, i32* %2) #0 {
  %4 = alloca %struct.TYPE_4__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32* %2, i32** %6, align 8
  store i32* null, i32** %7, align 8
  %8 = load i32, i32* %5, align 4
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %10, label %20

10:                                               ; preds = %3
  %11 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %12 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %19

15:                                               ; preds = %10
  %16 = load i32, i32* @DT_TOK_LNEG, align 4
  %17 = call i32 (...) @dt_sugar_new_error_var()
  %18 = call i32* @dt_node_op1(i32 %16, i32 %17)
  store i32* %18, i32** %7, align 8
  br label %19

19:                                               ; preds = %15, %10
  br label %28

20:                                               ; preds = %3
  %21 = load i32, i32* @DT_TOK_LAND, align 4
  %22 = load i32, i32* @DT_TOK_LNEG, align 4
  %23 = call i32 (...) @dt_sugar_new_error_var()
  %24 = call i32* @dt_node_op1(i32 %22, i32 %23)
  %25 = load i32, i32* %5, align 4
  %26 = call i32 @dt_sugar_new_condition_var(i32 %25)
  %27 = call i32* @dt_node_op2(i32 %21, i32* %24, i32 %26)
  store i32* %27, i32** %7, align 8
  br label %28

28:                                               ; preds = %20, %19
  %29 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %30 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 8
  %33 = load i32*, i32** %7, align 8
  %34 = load i32*, i32** %6, align 8
  %35 = call i32 @dt_node_clause(i32 %32, i32* %33, i32* %34)
  %36 = call i32 @dt_sugar_append_clause(%struct.TYPE_4__* %29, i32 %35)
  ret void
}

declare dso_local i32* @dt_node_op1(i32, i32) #1

declare dso_local i32 @dt_sugar_new_error_var(...) #1

declare dso_local i32* @dt_node_op2(i32, i32*, i32) #1

declare dso_local i32 @dt_sugar_new_condition_var(i32) #1

declare dso_local i32 @dt_sugar_append_clause(%struct.TYPE_4__*, i32) #1

declare dso_local i32 @dt_node_clause(i32, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

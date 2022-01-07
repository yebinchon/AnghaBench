; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_genpreds.c_write_one_predicate_function.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_genpreds.c_write_one_predicate_function.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pred_data = type { i8*, i32 }

@.str = private unnamed_addr constant [60 x i8] c"int\0A%s (rtx op, enum machine_mode mode ATTRIBUTE_UNUSED)\0A{\0A\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"}\0A\0A\00", align 1
@stdout = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pred_data*)* @write_one_predicate_function to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @write_one_predicate_function(%struct.pred_data* %0) #0 {
  %2 = alloca %struct.pred_data*, align 8
  store %struct.pred_data* %0, %struct.pred_data** %2, align 8
  %3 = load %struct.pred_data*, %struct.pred_data** %2, align 8
  %4 = getelementptr inbounds %struct.pred_data, %struct.pred_data* %3, i32 0, i32 1
  %5 = load i32, i32* %4, align 8
  %6 = icmp ne i32 %5, 0
  br i1 %6, label %8, label %7

7:                                                ; preds = %1
  br label %23

8:                                                ; preds = %1
  %9 = load %struct.pred_data*, %struct.pred_data** %2, align 8
  %10 = call i32 @write_predicate_subfunction(%struct.pred_data* %9)
  %11 = load %struct.pred_data*, %struct.pred_data** %2, align 8
  %12 = call i32 @add_mode_tests(%struct.pred_data* %11)
  %13 = load %struct.pred_data*, %struct.pred_data** %2, align 8
  %14 = getelementptr inbounds %struct.pred_data, %struct.pred_data* %13, i32 0, i32 0
  %15 = load i8*, i8** %14, align 8
  %16 = call i32 @printf(i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str, i64 0, i64 0), i8* %15)
  %17 = load %struct.pred_data*, %struct.pred_data** %2, align 8
  %18 = getelementptr inbounds %struct.pred_data, %struct.pred_data* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 8
  %20 = call i32 @write_predicate_stmts(i32 %19)
  %21 = load i32, i32* @stdout, align 4
  %22 = call i32 @fputs(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i32 %21)
  br label %23

23:                                               ; preds = %8, %7
  ret void
}

declare dso_local i32 @write_predicate_subfunction(%struct.pred_data*) #1

declare dso_local i32 @add_mode_tests(%struct.pred_data*) #1

declare dso_local i32 @printf(i8*, i8*) #1

declare dso_local i32 @write_predicate_stmts(i32) #1

declare dso_local i32 @fputs(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

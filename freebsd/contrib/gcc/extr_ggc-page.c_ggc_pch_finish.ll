; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_ggc-page.c_ggc_pch_finish.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_ggc-page.c_ggc_pch_finish.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ggc_pch_data = type { i32 }

@.str = private unnamed_addr constant [25 x i8] c"can't write PCH file: %m\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ggc_pch_finish(%struct.ggc_pch_data* %0, i32* %1) #0 {
  %3 = alloca %struct.ggc_pch_data*, align 8
  %4 = alloca i32*, align 8
  store %struct.ggc_pch_data* %0, %struct.ggc_pch_data** %3, align 8
  store i32* %1, i32** %4, align 8
  %5 = load %struct.ggc_pch_data*, %struct.ggc_pch_data** %3, align 8
  %6 = getelementptr inbounds %struct.ggc_pch_data, %struct.ggc_pch_data* %5, i32 0, i32 0
  %7 = load i32*, i32** %4, align 8
  %8 = call i32 @fwrite(i32* %6, i32 4, i32 1, i32* %7)
  %9 = icmp ne i32 %8, 1
  br i1 %9, label %10, label %12

10:                                               ; preds = %2
  %11 = call i32 @fatal_error(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  br label %12

12:                                               ; preds = %10, %2
  %13 = load %struct.ggc_pch_data*, %struct.ggc_pch_data** %3, align 8
  %14 = call i32 @free(%struct.ggc_pch_data* %13)
  ret void
}

declare dso_local i32 @fwrite(i32*, i32, i32, i32*) #1

declare dso_local i32 @fatal_error(i8*) #1

declare dso_local i32 @free(%struct.ggc_pch_data*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

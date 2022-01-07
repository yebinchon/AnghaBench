; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/binutils/extr_coffdump.c_dump_coff_visible.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/binutils/extr_coffdump.c_dump_coff_visible.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.coff_visible = type { i32 }

@.str = private unnamed_addr constant [17 x i8] c"coff_vis_ext_def\00", align 1
@.str.1 = private unnamed_addr constant [17 x i8] c"coff_vis_ext_ref\00", align 1
@.str.2 = private unnamed_addr constant [17 x i8] c"coff_vis_int_def\00", align 1
@.str.3 = private unnamed_addr constant [16 x i8] c"coff_vis_common\00", align 1
@.str.4 = private unnamed_addr constant [14 x i8] c"coff_vis_auto\00", align 1
@.str.5 = private unnamed_addr constant [19 x i8] c"coff_vis_autoparam\00", align 1
@.str.6 = private unnamed_addr constant [18 x i8] c"coff_vis_regparam\00", align 1
@.str.7 = private unnamed_addr constant [18 x i8] c"coff_vis_register\00", align 1
@.str.8 = private unnamed_addr constant [13 x i8] c"coff_vis_tag\00", align 1
@.str.9 = private unnamed_addr constant [26 x i8] c"coff_vis_member_of_struct\00", align 1
@.str.10 = private unnamed_addr constant [24 x i8] c"coff_vis_member_of_enum\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.coff_visible*)* @dump_coff_visible to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dump_coff_visible(%struct.coff_visible* %0) #0 {
  %2 = alloca %struct.coff_visible*, align 8
  store %struct.coff_visible* %0, %struct.coff_visible** %2, align 8
  %3 = call i32 @tab(i32 1)
  %4 = load %struct.coff_visible*, %struct.coff_visible** %2, align 8
  %5 = getelementptr inbounds %struct.coff_visible, %struct.coff_visible* %4, i32 0, i32 0
  %6 = load i32, i32* %5, align 4
  switch i32 %6, label %29 [
    i32 135, label %7
    i32 134, label %9
    i32 133, label %11
    i32 136, label %13
    i32 138, label %15
    i32 137, label %17
    i32 129, label %19
    i32 130, label %21
    i32 128, label %23
    i32 131, label %25
    i32 132, label %27
  ]

7:                                                ; preds = %1
  %8 = call i32 @printf(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0))
  br label %31

9:                                                ; preds = %1
  %10 = call i32 @printf(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0))
  br label %31

11:                                               ; preds = %1
  %12 = call i32 @printf(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.2, i64 0, i64 0))
  br label %31

13:                                               ; preds = %1
  %14 = call i32 @printf(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.3, i64 0, i64 0))
  br label %31

15:                                               ; preds = %1
  %16 = call i32 @printf(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.4, i64 0, i64 0))
  br label %31

17:                                               ; preds = %1
  %18 = call i32 @printf(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.5, i64 0, i64 0))
  br label %31

19:                                               ; preds = %1
  %20 = call i32 @printf(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.6, i64 0, i64 0))
  br label %31

21:                                               ; preds = %1
  %22 = call i32 @printf(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.7, i64 0, i64 0))
  br label %31

23:                                               ; preds = %1
  %24 = call i32 @printf(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.8, i64 0, i64 0))
  br label %31

25:                                               ; preds = %1
  %26 = call i32 @printf(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.9, i64 0, i64 0))
  br label %31

27:                                               ; preds = %1
  %28 = call i32 @printf(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.10, i64 0, i64 0))
  br label %31

29:                                               ; preds = %1
  %30 = call i32 (...) @abort() #3
  unreachable

31:                                               ; preds = %27, %25, %23, %21, %19, %17, %15, %13, %11, %9, %7
  %32 = call i32 (...) @nl()
  %33 = call i32 @tab(i32 -1)
  ret void
}

declare dso_local i32 @tab(i32) #1

declare dso_local i32 @printf(i8*) #1

; Function Attrs: noreturn
declare dso_local i32 @abort(...) #2

declare dso_local i32 @nl(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

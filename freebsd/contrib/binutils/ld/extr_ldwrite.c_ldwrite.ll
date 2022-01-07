; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/ld/extr_ldwrite.c_ldwrite.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/ld/extr_ldwrite.c_ldwrite.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i64 }

@bfd_error_no_error = common dso_local global i64 0, align 8
@build_link_order = common dso_local global i32 0, align 4
@config = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@output_bfd = common dso_local global i32 0, align 4
@link_info = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"%F%P: final link failed: %E\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ldwrite() #0 {
  %1 = load i64, i64* @bfd_error_no_error, align 8
  %2 = call i32 @bfd_set_error(i64 %1)
  %3 = load i32, i32* @build_link_order, align 4
  %4 = call i32 @lang_for_each_statement(i32 %3)
  %5 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @config, i32 0, i32 0), align 8
  %6 = icmp ne i32 %5, -1
  br i1 %6, label %10, label %7

7:                                                ; preds = %0
  %8 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @config, i32 0, i32 1), align 8
  %9 = icmp ne i64 %8, -1
  br i1 %9, label %10, label %13

10:                                               ; preds = %7, %0
  %11 = load i32, i32* @output_bfd, align 4
  %12 = call i32 @split_sections(i32 %11, i32* @link_info)
  br label %13

13:                                               ; preds = %10, %7
  %14 = load i32, i32* @output_bfd, align 4
  %15 = call i32 @bfd_final_link(i32 %14, i32* @link_info)
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %27, label %17

17:                                               ; preds = %13
  %18 = call i64 (...) @bfd_get_error()
  %19 = load i64, i64* @bfd_error_no_error, align 8
  %20 = icmp ne i64 %18, %19
  br i1 %20, label %21, label %24

21:                                               ; preds = %17
  %22 = call i32 @_(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0))
  %23 = call i32 @einfo(i32 %22)
  br label %26

24:                                               ; preds = %17
  %25 = call i32 @xexit(i32 1)
  br label %26

26:                                               ; preds = %24, %21
  br label %27

27:                                               ; preds = %26, %13
  ret void
}

declare dso_local i32 @bfd_set_error(i64) #1

declare dso_local i32 @lang_for_each_statement(i32) #1

declare dso_local i32 @split_sections(i32, i32*) #1

declare dso_local i32 @bfd_final_link(i32, i32*) #1

declare dso_local i64 @bfd_get_error(...) #1

declare dso_local i32 @einfo(i32) #1

declare dso_local i32 @_(i8*) #1

declare dso_local i32 @xexit(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
